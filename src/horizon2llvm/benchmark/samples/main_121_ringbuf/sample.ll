; UltraTears chunk main_121_ringbuf: 1 functions [0x8001da280..0x8001dafa8)
; ModuleID = 'main_121_ringbuf_raw'
source_filename = "main_121_ringbuf_raw"
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

define dso_local void @f_8001da280(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001da280:
  ; @pc 0x8001da280 word 0xd10643ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 400
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da284 word 0xa9137bfd
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
  ; @pc 0x8001da288 word 0xa9146ffc
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
  ; @pc 0x8001da28c word 0xa91567fa
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
  ; @pc 0x8001da290 word 0xa9165ff8
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
  ; @pc 0x8001da294 word 0xa91757f6
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
  ; @pc 0x8001da298 word 0xa9184ff4
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
  ; @pc 0x8001da29c word 0x9104c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 304
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2a0 word 0xa9402009
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
  ; @pc 0x8001da2a4 word 0x2a0303f7
  %r61.p = getelementptr inbounds i8, ptr %c, i64 24
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %c62 = trunc i64 %r61 to i32
  %t63 = or i32 0, %c62
  %c64 = zext i32 %t63 to i64
  %wp65 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c64, ptr %wp65, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2a8 word 0x9001bba3
  %wp66 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 34419826688, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2ac word 0xaa0203f3
  %r67.p = getelementptr inbounds i8, ptr %c, i64 16
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = or i64 0, %r67
  %wp69 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2b0 word 0xaa0003f5
  %r70.p = getelementptr inbounds i8, ptr %c, i64 0
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %t71 = or i64 0, %r70
  %wp72 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t71, ptr %wp72, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2b4 word 0xaa0103f8
  %r73.p = getelementptr inbounds i8, ptr %c, i64 8
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2b8 word 0xf9400914
  %r76.p = getelementptr inbounds i8, ptr %c, i64 64
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %t77 = add i64 %r76, 16
  %gmp78 = inttoptr i64 %t77 to ptr
  %gml79 = load i64, ptr %gmp78, align 1, !alias.scope !4, !noalias !3
  %wp80 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2bc word 0xf9404d28
  %r81.p = getelementptr inbounds i8, ptr %c, i64 72
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 152
  %gmp83 = inttoptr i64 %t82 to ptr
  %gml84 = load i64, ptr %gmp83, align 1, !alias.scope !4, !noalias !3
  %wp85 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2c0 word 0xf9439863
  %r86.p = getelementptr inbounds i8, ptr %c, i64 24
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %t87 = add i64 %r86, 1840
  %gmp88 = inttoptr i64 %t87 to ptr
  %gml89 = load i64, ptr %gmp88, align 1, !alias.scope !4, !noalias !3
  %wp90 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2c4 word 0xeb03011f
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
  ; @pc 0x8001da2c8 word 0x54003f41
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_8001daab0, label %L_8001da2cc_ft
L_8001da2e8:
  ; @pc 0x8001da2e8 word 0xb9405409
  %r155.p = getelementptr inbounds i8, ptr %c, i64 0
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %t156 = add i64 %r155, 84
  %gmp157 = inttoptr i64 %t156 to ptr
  %gml158 = load i32, ptr %gmp157, align 1, !alias.scope !4, !noalias !3
  %c159 = zext i32 %gml158 to i64
  %wp160 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c159, ptr %wp160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2ec word 0x52b84005
  %c161 = zext i32 -1040187392 to i64
  %wp162 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c161, ptr %wp162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2f0 word 0x7100053f
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
  ; @pc 0x8001da2f4 word 0x5400064b
  %r185.p = getelementptr inbounds i8, ptr %c, i64 272
  %r185 = load i64, ptr %r185.p, align 8, !alias.scope !3, !noalias !4
  %fsh187 = lshr i64 %r185, 31
  %ftr188 = trunc i64 %fsh187 to i1
  %fsh189 = lshr i64 %r185, 28
  %ftr190 = trunc i64 %fsh189 to i1
  %cond186 = icmp ne i1 %ftr188, %ftr190
  br i1 %cond186, label %L_8001da3bc, label %L_8001da2f8_ft
L_8001da324:
  ; @pc 0x8001da324 word 0xd37ced50
  %r239.p = getelementptr inbounds i8, ptr %c, i64 80
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %ror240 = call i64 @llvm.fshr.i64(i64 %r239, i64 %r239, i64 60)
  %t241 = and i64 %ror240, -16
  %wp242 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t241, ptr %wp242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da328 word 0xb8b06971
  %r243.p = getelementptr inbounds i8, ptr %c, i64 88
  %r243 = load i64, ptr %r243.p, align 8, !alias.scope !3, !noalias !4
  %r244.p = getelementptr inbounds i8, ptr %c, i64 128
  %r244 = load i64, ptr %r244.p, align 8, !alias.scope !3, !noalias !4
  %t245 = add i64 %r243, %r244
  %gmp246 = inttoptr i64 %t245 to ptr
  %gml247 = load i32, ptr %gmp246, align 1, !alias.scope !4, !noalias !3
  %c248 = sext i32 %gml247 to i64
  %wp249 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c248, ptr %wp249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da32c word 0x8b110190
  %r250.p = getelementptr inbounds i8, ptr %c, i64 96
  %r250 = load i64, ptr %r250.p, align 8, !alias.scope !3, !noalias !4
  %r251.p = getelementptr inbounds i8, ptr %c, i64 136
  %r251 = load i64, ptr %r251.p, align 8, !alias.scope !3, !noalias !4
  %t252 = add i64 %r250, %r251
  %wp253 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t252, ptr %wp253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da330 word 0xeb1001bf
  %r254.p = getelementptr inbounds i8, ptr %c, i64 104
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %r255.p = getelementptr inbounds i8, ptr %c, i64 128
  %r255 = load i64, ptr %r255.p, align 8, !alias.scope !3, !noalias !4
  %t256 = sub i64 %r254, %r255
  %fn257 = icmp slt i64 %t256, 0
  %fz258 = icmp eq i64 %t256, 0
  %fc259 = icmp uge i64 %r254, %r255
  %fx1260 = xor i64 %r254, %r255
  %fx2261 = xor i64 %r254, %t256
  %fva262 = and i64 %fx1260, %fx2261
  %fv263 = icmp slt i64 %fva262, 0
  %nz264 = zext i1 %fn257 to i64
  %zz265 = zext i1 %fz258 to i64
  %cz266 = zext i1 %fc259 to i64
  %vz267 = zext i1 %fv263 to i64
  %ns268 = shl i64 %nz264, 31
  %zs269 = shl i64 %zz265, 30
  %cs270 = shl i64 %cz266, 29
  %vs271 = shl i64 %vz267, 28
  %nzor272 = or i64 %ns268, %zs269
  %cvor273 = or i64 %cs270, %vs271
  %nzcv274 = or i64 %nzor272, %cvor273
  %wp275 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv274, ptr %wp275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da334 word 0x540005a0
  %r276.p = getelementptr inbounds i8, ptr %c, i64 272
  %r276 = load i64, ptr %r276.p, align 8, !alias.scope !3, !noalias !4
  %fsh278 = lshr i64 %r276, 30
  %cond277 = trunc i64 %fsh278 to i1
  br i1 %cond277, label %L_8001da3e8, label %L_8001da338_ft
L_8001da340:
  ; @pc 0x8001da340 word 0x8b1001d2
  %r285.p = getelementptr inbounds i8, ptr %c, i64 112
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %r286.p = getelementptr inbounds i8, ptr %c, i64 128
  %r286 = load i64, ptr %r286.p, align 8, !alias.scope !3, !noalias !4
  %t287 = add i64 %r285, %r286
  %wp288 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t287, ptr %wp288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da344 word 0x8b100220
  %r289.p = getelementptr inbounds i8, ptr %c, i64 136
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %r290.p = getelementptr inbounds i8, ptr %c, i64 128
  %r290 = load i64, ptr %r290.p, align 8, !alias.scope !3, !noalias !4
  %t291 = add i64 %r289, %r290
  %wp292 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t291, ptr %wp292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da348 word 0x385ff241
  %r293.p = getelementptr inbounds i8, ptr %c, i64 144
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %t294 = add i64 %r293, -1
  %gmp295 = inttoptr i64 %t294 to ptr
  %gml296 = load i8, ptr %gmp295, align 1, !alias.scope !4, !noalias !3
  %c297 = zext i8 %gml296 to i64
  %wp298 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c297, ptr %wp298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da34c word 0x385fd002
  %r299.p = getelementptr inbounds i8, ptr %c, i64 0
  %r299 = load i64, ptr %r299.p, align 8, !alias.scope !3, !noalias !4
  %t300 = add i64 %r299, -3
  %gmp301 = inttoptr i64 %t300 to ptr
  %gml302 = load i8, ptr %gmp301, align 1, !alias.scope !4, !noalias !3
  %c303 = zext i8 %gml302 to i64
  %wp304 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c303, ptr %wp304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da350 word 0x6b02003f
  %r305.p = getelementptr inbounds i8, ptr %c, i64 8
  %r305 = load i64, ptr %r305.p, align 8, !alias.scope !3, !noalias !4
  %c306 = trunc i64 %r305 to i32
  %r307.p = getelementptr inbounds i8, ptr %c, i64 16
  %r307 = load i64, ptr %r307.p, align 8, !alias.scope !3, !noalias !4
  %c308 = trunc i64 %r307 to i32
  %t309 = sub i32 %c306, %c308
  %fn310 = icmp slt i32 %t309, 0
  %fz311 = icmp eq i32 %t309, 0
  %fc312 = icmp uge i32 %c306, %c308
  %fx1313 = xor i32 %c306, %c308
  %fx2314 = xor i32 %c306, %t309
  %fva315 = and i32 %fx1313, %fx2314
  %fv316 = icmp slt i32 %fva315, 0
  %nz317 = zext i1 %fn310 to i64
  %zz318 = zext i1 %fz311 to i64
  %cz319 = zext i1 %fc312 to i64
  %vz320 = zext i1 %fv316 to i64
  %ns321 = shl i64 %nz317, 31
  %zs322 = shl i64 %zz318, 30
  %cs323 = shl i64 %cz319, 29
  %vs324 = shl i64 %vz320, 28
  %nzor325 = or i64 %ns321, %zs322
  %cvor326 = or i64 %cs323, %vs324
  %nzcv327 = or i64 %nzor325, %cvor326
  %wp328 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv327, ptr %wp328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da354 word 0x540002e1
  %r329.p = getelementptr inbounds i8, ptr %c, i64 272
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %fsh331 = lshr i64 %r329, 30
  %ftr332 = trunc i64 %fsh331 to i1
  %cond330 = xor i1 %ftr332, true
  br i1 %cond330, label %L_8001da3b0, label %L_8001da358_ft
L_8001da3b0:
  ; @pc 0x8001da3b0 word 0x9100054a
  %r494.p = getelementptr inbounds i8, ptr %c, i64 80
  %r494 = load i64, ptr %r494.p, align 8, !alias.scope !3, !noalias !4
  %t495 = add i64 %r494, 1
  %wp496 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t495, ptr %wp496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3b4 word 0xeb09015f
  %r497.p = getelementptr inbounds i8, ptr %c, i64 80
  %r497 = load i64, ptr %r497.p, align 8, !alias.scope !3, !noalias !4
  %r498.p = getelementptr inbounds i8, ptr %c, i64 72
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %t499 = sub i64 %r497, %r498
  %fn500 = icmp slt i64 %t499, 0
  %fz501 = icmp eq i64 %t499, 0
  %fc502 = icmp uge i64 %r497, %r498
  %fx1503 = xor i64 %r497, %r498
  %fx2504 = xor i64 %r497, %t499
  %fva505 = and i64 %fx1503, %fx2504
  %fv506 = icmp slt i64 %fva505, 0
  %nz507 = zext i1 %fn500 to i64
  %zz508 = zext i1 %fz501 to i64
  %cz509 = zext i1 %fc502 to i64
  %vz510 = zext i1 %fv506 to i64
  %ns511 = shl i64 %nz507, 31
  %zs512 = shl i64 %zz508, 30
  %cs513 = shl i64 %cz509, 29
  %vs514 = shl i64 %vz510, 28
  %nzor515 = or i64 %ns511, %zs512
  %cvor516 = or i64 %cs513, %vs514
  %nzcv517 = or i64 %nzor515, %cvor516
  %wp518 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv517, ptr %wp518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3b8 word 0x54fffb61
  %r519.p = getelementptr inbounds i8, ptr %c, i64 272
  %r519 = load i64, ptr %r519.p, align 8, !alias.scope !3, !noalias !4
  %fsh521 = lshr i64 %r519, 30
  %ftr522 = trunc i64 %fsh521 to i1
  %cond520 = xor i1 %ftr522, true
  br i1 %cond520, label %L_8001da324, label %L_8001da3bc
L_8001da3bc:
  ; @pc 0x8001da3bc word 0x37005ab7
  %r523.p = getelementptr inbounds i8, ptr %c, i64 184
  %r523 = load i64, ptr %r523.p, align 8, !alias.scope !3, !noalias !4
  %t524 = and i64 %r523, 1
  %cmp525 = icmp ne i64 %t524, 0
  br i1 %cmp525, label %L_8001daf10, label %L_8001da3c0_ft
L_8001da3c4:
  ; @pc 0x8001da3c4 word 0xb001bc28
  %wp528 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3c8 word 0xf9455d08
  %r529.p = getelementptr inbounds i8, ptr %c, i64 64
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %t530 = add i64 %r529, 2744
  %gmp531 = inttoptr i64 %t530 to ptr
  %gml532 = load i64, ptr %gmp531, align 1, !alias.scope !4, !noalias !3
  %wp533 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml532, ptr %wp533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3cc word 0x08dffd08
  %r534.p = getelementptr inbounds i8, ptr %c, i64 64
  %r534 = load i64, ptr %r534.p, align 8, !alias.scope !3, !noalias !4
  %atp535 = inttoptr i64 %r534 to ptr
  %lda536 = load atomic i8, ptr %atp535 acquire, align 1, !alias.scope !4, !noalias !3
  %c537 = zext i8 %lda536 to i64
  %wp538 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c537, ptr %wp538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3d0 word 0x36005ca8
  %r539.p = getelementptr inbounds i8, ptr %c, i64 64
  %r539 = load i64, ptr %r539.p, align 8, !alias.scope !3, !noalias !4
  %t540 = and i64 %r539, 1
  %cmp541 = icmp eq i64 %t540, 0
  br i1 %cmp541, label %L_8001daf64, label %L_8001da3d4_ft
L_8001da3e8:
  ; @pc 0x8001da3e8 word 0x8b0a1174
  %r554.p = getelementptr inbounds i8, ptr %c, i64 88
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %r555.p = getelementptr inbounds i8, ptr %c, i64 80
  %r555 = load i64, ptr %r555.p, align 8, !alias.scope !3, !noalias !4
  %t556 = shl i64 %r555, 4
  %t557 = add i64 %r554, %t556
  %wp558 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t557, ptr %wp558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3ec word 0xaa1403fa
  %r559.p = getelementptr inbounds i8, ptr %c, i64 160
  %r559 = load i64, ptr %r559.p, align 8, !alias.scope !3, !noalias !4
  %t560 = or i64 0, %r559
  %wp561 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t560, ptr %wp561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3f0 word 0xb8408f5c
  %r562.p = getelementptr inbounds i8, ptr %c, i64 208
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %t563 = add i64 %r562, 8
  %gmp564 = inttoptr i64 %t563 to ptr
  %gml565 = load i32, ptr %gmp564, align 1, !alias.scope !4, !noalias !3
  %c566 = zext i32 %gml565 to i64
  %wp567 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t563, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  %wp568 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c566, ptr %wp568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3f4 word 0xaa1a03f6
  %r569.p = getelementptr inbounds i8, ptr %c, i64 208
  %r569 = load i64, ptr %r569.p, align 8, !alias.scope !3, !noalias !4
  %t570 = or i64 0, %r569
  %wp571 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t570, ptr %wp571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3f8 word 0x78dfced7
  %r572.p = getelementptr inbounds i8, ptr %c, i64 176
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %t573 = add i64 %r572, -4
  %gmp574 = inttoptr i64 %t573 to ptr
  %gml575 = load i16, ptr %gmp574, align 1, !alias.scope !4, !noalias !3
  %c576 = sext i16 %gml575 to i32
  %wp577 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t573, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  %c578 = zext i32 %c576 to i64
  %wp579 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c578, ptr %wp579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3fc word 0x0a05038a
  %r580.p = getelementptr inbounds i8, ptr %c, i64 40
  %r580 = load i64, ptr %r580.p, align 8, !alias.scope !3, !noalias !4
  %c581 = trunc i64 %r580 to i32
  %r582.p = getelementptr inbounds i8, ptr %c, i64 224
  %r582 = load i64, ptr %r582.p, align 8, !alias.scope !3, !noalias !4
  %c583 = trunc i64 %r582 to i32
  %t584 = and i32 %c583, %c581
  %c585 = zext i32 %t584 to i64
  %wp586 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c585, ptr %wp586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da400 word 0x37f800b7
  %r587.p = getelementptr inbounds i8, ptr %c, i64 184
  %r587 = load i64, ptr %r587.p, align 8, !alias.scope !3, !noalias !4
  %t588 = and i64 %r587, 2147483648
  %cmp589 = icmp ne i64 %t588, 0
  br i1 %cmp589, label %L_8001da414, label %L_8001da404_ft
L_8001da410:
  ; @pc 0x8001da410 word 0x794002d7
  %r604.p = getelementptr inbounds i8, ptr %c, i64 176
  %r604 = load i64, ptr %r604.p, align 8, !alias.scope !3, !noalias !4
  %gmp605 = inttoptr i64 %r604 to ptr
  %gml606 = load i16, ptr %gmp605, align 1, !alias.scope !4, !noalias !3
  %c607 = zext i16 %gml606 to i64
  %wp608 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c607, ptr %wp608, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da414
L_8001da414:
  ; @pc 0x8001da414 word 0x529ff388
  %c609 = zext i32 65436 to i64
  %wp610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c609, ptr %wp610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da418 word 0x6b37211f
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
  ; @pc 0x8001da41c word 0x54001763
  %r637.p = getelementptr inbounds i8, ptr %c, i64 272
  %r637 = load i64, ptr %r637.p, align 8, !alias.scope !3, !noalias !4
  %fsh639 = lshr i64 %r637, 29
  %ftr640 = trunc i64 %fsh639 to i1
  %cond638 = xor i1 %ftr640, true
  br i1 %cond638, label %L_8001da708, label %L_8001da420_ft
L_8001da438:
  ; @pc 0x8001da438 word 0x9001c728
  %wp685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da43c word 0x91146108
  %r686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r686 = load i64, ptr %r686.p, align 8, !alias.scope !3, !noalias !4
  %t687 = add i64 %r686, 1304
  %wp688 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t687, ptr %wp688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da440 word 0xf940027b
  %r689.p = getelementptr inbounds i8, ptr %c, i64 152
  %r689 = load i64, ptr %r689.p, align 8, !alias.scope !3, !noalias !4
  %gmp690 = inttoptr i64 %r689 to ptr
  %gml691 = load i64, ptr %gmp690, align 1, !alias.scope !4, !noalias !3
  %wp692 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml691, ptr %wp692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da444 word 0x08dffd08
  %r693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r693 = load i64, ptr %r693.p, align 8, !alias.scope !3, !noalias !4
  %atp694 = inttoptr i64 %r693 to ptr
  %lda695 = load atomic i8, ptr %atp694 acquire, align 1, !alias.scope !4, !noalias !3
  %c696 = zext i8 %lda695 to i64
  %wp697 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c696, ptr %wp697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da448 word 0x36002a68
  %r698.p = getelementptr inbounds i8, ptr %c, i64 64
  %r698 = load i64, ptr %r698.p, align 8, !alias.scope !3, !noalias !4
  %t699 = and i64 %r698, 1
  %cmp700 = icmp eq i64 %t699, 0
  br i1 %cmp700, label %L_8001da994, label %L_8001da44c
L_8001da44c:
  ; @pc 0x8001da44c word 0x37783437
  %r701.p = getelementptr inbounds i8, ptr %c, i64 184
  %r701 = load i64, ptr %r701.p, align 8, !alias.scope !3, !noalias !4
  %t702 = and i64 %r701, 32768
  %cmp703 = icmp ne i64 %t702, 0
  br i1 %cmp703, label %L_8001daad0, label %L_8001da450_ft
L_8001da4a4:
  ; @pc 0x8001da4a4 word 0x35002259
  %r852.p = getelementptr inbounds i8, ptr %c, i64 200
  %r852 = load i64, ptr %r852.p, align 8, !alias.scope !3, !noalias !4
  %c853 = trunc i64 %r852 to i32
  %cmp854 = icmp ne i32 %c853, 0
  br i1 %cmp854, label %L_8001da8ec, label %L_8001da4a8_ft
L_8001da4b8:
  ; @pc 0x8001da4b8 word 0x531e7514
  %r883.p = getelementptr inbounds i8, ptr %c, i64 64
  %r883 = load i64, ptr %r883.p, align 8, !alias.scope !3, !noalias !4
  %c884 = trunc i64 %r883 to i32
  %ror885 = call i32 @llvm.fshr.i32(i32 %c884, i32 %c884, i32 30)
  %t886 = and i32 %ror885, -4
  %c887 = zext i32 %t886 to i64
  %wp888 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c887, ptr %wp888, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da4bc
L_8001da4bc:
  ; @pc 0x8001da4bc word 0xf9400ae0
  %r889.p = getelementptr inbounds i8, ptr %c, i64 184
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %t890 = add i64 %r889, 16
  %gmp891 = inttoptr i64 %t890 to ptr
  %gml892 = load i64, ptr %gmp891, align 1, !alias.scope !4, !noalias !3
  %wp893 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml892, ptr %wp893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4c0 word 0xb4000100
  %r894.p = getelementptr inbounds i8, ptr %c, i64 0
  %r894 = load i64, ptr %r894.p, align 8, !alias.scope !3, !noalias !4
  %cmp895 = icmp eq i64 %r894, 0
  br i1 %cmp895, label %L_8001da4e0, label %L_8001da4c4_ft
L_8001da4e0:
  ; @pc 0x8001da4e0 word 0x8b34c008
  %r942.p = getelementptr inbounds i8, ptr %c, i64 0
  %r942 = load i64, ptr %r942.p, align 8, !alias.scope !3, !noalias !4
  %r943.p = getelementptr inbounds i8, ptr %c, i64 160
  %r943 = load i64, ptr %r943.p, align 8, !alias.scope !3, !noalias !4
  %c944 = trunc i64 %r943 to i32
  %c945 = sext i32 %c944 to i64
  %t946 = add i64 %r942, %c945
  %wp947 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t946, ptr %wp947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4e4 word 0x2a1f03f7
  %t948 = or i32 0, 0
  %c949 = zext i32 %t948 to i64
  %wp950 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c949, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4e8 word 0x927ef508
  %r951.p = getelementptr inbounds i8, ptr %c, i64 64
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %t952 = and i64 %r951, -4
  %wp953 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t952, ptr %wp953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4ec word 0xf9000268
  %r954.p = getelementptr inbounds i8, ptr %c, i64 152
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %r955.p = getelementptr inbounds i8, ptr %c, i64 64
  %r955 = load i64, ptr %r955.p, align 8, !alias.scope !3, !noalias !4
  %gmp956 = inttoptr i64 %r954 to ptr
  store i64 %r955, ptr %gmp956, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da4f0 word 0x37001359
  %r957.p = getelementptr inbounds i8, ptr %c, i64 200
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %t958 = and i64 %r957, 1
  %cmp959 = icmp ne i64 %t958, 0
  br i1 %cmp959, label %L_8001da758, label %L_8001da4f4
L_8001da4f4:
  ; @pc 0x8001da4f4 word 0x520002e0
  %r960.p = getelementptr inbounds i8, ptr %c, i64 184
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %c961 = trunc i64 %r960 to i32
  %t962 = xor i32 %c961, 1
  %c963 = zext i32 %t962 to i64
  %wp964 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c963, ptr %wp964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4f8 word 0xa9584ff4
  %r965.p = getelementptr inbounds i8, ptr %c, i64 256
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %t966 = add i64 %r965, 384
  %t967 = add i64 %t966, 8
  %gmp968 = inttoptr i64 %t966 to ptr
  %gml969 = load i64, ptr %gmp968, align 1, !alias.scope !4, !noalias !3
  %gmp970 = inttoptr i64 %t967 to ptr
  %gml971 = load i64, ptr %gmp970, align 1, !alias.scope !4, !noalias !3
  %wp972 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml969, ptr %wp972, align 8, !alias.scope !3, !noalias !4
  %wp973 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml971, ptr %wp973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4fc word 0xa95757f6
  %r974.p = getelementptr inbounds i8, ptr %c, i64 256
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %t975 = add i64 %r974, 368
  %t976 = add i64 %t975, 8
  %gmp977 = inttoptr i64 %t975 to ptr
  %gml978 = load i64, ptr %gmp977, align 1, !alias.scope !4, !noalias !3
  %gmp979 = inttoptr i64 %t976 to ptr
  %gml980 = load i64, ptr %gmp979, align 1, !alias.scope !4, !noalias !3
  %wp981 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml978, ptr %wp981, align 8, !alias.scope !3, !noalias !4
  %wp982 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml980, ptr %wp982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da500 word 0xa9565ff8
  %r983.p = getelementptr inbounds i8, ptr %c, i64 256
  %r983 = load i64, ptr %r983.p, align 8, !alias.scope !3, !noalias !4
  %t984 = add i64 %r983, 352
  %t985 = add i64 %t984, 8
  %gmp986 = inttoptr i64 %t984 to ptr
  %gml987 = load i64, ptr %gmp986, align 1, !alias.scope !4, !noalias !3
  %gmp988 = inttoptr i64 %t985 to ptr
  %gml989 = load i64, ptr %gmp988, align 1, !alias.scope !4, !noalias !3
  %wp990 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml987, ptr %wp990, align 8, !alias.scope !3, !noalias !4
  %wp991 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml989, ptr %wp991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da504 word 0xa95567fa
  %r992.p = getelementptr inbounds i8, ptr %c, i64 256
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %t993 = add i64 %r992, 336
  %t994 = add i64 %t993, 8
  %gmp995 = inttoptr i64 %t993 to ptr
  %gml996 = load i64, ptr %gmp995, align 1, !alias.scope !4, !noalias !3
  %gmp997 = inttoptr i64 %t994 to ptr
  %gml998 = load i64, ptr %gmp997, align 1, !alias.scope !4, !noalias !3
  %wp999 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml996, ptr %wp999, align 8, !alias.scope !3, !noalias !4
  %wp1000 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml998, ptr %wp1000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da508 word 0xa9546ffc
  %r1001.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1001 = load i64, ptr %r1001.p, align 8, !alias.scope !3, !noalias !4
  %t1002 = add i64 %r1001, 320
  %t1003 = add i64 %t1002, 8
  %gmp1004 = inttoptr i64 %t1002 to ptr
  %gml1005 = load i64, ptr %gmp1004, align 1, !alias.scope !4, !noalias !3
  %gmp1006 = inttoptr i64 %t1003 to ptr
  %gml1007 = load i64, ptr %gmp1006, align 1, !alias.scope !4, !noalias !3
  %wp1008 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1005, ptr %wp1008, align 8, !alias.scope !3, !noalias !4
  %wp1009 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1007, ptr %wp1009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da50c word 0xa9537bfd
  %r1010.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1010 = load i64, ptr %r1010.p, align 8, !alias.scope !3, !noalias !4
  %t1011 = add i64 %r1010, 304
  %t1012 = add i64 %t1011, 8
  %gmp1013 = inttoptr i64 %t1011 to ptr
  %gml1014 = load i64, ptr %gmp1013, align 1, !alias.scope !4, !noalias !3
  %gmp1015 = inttoptr i64 %t1012 to ptr
  %gml1016 = load i64, ptr %gmp1015, align 1, !alias.scope !4, !noalias !3
  %wp1017 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1014, ptr %wp1017, align 8, !alias.scope !3, !noalias !4
  %wp1018 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1016, ptr %wp1018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da510 word 0x910643ff
  %r1019.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1019 = load i64, ptr %r1019.p, align 8, !alias.scope !3, !noalias !4
  %t1020 = add i64 %r1019, 400
  %wp1021 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1020, ptr %wp1021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da514 word 0xd65f03c0
  ret void
L_8001da518:
  ; @pc 0x8001da518 word 0xb9406109
  %r1022.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1022 = load i64, ptr %r1022.p, align 8, !alias.scope !3, !noalias !4
  %t1023 = add i64 %r1022, 96
  %gmp1024 = inttoptr i64 %t1023 to ptr
  %gml1025 = load i32, ptr %gmp1024, align 1, !alias.scope !4, !noalias !3
  %c1026 = zext i32 %gml1025 to i64
  %wp1027 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1026, ptr %wp1027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da51c word 0xb90017ea
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %t1029 = add i64 %r1028, 20
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %c1031 = trunc i64 %r1030 to i32
  %gmp1032 = inttoptr i64 %t1029 to ptr
  store i32 %c1031, ptr %gmp1032, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da520 word 0x6b17013f
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %c1034 = trunc i64 %r1033 to i32
  %r1035.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1035 = load i64, ptr %r1035.p, align 8, !alias.scope !3, !noalias !4
  %c1036 = trunc i64 %r1035 to i32
  %t1037 = sub i32 %c1034, %c1036
  %fn1038 = icmp slt i32 %t1037, 0
  %fz1039 = icmp eq i32 %t1037, 0
  %fc1040 = icmp uge i32 %c1034, %c1036
  %fx11041 = xor i32 %c1034, %c1036
  %fx21042 = xor i32 %c1034, %t1037
  %fva1043 = and i32 %fx11041, %fx21042
  %fv1044 = icmp slt i32 %fva1043, 0
  %nz1045 = zext i1 %fn1038 to i64
  %zz1046 = zext i1 %fz1039 to i64
  %cz1047 = zext i1 %fc1040 to i64
  %vz1048 = zext i1 %fv1044 to i64
  %ns1049 = shl i64 %nz1045, 31
  %zs1050 = shl i64 %zz1046, 30
  %cs1051 = shl i64 %cz1047, 29
  %vs1052 = shl i64 %vz1048, 28
  %nzor1053 = or i64 %ns1049, %zs1050
  %cvor1054 = or i64 %cs1051, %vs1052
  %nzcv1055 = or i64 %nzor1053, %cvor1054
  %wp1056 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1055, ptr %wp1056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da524 word 0x54003c2d
  %r1057.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1057 = load i64, ptr %r1057.p, align 8, !alias.scope !3, !noalias !4
  %fsh1059 = lshr i64 %r1057, 30
  %ftr1060 = trunc i64 %fsh1059 to i1
  %fsh1061 = lshr i64 %r1057, 31
  %ftr1062 = trunc i64 %fsh1061 to i1
  %fsh1063 = lshr i64 %r1057, 28
  %ftr1064 = trunc i64 %fsh1063 to i1
  %fnz1065 = xor i1 %ftr1060, true
  %feq1066 = icmp eq i1 %ftr1062, %ftr1064
  %fgt1067 = and i1 %fnz1065, %feq1066
  %cond1058 = xor i1 %fgt1067, true
  br i1 %cond1058, label %L_8001daca8, label %L_8001da528_ft
L_8001da530:
  ; @pc 0x8001da530 word 0xb001bc28
  %wp1082 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da534 word 0xf9452d08
  %r1083.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1083 = load i64, ptr %r1083.p, align 8, !alias.scope !3, !noalias !4
  %t1084 = add i64 %r1083, 2648
  %gmp1085 = inttoptr i64 %t1084 to ptr
  %gml1086 = load i64, ptr %gmp1085, align 1, !alias.scope !4, !noalias !3
  %wp1087 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1086, ptr %wp1087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da538 word 0x08dffd08
  %r1088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1088 = load i64, ptr %r1088.p, align 8, !alias.scope !3, !noalias !4
  %atp1089 = inttoptr i64 %r1088 to ptr
  %lda1090 = load atomic i8, ptr %atp1089 acquire, align 1, !alias.scope !4, !noalias !3
  %c1091 = zext i8 %lda1090 to i64
  %wp1092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1091, ptr %wp1092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da53c word 0x36003ea8
  %r1093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1093 = load i64, ptr %r1093.p, align 8, !alias.scope !3, !noalias !4
  %t1094 = and i64 %r1093, 1
  %cmp1095 = icmp eq i64 %t1094, 0
  br i1 %cmp1095, label %L_8001dad10, label %L_8001da540
L_8001da540:
  ; @pc 0x8001da540 word 0xf90007f3
  %r1096.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1096 = load i64, ptr %r1096.p, align 8, !alias.scope !3, !noalias !4
  %t1097 = add i64 %r1096, 8
  %r1098.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1098 = load i64, ptr %r1098.p, align 8, !alias.scope !3, !noalias !4
  %gmp1099 = inttoptr i64 %t1097 to ptr
  store i64 %r1098, ptr %gmp1099, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da544 word 0xb4000297
  %r1100.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1100 = load i64, ptr %r1100.p, align 8, !alias.scope !3, !noalias !4
  %cmp1101 = icmp eq i64 %r1100, 0
  br i1 %cmp1101, label %L_8001da594, label %L_8001da548_ft
L_8001da594:
  ; @pc 0x8001da594 word 0xb001bc28
  %wp1173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da598 word 0xf9453508
  %r1174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1174 = load i64, ptr %r1174.p, align 8, !alias.scope !3, !noalias !4
  %t1175 = add i64 %r1174, 2664
  %gmp1176 = inttoptr i64 %t1175 to ptr
  %gml1177 = load i64, ptr %gmp1176, align 1, !alias.scope !4, !noalias !3
  %wp1178 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1177, ptr %wp1178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da59c word 0x08dffd08
  %r1179.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1179 = load i64, ptr %r1179.p, align 8, !alias.scope !3, !noalias !4
  %atp1180 = inttoptr i64 %r1179 to ptr
  %lda1181 = load atomic i8, ptr %atp1180 acquire, align 1, !alias.scope !4, !noalias !3
  %c1182 = zext i8 %lda1181 to i64
  %wp1183 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1182, ptr %wp1183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5a0 word 0x36002248
  %r1184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1184 = load i64, ptr %r1184.p, align 8, !alias.scope !3, !noalias !4
  %t1185 = and i64 %r1184, 1
  %cmp1186 = icmp eq i64 %t1185, 0
  br i1 %cmp1186, label %L_8001da9e8, label %L_8001da5a4
L_8001da5a4:
  ; @pc 0x8001da5a4 word 0xb4000297
  %r1187.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1187 = load i64, ptr %r1187.p, align 8, !alias.scope !3, !noalias !4
  %cmp1188 = icmp eq i64 %r1187, 0
  br i1 %cmp1188, label %L_8001da5f4, label %L_8001da5a8_ft
L_8001da5f4:
  ; @pc 0x8001da5f4 word 0xb001bc28
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5f8 word 0xf9453d08
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = add i64 %r1261, 2680
  %gmp1263 = inttoptr i64 %t1262 to ptr
  %gml1264 = load i64, ptr %gmp1263, align 1, !alias.scope !4, !noalias !3
  %wp1265 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1264, ptr %wp1265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5fc word 0x08dffd08
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %atp1267 = inttoptr i64 %r1266 to ptr
  %lda1268 = load atomic i8, ptr %atp1267 acquire, align 1, !alias.scope !4, !noalias !3
  %c1269 = zext i8 %lda1268 to i64
  %wp1270 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1269, ptr %wp1270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da600 word 0x36002268
  %r1271.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1271 = load i64, ptr %r1271.p, align 8, !alias.scope !3, !noalias !4
  %t1272 = and i64 %r1271, 1
  %cmp1273 = icmp eq i64 %t1272, 0
  br i1 %cmp1273, label %L_8001daa4c, label %L_8001da604
L_8001da604:
  ; @pc 0x8001da604 word 0xb4000297
  %r1274.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1274 = load i64, ptr %r1274.p, align 8, !alias.scope !3, !noalias !4
  %cmp1275 = icmp eq i64 %r1274, 0
  br i1 %cmp1275, label %L_8001da654, label %L_8001da608_ft
L_8001da654:
  ; @pc 0x8001da654 word 0xb001bc28
  %wp1347 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da658 word 0xf9454508
  %r1348.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1348 = load i64, ptr %r1348.p, align 8, !alias.scope !3, !noalias !4
  %t1349 = add i64 %r1348, 2696
  %gmp1350 = inttoptr i64 %t1349 to ptr
  %gml1351 = load i64, ptr %gmp1350, align 1, !alias.scope !4, !noalias !3
  %wp1352 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1351, ptr %wp1352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da65c word 0x08dffd08
  %r1353.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1353 = load i64, ptr %r1353.p, align 8, !alias.scope !3, !noalias !4
  %atp1354 = inttoptr i64 %r1353 to ptr
  %lda1355 = load atomic i8, ptr %atp1354 acquire, align 1, !alias.scope !4, !noalias !3
  %c1356 = zext i8 %lda1355 to i64
  %wp1357 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1356, ptr %wp1357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da660 word 0x360038a8
  %r1358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1358 = load i64, ptr %r1358.p, align 8, !alias.scope !3, !noalias !4
  %t1359 = and i64 %r1358, 1
  %cmp1360 = icmp eq i64 %t1359, 0
  br i1 %cmp1360, label %L_8001dad74, label %L_8001da664
L_8001da664:
  ; @pc 0x8001da664 word 0xb4000297
  %r1361.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1361 = load i64, ptr %r1361.p, align 8, !alias.scope !3, !noalias !4
  %cmp1362 = icmp eq i64 %r1361, 0
  br i1 %cmp1362, label %L_8001da6b4, label %L_8001da668_ft
L_8001da6b4:
  ; @pc 0x8001da6b4 word 0xb001bc28
  %wp1434 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6b8 word 0xf9454d08
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %t1436 = add i64 %r1435, 2712
  %gmp1437 = inttoptr i64 %t1436 to ptr
  %gml1438 = load i64, ptr %gmp1437, align 1, !alias.scope !4, !noalias !3
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6bc word 0x08dffd08
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %atp1441 = inttoptr i64 %r1440 to ptr
  %lda1442 = load atomic i8, ptr %atp1441 acquire, align 1, !alias.scope !4, !noalias !3
  %c1443 = zext i8 %lda1442 to i64
  %wp1444 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1443, ptr %wp1444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6c0 word 0x360038c8
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %t1446 = and i64 %r1445, 1
  %cmp1447 = icmp eq i64 %t1446, 0
  br i1 %cmp1447, label %L_8001dadd8, label %L_8001da6c4
L_8001da6c4:
  ; @pc 0x8001da6c4 word 0xb4ffea77
  %r1448.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1448 = load i64, ptr %r1448.p, align 8, !alias.scope !3, !noalias !4
  %cmp1449 = icmp eq i64 %r1448, 0
  br i1 %cmp1449, label %L_8001da410, label %L_8001da6c8_ft
L_8001da708:
  ; @pc 0x8001da708 word 0xb9400348
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %gmp1511 = inttoptr i64 %r1510 to ptr
  %gml1512 = load i32, ptr %gmp1511, align 1, !alias.scope !4, !noalias !3
  %c1513 = zext i32 %gml1512 to i64
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da70c word 0x2a1f03f6
  %t1515 = or i32 0, 0
  %c1516 = zext i32 %t1515 to i64
  %wp1517 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c1516, ptr %wp1517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da710 word 0x91003294
  %r1518.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1518 = load i64, ptr %r1518.p, align 8, !alias.scope !3, !noalias !4
  %t1519 = add i64 %r1518, 12
  %wp1520 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1519, ptr %wp1520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da714 word 0x6b05015f
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %c1522 = trunc i64 %r1521 to i32
  %r1523.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1523 = load i64, ptr %r1523.p, align 8, !alias.scope !3, !noalias !4
  %c1524 = trunc i64 %r1523 to i32
  %t1525 = sub i32 %c1522, %c1524
  %fn1526 = icmp slt i32 %t1525, 0
  %fz1527 = icmp eq i32 %t1525, 0
  %fc1528 = icmp uge i32 %c1522, %c1524
  %fx11529 = xor i32 %c1522, %c1524
  %fx21530 = xor i32 %c1522, %t1525
  %fva1531 = and i32 %fx11529, %fx21530
  %fv1532 = icmp slt i32 %fva1531, 0
  %nz1533 = zext i1 %fn1526 to i64
  %zz1534 = zext i1 %fz1527 to i64
  %cz1535 = zext i1 %fc1528 to i64
  %vz1536 = zext i1 %fv1532 to i64
  %ns1537 = shl i64 %nz1533, 31
  %zs1538 = shl i64 %zz1534, 30
  %cs1539 = shl i64 %cz1535, 29
  %vs1540 = shl i64 %vz1536, 28
  %nzor1541 = or i64 %ns1537, %zs1538
  %cvor1542 = or i64 %cs1539, %vs1540
  %nzcv1543 = or i64 %nzor1541, %cvor1542
  %wp1544 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1543, ptr %wp1544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da718 word 0x1207751a
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %c1546 = trunc i64 %r1545 to i32
  %t1547 = and i32 %c1546, -25165825
  %c1548 = zext i32 %t1547 to i64
  %wp1549 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1548, ptr %wp1549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da71c word 0x54000040
  %r1550.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1550 = load i64, ptr %r1550.p, align 8, !alias.scope !3, !noalias !4
  %fsh1552 = lshr i64 %r1550, 30
  %cond1551 = trunc i64 %fsh1552 to i1
  br i1 %cond1551, label %L_8001da724, label %L_8001da720_ft
L_8001da724:
  ; @pc 0x8001da724 word 0xf940027b
  %r1556.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1556 = load i64, ptr %r1556.p, align 8, !alias.scope !3, !noalias !4
  %gmp1557 = inttoptr i64 %r1556 to ptr
  %gml1558 = load i64, ptr %gmp1557, align 1, !alias.scope !4, !noalias !3
  %wp1559 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1558, ptr %wp1559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da728 word 0x710002df
  %r1560.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1560 = load i64, ptr %r1560.p, align 8, !alias.scope !3, !noalias !4
  %c1561 = trunc i64 %r1560 to i32
  %t1562 = sub i32 %c1561, 0
  %fn1563 = icmp slt i32 %t1562, 0
  %fz1564 = icmp eq i32 %t1562, 0
  %fc1565 = icmp uge i32 %c1561, 0
  %fx11566 = xor i32 %c1561, 0
  %fx21567 = xor i32 %c1561, %t1562
  %fva1568 = and i32 %fx11566, %fx21567
  %fv1569 = icmp slt i32 %fva1568, 0
  %nz1570 = zext i1 %fn1563 to i64
  %zz1571 = zext i1 %fz1564 to i64
  %cz1572 = zext i1 %fc1565 to i64
  %vz1573 = zext i1 %fv1569 to i64
  %ns1574 = shl i64 %nz1570, 31
  %zs1575 = shl i64 %zz1571, 30
  %cs1576 = shl i64 %cz1572, 29
  %vs1577 = shl i64 %vz1573, 28
  %nzor1578 = or i64 %ns1574, %zs1575
  %cvor1579 = or i64 %cs1576, %vs1577
  %nzcv1580 = or i64 %nzor1578, %cvor1579
  %wp1581 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1580, ptr %wp1581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da72c word 0x927ef688
  %r1582.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1582 = load i64, ptr %r1582.p, align 8, !alias.scope !3, !noalias !4
  %t1583 = and i64 %r1582, -4
  %wp1584 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1583, ptr %wp1584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da730 word 0x5318638a
  %r1585.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1585 = load i64, ptr %r1585.p, align 8, !alias.scope !3, !noalias !4
  %c1586 = trunc i64 %r1585 to i32
  %ror1587 = call i32 @llvm.fshr.i32(i32 %c1586, i32 %c1586, i32 24)
  %t1588 = and i32 %ror1587, 1
  %c1589 = zext i32 %t1588 to i64
  %wp1590 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1589, ptr %wp1590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da734 word 0x1a9f07f7
  %t1591 = add i32 0, 1
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %fsh1594 = lshr i64 %r1592, 30
  %cond1593 = trunc i64 %fsh1594 to i1
  %sel1595 = select i1 %cond1593, i32 0, i32 %t1591
  %c1596 = zext i32 %sel1595 to i64
  %wp1597 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1596, ptr %wp1597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da738 word 0x0a050349
  %r1598.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1598 = load i64, ptr %r1598.p, align 8, !alias.scope !3, !noalias !4
  %c1599 = trunc i64 %r1598 to i32
  %r1600.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1600 = load i64, ptr %r1600.p, align 8, !alias.scope !3, !noalias !4
  %c1601 = trunc i64 %r1600 to i32
  %t1602 = and i32 %c1601, %c1599
  %c1603 = zext i32 %t1602 to i64
  %wp1604 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1603, ptr %wp1604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da73c word 0xaa0a0108
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %t1607 = or i64 %r1606, %r1605
  %wp1608 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1607, ptr %wp1608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da740 word 0xf9000268
  %r1609.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1609 = load i64, ptr %r1609.p, align 8, !alias.scope !3, !noalias !4
  %r1610.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1610 = load i64, ptr %r1610.p, align 8, !alias.scope !3, !noalias !4
  %gmp1611 = inttoptr i64 %r1609 to ptr
  store i64 %r1610, ptr %gmp1611, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da744 word 0x36b8007c
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %t1613 = and i64 %r1612, 8388608
  %cmp1614 = icmp eq i64 %t1613, 0
  br i1 %cmp1614, label %L_8001da750, label %L_8001da748_ft
L_8001da750:
  ; @pc 0x8001da750 word 0x6b05013f
  %r1621.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1621 = load i64, ptr %r1621.p, align 8, !alias.scope !3, !noalias !4
  %c1622 = trunc i64 %r1621 to i32
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %c1624 = trunc i64 %r1623 to i32
  %t1625 = sub i32 %c1622, %c1624
  %fn1626 = icmp slt i32 %t1625, 0
  %fz1627 = icmp eq i32 %t1625, 0
  %fc1628 = icmp uge i32 %c1622, %c1624
  %fx11629 = xor i32 %c1622, %c1624
  %fx21630 = xor i32 %c1622, %t1625
  %fva1631 = and i32 %fx11629, %fx21630
  %fv1632 = icmp slt i32 %fva1631, 0
  %nz1633 = zext i1 %fn1626 to i64
  %zz1634 = zext i1 %fz1627 to i64
  %cz1635 = zext i1 %fc1628 to i64
  %vz1636 = zext i1 %fv1632 to i64
  %ns1637 = shl i64 %nz1633, 31
  %zs1638 = shl i64 %zz1634, 30
  %cs1639 = shl i64 %cz1635, 29
  %vs1640 = shl i64 %vz1636, 28
  %nzor1641 = or i64 %ns1637, %zs1638
  %cvor1642 = or i64 %cs1639, %vs1640
  %nzcv1643 = or i64 %nzor1641, %cvor1642
  %wp1644 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1643, ptr %wp1644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da754 word 0x54ffed01
  %r1645.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1645 = load i64, ptr %r1645.p, align 8, !alias.scope !3, !noalias !4
  %fsh1647 = lshr i64 %r1645, 30
  %ftr1648 = trunc i64 %fsh1647 to i1
  %cond1646 = xor i1 %ftr1648, true
  br i1 %cond1646, label %L_8001da4f4, label %L_8001da758
L_8001da758:
  ; @pc 0x8001da758 word 0xf1000f7f
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %t1650 = sub i64 %r1649, 3
  %fn1651 = icmp slt i64 %t1650, 0
  %fz1652 = icmp eq i64 %t1650, 0
  %fc1653 = icmp uge i64 %r1649, 3
  %fx11654 = xor i64 %r1649, 3
  %fx21655 = xor i64 %r1649, %t1650
  %fva1656 = and i64 %fx11654, %fx21655
  %fv1657 = icmp slt i64 %fva1656, 0
  %nz1658 = zext i1 %fn1651 to i64
  %zz1659 = zext i1 %fz1652 to i64
  %cz1660 = zext i1 %fc1653 to i64
  %vz1661 = zext i1 %fv1657 to i64
  %ns1662 = shl i64 %nz1658, 31
  %zs1663 = shl i64 %zz1659, 30
  %cs1664 = shl i64 %cz1660, 29
  %vs1665 = shl i64 %vz1661, 28
  %nzor1666 = or i64 %ns1662, %zs1663
  %cvor1667 = or i64 %cs1664, %vs1665
  %nzcv1668 = or i64 %nzor1666, %cvor1667
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da75c word 0x54003768
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %fsh1672 = lshr i64 %r1670, 29
  %ftr1673 = trunc i64 %fsh1672 to i1
  %fsh1674 = lshr i64 %r1670, 30
  %ftr1675 = trunc i64 %fsh1674 to i1
  %fnz1676 = xor i1 %ftr1675, true
  %cond1671 = and i1 %ftr1673, %fnz1676
  br i1 %cond1671, label %L_8001dae48, label %L_8001da760_ft
L_8001da788:
  ; @pc 0x8001da788 word 0x12800008
  %c1715 = zext i32 -1 to i64
  %wp1716 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1715, ptr %wp1716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da78c word 0xf9001a88
  %r1717.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1717 = load i64, ptr %r1717.p, align 8, !alias.scope !3, !noalias !4
  %t1718 = add i64 %r1717, 48
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %gmp1720 = inttoptr i64 %t1718 to ptr
  store i64 %r1719, ptr %gmp1720, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da790 word 0xb001bb88
  %wp1721 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da794 word 0xf945bd08
  %r1722.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1722 = load i64, ptr %r1722.p, align 8, !alias.scope !3, !noalias !4
  %t1723 = add i64 %r1722, 2936
  %gmp1724 = inttoptr i64 %t1723 to ptr
  %gml1725 = load i64, ptr %gmp1724, align 1, !alias.scope !4, !noalias !3
  %wp1726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1725, ptr %wp1726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da798 word 0xa9017e9f
  %r1727.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1727 = load i64, ptr %r1727.p, align 8, !alias.scope !3, !noalias !4
  %t1728 = add i64 %r1727, 16
  %t1729 = add i64 %t1728, 8
  %gmp1730 = inttoptr i64 %t1728 to ptr
  store i64 0, ptr %gmp1730, align 1, !alias.scope !4, !noalias !3
  %gmp1731 = inttoptr i64 %t1729 to ptr
  store i64 0, ptr %gmp1731, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da79c word 0xa9027e9f
  %r1732.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1732 = load i64, ptr %r1732.p, align 8, !alias.scope !3, !noalias !4
  %t1733 = add i64 %r1732, 32
  %t1734 = add i64 %t1733, 8
  %gmp1735 = inttoptr i64 %t1733 to ptr
  store i64 0, ptr %gmp1735, align 1, !alias.scope !4, !noalias !3
  %gmp1736 = inttoptr i64 %t1734 to ptr
  store i64 0, ptr %gmp1736, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da7a0 word 0xa9007e88
  %r1737.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1737 = load i64, ptr %r1737.p, align 8, !alias.scope !3, !noalias !4
  %t1738 = add i64 %r1737, 8
  %r1739.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1739 = load i64, ptr %r1739.p, align 8, !alias.scope !3, !noalias !4
  %gmp1740 = inttoptr i64 %r1737 to ptr
  store i64 %r1739, ptr %gmp1740, align 1, !alias.scope !4, !noalias !3
  %gmp1741 = inttoptr i64 %t1738 to ptr
  store i64 0, ptr %gmp1741, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da7a4 word 0x29402408
  %r1742.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1742 = load i64, ptr %r1742.p, align 8, !alias.scope !3, !noalias !4
  %t1743 = add i64 %r1742, 4
  %gmp1744 = inttoptr i64 %r1742 to ptr
  %gml1745 = load i32, ptr %gmp1744, align 1, !alias.scope !4, !noalias !3
  %c1746 = zext i32 %gml1745 to i64
  %gmp1747 = inttoptr i64 %t1743 to ptr
  %gml1748 = load i32, ptr %gmp1747, align 1, !alias.scope !4, !noalias !3
  %c1749 = zext i32 %gml1748 to i64
  %wp1750 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1746, ptr %wp1750, align 8, !alias.scope !3, !noalias !4
  %wp1751 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1749, ptr %wp1751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7a8 word 0x93407d08
  %r1752.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1752 = load i64, ptr %r1752.p, align 8, !alias.scope !3, !noalias !4
  %t1753 = lshr i64 %r1752, 31
  %t1754 = and i64 %t1753, 1
  %t1755 = sub i64 0, %t1754
  %t1756 = and i64 %t1755, -4294967296
  %t1757 = and i64 %r1752, 4294967295
  %t1758 = or i64 %t1756, %t1757
  %wp1759 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1758, ptr %wp1759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7ac word 0x6b09011f
  %r1760.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1760 = load i64, ptr %r1760.p, align 8, !alias.scope !3, !noalias !4
  %c1761 = trunc i64 %r1760 to i32
  %r1762.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1762 = load i64, ptr %r1762.p, align 8, !alias.scope !3, !noalias !4
  %c1763 = trunc i64 %r1762 to i32
  %t1764 = sub i32 %c1761, %c1763
  %fn1765 = icmp slt i32 %t1764, 0
  %fz1766 = icmp eq i32 %t1764, 0
  %fc1767 = icmp uge i32 %c1761, %c1763
  %fx11768 = xor i32 %c1761, %c1763
  %fx21769 = xor i32 %c1761, %t1764
  %fva1770 = and i32 %fx11768, %fx21769
  %fv1771 = icmp slt i32 %fva1770, 0
  %nz1772 = zext i1 %fn1765 to i64
  %zz1773 = zext i1 %fz1766 to i64
  %cz1774 = zext i1 %fc1767 to i64
  %vz1775 = zext i1 %fv1771 to i64
  %ns1776 = shl i64 %nz1772, 31
  %zs1777 = shl i64 %zz1773, 30
  %cs1778 = shl i64 %cz1774, 29
  %vs1779 = shl i64 %vz1775, 28
  %nzor1780 = or i64 %ns1776, %zs1777
  %cvor1781 = or i64 %cs1778, %vs1779
  %nzcv1782 = or i64 %nzor1780, %cvor1781
  %wp1783 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1782, ptr %wp1783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7b0 word 0x540000ca
  %r1784.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1784 = load i64, ptr %r1784.p, align 8, !alias.scope !3, !noalias !4
  %fsh1786 = lshr i64 %r1784, 31
  %ftr1787 = trunc i64 %fsh1786 to i1
  %fsh1788 = lshr i64 %r1784, 28
  %ftr1789 = trunc i64 %fsh1788 to i1
  %cond1785 = icmp eq i1 %ftr1787, %ftr1789
  br i1 %cond1785, label %L_8001da7c8, label %L_8001da7b4_ft
L_8001da7c8:
  ; @pc 0x8001da7c8 word 0xf9400308
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %gmp1816 = inttoptr i64 %r1815 to ptr
  %gml1817 = load i64, ptr %gmp1816, align 1, !alias.scope !4, !noalias !3
  %wp1818 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1817, ptr %wp1818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7cc word 0x52800089
  %c1819 = zext i32 4 to i64
  %wp1820 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1819, ptr %wp1820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7d0 word 0x12003f4a
  %r1821.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1821 = load i64, ptr %r1821.p, align 8, !alias.scope !3, !noalias !4
  %c1822 = trunc i64 %r1821 to i32
  %t1823 = and i32 %c1822, 65535
  %c1824 = zext i32 %t1823 to i64
  %wp1825 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1824, ptr %wp1825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7d4 word 0x2905268a
  %r1826.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1826 = load i64, ptr %r1826.p, align 8, !alias.scope !3, !noalias !4
  %t1827 = add i64 %r1826, 40
  %t1828 = add i64 %t1827, 4
  %r1829.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1829 = load i64, ptr %r1829.p, align 8, !alias.scope !3, !noalias !4
  %c1830 = trunc i64 %r1829 to i32
  %gmp1831 = inttoptr i64 %t1827 to ptr
  store i32 %c1830, ptr %gmp1831, align 1, !alias.scope !4, !noalias !3
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %c1833 = trunc i64 %r1832 to i32
  %gmp1834 = inttoptr i64 %t1828 to ptr
  store i32 %c1833, ptr %gmp1834, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da7d8 word 0xa9005a88
  %r1835.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1835 = load i64, ptr %r1835.p, align 8, !alias.scope !3, !noalias !4
  %t1836 = add i64 %r1835, 8
  %r1837.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1837 = load i64, ptr %r1837.p, align 8, !alias.scope !3, !noalias !4
  %gmp1838 = inttoptr i64 %r1835 to ptr
  store i64 %r1837, ptr %gmp1838, align 1, !alias.scope !4, !noalias !3
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %gmp1840 = inttoptr i64 %t1836 to ptr
  store i64 %r1839, ptr %gmp1840, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da7dc word 0xf9400aa0
  %r1841.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1841 = load i64, ptr %r1841.p, align 8, !alias.scope !3, !noalias !4
  %t1842 = add i64 %r1841, 16
  %gmp1843 = inttoptr i64 %t1842 to ptr
  %gml1844 = load i64, ptr %gmp1843, align 1, !alias.scope !4, !noalias !3
  %wp1845 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1844, ptr %wp1845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7e0 word 0xf9400008
  %r1846.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1846 = load i64, ptr %r1846.p, align 8, !alias.scope !3, !noalias !4
  %gmp1847 = inttoptr i64 %r1846 to ptr
  %gml1848 = load i64, ptr %gmp1847, align 1, !alias.scope !4, !noalias !3
  %wp1849 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1848, ptr %wp1849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7e4 word 0xf9402908
  %r1850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1850 = load i64, ptr %r1850.p, align 8, !alias.scope !3, !noalias !4
  %t1851 = add i64 %r1850, 80
  %gmp1852 = inttoptr i64 %t1851 to ptr
  %gml1853 = load i64, ptr %gmp1852, align 1, !alias.scope !4, !noalias !3
  %wp1854 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1853, ptr %wp1854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7e8 word 0xd63f0100
  %r1855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1855 = load i64, ptr %r1855.p, align 8, !alias.scope !3, !noalias !4
  %fp1856 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1855, ptr %fp1856, align 8, !alias.scope !3, !noalias !4
  %wp1857 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681900, ptr %wp1857, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da7ec word 0xb4000ba0
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %cmp1859 = icmp eq i64 %r1858, 0
  br i1 %cmp1859, label %L_8001da960, label %L_8001da7f0_ft
L_8001da81c:
  ; @pc 0x8001da81c word 0xf9000a88
  %r1935.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1935 = load i64, ptr %r1935.p, align 8, !alias.scope !3, !noalias !4
  %t1936 = add i64 %r1935, 16
  %r1937.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1937 = load i64, ptr %r1937.p, align 8, !alias.scope !3, !noalias !4
  %gmp1938 = inttoptr i64 %t1936 to ptr
  store i64 %r1937, ptr %gmp1938, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da820 word 0xb900329f
  %r1939.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1939 = load i64, ptr %r1939.p, align 8, !alias.scope !3, !noalias !4
  %t1940 = add i64 %r1939, 48
  %gmp1941 = inttoptr i64 %t1940 to ptr
  store i32 0, ptr %gmp1941, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da824 word 0x14000025
  br label %L_8001da8b8
L_8001da828:
  ; @pc 0x8001da828 word 0x529ffff7
  %c1942 = zext i32 65535 to i64
  %wp1943 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1942, ptr %wp1943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da82c word 0x529ffff4
  %c1944 = zext i32 65535 to i64
  %wp1945 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c1944, ptr %wp1945, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da830
L_8001da830:
  ; @pc 0x8001da830 word 0x0a050348
  %r1946.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1946 = load i64, ptr %r1946.p, align 8, !alias.scope !3, !noalias !4
  %c1947 = trunc i64 %r1946 to i32
  %r1948.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1948 = load i64, ptr %r1948.p, align 8, !alias.scope !3, !noalias !4
  %c1949 = trunc i64 %r1948 to i32
  %t1950 = and i32 %c1949, %c1947
  %c1951 = zext i32 %t1950 to i64
  %wp1952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1951, ptr %wp1952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da834 word 0x6b05011f
  %r1953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1953 = load i64, ptr %r1953.p, align 8, !alias.scope !3, !noalias !4
  %c1954 = trunc i64 %r1953 to i32
  %r1955.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1955 = load i64, ptr %r1955.p, align 8, !alias.scope !3, !noalias !4
  %c1956 = trunc i64 %r1955 to i32
  %t1957 = sub i32 %c1954, %c1956
  %fn1958 = icmp slt i32 %t1957, 0
  %fz1959 = icmp eq i32 %t1957, 0
  %fc1960 = icmp uge i32 %c1954, %c1956
  %fx11961 = xor i32 %c1954, %c1956
  %fx21962 = xor i32 %c1954, %t1957
  %fva1963 = and i32 %fx11961, %fx21962
  %fv1964 = icmp slt i32 %fva1963, 0
  %nz1965 = zext i1 %fn1958 to i64
  %zz1966 = zext i1 %fz1959 to i64
  %cz1967 = zext i1 %fc1960 to i64
  %vz1968 = zext i1 %fv1964 to i64
  %ns1969 = shl i64 %nz1965, 31
  %zs1970 = shl i64 %zz1966, 30
  %cs1971 = shl i64 %cz1967, 29
  %vs1972 = shl i64 %vz1968, 28
  %nzor1973 = or i64 %ns1969, %zs1970
  %cvor1974 = or i64 %cs1971, %vs1972
  %nzcv1975 = or i64 %nzor1973, %cvor1974
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da838 word 0x1a9f17f9
  %t1977 = add i32 0, 1
  %r1978.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1978 = load i64, ptr %r1978.p, align 8, !alias.scope !3, !noalias !4
  %fsh1980 = lshr i64 %r1978, 30
  %ftr1981 = trunc i64 %fsh1980 to i1
  %cond1979 = xor i1 %ftr1981, true
  %sel1982 = select i1 %cond1979, i32 0, i32 %t1977
  %c1983 = zext i32 %sel1982 to i64
  %wp1984 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1983, ptr %wp1984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da83c word 0x34ffdffa
  %r1985.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1985 = load i64, ptr %r1985.p, align 8, !alias.scope !3, !noalias !4
  %c1986 = trunc i64 %r1985 to i32
  %cmp1987 = icmp eq i32 %c1986, 0
  br i1 %cmp1987, label %L_8001da438, label %L_8001da840_ft
L_8001da870:
  ; @pc 0x8001da870 word 0xf9404c08
  %r2056.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2056 = load i64, ptr %r2056.p, align 8, !alias.scope !3, !noalias !4
  %t2057 = add i64 %r2056, 152
  %gmp2058 = inttoptr i64 %t2057 to ptr
  %gml2059 = load i64, ptr %gmp2058, align 1, !alias.scope !4, !noalias !3
  %wp2060 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2059, ptr %wp2060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da874 word 0xb4000288
  %r2061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2061 = load i64, ptr %r2061.p, align 8, !alias.scope !3, !noalias !4
  %cmp2062 = icmp eq i64 %r2061, 0
  br i1 %cmp2062, label %L_8001da8c4, label %L_8001da878_ft
L_8001da8ac:
  ; @pc 0x8001da8ac word 0xf9400508
  %r2179.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2179 = load i64, ptr %r2179.p, align 8, !alias.scope !3, !noalias !4
  %t2180 = add i64 %r2179, 8
  %gmp2181 = inttoptr i64 %t2180 to ptr
  %gml2182 = load i64, ptr %gmp2181, align 1, !alias.scope !4, !noalias !3
  %wp2183 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2182, ptr %wp2183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8b0 word 0xb40000a8
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %cmp2185 = icmp eq i64 %r2184, 0
  br i1 %cmp2185, label %L_8001da8c4, label %L_8001da8b4
L_8001da8b4:
  ; @pc 0x8001da8b4 word 0x2a1f03f7
  %t2186 = or i32 0, 0
  %c2187 = zext i32 %t2186 to i64
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2187, ptr %wp2188, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da8b8
L_8001da8b8:
  ; @pc 0x8001da8b8 word 0x927ef508
  %r2189.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2189 = load i64, ptr %r2189.p, align 8, !alias.scope !3, !noalias !4
  %t2190 = and i64 %r2189, -4
  %wp2191 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2190, ptr %wp2191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8bc word 0xf9000268
  %r2192.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2192 = load i64, ptr %r2192.p, align 8, !alias.scope !3, !noalias !4
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %gmp2194 = inttoptr i64 %r2192 to ptr
  store i64 %r2193, ptr %gmp2194, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da8c0 word 0x17ffff0d
  br label %L_8001da4f4
L_8001da8c4:
  ; @pc 0x8001da8c4 word 0xb9403009
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %t2196 = add i64 %r2195, 48
  %gmp2197 = inttoptr i64 %t2196 to ptr
  %gml2198 = load i32, ptr %gmp2197, align 1, !alias.scope !4, !noalias !3
  %c2199 = zext i32 %gml2198 to i64
  %wp2200 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2199, ptr %wp2200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8c8 word 0x6b01013f
  %r2201.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2201 = load i64, ptr %r2201.p, align 8, !alias.scope !3, !noalias !4
  %c2202 = trunc i64 %r2201 to i32
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %c2204 = trunc i64 %r2203 to i32
  %t2205 = sub i32 %c2202, %c2204
  %fn2206 = icmp slt i32 %t2205, 0
  %fz2207 = icmp eq i32 %t2205, 0
  %fc2208 = icmp uge i32 %c2202, %c2204
  %fx12209 = xor i32 %c2202, %c2204
  %fx22210 = xor i32 %c2202, %t2205
  %fva2211 = and i32 %fx12209, %fx22210
  %fv2212 = icmp slt i32 %fva2211, 0
  %nz2213 = zext i1 %fn2206 to i64
  %zz2214 = zext i1 %fz2207 to i64
  %cz2215 = zext i1 %fc2208 to i64
  %vz2216 = zext i1 %fv2212 to i64
  %ns2217 = shl i64 %nz2213, 31
  %zs2218 = shl i64 %zz2214, 30
  %cs2219 = shl i64 %cz2215, 29
  %vs2220 = shl i64 %vz2216, 28
  %nzor2221 = or i64 %ns2217, %zs2218
  %cvor2222 = or i64 %cs2219, %vs2220
  %nzcv2223 = or i64 %nzor2221, %cvor2222
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2223, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8cc word 0xf9401c08
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %t2226 = add i64 %r2225, 56
  %gmp2227 = inttoptr i64 %t2226 to ptr
  %gml2228 = load i64, ptr %gmp2227, align 1, !alias.scope !4, !noalias !3
  %wp2229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2228, ptr %wp2229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8d0 word 0x54ffff29
  %r2230.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2230 = load i64, ptr %r2230.p, align 8, !alias.scope !3, !noalias !4
  %fsh2232 = lshr i64 %r2230, 29
  %ftr2233 = trunc i64 %fsh2232 to i1
  %fsh2234 = lshr i64 %r2230, 30
  %ftr2235 = trunc i64 %fsh2234 to i1
  %fnz2236 = xor i1 %ftr2235, true
  %fhi2237 = and i1 %ftr2233, %fnz2236
  %cond2231 = xor i1 %fhi2237, true
  br i1 %cond2231, label %L_8001da8b4, label %L_8001da8d4_ft
L_8001da8e0:
  ; @pc 0x8001da8e0 word 0xb9400348
  %r2248.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2248 = load i64, ptr %r2248.p, align 8, !alias.scope !3, !noalias !4
  %gmp2249 = inttoptr i64 %r2248 to ptr
  %gml2250 = load i32, ptr %gmp2249, align 1, !alias.scope !4, !noalias !3
  %c2251 = zext i32 %gml2250 to i64
  %wp2252 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2251, ptr %wp2252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8e4 word 0x1207751a
  %r2253.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2253 = load i64, ptr %r2253.p, align 8, !alias.scope !3, !noalias !4
  %c2254 = trunc i64 %r2253 to i32
  %t2255 = and i32 %c2254, -25165825
  %c2256 = zext i32 %t2255 to i64
  %wp2257 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2256, ptr %wp2257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8e8 word 0x17ffffd2
  br label %L_8001da830
L_8001da8ec:
  ; @pc 0x8001da8ec word 0xf94006a8
  %r2258.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2258 = load i64, ptr %r2258.p, align 8, !alias.scope !3, !noalias !4
  %t2259 = add i64 %r2258, 8
  %gmp2260 = inttoptr i64 %t2259 to ptr
  %gml2261 = load i64, ptr %gmp2260, align 1, !alias.scope !4, !noalias !3
  %wp2262 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2261, ptr %wp2262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8f0 word 0xf9400908
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %t2264 = add i64 %r2263, 16
  %gmp2265 = inttoptr i64 %t2264 to ptr
  %gml2266 = load i64, ptr %gmp2265, align 1, !alias.scope !4, !noalias !3
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2266, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8f4 word 0xf9402908
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %t2269 = add i64 %r2268, 80
  %gmp2270 = inttoptr i64 %t2269 to ptr
  %gml2271 = load i64, ptr %gmp2270, align 1, !alias.scope !4, !noalias !3
  %wp2272 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2271, ptr %wp2272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8f8 word 0xb9401909
  %r2273.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2273 = load i64, ptr %r2273.p, align 8, !alias.scope !3, !noalias !4
  %t2274 = add i64 %r2273, 24
  %gmp2275 = inttoptr i64 %t2274 to ptr
  %gml2276 = load i32, ptr %gmp2275, align 1, !alias.scope !4, !noalias !3
  %c2277 = zext i32 %gml2276 to i64
  %wp2278 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2277, ptr %wp2278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8fc word 0x8b090108
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %r2280.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2280 = load i64, ptr %r2280.p, align 8, !alias.scope !3, !noalias !4
  %t2281 = add i64 %r2279, %r2280
  %wp2282 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2281, ptr %wp2282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da900 word 0xb9400109
  %r2283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2283 = load i64, ptr %r2283.p, align 8, !alias.scope !3, !noalias !4
  %gmp2284 = inttoptr i64 %r2283 to ptr
  %gml2285 = load i32, ptr %gmp2284, align 1, !alias.scope !4, !noalias !3
  %c2286 = zext i32 %gml2285 to i64
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2286, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da904 word 0x6b3a213f
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %c2289 = trunc i64 %r2288 to i32
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %c2291 = trunc i64 %r2290 to i16
  %c2292 = zext i16 %c2291 to i64
  %c2293 = trunc i64 %c2292 to i32
  %t2294 = sub i32 %c2289, %c2293
  %fn2295 = icmp slt i32 %t2294, 0
  %fz2296 = icmp eq i32 %t2294, 0
  %fc2297 = icmp uge i32 %c2289, %c2293
  %fx12298 = xor i32 %c2289, %c2293
  %fx22299 = xor i32 %c2289, %t2294
  %fva2300 = and i32 %fx12298, %fx22299
  %fv2301 = icmp slt i32 %fva2300, 0
  %nz2302 = zext i1 %fn2295 to i64
  %zz2303 = zext i1 %fz2296 to i64
  %cz2304 = zext i1 %fc2297 to i64
  %vz2305 = zext i1 %fv2301 to i64
  %ns2306 = shl i64 %nz2302, 31
  %zs2307 = shl i64 %zz2303, 30
  %cs2308 = shl i64 %cz2304, 29
  %vs2309 = shl i64 %vz2305, 28
  %nzor2310 = or i64 %ns2306, %zs2307
  %cvor2311 = or i64 %cs2308, %vs2309
  %nzcv2312 = or i64 %nzor2310, %cvor2311
  %wp2313 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2312, ptr %wp2313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da908 word 0x54002f0d
  %r2314.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2314 = load i64, ptr %r2314.p, align 8, !alias.scope !3, !noalias !4
  %fsh2316 = lshr i64 %r2314, 30
  %ftr2317 = trunc i64 %fsh2316 to i1
  %fsh2318 = lshr i64 %r2314, 31
  %ftr2319 = trunc i64 %fsh2318 to i1
  %fsh2320 = lshr i64 %r2314, 28
  %ftr2321 = trunc i64 %fsh2320 to i1
  %fnz2322 = xor i1 %ftr2317, true
  %feq2323 = icmp eq i1 %ftr2319, %ftr2321
  %fgt2324 = and i1 %fnz2322, %feq2323
  %cond2315 = xor i1 %fgt2324, true
  br i1 %cond2315, label %L_8001daee8, label %L_8001da90c_ft
L_8001da944:
  ; @pc 0x8001da944 word 0xb9403c09
  %r2411.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2411 = load i64, ptr %r2411.p, align 8, !alias.scope !3, !noalias !4
  %t2412 = add i64 %r2411, 60
  %gmp2413 = inttoptr i64 %t2412 to ptr
  %gml2414 = load i32, ptr %gmp2413, align 1, !alias.scope !4, !noalias !3
  %c2415 = zext i32 %gml2414 to i64
  %wp2416 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2415, ptr %wp2416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da948 word 0x0b080128
  %r2417.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2417 = load i64, ptr %r2417.p, align 8, !alias.scope !3, !noalias !4
  %c2418 = trunc i64 %r2417 to i32
  %r2419.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2419 = load i64, ptr %r2419.p, align 8, !alias.scope !3, !noalias !4
  %c2420 = trunc i64 %r2419 to i32
  %t2421 = add i32 %c2418, %c2420
  %c2422 = zext i32 %t2421 to i64
  %wp2423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2422, ptr %wp2423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da94c word 0x17fffedb
  br label %L_8001da4b8
L_8001da950:
  ; @pc 0x8001da950 word 0x2a0403f6
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %c2425 = trunc i64 %r2424 to i32
  %t2426 = or i32 0, %c2425
  %c2427 = zext i32 %t2426 to i64
  %wp2428 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2427, ptr %wp2428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da954 word 0xd63f0100
  %r2429.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2429 = load i64, ptr %r2429.p, align 8, !alias.scope !3, !noalias !4
  %fp2430 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2429, ptr %fp2430, align 8, !alias.scope !3, !noalias !4
  %wp2431 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682264, ptr %wp2431, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da958 word 0x2a1603e4
  %r2432.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2432 = load i64, ptr %r2432.p, align 8, !alias.scope !3, !noalias !4
  %c2433 = trunc i64 %r2432 to i32
  %t2434 = or i32 0, %c2433
  %c2435 = zext i32 %t2434 to i64
  %wp2436 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2435, ptr %wp2436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da95c word 0x17fffee1
  br label %L_8001da4e0
L_8001da960:
  ; @pc 0x8001da960 word 0xaa1f03e8
  %t2437 = or i64 0, 0
  %wp2438 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2437, ptr %wp2438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da964 word 0x17ffffae
  br label %L_8001da81c
L_8001da968:
  ; @pc 0x8001da968 word 0xb9403c09
  %r2439.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2439 = load i64, ptr %r2439.p, align 8, !alias.scope !3, !noalias !4
  %t2440 = add i64 %r2439, 60
  %gmp2441 = inttoptr i64 %t2440 to ptr
  %gml2442 = load i32, ptr %gmp2441, align 1, !alias.scope !4, !noalias !3
  %c2443 = zext i32 %gml2442 to i64
  %wp2444 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2443, ptr %wp2444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da96c word 0x5280018b
  %c2445 = zext i32 12 to i64
  %wp2446 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2445, ptr %wp2446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da970 word 0x1b0b7d08
  %r2447.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2447 = load i64, ptr %r2447.p, align 8, !alias.scope !3, !noalias !4
  %c2448 = trunc i64 %r2447 to i32
  %r2449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2449 = load i64, ptr %r2449.p, align 8, !alias.scope !3, !noalias !4
  %c2450 = trunc i64 %r2449 to i32
  %t2451 = mul i32 %c2450, %c2448
  %t2452 = add i32 0, %t2451
  %c2453 = zext i32 %t2452 to i64
  %wp2454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2453, ptr %wp2454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da974 word 0xb9404c0a
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %t2456 = add i64 %r2455, 76
  %gmp2457 = inttoptr i64 %t2456 to ptr
  %gml2458 = load i32, ptr %gmp2457, align 1, !alias.scope !4, !noalias !3
  %c2459 = zext i32 %gml2458 to i64
  %wp2460 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2459, ptr %wp2460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da978 word 0x0b090149
  %r2461.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2461 = load i64, ptr %r2461.p, align 8, !alias.scope !3, !noalias !4
  %c2462 = trunc i64 %r2461 to i32
  %r2463.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2463 = load i64, ptr %r2463.p, align 8, !alias.scope !3, !noalias !4
  %c2464 = trunc i64 %r2463 to i32
  %t2465 = add i32 %c2462, %c2464
  %c2466 = zext i32 %t2465 to i64
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da97c word 0xb9405c0a
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %t2469 = add i64 %r2468, 92
  %gmp2470 = inttoptr i64 %t2469 to ptr
  %gml2471 = load i32, ptr %gmp2470, align 1, !alias.scope !4, !noalias !3
  %c2472 = zext i32 %gml2471 to i64
  %wp2473 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2472, ptr %wp2473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da980 word 0x0b0a0129
  %r2474.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2474 = load i64, ptr %r2474.p, align 8, !alias.scope !3, !noalias !4
  %c2475 = trunc i64 %r2474 to i32
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %c2477 = trunc i64 %r2476 to i32
  %t2478 = add i32 %c2475, %c2477
  %c2479 = zext i32 %t2478 to i64
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2479, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da984 word 0xb9406c0a
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %t2482 = add i64 %r2481, 108
  %gmp2483 = inttoptr i64 %t2482 to ptr
  %gml2484 = load i32, ptr %gmp2483, align 1, !alias.scope !4, !noalias !3
  %c2485 = zext i32 %gml2484 to i64
  %wp2486 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2485, ptr %wp2486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da988 word 0x0b0a0d08
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %c2488 = trunc i64 %r2487 to i32
  %r2489.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2489 = load i64, ptr %r2489.p, align 8, !alias.scope !3, !noalias !4
  %c2490 = trunc i64 %r2489 to i32
  %t2491 = shl i32 %c2490, 3
  %t2492 = add i32 %c2488, %t2491
  %c2493 = zext i32 %t2492 to i64
  %wp2494 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2493, ptr %wp2494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da98c word 0x0b090914
  %r2495.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2495 = load i64, ptr %r2495.p, align 8, !alias.scope !3, !noalias !4
  %c2496 = trunc i64 %r2495 to i32
  %r2497.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2497 = load i64, ptr %r2497.p, align 8, !alias.scope !3, !noalias !4
  %c2498 = trunc i64 %r2497 to i32
  %t2499 = shl i32 %c2498, 2
  %t2500 = add i32 %c2496, %t2499
  %c2501 = zext i32 %t2500 to i64
  %wp2502 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2501, ptr %wp2502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da990 word 0x17fffecb
  br label %L_8001da4bc
L_8001da994:
  ; @pc 0x8001da994 word 0x9001c720
  %wp2503 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp2503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da998 word 0x91146000
  %r2504.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2504 = load i64, ptr %r2504.p, align 8, !alias.scope !3, !noalias !4
  %t2505 = add i64 %r2504, 1304
  %wp2506 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2505, ptr %wp2506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da99c word 0x2a0403f6
  %r2507.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2507 = load i64, ptr %r2507.p, align 8, !alias.scope !3, !noalias !4
  %c2508 = trunc i64 %r2507 to i32
  %t2509 = or i32 0, %c2508
  %c2510 = zext i32 %t2509 to i64
  %wp2511 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2510, ptr %wp2511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9a0 word 0xaa0303fc
  %r2512.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2512 = load i64, ptr %r2512.p, align 8, !alias.scope !3, !noalias !4
  %t2513 = or i64 0, %r2512
  %wp2514 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2513, ptr %wp2514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9a4 word 0x94a723ff
  %wp2515 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682344, ptr %wp2515, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001da9a8 word 0xaa1c03e3
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %t2517 = or i64 0, %r2516
  %wp2518 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2517, ptr %wp2518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9ac word 0x2a1603e4
  %r2519.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2519 = load i64, ptr %r2519.p, align 8, !alias.scope !3, !noalias !4
  %c2520 = trunc i64 %r2519 to i32
  %t2521 = or i32 0, %c2520
  %c2522 = zext i32 %t2521 to i64
  %wp2523 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2522, ptr %wp2523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9b0 word 0x34ffd4e0
  %r2524.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2524 = load i64, ptr %r2524.p, align 8, !alias.scope !3, !noalias !4
  %c2525 = trunc i64 %r2524 to i32
  %cmp2526 = icmp eq i32 %c2525, 0
  br i1 %cmp2526, label %L_8001da44c, label %L_8001da9b4_ft
L_8001da9d4:
  ; @pc 0x8001da9d4 word 0xb9403c09
  %r2544.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2544 = load i64, ptr %r2544.p, align 8, !alias.scope !3, !noalias !4
  %t2545 = add i64 %r2544, 60
  %gmp2546 = inttoptr i64 %t2545 to ptr
  %gml2547 = load i32, ptr %gmp2546, align 1, !alias.scope !4, !noalias !3
  %c2548 = zext i32 %gml2547 to i64
  %wp2549 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2548, ptr %wp2549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9d8 word 0x0b080128
  %r2550.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2550 = load i64, ptr %r2550.p, align 8, !alias.scope !3, !noalias !4
  %c2551 = trunc i64 %r2550 to i32
  %r2552.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2552 = load i64, ptr %r2552.p, align 8, !alias.scope !3, !noalias !4
  %c2553 = trunc i64 %r2552 to i32
  %t2554 = add i32 %c2551, %c2553
  %c2555 = zext i32 %t2554 to i64
  %wp2556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2555, ptr %wp2556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9dc word 0xb9404c0a
  %r2557.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2557 = load i64, ptr %r2557.p, align 8, !alias.scope !3, !noalias !4
  %t2558 = add i64 %r2557, 76
  %gmp2559 = inttoptr i64 %t2558 to ptr
  %gml2560 = load i32, ptr %gmp2559, align 1, !alias.scope !4, !noalias !3
  %c2561 = zext i32 %gml2560 to i64
  %wp2562 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2561, ptr %wp2562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9e0 word 0x0b0a0108
  %r2563.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2563 = load i64, ptr %r2563.p, align 8, !alias.scope !3, !noalias !4
  %c2564 = trunc i64 %r2563 to i32
  %r2565.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2565 = load i64, ptr %r2565.p, align 8, !alias.scope !3, !noalias !4
  %c2566 = trunc i64 %r2565 to i32
  %t2567 = add i32 %c2564, %c2566
  %c2568 = zext i32 %t2567 to i64
  %wp2569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2568, ptr %wp2569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9e4 word 0x17fffeb5
  br label %L_8001da4b8
L_8001da9e8:
  ; @pc 0x8001da9e8 word 0xb001bc20
  %wp2570 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9ec word 0xaa0303f9
  %r2571.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2571 = load i64, ptr %r2571.p, align 8, !alias.scope !3, !noalias !4
  %t2572 = or i64 0, %r2571
  %wp2573 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2572, ptr %wp2573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9f0 word 0xf9453400
  %r2574.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2574 = load i64, ptr %r2574.p, align 8, !alias.scope !3, !noalias !4
  %t2575 = add i64 %r2574, 2664
  %gmp2576 = inttoptr i64 %t2575 to ptr
  %gml2577 = load i64, ptr %gmp2576, align 1, !alias.scope !4, !noalias !3
  %wp2578 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2577, ptr %wp2578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9f4 word 0xb90007e4
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %t2580 = add i64 %r2579, 4
  %r2581.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2581 = load i64, ptr %r2581.p, align 8, !alias.scope !3, !noalias !4
  %c2582 = trunc i64 %r2581 to i32
  %gmp2583 = inttoptr i64 %t2580 to ptr
  store i32 %c2582, ptr %gmp2583, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da9f8 word 0x2a0503fb
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %c2585 = trunc i64 %r2584 to i32
  %t2586 = or i32 0, %c2585
  %c2587 = zext i32 %t2586 to i64
  %wp2588 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2587, ptr %wp2588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9fc word 0x94a723e9
  %wp2589 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682432, ptr %wp2589, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001daa00 word 0xb94017ea
  %r2590.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2590 = load i64, ptr %r2590.p, align 8, !alias.scope !3, !noalias !4
  %t2591 = add i64 %r2590, 20
  %gmp2592 = inttoptr i64 %t2591 to ptr
  %gml2593 = load i32, ptr %gmp2592, align 1, !alias.scope !4, !noalias !3
  %c2594 = zext i32 %gml2593 to i64
  %wp2595 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2594, ptr %wp2595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa04 word 0x2a1b03e5
  %r2596.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2596 = load i64, ptr %r2596.p, align 8, !alias.scope !3, !noalias !4
  %c2597 = trunc i64 %r2596 to i32
  %t2598 = or i32 0, %c2597
  %c2599 = zext i32 %t2598 to i64
  %wp2600 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2599, ptr %wp2600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa08 word 0xaa1903e3
  %r2601.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2601 = load i64, ptr %r2601.p, align 8, !alias.scope !3, !noalias !4
  %t2602 = or i64 0, %r2601
  %wp2603 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2602, ptr %wp2603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa0c word 0xb94007e4
  %r2604.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2604 = load i64, ptr %r2604.p, align 8, !alias.scope !3, !noalias !4
  %t2605 = add i64 %r2604, 4
  %gmp2606 = inttoptr i64 %t2605 to ptr
  %gml2607 = load i32, ptr %gmp2606, align 1, !alias.scope !4, !noalias !3
  %c2608 = zext i32 %gml2607 to i64
  %wp2609 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2608, ptr %wp2609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa10 word 0x34ffdca0
  %r2610.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2610 = load i64, ptr %r2610.p, align 8, !alias.scope !3, !noalias !4
  %c2611 = trunc i64 %r2610 to i32
  %cmp2612 = icmp eq i32 %c2611, 0
  br i1 %cmp2612, label %L_8001da5a4, label %L_8001daa14_ft
L_8001daa4c:
  ; @pc 0x8001daa4c word 0xb001bc20
  %wp2658 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa50 word 0xaa0303f9
  %r2659.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2659 = load i64, ptr %r2659.p, align 8, !alias.scope !3, !noalias !4
  %t2660 = or i64 0, %r2659
  %wp2661 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2660, ptr %wp2661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa54 word 0xf9453c00
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %t2663 = add i64 %r2662, 2680
  %gmp2664 = inttoptr i64 %t2663 to ptr
  %gml2665 = load i64, ptr %gmp2664, align 1, !alias.scope !4, !noalias !3
  %wp2666 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2665, ptr %wp2666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa58 word 0xb90007e4
  %r2667.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2667 = load i64, ptr %r2667.p, align 8, !alias.scope !3, !noalias !4
  %t2668 = add i64 %r2667, 4
  %r2669.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2669 = load i64, ptr %r2669.p, align 8, !alias.scope !3, !noalias !4
  %c2670 = trunc i64 %r2669 to i32
  %gmp2671 = inttoptr i64 %t2668 to ptr
  store i32 %c2670, ptr %gmp2671, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daa5c word 0x2a0503fb
  %r2672.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2672 = load i64, ptr %r2672.p, align 8, !alias.scope !3, !noalias !4
  %c2673 = trunc i64 %r2672 to i32
  %t2674 = or i32 0, %c2673
  %c2675 = zext i32 %t2674 to i64
  %wp2676 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2675, ptr %wp2676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa60 word 0x94a723d0
  %wp2677 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682532, ptr %wp2677, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001daa64 word 0xb94017ea
  %r2678.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2678 = load i64, ptr %r2678.p, align 8, !alias.scope !3, !noalias !4
  %t2679 = add i64 %r2678, 20
  %gmp2680 = inttoptr i64 %t2679 to ptr
  %gml2681 = load i32, ptr %gmp2680, align 1, !alias.scope !4, !noalias !3
  %c2682 = zext i32 %gml2681 to i64
  %wp2683 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2682, ptr %wp2683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa68 word 0x2a1b03e5
  %r2684.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2684 = load i64, ptr %r2684.p, align 8, !alias.scope !3, !noalias !4
  %c2685 = trunc i64 %r2684 to i32
  %t2686 = or i32 0, %c2685
  %c2687 = zext i32 %t2686 to i64
  %wp2688 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2687, ptr %wp2688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa6c word 0xaa1903e3
  %r2689.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2689 = load i64, ptr %r2689.p, align 8, !alias.scope !3, !noalias !4
  %t2690 = or i64 0, %r2689
  %wp2691 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2690, ptr %wp2691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa70 word 0xb94007e4
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %t2693 = add i64 %r2692, 4
  %gmp2694 = inttoptr i64 %t2693 to ptr
  %gml2695 = load i32, ptr %gmp2694, align 1, !alias.scope !4, !noalias !3
  %c2696 = zext i32 %gml2695 to i64
  %wp2697 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2696, ptr %wp2697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa74 word 0x34ffdc80
  %r2698.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2698 = load i64, ptr %r2698.p, align 8, !alias.scope !3, !noalias !4
  %c2699 = trunc i64 %r2698 to i32
  %cmp2700 = icmp eq i32 %c2699, 0
  br i1 %cmp2700, label %L_8001da604, label %L_8001daa78_ft
L_8001daab0:
  ; @pc 0x8001daab0 word 0xaa1503e0
  %r2746.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2746 = load i64, ptr %r2746.p, align 8, !alias.scope !3, !noalias !4
  %t2747 = or i64 0, %r2746
  %wp2748 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2747, ptr %wp2748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daab4 word 0x2a0403f6
  %r2749.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2749 = load i64, ptr %r2749.p, align 8, !alias.scope !3, !noalias !4
  %c2750 = trunc i64 %r2749 to i32
  %t2751 = or i32 0, %c2750
  %c2752 = zext i32 %t2751 to i64
  %wp2753 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2752, ptr %wp2753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daab8 word 0xaa0303f9
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %t2755 = or i64 0, %r2754
  %wp2756 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2755, ptr %wp2756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daabc word 0xd63f0100
  %r2757.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2757 = load i64, ptr %r2757.p, align 8, !alias.scope !3, !noalias !4
  %fp2758 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2757, ptr %fp2758, align 8, !alias.scope !3, !noalias !4
  %wp2759 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682624, ptr %wp2759, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001daac0 word 0xf9400a88
  %r2760.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2760 = load i64, ptr %r2760.p, align 8, !alias.scope !3, !noalias !4
  %t2761 = add i64 %r2760, 16
  %gmp2762 = inttoptr i64 %t2761 to ptr
  %gml2763 = load i64, ptr %gmp2762, align 1, !alias.scope !4, !noalias !3
  %wp2764 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2763, ptr %wp2764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daac4 word 0xaa1903e3
  %r2765.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2765 = load i64, ptr %r2765.p, align 8, !alias.scope !3, !noalias !4
  %t2766 = or i64 0, %r2765
  %wp2767 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2766, ptr %wp2767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daac8 word 0x2a1603e4
  %r2768.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2768 = load i64, ptr %r2768.p, align 8, !alias.scope !3, !noalias !4
  %c2769 = trunc i64 %r2768 to i32
  %t2770 = or i32 0, %c2769
  %c2771 = zext i32 %t2770 to i64
  %wp2772 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2771, ptr %wp2772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daacc word 0x17fffe07
  br label %L_8001da2e8
L_8001daad0:
  ; @pc 0x8001daad0 word 0x910063e8
  %r2773.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2773 = load i64, ptr %r2773.p, align 8, !alias.scope !3, !noalias !4
  %t2774 = add i64 %r2773, 24
  %wp2775 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2774, ptr %wp2775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daad4 word 0x39048fff
  %r2776.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2776 = load i64, ptr %r2776.p, align 8, !alias.scope !3, !noalias !4
  %t2777 = add i64 %r2776, 291
  %c2778 = trunc i32 0 to i8
  %gmp2779 = inttoptr i64 %t2777 to ptr
  store i8 %c2778, ptr %gmp2779, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daad8 word 0xd0015381
  %wp2780 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daadc word 0x91270c21
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %t2782 = add i64 %r2781, 2499
  %wp2783 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2782, ptr %wp2783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daae0 word 0x91003108
  %r2784.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2784 = load i64, ptr %r2784.p, align 8, !alias.scope !3, !noalias !4
  %t2785 = add i64 %r2784, 12
  %wp2786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2785, ptr %wp2786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daae4 word 0x390093ff
  %r2787.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2787 = load i64, ptr %r2787.p, align 8, !alias.scope !3, !noalias !4
  %t2788 = add i64 %r2787, 36
  %c2789 = trunc i32 0 to i8
  %gmp2790 = inttoptr i64 %t2788 to ptr
  store i8 %c2789, ptr %gmp2790, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daae8 word 0xf9000fe8
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %t2792 = add i64 %r2791, 24
  %r2793.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2793 = load i64, ptr %r2793.p, align 8, !alias.scope !3, !noalias !4
  %gmp2794 = inttoptr i64 %t2792 to ptr
  store i64 %r2793, ptr %gmp2794, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daaec word 0x52802008
  %c2795 = zext i32 256 to i64
  %wp2796 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2795, ptr %wp2796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daaf0 word 0x910063e0
  %r2797.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2797 = load i64, ptr %r2797.p, align 8, !alias.scope !3, !noalias !4
  %t2798 = add i64 %r2797, 24
  %wp2799 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2798, ptr %wp2799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daaf4 word 0xb90023e8
  %r2800.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2800 = load i64, ptr %r2800.p, align 8, !alias.scope !3, !noalias !4
  %t2801 = add i64 %r2800, 32
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %c2803 = trunc i64 %r2802 to i32
  %gmp2804 = inttoptr i64 %t2801 to ptr
  store i32 %c2803, ptr %gmp2804, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daaf8 word 0xf94006a8
  %r2805.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2805 = load i64, ptr %r2805.p, align 8, !alias.scope !3, !noalias !4
  %t2806 = add i64 %r2805, 8
  %gmp2807 = inttoptr i64 %t2806 to ptr
  %gml2808 = load i64, ptr %gmp2807, align 1, !alias.scope !4, !noalias !3
  %wp2809 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2808, ptr %wp2809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daafc word 0x2a0403f4
  %r2810.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2810 = load i64, ptr %r2810.p, align 8, !alias.scope !3, !noalias !4
  %c2811 = trunc i64 %r2810 to i32
  %t2812 = or i32 0, %c2811
  %c2813 = zext i32 %t2812 to i64
  %wp2814 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2813, ptr %wp2814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab00 word 0xaa1503f6
  %r2815.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2815 = load i64, ptr %r2815.p, align 8, !alias.scope !3, !noalias !4
  %t2816 = or i64 0, %r2815
  %wp2817 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2816, ptr %wp2817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab04 word 0xf9400908
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %t2819 = add i64 %r2818, 16
  %gmp2820 = inttoptr i64 %t2819 to ptr
  %gml2821 = load i64, ptr %gmp2820, align 1, !alias.scope !4, !noalias !3
  %wp2822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2821, ptr %wp2822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab08 word 0xf9400908
  %r2823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2823 = load i64, ptr %r2823.p, align 8, !alias.scope !3, !noalias !4
  %t2824 = add i64 %r2823, 16
  %gmp2825 = inttoptr i64 %t2824 to ptr
  %gml2826 = load i64, ptr %gmp2825, align 1, !alias.scope !4, !noalias !3
  %wp2827 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2826, ptr %wp2827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab0c word 0xb980250a
  %r2828.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2828 = load i64, ptr %r2828.p, align 8, !alias.scope !3, !noalias !4
  %t2829 = add i64 %r2828, 36
  %gmp2830 = inttoptr i64 %t2829 to ptr
  %gml2831 = load i32, ptr %gmp2830, align 1, !alias.scope !4, !noalias !3
  %c2832 = sext i32 %gml2831 to i64
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab10 word 0xb9800909
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %t2835 = add i64 %r2834, 8
  %gmp2836 = inttoptr i64 %t2835 to ptr
  %gml2837 = load i32, ptr %gmp2836, align 1, !alias.scope !4, !noalias !3
  %c2838 = sext i32 %gml2837 to i64
  %wp2839 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2838, ptr %wp2839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab14 word 0x8b0a0108
  %r2840.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2840 = load i64, ptr %r2840.p, align 8, !alias.scope !3, !noalias !4
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %t2842 = add i64 %r2840, %r2841
  %wp2843 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2842, ptr %wp2843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab18 word 0x8b090102
  %r2844.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2844 = load i64, ptr %r2844.p, align 8, !alias.scope !3, !noalias !4
  %r2845.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2845 = load i64, ptr %r2845.p, align 8, !alias.scope !3, !noalias !4
  %t2846 = add i64 %r2844, %r2845
  %wp2847 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2846, ptr %wp2847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab1c word 0x97fafb51
  %wp2848 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682720, ptr %wp2848, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001dab20 word 0x9001c728
  %wp2849 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp2849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab24 word 0x91144108
  %r2850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2850 = load i64, ptr %r2850.p, align 8, !alias.scope !3, !noalias !4
  %t2851 = add i64 %r2850, 1296
  %wp2852 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2851, ptr %wp2852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab28 word 0xf9000268
  %r2853.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2853 = load i64, ptr %r2853.p, align 8, !alias.scope !3, !noalias !4
  %r2854.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2854 = load i64, ptr %r2854.p, align 8, !alias.scope !3, !noalias !4
  %gmp2855 = inttoptr i64 %r2853 to ptr
  store i64 %r2854, ptr %gmp2855, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dab2c word 0x52800037
  %c2856 = zext i32 1 to i64
  %wp2857 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2856, ptr %wp2857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab30 word 0x3607ce39
  %r2858.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2858 = load i64, ptr %r2858.p, align 8, !alias.scope !3, !noalias !4
  %t2859 = and i64 %r2858, 1
  %cmp2860 = icmp eq i64 %t2859, 0
  br i1 %cmp2860, label %L_8001da4f4, label %L_8001dab34_ft
L_8001dab44:
  ; @pc 0x8001dab44 word 0x39048fff
  %r2872.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2872 = load i64, ptr %r2872.p, align 8, !alias.scope !3, !noalias !4
  %t2873 = add i64 %r2872, 291
  %c2874 = trunc i32 0 to i8
  %gmp2875 = inttoptr i64 %t2873 to ptr
  store i8 %c2874, ptr %gmp2875, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dab48 word 0x910063e9
  %r2876.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2876 = load i64, ptr %r2876.p, align 8, !alias.scope !3, !noalias !4
  %t2877 = add i64 %r2876, 24
  %wp2878 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2877, ptr %wp2878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab4c word 0xd0015381
  %wp2879 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab50 word 0x91270c21
  %r2880.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2880 = load i64, ptr %r2880.p, align 8, !alias.scope !3, !noalias !4
  %t2881 = add i64 %r2880, 2499
  %wp2882 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2881, ptr %wp2882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab54 word 0xf9400908
  %r2883.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2883 = load i64, ptr %r2883.p, align 8, !alias.scope !3, !noalias !4
  %t2884 = add i64 %r2883, 16
  %gmp2885 = inttoptr i64 %t2884 to ptr
  %gml2886 = load i64, ptr %gmp2885, align 1, !alias.scope !4, !noalias !3
  %wp2887 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2886, ptr %wp2887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab58 word 0x91003129
  %r2888.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2888 = load i64, ptr %r2888.p, align 8, !alias.scope !3, !noalias !4
  %t2889 = add i64 %r2888, 12
  %wp2890 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2889, ptr %wp2890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab5c word 0xf9000fe9
  %r2891.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2891 = load i64, ptr %r2891.p, align 8, !alias.scope !3, !noalias !4
  %t2892 = add i64 %r2891, 24
  %r2893.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2893 = load i64, ptr %r2893.p, align 8, !alias.scope !3, !noalias !4
  %gmp2894 = inttoptr i64 %t2892 to ptr
  store i64 %r2893, ptr %gmp2894, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dab60 word 0x52802009
  %c2895 = zext i32 256 to i64
  %wp2896 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2895, ptr %wp2896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab64 word 0x390093ff
  %r2897.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2897 = load i64, ptr %r2897.p, align 8, !alias.scope !3, !noalias !4
  %t2898 = add i64 %r2897, 36
  %c2899 = trunc i32 0 to i8
  %gmp2900 = inttoptr i64 %t2898 to ptr
  store i8 %c2899, ptr %gmp2900, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dab68 word 0xb90023e9
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %t2902 = add i64 %r2901, 32
  %r2903.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2903 = load i64, ptr %r2903.p, align 8, !alias.scope !3, !noalias !4
  %c2904 = trunc i64 %r2903 to i32
  %gmp2905 = inttoptr i64 %t2902 to ptr
  store i32 %c2904, ptr %gmp2905, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dab6c word 0x910063e0
  %r2906.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2906 = load i64, ptr %r2906.p, align 8, !alias.scope !3, !noalias !4
  %t2907 = add i64 %r2906, 24
  %wp2908 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2907, ptr %wp2908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab70 word 0x2a0403f4
  %r2909.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2909 = load i64, ptr %r2909.p, align 8, !alias.scope !3, !noalias !4
  %c2910 = trunc i64 %r2909 to i32
  %t2911 = or i32 0, %c2910
  %c2912 = zext i32 %t2911 to i64
  %wp2913 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2912, ptr %wp2913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab74 word 0xf9400908
  %r2914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2914 = load i64, ptr %r2914.p, align 8, !alias.scope !3, !noalias !4
  %t2915 = add i64 %r2914, 16
  %gmp2916 = inttoptr i64 %t2915 to ptr
  %gml2917 = load i64, ptr %gmp2916, align 1, !alias.scope !4, !noalias !3
  %wp2918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2917, ptr %wp2918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab78 word 0xb980250a
  %r2919.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2919 = load i64, ptr %r2919.p, align 8, !alias.scope !3, !noalias !4
  %t2920 = add i64 %r2919, 36
  %gmp2921 = inttoptr i64 %t2920 to ptr
  %gml2922 = load i32, ptr %gmp2921, align 1, !alias.scope !4, !noalias !3
  %c2923 = sext i32 %gml2922 to i64
  %wp2924 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2923, ptr %wp2924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab7c word 0xb9800909
  %r2925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2925 = load i64, ptr %r2925.p, align 8, !alias.scope !3, !noalias !4
  %t2926 = add i64 %r2925, 8
  %gmp2927 = inttoptr i64 %t2926 to ptr
  %gml2928 = load i32, ptr %gmp2927, align 1, !alias.scope !4, !noalias !3
  %c2929 = sext i32 %gml2928 to i64
  %wp2930 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2929, ptr %wp2930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab80 word 0x8b0a0108
  %r2931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2931 = load i64, ptr %r2931.p, align 8, !alias.scope !3, !noalias !4
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %t2933 = add i64 %r2931, %r2932
  %wp2934 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2933, ptr %wp2934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab84 word 0x8b090102
  %r2935.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2935 = load i64, ptr %r2935.p, align 8, !alias.scope !3, !noalias !4
  %r2936.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2936 = load i64, ptr %r2936.p, align 8, !alias.scope !3, !noalias !4
  %t2937 = add i64 %r2935, %r2936
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab88 word 0x97fafb36
  %wp2939 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682828, ptr %wp2939, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001dab8c word 0xf94006a8
  %r2940.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2940 = load i64, ptr %r2940.p, align 8, !alias.scope !3, !noalias !4
  %t2941 = add i64 %r2940, 8
  %gmp2942 = inttoptr i64 %t2941 to ptr
  %gml2943 = load i64, ptr %gmp2942, align 1, !alias.scope !4, !noalias !3
  %wp2944 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2943, ptr %wp2944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab90 word 0x2a1403e4
  %r2945.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2945 = load i64, ptr %r2945.p, align 8, !alias.scope !3, !noalias !4
  %c2946 = trunc i64 %r2945 to i32
  %t2947 = or i32 0, %c2946
  %c2948 = zext i32 %t2947 to i64
  %wp2949 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2948, ptr %wp2949, align 8, !alias.scope !3, !noalias !4
  br label %L_8001dab94
L_8001dab94:
  ; @pc 0x8001dab94 word 0x39048fff
  %r2950.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2950 = load i64, ptr %r2950.p, align 8, !alias.scope !3, !noalias !4
  %t2951 = add i64 %r2950, 291
  %c2952 = trunc i32 0 to i8
  %gmp2953 = inttoptr i64 %t2951 to ptr
  store i8 %c2952, ptr %gmp2953, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dab98 word 0x910063e9
  %r2954.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2954 = load i64, ptr %r2954.p, align 8, !alias.scope !3, !noalias !4
  %t2955 = add i64 %r2954, 24
  %wp2956 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2955, ptr %wp2956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab9c word 0xd0015381
  %wp2957 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daba0 word 0x91270c21
  %r2958.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2958 = load i64, ptr %r2958.p, align 8, !alias.scope !3, !noalias !4
  %t2959 = add i64 %r2958, 2499
  %wp2960 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2959, ptr %wp2960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daba4 word 0xf9400908
  %r2961.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2961 = load i64, ptr %r2961.p, align 8, !alias.scope !3, !noalias !4
  %t2962 = add i64 %r2961, 16
  %gmp2963 = inttoptr i64 %t2962 to ptr
  %gml2964 = load i64, ptr %gmp2963, align 1, !alias.scope !4, !noalias !3
  %wp2965 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2964, ptr %wp2965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daba8 word 0x91003129
  %r2966.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2966 = load i64, ptr %r2966.p, align 8, !alias.scope !3, !noalias !4
  %t2967 = add i64 %r2966, 12
  %wp2968 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2967, ptr %wp2968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabac word 0xf9000fe9
  %r2969.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2969 = load i64, ptr %r2969.p, align 8, !alias.scope !3, !noalias !4
  %t2970 = add i64 %r2969, 24
  %r2971.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2971 = load i64, ptr %r2971.p, align 8, !alias.scope !3, !noalias !4
  %gmp2972 = inttoptr i64 %t2970 to ptr
  store i64 %r2971, ptr %gmp2972, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dabb0 word 0x52802009
  %c2973 = zext i32 256 to i64
  %wp2974 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2973, ptr %wp2974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabb4 word 0x390093ff
  %r2975.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2975 = load i64, ptr %r2975.p, align 8, !alias.scope !3, !noalias !4
  %t2976 = add i64 %r2975, 36
  %c2977 = trunc i32 0 to i8
  %gmp2978 = inttoptr i64 %t2976 to ptr
  store i8 %c2977, ptr %gmp2978, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dabb8 word 0xb90023e9
  %r2979.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2979 = load i64, ptr %r2979.p, align 8, !alias.scope !3, !noalias !4
  %t2980 = add i64 %r2979, 32
  %r2981.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2981 = load i64, ptr %r2981.p, align 8, !alias.scope !3, !noalias !4
  %c2982 = trunc i64 %r2981 to i32
  %gmp2983 = inttoptr i64 %t2980 to ptr
  store i32 %c2982, ptr %gmp2983, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dabbc word 0x910063e0
  %r2984.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2984 = load i64, ptr %r2984.p, align 8, !alias.scope !3, !noalias !4
  %t2985 = add i64 %r2984, 24
  %wp2986 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2985, ptr %wp2986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabc0 word 0x2a0403f4
  %r2987.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2987 = load i64, ptr %r2987.p, align 8, !alias.scope !3, !noalias !4
  %c2988 = trunc i64 %r2987 to i32
  %t2989 = or i32 0, %c2988
  %c2990 = zext i32 %t2989 to i64
  %wp2991 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2990, ptr %wp2991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabc4 word 0xf9400908
  %r2992.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2992 = load i64, ptr %r2992.p, align 8, !alias.scope !3, !noalias !4
  %t2993 = add i64 %r2992, 16
  %gmp2994 = inttoptr i64 %t2993 to ptr
  %gml2995 = load i64, ptr %gmp2994, align 1, !alias.scope !4, !noalias !3
  %wp2996 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2995, ptr %wp2996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabc8 word 0xb980250a
  %r2997.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2997 = load i64, ptr %r2997.p, align 8, !alias.scope !3, !noalias !4
  %t2998 = add i64 %r2997, 36
  %gmp2999 = inttoptr i64 %t2998 to ptr
  %gml3000 = load i32, ptr %gmp2999, align 1, !alias.scope !4, !noalias !3
  %c3001 = sext i32 %gml3000 to i64
  %wp3002 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3001, ptr %wp3002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabcc word 0xb9800909
  %r3003.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3003 = load i64, ptr %r3003.p, align 8, !alias.scope !3, !noalias !4
  %t3004 = add i64 %r3003, 8
  %gmp3005 = inttoptr i64 %t3004 to ptr
  %gml3006 = load i32, ptr %gmp3005, align 1, !alias.scope !4, !noalias !3
  %c3007 = sext i32 %gml3006 to i64
  %wp3008 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3007, ptr %wp3008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabd0 word 0x8b0a0108
  %r3009.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3009 = load i64, ptr %r3009.p, align 8, !alias.scope !3, !noalias !4
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %t3011 = add i64 %r3009, %r3010
  %wp3012 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3011, ptr %wp3012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabd4 word 0x8b090102
  %r3013.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3013 = load i64, ptr %r3013.p, align 8, !alias.scope !3, !noalias !4
  %r3014.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3014 = load i64, ptr %r3014.p, align 8, !alias.scope !3, !noalias !4
  %t3015 = add i64 %r3013, %r3014
  %wp3016 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3015, ptr %wp3016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabd8 word 0x97fafb22
  %wp3017 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682908, ptr %wp3017, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001dabdc word 0x9001c728
  %wp3018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp3018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabe0 word 0x91144108
  %r3019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3019 = load i64, ptr %r3019.p, align 8, !alias.scope !3, !noalias !4
  %t3020 = add i64 %r3019, 1296
  %wp3021 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3020, ptr %wp3021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabe4 word 0xf9000268
  %r3022.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3022 = load i64, ptr %r3022.p, align 8, !alias.scope !3, !noalias !4
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %gmp3024 = inttoptr i64 %r3022 to ptr
  store i64 %r3023, ptr %gmp3024, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dabe8 word 0x52800037
  %c3025 = zext i32 1 to i64
  %wp3026 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3025, ptr %wp3026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabec word 0x3607c859
  %r3027.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3027 = load i64, ptr %r3027.p, align 8, !alias.scope !3, !noalias !4
  %t3028 = and i64 %r3027, 1
  %cmp3029 = icmp eq i64 %t3028, 0
  br i1 %cmp3029, label %L_8001da4f4, label %L_8001dabf0_ft
L_8001dabfc:
  ; @pc 0x8001dabfc word 0xaa1703e0
  %r3038.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3038 = load i64, ptr %r3038.p, align 8, !alias.scope !3, !noalias !4
  %t3039 = or i64 0, %r3038
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3039, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac00 word 0x2a0403f6
  %r3041.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3041 = load i64, ptr %r3041.p, align 8, !alias.scope !3, !noalias !4
  %c3042 = trunc i64 %r3041 to i32
  %t3043 = or i32 0, %c3042
  %c3044 = zext i32 %t3043 to i64
  %wp3045 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3044, ptr %wp3045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac04 word 0xd63f0100
  %r3046.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3046 = load i64, ptr %r3046.p, align 8, !alias.scope !3, !noalias !4
  %fp3047 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3046, ptr %fp3047, align 8, !alias.scope !3, !noalias !4
  %wp3048 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682952, ptr %wp3048, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001dac08 word 0x2a1603e4
  %r3049.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3049 = load i64, ptr %r3049.p, align 8, !alias.scope !3, !noalias !4
  %c3050 = trunc i64 %r3049 to i32
  %t3051 = or i32 0, %c3050
  %c3052 = zext i32 %t3051 to i64
  %wp3053 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3052, ptr %wp3053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac0c word 0x17fffe26
  br label %L_8001da4a4
L_8001dac10:
  ; @pc 0x8001dac10 word 0xf9409108
  %r3054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3054 = load i64, ptr %r3054.p, align 8, !alias.scope !3, !noalias !4
  %t3055 = add i64 %r3054, 288
  %gmp3056 = inttoptr i64 %t3055 to ptr
  %gml3057 = load i64, ptr %gmp3056, align 1, !alias.scope !4, !noalias !3
  %wp3058 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3057, ptr %wp3058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac14 word 0xd63f0100
  %r3059.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3059 = load i64, ptr %r3059.p, align 8, !alias.scope !3, !noalias !4
  %fp3060 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3059, ptr %fp3060, align 8, !alias.scope !3, !noalias !4
  %wp3061 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682968, ptr %wp3061, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001dac18 word 0xaa0003e8
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %t3063 = or i64 0, %r3062
  %wp3064 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3063, ptr %wp3064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac1c word 0x7100069f
  %r3065.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3065 = load i64, ptr %r3065.p, align 8, !alias.scope !3, !noalias !4
  %c3066 = trunc i64 %r3065 to i32
  %t3067 = sub i32 %c3066, 1
  %fn3068 = icmp slt i32 %t3067, 0
  %fz3069 = icmp eq i32 %t3067, 0
  %fc3070 = icmp uge i32 %c3066, 1
  %fx13071 = xor i32 %c3066, 1
  %fx23072 = xor i32 %c3066, %t3067
  %fva3073 = and i32 %fx13071, %fx23072
  %fv3074 = icmp slt i32 %fva3073, 0
  %nz3075 = zext i1 %fn3068 to i64
  %zz3076 = zext i1 %fz3069 to i64
  %cz3077 = zext i1 %fc3070 to i64
  %vz3078 = zext i1 %fv3074 to i64
  %ns3079 = shl i64 %nz3075, 31
  %zs3080 = shl i64 %zz3076, 30
  %cs3081 = shl i64 %cz3077, 29
  %vs3082 = shl i64 %vz3078, 28
  %nzor3083 = or i64 %ns3079, %zs3080
  %cvor3084 = or i64 %cs3081, %vs3082
  %nzcv3085 = or i64 %nzor3083, %cvor3084
  %wp3086 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3085, ptr %wp3086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac20 word 0x54ffe4a0
  %r3087.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3087 = load i64, ptr %r3087.p, align 8, !alias.scope !3, !noalias !4
  %fsh3089 = lshr i64 %r3087, 30
  %cond3088 = trunc i64 %fsh3089 to i1
  br i1 %cond3088, label %L_8001da8b4, label %L_8001dac24_ft
L_8001dac38:
  ; @pc 0x8001dac38 word 0x92401d6a
  %r3122.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3122 = load i64, ptr %r3122.p, align 8, !alias.scope !3, !noalias !4
  %t3123 = and i64 %r3122, 255
  %wp3124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3123, ptr %wp3124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac3c word 0x9103400b
  %r3125.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3125 = load i64, ptr %r3125.p, align 8, !alias.scope !3, !noalias !4
  %t3126 = add i64 %r3125, 208
  %wp3127 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3126, ptr %wp3127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac40 word 0x8b091108
  %r3128.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3128 = load i64, ptr %r3128.p, align 8, !alias.scope !3, !noalias !4
  %r3129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3129 = load i64, ptr %r3129.p, align 8, !alias.scope !3, !noalias !4
  %t3130 = shl i64 %r3129, 4
  %t3131 = add i64 %r3128, %t3130
  %wp3132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3131, ptr %wp3132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac44 word 0x8b0a0d6c
  %r3133.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3133 = load i64, ptr %r3133.p, align 8, !alias.scope !3, !noalias !4
  %r3134.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3134 = load i64, ptr %r3134.p, align 8, !alias.scope !3, !noalias !4
  %t3135 = shl i64 %r3134, 3
  %t3136 = add i64 %r3133, %t3135
  %wp3137 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3136, ptr %wp3137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac48 word 0x7100115f
  %r3138.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3138 = load i64, ptr %r3138.p, align 8, !alias.scope !3, !noalias !4
  %c3139 = trunc i64 %r3138 to i32
  %t3140 = sub i32 %c3139, 4
  %fn3141 = icmp slt i32 %t3140, 0
  %fz3142 = icmp eq i32 %t3140, 0
  %fc3143 = icmp uge i32 %c3139, 4
  %fx13144 = xor i32 %c3139, 4
  %fx23145 = xor i32 %c3139, %t3140
  %fva3146 = and i32 %fx13144, %fx23145
  %fv3147 = icmp slt i32 %fva3146, 0
  %nz3148 = zext i1 %fn3141 to i64
  %zz3149 = zext i1 %fz3142 to i64
  %cz3150 = zext i1 %fc3143 to i64
  %vz3151 = zext i1 %fv3147 to i64
  %ns3152 = shl i64 %nz3148, 31
  %zs3153 = shl i64 %zz3149, 30
  %cs3154 = shl i64 %cz3150, 29
  %vs3155 = shl i64 %vz3151, 28
  %nzor3156 = or i64 %ns3152, %zs3153
  %cvor3157 = or i64 %cs3154, %vs3155
  %nzcv3158 = or i64 %nzor3156, %cvor3157
  %wp3159 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3158, ptr %wp3159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac4c word 0x39400501
  %r3160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3160 = load i64, ptr %r3160.p, align 8, !alias.scope !3, !noalias !4
  %t3161 = add i64 %r3160, 1
  %gmp3162 = inttoptr i64 %t3161 to ptr
  %gml3163 = load i8, ptr %gmp3162, align 1, !alias.scope !4, !noalias !3
  %c3164 = zext i8 %gml3163 to i64
  %wp3165 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3164, ptr %wp3165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac50 word 0x9a8b318a
  %r3166.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3166 = load i64, ptr %r3166.p, align 8, !alias.scope !3, !noalias !4
  %r3167.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3167 = load i64, ptr %r3167.p, align 8, !alias.scope !3, !noalias !4
  %r3168.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3168 = load i64, ptr %r3168.p, align 8, !alias.scope !3, !noalias !4
  %fsh3170 = lshr i64 %r3168, 29
  %ftr3171 = trunc i64 %fsh3170 to i1
  %cond3169 = xor i1 %ftr3171, true
  %sel3172 = select i1 %cond3169, i64 %r3166, i64 %r3167
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel3172, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac54 word 0xf9400140
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %gmp3175 = inttoptr i64 %r3174 to ptr
  %gml3176 = load i64, ptr %gmp3175, align 1, !alias.scope !4, !noalias !3
  %wp3177 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3176, ptr %wp3177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac58 word 0x17ffff06
  br label %L_8001da870
L_8001dac5c:
  ; @pc 0x8001dac5c word 0x79c0050a
  %r3178.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3178 = load i64, ptr %r3178.p, align 8, !alias.scope !3, !noalias !4
  %t3179 = add i64 %r3178, 2
  %gmp3180 = inttoptr i64 %t3179 to ptr
  %gml3181 = load i16, ptr %gmp3180, align 1, !alias.scope !4, !noalias !3
  %c3182 = sext i16 %gml3181 to i32
  %c3183 = zext i32 %c3182 to i64
  %wp3184 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3183, ptr %wp3184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac60 word 0x37ffe26a
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %t3186 = and i64 %r3185, 2147483648
  %cmp3187 = icmp ne i64 %t3186, 0
  br i1 %cmp3187, label %L_8001da8ac, label %L_8001dac64
L_8001dac64:
  ; @pc 0x8001dac64 word 0xf940840b
  %r3188.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3188 = load i64, ptr %r3188.p, align 8, !alias.scope !3, !noalias !4
  %t3189 = add i64 %r3188, 264
  %gmp3190 = inttoptr i64 %t3189 to ptr
  %gml3191 = load i64, ptr %gmp3190, align 1, !alias.scope !4, !noalias !3
  %wp3192 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3191, ptr %wp3192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac68 word 0x92403d4d
  %r3193.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3193 = load i64, ptr %r3193.p, align 8, !alias.scope !3, !noalias !4
  %t3194 = and i64 %r3193, 65535
  %wp3195 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3194, ptr %wp3195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac6c word 0x8b091108
  %r3196.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3196 = load i64, ptr %r3196.p, align 8, !alias.scope !3, !noalias !4
  %r3197.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3197 = load i64, ptr %r3197.p, align 8, !alias.scope !3, !noalias !4
  %t3198 = shl i64 %r3197, 4
  %t3199 = add i64 %r3196, %t3198
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3199, ptr %wp3200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac70 word 0x39400501
  %r3201.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3201 = load i64, ptr %r3201.p, align 8, !alias.scope !3, !noalias !4
  %t3202 = add i64 %r3201, 1
  %gmp3203 = inttoptr i64 %t3202 to ptr
  %gml3204 = load i8, ptr %gmp3203, align 1, !alias.scope !4, !noalias !3
  %c3205 = zext i8 %gml3204 to i64
  %wp3206 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3205, ptr %wp3206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac74 word 0xb940196c
  %r3207.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3207 = load i64, ptr %r3207.p, align 8, !alias.scope !3, !noalias !4
  %t3208 = add i64 %r3207, 24
  %gmp3209 = inttoptr i64 %t3208 to ptr
  %gml3210 = load i32, ptr %gmp3209, align 1, !alias.scope !4, !noalias !3
  %c3211 = zext i32 %gml3210 to i64
  %wp3212 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3211, ptr %wp3212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac78 word 0xf940116b
  %r3213.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3213 = load i64, ptr %r3213.p, align 8, !alias.scope !3, !noalias !4
  %t3214 = add i64 %r3213, 32
  %gmp3215 = inttoptr i64 %t3214 to ptr
  %gml3216 = load i64, ptr %gmp3215, align 1, !alias.scope !4, !noalias !3
  %wp3217 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3216, ptr %wp3217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac7c word 0x6b2a219f
  %r3218.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3218 = load i64, ptr %r3218.p, align 8, !alias.scope !3, !noalias !4
  %c3219 = trunc i64 %r3218 to i32
  %r3220.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3220 = load i64, ptr %r3220.p, align 8, !alias.scope !3, !noalias !4
  %c3221 = trunc i64 %r3220 to i16
  %c3222 = zext i16 %c3221 to i64
  %c3223 = trunc i64 %c3222 to i32
  %t3224 = sub i32 %c3219, %c3223
  %fn3225 = icmp slt i32 %t3224, 0
  %fz3226 = icmp eq i32 %t3224, 0
  %fc3227 = icmp uge i32 %c3219, %c3223
  %fx13228 = xor i32 %c3219, %c3223
  %fx23229 = xor i32 %c3219, %t3224
  %fva3230 = and i32 %fx13228, %fx23229
  %fv3231 = icmp slt i32 %fva3230, 0
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
  ; @pc 0x8001dac80 word 0x5280030c
  %c3244 = zext i32 24 to i64
  %wp3245 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3244, ptr %wp3245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac84 word 0x9a9f81aa
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %r3247.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3247 = load i64, ptr %r3247.p, align 8, !alias.scope !3, !noalias !4
  %fsh3249 = lshr i64 %r3247, 29
  %ftr3250 = trunc i64 %fsh3249 to i1
  %fsh3251 = lshr i64 %r3247, 30
  %ftr3252 = trunc i64 %fsh3251 to i1
  %fnz3253 = xor i1 %ftr3252, true
  %cond3248 = and i1 %ftr3250, %fnz3253
  %sel3254 = select i1 %cond3248, i64 %r3246, i64 0
  %wp3255 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel3254, ptr %wp3255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac88 word 0x9bac7d4a
  %r3256.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3256 = load i64, ptr %r3256.p, align 8, !alias.scope !3, !noalias !4
  %c3257 = trunc i64 %r3256 to i32
  %c3258 = zext i32 %c3257 to i64
  %r3259.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3259 = load i64, ptr %r3259.p, align 8, !alias.scope !3, !noalias !4
  %c3260 = trunc i64 %r3259 to i32
  %c3261 = zext i32 %c3260 to i64
  %t3262 = mul i64 %c3258, %c3261
  %t3263 = add i64 0, %t3262
  %wp3264 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3263, ptr %wp3264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac8c word 0xf86a696a
  %r3265.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3265 = load i64, ptr %r3265.p, align 8, !alias.scope !3, !noalias !4
  %r3266.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3266 = load i64, ptr %r3266.p, align 8, !alias.scope !3, !noalias !4
  %t3267 = add i64 %r3265, %r3266
  %gmp3268 = inttoptr i64 %t3267 to ptr
  %gml3269 = load i64, ptr %gmp3268, align 1, !alias.scope !4, !noalias !3
  %wp3270 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3269, ptr %wp3270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac90 word 0xf9401140
  %r3271.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3271 = load i64, ptr %r3271.p, align 8, !alias.scope !3, !noalias !4
  %t3272 = add i64 %r3271, 32
  %gmp3273 = inttoptr i64 %t3272 to ptr
  %gml3274 = load i64, ptr %gmp3273, align 1, !alias.scope !4, !noalias !3
  %wp3275 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3274, ptr %wp3275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac94 word 0xf9400008
  %r3276.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3276 = load i64, ptr %r3276.p, align 8, !alias.scope !3, !noalias !4
  %gmp3277 = inttoptr i64 %r3276 to ptr
  %gml3278 = load i64, ptr %gmp3277, align 1, !alias.scope !4, !noalias !3
  %wp3279 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3278, ptr %wp3279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac98 word 0xf9408908
  %r3280.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3280 = load i64, ptr %r3280.p, align 8, !alias.scope !3, !noalias !4
  %t3281 = add i64 %r3280, 272
  %gmp3282 = inttoptr i64 %t3281 to ptr
  %gml3283 = load i64, ptr %gmp3282, align 1, !alias.scope !4, !noalias !3
  %wp3284 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3283, ptr %wp3284, align 8, !alias.scope !3, !noalias !4
  br label %L_8001dac9c
L_8001dac9c:
  ; @pc 0x8001dac9c word 0xd63f0100
  %r3285.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3285 = load i64, ptr %r3285.p, align 8, !alias.scope !3, !noalias !4
  %fp3286 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3285, ptr %fp3286, align 8, !alias.scope !3, !noalias !4
  %wp3287 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683104, ptr %wp3287, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001daca0 word 0xaa0003e8
  %r3288.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3288 = load i64, ptr %r3288.p, align 8, !alias.scope !3, !noalias !4
  %t3289 = or i64 0, %r3288
  %wp3290 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3289, ptr %wp3290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daca4 word 0x17ffff04
  br label %L_8001da8b4
L_8001daca8:
  ; @pc 0x8001daca8 word 0x39048fff
  %r3291.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3291 = load i64, ptr %r3291.p, align 8, !alias.scope !3, !noalias !4
  %t3292 = add i64 %r3291, 291
  %c3293 = trunc i32 0 to i8
  %gmp3294 = inttoptr i64 %t3292 to ptr
  store i8 %c3293, ptr %gmp3294, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dacac word 0x910063e9
  %r3295.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3295 = load i64, ptr %r3295.p, align 8, !alias.scope !3, !noalias !4
  %t3296 = add i64 %r3295, 24
  %wp3297 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3296, ptr %wp3297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacb0 word 0xd0015381
  %wp3298 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacb4 word 0x91270c21
  %r3299.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3299 = load i64, ptr %r3299.p, align 8, !alias.scope !3, !noalias !4
  %t3300 = add i64 %r3299, 2499
  %wp3301 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3300, ptr %wp3301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacb8 word 0xf9400908
  %r3302.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3302 = load i64, ptr %r3302.p, align 8, !alias.scope !3, !noalias !4
  %t3303 = add i64 %r3302, 16
  %gmp3304 = inttoptr i64 %t3303 to ptr
  %gml3305 = load i64, ptr %gmp3304, align 1, !alias.scope !4, !noalias !3
  %wp3306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3305, ptr %wp3306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacbc word 0x91003129
  %r3307.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3307 = load i64, ptr %r3307.p, align 8, !alias.scope !3, !noalias !4
  %t3308 = add i64 %r3307, 12
  %wp3309 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3308, ptr %wp3309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacc0 word 0xf9000fe9
  %r3310.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3310 = load i64, ptr %r3310.p, align 8, !alias.scope !3, !noalias !4
  %t3311 = add i64 %r3310, 24
  %r3312.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3312 = load i64, ptr %r3312.p, align 8, !alias.scope !3, !noalias !4
  %gmp3313 = inttoptr i64 %t3311 to ptr
  store i64 %r3312, ptr %gmp3313, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dacc4 word 0x52802009
  %c3314 = zext i32 256 to i64
  %wp3315 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3314, ptr %wp3315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacc8 word 0x390093ff
  %r3316.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3316 = load i64, ptr %r3316.p, align 8, !alias.scope !3, !noalias !4
  %t3317 = add i64 %r3316, 36
  %c3318 = trunc i32 0 to i8
  %gmp3319 = inttoptr i64 %t3317 to ptr
  store i8 %c3318, ptr %gmp3319, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daccc word 0xb90023e9
  %r3320.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3320 = load i64, ptr %r3320.p, align 8, !alias.scope !3, !noalias !4
  %t3321 = add i64 %r3320, 32
  %r3322.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3322 = load i64, ptr %r3322.p, align 8, !alias.scope !3, !noalias !4
  %c3323 = trunc i64 %r3322 to i32
  %gmp3324 = inttoptr i64 %t3321 to ptr
  store i32 %c3323, ptr %gmp3324, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dacd0 word 0x910063e0
  %r3325.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3325 = load i64, ptr %r3325.p, align 8, !alias.scope !3, !noalias !4
  %t3326 = add i64 %r3325, 24
  %wp3327 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3326, ptr %wp3327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacd4 word 0x2a0403f7
  %r3328.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3328 = load i64, ptr %r3328.p, align 8, !alias.scope !3, !noalias !4
  %c3329 = trunc i64 %r3328 to i32
  %t3330 = or i32 0, %c3329
  %c3331 = zext i32 %t3330 to i64
  %wp3332 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3331, ptr %wp3332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacd8 word 0xaa0303f9
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %t3334 = or i64 0, %r3333
  %wp3335 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3334, ptr %wp3335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacdc word 0x2a0503fb
  %r3336.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3336 = load i64, ptr %r3336.p, align 8, !alias.scope !3, !noalias !4
  %c3337 = trunc i64 %r3336 to i32
  %t3338 = or i32 0, %c3337
  %c3339 = zext i32 %t3338 to i64
  %wp3340 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3339, ptr %wp3340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dace0 word 0xf9400908
  %r3341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3341 = load i64, ptr %r3341.p, align 8, !alias.scope !3, !noalias !4
  %t3342 = add i64 %r3341, 16
  %gmp3343 = inttoptr i64 %t3342 to ptr
  %gml3344 = load i64, ptr %gmp3343, align 1, !alias.scope !4, !noalias !3
  %wp3345 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3344, ptr %wp3345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dace4 word 0xb980250a
  %r3346.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3346 = load i64, ptr %r3346.p, align 8, !alias.scope !3, !noalias !4
  %t3347 = add i64 %r3346, 36
  %gmp3348 = inttoptr i64 %t3347 to ptr
  %gml3349 = load i32, ptr %gmp3348, align 1, !alias.scope !4, !noalias !3
  %c3350 = sext i32 %gml3349 to i64
  %wp3351 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3350, ptr %wp3351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dace8 word 0xb9800909
  %r3352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3352 = load i64, ptr %r3352.p, align 8, !alias.scope !3, !noalias !4
  %t3353 = add i64 %r3352, 8
  %gmp3354 = inttoptr i64 %t3353 to ptr
  %gml3355 = load i32, ptr %gmp3354, align 1, !alias.scope !4, !noalias !3
  %c3356 = sext i32 %gml3355 to i64
  %wp3357 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3356, ptr %wp3357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacec word 0x8b0a0108
  %r3358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3358 = load i64, ptr %r3358.p, align 8, !alias.scope !3, !noalias !4
  %r3359.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3359 = load i64, ptr %r3359.p, align 8, !alias.scope !3, !noalias !4
  %t3360 = add i64 %r3358, %r3359
  %wp3361 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3360, ptr %wp3361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacf0 word 0x8b090102
  %r3362.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3362 = load i64, ptr %r3362.p, align 8, !alias.scope !3, !noalias !4
  %r3363.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3363 = load i64, ptr %r3363.p, align 8, !alias.scope !3, !noalias !4
  %t3364 = add i64 %r3362, %r3363
  %wp3365 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3364, ptr %wp3365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacf4 word 0x97fafadb
  %wp3366 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683192, ptr %wp3366, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001dacf8 word 0xb94017ea
  %r3367.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3367 = load i64, ptr %r3367.p, align 8, !alias.scope !3, !noalias !4
  %t3368 = add i64 %r3367, 20
  %gmp3369 = inttoptr i64 %t3368 to ptr
  %gml3370 = load i32, ptr %gmp3369, align 1, !alias.scope !4, !noalias !3
  %c3371 = zext i32 %gml3370 to i64
  %wp3372 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3371, ptr %wp3372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dacfc word 0x2a1b03e5
  %r3373.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3373 = load i64, ptr %r3373.p, align 8, !alias.scope !3, !noalias !4
  %c3374 = trunc i64 %r3373 to i32
  %t3375 = or i32 0, %c3374
  %c3376 = zext i32 %t3375 to i64
  %wp3377 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3376, ptr %wp3377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad00 word 0xaa1903e3
  %r3378.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3378 = load i64, ptr %r3378.p, align 8, !alias.scope !3, !noalias !4
  %t3379 = or i64 0, %r3378
  %wp3380 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3379, ptr %wp3380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad04 word 0x2a1703e4
  %r3381.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3381 = load i64, ptr %r3381.p, align 8, !alias.scope !3, !noalias !4
  %c3382 = trunc i64 %r3381 to i32
  %t3383 = or i32 0, %c3382
  %c3384 = zext i32 %t3383 to i64
  %wp3385 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3384, ptr %wp3385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad08 word 0xaa1f03f7
  %t3386 = or i64 0, 0
  %wp3387 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3386, ptr %wp3387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad0c word 0x17fffe09
  br label %L_8001da530
L_8001dad10:
  ; @pc 0x8001dad10 word 0xb001bc20
  %wp3388 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad14 word 0xaa0303f9
  %r3389.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3389 = load i64, ptr %r3389.p, align 8, !alias.scope !3, !noalias !4
  %t3390 = or i64 0, %r3389
  %wp3391 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3390, ptr %wp3391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad18 word 0xf9452c00
  %r3392.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3392 = load i64, ptr %r3392.p, align 8, !alias.scope !3, !noalias !4
  %t3393 = add i64 %r3392, 2648
  %gmp3394 = inttoptr i64 %t3393 to ptr
  %gml3395 = load i64, ptr %gmp3394, align 1, !alias.scope !4, !noalias !3
  %wp3396 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3395, ptr %wp3396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad1c word 0xb90007e4
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %t3398 = add i64 %r3397, 4
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %c3400 = trunc i64 %r3399 to i32
  %gmp3401 = inttoptr i64 %t3398 to ptr
  store i32 %c3400, ptr %gmp3401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dad20 word 0x2a0503fb
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %c3403 = trunc i64 %r3402 to i32
  %t3404 = or i32 0, %c3403
  %c3405 = zext i32 %t3404 to i64
  %wp3406 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3405, ptr %wp3406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad24 word 0x94a7231f
  %wp3407 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683240, ptr %wp3407, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001dad28 word 0xb94017ea
  %r3408.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3408 = load i64, ptr %r3408.p, align 8, !alias.scope !3, !noalias !4
  %t3409 = add i64 %r3408, 20
  %gmp3410 = inttoptr i64 %t3409 to ptr
  %gml3411 = load i32, ptr %gmp3410, align 1, !alias.scope !4, !noalias !3
  %c3412 = zext i32 %gml3411 to i64
  %wp3413 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3412, ptr %wp3413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad2c word 0x2a1b03e5
  %r3414.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3414 = load i64, ptr %r3414.p, align 8, !alias.scope !3, !noalias !4
  %c3415 = trunc i64 %r3414 to i32
  %t3416 = or i32 0, %c3415
  %c3417 = zext i32 %t3416 to i64
  %wp3418 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3417, ptr %wp3418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad30 word 0xaa1903e3
  %r3419.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3419 = load i64, ptr %r3419.p, align 8, !alias.scope !3, !noalias !4
  %t3420 = or i64 0, %r3419
  %wp3421 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3420, ptr %wp3421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad34 word 0xb94007e4
  %r3422.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3422 = load i64, ptr %r3422.p, align 8, !alias.scope !3, !noalias !4
  %t3423 = add i64 %r3422, 4
  %gmp3424 = inttoptr i64 %t3423 to ptr
  %gml3425 = load i32, ptr %gmp3424, align 1, !alias.scope !4, !noalias !3
  %c3426 = zext i32 %gml3425 to i64
  %wp3427 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3426, ptr %wp3427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad38 word 0x34ffc040
  %r3428.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3428 = load i64, ptr %r3428.p, align 8, !alias.scope !3, !noalias !4
  %c3429 = trunc i64 %r3428 to i32
  %cmp3430 = icmp eq i32 %c3429, 0
  br i1 %cmp3430, label %L_8001da540, label %L_8001dad3c_ft
L_8001dad74:
  ; @pc 0x8001dad74 word 0xb001bc20
  %wp3476 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad78 word 0xaa0303f9
  %r3477.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3477 = load i64, ptr %r3477.p, align 8, !alias.scope !3, !noalias !4
  %t3478 = or i64 0, %r3477
  %wp3479 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3478, ptr %wp3479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad7c word 0xf9454400
  %r3480.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3480 = load i64, ptr %r3480.p, align 8, !alias.scope !3, !noalias !4
  %t3481 = add i64 %r3480, 2696
  %gmp3482 = inttoptr i64 %t3481 to ptr
  %gml3483 = load i64, ptr %gmp3482, align 1, !alias.scope !4, !noalias !3
  %wp3484 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3483, ptr %wp3484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad80 word 0xb90007e4
  %r3485.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3485 = load i64, ptr %r3485.p, align 8, !alias.scope !3, !noalias !4
  %t3486 = add i64 %r3485, 4
  %r3487.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3487 = load i64, ptr %r3487.p, align 8, !alias.scope !3, !noalias !4
  %c3488 = trunc i64 %r3487 to i32
  %gmp3489 = inttoptr i64 %t3486 to ptr
  store i32 %c3488, ptr %gmp3489, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dad84 word 0x2a0503fb
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %c3491 = trunc i64 %r3490 to i32
  %t3492 = or i32 0, %c3491
  %c3493 = zext i32 %t3492 to i64
  %wp3494 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3493, ptr %wp3494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad88 word 0x94a72306
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683340, ptr %wp3495, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001dad8c word 0xb94017ea
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %t3497 = add i64 %r3496, 20
  %gmp3498 = inttoptr i64 %t3497 to ptr
  %gml3499 = load i32, ptr %gmp3498, align 1, !alias.scope !4, !noalias !3
  %c3500 = zext i32 %gml3499 to i64
  %wp3501 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3500, ptr %wp3501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad90 word 0x2a1b03e5
  %r3502.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3502 = load i64, ptr %r3502.p, align 8, !alias.scope !3, !noalias !4
  %c3503 = trunc i64 %r3502 to i32
  %t3504 = or i32 0, %c3503
  %c3505 = zext i32 %t3504 to i64
  %wp3506 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3505, ptr %wp3506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad94 word 0xaa1903e3
  %r3507.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3507 = load i64, ptr %r3507.p, align 8, !alias.scope !3, !noalias !4
  %t3508 = or i64 0, %r3507
  %wp3509 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3508, ptr %wp3509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad98 word 0xb94007e4
  %r3510.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3510 = load i64, ptr %r3510.p, align 8, !alias.scope !3, !noalias !4
  %t3511 = add i64 %r3510, 4
  %gmp3512 = inttoptr i64 %t3511 to ptr
  %gml3513 = load i32, ptr %gmp3512, align 1, !alias.scope !4, !noalias !3
  %c3514 = zext i32 %gml3513 to i64
  %wp3515 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3514, ptr %wp3515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad9c word 0x34ffc640
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %c3517 = trunc i64 %r3516 to i32
  %cmp3518 = icmp eq i32 %c3517, 0
  br i1 %cmp3518, label %L_8001da664, label %L_8001dada0_ft
L_8001dadd8:
  ; @pc 0x8001dadd8 word 0xb001bc20
  %wp3564 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daddc word 0xaa0303f9
  %r3565.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3565 = load i64, ptr %r3565.p, align 8, !alias.scope !3, !noalias !4
  %t3566 = or i64 0, %r3565
  %wp3567 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3566, ptr %wp3567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dade0 word 0xf9454c00
  %r3568.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3568 = load i64, ptr %r3568.p, align 8, !alias.scope !3, !noalias !4
  %t3569 = add i64 %r3568, 2712
  %gmp3570 = inttoptr i64 %t3569 to ptr
  %gml3571 = load i64, ptr %gmp3570, align 1, !alias.scope !4, !noalias !3
  %wp3572 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3571, ptr %wp3572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dade4 word 0xb90007e4
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %t3574 = add i64 %r3573, 4
  %r3575.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3575 = load i64, ptr %r3575.p, align 8, !alias.scope !3, !noalias !4
  %c3576 = trunc i64 %r3575 to i32
  %gmp3577 = inttoptr i64 %t3574 to ptr
  store i32 %c3576, ptr %gmp3577, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dade8 word 0x2a0503fb
  %r3578.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3578 = load i64, ptr %r3578.p, align 8, !alias.scope !3, !noalias !4
  %c3579 = trunc i64 %r3578 to i32
  %t3580 = or i32 0, %c3579
  %c3581 = zext i32 %t3580 to i64
  %wp3582 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3581, ptr %wp3582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadec word 0x94a722ed
  %wp3583 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683440, ptr %wp3583, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001dadf0 word 0xb94017ea
  %r3584.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3584 = load i64, ptr %r3584.p, align 8, !alias.scope !3, !noalias !4
  %t3585 = add i64 %r3584, 20
  %gmp3586 = inttoptr i64 %t3585 to ptr
  %gml3587 = load i32, ptr %gmp3586, align 1, !alias.scope !4, !noalias !3
  %c3588 = zext i32 %gml3587 to i64
  %wp3589 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3588, ptr %wp3589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadf4 word 0x2a1b03e5
  %r3590.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3590 = load i64, ptr %r3590.p, align 8, !alias.scope !3, !noalias !4
  %c3591 = trunc i64 %r3590 to i32
  %t3592 = or i32 0, %c3591
  %c3593 = zext i32 %t3592 to i64
  %wp3594 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3593, ptr %wp3594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadf8 word 0xaa1903e3
  %r3595.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3595 = load i64, ptr %r3595.p, align 8, !alias.scope !3, !noalias !4
  %t3596 = or i64 0, %r3595
  %wp3597 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3596, ptr %wp3597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadfc word 0xb94007e4
  %r3598.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3598 = load i64, ptr %r3598.p, align 8, !alias.scope !3, !noalias !4
  %t3599 = add i64 %r3598, 4
  %gmp3600 = inttoptr i64 %t3599 to ptr
  %gml3601 = load i32, ptr %gmp3600, align 1, !alias.scope !4, !noalias !3
  %c3602 = zext i32 %gml3601 to i64
  %wp3603 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3602, ptr %wp3603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae00 word 0x34ffc620
  %r3604.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3604 = load i64, ptr %r3604.p, align 8, !alias.scope !3, !noalias !4
  %c3605 = trunc i64 %r3604 to i32
  %cmp3606 = icmp eq i32 %c3605, 0
  br i1 %cmp3606, label %L_8001da6c4, label %L_8001dae04_ft
L_8001dae3c:
  ; @pc 0x8001dae3c word 0x2a1f03f7
  %t3652 = or i32 0, 0
  %c3653 = zext i32 %t3652 to i64
  %wp3654 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3653, ptr %wp3654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae40 word 0x91002108
  %r3655.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3655 = load i64, ptr %r3655.p, align 8, !alias.scope !3, !noalias !4
  %t3656 = add i64 %r3655, 8
  %wp3657 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3656, ptr %wp3657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae44 word 0x17fffe9d
  br label %L_8001da8b8
L_8001dae48:
  ; @pc 0x8001dae48 word 0xf9400aa0
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %t3659 = add i64 %r3658, 16
  %gmp3660 = inttoptr i64 %t3659 to ptr
  %gml3661 = load i64, ptr %gmp3660, align 1, !alias.scope !4, !noalias !3
  %wp3662 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3661, ptr %wp3662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae4c word 0x2a0403f4
  %r3663.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3663 = load i64, ptr %r3663.p, align 8, !alias.scope !3, !noalias !4
  %c3664 = trunc i64 %r3663 to i32
  %t3665 = or i32 0, %c3664
  %c3666 = zext i32 %t3665 to i64
  %wp3667 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3666, ptr %wp3667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae50 word 0xf9400008
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %gmp3669 = inttoptr i64 %r3668 to ptr
  %gml3670 = load i64, ptr %gmp3669, align 1, !alias.scope !4, !noalias !3
  %wp3671 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3670, ptr %wp3671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae54 word 0xf9402d08
  %r3672.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3672 = load i64, ptr %r3672.p, align 8, !alias.scope !3, !noalias !4
  %t3673 = add i64 %r3672, 88
  %gmp3674 = inttoptr i64 %t3673 to ptr
  %gml3675 = load i64, ptr %gmp3674, align 1, !alias.scope !4, !noalias !3
  %wp3676 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3675, ptr %wp3676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae58 word 0xd63f0100
  %r3677.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3677 = load i64, ptr %r3677.p, align 8, !alias.scope !3, !noalias !4
  %fp3678 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3677, ptr %fp3678, align 8, !alias.scope !3, !noalias !4
  %wp3679 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683548, ptr %wp3679, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001dae5c word 0xb9800009
  %r3680.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3680 = load i64, ptr %r3680.p, align 8, !alias.scope !3, !noalias !4
  %gmp3681 = inttoptr i64 %r3680 to ptr
  %gml3682 = load i32, ptr %gmp3681, align 1, !alias.scope !4, !noalias !3
  %c3683 = sext i32 %gml3682 to i64
  %wp3684 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3683, ptr %wp3684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae60 word 0x34ffb4a9
  %r3685.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3685 = load i64, ptr %r3685.p, align 8, !alias.scope !3, !noalias !4
  %c3686 = trunc i64 %r3685 to i32
  %cmp3687 = icmp eq i32 %c3686, 0
  br i1 %cmp3687, label %L_8001da4f4, label %L_8001dae64_ft
L_8001dae78:
  ; @pc 0x8001dae78 word 0xf940010c
  %r3710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3710 = load i64, ptr %r3710.p, align 8, !alias.scope !3, !noalias !4
  %gmp3711 = inttoptr i64 %r3710 to ptr
  %gml3712 = load i64, ptr %gmp3711, align 1, !alias.scope !4, !noalias !3
  %wp3713 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3712, ptr %wp3713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae7c word 0xb9402d8d
  %r3714.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3714 = load i64, ptr %r3714.p, align 8, !alias.scope !3, !noalias !4
  %t3715 = add i64 %r3714, 44
  %gmp3716 = inttoptr i64 %t3715 to ptr
  %gml3717 = load i32, ptr %gmp3716, align 1, !alias.scope !4, !noalias !3
  %c3718 = zext i32 %gml3717 to i64
  %wp3719 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3718, ptr %wp3719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae80 word 0x710011bf
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3720 = load i64, ptr %r3720.p, align 8, !alias.scope !3, !noalias !4
  %c3721 = trunc i64 %r3720 to i32
  %t3722 = sub i32 %c3721, 4
  %fn3723 = icmp slt i32 %t3722, 0
  %fz3724 = icmp eq i32 %t3722, 0
  %fc3725 = icmp uge i32 %c3721, 4
  %fx13726 = xor i32 %c3721, 4
  %fx23727 = xor i32 %c3721, %t3722
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
  ; @pc 0x8001dae84 word 0x540001e1
  %r3742.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3742 = load i64, ptr %r3742.p, align 8, !alias.scope !3, !noalias !4
  %fsh3744 = lshr i64 %r3742, 30
  %ftr3745 = trunc i64 %fsh3744 to i1
  %cond3743 = xor i1 %ftr3745, true
  br i1 %cond3743, label %L_8001daec0, label %L_8001dae88_ft
L_8001daea4:
  ; @pc 0x8001daea4 word 0x384015b0
  %r3790.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3790 = load i64, ptr %r3790.p, align 8, !alias.scope !3, !noalias !4
  %t3791 = add i64 %r3790, 1
  %gmp3792 = inttoptr i64 %r3790 to ptr
  %gml3793 = load i8, ptr %gmp3792, align 1, !alias.scope !4, !noalias !3
  %c3794 = zext i8 %gml3793 to i64
  %wp3795 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3791, ptr %wp3795, align 8, !alias.scope !3, !noalias !4
  %wp3796 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3794, ptr %wp3796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daea8 word 0x384015f1
  %r3797.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3797 = load i64, ptr %r3797.p, align 8, !alias.scope !3, !noalias !4
  %t3798 = add i64 %r3797, 1
  %gmp3799 = inttoptr i64 %r3797 to ptr
  %gml3800 = load i8, ptr %gmp3799, align 1, !alias.scope !4, !noalias !3
  %c3801 = zext i8 %gml3800 to i64
  %wp3802 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3798, ptr %wp3802, align 8, !alias.scope !3, !noalias !4
  %wp3803 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c3801, ptr %wp3803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daeac word 0x6b11021f
  %r3804.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3804 = load i64, ptr %r3804.p, align 8, !alias.scope !3, !noalias !4
  %c3805 = trunc i64 %r3804 to i32
  %r3806.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3806 = load i64, ptr %r3806.p, align 8, !alias.scope !3, !noalias !4
  %c3807 = trunc i64 %r3806 to i32
  %t3808 = sub i32 %c3805, %c3807
  %fn3809 = icmp slt i32 %t3808, 0
  %fz3810 = icmp eq i32 %t3808, 0
  %fc3811 = icmp uge i32 %c3805, %c3807
  %fx13812 = xor i32 %c3805, %c3807
  %fx23813 = xor i32 %c3805, %t3808
  %fva3814 = and i32 %fx13812, %fx23813
  %fv3815 = icmp slt i32 %fva3814, 0
  %nz3816 = zext i1 %fn3809 to i64
  %zz3817 = zext i1 %fz3810 to i64
  %cz3818 = zext i1 %fc3811 to i64
  %vz3819 = zext i1 %fv3815 to i64
  %ns3820 = shl i64 %nz3816, 31
  %zs3821 = shl i64 %zz3817, 30
  %cs3822 = shl i64 %cz3818, 29
  %vs3823 = shl i64 %vz3819, 28
  %nzor3824 = or i64 %ns3820, %zs3821
  %cvor3825 = or i64 %cs3822, %vs3823
  %nzcv3826 = or i64 %nzor3824, %cvor3825
  %wp3827 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3826, ptr %wp3827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daeb0 word 0x54000081
  %r3828.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3828 = load i64, ptr %r3828.p, align 8, !alias.scope !3, !noalias !4
  %fsh3830 = lshr i64 %r3828, 30
  %ftr3831 = trunc i64 %fsh3830 to i1
  %cond3829 = xor i1 %ftr3831, true
  br i1 %cond3829, label %L_8001daec0, label %L_8001daeb4_ft
L_8001daec0:
  ; @pc 0x8001daec0 word 0x91002108
  %r3861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3861 = load i64, ptr %r3861.p, align 8, !alias.scope !3, !noalias !4
  %t3862 = add i64 %r3861, 8
  %wp3863 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3862, ptr %wp3863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daec4 word 0xeb09011f
  %r3864.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3864 = load i64, ptr %r3864.p, align 8, !alias.scope !3, !noalias !4
  %r3865.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3865 = load i64, ptr %r3865.p, align 8, !alias.scope !3, !noalias !4
  %t3866 = sub i64 %r3864, %r3865
  %fn3867 = icmp slt i64 %t3866, 0
  %fz3868 = icmp eq i64 %t3866, 0
  %fc3869 = icmp uge i64 %r3864, %r3865
  %fx13870 = xor i64 %r3864, %r3865
  %fx23871 = xor i64 %r3864, %t3866
  %fva3872 = and i64 %fx13870, %fx23871
  %fv3873 = icmp slt i64 %fva3872, 0
  %nz3874 = zext i1 %fn3867 to i64
  %zz3875 = zext i1 %fz3868 to i64
  %cz3876 = zext i1 %fc3869 to i64
  %vz3877 = zext i1 %fv3873 to i64
  %ns3878 = shl i64 %nz3874, 31
  %zs3879 = shl i64 %zz3875, 30
  %cs3880 = shl i64 %cz3876, 29
  %vs3881 = shl i64 %vz3877, 28
  %nzor3882 = or i64 %ns3878, %zs3879
  %cvor3883 = or i64 %cs3880, %vs3881
  %nzcv3884 = or i64 %nzor3882, %cvor3883
  %wp3885 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3884, ptr %wp3885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daec8 word 0x54fffd81
  %r3886.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3886 = load i64, ptr %r3886.p, align 8, !alias.scope !3, !noalias !4
  %fsh3888 = lshr i64 %r3886, 30
  %ftr3889 = trunc i64 %fsh3888 to i1
  %cond3887 = xor i1 %ftr3889, true
  br i1 %cond3887, label %L_8001dae78, label %L_8001daecc_ft
L_8001daed0:
  ; @pc 0x8001daed0 word 0x37000094
  %r3890.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3890 = load i64, ptr %r3890.p, align 8, !alias.scope !3, !noalias !4
  %t3891 = and i64 %r3890, 1
  %cmp3892 = icmp ne i64 %t3891, 0
  br i1 %cmp3892, label %L_8001daee0, label %L_8001daed4_ft
L_8001daee0:
  ; @pc 0x8001daee0 word 0xf9400988
  %r3904.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3904 = load i64, ptr %r3904.p, align 8, !alias.scope !3, !noalias !4
  %t3905 = add i64 %r3904, 16
  %gmp3906 = inttoptr i64 %t3905 to ptr
  %gml3907 = load i64, ptr %gmp3906, align 1, !alias.scope !4, !noalias !3
  %wp3908 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3907, ptr %wp3908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daee4 word 0x17fffe75
  br label %L_8001da8b8
L_8001daee8:
  ; @pc 0x8001daee8 word 0x2a1f03f4
  %t3909 = or i32 0, 0
  %c3910 = zext i32 %t3909 to i64
  %wp3911 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3910, ptr %wp3911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daeec word 0x17fffd74
  br label %L_8001da4bc
L_8001daef0:
  ; @pc 0x8001daef0 word 0xb9403c09
  %r3912.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3912 = load i64, ptr %r3912.p, align 8, !alias.scope !3, !noalias !4
  %t3913 = add i64 %r3912, 60
  %gmp3914 = inttoptr i64 %t3913 to ptr
  %gml3915 = load i32, ptr %gmp3914, align 1, !alias.scope !4, !noalias !3
  %c3916 = zext i32 %gml3915 to i64
  %wp3917 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3916, ptr %wp3917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daef4 word 0xb9404c0a
  %r3918.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3918 = load i64, ptr %r3918.p, align 8, !alias.scope !3, !noalias !4
  %t3919 = add i64 %r3918, 76
  %gmp3920 = inttoptr i64 %t3919 to ptr
  %gml3921 = load i32, ptr %gmp3920, align 1, !alias.scope !4, !noalias !3
  %c3922 = zext i32 %gml3921 to i64
  %wp3923 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3922, ptr %wp3923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daef8 word 0x0b090149
  %r3924.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3924 = load i64, ptr %r3924.p, align 8, !alias.scope !3, !noalias !4
  %c3925 = trunc i64 %r3924 to i32
  %r3926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3926 = load i64, ptr %r3926.p, align 8, !alias.scope !3, !noalias !4
  %c3927 = trunc i64 %r3926 to i32
  %t3928 = add i32 %c3925, %c3927
  %c3929 = zext i32 %t3928 to i64
  %wp3930 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3929, ptr %wp3930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daefc word 0xb9405c0a
  %r3931.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3931 = load i64, ptr %r3931.p, align 8, !alias.scope !3, !noalias !4
  %t3932 = add i64 %r3931, 92
  %gmp3933 = inttoptr i64 %t3932 to ptr
  %gml3934 = load i32, ptr %gmp3933, align 1, !alias.scope !4, !noalias !3
  %c3935 = zext i32 %gml3934 to i64
  %wp3936 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3935, ptr %wp3936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf00 word 0x0b0a0129
  %r3937.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3937 = load i64, ptr %r3937.p, align 8, !alias.scope !3, !noalias !4
  %c3938 = trunc i64 %r3937 to i32
  %r3939.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3939 = load i64, ptr %r3939.p, align 8, !alias.scope !3, !noalias !4
  %c3940 = trunc i64 %r3939 to i32
  %t3941 = add i32 %c3938, %c3940
  %c3942 = zext i32 %t3941 to i64
  %wp3943 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3942, ptr %wp3943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf04 word 0x531e7529
  %r3944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3944 = load i64, ptr %r3944.p, align 8, !alias.scope !3, !noalias !4
  %c3945 = trunc i64 %r3944 to i32
  %ror3946 = call i32 @llvm.fshr.i32(i32 %c3945, i32 %c3945, i32 30)
  %t3947 = and i32 %ror3946, -4
  %c3948 = zext i32 %t3947 to i64
  %wp3949 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3948, ptr %wp3949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf08 word 0x0b080d34
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3950 = load i64, ptr %r3950.p, align 8, !alias.scope !3, !noalias !4
  %c3951 = trunc i64 %r3950 to i32
  %r3952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3952 = load i64, ptr %r3952.p, align 8, !alias.scope !3, !noalias !4
  %c3953 = trunc i64 %r3952 to i32
  %t3954 = shl i32 %c3953, 3
  %t3955 = add i32 %c3951, %t3954
  %c3956 = zext i32 %t3955 to i64
  %wp3957 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3956, ptr %wp3957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf0c word 0x17fffd6c
  br label %L_8001da4bc
L_8001daf10:
  ; @pc 0x8001daf10 word 0x910063e9
  %r3958.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3958 = load i64, ptr %r3958.p, align 8, !alias.scope !3, !noalias !4
  %t3959 = add i64 %r3958, 24
  %wp3960 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3959, ptr %wp3960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf14 word 0x39048fff
  %r3961.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3961 = load i64, ptr %r3961.p, align 8, !alias.scope !3, !noalias !4
  %t3962 = add i64 %r3961, 291
  %c3963 = trunc i32 0 to i8
  %gmp3964 = inttoptr i64 %t3962 to ptr
  store i8 %c3963, ptr %gmp3964, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daf18 word 0xd0015381
  %wp3965 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf1c word 0x91270c21
  %r3966.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3966 = load i64, ptr %r3966.p, align 8, !alias.scope !3, !noalias !4
  %t3967 = add i64 %r3966, 2499
  %wp3968 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3967, ptr %wp3968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf20 word 0x91003129
  %r3969.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3969 = load i64, ptr %r3969.p, align 8, !alias.scope !3, !noalias !4
  %t3970 = add i64 %r3969, 12
  %wp3971 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3970, ptr %wp3971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf24 word 0x390093ff
  %r3972.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3972 = load i64, ptr %r3972.p, align 8, !alias.scope !3, !noalias !4
  %t3973 = add i64 %r3972, 36
  %c3974 = trunc i32 0 to i8
  %gmp3975 = inttoptr i64 %t3973 to ptr
  store i8 %c3974, ptr %gmp3975, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daf28 word 0xf9000fe9
  %r3976.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3976 = load i64, ptr %r3976.p, align 8, !alias.scope !3, !noalias !4
  %t3977 = add i64 %r3976, 24
  %r3978.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3978 = load i64, ptr %r3978.p, align 8, !alias.scope !3, !noalias !4
  %gmp3979 = inttoptr i64 %t3977 to ptr
  store i64 %r3978, ptr %gmp3979, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daf2c word 0x52802009
  %c3980 = zext i32 256 to i64
  %wp3981 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3980, ptr %wp3981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf30 word 0xb980250a
  %r3982.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3982 = load i64, ptr %r3982.p, align 8, !alias.scope !3, !noalias !4
  %t3983 = add i64 %r3982, 36
  %gmp3984 = inttoptr i64 %t3983 to ptr
  %gml3985 = load i32, ptr %gmp3984, align 1, !alias.scope !4, !noalias !3
  %c3986 = sext i32 %gml3985 to i64
  %wp3987 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3986, ptr %wp3987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf34 word 0xb90023e9
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %t3989 = add i64 %r3988, 32
  %r3990.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3990 = load i64, ptr %r3990.p, align 8, !alias.scope !3, !noalias !4
  %c3991 = trunc i64 %r3990 to i32
  %gmp3992 = inttoptr i64 %t3989 to ptr
  store i32 %c3991, ptr %gmp3992, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daf38 word 0x910063e0
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %t3994 = add i64 %r3993, 24
  %wp3995 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3994, ptr %wp3995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf3c word 0x2a0403f4
  %r3996.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3996 = load i64, ptr %r3996.p, align 8, !alias.scope !3, !noalias !4
  %c3997 = trunc i64 %r3996 to i32
  %t3998 = or i32 0, %c3997
  %c3999 = zext i32 %t3998 to i64
  %wp4000 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3999, ptr %wp4000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf40 word 0xb9800909
  %r4001.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4001 = load i64, ptr %r4001.p, align 8, !alias.scope !3, !noalias !4
  %t4002 = add i64 %r4001, 8
  %gmp4003 = inttoptr i64 %t4002 to ptr
  %gml4004 = load i32, ptr %gmp4003, align 1, !alias.scope !4, !noalias !3
  %c4005 = sext i32 %gml4004 to i64
  %wp4006 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4005, ptr %wp4006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf44 word 0x2a0503f6
  %r4007.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4007 = load i64, ptr %r4007.p, align 8, !alias.scope !3, !noalias !4
  %c4008 = trunc i64 %r4007 to i32
  %t4009 = or i32 0, %c4008
  %c4010 = zext i32 %t4009 to i64
  %wp4011 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c4010, ptr %wp4011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf48 word 0x8b0a0108
  %r4012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4012 = load i64, ptr %r4012.p, align 8, !alias.scope !3, !noalias !4
  %r4013.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4013 = load i64, ptr %r4013.p, align 8, !alias.scope !3, !noalias !4
  %t4014 = add i64 %r4012, %r4013
  %wp4015 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4014, ptr %wp4015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf4c word 0x8b090102
  %r4016.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4016 = load i64, ptr %r4016.p, align 8, !alias.scope !3, !noalias !4
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %t4018 = add i64 %r4016, %r4017
  %wp4019 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4018, ptr %wp4019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf50 word 0x97fafa44
  %wp4020 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683796, ptr %wp4020, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001daf54 word 0x2a1603e5
  %r4021.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4021 = load i64, ptr %r4021.p, align 8, !alias.scope !3, !noalias !4
  %c4022 = trunc i64 %r4021 to i32
  %t4023 = or i32 0, %c4022
  %c4024 = zext i32 %t4023 to i64
  %wp4025 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4024, ptr %wp4025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf58 word 0x2a1403e4
  %r4026.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4026 = load i64, ptr %r4026.p, align 8, !alias.scope !3, !noalias !4
  %c4027 = trunc i64 %r4026 to i32
  %t4028 = or i32 0, %c4027
  %c4029 = zext i32 %t4028 to i64
  %wp4030 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4029, ptr %wp4030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf5c word 0x2a1f03f6
  %t4031 = or i32 0, 0
  %c4032 = zext i32 %t4031 to i64
  %wp4033 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c4032, ptr %wp4033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf60 word 0x17fffd19
  br label %L_8001da3c4
L_8001daf64:
  ; @pc 0x8001daf64 word 0xb001bc20
  %wp4034 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp4034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf68 word 0x2a0503f9
  %r4035.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4035 = load i64, ptr %r4035.p, align 8, !alias.scope !3, !noalias !4
  %c4036 = trunc i64 %r4035 to i32
  %t4037 = or i32 0, %c4036
  %c4038 = zext i32 %t4037 to i64
  %wp4039 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c4038, ptr %wp4039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf6c word 0xf9455c00
  %r4040.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4040 = load i64, ptr %r4040.p, align 8, !alias.scope !3, !noalias !4
  %t4041 = add i64 %r4040, 2744
  %gmp4042 = inttoptr i64 %t4041 to ptr
  %gml4043 = load i64, ptr %gmp4042, align 1, !alias.scope !4, !noalias !3
  %wp4044 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4043, ptr %wp4044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf70 word 0x2a0403f7
  %r4045.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4045 = load i64, ptr %r4045.p, align 8, !alias.scope !3, !noalias !4
  %c4046 = trunc i64 %r4045 to i32
  %t4047 = or i32 0, %c4046
  %c4048 = zext i32 %t4047 to i64
  %wp4049 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4048, ptr %wp4049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf74 word 0x94a7228b
  %wp4050 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683832, ptr %wp4050, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001daf78 word 0xb001bc34
  %wp4051 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419896320, ptr %wp4051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf7c word 0xf9455a94
  %r4052.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4052 = load i64, ptr %r4052.p, align 8, !alias.scope !3, !noalias !4
  %t4053 = add i64 %r4052, 2736
  %gmp4054 = inttoptr i64 %t4053 to ptr
  %gml4055 = load i64, ptr %gmp4054, align 1, !alias.scope !4, !noalias !3
  %wp4056 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml4055, ptr %wp4056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf80 word 0x340000a0
  %r4057.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4057 = load i64, ptr %r4057.p, align 8, !alias.scope !3, !noalias !4
  %c4058 = trunc i64 %r4057 to i32
  %cmp4059 = icmp eq i32 %c4058, 0
  br i1 %cmp4059, label %L_8001daf94, label %L_8001daf84_ft
L_8001daf94:
  ; @pc 0x8001daf94 word 0x2a1f03fa
  %t4069 = or i32 0, 0
  %c4070 = zext i32 %t4069 to i64
  %wp4071 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c4070, ptr %wp4071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf98 word 0x2a1f03fc
  %t4072 = or i32 0, 0
  %c4073 = zext i32 %t4072 to i64
  %wp4074 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c4073, ptr %wp4074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf9c word 0x2a1703e4
  %r4075.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4075 = load i64, ptr %r4075.p, align 8, !alias.scope !3, !noalias !4
  %c4076 = trunc i64 %r4075 to i32
  %t4077 = or i32 0, %c4076
  %c4078 = zext i32 %t4077 to i64
  %wp4079 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4078, ptr %wp4079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dafa0 word 0x2a1903e5
  %r4080.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4080 = load i64, ptr %r4080.p, align 8, !alias.scope !3, !noalias !4
  %c4081 = trunc i64 %r4080 to i32
  %t4082 = or i32 0, %c4081
  %c4083 = zext i32 %t4082 to i64
  %wp4084 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4083, ptr %wp4084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dafa4 word 0x17fffde0
  br label %L_8001da724
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361680512, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001da280
L_8001da2cc_ft:
  ; @pc 0x8001da2cc word 0x79403aa8
  %r117.p = getelementptr inbounds i8, ptr %c, i64 168
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 28
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i16, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i16 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2d0 word 0x5280078a
  %c123 = zext i32 60 to i64
  %wp124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2d4 word 0xf9402689
  %r125.p = getelementptr inbounds i8, ptr %c, i64 160
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %t126 = add i64 %r125, 72
  %gmp127 = inttoptr i64 %t126 to ptr
  %gml128 = load i64, ptr %gmp127, align 1, !alias.scope !4, !noalias !3
  %wp129 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml128, ptr %wp129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2d8 word 0x9baa2508
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
  ; @pc 0x8001da2dc word 0xb9801509
  %r140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %t141 = add i64 %r140, 20
  %gmp142 = inttoptr i64 %t141 to ptr
  %gml143 = load i32, ptr %gmp142, align 1, !alias.scope !4, !noalias !3
  %c144 = sext i32 %gml143 to i64
  %wp145 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2e0 word 0xf9400a88
  %r146.p = getelementptr inbounds i8, ptr %c, i64 160
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %t147 = add i64 %r146, 16
  %gmp148 = inttoptr i64 %t147 to ptr
  %gml149 = load i64, ptr %gmp148, align 1, !alias.scope !4, !noalias !3
  %wp150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2e4 word 0x8b090100
  %r151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %r152.p = getelementptr inbounds i8, ptr %c, i64 72
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = add i64 %r151, %r152
  %wp154 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t153, ptr %wp154, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da2e8
L_8001da2f8_ft:
  ; @pc 0x8001da2f8 word 0xf940168b
  %r191.p = getelementptr inbounds i8, ptr %c, i64 160
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 40
  %gmp193 = inttoptr i64 %t192 to ptr
  %gml194 = load i64, ptr %gmp193, align 1, !alias.scope !4, !noalias !3
  %wp195 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml194, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da2fc word 0xaa1f03ea
  %t196 = or i64 0, 0
  %wp197 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t196, ptr %wp197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da300 word 0xb980500c
  %r198.p = getelementptr inbounds i8, ptr %c, i64 0
  %r198 = load i64, ptr %r198.p, align 8, !alias.scope !3, !noalias !4
  %t199 = add i64 %r198, 80
  %gmp200 = inttoptr i64 %t199 to ptr
  %gml201 = load i32, ptr %gmp200, align 1, !alias.scope !4, !noalias !3
  %c202 = sext i32 %gml201 to i64
  %wp203 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c202, ptr %wp203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da304 word 0xf940030d
  %r204.p = getelementptr inbounds i8, ptr %c, i64 192
  %r204 = load i64, ptr %r204.p, align 8, !alias.scope !3, !noalias !4
  %gmp205 = inttoptr i64 %r204 to ptr
  %gml206 = load i64, ptr %gmp205, align 1, !alias.scope !4, !noalias !3
  %wp207 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml206, ptr %wp207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da308 word 0x910005ae
  %r208.p = getelementptr inbounds i8, ptr %c, i64 104
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %t209 = add i64 %r208, 1
  %wp210 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t209, ptr %wp210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da30c word 0xb980116b
  %r211.p = getelementptr inbounds i8, ptr %c, i64 88
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %t212 = add i64 %r211, 16
  %gmp213 = inttoptr i64 %t212 to ptr
  %gml214 = load i32, ptr %gmp213, align 1, !alias.scope !4, !noalias !3
  %c215 = sext i32 %gml214 to i64
  %wp216 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c215, ptr %wp216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da310 word 0x8b0b010b
  %r217.p = getelementptr inbounds i8, ptr %c, i64 64
  %r217 = load i64, ptr %r217.p, align 8, !alias.scope !3, !noalias !4
  %r218.p = getelementptr inbounds i8, ptr %c, i64 88
  %r218 = load i64, ptr %r218.p, align 8, !alias.scope !3, !noalias !4
  %t219 = add i64 %r217, %r218
  %wp220 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t219, ptr %wp220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da314 word 0x8b0c116b
  %r221.p = getelementptr inbounds i8, ptr %c, i64 88
  %r221 = load i64, ptr %r221.p, align 8, !alias.scope !3, !noalias !4
  %r222.p = getelementptr inbounds i8, ptr %c, i64 96
  %r222 = load i64, ptr %r222.p, align 8, !alias.scope !3, !noalias !4
  %t223 = shl i64 %r222, 4
  %t224 = add i64 %r221, %t223
  %wp225 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t224, ptr %wp225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da318 word 0xb980250c
  %r226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %t227 = add i64 %r226, 36
  %gmp228 = inttoptr i64 %t227 to ptr
  %gml229 = load i32, ptr %gmp228, align 1, !alias.scope !4, !noalias !3
  %c230 = sext i32 %gml229 to i64
  %wp231 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c230, ptr %wp231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da31c word 0x8b0c010c
  %r232.p = getelementptr inbounds i8, ptr %c, i64 64
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %r233.p = getelementptr inbounds i8, ptr %c, i64 96
  %r233 = load i64, ptr %r233.p, align 8, !alias.scope !3, !noalias !4
  %t234 = add i64 %r232, %r233
  %wp235 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t234, ptr %wp235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da320 word 0x91000d8f
  %r236.p = getelementptr inbounds i8, ptr %c, i64 96
  %r236 = load i64, ptr %r236.p, align 8, !alias.scope !3, !noalias !4
  %t237 = add i64 %r236, 3
  %wp238 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t237, ptr %wp238, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da324
L_8001da338_ft:
  ; @pc 0x8001da338 word 0xaa1f03f0
  %t279 = or i64 0, 0
  %wp280 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t279, ptr %wp280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da33c word 0x8b1101f1
  %r281.p = getelementptr inbounds i8, ptr %c, i64 120
  %r281 = load i64, ptr %r281.p, align 8, !alias.scope !3, !noalias !4
  %r282.p = getelementptr inbounds i8, ptr %c, i64 136
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %t283 = add i64 %r281, %r282
  %wp284 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t283, ptr %wp284, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da340
L_8001da358_ft:
  ; @pc 0x8001da358 word 0x34000481
  %r333.p = getelementptr inbounds i8, ptr %c, i64 8
  %r333 = load i64, ptr %r333.p, align 8, !alias.scope !3, !noalias !4
  %c334 = trunc i64 %r333 to i32
  %cmp335 = icmp eq i32 %c334, 0
  br i1 %cmp335, label %L_8001da3e8, label %L_8001da35c_ft
L_8001da35c_ft:
  ; @pc 0x8001da35c word 0xf150021f
  %r336.p = getelementptr inbounds i8, ptr %c, i64 128
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %t337 = sub i64 %r336, 4194304
  %fn338 = icmp slt i64 %t337, 0
  %fz339 = icmp eq i64 %t337, 0
  %fc340 = icmp uge i64 %r336, 4194304
  %fx1341 = xor i64 %r336, 4194304
  %fx2342 = xor i64 %r336, %t337
  %fva343 = and i64 %fx1341, %fx2342
  %fv344 = icmp slt i64 %fva343, 0
  %nz345 = zext i1 %fn338 to i64
  %zz346 = zext i1 %fz339 to i64
  %cz347 = zext i1 %fc340 to i64
  %vz348 = zext i1 %fv344 to i64
  %ns349 = shl i64 %nz345, 31
  %zs350 = shl i64 %zz346, 30
  %cs351 = shl i64 %cz347, 29
  %vs352 = shl i64 %vz348, 28
  %nzor353 = or i64 %ns349, %zs350
  %cvor354 = or i64 %cs351, %vs352
  %nzcv355 = or i64 %nzor353, %cvor354
  %wp356 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv355, ptr %wp356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da360 word 0x54000280
  %r357.p = getelementptr inbounds i8, ptr %c, i64 272
  %r357 = load i64, ptr %r357.p, align 8, !alias.scope !3, !noalias !4
  %fsh359 = lshr i64 %r357, 30
  %cond358 = trunc i64 %fsh359 to i1
  br i1 %cond358, label %L_8001da3b0, label %L_8001da364_ft
L_8001da364_ft:
  ; @pc 0x8001da364 word 0x387069c1
  %r360.p = getelementptr inbounds i8, ptr %c, i64 112
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %r361.p = getelementptr inbounds i8, ptr %c, i64 128
  %r361 = load i64, ptr %r361.p, align 8, !alias.scope !3, !noalias !4
  %t362 = add i64 %r360, %r361
  %gmp363 = inttoptr i64 %t362 to ptr
  %gml364 = load i8, ptr %gmp363, align 1, !alias.scope !4, !noalias !3
  %c365 = zext i8 %gml364 to i64
  %wp366 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c365, ptr %wp366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da368 word 0x385fe002
  %r367.p = getelementptr inbounds i8, ptr %c, i64 0
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = add i64 %r367, -2
  %gmp369 = inttoptr i64 %t368 to ptr
  %gml370 = load i8, ptr %gmp369, align 1, !alias.scope !4, !noalias !3
  %c371 = zext i8 %gml370 to i64
  %wp372 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c371, ptr %wp372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da36c word 0x6b02003f
  %r373.p = getelementptr inbounds i8, ptr %c, i64 8
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %c374 = trunc i64 %r373 to i32
  %r375.p = getelementptr inbounds i8, ptr %c, i64 16
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %c376 = trunc i64 %r375 to i32
  %t377 = sub i32 %c374, %c376
  %fn378 = icmp slt i32 %t377, 0
  %fz379 = icmp eq i32 %t377, 0
  %fc380 = icmp uge i32 %c374, %c376
  %fx1381 = xor i32 %c374, %c376
  %fx2382 = xor i32 %c374, %t377
  %fva383 = and i32 %fx1381, %fx2382
  %fv384 = icmp slt i32 %fva383, 0
  %nz385 = zext i1 %fn378 to i64
  %zz386 = zext i1 %fz379 to i64
  %cz387 = zext i1 %fc380 to i64
  %vz388 = zext i1 %fv384 to i64
  %ns389 = shl i64 %nz385, 31
  %zs390 = shl i64 %zz386, 30
  %cs391 = shl i64 %cz387, 29
  %vs392 = shl i64 %vz388, 28
  %nzor393 = or i64 %ns389, %zs390
  %cvor394 = or i64 %cs391, %vs392
  %nzcv395 = or i64 %nzor393, %cvor394
  %wp396 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv395, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da370 word 0x54000201
  %r397.p = getelementptr inbounds i8, ptr %c, i64 272
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %fsh399 = lshr i64 %r397, 30
  %ftr400 = trunc i64 %fsh399 to i1
  %cond398 = xor i1 %ftr400, true
  br i1 %cond398, label %L_8001da3b0, label %L_8001da374_ft
L_8001da374_ft:
  ; @pc 0x8001da374 word 0x340003a1
  %r401.p = getelementptr inbounds i8, ptr %c, i64 8
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %c402 = trunc i64 %r401 to i32
  %cmp403 = icmp eq i32 %c402, 0
  br i1 %cmp403, label %L_8001da3e8, label %L_8001da378_ft
L_8001da378_ft:
  ; @pc 0x8001da378 word 0x39400641
  %r404.p = getelementptr inbounds i8, ptr %c, i64 144
  %r404 = load i64, ptr %r404.p, align 8, !alias.scope !3, !noalias !4
  %t405 = add i64 %r404, 1
  %gmp406 = inttoptr i64 %t405 to ptr
  %gml407 = load i8, ptr %gmp406, align 1, !alias.scope !4, !noalias !3
  %c408 = zext i8 %gml407 to i64
  %wp409 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c408, ptr %wp409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da37c word 0x385ff000
  %r410.p = getelementptr inbounds i8, ptr %c, i64 0
  %r410 = load i64, ptr %r410.p, align 8, !alias.scope !3, !noalias !4
  %t411 = add i64 %r410, -1
  %gmp412 = inttoptr i64 %t411 to ptr
  %gml413 = load i8, ptr %gmp412, align 1, !alias.scope !4, !noalias !3
  %c414 = zext i8 %gml413 to i64
  %wp415 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c414, ptr %wp415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da380 word 0x6b00003f
  %r416.p = getelementptr inbounds i8, ptr %c, i64 8
  %r416 = load i64, ptr %r416.p, align 8, !alias.scope !3, !noalias !4
  %c417 = trunc i64 %r416 to i32
  %r418.p = getelementptr inbounds i8, ptr %c, i64 0
  %r418 = load i64, ptr %r418.p, align 8, !alias.scope !3, !noalias !4
  %c419 = trunc i64 %r418 to i32
  %t420 = sub i32 %c417, %c419
  %fn421 = icmp slt i32 %t420, 0
  %fz422 = icmp eq i32 %t420, 0
  %fc423 = icmp uge i32 %c417, %c419
  %fx1424 = xor i32 %c417, %c419
  %fx2425 = xor i32 %c417, %t420
  %fva426 = and i32 %fx1424, %fx2425
  %fv427 = icmp slt i32 %fva426, 0
  %nz428 = zext i1 %fn421 to i64
  %zz429 = zext i1 %fz422 to i64
  %cz430 = zext i1 %fc423 to i64
  %vz431 = zext i1 %fv427 to i64
  %ns432 = shl i64 %nz428, 31
  %zs433 = shl i64 %zz429, 30
  %cs434 = shl i64 %cz430, 29
  %vs435 = shl i64 %vz431, 28
  %nzor436 = or i64 %ns432, %zs433
  %cvor437 = or i64 %cs434, %vs435
  %nzcv438 = or i64 %nzor436, %cvor437
  %wp439 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv438, ptr %wp439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da384 word 0x54000161
  %r440.p = getelementptr inbounds i8, ptr %c, i64 272
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %fsh442 = lshr i64 %r440, 30
  %ftr443 = trunc i64 %fsh442 to i1
  %cond441 = xor i1 %ftr443, true
  br i1 %cond441, label %L_8001da3b0, label %L_8001da388_ft
L_8001da388_ft:
  ; @pc 0x8001da388 word 0x34000301
  %r444.p = getelementptr inbounds i8, ptr %c, i64 8
  %r444 = load i64, ptr %r444.p, align 8, !alias.scope !3, !noalias !4
  %c445 = trunc i64 %r444 to i32
  %cmp446 = icmp eq i32 %c445, 0
  br i1 %cmp446, label %L_8001da3e8, label %L_8001da38c_ft
L_8001da38c_ft:
  ; @pc 0x8001da38c word 0x39400a52
  %r447.p = getelementptr inbounds i8, ptr %c, i64 144
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %t448 = add i64 %r447, 2
  %gmp449 = inttoptr i64 %t448 to ptr
  %gml450 = load i8, ptr %gmp449, align 1, !alias.scope !4, !noalias !3
  %c451 = zext i8 %gml450 to i64
  %wp452 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c451, ptr %wp452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da390 word 0x38706a20
  %r453.p = getelementptr inbounds i8, ptr %c, i64 136
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %r454.p = getelementptr inbounds i8, ptr %c, i64 128
  %r454 = load i64, ptr %r454.p, align 8, !alias.scope !3, !noalias !4
  %t455 = add i64 %r453, %r454
  %gmp456 = inttoptr i64 %t455 to ptr
  %gml457 = load i8, ptr %gmp456, align 1, !alias.scope !4, !noalias !3
  %c458 = zext i8 %gml457 to i64
  %wp459 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c458, ptr %wp459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da394 word 0x6b00025f
  %r460.p = getelementptr inbounds i8, ptr %c, i64 144
  %r460 = load i64, ptr %r460.p, align 8, !alias.scope !3, !noalias !4
  %c461 = trunc i64 %r460 to i32
  %r462.p = getelementptr inbounds i8, ptr %c, i64 0
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %c463 = trunc i64 %r462 to i32
  %t464 = sub i32 %c461, %c463
  %fn465 = icmp slt i32 %t464, 0
  %fz466 = icmp eq i32 %t464, 0
  %fc467 = icmp uge i32 %c461, %c463
  %fx1468 = xor i32 %c461, %c463
  %fx2469 = xor i32 %c461, %t464
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
  ; @pc 0x8001da398 word 0x540000c1
  %r484.p = getelementptr inbounds i8, ptr %c, i64 272
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %fsh486 = lshr i64 %r484, 30
  %ftr487 = trunc i64 %fsh486 to i1
  %cond485 = xor i1 %ftr487, true
  br i1 %cond485, label %L_8001da3b0, label %L_8001da39c_ft
L_8001da39c_ft:
  ; @pc 0x8001da39c word 0x34000272
  %r488.p = getelementptr inbounds i8, ptr %c, i64 144
  %r488 = load i64, ptr %r488.p, align 8, !alias.scope !3, !noalias !4
  %c489 = trunc i64 %r488 to i32
  %cmp490 = icmp eq i32 %c489, 0
  br i1 %cmp490, label %L_8001da3e8, label %L_8001da3a0_ft
L_8001da3a0_ft:
  ; @pc 0x8001da3a0 word 0x91001210
  %r491.p = getelementptr inbounds i8, ptr %c, i64 128
  %r491 = load i64, ptr %r491.p, align 8, !alias.scope !3, !noalias !4
  %t492 = add i64 %r491, 4
  %wp493 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t492, ptr %wp493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3a4 word 0x17ffffe7
  br label %L_8001da340
L_8001da3a8_unreach:
  ; @pc 0x8001da3a8 word 0xd503201f
  ; @pc 0x8001da3ac word 0xd503201f
  br label %L_8001da3b0
L_8001da3c0_ft:
  ; @pc 0x8001da3c0 word 0x52800036
  %c526 = zext i32 1 to i64
  %wp527 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c526, ptr %wp527, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da3c4
L_8001da3d4_ft:
  ; @pc 0x8001da3d4 word 0xb001bc34
  %wp542 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419896320, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3d8 word 0x2a1f03fa
  %t543 = or i32 0, 0
  %c544 = zext i32 %t543 to i64
  %wp545 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c544, ptr %wp545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3dc word 0xf9455a94
  %r546.p = getelementptr inbounds i8, ptr %c, i64 160
  %r546 = load i64, ptr %r546.p, align 8, !alias.scope !3, !noalias !4
  %t547 = add i64 %r546, 2736
  %gmp548 = inttoptr i64 %t547 to ptr
  %gml549 = load i64, ptr %gmp548, align 1, !alias.scope !4, !noalias !3
  %wp550 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml549, ptr %wp550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3e0 word 0x2a1f03fc
  %t551 = or i32 0, 0
  %c552 = zext i32 %t551 to i64
  %wp553 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c552, ptr %wp553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da3e4 word 0x140000d0
  br label %L_8001da724
L_8001da404_ft:
  ; @pc 0x8001da404 word 0xf94006a8
  %r590.p = getelementptr inbounds i8, ptr %c, i64 168
  %r590 = load i64, ptr %r590.p, align 8, !alias.scope !3, !noalias !4
  %t591 = add i64 %r590, 8
  %gmp592 = inttoptr i64 %t591 to ptr
  %gml593 = load i64, ptr %gmp592, align 1, !alias.scope !4, !noalias !3
  %wp594 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml593, ptr %wp594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da408 word 0x7941b909
  %r595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r595 = load i64, ptr %r595.p, align 8, !alias.scope !3, !noalias !4
  %t596 = add i64 %r595, 220
  %gmp597 = inttoptr i64 %t596 to ptr
  %gml598 = load i16, ptr %gmp597, align 1, !alias.scope !4, !noalias !3
  %c599 = zext i16 %gml598 to i64
  %wp600 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c599, ptr %wp600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da40c word 0x34000869
  %r601.p = getelementptr inbounds i8, ptr %c, i64 72
  %r601 = load i64, ptr %r601.p, align 8, !alias.scope !3, !noalias !4
  %c602 = trunc i64 %r601 to i32
  %cmp603 = icmp eq i32 %c602, 0
  br i1 %cmp603, label %L_8001da518, label %L_8001da410
L_8001da420_ft:
  ; @pc 0x8001da420 word 0x79400e88
  %r641.p = getelementptr inbounds i8, ptr %c, i64 160
  %r641 = load i64, ptr %r641.p, align 8, !alias.scope !3, !noalias !4
  %t642 = add i64 %r641, 6
  %gmp643 = inttoptr i64 %t642 to ptr
  %gml644 = load i16, ptr %gmp643, align 1, !alias.scope !4, !noalias !3
  %c645 = zext i16 %gml644 to i64
  %wp646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da424 word 0x6b05015f
  %r647.p = getelementptr inbounds i8, ptr %c, i64 80
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %c648 = trunc i64 %r647 to i32
  %r649.p = getelementptr inbounds i8, ptr %c, i64 40
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
  ; @pc 0x8001da428 word 0x12003914
  %r671.p = getelementptr inbounds i8, ptr %c, i64 64
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %c672 = trunc i64 %r671 to i32
  %t673 = and i32 %c672, 32767
  %c674 = zext i32 %t673 to i64
  %wp675 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c674, ptr %wp675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da42c word 0x540025a0
  %r676.p = getelementptr inbounds i8, ptr %c, i64 272
  %r676 = load i64, ptr %r676.p, align 8, !alias.scope !3, !noalias !4
  %fsh678 = lshr i64 %r676, 30
  %cond677 = trunc i64 %fsh678 to i1
  br i1 %cond677, label %L_8001da8e0, label %L_8001da430_ft
L_8001da430_ft:
  ; @pc 0x8001da430 word 0x2a1f03f9
  %t679 = or i32 0, 0
  %c680 = zext i32 %t679 to i64
  %wp681 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c680, ptr %wp681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da434 word 0x2a1f03fa
  %t682 = or i32 0, 0
  %c683 = zext i32 %t682 to i64
  %wp684 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c683, ptr %wp684, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da438
L_8001da450_ft:
  ; @pc 0x8001da450 word 0xf94006a8
  %r704.p = getelementptr inbounds i8, ptr %c, i64 168
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %t705 = add i64 %r704, 8
  %gmp706 = inttoptr i64 %t705 to ptr
  %gml707 = load i64, ptr %gmp706, align 1, !alias.scope !4, !noalias !3
  %wp708 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml707, ptr %wp708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da454 word 0xb9406109
  %r709.p = getelementptr inbounds i8, ptr %c, i64 64
  %r709 = load i64, ptr %r709.p, align 8, !alias.scope !3, !noalias !4
  %t710 = add i64 %r709, 96
  %gmp711 = inttoptr i64 %t710 to ptr
  %gml712 = load i32, ptr %gmp711, align 1, !alias.scope !4, !noalias !3
  %c713 = zext i32 %gml712 to i64
  %wp714 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c713, ptr %wp714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da458 word 0x6b37213f
  %r715.p = getelementptr inbounds i8, ptr %c, i64 72
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %c716 = trunc i64 %r715 to i32
  %r717.p = getelementptr inbounds i8, ptr %c, i64 184
  %r717 = load i64, ptr %r717.p, align 8, !alias.scope !3, !noalias !4
  %c718 = trunc i64 %r717 to i16
  %c719 = zext i16 %c718 to i64
  %c720 = trunc i64 %c719 to i32
  %t721 = sub i32 %c716, %c720
  %fn722 = icmp slt i32 %t721, 0
  %fz723 = icmp eq i32 %t721, 0
  %fc724 = icmp uge i32 %c716, %c720
  %fx1725 = xor i32 %c716, %c720
  %fx2726 = xor i32 %c716, %t721
  %fva727 = and i32 %fx1725, %fx2726
  %fv728 = icmp slt i32 %fva727, 0
  %nz729 = zext i1 %fn722 to i64
  %zz730 = zext i1 %fz723 to i64
  %cz731 = zext i1 %fc724 to i64
  %vz732 = zext i1 %fv728 to i64
  %ns733 = shl i64 %nz729, 31
  %zs734 = shl i64 %zz730, 30
  %cs735 = shl i64 %cz731, 29
  %vs736 = shl i64 %vz732, 28
  %nzor737 = or i64 %ns733, %zs734
  %cvor738 = or i64 %cs735, %vs736
  %nzcv739 = or i64 %nzor737, %cvor738
  %wp740 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv739, ptr %wp740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da45c word 0x5400374d
  %r741.p = getelementptr inbounds i8, ptr %c, i64 272
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %fsh743 = lshr i64 %r741, 30
  %ftr744 = trunc i64 %fsh743 to i1
  %fsh745 = lshr i64 %r741, 31
  %ftr746 = trunc i64 %fsh745 to i1
  %fsh747 = lshr i64 %r741, 28
  %ftr748 = trunc i64 %fsh747 to i1
  %fnz749 = xor i1 %ftr744, true
  %feq750 = icmp eq i1 %ftr746, %ftr748
  %fgt751 = and i1 %fnz749, %feq750
  %cond742 = xor i1 %fgt751, true
  br i1 %cond742, label %L_8001dab44, label %L_8001da460_ft
L_8001da460_ft:
  ; @pc 0x8001da460 word 0xf9403509
  %r752.p = getelementptr inbounds i8, ptr %c, i64 64
  %r752 = load i64, ptr %r752.p, align 8, !alias.scope !3, !noalias !4
  %t753 = add i64 %r752, 104
  %gmp754 = inttoptr i64 %t753 to ptr
  %gml755 = load i64, ptr %gmp754, align 1, !alias.scope !4, !noalias !3
  %wp756 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml755, ptr %wp756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da464 word 0x92403eea
  %r757.p = getelementptr inbounds i8, ptr %c, i64 184
  %r757 = load i64, ptr %r757.p, align 8, !alias.scope !3, !noalias !4
  %t758 = and i64 %r757, 65535
  %wp759 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t758, ptr %wp759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da468 word 0xf86a7937
  %r760.p = getelementptr inbounds i8, ptr %c, i64 72
  %r760 = load i64, ptr %r760.p, align 8, !alias.scope !3, !noalias !4
  %r761.p = getelementptr inbounds i8, ptr %c, i64 80
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %t762 = shl i64 %r761, 3
  %t763 = add i64 %r760, %t762
  %gmp764 = inttoptr i64 %t763 to ptr
  %gml765 = load i64, ptr %gmp764, align 1, !alias.scope !4, !noalias !3
  %wp766 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml765, ptr %wp766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da46c word 0xb4003957
  %r767.p = getelementptr inbounds i8, ptr %c, i64 184
  %r767 = load i64, ptr %r767.p, align 8, !alias.scope !3, !noalias !4
  %cmp768 = icmp eq i64 %r767, 0
  br i1 %cmp768, label %L_8001dab94, label %L_8001da470_ft
L_8001da470_ft:
  ; @pc 0x8001da470 word 0xf94002e8
  %r769.p = getelementptr inbounds i8, ptr %c, i64 184
  %r769 = load i64, ptr %r769.p, align 8, !alias.scope !3, !noalias !4
  %gmp770 = inttoptr i64 %r769 to ptr
  %gml771 = load i64, ptr %gmp770, align 1, !alias.scope !4, !noalias !3
  %wp772 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml771, ptr %wp772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da474 word 0xf9404d08
  %r773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r773 = load i64, ptr %r773.p, align 8, !alias.scope !3, !noalias !4
  %t774 = add i64 %r773, 152
  %gmp775 = inttoptr i64 %t774 to ptr
  %gml776 = load i64, ptr %gmp775, align 1, !alias.scope !4, !noalias !3
  %wp777 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml776, ptr %wp777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da478 word 0xeb03011f
  %r778.p = getelementptr inbounds i8, ptr %c, i64 64
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %r779.p = getelementptr inbounds i8, ptr %c, i64 24
  %r779 = load i64, ptr %r779.p, align 8, !alias.scope !3, !noalias !4
  %t780 = sub i64 %r778, %r779
  %fn781 = icmp slt i64 %t780, 0
  %fz782 = icmp eq i64 %t780, 0
  %fc783 = icmp uge i64 %r778, %r779
  %fx1784 = xor i64 %r778, %r779
  %fx2785 = xor i64 %r778, %t780
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
  ; @pc 0x8001da47c word 0x54003c01
  %r800.p = getelementptr inbounds i8, ptr %c, i64 272
  %r800 = load i64, ptr %r800.p, align 8, !alias.scope !3, !noalias !4
  %fsh802 = lshr i64 %r800, 30
  %ftr803 = trunc i64 %fsh802 to i1
  %cond801 = xor i1 %ftr803, true
  br i1 %cond801, label %L_8001dabfc, label %L_8001da480_ft
L_8001da480_ft:
  ; @pc 0x8001da480 word 0xf94006e8
  %r804.p = getelementptr inbounds i8, ptr %c, i64 184
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %t805 = add i64 %r804, 8
  %gmp806 = inttoptr i64 %t805 to ptr
  %gml807 = load i64, ptr %gmp806, align 1, !alias.scope !4, !noalias !3
  %wp808 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml807, ptr %wp808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da484 word 0x5280078b
  %c809 = zext i32 60 to i64
  %wp810 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c809, ptr %wp810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da488 word 0x79403ae9
  %r811.p = getelementptr inbounds i8, ptr %c, i64 184
  %r811 = load i64, ptr %r811.p, align 8, !alias.scope !3, !noalias !4
  %t812 = add i64 %r811, 28
  %gmp813 = inttoptr i64 %t812 to ptr
  %gml814 = load i16, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  %c815 = zext i16 %gml814 to i64
  %wp816 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c815, ptr %wp816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da48c word 0xf9400908
  %r817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r817 = load i64, ptr %r817.p, align 8, !alias.scope !3, !noalias !4
  %t818 = add i64 %r817, 16
  %gmp819 = inttoptr i64 %t818 to ptr
  %gml820 = load i64, ptr %gmp819, align 1, !alias.scope !4, !noalias !3
  %wp821 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml820, ptr %wp821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da490 word 0xf940250a
  %r822.p = getelementptr inbounds i8, ptr %c, i64 64
  %r822 = load i64, ptr %r822.p, align 8, !alias.scope !3, !noalias !4
  %t823 = add i64 %r822, 72
  %gmp824 = inttoptr i64 %t823 to ptr
  %gml825 = load i64, ptr %gmp824, align 1, !alias.scope !4, !noalias !3
  %wp826 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml825, ptr %wp826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da494 word 0xf9400908
  %r827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r827 = load i64, ptr %r827.p, align 8, !alias.scope !3, !noalias !4
  %t828 = add i64 %r827, 16
  %gmp829 = inttoptr i64 %t828 to ptr
  %gml830 = load i64, ptr %gmp829, align 1, !alias.scope !4, !noalias !3
  %wp831 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml830, ptr %wp831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da498 word 0x9bab2929
  %r832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r832 = load i64, ptr %r832.p, align 8, !alias.scope !3, !noalias !4
  %c833 = trunc i64 %r832 to i32
  %c834 = zext i32 %c833 to i64
  %r835.p = getelementptr inbounds i8, ptr %c, i64 88
  %r835 = load i64, ptr %r835.p, align 8, !alias.scope !3, !noalias !4
  %c836 = trunc i64 %r835 to i32
  %c837 = zext i32 %c836 to i64
  %t838 = mul i64 %c834, %c837
  %r839.p = getelementptr inbounds i8, ptr %c, i64 80
  %r839 = load i64, ptr %r839.p, align 8, !alias.scope !3, !noalias !4
  %t840 = add i64 %r839, %t838
  %wp841 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t840, ptr %wp841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da49c word 0xb9801529
  %r842.p = getelementptr inbounds i8, ptr %c, i64 72
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %t843 = add i64 %r842, 20
  %gmp844 = inttoptr i64 %t843 to ptr
  %gml845 = load i32, ptr %gmp844, align 1, !alias.scope !4, !noalias !3
  %c846 = sext i32 %gml845 to i64
  %wp847 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c846, ptr %wp847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4a0 word 0x8b090100
  %r848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r848 = load i64, ptr %r848.p, align 8, !alias.scope !3, !noalias !4
  %r849.p = getelementptr inbounds i8, ptr %c, i64 72
  %r849 = load i64, ptr %r849.p, align 8, !alias.scope !3, !noalias !4
  %t850 = add i64 %r848, %r849
  %wp851 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t850, ptr %wp851, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da4a4
L_8001da4a8_ft:
  ; @pc 0x8001da4a8 word 0xb9403c08
  %r855.p = getelementptr inbounds i8, ptr %c, i64 0
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %t856 = add i64 %r855, 60
  %gmp857 = inttoptr i64 %t856 to ptr
  %gml858 = load i32, ptr %gmp857, align 1, !alias.scope !4, !noalias !3
  %c859 = zext i32 %gml858 to i64
  %wp860 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c859, ptr %wp860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4ac word 0x0b34a108
  %r861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r861 = load i64, ptr %r861.p, align 8, !alias.scope !3, !noalias !4
  %c862 = trunc i64 %r861 to i32
  %r863.p = getelementptr inbounds i8, ptr %c, i64 160
  %r863 = load i64, ptr %r863.p, align 8, !alias.scope !3, !noalias !4
  %c864 = trunc i64 %r863 to i16
  %c865 = sext i16 %c864 to i64
  %c866 = trunc i64 %c865 to i32
  %t867 = add i32 %c862, %c866
  %c868 = zext i32 %t867 to i64
  %wp869 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c868, ptr %wp869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4b0 word 0xb9404c09
  %r870.p = getelementptr inbounds i8, ptr %c, i64 0
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %t871 = add i64 %r870, 76
  %gmp872 = inttoptr i64 %t871 to ptr
  %gml873 = load i32, ptr %gmp872, align 1, !alias.scope !4, !noalias !3
  %c874 = zext i32 %gml873 to i64
  %wp875 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c874, ptr %wp875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4b4 word 0x0b090108
  %r876.p = getelementptr inbounds i8, ptr %c, i64 64
  %r876 = load i64, ptr %r876.p, align 8, !alias.scope !3, !noalias !4
  %c877 = trunc i64 %r876 to i32
  %r878.p = getelementptr inbounds i8, ptr %c, i64 72
  %r878 = load i64, ptr %r878.p, align 8, !alias.scope !3, !noalias !4
  %c879 = trunc i64 %r878 to i32
  %t880 = add i32 %c877, %c879
  %c881 = zext i32 %t880 to i64
  %wp882 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c881, ptr %wp882, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da4b8
L_8001da4c4_ft:
  ; @pc 0x8001da4c4 word 0xf9400008
  %r896.p = getelementptr inbounds i8, ptr %c, i64 0
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %gmp897 = inttoptr i64 %r896 to ptr
  %gml898 = load i64, ptr %gmp897, align 1, !alias.scope !4, !noalias !3
  %wp899 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml898, ptr %wp899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4c8 word 0xb001bc29
  %wp900 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4cc word 0xf9400908
  %r901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = add i64 %r901, 16
  %gmp903 = inttoptr i64 %t902 to ptr
  %gml904 = load i64, ptr %gmp903, align 1, !alias.scope !4, !noalias !3
  %wp905 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml904, ptr %wp905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4d0 word 0xf9462929
  %r906.p = getelementptr inbounds i8, ptr %c, i64 72
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %t907 = add i64 %r906, 3152
  %gmp908 = inttoptr i64 %t907 to ptr
  %gml909 = load i64, ptr %gmp908, align 1, !alias.scope !4, !noalias !3
  %wp910 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml909, ptr %wp910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4d4 word 0xeb09011f
  %r911.p = getelementptr inbounds i8, ptr %c, i64 64
  %r911 = load i64, ptr %r911.p, align 8, !alias.scope !3, !noalias !4
  %r912.p = getelementptr inbounds i8, ptr %c, i64 72
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %t913 = sub i64 %r911, %r912
  %fn914 = icmp slt i64 %t913, 0
  %fz915 = icmp eq i64 %t913, 0
  %fc916 = icmp uge i64 %r911, %r912
  %fx1917 = xor i64 %r911, %r912
  %fx2918 = xor i64 %r911, %t913
  %fva919 = and i64 %fx1917, %fx2918
  %fv920 = icmp slt i64 %fva919, 0
  %nz921 = zext i1 %fn914 to i64
  %zz922 = zext i1 %fz915 to i64
  %cz923 = zext i1 %fc916 to i64
  %vz924 = zext i1 %fv920 to i64
  %ns925 = shl i64 %nz921, 31
  %zs926 = shl i64 %zz922, 30
  %cs927 = shl i64 %cz923, 29
  %vs928 = shl i64 %vz924, 28
  %nzor929 = or i64 %ns925, %zs926
  %cvor930 = or i64 %cs927, %vs928
  %nzcv931 = or i64 %nzor929, %cvor930
  %wp932 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv931, ptr %wp932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da4d8 word 0x540023c1
  %r933.p = getelementptr inbounds i8, ptr %c, i64 272
  %r933 = load i64, ptr %r933.p, align 8, !alias.scope !3, !noalias !4
  %fsh935 = lshr i64 %r933, 30
  %ftr936 = trunc i64 %fsh935 to i1
  %cond934 = xor i1 %ftr936, true
  br i1 %cond934, label %L_8001da950, label %L_8001da4dc_ft
L_8001da4dc_ft:
  ; @pc 0x8001da4dc word 0xf9400400
  %r937.p = getelementptr inbounds i8, ptr %c, i64 0
  %r937 = load i64, ptr %r937.p, align 8, !alias.scope !3, !noalias !4
  %t938 = add i64 %r937, 8
  %gmp939 = inttoptr i64 %t938 to ptr
  %gml940 = load i64, ptr %gmp939, align 1, !alias.scope !4, !noalias !3
  %wp941 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml940, ptr %wp941, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da4e0
L_8001da528_ft:
  ; @pc 0x8001da528 word 0xf9403508
  %r1068.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1068 = load i64, ptr %r1068.p, align 8, !alias.scope !3, !noalias !4
  %t1069 = add i64 %r1068, 104
  %gmp1070 = inttoptr i64 %t1069 to ptr
  %gml1071 = load i64, ptr %gmp1070, align 1, !alias.scope !4, !noalias !3
  %wp1072 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1071, ptr %wp1072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da52c word 0xf8775917
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %r1074.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1074 = load i64, ptr %r1074.p, align 8, !alias.scope !3, !noalias !4
  %c1075 = trunc i64 %r1074 to i32
  %c1076 = zext i32 %c1075 to i64
  %t1077 = shl i64 %c1076, 3
  %t1078 = add i64 %r1073, %t1077
  %gmp1079 = inttoptr i64 %t1078 to ptr
  %gml1080 = load i64, ptr %gmp1079, align 1, !alias.scope !4, !noalias !3
  %wp1081 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1080, ptr %wp1081, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da530
L_8001da548_ft:
  ; @pc 0x8001da548 word 0xf94002e8
  %r1102.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1102 = load i64, ptr %r1102.p, align 8, !alias.scope !3, !noalias !4
  %gmp1103 = inttoptr i64 %r1102 to ptr
  %gml1104 = load i64, ptr %gmp1103, align 1, !alias.scope !4, !noalias !3
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da54c word 0xb001bc21
  %wp1106 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da550 word 0xaa1703e0
  %r1107.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1107 = load i64, ptr %r1107.p, align 8, !alias.scope !3, !noalias !4
  %t1108 = or i64 0, %r1107
  %wp1109 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1108, ptr %wp1109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da554 word 0xaa1803f3
  %r1110.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1110 = load i64, ptr %r1110.p, align 8, !alias.scope !3, !noalias !4
  %t1111 = or i64 0, %r1110
  %wp1112 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1111, ptr %wp1112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da558 word 0x2a0403f8
  %r1113.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1113 = load i64, ptr %r1113.p, align 8, !alias.scope !3, !noalias !4
  %c1114 = trunc i64 %r1113 to i32
  %t1115 = or i32 0, %c1114
  %c1116 = zext i32 %t1115 to i64
  %wp1117 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1116, ptr %wp1117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da55c word 0xf9400108
  %r1118.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1118 = load i64, ptr %r1118.p, align 8, !alias.scope !3, !noalias !4
  %gmp1119 = inttoptr i64 %r1118 to ptr
  %gml1120 = load i64, ptr %gmp1119, align 1, !alias.scope !4, !noalias !3
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1120, ptr %wp1121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da560 word 0xf9452821
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %t1123 = add i64 %r1122, 2640
  %gmp1124 = inttoptr i64 %t1123 to ptr
  %gml1125 = load i64, ptr %gmp1124, align 1, !alias.scope !4, !noalias !3
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da564 word 0xaa1503fb
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %t1128 = or i64 0, %r1127
  %wp1129 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1128, ptr %wp1129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da568 word 0xaa0303f5
  %r1130.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1130 = load i64, ptr %r1130.p, align 8, !alias.scope !3, !noalias !4
  %t1131 = or i64 0, %r1130
  %wp1132 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1131, ptr %wp1132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da56c word 0x2a0503f9
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %c1134 = trunc i64 %r1133 to i32
  %t1135 = or i32 0, %c1134
  %c1136 = zext i32 %t1135 to i64
  %wp1137 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1136, ptr %wp1137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da570 word 0xd63f0100
  %r1138.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1138 = load i64, ptr %r1138.p, align 8, !alias.scope !3, !noalias !4
  %fp1139 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1138, ptr %fp1139, align 8, !alias.scope !3, !noalias !4
  %wp1140 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681268, ptr %wp1140, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da574 word 0xb94017ea
  %r1141.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1141 = load i64, ptr %r1141.p, align 8, !alias.scope !3, !noalias !4
  %t1142 = add i64 %r1141, 20
  %gmp1143 = inttoptr i64 %t1142 to ptr
  %gml1144 = load i32, ptr %gmp1143, align 1, !alias.scope !4, !noalias !3
  %c1145 = zext i32 %gml1144 to i64
  %wp1146 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1145, ptr %wp1146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da578 word 0x2a1803e4
  %r1147.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1147 = load i64, ptr %r1147.p, align 8, !alias.scope !3, !noalias !4
  %c1148 = trunc i64 %r1147 to i32
  %t1149 = or i32 0, %c1148
  %c1150 = zext i32 %t1149 to i64
  %wp1151 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1150, ptr %wp1151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da57c word 0xaa1303f8
  %r1152.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1152 = load i64, ptr %r1152.p, align 8, !alias.scope !3, !noalias !4
  %t1153 = or i64 0, %r1152
  %wp1154 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1153, ptr %wp1154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da580 word 0xf94007f3
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %t1156 = add i64 %r1155, 8
  %gmp1157 = inttoptr i64 %t1156 to ptr
  %gml1158 = load i64, ptr %gmp1157, align 1, !alias.scope !4, !noalias !3
  %wp1159 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1158, ptr %wp1159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da584 word 0x2a1903e5
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %c1161 = trunc i64 %r1160 to i32
  %t1162 = or i32 0, %c1161
  %c1163 = zext i32 %t1162 to i64
  %wp1164 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1163, ptr %wp1164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da588 word 0xaa1503e3
  %r1165.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1165 = load i64, ptr %r1165.p, align 8, !alias.scope !3, !noalias !4
  %t1166 = or i64 0, %r1165
  %wp1167 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1166, ptr %wp1167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da58c word 0xaa1b03f5
  %r1168.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1168 = load i64, ptr %r1168.p, align 8, !alias.scope !3, !noalias !4
  %t1169 = or i64 0, %r1168
  %wp1170 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1169, ptr %wp1170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da590 word 0xb5000bc0
  %r1171.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1171 = load i64, ptr %r1171.p, align 8, !alias.scope !3, !noalias !4
  %cmp1172 = icmp ne i64 %r1171, 0
  br i1 %cmp1172, label %L_8001da708, label %L_8001da594
L_8001da5a8_ft:
  ; @pc 0x8001da5a8 word 0xf94002e8
  %r1189.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1189 = load i64, ptr %r1189.p, align 8, !alias.scope !3, !noalias !4
  %gmp1190 = inttoptr i64 %r1189 to ptr
  %gml1191 = load i64, ptr %gmp1190, align 1, !alias.scope !4, !noalias !3
  %wp1192 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1191, ptr %wp1192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5ac word 0xb001bc21
  %wp1193 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5b0 word 0xaa1703e0
  %r1194.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1194 = load i64, ptr %r1194.p, align 8, !alias.scope !3, !noalias !4
  %t1195 = or i64 0, %r1194
  %wp1196 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1195, ptr %wp1196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5b4 word 0xaa1803f3
  %r1197.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1197 = load i64, ptr %r1197.p, align 8, !alias.scope !3, !noalias !4
  %t1198 = or i64 0, %r1197
  %wp1199 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1198, ptr %wp1199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5b8 word 0x2a0403f8
  %r1200.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1200 = load i64, ptr %r1200.p, align 8, !alias.scope !3, !noalias !4
  %c1201 = trunc i64 %r1200 to i32
  %t1202 = or i32 0, %c1201
  %c1203 = zext i32 %t1202 to i64
  %wp1204 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1203, ptr %wp1204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5bc word 0xf9400108
  %r1205.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1205 = load i64, ptr %r1205.p, align 8, !alias.scope !3, !noalias !4
  %gmp1206 = inttoptr i64 %r1205 to ptr
  %gml1207 = load i64, ptr %gmp1206, align 1, !alias.scope !4, !noalias !3
  %wp1208 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1207, ptr %wp1208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5c0 word 0xf9453021
  %r1209.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1209 = load i64, ptr %r1209.p, align 8, !alias.scope !3, !noalias !4
  %t1210 = add i64 %r1209, 2656
  %gmp1211 = inttoptr i64 %t1210 to ptr
  %gml1212 = load i64, ptr %gmp1211, align 1, !alias.scope !4, !noalias !3
  %wp1213 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1212, ptr %wp1213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5c4 word 0xaa1503fb
  %r1214.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1214 = load i64, ptr %r1214.p, align 8, !alias.scope !3, !noalias !4
  %t1215 = or i64 0, %r1214
  %wp1216 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1215, ptr %wp1216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5c8 word 0xaa0303f5
  %r1217.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1217 = load i64, ptr %r1217.p, align 8, !alias.scope !3, !noalias !4
  %t1218 = or i64 0, %r1217
  %wp1219 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1218, ptr %wp1219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5cc word 0x2a0503f9
  %r1220.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1220 = load i64, ptr %r1220.p, align 8, !alias.scope !3, !noalias !4
  %c1221 = trunc i64 %r1220 to i32
  %t1222 = or i32 0, %c1221
  %c1223 = zext i32 %t1222 to i64
  %wp1224 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1223, ptr %wp1224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5d0 word 0xd63f0100
  %r1225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1225 = load i64, ptr %r1225.p, align 8, !alias.scope !3, !noalias !4
  %fp1226 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1225, ptr %fp1226, align 8, !alias.scope !3, !noalias !4
  %wp1227 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681364, ptr %wp1227, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da5d4 word 0xb94017ea
  %r1228.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1228 = load i64, ptr %r1228.p, align 8, !alias.scope !3, !noalias !4
  %t1229 = add i64 %r1228, 20
  %gmp1230 = inttoptr i64 %t1229 to ptr
  %gml1231 = load i32, ptr %gmp1230, align 1, !alias.scope !4, !noalias !3
  %c1232 = zext i32 %gml1231 to i64
  %wp1233 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1232, ptr %wp1233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5d8 word 0x2a1803e4
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %c1235 = trunc i64 %r1234 to i32
  %t1236 = or i32 0, %c1235
  %c1237 = zext i32 %t1236 to i64
  %wp1238 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1237, ptr %wp1238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5dc word 0xaa1303f8
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %t1240 = or i64 0, %r1239
  %wp1241 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1240, ptr %wp1241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5e0 word 0xf94007f3
  %r1242.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1242 = load i64, ptr %r1242.p, align 8, !alias.scope !3, !noalias !4
  %t1243 = add i64 %r1242, 8
  %gmp1244 = inttoptr i64 %t1243 to ptr
  %gml1245 = load i64, ptr %gmp1244, align 1, !alias.scope !4, !noalias !3
  %wp1246 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1245, ptr %wp1246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5e4 word 0x2a1903e5
  %r1247.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1247 = load i64, ptr %r1247.p, align 8, !alias.scope !3, !noalias !4
  %c1248 = trunc i64 %r1247 to i32
  %t1249 = or i32 0, %c1248
  %c1250 = zext i32 %t1249 to i64
  %wp1251 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1250, ptr %wp1251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5e8 word 0xaa1503e3
  %r1252.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1252 = load i64, ptr %r1252.p, align 8, !alias.scope !3, !noalias !4
  %t1253 = or i64 0, %r1252
  %wp1254 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1253, ptr %wp1254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5ec word 0xaa1b03f5
  %r1255.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1255 = load i64, ptr %r1255.p, align 8, !alias.scope !3, !noalias !4
  %t1256 = or i64 0, %r1255
  %wp1257 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1256, ptr %wp1257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da5f0 word 0xb50008c0
  %r1258.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1258 = load i64, ptr %r1258.p, align 8, !alias.scope !3, !noalias !4
  %cmp1259 = icmp ne i64 %r1258, 0
  br i1 %cmp1259, label %L_8001da708, label %L_8001da5f4
L_8001da608_ft:
  ; @pc 0x8001da608 word 0xf94002e8
  %r1276.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1276 = load i64, ptr %r1276.p, align 8, !alias.scope !3, !noalias !4
  %gmp1277 = inttoptr i64 %r1276 to ptr
  %gml1278 = load i64, ptr %gmp1277, align 1, !alias.scope !4, !noalias !3
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1278, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da60c word 0xb001bc21
  %wp1280 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da610 word 0xaa1703e0
  %r1281.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1281 = load i64, ptr %r1281.p, align 8, !alias.scope !3, !noalias !4
  %t1282 = or i64 0, %r1281
  %wp1283 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1282, ptr %wp1283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da614 word 0xaa1803f3
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %t1285 = or i64 0, %r1284
  %wp1286 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1285, ptr %wp1286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da618 word 0x2a0403f8
  %r1287.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1287 = load i64, ptr %r1287.p, align 8, !alias.scope !3, !noalias !4
  %c1288 = trunc i64 %r1287 to i32
  %t1289 = or i32 0, %c1288
  %c1290 = zext i32 %t1289 to i64
  %wp1291 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1290, ptr %wp1291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da61c word 0xf9400108
  %r1292.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1292 = load i64, ptr %r1292.p, align 8, !alias.scope !3, !noalias !4
  %gmp1293 = inttoptr i64 %r1292 to ptr
  %gml1294 = load i64, ptr %gmp1293, align 1, !alias.scope !4, !noalias !3
  %wp1295 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1294, ptr %wp1295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da620 word 0xf9453821
  %r1296.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1296 = load i64, ptr %r1296.p, align 8, !alias.scope !3, !noalias !4
  %t1297 = add i64 %r1296, 2672
  %gmp1298 = inttoptr i64 %t1297 to ptr
  %gml1299 = load i64, ptr %gmp1298, align 1, !alias.scope !4, !noalias !3
  %wp1300 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1299, ptr %wp1300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da624 word 0xaa1503fb
  %r1301.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1301 = load i64, ptr %r1301.p, align 8, !alias.scope !3, !noalias !4
  %t1302 = or i64 0, %r1301
  %wp1303 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1302, ptr %wp1303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da628 word 0xaa0303f5
  %r1304.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1304 = load i64, ptr %r1304.p, align 8, !alias.scope !3, !noalias !4
  %t1305 = or i64 0, %r1304
  %wp1306 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1305, ptr %wp1306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da62c word 0x2a0503f9
  %r1307.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1307 = load i64, ptr %r1307.p, align 8, !alias.scope !3, !noalias !4
  %c1308 = trunc i64 %r1307 to i32
  %t1309 = or i32 0, %c1308
  %c1310 = zext i32 %t1309 to i64
  %wp1311 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1310, ptr %wp1311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da630 word 0xd63f0100
  %r1312.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1312 = load i64, ptr %r1312.p, align 8, !alias.scope !3, !noalias !4
  %fp1313 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1312, ptr %fp1313, align 8, !alias.scope !3, !noalias !4
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681460, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da634 word 0xb94017ea
  %r1315.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1315 = load i64, ptr %r1315.p, align 8, !alias.scope !3, !noalias !4
  %t1316 = add i64 %r1315, 20
  %gmp1317 = inttoptr i64 %t1316 to ptr
  %gml1318 = load i32, ptr %gmp1317, align 1, !alias.scope !4, !noalias !3
  %c1319 = zext i32 %gml1318 to i64
  %wp1320 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1319, ptr %wp1320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da638 word 0x2a1803e4
  %r1321.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1321 = load i64, ptr %r1321.p, align 8, !alias.scope !3, !noalias !4
  %c1322 = trunc i64 %r1321 to i32
  %t1323 = or i32 0, %c1322
  %c1324 = zext i32 %t1323 to i64
  %wp1325 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1324, ptr %wp1325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da63c word 0xaa1303f8
  %r1326.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1326 = load i64, ptr %r1326.p, align 8, !alias.scope !3, !noalias !4
  %t1327 = or i64 0, %r1326
  %wp1328 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1327, ptr %wp1328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da640 word 0xf94007f3
  %r1329.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1329 = load i64, ptr %r1329.p, align 8, !alias.scope !3, !noalias !4
  %t1330 = add i64 %r1329, 8
  %gmp1331 = inttoptr i64 %t1330 to ptr
  %gml1332 = load i64, ptr %gmp1331, align 1, !alias.scope !4, !noalias !3
  %wp1333 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1332, ptr %wp1333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da644 word 0x2a1903e5
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %c1335 = trunc i64 %r1334 to i32
  %t1336 = or i32 0, %c1335
  %c1337 = zext i32 %t1336 to i64
  %wp1338 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1337, ptr %wp1338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da648 word 0xaa1503e3
  %r1339.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1339 = load i64, ptr %r1339.p, align 8, !alias.scope !3, !noalias !4
  %t1340 = or i64 0, %r1339
  %wp1341 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1340, ptr %wp1341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da64c word 0xaa1b03f5
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %t1343 = or i64 0, %r1342
  %wp1344 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1343, ptr %wp1344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da650 word 0xb50005c0
  %r1345.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1345 = load i64, ptr %r1345.p, align 8, !alias.scope !3, !noalias !4
  %cmp1346 = icmp ne i64 %r1345, 0
  br i1 %cmp1346, label %L_8001da708, label %L_8001da654
L_8001da668_ft:
  ; @pc 0x8001da668 word 0xf94002e8
  %r1363.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1363 = load i64, ptr %r1363.p, align 8, !alias.scope !3, !noalias !4
  %gmp1364 = inttoptr i64 %r1363 to ptr
  %gml1365 = load i64, ptr %gmp1364, align 1, !alias.scope !4, !noalias !3
  %wp1366 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1365, ptr %wp1366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da66c word 0xb001bc21
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da670 word 0xaa1703e0
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %t1369 = or i64 0, %r1368
  %wp1370 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1369, ptr %wp1370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da674 word 0xaa1803f3
  %r1371.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1371 = load i64, ptr %r1371.p, align 8, !alias.scope !3, !noalias !4
  %t1372 = or i64 0, %r1371
  %wp1373 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1372, ptr %wp1373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da678 word 0x2a0403f8
  %r1374.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1374 = load i64, ptr %r1374.p, align 8, !alias.scope !3, !noalias !4
  %c1375 = trunc i64 %r1374 to i32
  %t1376 = or i32 0, %c1375
  %c1377 = zext i32 %t1376 to i64
  %wp1378 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1377, ptr %wp1378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da67c word 0xf9400108
  %r1379.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1379 = load i64, ptr %r1379.p, align 8, !alias.scope !3, !noalias !4
  %gmp1380 = inttoptr i64 %r1379 to ptr
  %gml1381 = load i64, ptr %gmp1380, align 1, !alias.scope !4, !noalias !3
  %wp1382 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1381, ptr %wp1382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da680 word 0xf9454021
  %r1383.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1383 = load i64, ptr %r1383.p, align 8, !alias.scope !3, !noalias !4
  %t1384 = add i64 %r1383, 2688
  %gmp1385 = inttoptr i64 %t1384 to ptr
  %gml1386 = load i64, ptr %gmp1385, align 1, !alias.scope !4, !noalias !3
  %wp1387 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1386, ptr %wp1387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da684 word 0xaa1503fb
  %r1388.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1388 = load i64, ptr %r1388.p, align 8, !alias.scope !3, !noalias !4
  %t1389 = or i64 0, %r1388
  %wp1390 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1389, ptr %wp1390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da688 word 0xaa0303f5
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %t1392 = or i64 0, %r1391
  %wp1393 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1392, ptr %wp1393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da68c word 0x2a0503f9
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %c1395 = trunc i64 %r1394 to i32
  %t1396 = or i32 0, %c1395
  %c1397 = zext i32 %t1396 to i64
  %wp1398 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1397, ptr %wp1398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da690 word 0xd63f0100
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %fp1400 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1399, ptr %fp1400, align 8, !alias.scope !3, !noalias !4
  %wp1401 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681556, ptr %wp1401, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da694 word 0xb94017ea
  %r1402.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1402 = load i64, ptr %r1402.p, align 8, !alias.scope !3, !noalias !4
  %t1403 = add i64 %r1402, 20
  %gmp1404 = inttoptr i64 %t1403 to ptr
  %gml1405 = load i32, ptr %gmp1404, align 1, !alias.scope !4, !noalias !3
  %c1406 = zext i32 %gml1405 to i64
  %wp1407 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1406, ptr %wp1407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da698 word 0x2a1803e4
  %r1408.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1408 = load i64, ptr %r1408.p, align 8, !alias.scope !3, !noalias !4
  %c1409 = trunc i64 %r1408 to i32
  %t1410 = or i32 0, %c1409
  %c1411 = zext i32 %t1410 to i64
  %wp1412 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1411, ptr %wp1412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da69c word 0xaa1303f8
  %r1413.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1413 = load i64, ptr %r1413.p, align 8, !alias.scope !3, !noalias !4
  %t1414 = or i64 0, %r1413
  %wp1415 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1414, ptr %wp1415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6a0 word 0xf94007f3
  %r1416.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1416 = load i64, ptr %r1416.p, align 8, !alias.scope !3, !noalias !4
  %t1417 = add i64 %r1416, 8
  %gmp1418 = inttoptr i64 %t1417 to ptr
  %gml1419 = load i64, ptr %gmp1418, align 1, !alias.scope !4, !noalias !3
  %wp1420 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1419, ptr %wp1420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6a4 word 0x2a1903e5
  %r1421.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1421 = load i64, ptr %r1421.p, align 8, !alias.scope !3, !noalias !4
  %c1422 = trunc i64 %r1421 to i32
  %t1423 = or i32 0, %c1422
  %c1424 = zext i32 %t1423 to i64
  %wp1425 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1424, ptr %wp1425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6a8 word 0xaa1503e3
  %r1426.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1426 = load i64, ptr %r1426.p, align 8, !alias.scope !3, !noalias !4
  %t1427 = or i64 0, %r1426
  %wp1428 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1427, ptr %wp1428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6ac word 0xaa1b03f5
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %t1430 = or i64 0, %r1429
  %wp1431 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1430, ptr %wp1431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6b0 word 0xb50002c0
  %r1432.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1432 = load i64, ptr %r1432.p, align 8, !alias.scope !3, !noalias !4
  %cmp1433 = icmp ne i64 %r1432, 0
  br i1 %cmp1433, label %L_8001da708, label %L_8001da6b4
L_8001da6c8_ft:
  ; @pc 0x8001da6c8 word 0xf94002e8
  %r1450.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1450 = load i64, ptr %r1450.p, align 8, !alias.scope !3, !noalias !4
  %gmp1451 = inttoptr i64 %r1450 to ptr
  %gml1452 = load i64, ptr %gmp1451, align 1, !alias.scope !4, !noalias !3
  %wp1453 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1452, ptr %wp1453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6cc word 0xb001bc21
  %wp1454 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6d0 word 0xaa1703e0
  %r1455.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1455 = load i64, ptr %r1455.p, align 8, !alias.scope !3, !noalias !4
  %t1456 = or i64 0, %r1455
  %wp1457 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1456, ptr %wp1457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6d4 word 0x2a0403f7
  %r1458.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1458 = load i64, ptr %r1458.p, align 8, !alias.scope !3, !noalias !4
  %c1459 = trunc i64 %r1458 to i32
  %t1460 = or i32 0, %c1459
  %c1461 = zext i32 %t1460 to i64
  %wp1462 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1461, ptr %wp1462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6d8 word 0xaa1503f9
  %r1463.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1463 = load i64, ptr %r1463.p, align 8, !alias.scope !3, !noalias !4
  %t1464 = or i64 0, %r1463
  %wp1465 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1464, ptr %wp1465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6dc word 0xf9400108
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %gmp1467 = inttoptr i64 %r1466 to ptr
  %gml1468 = load i64, ptr %gmp1467, align 1, !alias.scope !4, !noalias !3
  %wp1469 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1468, ptr %wp1469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6e0 word 0xf9454821
  %r1470.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1470 = load i64, ptr %r1470.p, align 8, !alias.scope !3, !noalias !4
  %t1471 = add i64 %r1470, 2704
  %gmp1472 = inttoptr i64 %t1471 to ptr
  %gml1473 = load i64, ptr %gmp1472, align 1, !alias.scope !4, !noalias !3
  %wp1474 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1473, ptr %wp1474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6e4 word 0xaa0303f5
  %r1475.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1475 = load i64, ptr %r1475.p, align 8, !alias.scope !3, !noalias !4
  %t1476 = or i64 0, %r1475
  %wp1477 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1476, ptr %wp1477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6e8 word 0x2a0503fb
  %r1478.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1478 = load i64, ptr %r1478.p, align 8, !alias.scope !3, !noalias !4
  %c1479 = trunc i64 %r1478 to i32
  %t1480 = or i32 0, %c1479
  %c1481 = zext i32 %t1480 to i64
  %wp1482 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c1481, ptr %wp1482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6ec word 0xd63f0100
  %r1483.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1483 = load i64, ptr %r1483.p, align 8, !alias.scope !3, !noalias !4
  %fp1484 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1483, ptr %fp1484, align 8, !alias.scope !3, !noalias !4
  %wp1485 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681648, ptr %wp1485, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da6f0 word 0xb94017ea
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %t1487 = add i64 %r1486, 20
  %gmp1488 = inttoptr i64 %t1487 to ptr
  %gml1489 = load i32, ptr %gmp1488, align 1, !alias.scope !4, !noalias !3
  %c1490 = zext i32 %gml1489 to i64
  %wp1491 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1490, ptr %wp1491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6f4 word 0x2a1b03e5
  %r1492.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1492 = load i64, ptr %r1492.p, align 8, !alias.scope !3, !noalias !4
  %c1493 = trunc i64 %r1492 to i32
  %t1494 = or i32 0, %c1493
  %c1495 = zext i32 %t1494 to i64
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1495, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6f8 word 0xaa1503e3
  %r1497.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1497 = load i64, ptr %r1497.p, align 8, !alias.scope !3, !noalias !4
  %t1498 = or i64 0, %r1497
  %wp1499 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1498, ptr %wp1499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da6fc word 0xaa1903f5
  %r1500.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1500 = load i64, ptr %r1500.p, align 8, !alias.scope !3, !noalias !4
  %t1501 = or i64 0, %r1500
  %wp1502 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1501, ptr %wp1502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da700 word 0x2a1703e4
  %r1503.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1503 = load i64, ptr %r1503.p, align 8, !alias.scope !3, !noalias !4
  %c1504 = trunc i64 %r1503 to i32
  %t1505 = or i32 0, %c1504
  %c1506 = zext i32 %t1505 to i64
  %wp1507 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1506, ptr %wp1507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da704 word 0xb4ffe860
  %r1508.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1508 = load i64, ptr %r1508.p, align 8, !alias.scope !3, !noalias !4
  %cmp1509 = icmp eq i64 %r1508, 0
  br i1 %cmp1509, label %L_8001da410, label %L_8001da708
L_8001da720_ft:
  ; @pc 0x8001da720 word 0x3500085a
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %c1554 = trunc i64 %r1553 to i32
  %cmp1555 = icmp ne i32 %c1554, 0
  br i1 %cmp1555, label %L_8001da828, label %L_8001da724
L_8001da748_ft:
  ; @pc 0x8001da748 word 0xb27f0108
  %r1615.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1615 = load i64, ptr %r1615.p, align 8, !alias.scope !3, !noalias !4
  %t1616 = or i64 %r1615, 2
  %wp1617 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1616, ptr %wp1617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da74c word 0xf9000268
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %r1619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1619 = load i64, ptr %r1619.p, align 8, !alias.scope !3, !noalias !4
  %gmp1620 = inttoptr i64 %r1618 to ptr
  store i64 %r1619, ptr %gmp1620, align 1, !alias.scope !4, !noalias !3
  br label %L_8001da750
L_8001da760_ft:
  ; @pc 0x8001da760 word 0x37003744
  %r1677.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1677 = load i64, ptr %r1677.p, align 8, !alias.scope !3, !noalias !4
  %t1678 = and i64 %r1677, 1
  %cmp1679 = icmp ne i64 %t1678, 0
  br i1 %cmp1679, label %L_8001dae48, label %L_8001da764_ft
L_8001da764_ft:
  ; @pc 0x8001da764 word 0xf9400aa0
  %r1680.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1680 = load i64, ptr %r1680.p, align 8, !alias.scope !3, !noalias !4
  %t1681 = add i64 %r1680, 16
  %gmp1682 = inttoptr i64 %t1681 to ptr
  %gml1683 = load i64, ptr %gmp1682, align 1, !alias.scope !4, !noalias !3
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da768 word 0x927ef516
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1685 = load i64, ptr %r1685.p, align 8, !alias.scope !3, !noalias !4
  %t1686 = and i64 %r1685, -4
  %wp1687 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1686, ptr %wp1687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da76c word 0xf9400008
  %r1688.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1688 = load i64, ptr %r1688.p, align 8, !alias.scope !3, !noalias !4
  %gmp1689 = inttoptr i64 %r1688 to ptr
  %gml1690 = load i64, ptr %gmp1689, align 1, !alias.scope !4, !noalias !3
  %wp1691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1690, ptr %wp1691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da770 word 0xf9402d08
  %r1692.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1692 = load i64, ptr %r1692.p, align 8, !alias.scope !3, !noalias !4
  %t1693 = add i64 %r1692, 88
  %gmp1694 = inttoptr i64 %t1693 to ptr
  %gml1695 = load i64, ptr %gmp1694, align 1, !alias.scope !4, !noalias !3
  %wp1696 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1695, ptr %wp1696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da774 word 0xd63f0100
  %r1697.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1697 = load i64, ptr %r1697.p, align 8, !alias.scope !3, !noalias !4
  %fp1698 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1697, ptr %fp1698, align 8, !alias.scope !3, !noalias !4
  %wp1699 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681784, ptr %wp1699, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da778 word 0xf9400814
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %t1701 = add i64 %r1700, 16
  %gmp1702 = inttoptr i64 %t1701 to ptr
  %gml1703 = load i64, ptr %gmp1702, align 1, !alias.scope !4, !noalias !3
  %wp1704 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1703, ptr %wp1704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da77c word 0xb4000074
  %r1705.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1705 = load i64, ptr %r1705.p, align 8, !alias.scope !3, !noalias !4
  %cmp1706 = icmp eq i64 %r1705, 0
  br i1 %cmp1706, label %L_8001da788, label %L_8001da780_ft
L_8001da780_ft:
  ; @pc 0x8001da780 word 0xf9400288
  %r1707.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1707 = load i64, ptr %r1707.p, align 8, !alias.scope !3, !noalias !4
  %gmp1708 = inttoptr i64 %r1707 to ptr
  %gml1709 = load i64, ptr %gmp1708, align 1, !alias.scope !4, !noalias !3
  %wp1710 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1709, ptr %wp1710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da784 word 0xf9000808
  %r1711.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1711 = load i64, ptr %r1711.p, align 8, !alias.scope !3, !noalias !4
  %t1712 = add i64 %r1711, 16
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %gmp1714 = inttoptr i64 %t1712 to ptr
  store i64 %r1713, ptr %gmp1714, align 1, !alias.scope !4, !noalias !3
  br label %L_8001da788
L_8001da7b4_ft:
  ; @pc 0x8001da7b4 word 0xf9400409
  %r1790.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1790 = load i64, ptr %r1790.p, align 8, !alias.scope !3, !noalias !4
  %t1791 = add i64 %r1790, 8
  %gmp1792 = inttoptr i64 %t1791 to ptr
  %gml1793 = load i64, ptr %gmp1792, align 1, !alias.scope !4, !noalias !3
  %wp1794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1793, ptr %wp1794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7b8 word 0xf8287934
  %r1795.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1795 = load i64, ptr %r1795.p, align 8, !alias.scope !3, !noalias !4
  %r1796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1796 = load i64, ptr %r1796.p, align 8, !alias.scope !3, !noalias !4
  %t1797 = shl i64 %r1796, 3
  %t1798 = add i64 %r1795, %t1797
  %r1799.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1799 = load i64, ptr %r1799.p, align 8, !alias.scope !3, !noalias !4
  %gmp1800 = inttoptr i64 %t1798 to ptr
  store i64 %r1799, ptr %gmp1800, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da7bc word 0xb9400008
  %r1801.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1801 = load i64, ptr %r1801.p, align 8, !alias.scope !3, !noalias !4
  %gmp1802 = inttoptr i64 %r1801 to ptr
  %gml1803 = load i32, ptr %gmp1802, align 1, !alias.scope !4, !noalias !3
  %c1804 = zext i32 %gml1803 to i64
  %wp1805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1804, ptr %wp1805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7c0 word 0x11000508
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %c1807 = trunc i64 %r1806 to i32
  %t1808 = add i32 %c1807, 1
  %c1809 = zext i32 %t1808 to i64
  %wp1810 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1809, ptr %wp1810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7c4 word 0xb9000008
  %r1811.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1811 = load i64, ptr %r1811.p, align 8, !alias.scope !3, !noalias !4
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %c1813 = trunc i64 %r1812 to i32
  %gmp1814 = inttoptr i64 %r1811 to ptr
  store i32 %c1813, ptr %gmp1814, align 1, !alias.scope !4, !noalias !3
  br label %L_8001da7c8
L_8001da7f0_ft:
  ; @pc 0x8001da7f0 word 0xf9400aa0
  %r1860.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1860 = load i64, ptr %r1860.p, align 8, !alias.scope !3, !noalias !4
  %t1861 = add i64 %r1860, 16
  %gmp1862 = inttoptr i64 %t1861 to ptr
  %gml1863 = load i64, ptr %gmp1862, align 1, !alias.scope !4, !noalias !3
  %wp1864 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1863, ptr %wp1864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7f4 word 0xf9400008
  %r1865.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1865 = load i64, ptr %r1865.p, align 8, !alias.scope !3, !noalias !4
  %gmp1866 = inttoptr i64 %r1865 to ptr
  %gml1867 = load i64, ptr %gmp1866, align 1, !alias.scope !4, !noalias !3
  %wp1868 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1867, ptr %wp1868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7f8 word 0xf9402908
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %t1870 = add i64 %r1869, 80
  %gmp1871 = inttoptr i64 %t1870 to ptr
  %gml1872 = load i64, ptr %gmp1871, align 1, !alias.scope !4, !noalias !3
  %wp1873 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1872, ptr %wp1873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da7fc word 0xd63f0100
  %r1874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1874 = load i64, ptr %r1874.p, align 8, !alias.scope !3, !noalias !4
  %fp1875 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1874, ptr %fp1875, align 8, !alias.scope !3, !noalias !4
  %wp1876 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361681920, ptr %wp1876, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001da800 word 0x29422408
  %r1877.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1877 = load i64, ptr %r1877.p, align 8, !alias.scope !3, !noalias !4
  %t1878 = add i64 %r1877, 16
  %t1879 = add i64 %t1878, 4
  %gmp1880 = inttoptr i64 %t1878 to ptr
  %gml1881 = load i32, ptr %gmp1880, align 1, !alias.scope !4, !noalias !3
  %c1882 = zext i32 %gml1881 to i64
  %gmp1883 = inttoptr i64 %t1879 to ptr
  %gml1884 = load i32, ptr %gmp1883, align 1, !alias.scope !4, !noalias !3
  %c1885 = zext i32 %gml1884 to i64
  %wp1886 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1882, ptr %wp1886, align 8, !alias.scope !3, !noalias !4
  %wp1887 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1885, ptr %wp1887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da804 word 0x6b09011f
  %r1888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1888 = load i64, ptr %r1888.p, align 8, !alias.scope !3, !noalias !4
  %c1889 = trunc i64 %r1888 to i32
  %r1890.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1890 = load i64, ptr %r1890.p, align 8, !alias.scope !3, !noalias !4
  %c1891 = trunc i64 %r1890 to i32
  %t1892 = sub i32 %c1889, %c1891
  %fn1893 = icmp slt i32 %t1892, 0
  %fz1894 = icmp eq i32 %t1892, 0
  %fc1895 = icmp uge i32 %c1889, %c1891
  %fx11896 = xor i32 %c1889, %c1891
  %fx21897 = xor i32 %c1889, %t1892
  %fva1898 = and i32 %fx11896, %fx21897
  %fv1899 = icmp slt i32 %fva1898, 0
  %nz1900 = zext i1 %fn1893 to i64
  %zz1901 = zext i1 %fz1894 to i64
  %cz1902 = zext i1 %fc1895 to i64
  %vz1903 = zext i1 %fv1899 to i64
  %ns1904 = shl i64 %nz1900, 31
  %zs1905 = shl i64 %zz1901, 30
  %cs1906 = shl i64 %cz1902, 29
  %vs1907 = shl i64 %vz1903, 28
  %nzor1908 = or i64 %ns1904, %zs1905
  %cvor1909 = or i64 %cs1906, %vs1907
  %nzcv1910 = or i64 %nzor1908, %cvor1909
  %wp1911 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1910, ptr %wp1911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da808 word 0x54000ac3
  %r1912.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1912 = load i64, ptr %r1912.p, align 8, !alias.scope !3, !noalias !4
  %fsh1914 = lshr i64 %r1912, 29
  %ftr1915 = trunc i64 %fsh1914 to i1
  %cond1913 = xor i1 %ftr1915, true
  br i1 %cond1913, label %L_8001da960, label %L_8001da80c_ft
L_8001da80c_ft:
  ; @pc 0x8001da80c word 0xf9400009
  %r1916.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1916 = load i64, ptr %r1916.p, align 8, !alias.scope !3, !noalias !4
  %gmp1917 = inttoptr i64 %r1916 to ptr
  %gml1918 = load i64, ptr %gmp1917, align 1, !alias.scope !4, !noalias !3
  %wp1919 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1918, ptr %wp1919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da810 word 0x5100050a
  %r1920.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1920 = load i64, ptr %r1920.p, align 8, !alias.scope !3, !noalias !4
  %c1921 = trunc i64 %r1920 to i32
  %t1922 = sub i32 %c1921, 1
  %c1923 = zext i32 %t1922 to i64
  %wp1924 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1923, ptr %wp1924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da814 word 0xb900100a
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  %t1926 = add i64 %r1925, 16
  %r1927.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1927 = load i64, ptr %r1927.p, align 8, !alias.scope !3, !noalias !4
  %c1928 = trunc i64 %r1927 to i32
  %gmp1929 = inttoptr i64 %t1926 to ptr
  store i32 %c1928, ptr %gmp1929, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da818 word 0x8b080928
  %r1930.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1930 = load i64, ptr %r1930.p, align 8, !alias.scope !3, !noalias !4
  %r1931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1931 = load i64, ptr %r1931.p, align 8, !alias.scope !3, !noalias !4
  %t1932 = shl i64 %r1931, 2
  %t1933 = add i64 %r1930, %t1932
  %wp1934 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1933, ptr %wp1934, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da81c
L_8001da840_ft:
  ; @pc 0x8001da840 word 0x54ffdfc0
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %fsh1990 = lshr i64 %r1988, 30
  %cond1989 = trunc i64 %fsh1990 to i1
  br i1 %cond1989, label %L_8001da438, label %L_8001da844_ft
L_8001da844_ft:
  ; @pc 0x8001da844 word 0xf94006a8
  %r1991.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1991 = load i64, ptr %r1991.p, align 8, !alias.scope !3, !noalias !4
  %t1992 = add i64 %r1991, 8
  %gmp1993 = inttoptr i64 %t1992 to ptr
  %gml1994 = load i64, ptr %gmp1993, align 1, !alias.scope !4, !noalias !3
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1994, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da848 word 0x12003f41
  %r1996.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1996 = load i64, ptr %r1996.p, align 8, !alias.scope !3, !noalias !4
  %c1997 = trunc i64 %r1996 to i32
  %t1998 = and i32 %c1997, 65535
  %c1999 = zext i32 %t1998 to i64
  %wp2000 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1999, ptr %wp2000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da84c word 0x531a6f54
  %r2001.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2001 = load i64, ptr %r2001.p, align 8, !alias.scope !3, !noalias !4
  %c2002 = trunc i64 %r2001 to i32
  %ror2003 = call i32 @llvm.fshr.i32(i32 %c2002, i32 %c2002, i32 26)
  %t2004 = and i32 %ror2003, 3
  %c2005 = zext i32 %t2004 to i64
  %wp2006 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2005, ptr %wp2006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da850 word 0xf9401100
  %r2007.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2007 = load i64, ptr %r2007.p, align 8, !alias.scope !3, !noalias !4
  %t2008 = add i64 %r2007, 32
  %gmp2009 = inttoptr i64 %t2008 to ptr
  %gml2010 = load i64, ptr %gmp2009, align 1, !alias.scope !4, !noalias !3
  %wp2011 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2010, ptr %wp2011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da854 word 0xf9400008
  %r2012.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2012 = load i64, ptr %r2012.p, align 8, !alias.scope !3, !noalias !4
  %gmp2013 = inttoptr i64 %r2012 to ptr
  %gml2014 = load i64, ptr %gmp2013, align 1, !alias.scope !4, !noalias !3
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2014, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da858 word 0x35001dd4
  %r2016.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2016 = load i64, ptr %r2016.p, align 8, !alias.scope !3, !noalias !4
  %c2017 = trunc i64 %r2016 to i32
  %cmp2018 = icmp ne i32 %c2017, 0
  br i1 %cmp2018, label %L_8001dac10, label %L_8001da85c_ft
L_8001da85c_ft:
  ; @pc 0x8001da85c word 0xb001bc29
  %wp2019 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp2019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da860 word 0xf9408908
  %r2020.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2020 = load i64, ptr %r2020.p, align 8, !alias.scope !3, !noalias !4
  %t2021 = add i64 %r2020, 272
  %gmp2022 = inttoptr i64 %t2021 to ptr
  %gml2023 = load i64, ptr %gmp2022, align 1, !alias.scope !4, !noalias !3
  %wp2024 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2023, ptr %wp2024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da864 word 0xf9448529
  %r2025.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2025 = load i64, ptr %r2025.p, align 8, !alias.scope !3, !noalias !4
  %t2026 = add i64 %r2025, 2312
  %gmp2027 = inttoptr i64 %t2026 to ptr
  %gml2028 = load i64, ptr %gmp2027, align 1, !alias.scope !4, !noalias !3
  %wp2029 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2028, ptr %wp2029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da868 word 0xeb09011f
  %r2030.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2030 = load i64, ptr %r2030.p, align 8, !alias.scope !3, !noalias !4
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %t2032 = sub i64 %r2030, %r2031
  %fn2033 = icmp slt i64 %t2032, 0
  %fz2034 = icmp eq i64 %t2032, 0
  %fc2035 = icmp uge i64 %r2030, %r2031
  %fx12036 = xor i64 %r2030, %r2031
  %fx22037 = xor i64 %r2030, %t2032
  %fva2038 = and i64 %fx12036, %fx22037
  %fv2039 = icmp slt i64 %fva2038, 0
  %nz2040 = zext i1 %fn2033 to i64
  %zz2041 = zext i1 %fz2034 to i64
  %cz2042 = zext i1 %fc2035 to i64
  %vz2043 = zext i1 %fv2039 to i64
  %ns2044 = shl i64 %nz2040, 31
  %zs2045 = shl i64 %zz2041, 30
  %cs2046 = shl i64 %cz2042, 29
  %vs2047 = shl i64 %vz2043, 28
  %nzor2048 = or i64 %ns2044, %zs2045
  %cvor2049 = or i64 %cs2046, %vs2047
  %nzcv2050 = or i64 %nzor2048, %cvor2049
  %wp2051 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2050, ptr %wp2051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da86c word 0x54002181
  %r2052.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2052 = load i64, ptr %r2052.p, align 8, !alias.scope !3, !noalias !4
  %fsh2054 = lshr i64 %r2052, 30
  %ftr2055 = trunc i64 %fsh2054 to i1
  %cond2053 = xor i1 %ftr2055, true
  br i1 %cond2053, label %L_8001dac9c, label %L_8001da870
L_8001da878_ft:
  ; @pc 0x8001da878 word 0xb940900a
  %r2063.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2063 = load i64, ptr %r2063.p, align 8, !alias.scope !3, !noalias !4
  %t2064 = add i64 %r2063, 144
  %gmp2065 = inttoptr i64 %t2064 to ptr
  %gml2066 = load i32, ptr %gmp2065, align 1, !alias.scope !4, !noalias !3
  %c2067 = zext i32 %gml2066 to i64
  %wp2068 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2067, ptr %wp2068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da87c word 0x6b01015f
  %r2069.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2069 = load i64, ptr %r2069.p, align 8, !alias.scope !3, !noalias !4
  %c2070 = trunc i64 %r2069 to i32
  %r2071.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2071 = load i64, ptr %r2071.p, align 8, !alias.scope !3, !noalias !4
  %c2072 = trunc i64 %r2071 to i32
  %t2073 = sub i32 %c2070, %c2072
  %fn2074 = icmp slt i32 %t2073, 0
  %fz2075 = icmp eq i32 %t2073, 0
  %fc2076 = icmp uge i32 %c2070, %c2072
  %fx12077 = xor i32 %c2070, %c2072
  %fx22078 = xor i32 %c2070, %t2073
  %fva2079 = and i32 %fx12077, %fx22078
  %fv2080 = icmp slt i32 %fva2079, 0
  %nz2081 = zext i1 %fn2074 to i64
  %zz2082 = zext i1 %fz2075 to i64
  %cz2083 = zext i1 %fc2076 to i64
  %vz2084 = zext i1 %fv2080 to i64
  %ns2085 = shl i64 %nz2081, 31
  %zs2086 = shl i64 %zz2082, 30
  %cs2087 = shl i64 %cz2083, 29
  %vs2088 = shl i64 %vz2084, 28
  %nzor2089 = or i64 %ns2085, %zs2086
  %cvor2090 = or i64 %cs2087, %vs2088
  %nzcv2091 = or i64 %nzor2089, %cvor2090
  %wp2092 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2091, ptr %wp2092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da880 word 0x1a9f8029
  %r2093.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2093 = load i64, ptr %r2093.p, align 8, !alias.scope !3, !noalias !4
  %c2094 = trunc i64 %r2093 to i32
  %r2095.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2095 = load i64, ptr %r2095.p, align 8, !alias.scope !3, !noalias !4
  %fsh2097 = lshr i64 %r2095, 29
  %ftr2098 = trunc i64 %fsh2097 to i1
  %fsh2099 = lshr i64 %r2095, 30
  %ftr2100 = trunc i64 %fsh2099 to i1
  %fnz2101 = xor i1 %ftr2100, true
  %cond2096 = and i1 %ftr2098, %fnz2101
  %sel2102 = select i1 %cond2096, i32 %c2094, i32 0
  %c2103 = zext i32 %sel2102 to i64
  %wp2104 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2103, ptr %wp2104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da884 word 0xd37c7d2b
  %r2105.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2105 = load i64, ptr %r2105.p, align 8, !alias.scope !3, !noalias !4
  %ror2106 = call i64 @llvm.fshr.i64(i64 %r2105, i64 %r2105, i64 60)
  %t2107 = and i64 %ror2106, 68719476720
  %wp2108 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2107, ptr %wp2108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da888 word 0x38eb690b
  %r2109.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2109 = load i64, ptr %r2109.p, align 8, !alias.scope !3, !noalias !4
  %r2110.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2110 = load i64, ptr %r2110.p, align 8, !alias.scope !3, !noalias !4
  %t2111 = add i64 %r2109, %r2110
  %gmp2112 = inttoptr i64 %t2111 to ptr
  %gml2113 = load i8, ptr %gmp2112, align 1, !alias.scope !4, !noalias !3
  %c2114 = sext i8 %gml2113 to i32
  %c2115 = zext i32 %c2114 to i64
  %wp2116 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2115, ptr %wp2116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da88c word 0x36f81d6b
  %r2117.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2117 = load i64, ptr %r2117.p, align 8, !alias.scope !3, !noalias !4
  %t2118 = and i64 %r2117, 2147483648
  %cmp2119 = icmp eq i64 %t2118, 0
  br i1 %cmp2119, label %L_8001dac38, label %L_8001da890_ft
L_8001da890_ft:
  ; @pc 0x8001da890 word 0x6b01015f
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %c2121 = trunc i64 %r2120 to i32
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %c2123 = trunc i64 %r2122 to i32
  %t2124 = sub i32 %c2121, %c2123
  %fn2125 = icmp slt i32 %t2124, 0
  %fz2126 = icmp eq i32 %t2124, 0
  %fc2127 = icmp uge i32 %c2121, %c2123
  %fx12128 = xor i32 %c2121, %c2123
  %fx22129 = xor i32 %c2121, %t2124
  %fva2130 = and i32 %fx12128, %fx22129
  %fv2131 = icmp slt i32 %fva2130, 0
  %nz2132 = zext i1 %fn2125 to i64
  %zz2133 = zext i1 %fz2126 to i64
  %cz2134 = zext i1 %fc2127 to i64
  %vz2135 = zext i1 %fv2131 to i64
  %ns2136 = shl i64 %nz2132, 31
  %zs2137 = shl i64 %zz2133, 30
  %cs2138 = shl i64 %cz2134, 29
  %vs2139 = shl i64 %vz2135, 28
  %nzor2140 = or i64 %ns2136, %zs2137
  %cvor2141 = or i64 %cs2138, %vs2139
  %nzcv2142 = or i64 %nzor2140, %cvor2141
  %wp2143 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2142, ptr %wp2143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da894 word 0x54001e49
  %r2144.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2144 = load i64, ptr %r2144.p, align 8, !alias.scope !3, !noalias !4
  %fsh2146 = lshr i64 %r2144, 29
  %ftr2147 = trunc i64 %fsh2146 to i1
  %fsh2148 = lshr i64 %r2144, 30
  %ftr2149 = trunc i64 %fsh2148 to i1
  %fnz2150 = xor i1 %ftr2149, true
  %fhi2151 = and i1 %ftr2147, %fnz2150
  %cond2145 = xor i1 %fhi2151, true
  br i1 %cond2145, label %L_8001dac5c, label %L_8001da898_ft
L_8001da898_ft:
  ; @pc 0x8001da898 word 0x8b21510a
  %r2152.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2152 = load i64, ptr %r2152.p, align 8, !alias.scope !3, !noalias !4
  %r2153.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2153 = load i64, ptr %r2153.p, align 8, !alias.scope !3, !noalias !4
  %c2154 = trunc i64 %r2153 to i32
  %c2155 = zext i32 %c2154 to i64
  %t2156 = shl i64 %c2155, 4
  %t2157 = add i64 %r2152, %t2156
  %wp2158 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2157, ptr %wp2158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da89c word 0x79c0054a
  %r2159.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2159 = load i64, ptr %r2159.p, align 8, !alias.scope !3, !noalias !4
  %t2160 = add i64 %r2159, 2
  %gmp2161 = inttoptr i64 %t2160 to ptr
  %gml2162 = load i16, ptr %gmp2161, align 1, !alias.scope !4, !noalias !3
  %c2163 = sext i16 %gml2162 to i32
  %c2164 = zext i32 %c2163 to i64
  %wp2165 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2164, ptr %wp2165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8a0 word 0x36f81e2a
  %r2166.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2166 = load i64, ptr %r2166.p, align 8, !alias.scope !3, !noalias !4
  %t2167 = and i64 %r2166, 2147483648
  %cmp2168 = icmp eq i64 %t2167, 0
  br i1 %cmp2168, label %L_8001dac64, label %L_8001da8a4_ft
L_8001da8a4_ft:
  ; @pc 0x8001da8a4 word 0x2a0103e9
  %r2169.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2169 = load i64, ptr %r2169.p, align 8, !alias.scope !3, !noalias !4
  %c2170 = trunc i64 %r2169 to i32
  %t2171 = or i32 0, %c2170
  %c2172 = zext i32 %t2171 to i64
  %wp2173 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2172, ptr %wp2173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8a8 word 0x8b091108
  %r2174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2174 = load i64, ptr %r2174.p, align 8, !alias.scope !3, !noalias !4
  %r2175.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2175 = load i64, ptr %r2175.p, align 8, !alias.scope !3, !noalias !4
  %t2176 = shl i64 %r2175, 4
  %t2177 = add i64 %r2174, %t2176
  %wp2178 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2177, ptr %wp2178, align 8, !alias.scope !3, !noalias !4
  br label %L_8001da8ac
L_8001da8d4_ft:
  ; @pc 0x8001da8d4 word 0x2a1f03f7
  %t2238 = or i32 0, 0
  %c2239 = zext i32 %t2238 to i64
  %wp2240 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2239, ptr %wp2240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8d8 word 0x8b214908
  %r2241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2241 = load i64, ptr %r2241.p, align 8, !alias.scope !3, !noalias !4
  %r2242.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2242 = load i64, ptr %r2242.p, align 8, !alias.scope !3, !noalias !4
  %c2243 = trunc i64 %r2242 to i32
  %c2244 = zext i32 %c2243 to i64
  %t2245 = shl i64 %c2244, 2
  %t2246 = add i64 %r2241, %t2245
  %wp2247 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2246, ptr %wp2247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da8dc word 0x17fffff7
  br label %L_8001da8b8
L_8001da90c_ft:
  ; @pc 0x8001da90c word 0x12003f49
  %r2325.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2325 = load i64, ptr %r2325.p, align 8, !alias.scope !3, !noalias !4
  %c2326 = trunc i64 %r2325 to i32
  %t2327 = and i32 %c2326, 65535
  %c2328 = zext i32 %t2327 to i64
  %wp2329 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2328, ptr %wp2329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da910 word 0x5280038a
  %c2330 = zext i32 28 to i64
  %wp2331 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2330, ptr %wp2331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da914 word 0x9baa2128
  %r2332.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2332 = load i64, ptr %r2332.p, align 8, !alias.scope !3, !noalias !4
  %c2333 = trunc i64 %r2332 to i32
  %c2334 = zext i32 %c2333 to i64
  %r2335.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2335 = load i64, ptr %r2335.p, align 8, !alias.scope !3, !noalias !4
  %c2336 = trunc i64 %r2335 to i32
  %c2337 = zext i32 %c2336 to i64
  %t2338 = mul i64 %c2334, %c2337
  %r2339.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2339 = load i64, ptr %r2339.p, align 8, !alias.scope !3, !noalias !4
  %t2340 = add i64 %r2339, %t2338
  %wp2341 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2340, ptr %wp2341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da918 word 0x79403d08
  %r2342.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2342 = load i64, ptr %r2342.p, align 8, !alias.scope !3, !noalias !4
  %t2343 = add i64 %r2342, 30
  %gmp2344 = inttoptr i64 %t2343 to ptr
  %gml2345 = load i16, ptr %gmp2344, align 1, !alias.scope !4, !noalias !3
  %c2346 = zext i16 %gml2345 to i64
  %wp2347 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2346, ptr %wp2347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da91c word 0x51000909
  %r2348.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2348 = load i64, ptr %r2348.p, align 8, !alias.scope !3, !noalias !4
  %c2349 = trunc i64 %r2348 to i32
  %t2350 = sub i32 %c2349, 2
  %c2351 = zext i32 %t2350 to i64
  %wp2352 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2351, ptr %wp2352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da920 word 0x7100113f
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %c2354 = trunc i64 %r2353 to i32
  %t2355 = sub i32 %c2354, 4
  %fn2356 = icmp slt i32 %t2355, 0
  %fz2357 = icmp eq i32 %t2355, 0
  %fc2358 = icmp uge i32 %c2354, 4
  %fx12359 = xor i32 %c2354, 4
  %fx22360 = xor i32 %c2354, %t2355
  %fva2361 = and i32 %fx12359, %fx22360
  %fv2362 = icmp slt i32 %fva2361, 0
  %nz2363 = zext i1 %fn2356 to i64
  %zz2364 = zext i1 %fz2357 to i64
  %cz2365 = zext i1 %fc2358 to i64
  %vz2366 = zext i1 %fv2362 to i64
  %ns2367 = shl i64 %nz2363, 31
  %zs2368 = shl i64 %zz2364, 30
  %cs2369 = shl i64 %cz2365, 29
  %vs2370 = shl i64 %vz2366, 28
  %nzor2371 = or i64 %ns2367, %zs2368
  %cvor2372 = or i64 %cs2369, %vs2370
  %nzcv2373 = or i64 %nzor2371, %cvor2372
  %wp2374 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2373, ptr %wp2374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da924 word 0x54002e28
  %r2375.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2375 = load i64, ptr %r2375.p, align 8, !alias.scope !3, !noalias !4
  %fsh2377 = lshr i64 %r2375, 29
  %ftr2378 = trunc i64 %fsh2377 to i1
  %fsh2379 = lshr i64 %r2375, 30
  %ftr2380 = trunc i64 %fsh2379 to i1
  %fnz2381 = xor i1 %ftr2380, true
  %cond2376 = and i1 %ftr2378, %fnz2381
  br i1 %cond2376, label %L_8001daee8, label %L_8001da928_ft
L_8001da928_ft:
  ; @pc 0x8001da928 word 0xb0015cca
  %wp2382 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34407395328, ptr %wp2382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da92c word 0x912ff94a
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %t2384 = add i64 %r2383, 3070
  %wp2385 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2384, ptr %wp2385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da930 word 0x10ffdc4b
  %wp2386 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34361681080, ptr %wp2386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da934 word 0x7869794c
  %r2387.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2387 = load i64, ptr %r2387.p, align 8, !alias.scope !3, !noalias !4
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %t2389 = shl i64 %r2388, 1
  %t2390 = add i64 %r2387, %t2389
  %gmp2391 = inttoptr i64 %t2390 to ptr
  %gml2392 = load i16, ptr %gmp2391, align 1, !alias.scope !4, !noalias !3
  %c2393 = zext i16 %gml2392 to i64
  %wp2394 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2393, ptr %wp2394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da938 word 0x8b0c096b
  %r2395.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2395 = load i64, ptr %r2395.p, align 8, !alias.scope !3, !noalias !4
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %t2397 = shl i64 %r2396, 2
  %t2398 = add i64 %r2395, %t2397
  %wp2399 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2398, ptr %wp2399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da93c word 0x13003e88
  %r2400.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2400 = load i64, ptr %r2400.p, align 8, !alias.scope !3, !noalias !4
  %c2401 = trunc i64 %r2400 to i32
  %t2402 = lshr i32 %c2401, 15
  %t2403 = and i32 %t2402, 1
  %t2404 = sub i32 0, %t2403
  %t2405 = and i32 %t2404, -65536
  %t2406 = and i32 %c2401, 65535
  %t2407 = or i32 %t2405, %t2406
  %c2408 = zext i32 %t2407 to i64
  %wp2409 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2408, ptr %wp2409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da940 word 0xd61f0160
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r2410, label %L_8001da940_jt_def [
    i64 34361681080, label %L_8001da4b8
    i64 34361682244, label %L_8001da944
    i64 34361682280, label %L_8001da968
    i64 34361682388, label %L_8001da9d4
    i64 34361683696, label %L_8001daef0
  ]
L_8001da9b4_ft:
  ; @pc 0x8001da9b4 word 0x9001c728
  %wp2527 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp2527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9b8 word 0x9001c720
  %wp2528 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp2528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9bc word 0x91146000
  %r2529.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2529 = load i64, ptr %r2529.p, align 8, !alias.scope !3, !noalias !4
  %t2530 = add i64 %r2529, 1304
  %wp2531 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2530, ptr %wp2531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9c0 word 0xb905111f
  %r2532.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2532 = load i64, ptr %r2532.p, align 8, !alias.scope !3, !noalias !4
  %t2533 = add i64 %r2532, 1296
  %gmp2534 = inttoptr i64 %t2533 to ptr
  store i32 0, ptr %gmp2534, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001da9c4 word 0x94a723fb
  %wp2535 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682376, ptr %wp2535, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001da9c8 word 0xaa1c03e3
  %r2536.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2536 = load i64, ptr %r2536.p, align 8, !alias.scope !3, !noalias !4
  %t2537 = or i64 0, %r2536
  %wp2538 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2537, ptr %wp2538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9cc word 0x2a1603e4
  %r2539.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2539 = load i64, ptr %r2539.p, align 8, !alias.scope !3, !noalias !4
  %c2540 = trunc i64 %r2539 to i32
  %t2541 = or i32 0, %c2540
  %c2542 = zext i32 %t2541 to i64
  %wp2543 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2542, ptr %wp2543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001da9d0 word 0x17fffe9f
  br label %L_8001da44c
L_8001daa14_ft:
  ; @pc 0x8001daa14 word 0xb001bc28
  %wp2613 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa18 word 0x9001bba9
  %wp2614 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa1c word 0xf9453108
  %r2615.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2615 = load i64, ptr %r2615.p, align 8, !alias.scope !3, !noalias !4
  %t2616 = add i64 %r2615, 2656
  %gmp2617 = inttoptr i64 %t2616 to ptr
  %gml2618 = load i64, ptr %gmp2617, align 1, !alias.scope !4, !noalias !3
  %wp2619 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2618, ptr %wp2619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa20 word 0xf942f929
  %r2620.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2620 = load i64, ptr %r2620.p, align 8, !alias.scope !3, !noalias !4
  %t2621 = add i64 %r2620, 1520
  %gmp2622 = inttoptr i64 %t2621 to ptr
  %gml2623 = load i64, ptr %gmp2622, align 1, !alias.scope !4, !noalias !3
  %wp2624 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2623, ptr %wp2624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa24 word 0xb001bc20
  %wp2625 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa28 word 0x91004129
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %t2627 = add i64 %r2626, 16
  %wp2628 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2627, ptr %wp2628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa2c word 0xf9000109
  %r2629.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2629 = load i64, ptr %r2629.p, align 8, !alias.scope !3, !noalias !4
  %r2630.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2630 = load i64, ptr %r2630.p, align 8, !alias.scope !3, !noalias !4
  %gmp2631 = inttoptr i64 %r2629 to ptr
  store i64 %r2630, ptr %gmp2631, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daa30 word 0xf9453400
  %r2632.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2632 = load i64, ptr %r2632.p, align 8, !alias.scope !3, !noalias !4
  %t2633 = add i64 %r2632, 2664
  %gmp2634 = inttoptr i64 %t2633 to ptr
  %gml2635 = load i64, ptr %gmp2634, align 1, !alias.scope !4, !noalias !3
  %wp2636 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2635, ptr %wp2636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa34 word 0x94a723df
  %wp2637 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682488, ptr %wp2637, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001daa38 word 0xb94017ea
  %r2638.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2638 = load i64, ptr %r2638.p, align 8, !alias.scope !3, !noalias !4
  %t2639 = add i64 %r2638, 20
  %gmp2640 = inttoptr i64 %t2639 to ptr
  %gml2641 = load i32, ptr %gmp2640, align 1, !alias.scope !4, !noalias !3
  %c2642 = zext i32 %gml2641 to i64
  %wp2643 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2642, ptr %wp2643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa3c word 0x2a1b03e5
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %c2645 = trunc i64 %r2644 to i32
  %t2646 = or i32 0, %c2645
  %c2647 = zext i32 %t2646 to i64
  %wp2648 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2647, ptr %wp2648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa40 word 0xaa1903e3
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %t2650 = or i64 0, %r2649
  %wp2651 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2650, ptr %wp2651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa44 word 0xb94007e4
  %r2652.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2652 = load i64, ptr %r2652.p, align 8, !alias.scope !3, !noalias !4
  %t2653 = add i64 %r2652, 4
  %gmp2654 = inttoptr i64 %t2653 to ptr
  %gml2655 = load i32, ptr %gmp2654, align 1, !alias.scope !4, !noalias !3
  %c2656 = zext i32 %gml2655 to i64
  %wp2657 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2656, ptr %wp2657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa48 word 0x17fffed7
  br label %L_8001da5a4
L_8001daa78_ft:
  ; @pc 0x8001daa78 word 0xb001bc28
  %wp2701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa7c word 0x9001bba9
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa80 word 0xf9453908
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %t2704 = add i64 %r2703, 2672
  %gmp2705 = inttoptr i64 %t2704 to ptr
  %gml2706 = load i64, ptr %gmp2705, align 1, !alias.scope !4, !noalias !3
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2706, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa84 word 0xf942f929
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %t2709 = add i64 %r2708, 1520
  %gmp2710 = inttoptr i64 %t2709 to ptr
  %gml2711 = load i64, ptr %gmp2710, align 1, !alias.scope !4, !noalias !3
  %wp2712 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2711, ptr %wp2712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa88 word 0xb001bc20
  %wp2713 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa8c word 0x91004129
  %r2714.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2714 = load i64, ptr %r2714.p, align 8, !alias.scope !3, !noalias !4
  %t2715 = add i64 %r2714, 16
  %wp2716 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2715, ptr %wp2716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa90 word 0xf9000109
  %r2717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2717 = load i64, ptr %r2717.p, align 8, !alias.scope !3, !noalias !4
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %gmp2719 = inttoptr i64 %r2717 to ptr
  store i64 %r2718, ptr %gmp2719, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daa94 word 0xf9453c00
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %t2721 = add i64 %r2720, 2680
  %gmp2722 = inttoptr i64 %t2721 to ptr
  %gml2723 = load i64, ptr %gmp2722, align 1, !alias.scope !4, !noalias !3
  %wp2724 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2723, ptr %wp2724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daa98 word 0x94a723c6
  %wp2725 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361682588, ptr %wp2725, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001daa9c word 0xb94017ea
  %r2726.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2726 = load i64, ptr %r2726.p, align 8, !alias.scope !3, !noalias !4
  %t2727 = add i64 %r2726, 20
  %gmp2728 = inttoptr i64 %t2727 to ptr
  %gml2729 = load i32, ptr %gmp2728, align 1, !alias.scope !4, !noalias !3
  %c2730 = zext i32 %gml2729 to i64
  %wp2731 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2730, ptr %wp2731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daaa0 word 0x2a1b03e5
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %c2733 = trunc i64 %r2732 to i32
  %t2734 = or i32 0, %c2733
  %c2735 = zext i32 %t2734 to i64
  %wp2736 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2735, ptr %wp2736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daaa4 word 0xaa1903e3
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %t2738 = or i64 0, %r2737
  %wp2739 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2738, ptr %wp2739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daaa8 word 0xb94007e4
  %r2740.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2740 = load i64, ptr %r2740.p, align 8, !alias.scope !3, !noalias !4
  %t2741 = add i64 %r2740, 4
  %gmp2742 = inttoptr i64 %t2741 to ptr
  %gml2743 = load i32, ptr %gmp2742, align 1, !alias.scope !4, !noalias !3
  %c2744 = zext i32 %gml2743 to i64
  %wp2745 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2744, ptr %wp2745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daaac word 0x17fffed6
  br label %L_8001da604
L_8001dab34_ft:
  ; @pc 0x8001dab34 word 0x2a1403e4
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %c2862 = trunc i64 %r2861 to i32
  %t2863 = or i32 0, %c2862
  %c2864 = zext i32 %t2863 to i64
  %wp2865 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2864, ptr %wp2865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab38 word 0xaa1603f5
  %r2866.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2866 = load i64, ptr %r2866.p, align 8, !alias.scope !3, !noalias !4
  %t2867 = or i64 0, %r2866
  %wp2868 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2867, ptr %wp2868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab3c word 0xaa1303e9
  %r2869.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2869 = load i64, ptr %r2869.p, align 8, !alias.scope !3, !noalias !4
  %t2870 = or i64 0, %r2869
  %wp2871 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2870, ptr %wp2871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dab40 word 0x17ffff06
  br label %L_8001da758
L_8001dabf0_ft:
  ; @pc 0x8001dabf0 word 0xaa1303e9
  %r3030.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3030 = load i64, ptr %r3030.p, align 8, !alias.scope !3, !noalias !4
  %t3031 = or i64 0, %r3030
  %wp3032 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3031, ptr %wp3032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabf4 word 0x2a1403e4
  %r3033.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3033 = load i64, ptr %r3033.p, align 8, !alias.scope !3, !noalias !4
  %c3034 = trunc i64 %r3033 to i32
  %t3035 = or i32 0, %c3034
  %c3036 = zext i32 %t3035 to i64
  %wp3037 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3036, ptr %wp3037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dabf8 word 0x17fffed8
  br label %L_8001da758
L_8001dac24_ft:
  ; @pc 0x8001dac24 word 0x71000a9f
  %r3090.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3090 = load i64, ptr %r3090.p, align 8, !alias.scope !3, !noalias !4
  %c3091 = trunc i64 %r3090 to i32
  %t3092 = sub i32 %c3091, 2
  %fn3093 = icmp slt i32 %t3092, 0
  %fz3094 = icmp eq i32 %t3092, 0
  %fc3095 = icmp uge i32 %c3091, 2
  %fx13096 = xor i32 %c3091, 2
  %fx23097 = xor i32 %c3091, %t3092
  %fva3098 = and i32 %fx13096, %fx23097
  %fv3099 = icmp slt i32 %fva3098, 0
  %nz3100 = zext i1 %fn3093 to i64
  %zz3101 = zext i1 %fz3094 to i64
  %cz3102 = zext i1 %fc3095 to i64
  %vz3103 = zext i1 %fv3099 to i64
  %ns3104 = shl i64 %nz3100, 31
  %zs3105 = shl i64 %zz3101, 30
  %cs3106 = shl i64 %cz3102, 29
  %vs3107 = shl i64 %vz3103, 28
  %nzor3108 = or i64 %ns3104, %zs3105
  %cvor3109 = or i64 %cs3106, %vs3107
  %nzcv3110 = or i64 %nzor3108, %cvor3109
  %wp3111 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3110, ptr %wp3111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac28 word 0x540010a1
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %fsh3114 = lshr i64 %r3112, 30
  %ftr3115 = trunc i64 %fsh3114 to i1
  %cond3113 = xor i1 %ftr3115, true
  br i1 %cond3113, label %L_8001dae3c, label %L_8001dac2c_ft
L_8001dac2c_ft:
  ; @pc 0x8001dac2c word 0x2a1f03f7
  %t3116 = or i32 0, 0
  %c3117 = zext i32 %t3116 to i64
  %wp3118 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3117, ptr %wp3118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac30 word 0x91001108
  %r3119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3119 = load i64, ptr %r3119.p, align 8, !alias.scope !3, !noalias !4
  %t3120 = add i64 %r3119, 4
  %wp3121 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3120, ptr %wp3121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dac34 word 0x17ffff21
  br label %L_8001da8b8
L_8001dad3c_ft:
  ; @pc 0x8001dad3c word 0x9001bba8
  %wp3431 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad40 word 0xb001bc29
  %wp3432 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad44 word 0xf942f908
  %r3433.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3433 = load i64, ptr %r3433.p, align 8, !alias.scope !3, !noalias !4
  %t3434 = add i64 %r3433, 1520
  %gmp3435 = inttoptr i64 %t3434 to ptr
  %gml3436 = load i64, ptr %gmp3435, align 1, !alias.scope !4, !noalias !3
  %wp3437 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3436, ptr %wp3437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad48 word 0xf9452929
  %r3438.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3438 = load i64, ptr %r3438.p, align 8, !alias.scope !3, !noalias !4
  %t3439 = add i64 %r3438, 2640
  %gmp3440 = inttoptr i64 %t3439 to ptr
  %gml3441 = load i64, ptr %gmp3440, align 1, !alias.scope !4, !noalias !3
  %wp3442 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3441, ptr %wp3442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad4c word 0xb001bc20
  %wp3443 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad50 word 0x91004108
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %t3445 = add i64 %r3444, 16
  %wp3446 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3445, ptr %wp3446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad54 word 0xf9000128
  %r3447.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3447 = load i64, ptr %r3447.p, align 8, !alias.scope !3, !noalias !4
  %r3448.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3448 = load i64, ptr %r3448.p, align 8, !alias.scope !3, !noalias !4
  %gmp3449 = inttoptr i64 %r3447 to ptr
  store i64 %r3448, ptr %gmp3449, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dad58 word 0xf9452c00
  %r3450.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3450 = load i64, ptr %r3450.p, align 8, !alias.scope !3, !noalias !4
  %t3451 = add i64 %r3450, 2648
  %gmp3452 = inttoptr i64 %t3451 to ptr
  %gml3453 = load i64, ptr %gmp3452, align 1, !alias.scope !4, !noalias !3
  %wp3454 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3453, ptr %wp3454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad5c word 0x94a72315
  %wp3455 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683296, ptr %wp3455, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001dad60 word 0xb94017ea
  %r3456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3456 = load i64, ptr %r3456.p, align 8, !alias.scope !3, !noalias !4
  %t3457 = add i64 %r3456, 20
  %gmp3458 = inttoptr i64 %t3457 to ptr
  %gml3459 = load i32, ptr %gmp3458, align 1, !alias.scope !4, !noalias !3
  %c3460 = zext i32 %gml3459 to i64
  %wp3461 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3460, ptr %wp3461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad64 word 0x2a1b03e5
  %r3462.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3462 = load i64, ptr %r3462.p, align 8, !alias.scope !3, !noalias !4
  %c3463 = trunc i64 %r3462 to i32
  %t3464 = or i32 0, %c3463
  %c3465 = zext i32 %t3464 to i64
  %wp3466 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3465, ptr %wp3466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad68 word 0xaa1903e3
  %r3467.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3467 = load i64, ptr %r3467.p, align 8, !alias.scope !3, !noalias !4
  %t3468 = or i64 0, %r3467
  %wp3469 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3468, ptr %wp3469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad6c word 0xb94007e4
  %r3470.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3470 = load i64, ptr %r3470.p, align 8, !alias.scope !3, !noalias !4
  %t3471 = add i64 %r3470, 4
  %gmp3472 = inttoptr i64 %t3471 to ptr
  %gml3473 = load i32, ptr %gmp3472, align 1, !alias.scope !4, !noalias !3
  %c3474 = zext i32 %gml3473 to i64
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3474, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dad70 word 0x17fffdf4
  br label %L_8001da540
L_8001dada0_ft:
  ; @pc 0x8001dada0 word 0xb001bc28
  %wp3519 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp3519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dada4 word 0x9001bba9
  %wp3520 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dada8 word 0xf9454108
  %r3521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3521 = load i64, ptr %r3521.p, align 8, !alias.scope !3, !noalias !4
  %t3522 = add i64 %r3521, 2688
  %gmp3523 = inttoptr i64 %t3522 to ptr
  %gml3524 = load i64, ptr %gmp3523, align 1, !alias.scope !4, !noalias !3
  %wp3525 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3524, ptr %wp3525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadac word 0xf942f929
  %r3526.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3526 = load i64, ptr %r3526.p, align 8, !alias.scope !3, !noalias !4
  %t3527 = add i64 %r3526, 1520
  %gmp3528 = inttoptr i64 %t3527 to ptr
  %gml3529 = load i64, ptr %gmp3528, align 1, !alias.scope !4, !noalias !3
  %wp3530 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3529, ptr %wp3530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadb0 word 0xb001bc20
  %wp3531 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadb4 word 0x91004129
  %r3532.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3532 = load i64, ptr %r3532.p, align 8, !alias.scope !3, !noalias !4
  %t3533 = add i64 %r3532, 16
  %wp3534 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3533, ptr %wp3534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadb8 word 0xf9000109
  %r3535.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3535 = load i64, ptr %r3535.p, align 8, !alias.scope !3, !noalias !4
  %r3536.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3536 = load i64, ptr %r3536.p, align 8, !alias.scope !3, !noalias !4
  %gmp3537 = inttoptr i64 %r3535 to ptr
  store i64 %r3536, ptr %gmp3537, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dadbc word 0xf9454400
  %r3538.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3538 = load i64, ptr %r3538.p, align 8, !alias.scope !3, !noalias !4
  %t3539 = add i64 %r3538, 2696
  %gmp3540 = inttoptr i64 %t3539 to ptr
  %gml3541 = load i64, ptr %gmp3540, align 1, !alias.scope !4, !noalias !3
  %wp3542 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3541, ptr %wp3542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadc0 word 0x94a722fc
  %wp3543 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683396, ptr %wp3543, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001dadc4 word 0xb94017ea
  %r3544.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3544 = load i64, ptr %r3544.p, align 8, !alias.scope !3, !noalias !4
  %t3545 = add i64 %r3544, 20
  %gmp3546 = inttoptr i64 %t3545 to ptr
  %gml3547 = load i32, ptr %gmp3546, align 1, !alias.scope !4, !noalias !3
  %c3548 = zext i32 %gml3547 to i64
  %wp3549 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3548, ptr %wp3549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadc8 word 0x2a1b03e5
  %r3550.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3550 = load i64, ptr %r3550.p, align 8, !alias.scope !3, !noalias !4
  %c3551 = trunc i64 %r3550 to i32
  %t3552 = or i32 0, %c3551
  %c3553 = zext i32 %t3552 to i64
  %wp3554 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3553, ptr %wp3554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadcc word 0xaa1903e3
  %r3555.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3555 = load i64, ptr %r3555.p, align 8, !alias.scope !3, !noalias !4
  %t3556 = or i64 0, %r3555
  %wp3557 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3556, ptr %wp3557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadd0 word 0xb94007e4
  %r3558.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3558 = load i64, ptr %r3558.p, align 8, !alias.scope !3, !noalias !4
  %t3559 = add i64 %r3558, 4
  %gmp3560 = inttoptr i64 %t3559 to ptr
  %gml3561 = load i32, ptr %gmp3560, align 1, !alias.scope !4, !noalias !3
  %c3562 = zext i32 %gml3561 to i64
  %wp3563 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3562, ptr %wp3563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dadd4 word 0x17fffe24
  br label %L_8001da664
L_8001dae04_ft:
  ; @pc 0x8001dae04 word 0x9001bba8
  %wp3607 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae08 word 0xb001bc29
  %wp3608 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae0c word 0xf942f908
  %r3609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3609 = load i64, ptr %r3609.p, align 8, !alias.scope !3, !noalias !4
  %t3610 = add i64 %r3609, 1520
  %gmp3611 = inttoptr i64 %t3610 to ptr
  %gml3612 = load i64, ptr %gmp3611, align 1, !alias.scope !4, !noalias !3
  %wp3613 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3612, ptr %wp3613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae10 word 0xf9454929
  %r3614.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3614 = load i64, ptr %r3614.p, align 8, !alias.scope !3, !noalias !4
  %t3615 = add i64 %r3614, 2704
  %gmp3616 = inttoptr i64 %t3615 to ptr
  %gml3617 = load i64, ptr %gmp3616, align 1, !alias.scope !4, !noalias !3
  %wp3618 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3617, ptr %wp3618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae14 word 0xb001bc20
  %wp3619 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae18 word 0x91004108
  %r3620.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3620 = load i64, ptr %r3620.p, align 8, !alias.scope !3, !noalias !4
  %t3621 = add i64 %r3620, 16
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae1c word 0xf9000128
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %r3624.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3624 = load i64, ptr %r3624.p, align 8, !alias.scope !3, !noalias !4
  %gmp3625 = inttoptr i64 %r3623 to ptr
  store i64 %r3624, ptr %gmp3625, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001dae20 word 0xf9454c00
  %r3626.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3626 = load i64, ptr %r3626.p, align 8, !alias.scope !3, !noalias !4
  %t3627 = add i64 %r3626, 2712
  %gmp3628 = inttoptr i64 %t3627 to ptr
  %gml3629 = load i64, ptr %gmp3628, align 1, !alias.scope !4, !noalias !3
  %wp3630 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3629, ptr %wp3630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae24 word 0x94a722e3
  %wp3631 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683496, ptr %wp3631, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001dae28 word 0xb94017ea
  %r3632.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3632 = load i64, ptr %r3632.p, align 8, !alias.scope !3, !noalias !4
  %t3633 = add i64 %r3632, 20
  %gmp3634 = inttoptr i64 %t3633 to ptr
  %gml3635 = load i32, ptr %gmp3634, align 1, !alias.scope !4, !noalias !3
  %c3636 = zext i32 %gml3635 to i64
  %wp3637 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3636, ptr %wp3637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae2c word 0x2a1b03e5
  %r3638.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3638 = load i64, ptr %r3638.p, align 8, !alias.scope !3, !noalias !4
  %c3639 = trunc i64 %r3638 to i32
  %t3640 = or i32 0, %c3639
  %c3641 = zext i32 %t3640 to i64
  %wp3642 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3641, ptr %wp3642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae30 word 0xaa1903e3
  %r3643.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3643 = load i64, ptr %r3643.p, align 8, !alias.scope !3, !noalias !4
  %t3644 = or i64 0, %r3643
  %wp3645 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3644, ptr %wp3645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae34 word 0xb94007e4
  %r3646.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3646 = load i64, ptr %r3646.p, align 8, !alias.scope !3, !noalias !4
  %t3647 = add i64 %r3646, 4
  %gmp3648 = inttoptr i64 %t3647 to ptr
  %gml3649 = load i32, ptr %gmp3648, align 1, !alias.scope !4, !noalias !3
  %c3650 = zext i32 %gml3649 to i64
  %wp3651 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3650, ptr %wp3651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae38 word 0x17fffe23
  br label %L_8001da6c4
L_8001dae64_ft:
  ; @pc 0x8001dae64 word 0xf9400408
  %r3688.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3688 = load i64, ptr %r3688.p, align 8, !alias.scope !3, !noalias !4
  %t3689 = add i64 %r3688, 8
  %gmp3690 = inttoptr i64 %t3689 to ptr
  %gml3691 = load i64, ptr %gmp3690, align 1, !alias.scope !4, !noalias !3
  %wp3692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3691, ptr %wp3692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae68 word 0x5280002b
  %c3693 = zext i32 1 to i64
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3693, ptr %wp3694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae6c word 0x72a0080b
  %r3695.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3695 = load i64, ptr %r3695.p, align 8, !alias.scope !3, !noalias !4
  %t3696 = and i64 %r3695, -4294901761
  %t3697 = or i64 %t3696, 4194304
  %c3698 = trunc i64 %t3697 to i32
  %c3699 = zext i32 %c3698 to i64
  %wp3700 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3699, ptr %wp3700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae70 word 0xf940030a
  %r3701.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3701 = load i64, ptr %r3701.p, align 8, !alias.scope !3, !noalias !4
  %gmp3702 = inttoptr i64 %r3701 to ptr
  %gml3703 = load i64, ptr %gmp3702, align 1, !alias.scope !4, !noalias !3
  %wp3704 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3703, ptr %wp3704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae74 word 0x8b090d09
  %r3705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3705 = load i64, ptr %r3705.p, align 8, !alias.scope !3, !noalias !4
  %r3706.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3706 = load i64, ptr %r3706.p, align 8, !alias.scope !3, !noalias !4
  %t3707 = shl i64 %r3706, 3
  %t3708 = add i64 %r3705, %t3707
  %wp3709 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3708, ptr %wp3709, align 8, !alias.scope !3, !noalias !4
  br label %L_8001dae78
L_8001dae88_ft:
  ; @pc 0x8001dae88 word 0xb940318d
  %r3746.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3746 = load i64, ptr %r3746.p, align 8, !alias.scope !3, !noalias !4
  %t3747 = add i64 %r3746, 48
  %gmp3748 = inttoptr i64 %t3747 to ptr
  %gml3749 = load i32, ptr %gmp3748, align 1, !alias.scope !4, !noalias !3
  %c3750 = zext i32 %gml3749 to i64
  %wp3751 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3750, ptr %wp3751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae8c word 0x37f801ad
  %r3752.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3752 = load i64, ptr %r3752.p, align 8, !alias.scope !3, !noalias !4
  %t3753 = and i64 %r3752, 2147483648
  %cmp3754 = icmp ne i64 %t3753, 0
  br i1 %cmp3754, label %L_8001daec0, label %L_8001dae90_ft
L_8001dae90_ft:
  ; @pc 0x8001dae90 word 0xf940018d
  %r3755.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3755 = load i64, ptr %r3755.p, align 8, !alias.scope !3, !noalias !4
  %gmp3756 = inttoptr i64 %r3755 to ptr
  %gml3757 = load i64, ptr %gmp3756, align 1, !alias.scope !4, !noalias !3
  %wp3758 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3757, ptr %wp3758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae94 word 0xeb0a01bf
  %r3759.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3759 = load i64, ptr %r3759.p, align 8, !alias.scope !3, !noalias !4
  %r3760.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3760 = load i64, ptr %r3760.p, align 8, !alias.scope !3, !noalias !4
  %t3761 = sub i64 %r3759, %r3760
  %fn3762 = icmp slt i64 %t3761, 0
  %fz3763 = icmp eq i64 %t3761, 0
  %fc3764 = icmp uge i64 %r3759, %r3760
  %fx13765 = xor i64 %r3759, %r3760
  %fx23766 = xor i64 %r3759, %t3761
  %fva3767 = and i64 %fx13765, %fx23766
  %fv3768 = icmp slt i64 %fva3767, 0
  %nz3769 = zext i1 %fn3762 to i64
  %zz3770 = zext i1 %fz3763 to i64
  %cz3771 = zext i1 %fc3764 to i64
  %vz3772 = zext i1 %fv3768 to i64
  %ns3773 = shl i64 %nz3769, 31
  %zs3774 = shl i64 %zz3770, 30
  %cs3775 = shl i64 %cz3771, 29
  %vs3776 = shl i64 %vz3772, 28
  %nzor3777 = or i64 %ns3773, %zs3774
  %cvor3778 = or i64 %cs3775, %vs3776
  %nzcv3779 = or i64 %nzor3777, %cvor3778
  %wp3780 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3779, ptr %wp3780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001dae98 word 0x540001c0
  %r3781.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3781 = load i64, ptr %r3781.p, align 8, !alias.scope !3, !noalias !4
  %fsh3783 = lshr i64 %r3781, 30
  %cond3782 = trunc i64 %fsh3783 to i1
  br i1 %cond3782, label %L_8001daed0, label %L_8001dae9c_ft
L_8001dae9c_ft:
  ; @pc 0x8001dae9c word 0xaa0b03ee
  %r3784.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3784 = load i64, ptr %r3784.p, align 8, !alias.scope !3, !noalias !4
  %t3785 = or i64 0, %r3784
  %wp3786 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3785, ptr %wp3786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daea0 word 0xaa0a03ef
  %r3787.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3787 = load i64, ptr %r3787.p, align 8, !alias.scope !3, !noalias !4
  %t3788 = or i64 0, %r3787
  %wp3789 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3788, ptr %wp3789, align 8, !alias.scope !3, !noalias !4
  br label %L_8001daea4
L_8001daeb4_ft:
  ; @pc 0x8001daeb4 word 0x340000f0
  %r3832.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3832 = load i64, ptr %r3832.p, align 8, !alias.scope !3, !noalias !4
  %c3833 = trunc i64 %r3832 to i32
  %cmp3834 = icmp eq i32 %c3833, 0
  br i1 %cmp3834, label %L_8001daed0, label %L_8001daeb8_ft
L_8001daeb8_ft:
  ; @pc 0x8001daeb8 word 0xf10005ce
  %r3835.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3835 = load i64, ptr %r3835.p, align 8, !alias.scope !3, !noalias !4
  %t3836 = sub i64 %r3835, 1
  %fn3837 = icmp slt i64 %t3836, 0
  %fz3838 = icmp eq i64 %t3836, 0
  %fc3839 = icmp uge i64 %r3835, 1
  %fx13840 = xor i64 %r3835, 1
  %fx23841 = xor i64 %r3835, %t3836
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
  %wp3856 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3836, ptr %wp3856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daebc word 0x54ffff41
  %r3857.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3857 = load i64, ptr %r3857.p, align 8, !alias.scope !3, !noalias !4
  %fsh3859 = lshr i64 %r3857, 30
  %ftr3860 = trunc i64 %fsh3859 to i1
  %cond3858 = xor i1 %ftr3860, true
  br i1 %cond3858, label %L_8001daea4, label %L_8001daec0
L_8001daecc_ft:
  ; @pc 0x8001daecc word 0x17fffd8a
  br label %L_8001da4f4
L_8001daed4_ft:
  ; @pc 0x8001daed4 word 0xf9400268
  %r3893.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3893 = load i64, ptr %r3893.p, align 8, !alias.scope !3, !noalias !4
  %gmp3894 = inttoptr i64 %r3893 to ptr
  %gml3895 = load i64, ptr %gmp3894, align 1, !alias.scope !4, !noalias !3
  %wp3896 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3895, ptr %wp3896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daed8 word 0x927ef508
  %r3897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3897 = load i64, ptr %r3897.p, align 8, !alias.scope !3, !noalias !4
  %t3898 = and i64 %r3897, -4
  %wp3899 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3898, ptr %wp3899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daedc word 0xf9000588
  %r3900.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3900 = load i64, ptr %r3900.p, align 8, !alias.scope !3, !noalias !4
  %t3901 = add i64 %r3900, 8
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %gmp3903 = inttoptr i64 %t3901 to ptr
  store i64 %r3902, ptr %gmp3903, align 1, !alias.scope !4, !noalias !3
  br label %L_8001daee0
L_8001daf84_ft:
  ; @pc 0x8001daf84 word 0xb900029f
  %r4060.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4060 = load i64, ptr %r4060.p, align 8, !alias.scope !3, !noalias !4
  %gmp4061 = inttoptr i64 %r4060 to ptr
  store i32 0, ptr %gmp4061, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001daf88 word 0xb001bc20
  %wp4062 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp4062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf8c word 0xf9455c00
  %r4063.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4063 = load i64, ptr %r4063.p, align 8, !alias.scope !3, !noalias !4
  %t4064 = add i64 %r4063, 2744
  %gmp4065 = inttoptr i64 %t4064 to ptr
  %gml4066 = load i64, ptr %gmp4065, align 1, !alias.scope !4, !noalias !3
  %wp4067 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4066, ptr %wp4067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001daf90 word 0x94a72288
  %wp4068 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361683860, ptr %wp4068, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  br label %L_8001daf94
L_8001da940_jt_def:
  %fp4085 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2410, ptr %fp4085, align 8, !alias.scope !3, !noalias !4
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
