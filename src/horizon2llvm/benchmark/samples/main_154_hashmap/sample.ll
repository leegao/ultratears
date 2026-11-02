; UltraTears chunk main_154_hashmap: 1 functions [0x8002688c8..0x80026a090)
; ModuleID = 'main_154_hashmap_raw'
source_filename = "main_154_hashmap_raw"
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
declare dso_local void @f_800605f9c(ptr)
declare dso_local void @f_8023974b0(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)

define dso_local void @f_8002688c8(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8002688c8:
  ; @pc 0x8002688c8 word 0xd10643ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 400
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002688cc word 0xa9137bfd
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
  ; @pc 0x8002688d0 word 0xa9146ffc
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
  ; @pc 0x8002688d4 word 0xa91567fa
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
  ; @pc 0x8002688d8 word 0xa9165ff8
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
  ; @pc 0x8002688dc word 0xa91757f6
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
  ; @pc 0x8002688e0 word 0xa9184ff4
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
  ; @pc 0x8002688e4 word 0x9104c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 304
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002688e8 word 0xa9402009
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
  ; @pc 0x8002688ec word 0xd001b726
  %wp61 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002688f0 word 0x2a0303f7
  %r62.p = getelementptr inbounds i8, ptr %c, i64 24
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %c63 = trunc i64 %r62 to i32
  %t64 = or i32 0, %c63
  %c65 = zext i32 %t64 to i64
  %wp66 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002688f4 word 0xaa0203f3
  %r67.p = getelementptr inbounds i8, ptr %c, i64 16
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = or i64 0, %r67
  %wp69 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002688f8 word 0xaa0003f6
  %r70.p = getelementptr inbounds i8, ptr %c, i64 0
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %t71 = or i64 0, %r70
  %wp72 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t71, ptr %wp72, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002688fc word 0xaa0103e5
  %r73.p = getelementptr inbounds i8, ptr %c, i64 8
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268900 word 0xf940091a
  %r76.p = getelementptr inbounds i8, ptr %c, i64 64
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %t77 = add i64 %r76, 16
  %gmp78 = inttoptr i64 %t77 to ptr
  %gml79 = load i64, ptr %gmp78, align 1, !alias.scope !4, !noalias !3
  %wp80 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268904 word 0xf9404d29
  %r81.p = getelementptr inbounds i8, ptr %c, i64 72
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 152
  %gmp83 = inttoptr i64 %t82 to ptr
  %gml84 = load i64, ptr %gmp83, align 1, !alias.scope !4, !noalias !3
  %wp85 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268908 word 0xf94398c6
  %r86.p = getelementptr inbounds i8, ptr %c, i64 48
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %t87 = add i64 %r86, 1840
  %gmp88 = inttoptr i64 %t87 to ptr
  %gml89 = load i64, ptr %gmp88, align 1, !alias.scope !4, !noalias !3
  %wp90 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026890c word 0xeb06013f
  %r91.p = getelementptr inbounds i8, ptr %c, i64 72
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %r92.p = getelementptr inbounds i8, ptr %c, i64 48
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
  ; @pc 0x800268910 word 0x54003c61
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_80026909c, label %L_800268914_ft
L_800268930:
  ; @pc 0x800268930 word 0xb940640a
  %r155.p = getelementptr inbounds i8, ptr %c, i64 0
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %t156 = add i64 %r155, 100
  %gmp157 = inttoptr i64 %t156 to ptr
  %gml158 = load i32, ptr %gmp157, align 1, !alias.scope !4, !noalias !3
  %c159 = zext i32 %gml158 to i64
  %wp160 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c159, ptr %wp160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268934 word 0x52b84007
  %c161 = zext i32 -1040187392 to i64
  %wp162 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c161, ptr %wp162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268938 word 0x7100055f
  %r163.p = getelementptr inbounds i8, ptr %c, i64 80
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
  ; @pc 0x80026893c word 0x540022cb
  %r185.p = getelementptr inbounds i8, ptr %c, i64 272
  %r185 = load i64, ptr %r185.p, align 8, !alias.scope !3, !noalias !4
  %fsh187 = lshr i64 %r185, 31
  %ftr188 = trunc i64 %fsh187 to i1
  %fsh189 = lshr i64 %r185, 28
  %ftr190 = trunc i64 %fsh189 to i1
  %cond186 = icmp ne i1 %ftr188, %ftr190
  br i1 %cond186, label %L_800268d94, label %L_800268940_ft
L_80026896c:
  ; @pc 0x80026896c word 0xd37ced71
  %r239.p = getelementptr inbounds i8, ptr %c, i64 88
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %ror240 = call i64 @llvm.fshr.i64(i64 %r239, i64 %r239, i64 60)
  %t241 = and i64 %ror240, -16
  %wp242 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t241, ptr %wp242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268970 word 0xb8b16992
  %r243.p = getelementptr inbounds i8, ptr %c, i64 96
  %r243 = load i64, ptr %r243.p, align 8, !alias.scope !3, !noalias !4
  %r244.p = getelementptr inbounds i8, ptr %c, i64 136
  %r244 = load i64, ptr %r244.p, align 8, !alias.scope !3, !noalias !4
  %t245 = add i64 %r243, %r244
  %gmp246 = inttoptr i64 %t245 to ptr
  %gml247 = load i32, ptr %gmp246, align 1, !alias.scope !4, !noalias !3
  %c248 = sext i32 %gml247 to i64
  %wp249 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c248, ptr %wp249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268974 word 0x8b1201b1
  %r250.p = getelementptr inbounds i8, ptr %c, i64 104
  %r250 = load i64, ptr %r250.p, align 8, !alias.scope !3, !noalias !4
  %r251.p = getelementptr inbounds i8, ptr %c, i64 144
  %r251 = load i64, ptr %r251.p, align 8, !alias.scope !3, !noalias !4
  %t252 = add i64 %r250, %r251
  %wp253 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t252, ptr %wp253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268978 word 0xeb1101df
  %r254.p = getelementptr inbounds i8, ptr %c, i64 112
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %r255.p = getelementptr inbounds i8, ptr %c, i64 136
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
  ; @pc 0x80026897c word 0x540003a0
  %r276.p = getelementptr inbounds i8, ptr %c, i64 272
  %r276 = load i64, ptr %r276.p, align 8, !alias.scope !3, !noalias !4
  %fsh278 = lshr i64 %r276, 30
  %cond277 = trunc i64 %fsh278 to i1
  br i1 %cond277, label %L_8002689f0, label %L_800268980_ft
L_800268988:
  ; @pc 0x800268988 word 0x8b1101e0
  %r285.p = getelementptr inbounds i8, ptr %c, i64 120
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %r286.p = getelementptr inbounds i8, ptr %c, i64 136
  %r286 = load i64, ptr %r286.p, align 8, !alias.scope !3, !noalias !4
  %t287 = add i64 %r285, %r286
  %wp288 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t287, ptr %wp288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026898c word 0x8b110241
  %r289.p = getelementptr inbounds i8, ptr %c, i64 144
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %r290.p = getelementptr inbounds i8, ptr %c, i64 136
  %r290 = load i64, ptr %r290.p, align 8, !alias.scope !3, !noalias !4
  %t291 = add i64 %r289, %r290
  %wp292 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t291, ptr %wp292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268990 word 0x385ff002
  %r293.p = getelementptr inbounds i8, ptr %c, i64 0
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %t294 = add i64 %r293, -1
  %gmp295 = inttoptr i64 %t294 to ptr
  %gml296 = load i8, ptr %gmp295, align 1, !alias.scope !4, !noalias !3
  %c297 = zext i8 %gml296 to i64
  %wp298 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c297, ptr %wp298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268994 word 0x385fd023
  %r299.p = getelementptr inbounds i8, ptr %c, i64 8
  %r299 = load i64, ptr %r299.p, align 8, !alias.scope !3, !noalias !4
  %t300 = add i64 %r299, -3
  %gmp301 = inttoptr i64 %t300 to ptr
  %gml302 = load i8, ptr %gmp301, align 1, !alias.scope !4, !noalias !3
  %c303 = zext i8 %gml302 to i64
  %wp304 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c303, ptr %wp304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268998 word 0x6b03005f
  %r305.p = getelementptr inbounds i8, ptr %c, i64 16
  %r305 = load i64, ptr %r305.p, align 8, !alias.scope !3, !noalias !4
  %c306 = trunc i64 %r305 to i32
  %r307.p = getelementptr inbounds i8, ptr %c, i64 24
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
  ; @pc 0x80026899c word 0x54001f61
  %r329.p = getelementptr inbounds i8, ptr %c, i64 272
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %fsh331 = lshr i64 %r329, 30
  %ftr332 = trunc i64 %fsh331 to i1
  %cond330 = xor i1 %ftr332, true
  br i1 %cond330, label %L_800268d88, label %L_8002689a0_ft
L_8002689f0:
  ; @pc 0x8002689f0 word 0x8b0b118a
  %r494.p = getelementptr inbounds i8, ptr %c, i64 96
  %r494 = load i64, ptr %r494.p, align 8, !alias.scope !3, !noalias !4
  %r495.p = getelementptr inbounds i8, ptr %c, i64 88
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %t496 = shl i64 %r495, 4
  %t497 = add i64 %r494, %t496
  %wp498 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t497, ptr %wp498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689f4 word 0xaa0a03fc
  %r499.p = getelementptr inbounds i8, ptr %c, i64 80
  %r499 = load i64, ptr %r499.p, align 8, !alias.scope !3, !noalias !4
  %t500 = or i64 0, %r499
  %wp501 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t500, ptr %wp501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689f8 word 0xb8408f9b
  %r502.p = getelementptr inbounds i8, ptr %c, i64 224
  %r502 = load i64, ptr %r502.p, align 8, !alias.scope !3, !noalias !4
  %t503 = add i64 %r502, 8
  %gmp504 = inttoptr i64 %t503 to ptr
  %gml505 = load i32, ptr %gmp504, align 1, !alias.scope !4, !noalias !3
  %c506 = zext i32 %gml505 to i64
  %wp507 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t503, ptr %wp507, align 8, !alias.scope !3, !noalias !4
  %wp508 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c506, ptr %wp508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689fc word 0xaa1c03f5
  %r509.p = getelementptr inbounds i8, ptr %c, i64 224
  %r509 = load i64, ptr %r509.p, align 8, !alias.scope !3, !noalias !4
  %t510 = or i64 0, %r509
  %wp511 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t510, ptr %wp511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a00 word 0x78dfceb8
  %r512.p = getelementptr inbounds i8, ptr %c, i64 168
  %r512 = load i64, ptr %r512.p, align 8, !alias.scope !3, !noalias !4
  %t513 = add i64 %r512, -4
  %gmp514 = inttoptr i64 %t513 to ptr
  %gml515 = load i16, ptr %gmp514, align 1, !alias.scope !4, !noalias !3
  %c516 = sext i16 %gml515 to i32
  %wp517 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t513, ptr %wp517, align 8, !alias.scope !3, !noalias !4
  %c518 = zext i32 %c516 to i64
  %wp519 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c518, ptr %wp519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a04 word 0x0a07036b
  %r520.p = getelementptr inbounds i8, ptr %c, i64 56
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %c521 = trunc i64 %r520 to i32
  %r522.p = getelementptr inbounds i8, ptr %c, i64 216
  %r522 = load i64, ptr %r522.p, align 8, !alias.scope !3, !noalias !4
  %c523 = trunc i64 %r522 to i32
  %t524 = and i32 %c523, %c521
  %c525 = zext i32 %t524 to i64
  %wp526 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c525, ptr %wp526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a08 word 0x36f80498
  %r527.p = getelementptr inbounds i8, ptr %c, i64 192
  %r527 = load i64, ptr %r527.p, align 8, !alias.scope !3, !noalias !4
  %t528 = and i64 %r527, 2147483648
  %cmp529 = icmp eq i64 %t528, 0
  br i1 %cmp529, label %L_800268a98, label %L_800268a0c
L_800268a0c:
  ; @pc 0x800268a0c word 0x529ff388
  %c530 = zext i32 65436 to i64
  %wp531 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a10 word 0x6b38211f
  %r532.p = getelementptr inbounds i8, ptr %c, i64 64
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %c533 = trunc i64 %r532 to i32
  %r534.p = getelementptr inbounds i8, ptr %c, i64 192
  %r534 = load i64, ptr %r534.p, align 8, !alias.scope !3, !noalias !4
  %c535 = trunc i64 %r534 to i16
  %c536 = zext i16 %c535 to i64
  %c537 = trunc i64 %c536 to i32
  %t538 = sub i32 %c533, %c537
  %fn539 = icmp slt i32 %t538, 0
  %fz540 = icmp eq i32 %t538, 0
  %fc541 = icmp uge i32 %c533, %c537
  %fx1542 = xor i32 %c533, %c537
  %fx2543 = xor i32 %c533, %t538
  %fva544 = and i32 %fx1542, %fx2543
  %fv545 = icmp slt i32 %fva544, 0
  %nz546 = zext i1 %fn539 to i64
  %zz547 = zext i1 %fz540 to i64
  %cz548 = zext i1 %fc541 to i64
  %vz549 = zext i1 %fv545 to i64
  %ns550 = shl i64 %nz546, 31
  %zs551 = shl i64 %zz547, 30
  %cs552 = shl i64 %cz548, 29
  %vs553 = shl i64 %vz549, 28
  %nzor554 = or i64 %ns550, %zs551
  %cvor555 = or i64 %cs552, %vs553
  %nzcv556 = or i64 %nzor554, %cvor555
  %wp557 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv556, ptr %wp557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a14 word 0x54000fe2
  %r558.p = getelementptr inbounds i8, ptr %c, i64 272
  %r558 = load i64, ptr %r558.p, align 8, !alias.scope !3, !noalias !4
  %fsh560 = lshr i64 %r558, 29
  %cond559 = trunc i64 %fsh560 to i1
  br i1 %cond559, label %L_800268c10, label %L_800268a18
L_800268a18:
  ; @pc 0x800268a18 word 0xb9400388
  %r561.p = getelementptr inbounds i8, ptr %c, i64 224
  %r561 = load i64, ptr %r561.p, align 8, !alias.scope !3, !noalias !4
  %gmp562 = inttoptr i64 %r561 to ptr
  %gml563 = load i32, ptr %gmp562, align 1, !alias.scope !4, !noalias !3
  %c564 = zext i32 %gml563 to i64
  %wp565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c564, ptr %wp565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a1c word 0x6b07017f
  %r566.p = getelementptr inbounds i8, ptr %c, i64 88
  %r566 = load i64, ptr %r566.p, align 8, !alias.scope !3, !noalias !4
  %c567 = trunc i64 %r566 to i32
  %r568.p = getelementptr inbounds i8, ptr %c, i64 56
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %c569 = trunc i64 %r568 to i32
  %t570 = sub i32 %c567, %c569
  %fn571 = icmp slt i32 %t570, 0
  %fz572 = icmp eq i32 %t570, 0
  %fc573 = icmp uge i32 %c567, %c569
  %fx1574 = xor i32 %c567, %c569
  %fx2575 = xor i32 %c567, %t570
  %fva576 = and i32 %fx1574, %fx2575
  %fv577 = icmp slt i32 %fva576, 0
  %nz578 = zext i1 %fn571 to i64
  %zz579 = zext i1 %fz572 to i64
  %cz580 = zext i1 %fc573 to i64
  %vz581 = zext i1 %fv577 to i64
  %ns582 = shl i64 %nz578, 31
  %zs583 = shl i64 %zz579, 30
  %cs584 = shl i64 %cz580, 29
  %vs585 = shl i64 %vz581, 28
  %nzor586 = or i64 %ns582, %zs583
  %cvor587 = or i64 %cs584, %vs585
  %nzcv588 = or i64 %nzor586, %cvor587
  %wp589 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv588, ptr %wp589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a20 word 0x12077517
  %r590.p = getelementptr inbounds i8, ptr %c, i64 64
  %r590 = load i64, ptr %r590.p, align 8, !alias.scope !3, !noalias !4
  %c591 = trunc i64 %r590 to i32
  %t592 = and i32 %c591, -25165825
  %c593 = zext i32 %t592 to i64
  %wp594 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c593, ptr %wp594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a24 word 0x54000040
  %r595.p = getelementptr inbounds i8, ptr %c, i64 272
  %r595 = load i64, ptr %r595.p, align 8, !alias.scope !3, !noalias !4
  %fsh597 = lshr i64 %r595, 30
  %cond596 = trunc i64 %fsh597 to i1
  br i1 %cond596, label %L_800268a2c, label %L_800268a28_ft
L_800268a2c:
  ; @pc 0x800268a2c word 0xf9400b49
  %r601.p = getelementptr inbounds i8, ptr %c, i64 208
  %r601 = load i64, ptr %r601.p, align 8, !alias.scope !3, !noalias !4
  %t602 = add i64 %r601, 16
  %gmp603 = inttoptr i64 %t602 to ptr
  %gml604 = load i64, ptr %gmp603, align 1, !alias.scope !4, !noalias !3
  %wp605 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml604, ptr %wp605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a30 word 0x2a1f03fc
  %t606 = or i32 0, 0
  %c607 = zext i32 %t606 to i64
  %wp608 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c607, ptr %wp608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a34 word 0xb9800d48
  %r609.p = getelementptr inbounds i8, ptr %c, i64 80
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %t610 = add i64 %r609, 12
  %gmp611 = inttoptr i64 %t610 to ptr
  %gml612 = load i32, ptr %gmp611, align 1, !alias.scope !4, !noalias !3
  %c613 = sext i32 %gml612 to i64
  %wp614 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c613, ptr %wp614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a38 word 0x8b080128
  %r615.p = getelementptr inbounds i8, ptr %c, i64 72
  %r615 = load i64, ptr %r615.p, align 8, !alias.scope !3, !noalias !4
  %r616.p = getelementptr inbounds i8, ptr %c, i64 64
  %r616 = load i64, ptr %r616.p, align 8, !alias.scope !3, !noalias !4
  %t617 = add i64 %r615, %r616
  %wp618 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t617, ptr %wp618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a3c word 0xb980252a
  %r619.p = getelementptr inbounds i8, ptr %c, i64 72
  %r619 = load i64, ptr %r619.p, align 8, !alias.scope !3, !noalias !4
  %t620 = add i64 %r619, 36
  %gmp621 = inttoptr i64 %t620 to ptr
  %gml622 = load i32, ptr %gmp621, align 1, !alias.scope !4, !noalias !3
  %c623 = sext i32 %gml622 to i64
  %wp624 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c623, ptr %wp624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a40 word 0x8b0a0108
  %r625.p = getelementptr inbounds i8, ptr %c, i64 64
  %r625 = load i64, ptr %r625.p, align 8, !alias.scope !3, !noalias !4
  %r626.p = getelementptr inbounds i8, ptr %c, i64 80
  %r626 = load i64, ptr %r626.p, align 8, !alias.scope !3, !noalias !4
  %t627 = add i64 %r625, %r626
  %wp628 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t627, ptr %wp628, align 8, !alias.scope !3, !noalias !4
  br label %L_800268a44
L_800268a44:
  ; @pc 0x800268a44 word 0xf9400274
  %r629.p = getelementptr inbounds i8, ptr %c, i64 152
  %r629 = load i64, ptr %r629.p, align 8, !alias.scope !3, !noalias !4
  %gmp630 = inttoptr i64 %r629 to ptr
  %gml631 = load i64, ptr %gmp630, align 1, !alias.scope !4, !noalias !3
  %wp632 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml631, ptr %wp632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a48 word 0xaa1303ea
  %r633.p = getelementptr inbounds i8, ptr %c, i64 152
  %r633 = load i64, ptr %r633.p, align 8, !alias.scope !3, !noalias !4
  %t634 = or i64 0, %r633
  %wp635 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t634, ptr %wp635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a4c word 0x0a0702e9
  %r636.p = getelementptr inbounds i8, ptr %c, i64 56
  %r636 = load i64, ptr %r636.p, align 8, !alias.scope !3, !noalias !4
  %c637 = trunc i64 %r636 to i32
  %r638.p = getelementptr inbounds i8, ptr %c, i64 184
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %c639 = trunc i64 %r638 to i32
  %t640 = and i32 %c639, %c637
  %c641 = zext i32 %t640 to i64
  %wp642 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c641, ptr %wp642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a50 word 0xf8008d48
  %r643.p = getelementptr inbounds i8, ptr %c, i64 80
  %r643 = load i64, ptr %r643.p, align 8, !alias.scope !3, !noalias !4
  %t644 = add i64 %r643, 8
  %r645.p = getelementptr inbounds i8, ptr %c, i64 64
  %r645 = load i64, ptr %r645.p, align 8, !alias.scope !3, !noalias !4
  %gmp646 = inttoptr i64 %t644 to ptr
  store i64 %r645, ptr %gmp646, align 1, !alias.scope !4, !noalias !3
  %wp647 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t644, ptr %wp647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a54 word 0x53186368
  %r648.p = getelementptr inbounds i8, ptr %c, i64 216
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %c649 = trunc i64 %r648 to i32
  %ror650 = call i32 @llvm.fshr.i32(i32 %c649, i32 %c649, i32 24)
  %t651 = and i32 %ror650, 1
  %c652 = zext i32 %t651 to i64
  %wp653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c652, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a58 word 0xaa0a0108
  %r654.p = getelementptr inbounds i8, ptr %c, i64 80
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %r655.p = getelementptr inbounds i8, ptr %c, i64 64
  %r655 = load i64, ptr %r655.p, align 8, !alias.scope !3, !noalias !4
  %t656 = or i64 %r655, %r654
  %wp657 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t656, ptr %wp657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a5c word 0xf9000268
  %r658.p = getelementptr inbounds i8, ptr %c, i64 152
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %r659.p = getelementptr inbounds i8, ptr %c, i64 64
  %r659 = load i64, ptr %r659.p, align 8, !alias.scope !3, !noalias !4
  %gmp660 = inttoptr i64 %r658 to ptr
  store i64 %r659, ptr %gmp660, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268a60 word 0x36b8007b
  %r661.p = getelementptr inbounds i8, ptr %c, i64 216
  %r661 = load i64, ptr %r661.p, align 8, !alias.scope !3, !noalias !4
  %t662 = and i64 %r661, 8388608
  %cmp663 = icmp eq i64 %t662, 0
  br i1 %cmp663, label %L_800268a6c, label %L_800268a64_ft
L_800268a6c:
  ; @pc 0x800268a6c word 0x6b07013f
  %r670.p = getelementptr inbounds i8, ptr %c, i64 72
  %r670 = load i64, ptr %r670.p, align 8, !alias.scope !3, !noalias !4
  %c671 = trunc i64 %r670 to i32
  %r672.p = getelementptr inbounds i8, ptr %c, i64 56
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %c673 = trunc i64 %r672 to i32
  %t674 = sub i32 %c671, %c673
  %fn675 = icmp slt i32 %t674, 0
  %fz676 = icmp eq i32 %t674, 0
  %fc677 = icmp uge i32 %c671, %c673
  %fx1678 = xor i32 %c671, %c673
  %fx2679 = xor i32 %c671, %t674
  %fva680 = and i32 %fx1678, %fx2679
  %fv681 = icmp slt i32 %fva680, 0
  %nz682 = zext i1 %fn675 to i64
  %zz683 = zext i1 %fz676 to i64
  %cz684 = zext i1 %fc677 to i64
  %vz685 = zext i1 %fv681 to i64
  %ns686 = shl i64 %nz682, 31
  %zs687 = shl i64 %zz683, 30
  %cs688 = shl i64 %cz684, 29
  %vs689 = shl i64 %vz685, 28
  %nzor690 = or i64 %ns686, %zs687
  %cvor691 = or i64 %cs688, %vs689
  %nzcv692 = or i64 %nzor690, %cvor691
  %wp693 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv692, ptr %wp693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a70 word 0x540013e0
  %r694.p = getelementptr inbounds i8, ptr %c, i64 272
  %r694 = load i64, ptr %r694.p, align 8, !alias.scope !3, !noalias !4
  %fsh696 = lshr i64 %r694, 30
  %cond695 = trunc i64 %fsh696 to i1
  br i1 %cond695, label %L_800268cec, label %L_800268a74
L_800268a74:
  ; @pc 0x800268a74 word 0x52000380
  %r697.p = getelementptr inbounds i8, ptr %c, i64 224
  %r697 = load i64, ptr %r697.p, align 8, !alias.scope !3, !noalias !4
  %c698 = trunc i64 %r697 to i32
  %t699 = xor i32 %c698, 1
  %c700 = zext i32 %t699 to i64
  %wp701 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c700, ptr %wp701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a78 word 0xa9584ff4
  %r702.p = getelementptr inbounds i8, ptr %c, i64 256
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %t703 = add i64 %r702, 384
  %t704 = add i64 %t703, 8
  %gmp705 = inttoptr i64 %t703 to ptr
  %gml706 = load i64, ptr %gmp705, align 1, !alias.scope !4, !noalias !3
  %gmp707 = inttoptr i64 %t704 to ptr
  %gml708 = load i64, ptr %gmp707, align 1, !alias.scope !4, !noalias !3
  %wp709 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml706, ptr %wp709, align 8, !alias.scope !3, !noalias !4
  %wp710 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml708, ptr %wp710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a7c word 0xa95757f6
  %r711.p = getelementptr inbounds i8, ptr %c, i64 256
  %r711 = load i64, ptr %r711.p, align 8, !alias.scope !3, !noalias !4
  %t712 = add i64 %r711, 368
  %t713 = add i64 %t712, 8
  %gmp714 = inttoptr i64 %t712 to ptr
  %gml715 = load i64, ptr %gmp714, align 1, !alias.scope !4, !noalias !3
  %gmp716 = inttoptr i64 %t713 to ptr
  %gml717 = load i64, ptr %gmp716, align 1, !alias.scope !4, !noalias !3
  %wp718 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml715, ptr %wp718, align 8, !alias.scope !3, !noalias !4
  %wp719 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml717, ptr %wp719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a80 word 0xa9565ff8
  %r720.p = getelementptr inbounds i8, ptr %c, i64 256
  %r720 = load i64, ptr %r720.p, align 8, !alias.scope !3, !noalias !4
  %t721 = add i64 %r720, 352
  %t722 = add i64 %t721, 8
  %gmp723 = inttoptr i64 %t721 to ptr
  %gml724 = load i64, ptr %gmp723, align 1, !alias.scope !4, !noalias !3
  %gmp725 = inttoptr i64 %t722 to ptr
  %gml726 = load i64, ptr %gmp725, align 1, !alias.scope !4, !noalias !3
  %wp727 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml724, ptr %wp727, align 8, !alias.scope !3, !noalias !4
  %wp728 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml726, ptr %wp728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a84 word 0xa95567fa
  %r729.p = getelementptr inbounds i8, ptr %c, i64 256
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %t730 = add i64 %r729, 336
  %t731 = add i64 %t730, 8
  %gmp732 = inttoptr i64 %t730 to ptr
  %gml733 = load i64, ptr %gmp732, align 1, !alias.scope !4, !noalias !3
  %gmp734 = inttoptr i64 %t731 to ptr
  %gml735 = load i64, ptr %gmp734, align 1, !alias.scope !4, !noalias !3
  %wp736 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml733, ptr %wp736, align 8, !alias.scope !3, !noalias !4
  %wp737 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml735, ptr %wp737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a88 word 0xa9546ffc
  %r738.p = getelementptr inbounds i8, ptr %c, i64 256
  %r738 = load i64, ptr %r738.p, align 8, !alias.scope !3, !noalias !4
  %t739 = add i64 %r738, 320
  %t740 = add i64 %t739, 8
  %gmp741 = inttoptr i64 %t739 to ptr
  %gml742 = load i64, ptr %gmp741, align 1, !alias.scope !4, !noalias !3
  %gmp743 = inttoptr i64 %t740 to ptr
  %gml744 = load i64, ptr %gmp743, align 1, !alias.scope !4, !noalias !3
  %wp745 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml742, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  %wp746 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml744, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a8c word 0xa9537bfd
  %r747.p = getelementptr inbounds i8, ptr %c, i64 256
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %t748 = add i64 %r747, 304
  %t749 = add i64 %t748, 8
  %gmp750 = inttoptr i64 %t748 to ptr
  %gml751 = load i64, ptr %gmp750, align 1, !alias.scope !4, !noalias !3
  %gmp752 = inttoptr i64 %t749 to ptr
  %gml753 = load i64, ptr %gmp752, align 1, !alias.scope !4, !noalias !3
  %wp754 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml751, ptr %wp754, align 8, !alias.scope !3, !noalias !4
  %wp755 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml753, ptr %wp755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a90 word 0x910643ff
  %r756.p = getelementptr inbounds i8, ptr %c, i64 256
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %t757 = add i64 %r756, 400
  %wp758 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t757, ptr %wp758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a94 word 0xd65f03c0
  ret void
L_800268a98:
  ; @pc 0x800268a98 word 0x7941b909
  %r759.p = getelementptr inbounds i8, ptr %c, i64 64
  %r759 = load i64, ptr %r759.p, align 8, !alias.scope !3, !noalias !4
  %t760 = add i64 %r759, 220
  %gmp761 = inttoptr i64 %t760 to ptr
  %gml762 = load i16, ptr %gmp761, align 1, !alias.scope !4, !noalias !3
  %c763 = zext i16 %gml762 to i64
  %wp764 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c763, ptr %wp764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a9c word 0x35000b69
  %r765.p = getelementptr inbounds i8, ptr %c, i64 72
  %r765 = load i64, ptr %r765.p, align 8, !alias.scope !3, !noalias !4
  %c766 = trunc i64 %r765 to i32
  %cmp767 = icmp ne i32 %c766, 0
  br i1 %cmp767, label %L_800268c08, label %L_800268aa0_ft
L_800268abc:
  ; @pc 0x800268abc word 0xf001b7a8
  %wp832 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ac0 word 0xf9452d08
  %r833.p = getelementptr inbounds i8, ptr %c, i64 64
  %r833 = load i64, ptr %r833.p, align 8, !alias.scope !3, !noalias !4
  %t834 = add i64 %r833, 2648
  %gmp835 = inttoptr i64 %t834 to ptr
  %gml836 = load i64, ptr %gmp835, align 1, !alias.scope !4, !noalias !3
  %wp837 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml836, ptr %wp837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ac4 word 0x08dffd08
  %r838.p = getelementptr inbounds i8, ptr %c, i64 64
  %r838 = load i64, ptr %r838.p, align 8, !alias.scope !3, !noalias !4
  %atp839 = inttoptr i64 %r838 to ptr
  %lda840 = load atomic i8, ptr %atp839 acquire, align 1, !alias.scope !4, !noalias !3
  %c841 = zext i8 %lda840 to i64
  %wp842 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c841, ptr %wp842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ac8 word 0x36004068
  %r843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r843 = load i64, ptr %r843.p, align 8, !alias.scope !3, !noalias !4
  %t844 = and i64 %r843, 1
  %cmp845 = icmp eq i64 %t844, 0
  br i1 %cmp845, label %L_8002692d4, label %L_800268acc
L_800268acc:
  ; @pc 0x800268acc word 0x9001b88e
  %wp846 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ad0 word 0x9001b88d
  %wp847 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ad4 word 0xf941b5ce
  %r848.p = getelementptr inbounds i8, ptr %c, i64 112
  %r848 = load i64, ptr %r848.p, align 8, !alias.scope !3, !noalias !4
  %t849 = add i64 %r848, 872
  %gmp850 = inttoptr i64 %t849 to ptr
  %gml851 = load i64, ptr %gmp850, align 1, !alias.scope !4, !noalias !3
  %wp852 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml851, ptr %wp852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ad8 word 0xd001b72c
  %wp853 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268adc word 0xd001b729
  %wp854 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ae0 word 0xf941bdad
  %r855.p = getelementptr inbounds i8, ptr %c, i64 104
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %t856 = add i64 %r855, 888
  %gmp857 = inttoptr i64 %t856 to ptr
  %gml858 = load i64, ptr %gmp857, align 1, !alias.scope !4, !noalias !3
  %wp859 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml858, ptr %wp859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ae4 word 0xf943018c
  %r860.p = getelementptr inbounds i8, ptr %c, i64 96
  %r860 = load i64, ptr %r860.p, align 8, !alias.scope !3, !noalias !4
  %t861 = add i64 %r860, 1536
  %gmp862 = inttoptr i64 %t861 to ptr
  %gml863 = load i64, ptr %gmp862, align 1, !alias.scope !4, !noalias !3
  %wp864 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml863, ptr %wp864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ae8 word 0xf9430d29
  %r865.p = getelementptr inbounds i8, ptr %c, i64 72
  %r865 = load i64, ptr %r865.p, align 8, !alias.scope !3, !noalias !4
  %t866 = add i64 %r865, 1560
  %gmp867 = inttoptr i64 %t866 to ptr
  %gml868 = load i64, ptr %gmp867, align 1, !alias.scope !4, !noalias !3
  %wp869 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml868, ptr %wp869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268aec word 0xb4000177
  %r870.p = getelementptr inbounds i8, ptr %c, i64 184
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %cmp871 = icmp eq i64 %r870, 0
  br i1 %cmp871, label %L_800268b18, label %L_800268af0_ft
L_800268b08:
  ; @pc 0x800268b08 word 0x08dffd88
  %r914.p = getelementptr inbounds i8, ptr %c, i64 96
  %r914 = load i64, ptr %r914.p, align 8, !alias.scope !3, !noalias !4
  %atp915 = inttoptr i64 %r914 to ptr
  %lda916 = load atomic i8, ptr %atp915 acquire, align 1, !alias.scope !4, !noalias !3
  %c917 = zext i8 %lda916 to i64
  %wp918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c917, ptr %wp918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b0c word 0x36005ec8
  %r919.p = getelementptr inbounds i8, ptr %c, i64 64
  %r919 = load i64, ptr %r919.p, align 8, !alias.scope !3, !noalias !4
  %t920 = and i64 %r919, 1
  %cmp921 = icmp eq i64 %t920, 0
  br i1 %cmp921, label %L_8002696e4, label %L_800268b10
L_800268b10:
  ; @pc 0x800268b10 word 0x08dffd28
  %r922.p = getelementptr inbounds i8, ptr %c, i64 72
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %atp923 = inttoptr i64 %r922 to ptr
  %lda924 = load atomic i8, ptr %atp923 acquire, align 1, !alias.scope !4, !noalias !3
  %c925 = zext i8 %lda924 to i64
  %wp926 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c925, ptr %wp926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b14 word 0x36006448
  %r927.p = getelementptr inbounds i8, ptr %c, i64 64
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %t928 = and i64 %r927, 1
  %cmp929 = icmp eq i64 %t928, 0
  br i1 %cmp929, label %L_80026979c, label %L_800268b18
L_800268b18:
  ; @pc 0x800268b18 word 0xf001b7a8
  %wp930 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b1c word 0xf9453508
  %r931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r931 = load i64, ptr %r931.p, align 8, !alias.scope !3, !noalias !4
  %t932 = add i64 %r931, 2664
  %gmp933 = inttoptr i64 %t932 to ptr
  %gml934 = load i64, ptr %gmp933, align 1, !alias.scope !4, !noalias !3
  %wp935 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml934, ptr %wp935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b20 word 0x08dffd08
  %r936.p = getelementptr inbounds i8, ptr %c, i64 64
  %r936 = load i64, ptr %r936.p, align 8, !alias.scope !3, !noalias !4
  %atp937 = inttoptr i64 %r936 to ptr
  %lda938 = load atomic i8, ptr %atp937 acquire, align 1, !alias.scope !4, !noalias !3
  %c939 = zext i8 %lda938 to i64
  %wp940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c939, ptr %wp940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b24 word 0x36004148
  %r941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %t942 = and i64 %r941, 1
  %cmp943 = icmp eq i64 %t942, 0
  br i1 %cmp943, label %L_80026934c, label %L_800268b28
L_800268b28:
  ; @pc 0x800268b28 word 0xb4000177
  %r944.p = getelementptr inbounds i8, ptr %c, i64 184
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %cmp945 = icmp eq i64 %r944, 0
  br i1 %cmp945, label %L_800268b54, label %L_800268b2c_ft
L_800268b44:
  ; @pc 0x800268b44 word 0x08dffd88
  %r988.p = getelementptr inbounds i8, ptr %c, i64 96
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %atp989 = inttoptr i64 %r988 to ptr
  %lda990 = load atomic i8, ptr %atp989 acquire, align 1, !alias.scope !4, !noalias !3
  %c991 = zext i8 %lda990 to i64
  %wp992 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c991, ptr %wp992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b48 word 0x36006e28
  %r993.p = getelementptr inbounds i8, ptr %c, i64 64
  %r993 = load i64, ptr %r993.p, align 8, !alias.scope !3, !noalias !4
  %t994 = and i64 %r993, 1
  %cmp995 = icmp eq i64 %t994, 0
  br i1 %cmp995, label %L_80026990c, label %L_800268b4c
L_800268b4c:
  ; @pc 0x800268b4c word 0x08dffd28
  %r996.p = getelementptr inbounds i8, ptr %c, i64 72
  %r996 = load i64, ptr %r996.p, align 8, !alias.scope !3, !noalias !4
  %atp997 = inttoptr i64 %r996 to ptr
  %lda998 = load atomic i8, ptr %atp997 acquire, align 1, !alias.scope !4, !noalias !3
  %c999 = zext i8 %lda998 to i64
  %wp1000 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c999, ptr %wp1000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b50 word 0x360073a8
  %r1001.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1001 = load i64, ptr %r1001.p, align 8, !alias.scope !3, !noalias !4
  %t1002 = and i64 %r1001, 1
  %cmp1003 = icmp eq i64 %t1002, 0
  br i1 %cmp1003, label %L_8002699c4, label %L_800268b54
L_800268b54:
  ; @pc 0x800268b54 word 0xf001b7a8
  %wp1004 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b58 word 0xf9453d08
  %r1005.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1005 = load i64, ptr %r1005.p, align 8, !alias.scope !3, !noalias !4
  %t1006 = add i64 %r1005, 2680
  %gmp1007 = inttoptr i64 %t1006 to ptr
  %gml1008 = load i64, ptr %gmp1007, align 1, !alias.scope !4, !noalias !3
  %wp1009 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1008, ptr %wp1009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b5c word 0x08dffd08
  %r1010.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1010 = load i64, ptr %r1010.p, align 8, !alias.scope !3, !noalias !4
  %atp1011 = inttoptr i64 %r1010 to ptr
  %lda1012 = load atomic i8, ptr %atp1011 acquire, align 1, !alias.scope !4, !noalias !3
  %c1013 = zext i8 %lda1012 to i64
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1013, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b60 word 0x36004528
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %t1016 = and i64 %r1015, 1
  %cmp1017 = icmp eq i64 %t1016, 0
  br i1 %cmp1017, label %L_800269404, label %L_800268b64
L_800268b64:
  ; @pc 0x800268b64 word 0xb4000177
  %r1018.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1018 = load i64, ptr %r1018.p, align 8, !alias.scope !3, !noalias !4
  %cmp1019 = icmp eq i64 %r1018, 0
  br i1 %cmp1019, label %L_800268b90, label %L_800268b68_ft
L_800268b80:
  ; @pc 0x800268b80 word 0x08dffd88
  %r1062.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1062 = load i64, ptr %r1062.p, align 8, !alias.scope !3, !noalias !4
  %atp1063 = inttoptr i64 %r1062 to ptr
  %lda1064 = load atomic i8, ptr %atp1063 acquire, align 1, !alias.scope !4, !noalias !3
  %c1065 = zext i8 %lda1064 to i64
  %wp1066 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1065, ptr %wp1066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b84 word 0x36009b88
  %r1067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1067 = load i64, ptr %r1067.p, align 8, !alias.scope !3, !noalias !4
  %t1068 = and i64 %r1067, 1
  %cmp1069 = icmp eq i64 %t1068, 0
  br i1 %cmp1069, label %L_800269ef4, label %L_800268b88
L_800268b88:
  ; @pc 0x800268b88 word 0x08dffd28
  %r1070.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1070 = load i64, ptr %r1070.p, align 8, !alias.scope !3, !noalias !4
  %atp1071 = inttoptr i64 %r1070 to ptr
  %lda1072 = load atomic i8, ptr %atp1071 acquire, align 1, !alias.scope !4, !noalias !3
  %c1073 = zext i8 %lda1072 to i64
  %wp1074 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1073, ptr %wp1074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b8c word 0x3600a108
  %r1075.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1075 = load i64, ptr %r1075.p, align 8, !alias.scope !3, !noalias !4
  %t1076 = and i64 %r1075, 1
  %cmp1077 = icmp eq i64 %t1076, 0
  br i1 %cmp1077, label %L_800269fac, label %L_800268b90
L_800268b90:
  ; @pc 0x800268b90 word 0xf001b7a8
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b94 word 0xf9454508
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %t1080 = add i64 %r1079, 2696
  %gmp1081 = inttoptr i64 %t1080 to ptr
  %gml1082 = load i64, ptr %gmp1081, align 1, !alias.scope !4, !noalias !3
  %wp1083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1082, ptr %wp1083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b98 word 0x08dffd08
  %r1084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1084 = load i64, ptr %r1084.p, align 8, !alias.scope !3, !noalias !4
  %atp1085 = inttoptr i64 %r1084 to ptr
  %lda1086 = load atomic i8, ptr %atp1085 acquire, align 1, !alias.scope !4, !noalias !3
  %c1087 = zext i8 %lda1086 to i64
  %wp1088 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1087, ptr %wp1088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b9c word 0x36004908
  %r1089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1089 = load i64, ptr %r1089.p, align 8, !alias.scope !3, !noalias !4
  %t1090 = and i64 %r1089, 1
  %cmp1091 = icmp eq i64 %t1090, 0
  br i1 %cmp1091, label %L_8002694bc, label %L_800268ba0
L_800268ba0:
  ; @pc 0x800268ba0 word 0xb4000177
  %r1092.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1092 = load i64, ptr %r1092.p, align 8, !alias.scope !3, !noalias !4
  %cmp1093 = icmp eq i64 %r1092, 0
  br i1 %cmp1093, label %L_800268bcc, label %L_800268ba4_ft
L_800268bbc:
  ; @pc 0x800268bbc word 0x08dffd88
  %r1136.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1136 = load i64, ptr %r1136.p, align 8, !alias.scope !3, !noalias !4
  %atp1137 = inttoptr i64 %r1136 to ptr
  %lda1138 = load atomic i8, ptr %atp1137 acquire, align 1, !alias.scope !4, !noalias !3
  %c1139 = zext i8 %lda1138 to i64
  %wp1140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1139, ptr %wp1140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bc0 word 0x36008868
  %r1141.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1141 = load i64, ptr %r1141.p, align 8, !alias.scope !3, !noalias !4
  %t1142 = and i64 %r1141, 1
  %cmp1143 = icmp eq i64 %t1142, 0
  br i1 %cmp1143, label %L_800269ccc, label %L_800268bc4
L_800268bc4:
  ; @pc 0x800268bc4 word 0x08dffd28
  %r1144.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1144 = load i64, ptr %r1144.p, align 8, !alias.scope !3, !noalias !4
  %atp1145 = inttoptr i64 %r1144 to ptr
  %lda1146 = load atomic i8, ptr %atp1145 acquire, align 1, !alias.scope !4, !noalias !3
  %c1147 = zext i8 %lda1146 to i64
  %wp1148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1147, ptr %wp1148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bc8 word 0x36008de8
  %r1149.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1149 = load i64, ptr %r1149.p, align 8, !alias.scope !3, !noalias !4
  %t1150 = and i64 %r1149, 1
  %cmp1151 = icmp eq i64 %t1150, 0
  br i1 %cmp1151, label %L_800269d84, label %L_800268bcc
L_800268bcc:
  ; @pc 0x800268bcc word 0xf001b7a8
  %wp1152 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bd0 word 0xf9454d08
  %r1153.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1153 = load i64, ptr %r1153.p, align 8, !alias.scope !3, !noalias !4
  %t1154 = add i64 %r1153, 2712
  %gmp1155 = inttoptr i64 %t1154 to ptr
  %gml1156 = load i64, ptr %gmp1155, align 1, !alias.scope !4, !noalias !3
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bd4 word 0x08dffd08
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %atp1159 = inttoptr i64 %r1158 to ptr
  %lda1160 = load atomic i8, ptr %atp1159 acquire, align 1, !alias.scope !4, !noalias !3
  %c1161 = zext i8 %lda1160 to i64
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1161, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bd8 word 0x36004ce8
  %r1163.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1163 = load i64, ptr %r1163.p, align 8, !alias.scope !3, !noalias !4
  %t1164 = and i64 %r1163, 1
  %cmp1165 = icmp eq i64 %t1164, 0
  br i1 %cmp1165, label %L_800269574, label %L_800268bdc
L_800268bdc:
  ; @pc 0x800268bdc word 0xb4000177
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %cmp1167 = icmp eq i64 %r1166, 0
  br i1 %cmp1167, label %L_800268c08, label %L_800268be0_ft
L_800268bf8:
  ; @pc 0x800268bf8 word 0x08dffd88
  %r1210.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1210 = load i64, ptr %r1210.p, align 8, !alias.scope !3, !noalias !4
  %atp1211 = inttoptr i64 %r1210 to ptr
  %lda1212 = load atomic i8, ptr %atp1211 acquire, align 1, !alias.scope !4, !noalias !3
  %c1213 = zext i8 %lda1212 to i64
  %wp1214 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1213, ptr %wp1214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bfc word 0x360078c8
  %r1215.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1215 = load i64, ptr %r1215.p, align 8, !alias.scope !3, !noalias !4
  %t1216 = and i64 %r1215, 1
  %cmp1217 = icmp eq i64 %t1216, 0
  br i1 %cmp1217, label %L_800269b14, label %L_800268c00
L_800268c00:
  ; @pc 0x800268c00 word 0x08dffd28
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %atp1219 = inttoptr i64 %r1218 to ptr
  %lda1220 = load atomic i8, ptr %atp1219 acquire, align 1, !alias.scope !4, !noalias !3
  %c1221 = zext i8 %lda1220 to i64
  %wp1222 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1221, ptr %wp1222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c04 word 0x36007cc8
  %r1223.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1223 = load i64, ptr %r1223.p, align 8, !alias.scope !3, !noalias !4
  %t1224 = and i64 %r1223, 1
  %cmp1225 = icmp eq i64 %t1224, 0
  br i1 %cmp1225, label %L_800269b9c, label %L_800268c08
L_800268c08:
  ; @pc 0x800268c08 word 0x794002b8
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %gmp1227 = inttoptr i64 %r1226 to ptr
  %gml1228 = load i16, ptr %gmp1227, align 1, !alias.scope !4, !noalias !3
  %c1229 = zext i16 %gml1228 to i64
  %wp1230 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1229, ptr %wp1230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c0c word 0x17ffff80
  br label %L_800268a0c
L_800268c10:
  ; @pc 0x800268c10 word 0x79400d48
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %t1232 = add i64 %r1231, 6
  %gmp1233 = inttoptr i64 %t1232 to ptr
  %gml1234 = load i16, ptr %gmp1233, align 1, !alias.scope !4, !noalias !3
  %c1235 = zext i16 %gml1234 to i64
  %wp1236 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1235, ptr %wp1236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c14 word 0x6b07017f
  %r1237.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1237 = load i64, ptr %r1237.p, align 8, !alias.scope !3, !noalias !4
  %c1238 = trunc i64 %r1237 to i32
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 56
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %c1240 = trunc i64 %r1239 to i32
  %t1241 = sub i32 %c1238, %c1240
  %fn1242 = icmp slt i32 %t1241, 0
  %fz1243 = icmp eq i32 %t1241, 0
  %fc1244 = icmp uge i32 %c1238, %c1240
  %fx11245 = xor i32 %c1238, %c1240
  %fx21246 = xor i32 %c1238, %t1241
  %fva1247 = and i32 %fx11245, %fx21246
  %fv1248 = icmp slt i32 %fva1247, 0
  %nz1249 = zext i1 %fn1242 to i64
  %zz1250 = zext i1 %fz1243 to i64
  %cz1251 = zext i1 %fc1244 to i64
  %vz1252 = zext i1 %fv1248 to i64
  %ns1253 = shl i64 %nz1249, 31
  %zs1254 = shl i64 %zz1250, 30
  %cs1255 = shl i64 %cz1251, 29
  %vs1256 = shl i64 %vz1252, 28
  %nzor1257 = or i64 %ns1253, %zs1254
  %cvor1258 = or i64 %cs1255, %vs1256
  %nzcv1259 = or i64 %nzor1257, %cvor1258
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1259, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c18 word 0x1200391a
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %c1262 = trunc i64 %r1261 to i32
  %t1263 = and i32 %c1262, 32767
  %c1264 = zext i32 %t1263 to i64
  %wp1265 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1264, ptr %wp1265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c1c word 0x54002640
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %fsh1268 = lshr i64 %r1266, 30
  %cond1267 = trunc i64 %fsh1268 to i1
  br i1 %cond1267, label %L_8002690e4, label %L_800268c20_ft
L_800268c28:
  ; @pc 0x800268c28 word 0xd001c2a8
  %wp1275 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp1275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c2c word 0x91154108
  %r1276.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1276 = load i64, ptr %r1276.p, align 8, !alias.scope !3, !noalias !4
  %t1277 = add i64 %r1276, 1360
  %wp1278 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1277, ptr %wp1278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c30 word 0xf9400274
  %r1279.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1279 = load i64, ptr %r1279.p, align 8, !alias.scope !3, !noalias !4
  %gmp1280 = inttoptr i64 %r1279 to ptr
  %gml1281 = load i64, ptr %gmp1280, align 1, !alias.scope !4, !noalias !3
  %wp1282 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1281, ptr %wp1282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c34 word 0x08dffd08
  %r1283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1283 = load i64, ptr %r1283.p, align 8, !alias.scope !3, !noalias !4
  %atp1284 = inttoptr i64 %r1283 to ptr
  %lda1285 = load atomic i8, ptr %atp1284 acquire, align 1, !alias.scope !4, !noalias !3
  %c1286 = zext i8 %lda1285 to i64
  %wp1287 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1286, ptr %wp1287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c38 word 0x36002088
  %r1288.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1288 = load i64, ptr %r1288.p, align 8, !alias.scope !3, !noalias !4
  %t1289 = and i64 %r1288, 1
  %cmp1290 = icmp eq i64 %t1289, 0
  br i1 %cmp1290, label %L_800269048, label %L_800268c3c
L_800268c3c:
  ; @pc 0x800268c3c word 0x377825b8
  %r1291.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1291 = load i64, ptr %r1291.p, align 8, !alias.scope !3, !noalias !4
  %t1292 = and i64 %r1291, 32768
  %cmp1293 = icmp ne i64 %t1292, 0
  br i1 %cmp1293, label %L_8002690f0, label %L_800268c40_ft
L_800268c94:
  ; @pc 0x800268c94 word 0x35002b95
  %r1442.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1442 = load i64, ptr %r1442.p, align 8, !alias.scope !3, !noalias !4
  %c1443 = trunc i64 %r1442 to i32
  %cmp1444 = icmp ne i32 %c1443, 0
  br i1 %cmp1444, label %L_800269204, label %L_800268c98_ft
L_800268cb4:
  ; @pc 0x800268cb4 word 0xf9400900
  %r1493.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1493 = load i64, ptr %r1493.p, align 8, !alias.scope !3, !noalias !4
  %t1494 = add i64 %r1493, 16
  %gmp1495 = inttoptr i64 %t1494 to ptr
  %gml1496 = load i64, ptr %gmp1495, align 1, !alias.scope !4, !noalias !3
  %wp1497 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1496, ptr %wp1497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cb8 word 0xb4000100
  %r1498.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1498 = load i64, ptr %r1498.p, align 8, !alias.scope !3, !noalias !4
  %cmp1499 = icmp eq i64 %r1498, 0
  br i1 %cmp1499, label %L_800268cd8, label %L_800268cbc_ft
L_800268cd8:
  ; @pc 0x800268cd8 word 0x8b38c008
  %r1546.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1546 = load i64, ptr %r1546.p, align 8, !alias.scope !3, !noalias !4
  %r1547.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1547 = load i64, ptr %r1547.p, align 8, !alias.scope !3, !noalias !4
  %c1548 = trunc i64 %r1547 to i32
  %c1549 = sext i32 %c1548 to i64
  %t1550 = add i64 %r1546, %c1549
  %wp1551 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1550, ptr %wp1551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cdc word 0x2a1f03fc
  %t1552 = or i32 0, 0
  %c1553 = zext i32 %t1552 to i64
  %wp1554 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1553, ptr %wp1554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ce0 word 0x927ef508
  %r1555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1555 = load i64, ptr %r1555.p, align 8, !alias.scope !3, !noalias !4
  %t1556 = and i64 %r1555, -4
  %wp1557 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1556, ptr %wp1557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ce4 word 0xf9000268
  %r1558.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1558 = load i64, ptr %r1558.p, align 8, !alias.scope !3, !noalias !4
  %r1559.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1559 = load i64, ptr %r1559.p, align 8, !alias.scope !3, !noalias !4
  %gmp1560 = inttoptr i64 %r1558 to ptr
  store i64 %r1559, ptr %gmp1560, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268ce8 word 0x3607ec75
  %r1561.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1561 = load i64, ptr %r1561.p, align 8, !alias.scope !3, !noalias !4
  %t1562 = and i64 %r1561, 1
  %cmp1563 = icmp eq i64 %t1562, 0
  br i1 %cmp1563, label %L_800268a74, label %L_800268cec
L_800268cec:
  ; @pc 0x800268cec word 0xaa1303fa
  %r1564.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1564 = load i64, ptr %r1564.p, align 8, !alias.scope !3, !noalias !4
  %t1565 = or i64 0, %r1564
  %wp1566 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1565, ptr %wp1566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cf0 word 0xaa0503f9
  %r1567.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1567 = load i64, ptr %r1567.p, align 8, !alias.scope !3, !noalias !4
  %t1568 = or i64 0, %r1567
  %wp1569 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1568, ptr %wp1569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cf4 word 0x2a0403f8
  %r1570.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1570 = load i64, ptr %r1570.p, align 8, !alias.scope !3, !noalias !4
  %c1571 = trunc i64 %r1570 to i32
  %t1572 = or i32 0, %c1571
  %c1573 = zext i32 %t1572 to i64
  %wp1574 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1573, ptr %wp1574, align 8, !alias.scope !3, !noalias !4
  br label %L_800268cf8
L_800268cf8:
  ; @pc 0x800268cf8 word 0xf1000e9f
  %r1575.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1575 = load i64, ptr %r1575.p, align 8, !alias.scope !3, !noalias !4
  %t1576 = sub i64 %r1575, 3
  %fn1577 = icmp slt i64 %t1576, 0
  %fz1578 = icmp eq i64 %t1576, 0
  %fc1579 = icmp uge i64 %r1575, 3
  %fx11580 = xor i64 %r1575, 3
  %fx21581 = xor i64 %r1575, %t1576
  %fva1582 = and i64 %fx11580, %fx21581
  %fv1583 = icmp slt i64 %fva1582, 0
  %nz1584 = zext i1 %fn1577 to i64
  %zz1585 = zext i1 %fz1578 to i64
  %cz1586 = zext i1 %fc1579 to i64
  %vz1587 = zext i1 %fv1583 to i64
  %ns1588 = shl i64 %nz1584, 31
  %zs1589 = shl i64 %zz1585, 30
  %cs1590 = shl i64 %cz1586, 29
  %vs1591 = shl i64 %vz1587, 28
  %nzor1592 = or i64 %ns1588, %zs1589
  %cvor1593 = or i64 %cs1590, %vs1591
  %nzcv1594 = or i64 %nzor1592, %cvor1593
  %wp1595 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1594, ptr %wp1595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cfc word 0x54000048
  %r1596.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1596 = load i64, ptr %r1596.p, align 8, !alias.scope !3, !noalias !4
  %fsh1598 = lshr i64 %r1596, 29
  %ftr1599 = trunc i64 %fsh1598 to i1
  %fsh1600 = lshr i64 %r1596, 30
  %ftr1601 = trunc i64 %fsh1600 to i1
  %fnz1602 = xor i1 %ftr1601, true
  %cond1597 = and i1 %ftr1599, %fnz1602
  br i1 %cond1597, label %L_800268d04, label %L_800268d00_ft
L_800268d04:
  ; @pc 0x800268d04 word 0xf9400ac0
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %t1607 = add i64 %r1606, 16
  %gmp1608 = inttoptr i64 %t1607 to ptr
  %gml1609 = load i64, ptr %gmp1608, align 1, !alias.scope !4, !noalias !3
  %wp1610 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1609, ptr %wp1610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d08 word 0xf9400008
  %r1611.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1611 = load i64, ptr %r1611.p, align 8, !alias.scope !3, !noalias !4
  %gmp1612 = inttoptr i64 %r1611 to ptr
  %gml1613 = load i64, ptr %gmp1612, align 1, !alias.scope !4, !noalias !3
  %wp1614 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1613, ptr %wp1614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d0c word 0xf9402d08
  %r1615.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1615 = load i64, ptr %r1615.p, align 8, !alias.scope !3, !noalias !4
  %t1616 = add i64 %r1615, 88
  %gmp1617 = inttoptr i64 %t1616 to ptr
  %gml1618 = load i64, ptr %gmp1617, align 1, !alias.scope !4, !noalias !3
  %wp1619 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1618, ptr %wp1619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d10 word 0xd63f0100
  %r1620.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1620 = load i64, ptr %r1620.p, align 8, !alias.scope !3, !noalias !4
  %fp1621 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1620, ptr %fp1621, align 8, !alias.scope !3, !noalias !4
  %wp1622 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362264852, ptr %wp1622, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268d14 word 0xb9800009
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %gmp1624 = inttoptr i64 %r1623 to ptr
  %gml1625 = load i32, ptr %gmp1624, align 1, !alias.scope !4, !noalias !3
  %c1626 = sext i32 %gml1625 to i64
  %wp1627 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1626, ptr %wp1627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d18 word 0x34ffeae9
  %r1628.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1628 = load i64, ptr %r1628.p, align 8, !alias.scope !3, !noalias !4
  %c1629 = trunc i64 %r1628 to i32
  %cmp1630 = icmp eq i32 %c1629, 0
  br i1 %cmp1630, label %L_800268a74, label %L_800268d1c_ft
L_800268d30:
  ; @pc 0x800268d30 word 0xf940010c
  %r1653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1653 = load i64, ptr %r1653.p, align 8, !alias.scope !3, !noalias !4
  %gmp1654 = inttoptr i64 %r1653 to ptr
  %gml1655 = load i64, ptr %gmp1654, align 1, !alias.scope !4, !noalias !3
  %wp1656 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1655, ptr %wp1656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d34 word 0xb9402d8d
  %r1657.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1657 = load i64, ptr %r1657.p, align 8, !alias.scope !3, !noalias !4
  %t1658 = add i64 %r1657, 44
  %gmp1659 = inttoptr i64 %t1658 to ptr
  %gml1660 = load i32, ptr %gmp1659, align 1, !alias.scope !4, !noalias !3
  %c1661 = zext i32 %gml1660 to i64
  %wp1662 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1661, ptr %wp1662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d38 word 0x710015bf
  %r1663.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1663 = load i64, ptr %r1663.p, align 8, !alias.scope !3, !noalias !4
  %c1664 = trunc i64 %r1663 to i32
  %t1665 = sub i32 %c1664, 5
  %fn1666 = icmp slt i32 %t1665, 0
  %fz1667 = icmp eq i32 %t1665, 0
  %fc1668 = icmp uge i32 %c1664, 5
  %fx11669 = xor i32 %c1664, 5
  %fx21670 = xor i32 %c1664, %t1665
  %fva1671 = and i32 %fx11669, %fx21670
  %fv1672 = icmp slt i32 %fva1671, 0
  %nz1673 = zext i1 %fn1666 to i64
  %zz1674 = zext i1 %fz1667 to i64
  %cz1675 = zext i1 %fc1668 to i64
  %vz1676 = zext i1 %fv1672 to i64
  %ns1677 = shl i64 %nz1673, 31
  %zs1678 = shl i64 %zz1674, 30
  %cs1679 = shl i64 %cz1675, 29
  %vs1680 = shl i64 %vz1676, 28
  %nzor1681 = or i64 %ns1677, %zs1678
  %cvor1682 = or i64 %cs1679, %vs1680
  %nzcv1683 = or i64 %nzor1681, %cvor1682
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d3c word 0x540001e1
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1685 = load i64, ptr %r1685.p, align 8, !alias.scope !3, !noalias !4
  %fsh1687 = lshr i64 %r1685, 30
  %ftr1688 = trunc i64 %fsh1687 to i1
  %cond1686 = xor i1 %ftr1688, true
  br i1 %cond1686, label %L_800268d78, label %L_800268d40_ft
L_800268d5c:
  ; @pc 0x800268d5c word 0x384015b0
  %r1733.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1733 = load i64, ptr %r1733.p, align 8, !alias.scope !3, !noalias !4
  %t1734 = add i64 %r1733, 1
  %gmp1735 = inttoptr i64 %r1733 to ptr
  %gml1736 = load i8, ptr %gmp1735, align 1, !alias.scope !4, !noalias !3
  %c1737 = zext i8 %gml1736 to i64
  %wp1738 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1734, ptr %wp1738, align 8, !alias.scope !3, !noalias !4
  %wp1739 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1737, ptr %wp1739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d60 word 0x384015f1
  %r1740.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1740 = load i64, ptr %r1740.p, align 8, !alias.scope !3, !noalias !4
  %t1741 = add i64 %r1740, 1
  %gmp1742 = inttoptr i64 %r1740 to ptr
  %gml1743 = load i8, ptr %gmp1742, align 1, !alias.scope !4, !noalias !3
  %c1744 = zext i8 %gml1743 to i64
  %wp1745 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1741, ptr %wp1745, align 8, !alias.scope !3, !noalias !4
  %wp1746 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1744, ptr %wp1746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d64 word 0x6b11021f
  %r1747.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1747 = load i64, ptr %r1747.p, align 8, !alias.scope !3, !noalias !4
  %c1748 = trunc i64 %r1747 to i32
  %r1749.p = getelementptr inbounds i8, ptr %c, i64 136
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
  ; @pc 0x800268d68 word 0x54000081
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %fsh1773 = lshr i64 %r1771, 30
  %ftr1774 = trunc i64 %fsh1773 to i1
  %cond1772 = xor i1 %ftr1774, true
  br i1 %cond1772, label %L_800268d78, label %L_800268d6c_ft
L_800268d78:
  ; @pc 0x800268d78 word 0x91002108
  %r1804.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1804 = load i64, ptr %r1804.p, align 8, !alias.scope !3, !noalias !4
  %t1805 = add i64 %r1804, 8
  %wp1806 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1805, ptr %wp1806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d7c word 0xeb09011f
  %r1807.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1807 = load i64, ptr %r1807.p, align 8, !alias.scope !3, !noalias !4
  %r1808.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1808 = load i64, ptr %r1808.p, align 8, !alias.scope !3, !noalias !4
  %t1809 = sub i64 %r1807, %r1808
  %fn1810 = icmp slt i64 %t1809, 0
  %fz1811 = icmp eq i64 %t1809, 0
  %fc1812 = icmp uge i64 %r1807, %r1808
  %fx11813 = xor i64 %r1807, %r1808
  %fx21814 = xor i64 %r1807, %t1809
  %fva1815 = and i64 %fx11813, %fx21814
  %fv1816 = icmp slt i64 %fva1815, 0
  %nz1817 = zext i1 %fn1810 to i64
  %zz1818 = zext i1 %fz1811 to i64
  %cz1819 = zext i1 %fc1812 to i64
  %vz1820 = zext i1 %fv1816 to i64
  %ns1821 = shl i64 %nz1817, 31
  %zs1822 = shl i64 %zz1818, 30
  %cs1823 = shl i64 %cz1819, 29
  %vs1824 = shl i64 %vz1820, 28
  %nzor1825 = or i64 %ns1821, %zs1822
  %cvor1826 = or i64 %cs1823, %vs1824
  %nzcv1827 = or i64 %nzor1825, %cvor1826
  %wp1828 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1827, ptr %wp1828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d80 word 0x54fffd81
  %r1829.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1829 = load i64, ptr %r1829.p, align 8, !alias.scope !3, !noalias !4
  %fsh1831 = lshr i64 %r1829, 30
  %ftr1832 = trunc i64 %fsh1831 to i1
  %cond1830 = xor i1 %ftr1832, true
  br i1 %cond1830, label %L_800268d30, label %L_800268d84_ft
L_800268d88:
  ; @pc 0x800268d88 word 0x9100056b
  %r1833.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1833 = load i64, ptr %r1833.p, align 8, !alias.scope !3, !noalias !4
  %t1834 = add i64 %r1833, 1
  %wp1835 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1834, ptr %wp1835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d8c word 0xeb0a017f
  %r1836.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1836 = load i64, ptr %r1836.p, align 8, !alias.scope !3, !noalias !4
  %r1837.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1837 = load i64, ptr %r1837.p, align 8, !alias.scope !3, !noalias !4
  %t1838 = sub i64 %r1836, %r1837
  %fn1839 = icmp slt i64 %t1838, 0
  %fz1840 = icmp eq i64 %t1838, 0
  %fc1841 = icmp uge i64 %r1836, %r1837
  %fx11842 = xor i64 %r1836, %r1837
  %fx21843 = xor i64 %r1836, %t1838
  %fva1844 = and i64 %fx11842, %fx21843
  %fv1845 = icmp slt i64 %fva1844, 0
  %nz1846 = zext i1 %fn1839 to i64
  %zz1847 = zext i1 %fz1840 to i64
  %cz1848 = zext i1 %fc1841 to i64
  %vz1849 = zext i1 %fv1845 to i64
  %ns1850 = shl i64 %nz1846, 31
  %zs1851 = shl i64 %zz1847, 30
  %cs1852 = shl i64 %cz1848, 29
  %vs1853 = shl i64 %vz1849, 28
  %nzor1854 = or i64 %ns1850, %zs1851
  %cvor1855 = or i64 %cs1852, %vs1853
  %nzcv1856 = or i64 %nzor1854, %cvor1855
  %wp1857 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1856, ptr %wp1857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d90 word 0x54ffdee1
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %fsh1860 = lshr i64 %r1858, 30
  %ftr1861 = trunc i64 %fsh1860 to i1
  %cond1859 = xor i1 %ftr1861, true
  br i1 %cond1859, label %L_80026896c, label %L_800268d94
L_800268d94:
  ; @pc 0x800268d94 word 0x37001297
  %r1862.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1862 = load i64, ptr %r1862.p, align 8, !alias.scope !3, !noalias !4
  %t1863 = and i64 %r1862, 1
  %cmp1864 = icmp ne i64 %t1863, 0
  br i1 %cmp1864, label %L_800268fe4, label %L_800268d98_ft
L_800268da4:
  ; @pc 0x800268da4 word 0xf0014d28
  %wp1873 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34405937152, ptr %wp1873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268da8 word 0x91047d08
  %r1874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1874 = load i64, ptr %r1874.p, align 8, !alias.scope !3, !noalias !4
  %t1875 = add i64 %r1874, 287
  %wp1876 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1875, ptr %wp1876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dac word 0x17ffff26
  br label %L_800268a44
L_800268db0:
  ; @pc 0x800268db0 word 0xf001b7a1
  %wp1877 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268db4 word 0xaa1703e0
  %r1878.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1878 = load i64, ptr %r1878.p, align 8, !alias.scope !3, !noalias !4
  %t1879 = or i64 0, %r1878
  %wp1880 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1879, ptr %wp1880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268db8 word 0xf9453821
  %r1881.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1881 = load i64, ptr %r1881.p, align 8, !alias.scope !3, !noalias !4
  %t1882 = add i64 %r1881, 2672
  %gmp1883 = inttoptr i64 %t1882 to ptr
  %gml1884 = load i64, ptr %gmp1883, align 1, !alias.scope !4, !noalias !3
  %wp1885 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1884, ptr %wp1885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dbc word 0x2a0403f8
  %r1886.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1886 = load i64, ptr %r1886.p, align 8, !alias.scope !3, !noalias !4
  %c1887 = trunc i64 %r1886 to i32
  %t1888 = or i32 0, %c1887
  %c1889 = zext i32 %t1888 to i64
  %wp1890 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1889, ptr %wp1890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dc0 word 0xaa0503f9
  %r1891.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1891 = load i64, ptr %r1891.p, align 8, !alias.scope !3, !noalias !4
  %t1892 = or i64 0, %r1891
  %wp1893 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1892, ptr %wp1893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dc4 word 0xf90003f3
  %r1894.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1894 = load i64, ptr %r1894.p, align 8, !alias.scope !3, !noalias !4
  %r1895.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1895 = load i64, ptr %r1895.p, align 8, !alias.scope !3, !noalias !4
  %gmp1896 = inttoptr i64 %r1894 to ptr
  store i64 %r1895, ptr %gmp1896, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268dc8 word 0xaa0603f4
  %r1897.p = getelementptr inbounds i8, ptr %c, i64 48
  %r1897 = load i64, ptr %r1897.p, align 8, !alias.scope !3, !noalias !4
  %t1898 = or i64 0, %r1897
  %wp1899 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1898, ptr %wp1899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dcc word 0x2a0703f3
  %r1900.p = getelementptr inbounds i8, ptr %c, i64 56
  %r1900 = load i64, ptr %r1900.p, align 8, !alias.scope !3, !noalias !4
  %c1901 = trunc i64 %r1900 to i32
  %t1902 = or i32 0, %c1901
  %c1903 = zext i32 %t1902 to i64
  %wp1904 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1903, ptr %wp1904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dd0 word 0xd63f0100
  %r1905.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1905 = load i64, ptr %r1905.p, align 8, !alias.scope !3, !noalias !4
  %fp1906 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1905, ptr %fp1906, align 8, !alias.scope !3, !noalias !4
  %wp1907 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265044, ptr %wp1907, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268dd4 word 0x9001b88e
  %wp1908 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp1908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dd8 word 0x9001b88d
  %wp1909 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp1909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ddc word 0xf941b5ce
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %t1911 = add i64 %r1910, 872
  %gmp1912 = inttoptr i64 %t1911 to ptr
  %gml1913 = load i64, ptr %gmp1912, align 1, !alias.scope !4, !noalias !3
  %wp1914 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml1913, ptr %wp1914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268de0 word 0xd001b72c
  %wp1915 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp1915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268de4 word 0xd001b729
  %wp1916 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268de8 word 0xf941bdad
  %r1917.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1917 = load i64, ptr %r1917.p, align 8, !alias.scope !3, !noalias !4
  %t1918 = add i64 %r1917, 888
  %gmp1919 = inttoptr i64 %t1918 to ptr
  %gml1920 = load i64, ptr %gmp1919, align 1, !alias.scope !4, !noalias !3
  %wp1921 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1920, ptr %wp1921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dec word 0xf943018c
  %r1922.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1922 = load i64, ptr %r1922.p, align 8, !alias.scope !3, !noalias !4
  %t1923 = add i64 %r1922, 1536
  %gmp1924 = inttoptr i64 %t1923 to ptr
  %gml1925 = load i64, ptr %gmp1924, align 1, !alias.scope !4, !noalias !3
  %wp1926 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1925, ptr %wp1926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268df0 word 0x2a1303e7
  %r1927.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1927 = load i64, ptr %r1927.p, align 8, !alias.scope !3, !noalias !4
  %c1928 = trunc i64 %r1927 to i32
  %t1929 = or i32 0, %c1928
  %c1930 = zext i32 %t1929 to i64
  %wp1931 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c1930, ptr %wp1931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268df4 word 0xaa1403e6
  %r1932.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1932 = load i64, ptr %r1932.p, align 8, !alias.scope !3, !noalias !4
  %t1933 = or i64 0, %r1932
  %wp1934 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t1933, ptr %wp1934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268df8 word 0xf9430d29
  %r1935.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1935 = load i64, ptr %r1935.p, align 8, !alias.scope !3, !noalias !4
  %t1936 = add i64 %r1935, 1560
  %gmp1937 = inttoptr i64 %t1936 to ptr
  %gml1938 = load i64, ptr %gmp1937, align 1, !alias.scope !4, !noalias !3
  %wp1939 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1938, ptr %wp1939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268dfc word 0xaa1903e5
  %r1940.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1940 = load i64, ptr %r1940.p, align 8, !alias.scope !3, !noalias !4
  %t1941 = or i64 0, %r1940
  %wp1942 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t1941, ptr %wp1942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e00 word 0x2a1803e4
  %r1943.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1943 = load i64, ptr %r1943.p, align 8, !alias.scope !3, !noalias !4
  %c1944 = trunc i64 %r1943 to i32
  %t1945 = or i32 0, %c1944
  %c1946 = zext i32 %t1945 to i64
  %wp1947 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1946, ptr %wp1947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e04 word 0xb9400feb
  %r1948.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1948 = load i64, ptr %r1948.p, align 8, !alias.scope !3, !noalias !4
  %t1949 = add i64 %r1948, 12
  %gmp1950 = inttoptr i64 %t1949 to ptr
  %gml1951 = load i32, ptr %gmp1950, align 1, !alias.scope !4, !noalias !3
  %c1952 = zext i32 %gml1951 to i64
  %wp1953 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1952, ptr %wp1953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e08 word 0xf9400bea
  %r1954.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1954 = load i64, ptr %r1954.p, align 8, !alias.scope !3, !noalias !4
  %t1955 = add i64 %r1954, 16
  %gmp1956 = inttoptr i64 %t1955 to ptr
  %gml1957 = load i64, ptr %gmp1956, align 1, !alias.scope !4, !noalias !3
  %wp1958 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1957, ptr %wp1958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e0c word 0xf94003f3
  %r1959.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1959 = load i64, ptr %r1959.p, align 8, !alias.scope !3, !noalias !4
  %gmp1960 = inttoptr i64 %r1959 to ptr
  %gml1961 = load i64, ptr %gmp1960, align 1, !alias.scope !4, !noalias !3
  %wp1962 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1961, ptr %wp1962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e10 word 0xb4ffec00
  %r1963.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1963 = load i64, ptr %r1963.p, align 8, !alias.scope !3, !noalias !4
  %cmp1964 = icmp eq i64 %r1963, 0
  br i1 %cmp1964, label %L_800268b90, label %L_800268e14_ft
L_800268e18:
  ; @pc 0x800268e18 word 0xf001b7a1
  %wp1965 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e1c word 0xaa1703e0
  %r1966.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1966 = load i64, ptr %r1966.p, align 8, !alias.scope !3, !noalias !4
  %t1967 = or i64 0, %r1966
  %wp1968 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1967, ptr %wp1968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e20 word 0xf9454021
  %r1969.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1969 = load i64, ptr %r1969.p, align 8, !alias.scope !3, !noalias !4
  %t1970 = add i64 %r1969, 2688
  %gmp1971 = inttoptr i64 %t1970 to ptr
  %gml1972 = load i64, ptr %gmp1971, align 1, !alias.scope !4, !noalias !3
  %wp1973 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1972, ptr %wp1973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e24 word 0x2a0403f8
  %r1974.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1974 = load i64, ptr %r1974.p, align 8, !alias.scope !3, !noalias !4
  %c1975 = trunc i64 %r1974 to i32
  %t1976 = or i32 0, %c1975
  %c1977 = zext i32 %t1976 to i64
  %wp1978 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1977, ptr %wp1978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e28 word 0xaa0503f9
  %r1979.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1979 = load i64, ptr %r1979.p, align 8, !alias.scope !3, !noalias !4
  %t1980 = or i64 0, %r1979
  %wp1981 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1980, ptr %wp1981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e2c word 0xf90003f3
  %r1982.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1982 = load i64, ptr %r1982.p, align 8, !alias.scope !3, !noalias !4
  %r1983.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1983 = load i64, ptr %r1983.p, align 8, !alias.scope !3, !noalias !4
  %gmp1984 = inttoptr i64 %r1982 to ptr
  store i64 %r1983, ptr %gmp1984, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268e30 word 0xaa0603f4
  %r1985.p = getelementptr inbounds i8, ptr %c, i64 48
  %r1985 = load i64, ptr %r1985.p, align 8, !alias.scope !3, !noalias !4
  %t1986 = or i64 0, %r1985
  %wp1987 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1986, ptr %wp1987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e34 word 0x2a0703f3
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 56
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %c1989 = trunc i64 %r1988 to i32
  %t1990 = or i32 0, %c1989
  %c1991 = zext i32 %t1990 to i64
  %wp1992 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1991, ptr %wp1992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e38 word 0xd63f0100
  %r1993.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1993 = load i64, ptr %r1993.p, align 8, !alias.scope !3, !noalias !4
  %fp1994 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1993, ptr %fp1994, align 8, !alias.scope !3, !noalias !4
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265148, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268e3c word 0x9001b88e
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e40 word 0x9001b88d
  %wp1997 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp1997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e44 word 0xf941b5ce
  %r1998.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1998 = load i64, ptr %r1998.p, align 8, !alias.scope !3, !noalias !4
  %t1999 = add i64 %r1998, 872
  %gmp2000 = inttoptr i64 %t1999 to ptr
  %gml2001 = load i64, ptr %gmp2000, align 1, !alias.scope !4, !noalias !3
  %wp2002 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2001, ptr %wp2002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e48 word 0xd001b72c
  %wp2003 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp2003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e4c word 0xd001b729
  %wp2004 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e50 word 0xf941bdad
  %r2005.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2005 = load i64, ptr %r2005.p, align 8, !alias.scope !3, !noalias !4
  %t2006 = add i64 %r2005, 888
  %gmp2007 = inttoptr i64 %t2006 to ptr
  %gml2008 = load i64, ptr %gmp2007, align 1, !alias.scope !4, !noalias !3
  %wp2009 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2008, ptr %wp2009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e54 word 0xf943018c
  %r2010.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2010 = load i64, ptr %r2010.p, align 8, !alias.scope !3, !noalias !4
  %t2011 = add i64 %r2010, 1536
  %gmp2012 = inttoptr i64 %t2011 to ptr
  %gml2013 = load i64, ptr %gmp2012, align 1, !alias.scope !4, !noalias !3
  %wp2014 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2013, ptr %wp2014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e58 word 0x2a1303e7
  %r2015.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2015 = load i64, ptr %r2015.p, align 8, !alias.scope !3, !noalias !4
  %c2016 = trunc i64 %r2015 to i32
  %t2017 = or i32 0, %c2016
  %c2018 = zext i32 %t2017 to i64
  %wp2019 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c2018, ptr %wp2019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e5c word 0xaa1403e6
  %r2020.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2020 = load i64, ptr %r2020.p, align 8, !alias.scope !3, !noalias !4
  %t2021 = or i64 0, %r2020
  %wp2022 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2021, ptr %wp2022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e60 word 0xf9430d29
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %t2024 = add i64 %r2023, 1560
  %gmp2025 = inttoptr i64 %t2024 to ptr
  %gml2026 = load i64, ptr %gmp2025, align 1, !alias.scope !4, !noalias !3
  %wp2027 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2026, ptr %wp2027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e64 word 0xaa1903e5
  %r2028.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2028 = load i64, ptr %r2028.p, align 8, !alias.scope !3, !noalias !4
  %t2029 = or i64 0, %r2028
  %wp2030 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2029, ptr %wp2030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e68 word 0x2a1803e4
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %c2032 = trunc i64 %r2031 to i32
  %t2033 = or i32 0, %c2032
  %c2034 = zext i32 %t2033 to i64
  %wp2035 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2034, ptr %wp2035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e6c word 0xb9400feb
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %t2037 = add i64 %r2036, 12
  %gmp2038 = inttoptr i64 %t2037 to ptr
  %gml2039 = load i32, ptr %gmp2038, align 1, !alias.scope !4, !noalias !3
  %c2040 = zext i32 %gml2039 to i64
  %wp2041 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2040, ptr %wp2041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e70 word 0xf9400bea
  %r2042.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2042 = load i64, ptr %r2042.p, align 8, !alias.scope !3, !noalias !4
  %t2043 = add i64 %r2042, 16
  %gmp2044 = inttoptr i64 %t2043 to ptr
  %gml2045 = load i64, ptr %gmp2044, align 1, !alias.scope !4, !noalias !3
  %wp2046 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2045, ptr %wp2046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e74 word 0xf94003f3
  %r2047.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2047 = load i64, ptr %r2047.p, align 8, !alias.scope !3, !noalias !4
  %gmp2048 = inttoptr i64 %r2047 to ptr
  %gml2049 = load i64, ptr %gmp2048, align 1, !alias.scope !4, !noalias !3
  %wp2050 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2049, ptr %wp2050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e78 word 0xb4ffeaa0
  %r2051.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2051 = load i64, ptr %r2051.p, align 8, !alias.scope !3, !noalias !4
  %cmp2052 = icmp eq i64 %r2051, 0
  br i1 %cmp2052, label %L_800268bcc, label %L_800268e7c_ft
L_800268e80:
  ; @pc 0x800268e80 word 0xf001b7a1
  %wp2053 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e84 word 0xaa1703e0
  %r2054.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2054 = load i64, ptr %r2054.p, align 8, !alias.scope !3, !noalias !4
  %t2055 = or i64 0, %r2054
  %wp2056 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2055, ptr %wp2056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e88 word 0xf9454821
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %t2058 = add i64 %r2057, 2704
  %gmp2059 = inttoptr i64 %t2058 to ptr
  %gml2060 = load i64, ptr %gmp2059, align 1, !alias.scope !4, !noalias !3
  %wp2061 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2060, ptr %wp2061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e8c word 0x2a0403f7
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %c2063 = trunc i64 %r2062 to i32
  %t2064 = or i32 0, %c2063
  %c2065 = zext i32 %t2064 to i64
  %wp2066 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2065, ptr %wp2066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e90 word 0xaa0503f8
  %r2067.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2067 = load i64, ptr %r2067.p, align 8, !alias.scope !3, !noalias !4
  %t2068 = or i64 0, %r2067
  %wp2069 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2068, ptr %wp2069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e94 word 0xaa0603f4
  %r2070.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2070 = load i64, ptr %r2070.p, align 8, !alias.scope !3, !noalias !4
  %t2071 = or i64 0, %r2070
  %wp2072 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t2071, ptr %wp2072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e98 word 0xaa1303f9
  %r2073.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2073 = load i64, ptr %r2073.p, align 8, !alias.scope !3, !noalias !4
  %t2074 = or i64 0, %r2073
  %wp2075 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2074, ptr %wp2075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268e9c word 0x2a0703f3
  %r2076.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2076 = load i64, ptr %r2076.p, align 8, !alias.scope !3, !noalias !4
  %c2077 = trunc i64 %r2076 to i32
  %t2078 = or i32 0, %c2077
  %c2079 = zext i32 %t2078 to i64
  %wp2080 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2079, ptr %wp2080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ea0 word 0xd63f0100
  %r2081.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2081 = load i64, ptr %r2081.p, align 8, !alias.scope !3, !noalias !4
  %fp2082 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2081, ptr %fp2082, align 8, !alias.scope !3, !noalias !4
  %wp2083 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265252, ptr %wp2083, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268ea4 word 0xb9400feb
  %r2084.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2084 = load i64, ptr %r2084.p, align 8, !alias.scope !3, !noalias !4
  %t2085 = add i64 %r2084, 12
  %gmp2086 = inttoptr i64 %t2085 to ptr
  %gml2087 = load i32, ptr %gmp2086, align 1, !alias.scope !4, !noalias !3
  %c2088 = zext i32 %gml2087 to i64
  %wp2089 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2088, ptr %wp2089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ea8 word 0x2a1303e7
  %r2090.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2090 = load i64, ptr %r2090.p, align 8, !alias.scope !3, !noalias !4
  %c2091 = trunc i64 %r2090 to i32
  %t2092 = or i32 0, %c2091
  %c2093 = zext i32 %t2092 to i64
  %wp2094 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c2093, ptr %wp2094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268eac word 0xaa1903f3
  %r2095.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2095 = load i64, ptr %r2095.p, align 8, !alias.scope !3, !noalias !4
  %t2096 = or i64 0, %r2095
  %wp2097 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2096, ptr %wp2097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268eb0 word 0xf9400bea
  %r2098.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2098 = load i64, ptr %r2098.p, align 8, !alias.scope !3, !noalias !4
  %t2099 = add i64 %r2098, 16
  %gmp2100 = inttoptr i64 %t2099 to ptr
  %gml2101 = load i64, ptr %gmp2100, align 1, !alias.scope !4, !noalias !3
  %wp2102 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2101, ptr %wp2102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268eb4 word 0xaa1403e6
  %r2103.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2103 = load i64, ptr %r2103.p, align 8, !alias.scope !3, !noalias !4
  %t2104 = or i64 0, %r2103
  %wp2105 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2104, ptr %wp2105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268eb8 word 0xaa1803e5
  %r2106.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2106 = load i64, ptr %r2106.p, align 8, !alias.scope !3, !noalias !4
  %t2107 = or i64 0, %r2106
  %wp2108 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2107, ptr %wp2108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ebc word 0x2a1703e4
  %r2109.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2109 = load i64, ptr %r2109.p, align 8, !alias.scope !3, !noalias !4
  %c2110 = trunc i64 %r2109 to i32
  %t2111 = or i32 0, %c2110
  %c2112 = zext i32 %t2111 to i64
  %wp2113 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2112, ptr %wp2113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ec0 word 0xb4ffea40
  %r2114.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2114 = load i64, ptr %r2114.p, align 8, !alias.scope !3, !noalias !4
  %cmp2115 = icmp eq i64 %r2114, 0
  br i1 %cmp2115, label %L_800268c08, label %L_800268ec4_ft
L_800268ec8:
  ; @pc 0x800268ec8 word 0xf001b7a1
  %wp2116 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ecc word 0xaa1703e0
  %r2117.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2117 = load i64, ptr %r2117.p, align 8, !alias.scope !3, !noalias !4
  %t2118 = or i64 0, %r2117
  %wp2119 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2118, ptr %wp2119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ed0 word 0xf9453021
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %t2121 = add i64 %r2120, 2656
  %gmp2122 = inttoptr i64 %t2121 to ptr
  %gml2123 = load i64, ptr %gmp2122, align 1, !alias.scope !4, !noalias !3
  %wp2124 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2123, ptr %wp2124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ed4 word 0xb90003e4
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %r2126.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2126 = load i64, ptr %r2126.p, align 8, !alias.scope !3, !noalias !4
  %c2127 = trunc i64 %r2126 to i32
  %gmp2128 = inttoptr i64 %r2125 to ptr
  store i32 %c2127, ptr %gmp2128, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268ed8 word 0xaa0503f8
  %r2129.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2129 = load i64, ptr %r2129.p, align 8, !alias.scope !3, !noalias !4
  %t2130 = or i64 0, %r2129
  %wp2131 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2130, ptr %wp2131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268edc word 0xaa0603f9
  %r2132.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2132 = load i64, ptr %r2132.p, align 8, !alias.scope !3, !noalias !4
  %t2133 = or i64 0, %r2132
  %wp2134 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2133, ptr %wp2134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ee0 word 0x2a0703f4
  %r2135.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2135 = load i64, ptr %r2135.p, align 8, !alias.scope !3, !noalias !4
  %c2136 = trunc i64 %r2135 to i32
  %t2137 = or i32 0, %c2136
  %c2138 = zext i32 %t2137 to i64
  %wp2139 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2138, ptr %wp2139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ee4 word 0xd63f0100
  %r2140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2140 = load i64, ptr %r2140.p, align 8, !alias.scope !3, !noalias !4
  %fp2141 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2140, ptr %fp2141, align 8, !alias.scope !3, !noalias !4
  %wp2142 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265320, ptr %wp2142, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268ee8 word 0x9001b88e
  %wp2143 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp2143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268eec word 0x9001b88d
  %wp2144 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ef0 word 0xf941b5ce
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2145 = load i64, ptr %r2145.p, align 8, !alias.scope !3, !noalias !4
  %t2146 = add i64 %r2145, 872
  %gmp2147 = inttoptr i64 %t2146 to ptr
  %gml2148 = load i64, ptr %gmp2147, align 1, !alias.scope !4, !noalias !3
  %wp2149 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2148, ptr %wp2149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ef4 word 0xd001b72c
  %wp2150 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp2150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ef8 word 0xd001b729
  %wp2151 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268efc word 0xf941bdad
  %r2152.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2152 = load i64, ptr %r2152.p, align 8, !alias.scope !3, !noalias !4
  %t2153 = add i64 %r2152, 888
  %gmp2154 = inttoptr i64 %t2153 to ptr
  %gml2155 = load i64, ptr %gmp2154, align 1, !alias.scope !4, !noalias !3
  %wp2156 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2155, ptr %wp2156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f00 word 0xf943018c
  %r2157.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2157 = load i64, ptr %r2157.p, align 8, !alias.scope !3, !noalias !4
  %t2158 = add i64 %r2157, 1536
  %gmp2159 = inttoptr i64 %t2158 to ptr
  %gml2160 = load i64, ptr %gmp2159, align 1, !alias.scope !4, !noalias !3
  %wp2161 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2160, ptr %wp2161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f04 word 0x2a1403e7
  %r2162.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2162 = load i64, ptr %r2162.p, align 8, !alias.scope !3, !noalias !4
  %c2163 = trunc i64 %r2162 to i32
  %t2164 = or i32 0, %c2163
  %c2165 = zext i32 %t2164 to i64
  %wp2166 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c2165, ptr %wp2166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f08 word 0xaa1903e6
  %r2167.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2167 = load i64, ptr %r2167.p, align 8, !alias.scope !3, !noalias !4
  %t2168 = or i64 0, %r2167
  %wp2169 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2168, ptr %wp2169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f0c word 0xf9430d29
  %r2170.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2170 = load i64, ptr %r2170.p, align 8, !alias.scope !3, !noalias !4
  %t2171 = add i64 %r2170, 1560
  %gmp2172 = inttoptr i64 %t2171 to ptr
  %gml2173 = load i64, ptr %gmp2172, align 1, !alias.scope !4, !noalias !3
  %wp2174 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2173, ptr %wp2174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f10 word 0xaa1803e5
  %r2175.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2175 = load i64, ptr %r2175.p, align 8, !alias.scope !3, !noalias !4
  %t2176 = or i64 0, %r2175
  %wp2177 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2176, ptr %wp2177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f14 word 0xb9400feb
  %r2178.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2178 = load i64, ptr %r2178.p, align 8, !alias.scope !3, !noalias !4
  %t2179 = add i64 %r2178, 12
  %gmp2180 = inttoptr i64 %t2179 to ptr
  %gml2181 = load i32, ptr %gmp2180, align 1, !alias.scope !4, !noalias !3
  %c2182 = zext i32 %gml2181 to i64
  %wp2183 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2182, ptr %wp2183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f18 word 0xf9400bea
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %t2185 = add i64 %r2184, 16
  %gmp2186 = inttoptr i64 %t2185 to ptr
  %gml2187 = load i64, ptr %gmp2186, align 1, !alias.scope !4, !noalias !3
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2187, ptr %wp2188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f1c word 0xb94003e4
  %r2189.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2189 = load i64, ptr %r2189.p, align 8, !alias.scope !3, !noalias !4
  %gmp2190 = inttoptr i64 %r2189 to ptr
  %gml2191 = load i32, ptr %gmp2190, align 1, !alias.scope !4, !noalias !3
  %c2192 = zext i32 %gml2191 to i64
  %wp2193 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2192, ptr %wp2193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f20 word 0xb4ffe1a0
  %r2194.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2194 = load i64, ptr %r2194.p, align 8, !alias.scope !3, !noalias !4
  %cmp2195 = icmp eq i64 %r2194, 0
  br i1 %cmp2195, label %L_800268b54, label %L_800268f24_ft
L_800268f28:
  ; @pc 0x800268f28 word 0xf001b7a1
  %wp2196 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f2c word 0xaa1703e0
  %r2197.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2197 = load i64, ptr %r2197.p, align 8, !alias.scope !3, !noalias !4
  %t2198 = or i64 0, %r2197
  %wp2199 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2198, ptr %wp2199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f30 word 0xf9452821
  %r2200.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2200 = load i64, ptr %r2200.p, align 8, !alias.scope !3, !noalias !4
  %t2201 = add i64 %r2200, 2640
  %gmp2202 = inttoptr i64 %t2201 to ptr
  %gml2203 = load i64, ptr %gmp2202, align 1, !alias.scope !4, !noalias !3
  %wp2204 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2203, ptr %wp2204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f34 word 0xb90003e4
  %r2205.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2205 = load i64, ptr %r2205.p, align 8, !alias.scope !3, !noalias !4
  %r2206.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2206 = load i64, ptr %r2206.p, align 8, !alias.scope !3, !noalias !4
  %c2207 = trunc i64 %r2206 to i32
  %gmp2208 = inttoptr i64 %r2205 to ptr
  store i32 %c2207, ptr %gmp2208, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268f38 word 0xaa0503f8
  %r2209.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2209 = load i64, ptr %r2209.p, align 8, !alias.scope !3, !noalias !4
  %t2210 = or i64 0, %r2209
  %wp2211 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2210, ptr %wp2211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f3c word 0xaa0603f9
  %r2212.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2212 = load i64, ptr %r2212.p, align 8, !alias.scope !3, !noalias !4
  %t2213 = or i64 0, %r2212
  %wp2214 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2213, ptr %wp2214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f40 word 0x2a0703f4
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2215 = load i64, ptr %r2215.p, align 8, !alias.scope !3, !noalias !4
  %c2216 = trunc i64 %r2215 to i32
  %t2217 = or i32 0, %c2216
  %c2218 = zext i32 %t2217 to i64
  %wp2219 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2218, ptr %wp2219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f44 word 0xd63f0100
  %r2220.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2220 = load i64, ptr %r2220.p, align 8, !alias.scope !3, !noalias !4
  %fp2221 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2220, ptr %fp2221, align 8, !alias.scope !3, !noalias !4
  %wp2222 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265416, ptr %wp2222, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268f48 word 0x9001b88e
  %wp2223 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp2223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f4c word 0x9001b88d
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f50 word 0xf941b5ce
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %t2226 = add i64 %r2225, 872
  %gmp2227 = inttoptr i64 %t2226 to ptr
  %gml2228 = load i64, ptr %gmp2227, align 1, !alias.scope !4, !noalias !3
  %wp2229 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2228, ptr %wp2229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f54 word 0xd001b72c
  %wp2230 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp2230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f58 word 0xd001b729
  %wp2231 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f5c word 0xf941bdad
  %r2232.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2232 = load i64, ptr %r2232.p, align 8, !alias.scope !3, !noalias !4
  %t2233 = add i64 %r2232, 888
  %gmp2234 = inttoptr i64 %t2233 to ptr
  %gml2235 = load i64, ptr %gmp2234, align 1, !alias.scope !4, !noalias !3
  %wp2236 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2235, ptr %wp2236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f60 word 0xf943018c
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %t2238 = add i64 %r2237, 1536
  %gmp2239 = inttoptr i64 %t2238 to ptr
  %gml2240 = load i64, ptr %gmp2239, align 1, !alias.scope !4, !noalias !3
  %wp2241 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2240, ptr %wp2241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f64 word 0x2a1403e7
  %r2242.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2242 = load i64, ptr %r2242.p, align 8, !alias.scope !3, !noalias !4
  %c2243 = trunc i64 %r2242 to i32
  %t2244 = or i32 0, %c2243
  %c2245 = zext i32 %t2244 to i64
  %wp2246 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c2245, ptr %wp2246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f68 word 0xaa1903e6
  %r2247.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2247 = load i64, ptr %r2247.p, align 8, !alias.scope !3, !noalias !4
  %t2248 = or i64 0, %r2247
  %wp2249 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2248, ptr %wp2249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f6c word 0xf9430d29
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %t2251 = add i64 %r2250, 1560
  %gmp2252 = inttoptr i64 %t2251 to ptr
  %gml2253 = load i64, ptr %gmp2252, align 1, !alias.scope !4, !noalias !3
  %wp2254 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2253, ptr %wp2254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f70 word 0xaa1803e5
  %r2255.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2255 = load i64, ptr %r2255.p, align 8, !alias.scope !3, !noalias !4
  %t2256 = or i64 0, %r2255
  %wp2257 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2256, ptr %wp2257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f74 word 0xb9400feb
  %r2258.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2258 = load i64, ptr %r2258.p, align 8, !alias.scope !3, !noalias !4
  %t2259 = add i64 %r2258, 12
  %gmp2260 = inttoptr i64 %t2259 to ptr
  %gml2261 = load i32, ptr %gmp2260, align 1, !alias.scope !4, !noalias !3
  %c2262 = zext i32 %gml2261 to i64
  %wp2263 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2262, ptr %wp2263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f78 word 0xf9400bea
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %t2265 = add i64 %r2264, 16
  %gmp2266 = inttoptr i64 %t2265 to ptr
  %gml2267 = load i64, ptr %gmp2266, align 1, !alias.scope !4, !noalias !3
  %wp2268 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2267, ptr %wp2268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f7c word 0xb94003e4
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %gmp2270 = inttoptr i64 %r2269 to ptr
  %gml2271 = load i32, ptr %gmp2270, align 1, !alias.scope !4, !noalias !3
  %c2272 = zext i32 %gml2271 to i64
  %wp2273 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2272, ptr %wp2273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f80 word 0xb4ffdcc0
  %r2274.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2274 = load i64, ptr %r2274.p, align 8, !alias.scope !3, !noalias !4
  %cmp2275 = icmp eq i64 %r2274, 0
  br i1 %cmp2275, label %L_800268b18, label %L_800268f84_ft
L_800268f88:
  ; @pc 0x800268f88 word 0x529ffff8
  %c2276 = zext i32 65535 to i64
  %wp2277 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2276, ptr %wp2277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f8c word 0x529ffffa
  %c2278 = zext i32 65535 to i64
  %wp2279 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2278, ptr %wp2279, align 8, !alias.scope !3, !noalias !4
  br label %L_800268f90
L_800268f90:
  ; @pc 0x800268f90 word 0x0a0702e8
  %r2280.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2280 = load i64, ptr %r2280.p, align 8, !alias.scope !3, !noalias !4
  %c2281 = trunc i64 %r2280 to i32
  %r2282.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2282 = load i64, ptr %r2282.p, align 8, !alias.scope !3, !noalias !4
  %c2283 = trunc i64 %r2282 to i32
  %t2284 = and i32 %c2283, %c2281
  %c2285 = zext i32 %t2284 to i64
  %wp2286 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2285, ptr %wp2286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f94 word 0x6b07011f
  %r2287.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2287 = load i64, ptr %r2287.p, align 8, !alias.scope !3, !noalias !4
  %c2288 = trunc i64 %r2287 to i32
  %r2289.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2289 = load i64, ptr %r2289.p, align 8, !alias.scope !3, !noalias !4
  %c2290 = trunc i64 %r2289 to i32
  %t2291 = sub i32 %c2288, %c2290
  %fn2292 = icmp slt i32 %t2291, 0
  %fz2293 = icmp eq i32 %t2291, 0
  %fc2294 = icmp uge i32 %c2288, %c2290
  %fx12295 = xor i32 %c2288, %c2290
  %fx22296 = xor i32 %c2288, %t2291
  %fva2297 = and i32 %fx12295, %fx22296
  %fv2298 = icmp slt i32 %fva2297, 0
  %nz2299 = zext i1 %fn2292 to i64
  %zz2300 = zext i1 %fz2293 to i64
  %cz2301 = zext i1 %fc2294 to i64
  %vz2302 = zext i1 %fv2298 to i64
  %ns2303 = shl i64 %nz2299, 31
  %zs2304 = shl i64 %zz2300, 30
  %cs2305 = shl i64 %cz2301, 29
  %vs2306 = shl i64 %vz2302, 28
  %nzor2307 = or i64 %ns2303, %zs2304
  %cvor2308 = or i64 %cs2305, %vs2306
  %nzcv2309 = or i64 %nzor2307, %cvor2308
  %wp2310 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2309, ptr %wp2310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f98 word 0x1a9f17f5
  %t2311 = add i32 0, 1
  %r2312.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2312 = load i64, ptr %r2312.p, align 8, !alias.scope !3, !noalias !4
  %fsh2314 = lshr i64 %r2312, 30
  %ftr2315 = trunc i64 %fsh2314 to i1
  %cond2313 = xor i1 %ftr2315, true
  %sel2316 = select i1 %cond2313, i32 0, i32 %t2311
  %c2317 = zext i32 %sel2316 to i64
  %wp2318 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c2317, ptr %wp2318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268f9c word 0x34ffe477
  %r2319.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2319 = load i64, ptr %r2319.p, align 8, !alias.scope !3, !noalias !4
  %c2320 = trunc i64 %r2319 to i32
  %cmp2321 = icmp eq i32 %c2320, 0
  br i1 %cmp2321, label %L_800268c28, label %L_800268fa0_ft
L_800268fc0:
  ; @pc 0x800268fc0 word 0x927ef408
  %r2355.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2355 = load i64, ptr %r2355.p, align 8, !alias.scope !3, !noalias !4
  %t2356 = and i64 %r2355, -4
  %wp2357 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2356, ptr %wp2357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fc4 word 0xf9000268
  %r2358.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2358 = load i64, ptr %r2358.p, align 8, !alias.scope !3, !noalias !4
  %r2359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2359 = load i64, ptr %r2359.p, align 8, !alias.scope !3, !noalias !4
  %gmp2360 = inttoptr i64 %r2358 to ptr
  store i64 %r2359, ptr %gmp2360, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268fc8 word 0x17fffeab
  br label %L_800268a74
L_800268fcc:
  ; @pc 0x800268fcc word 0x2a0403f9
  %r2361.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2361 = load i64, ptr %r2361.p, align 8, !alias.scope !3, !noalias !4
  %c2362 = trunc i64 %r2361 to i32
  %t2363 = or i32 0, %c2362
  %c2364 = zext i32 %t2363 to i64
  %wp2365 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2364, ptr %wp2365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fd0 word 0xaa0503fa
  %r2366.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2366 = load i64, ptr %r2366.p, align 8, !alias.scope !3, !noalias !4
  %t2367 = or i64 0, %r2366
  %wp2368 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2367, ptr %wp2368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fd4 word 0xd63f0100
  %r2369.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2369 = load i64, ptr %r2369.p, align 8, !alias.scope !3, !noalias !4
  %fp2370 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2369, ptr %fp2370, align 8, !alias.scope !3, !noalias !4
  %wp2371 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265560, ptr %wp2371, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268fd8 word 0xaa1a03e5
  %r2372.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2372 = load i64, ptr %r2372.p, align 8, !alias.scope !3, !noalias !4
  %t2373 = or i64 0, %r2372
  %wp2374 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2373, ptr %wp2374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fdc word 0x2a1903e4
  %r2375.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2375 = load i64, ptr %r2375.p, align 8, !alias.scope !3, !noalias !4
  %c2376 = trunc i64 %r2375 to i32
  %t2377 = or i32 0, %c2376
  %c2378 = zext i32 %t2377 to i64
  %wp2379 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2378, ptr %wp2379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fe0 word 0x17ffff3e
  br label %L_800268cd8
L_800268fe4:
  ; @pc 0x800268fe4 word 0x910063e8
  %r2380.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2380 = load i64, ptr %r2380.p, align 8, !alias.scope !3, !noalias !4
  %t2381 = add i64 %r2380, 24
  %wp2382 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2381, ptr %wp2382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fe8 word 0x39048fff
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %t2384 = add i64 %r2383, 291
  %c2385 = trunc i32 0 to i8
  %gmp2386 = inttoptr i64 %t2384 to ptr
  store i8 %c2385, ptr %gmp2386, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268fec word 0x90014f21
  %wp2387 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ff0 word 0x91270c21
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %t2389 = add i64 %r2388, 2499
  %wp2390 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2389, ptr %wp2390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ff4 word 0x91003108
  %r2391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2391 = load i64, ptr %r2391.p, align 8, !alias.scope !3, !noalias !4
  %t2392 = add i64 %r2391, 12
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ff8 word 0x390093ff
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %t2395 = add i64 %r2394, 36
  %c2396 = trunc i32 0 to i8
  %gmp2397 = inttoptr i64 %t2395 to ptr
  store i8 %c2396, ptr %gmp2397, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268ffc word 0xf9000fe8
  %r2398.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2398 = load i64, ptr %r2398.p, align 8, !alias.scope !3, !noalias !4
  %t2399 = add i64 %r2398, 24
  %r2400.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2400 = load i64, ptr %r2400.p, align 8, !alias.scope !3, !noalias !4
  %gmp2401 = inttoptr i64 %t2399 to ptr
  store i64 %r2400, ptr %gmp2401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269000 word 0x52802008
  %c2402 = zext i32 256 to i64
  %wp2403 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2402, ptr %wp2403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269004 word 0xb980252a
  %r2404.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2404 = load i64, ptr %r2404.p, align 8, !alias.scope !3, !noalias !4
  %t2405 = add i64 %r2404, 36
  %gmp2406 = inttoptr i64 %t2405 to ptr
  %gml2407 = load i32, ptr %gmp2406, align 1, !alias.scope !4, !noalias !3
  %c2408 = sext i32 %gml2407 to i64
  %wp2409 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2408, ptr %wp2409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269008 word 0xb90023e8
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %t2411 = add i64 %r2410, 32
  %r2412.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2412 = load i64, ptr %r2412.p, align 8, !alias.scope !3, !noalias !4
  %c2413 = trunc i64 %r2412 to i32
  %gmp2414 = inttoptr i64 %t2411 to ptr
  store i32 %c2413, ptr %gmp2414, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026900c word 0x910063e0
  %r2415.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2415 = load i64, ptr %r2415.p, align 8, !alias.scope !3, !noalias !4
  %t2416 = add i64 %r2415, 24
  %wp2417 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2416, ptr %wp2417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269010 word 0x2a0403f4
  %r2418.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2418 = load i64, ptr %r2418.p, align 8, !alias.scope !3, !noalias !4
  %c2419 = trunc i64 %r2418 to i32
  %t2420 = or i32 0, %c2419
  %c2421 = zext i32 %t2420 to i64
  %wp2422 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2421, ptr %wp2422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269014 word 0xb9800928
  %r2423.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2423 = load i64, ptr %r2423.p, align 8, !alias.scope !3, !noalias !4
  %t2424 = add i64 %r2423, 8
  %gmp2425 = inttoptr i64 %t2424 to ptr
  %gml2426 = load i32, ptr %gmp2425, align 1, !alias.scope !4, !noalias !3
  %c2427 = sext i32 %gml2426 to i64
  %wp2428 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2427, ptr %wp2428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269018 word 0xaa0503f5
  %r2429.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2429 = load i64, ptr %r2429.p, align 8, !alias.scope !3, !noalias !4
  %t2430 = or i64 0, %r2429
  %wp2431 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2430, ptr %wp2431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026901c word 0x2a0703f7
  %r2432.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2432 = load i64, ptr %r2432.p, align 8, !alias.scope !3, !noalias !4
  %c2433 = trunc i64 %r2432 to i32
  %t2434 = or i32 0, %c2433
  %c2435 = zext i32 %t2434 to i64
  %wp2436 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2435, ptr %wp2436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269020 word 0x8b0a0129
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %r2438.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2438 = load i64, ptr %r2438.p, align 8, !alias.scope !3, !noalias !4
  %t2439 = add i64 %r2437, %r2438
  %wp2440 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2439, ptr %wp2440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269024 word 0x8b080122
  %r2441.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2441 = load i64, ptr %r2441.p, align 8, !alias.scope !3, !noalias !4
  %r2442.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2442 = load i64, ptr %r2442.p, align 8, !alias.scope !3, !noalias !4
  %t2443 = add i64 %r2441, %r2442
  %wp2444 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2443, ptr %wp2444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269028 word 0x97f8c20e
  %wp2445 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265644, ptr %wp2445, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x80026902c word 0x2a1703e7
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %c2447 = trunc i64 %r2446 to i32
  %t2448 = or i32 0, %c2447
  %c2449 = zext i32 %t2448 to i64
  %wp2450 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c2449, ptr %wp2450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269030 word 0xaa1503e5
  %r2451.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2451 = load i64, ptr %r2451.p, align 8, !alias.scope !3, !noalias !4
  %t2452 = or i64 0, %r2451
  %wp2453 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2452, ptr %wp2453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269034 word 0x2a1403e4
  %r2454.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2454 = load i64, ptr %r2454.p, align 8, !alias.scope !3, !noalias !4
  %c2455 = trunc i64 %r2454 to i32
  %t2456 = or i32 0, %c2455
  %c2457 = zext i32 %t2456 to i64
  %wp2458 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2457, ptr %wp2458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269038 word 0x2a1f03f7
  %t2459 = or i32 0, 0
  %c2460 = zext i32 %t2459 to i64
  %wp2461 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2460, ptr %wp2461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026903c word 0x2a1f03fc
  %t2462 = or i32 0, 0
  %c2463 = zext i32 %t2462 to i64
  %wp2464 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c2463, ptr %wp2464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269040 word 0x2a1f03fb
  %t2465 = or i32 0, 0
  %c2466 = zext i32 %t2465 to i64
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269044 word 0x17ffff58
  br label %L_800268da4
L_800269048:
  ; @pc 0x800269048 word 0xb001c2a0
  %wp2468 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp2468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026904c word 0x91154000
  %r2469.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2469 = load i64, ptr %r2469.p, align 8, !alias.scope !3, !noalias !4
  %t2470 = add i64 %r2469, 1360
  %wp2471 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2470, ptr %wp2471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269050 word 0x2a0403f9
  %r2472.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2472 = load i64, ptr %r2472.p, align 8, !alias.scope !3, !noalias !4
  %c2473 = trunc i64 %r2472 to i32
  %t2474 = or i32 0, %c2473
  %c2475 = zext i32 %t2474 to i64
  %wp2476 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2475, ptr %wp2476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269054 word 0xaa0503fb
  %r2477.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2477 = load i64, ptr %r2477.p, align 8, !alias.scope !3, !noalias !4
  %t2478 = or i64 0, %r2477
  %wp2479 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2478, ptr %wp2479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269058 word 0xaa0603fc
  %r2480.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2480 = load i64, ptr %r2480.p, align 8, !alias.scope !3, !noalias !4
  %t2481 = or i64 0, %r2480
  %wp2482 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2481, ptr %wp2482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026905c word 0x94a4ea51
  %wp2483 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265696, ptr %wp2483, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269060 word 0xaa1c03e6
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %t2485 = or i64 0, %r2484
  %wp2486 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2485, ptr %wp2486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269064 word 0xaa1b03e5
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %t2488 = or i64 0, %r2487
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2488, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269068 word 0x2a1903e4
  %r2490.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2490 = load i64, ptr %r2490.p, align 8, !alias.scope !3, !noalias !4
  %c2491 = trunc i64 %r2490 to i32
  %t2492 = or i32 0, %c2491
  %c2493 = zext i32 %t2492 to i64
  %wp2494 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2493, ptr %wp2494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026906c word 0x34ffde80
  %r2495.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2495 = load i64, ptr %r2495.p, align 8, !alias.scope !3, !noalias !4
  %c2496 = trunc i64 %r2495 to i32
  %cmp2497 = icmp eq i32 %c2496, 0
  br i1 %cmp2497, label %L_800268c3c, label %L_800269070_ft
L_80026909c:
  ; @pc 0x80026909c word 0xaa1603e0
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %t2524 = or i64 0, %r2523
  %wp2525 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2524, ptr %wp2525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690a0 word 0x2a0403f4
  %r2526.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2526 = load i64, ptr %r2526.p, align 8, !alias.scope !3, !noalias !4
  %c2527 = trunc i64 %r2526 to i32
  %t2528 = or i32 0, %c2527
  %c2529 = zext i32 %t2528 to i64
  %wp2530 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2529, ptr %wp2530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690a4 word 0xaa0503f5
  %r2531.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2531 = load i64, ptr %r2531.p, align 8, !alias.scope !3, !noalias !4
  %t2532 = or i64 0, %r2531
  %wp2533 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2532, ptr %wp2533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690a8 word 0xaa0603f8
  %r2534.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2534 = load i64, ptr %r2534.p, align 8, !alias.scope !3, !noalias !4
  %t2535 = or i64 0, %r2534
  %wp2536 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2535, ptr %wp2536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690ac word 0xd63f0120
  %r2537.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2537 = load i64, ptr %r2537.p, align 8, !alias.scope !3, !noalias !4
  %fp2538 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2537, ptr %fp2538, align 8, !alias.scope !3, !noalias !4
  %wp2539 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265776, ptr %wp2539, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002690b0 word 0xf9400b49
  %r2540.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2540 = load i64, ptr %r2540.p, align 8, !alias.scope !3, !noalias !4
  %t2541 = add i64 %r2540, 16
  %gmp2542 = inttoptr i64 %t2541 to ptr
  %gml2543 = load i64, ptr %gmp2542, align 1, !alias.scope !4, !noalias !3
  %wp2544 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2543, ptr %wp2544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690b4 word 0xaa1803e6
  %r2545.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2545 = load i64, ptr %r2545.p, align 8, !alias.scope !3, !noalias !4
  %t2546 = or i64 0, %r2545
  %wp2547 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2546, ptr %wp2547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690b8 word 0xaa1503e5
  %r2548.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2548 = load i64, ptr %r2548.p, align 8, !alias.scope !3, !noalias !4
  %t2549 = or i64 0, %r2548
  %wp2550 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2549, ptr %wp2550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690bc word 0xf94006c8
  %r2551.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2551 = load i64, ptr %r2551.p, align 8, !alias.scope !3, !noalias !4
  %t2552 = add i64 %r2551, 8
  %gmp2553 = inttoptr i64 %t2552 to ptr
  %gml2554 = load i64, ptr %gmp2553, align 1, !alias.scope !4, !noalias !3
  %wp2555 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2554, ptr %wp2555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690c0 word 0x2a1403e4
  %r2556.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2556 = load i64, ptr %r2556.p, align 8, !alias.scope !3, !noalias !4
  %c2557 = trunc i64 %r2556 to i32
  %t2558 = or i32 0, %c2557
  %c2559 = zext i32 %t2558 to i64
  %wp2560 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2559, ptr %wp2560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690c4 word 0x17fffe1b
  br label %L_800268930
L_8002690c8:
  ; @pc 0x8002690c8 word 0x37000098
  %r2561.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2561 = load i64, ptr %r2561.p, align 8, !alias.scope !3, !noalias !4
  %t2562 = and i64 %r2561, 1
  %cmp2563 = icmp ne i64 %t2562, 0
  br i1 %cmp2563, label %L_8002690d8, label %L_8002690cc_ft
L_8002690d8:
  ; @pc 0x8002690d8 word 0xf9400980
  %r2575.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2575 = load i64, ptr %r2575.p, align 8, !alias.scope !3, !noalias !4
  %t2576 = add i64 %r2575, 16
  %gmp2577 = inttoptr i64 %t2576 to ptr
  %gml2578 = load i64, ptr %gmp2577, align 1, !alias.scope !4, !noalias !3
  %wp2579 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2578, ptr %wp2579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690dc word 0xaa1a03f3
  %r2580.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2580 = load i64, ptr %r2580.p, align 8, !alias.scope !3, !noalias !4
  %t2581 = or i64 0, %r2580
  %wp2582 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2581, ptr %wp2582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690e0 word 0x17ffffb8
  br label %L_800268fc0
L_8002690e4:
  ; @pc 0x8002690e4 word 0xb9400388
  %r2583.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2583 = load i64, ptr %r2583.p, align 8, !alias.scope !3, !noalias !4
  %gmp2584 = inttoptr i64 %r2583 to ptr
  %gml2585 = load i32, ptr %gmp2584, align 1, !alias.scope !4, !noalias !3
  %c2586 = zext i32 %gml2585 to i64
  %wp2587 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2586, ptr %wp2587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690e8 word 0x12077517
  %r2588.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2588 = load i64, ptr %r2588.p, align 8, !alias.scope !3, !noalias !4
  %c2589 = trunc i64 %r2588 to i32
  %t2590 = and i32 %c2589, -25165825
  %c2591 = zext i32 %t2590 to i64
  %wp2592 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2591, ptr %wp2592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690ec word 0x17ffffa9
  br label %L_800268f90
L_8002690f0:
  ; @pc 0x8002690f0 word 0x910063e8
  %r2593.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2593 = load i64, ptr %r2593.p, align 8, !alias.scope !3, !noalias !4
  %t2594 = add i64 %r2593, 24
  %wp2595 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2594, ptr %wp2595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690f4 word 0x39048fff
  %r2596.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2596 = load i64, ptr %r2596.p, align 8, !alias.scope !3, !noalias !4
  %t2597 = add i64 %r2596, 291
  %c2598 = trunc i32 0 to i8
  %gmp2599 = inttoptr i64 %t2597 to ptr
  store i8 %c2598, ptr %gmp2599, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002690f8 word 0xaa0503f9
  %r2600.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2600 = load i64, ptr %r2600.p, align 8, !alias.scope !3, !noalias !4
  %t2601 = or i64 0, %r2600
  %wp2602 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2601, ptr %wp2602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690fc word 0x91003108
  %r2603.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2603 = load i64, ptr %r2603.p, align 8, !alias.scope !3, !noalias !4
  %t2604 = add i64 %r2603, 12
  %wp2605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2604, ptr %wp2605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269100 word 0x2a0403f8
  %r2606.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2606 = load i64, ptr %r2606.p, align 8, !alias.scope !3, !noalias !4
  %c2607 = trunc i64 %r2606 to i32
  %t2608 = or i32 0, %c2607
  %c2609 = zext i32 %t2608 to i64
  %wp2610 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2609, ptr %wp2610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269104 word 0x390093ff
  %r2611.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2611 = load i64, ptr %r2611.p, align 8, !alias.scope !3, !noalias !4
  %t2612 = add i64 %r2611, 36
  %c2613 = trunc i32 0 to i8
  %gmp2614 = inttoptr i64 %t2612 to ptr
  store i8 %c2613, ptr %gmp2614, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269108 word 0xf9000fe8
  %r2615.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2615 = load i64, ptr %r2615.p, align 8, !alias.scope !3, !noalias !4
  %t2616 = add i64 %r2615, 24
  %r2617.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2617 = load i64, ptr %r2617.p, align 8, !alias.scope !3, !noalias !4
  %gmp2618 = inttoptr i64 %t2616 to ptr
  store i64 %r2617, ptr %gmp2618, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026910c word 0x52802008
  %c2619 = zext i32 256 to i64
  %wp2620 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2619, ptr %wp2620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269110 word 0xb90023e8
  %r2621.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2621 = load i64, ptr %r2621.p, align 8, !alias.scope !3, !noalias !4
  %t2622 = add i64 %r2621, 32
  %r2623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2623 = load i64, ptr %r2623.p, align 8, !alias.scope !3, !noalias !4
  %c2624 = trunc i64 %r2623 to i32
  %gmp2625 = inttoptr i64 %t2622 to ptr
  store i32 %c2624, ptr %gmp2625, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269114 word 0xf94006c8
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %t2627 = add i64 %r2626, 8
  %gmp2628 = inttoptr i64 %t2627 to ptr
  %gml2629 = load i64, ptr %gmp2628, align 1, !alias.scope !4, !noalias !3
  %wp2630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2629, ptr %wp2630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269118 word 0xf9400908
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %t2632 = add i64 %r2631, 16
  %gmp2633 = inttoptr i64 %t2632 to ptr
  %gml2634 = load i64, ptr %gmp2633, align 1, !alias.scope !4, !noalias !3
  %wp2635 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2634, ptr %wp2635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026911c word 0x14000021
  br label %L_8002691a0
L_800269120:
  ; @pc 0x800269120 word 0x910063e8
  %r2636.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2636 = load i64, ptr %r2636.p, align 8, !alias.scope !3, !noalias !4
  %t2637 = add i64 %r2636, 24
  %wp2638 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2637, ptr %wp2638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269124 word 0x39048fff
  %r2639.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2639 = load i64, ptr %r2639.p, align 8, !alias.scope !3, !noalias !4
  %t2640 = add i64 %r2639, 291
  %c2641 = trunc i32 0 to i8
  %gmp2642 = inttoptr i64 %t2640 to ptr
  store i8 %c2641, ptr %gmp2642, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269128 word 0xf0014f01
  %wp2643 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026912c word 0x91270c21
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %t2645 = add i64 %r2644, 2499
  %wp2646 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2645, ptr %wp2646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269130 word 0x91003108
  %r2647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2647 = load i64, ptr %r2647.p, align 8, !alias.scope !3, !noalias !4
  %t2648 = add i64 %r2647, 12
  %wp2649 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2648, ptr %wp2649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269134 word 0x390093ff
  %r2650.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2650 = load i64, ptr %r2650.p, align 8, !alias.scope !3, !noalias !4
  %t2651 = add i64 %r2650, 36
  %c2652 = trunc i32 0 to i8
  %gmp2653 = inttoptr i64 %t2651 to ptr
  store i8 %c2652, ptr %gmp2653, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269138 word 0xf9000fe8
  %r2654.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2654 = load i64, ptr %r2654.p, align 8, !alias.scope !3, !noalias !4
  %t2655 = add i64 %r2654, 24
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %gmp2657 = inttoptr i64 %t2655 to ptr
  store i64 %r2656, ptr %gmp2657, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026913c word 0x52802008
  %c2658 = zext i32 256 to i64
  %wp2659 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2658, ptr %wp2659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269140 word 0x910063e0
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %t2661 = add i64 %r2660, 24
  %wp2662 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2661, ptr %wp2662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269144 word 0xb90023e8
  %r2663.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2663 = load i64, ptr %r2663.p, align 8, !alias.scope !3, !noalias !4
  %t2664 = add i64 %r2663, 32
  %r2665.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2665 = load i64, ptr %r2665.p, align 8, !alias.scope !3, !noalias !4
  %c2666 = trunc i64 %r2665 to i32
  %gmp2667 = inttoptr i64 %t2664 to ptr
  store i32 %c2666, ptr %gmp2667, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269148 word 0xf9400928
  %r2668.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2668 = load i64, ptr %r2668.p, align 8, !alias.scope !3, !noalias !4
  %t2669 = add i64 %r2668, 16
  %gmp2670 = inttoptr i64 %t2669 to ptr
  %gml2671 = load i64, ptr %gmp2670, align 1, !alias.scope !4, !noalias !3
  %wp2672 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2671, ptr %wp2672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026914c word 0x2a0403f8
  %r2673.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2673 = load i64, ptr %r2673.p, align 8, !alias.scope !3, !noalias !4
  %c2674 = trunc i64 %r2673 to i32
  %t2675 = or i32 0, %c2674
  %c2676 = zext i32 %t2675 to i64
  %wp2677 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2676, ptr %wp2677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269150 word 0xaa0503f9
  %r2678.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2678 = load i64, ptr %r2678.p, align 8, !alias.scope !3, !noalias !4
  %t2679 = or i64 0, %r2678
  %wp2680 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2679, ptr %wp2680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269154 word 0xf9400908
  %r2681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2681 = load i64, ptr %r2681.p, align 8, !alias.scope !3, !noalias !4
  %t2682 = add i64 %r2681, 16
  %gmp2683 = inttoptr i64 %t2682 to ptr
  %gml2684 = load i64, ptr %gmp2683, align 1, !alias.scope !4, !noalias !3
  %wp2685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2684, ptr %wp2685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269158 word 0xb980250a
  %r2686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2686 = load i64, ptr %r2686.p, align 8, !alias.scope !3, !noalias !4
  %t2687 = add i64 %r2686, 36
  %gmp2688 = inttoptr i64 %t2687 to ptr
  %gml2689 = load i32, ptr %gmp2688, align 1, !alias.scope !4, !noalias !3
  %c2690 = sext i32 %gml2689 to i64
  %wp2691 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2690, ptr %wp2691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026915c word 0xb9800909
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %t2693 = add i64 %r2692, 8
  %gmp2694 = inttoptr i64 %t2693 to ptr
  %gml2695 = load i32, ptr %gmp2694, align 1, !alias.scope !4, !noalias !3
  %c2696 = sext i32 %gml2695 to i64
  %wp2697 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2696, ptr %wp2697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269160 word 0x8b0a0108
  %r2698.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2698 = load i64, ptr %r2698.p, align 8, !alias.scope !3, !noalias !4
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %t2700 = add i64 %r2698, %r2699
  %wp2701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2700, ptr %wp2701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269164 word 0x8b090102
  %r2702.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2702 = load i64, ptr %r2702.p, align 8, !alias.scope !3, !noalias !4
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %t2704 = add i64 %r2702, %r2703
  %wp2705 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2704, ptr %wp2705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269168 word 0x97f8c1be
  %wp2706 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265964, ptr %wp2706, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x80026916c word 0xf94006c9
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %t2708 = add i64 %r2707, 8
  %gmp2709 = inttoptr i64 %t2708 to ptr
  %gml2710 = load i64, ptr %gmp2709, align 1, !alias.scope !4, !noalias !3
  %wp2711 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2710, ptr %wp2711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269170 word 0xaa1903e5
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  %t2713 = or i64 0, %r2712
  %wp2714 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2713, ptr %wp2714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269174 word 0x2a1803e4
  %r2715.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2715 = load i64, ptr %r2715.p, align 8, !alias.scope !3, !noalias !4
  %c2716 = trunc i64 %r2715 to i32
  %t2717 = or i32 0, %c2716
  %c2718 = zext i32 %t2717 to i64
  %wp2719 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2718, ptr %wp2719, align 8, !alias.scope !3, !noalias !4
  br label %L_800269178
L_800269178:
  ; @pc 0x800269178 word 0x910063e8
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %t2721 = add i64 %r2720, 24
  %wp2722 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2721, ptr %wp2722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026917c word 0x39048fff
  %r2723.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2723 = load i64, ptr %r2723.p, align 8, !alias.scope !3, !noalias !4
  %t2724 = add i64 %r2723, 291
  %c2725 = trunc i32 0 to i8
  %gmp2726 = inttoptr i64 %t2724 to ptr
  store i8 %c2725, ptr %gmp2726, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269180 word 0xaa0503f9
  %r2727.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2727 = load i64, ptr %r2727.p, align 8, !alias.scope !3, !noalias !4
  %t2728 = or i64 0, %r2727
  %wp2729 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2728, ptr %wp2729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269184 word 0x91003108
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %t2731 = add i64 %r2730, 12
  %wp2732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2731, ptr %wp2732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269188 word 0x2a0403f8
  %r2733.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2733 = load i64, ptr %r2733.p, align 8, !alias.scope !3, !noalias !4
  %c2734 = trunc i64 %r2733 to i32
  %t2735 = or i32 0, %c2734
  %c2736 = zext i32 %t2735 to i64
  %wp2737 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2736, ptr %wp2737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026918c word 0x390093ff
  %r2738.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2738 = load i64, ptr %r2738.p, align 8, !alias.scope !3, !noalias !4
  %t2739 = add i64 %r2738, 36
  %c2740 = trunc i32 0 to i8
  %gmp2741 = inttoptr i64 %t2739 to ptr
  store i8 %c2740, ptr %gmp2741, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269190 word 0xf9000fe8
  %r2742.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2742 = load i64, ptr %r2742.p, align 8, !alias.scope !3, !noalias !4
  %t2743 = add i64 %r2742, 24
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %gmp2745 = inttoptr i64 %t2743 to ptr
  store i64 %r2744, ptr %gmp2745, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269194 word 0x52802008
  %c2746 = zext i32 256 to i64
  %wp2747 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2746, ptr %wp2747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269198 word 0xb90023e8
  %r2748.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2748 = load i64, ptr %r2748.p, align 8, !alias.scope !3, !noalias !4
  %t2749 = add i64 %r2748, 32
  %r2750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2750 = load i64, ptr %r2750.p, align 8, !alias.scope !3, !noalias !4
  %c2751 = trunc i64 %r2750 to i32
  %gmp2752 = inttoptr i64 %t2749 to ptr
  store i32 %c2751, ptr %gmp2752, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026919c word 0xf9400928
  %r2753.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2753 = load i64, ptr %r2753.p, align 8, !alias.scope !3, !noalias !4
  %t2754 = add i64 %r2753, 16
  %gmp2755 = inttoptr i64 %t2754 to ptr
  %gml2756 = load i64, ptr %gmp2755, align 1, !alias.scope !4, !noalias !3
  %wp2757 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2756, ptr %wp2757, align 8, !alias.scope !3, !noalias !4
  br label %L_8002691a0
L_8002691a0:
  ; @pc 0x8002691a0 word 0xf9400908
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %t2759 = add i64 %r2758, 16
  %gmp2760 = inttoptr i64 %t2759 to ptr
  %gml2761 = load i64, ptr %gmp2760, align 1, !alias.scope !4, !noalias !3
  %wp2762 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2761, ptr %wp2762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691a4 word 0xf0014f01
  %wp2763 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691a8 word 0x91270c21
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %t2765 = add i64 %r2764, 2499
  %wp2766 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2765, ptr %wp2766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691ac word 0x910063e0
  %r2767.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2767 = load i64, ptr %r2767.p, align 8, !alias.scope !3, !noalias !4
  %t2768 = add i64 %r2767, 24
  %wp2769 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2768, ptr %wp2769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691b0 word 0xb980250a
  %r2770.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2770 = load i64, ptr %r2770.p, align 8, !alias.scope !3, !noalias !4
  %t2771 = add i64 %r2770, 36
  %gmp2772 = inttoptr i64 %t2771 to ptr
  %gml2773 = load i32, ptr %gmp2772, align 1, !alias.scope !4, !noalias !3
  %c2774 = sext i32 %gml2773 to i64
  %wp2775 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2774, ptr %wp2775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691b4 word 0xb9800909
  %r2776.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2776 = load i64, ptr %r2776.p, align 8, !alias.scope !3, !noalias !4
  %t2777 = add i64 %r2776, 8
  %gmp2778 = inttoptr i64 %t2777 to ptr
  %gml2779 = load i32, ptr %gmp2778, align 1, !alias.scope !4, !noalias !3
  %c2780 = sext i32 %gml2779 to i64
  %wp2781 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2780, ptr %wp2781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691b8 word 0x8b0a0108
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %r2783.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2783 = load i64, ptr %r2783.p, align 8, !alias.scope !3, !noalias !4
  %t2784 = add i64 %r2782, %r2783
  %wp2785 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2784, ptr %wp2785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691bc word 0x8b090102
  %r2786.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2786 = load i64, ptr %r2786.p, align 8, !alias.scope !3, !noalias !4
  %r2787.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2787 = load i64, ptr %r2787.p, align 8, !alias.scope !3, !noalias !4
  %t2788 = add i64 %r2786, %r2787
  %wp2789 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2788, ptr %wp2789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691c0 word 0x97f8c1a8
  %wp2790 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266052, ptr %wp2790, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8002691c4 word 0xb001c2a8
  %wp2791 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp2791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691c8 word 0x91152108
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %t2793 = add i64 %r2792, 1352
  %wp2794 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2793, ptr %wp2794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691cc word 0xf9000268
  %r2795.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2795 = load i64, ptr %r2795.p, align 8, !alias.scope !3, !noalias !4
  %r2796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2796 = load i64, ptr %r2796.p, align 8, !alias.scope !3, !noalias !4
  %gmp2797 = inttoptr i64 %r2795 to ptr
  store i64 %r2796, ptr %gmp2797, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002691d0 word 0x5280003c
  %c2798 = zext i32 1 to i64
  %wp2799 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c2798, ptr %wp2799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691d4 word 0x3607c515
  %r2800.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2800 = load i64, ptr %r2800.p, align 8, !alias.scope !3, !noalias !4
  %t2801 = and i64 %r2800, 1
  %cmp2802 = icmp eq i64 %t2801, 0
  br i1 %cmp2802, label %L_800268a74, label %L_8002691d8_ft
L_8002691e0:
  ; @pc 0x8002691e0 word 0xaa0803e0
  %r2806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2806 = load i64, ptr %r2806.p, align 8, !alias.scope !3, !noalias !4
  %t2807 = or i64 0, %r2806
  %wp2808 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2807, ptr %wp2808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691e4 word 0xaa0803f8
  %r2809.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2809 = load i64, ptr %r2809.p, align 8, !alias.scope !3, !noalias !4
  %t2810 = or i64 0, %r2809
  %wp2811 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2810, ptr %wp2811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691e8 word 0x2a0403f9
  %r2812.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2812 = load i64, ptr %r2812.p, align 8, !alias.scope !3, !noalias !4
  %c2813 = trunc i64 %r2812 to i32
  %t2814 = or i32 0, %c2813
  %c2815 = zext i32 %t2814 to i64
  %wp2816 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2815, ptr %wp2816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691ec word 0xaa0503fb
  %r2817.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2817 = load i64, ptr %r2817.p, align 8, !alias.scope !3, !noalias !4
  %t2818 = or i64 0, %r2817
  %wp2819 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2818, ptr %wp2819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691f0 word 0xd63f0120
  %r2820.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2820 = load i64, ptr %r2820.p, align 8, !alias.scope !3, !noalias !4
  %fp2821 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2820, ptr %fp2821, align 8, !alias.scope !3, !noalias !4
  %wp2822 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266100, ptr %wp2822, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002691f4 word 0xaa1b03e5
  %r2823.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2823 = load i64, ptr %r2823.p, align 8, !alias.scope !3, !noalias !4
  %t2824 = or i64 0, %r2823
  %wp2825 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2824, ptr %wp2825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691f8 word 0x2a1903e4
  %r2826.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2826 = load i64, ptr %r2826.p, align 8, !alias.scope !3, !noalias !4
  %c2827 = trunc i64 %r2826 to i32
  %t2828 = or i32 0, %c2827
  %c2829 = zext i32 %t2828 to i64
  %wp2830 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2829, ptr %wp2830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691fc word 0xaa1803e8
  %r2831.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2831 = load i64, ptr %r2831.p, align 8, !alias.scope !3, !noalias !4
  %t2832 = or i64 0, %r2831
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269200 word 0x17fffea5
  br label %L_800268c94
L_800269204:
  ; @pc 0x800269204 word 0xaa0803f9
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %t2835 = or i64 0, %r2834
  %wp2836 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2835, ptr %wp2836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269208 word 0xf94006c8
  %r2837.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2837 = load i64, ptr %r2837.p, align 8, !alias.scope !3, !noalias !4
  %t2838 = add i64 %r2837, 8
  %gmp2839 = inttoptr i64 %t2838 to ptr
  %gml2840 = load i64, ptr %gmp2839, align 1, !alias.scope !4, !noalias !3
  %wp2841 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2840, ptr %wp2841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026920c word 0xaa0503fc
  %r2842.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2842 = load i64, ptr %r2842.p, align 8, !alias.scope !3, !noalias !4
  %t2843 = or i64 0, %r2842
  %wp2844 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2843, ptr %wp2844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269210 word 0x2a0403fb
  %r2845.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2845 = load i64, ptr %r2845.p, align 8, !alias.scope !3, !noalias !4
  %c2846 = trunc i64 %r2845 to i32
  %t2847 = or i32 0, %c2846
  %c2848 = zext i32 %t2847 to i64
  %wp2849 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2848, ptr %wp2849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269214 word 0xf9400908
  %r2850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2850 = load i64, ptr %r2850.p, align 8, !alias.scope !3, !noalias !4
  %t2851 = add i64 %r2850, 16
  %gmp2852 = inttoptr i64 %t2851 to ptr
  %gml2853 = load i64, ptr %gmp2852, align 1, !alias.scope !4, !noalias !3
  %wp2854 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2853, ptr %wp2854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269218 word 0xf9402908
  %r2855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2855 = load i64, ptr %r2855.p, align 8, !alias.scope !3, !noalias !4
  %t2856 = add i64 %r2855, 80
  %gmp2857 = inttoptr i64 %t2856 to ptr
  %gml2858 = load i64, ptr %gmp2857, align 1, !alias.scope !4, !noalias !3
  %wp2859 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2858, ptr %wp2859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026921c word 0xb9401909
  %r2860.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2860 = load i64, ptr %r2860.p, align 8, !alias.scope !3, !noalias !4
  %t2861 = add i64 %r2860, 24
  %gmp2862 = inttoptr i64 %t2861 to ptr
  %gml2863 = load i32, ptr %gmp2862, align 1, !alias.scope !4, !noalias !3
  %c2864 = zext i32 %gml2863 to i64
  %wp2865 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2864, ptr %wp2865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269220 word 0x8b090108
  %r2866.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2866 = load i64, ptr %r2866.p, align 8, !alias.scope !3, !noalias !4
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %t2868 = add i64 %r2866, %r2867
  %wp2869 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2868, ptr %wp2869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269224 word 0xb9400109
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %gmp2871 = inttoptr i64 %r2870 to ptr
  %gml2872 = load i32, ptr %gmp2871, align 1, !alias.scope !4, !noalias !3
  %c2873 = zext i32 %gml2872 to i64
  %wp2874 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2873, ptr %wp2874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269228 word 0x6b37213f
  %r2875.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2875 = load i64, ptr %r2875.p, align 8, !alias.scope !3, !noalias !4
  %c2876 = trunc i64 %r2875 to i32
  %r2877.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2877 = load i64, ptr %r2877.p, align 8, !alias.scope !3, !noalias !4
  %c2878 = trunc i64 %r2877 to i16
  %c2879 = zext i16 %c2878 to i64
  %c2880 = trunc i64 %c2879 to i32
  %t2881 = sub i32 %c2876, %c2880
  %fn2882 = icmp slt i32 %t2881, 0
  %fz2883 = icmp eq i32 %t2881, 0
  %fc2884 = icmp uge i32 %c2876, %c2880
  %fx12885 = xor i32 %c2876, %c2880
  %fx22886 = xor i32 %c2876, %t2881
  %fva2887 = and i32 %fx12885, %fx22886
  %fv2888 = icmp slt i32 %fva2887, 0
  %nz2889 = zext i1 %fn2882 to i64
  %zz2890 = zext i1 %fz2883 to i64
  %cz2891 = zext i1 %fc2884 to i64
  %vz2892 = zext i1 %fv2888 to i64
  %ns2893 = shl i64 %nz2889, 31
  %zs2894 = shl i64 %zz2890, 30
  %cs2895 = shl i64 %cz2891, 29
  %vs2896 = shl i64 %vz2892, 28
  %nzor2897 = or i64 %ns2893, %zs2894
  %cvor2898 = or i64 %cs2895, %vs2896
  %nzcv2899 = or i64 %nzor2897, %cvor2898
  %wp2900 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2899, ptr %wp2900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026922c word 0x540072ed
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %fsh2903 = lshr i64 %r2901, 30
  %ftr2904 = trunc i64 %fsh2903 to i1
  %fsh2905 = lshr i64 %r2901, 31
  %ftr2906 = trunc i64 %fsh2905 to i1
  %fsh2907 = lshr i64 %r2901, 28
  %ftr2908 = trunc i64 %fsh2907 to i1
  %fnz2909 = xor i1 %ftr2904, true
  %feq2910 = icmp eq i1 %ftr2906, %ftr2908
  %fgt2911 = and i1 %fnz2909, %feq2910
  %cond2902 = xor i1 %fgt2911, true
  br i1 %cond2902, label %L_80026a088, label %L_800269230_ft
L_800269240:
  ; @pc 0x800269240 word 0x9100c000
  %r2935.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2935 = load i64, ptr %r2935.p, align 8, !alias.scope !3, !noalias !4
  %t2936 = add i64 %r2935, 48
  %wp2937 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2936, ptr %wp2937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269244 word 0x13003f41
  %r2938.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2938 = load i64, ptr %r2938.p, align 8, !alias.scope !3, !noalias !4
  %c2939 = trunc i64 %r2938 to i32
  %t2940 = lshr i32 %c2939, 15
  %t2941 = and i32 %t2940, 1
  %t2942 = sub i32 0, %t2941
  %t2943 = and i32 %t2942, -65536
  %t2944 = and i32 %c2939, 65535
  %t2945 = or i32 %t2943, %t2944
  %c2946 = zext i32 %t2945 to i64
  %wp2947 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2946, ptr %wp2947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269248 word 0x940e7355
  %wp2948 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266188, ptr %wp2948, align 8, !alias.scope !3, !noalias !4
  call void @f_800605f9c(ptr %c)
  ; @pc 0x80026924c word 0x2a0003f8
  %r2949.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2949 = load i64, ptr %r2949.p, align 8, !alias.scope !3, !noalias !4
  %c2950 = trunc i64 %r2949 to i32
  %t2951 = or i32 0, %c2950
  %c2952 = zext i32 %t2951 to i64
  %wp2953 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2952, ptr %wp2953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269250 word 0xaa1903e8
  %r2954.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2954 = load i64, ptr %r2954.p, align 8, !alias.scope !3, !noalias !4
  %t2955 = or i64 0, %r2954
  %wp2956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2955, ptr %wp2956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269254 word 0x2a1b03e4
  %r2957.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2957 = load i64, ptr %r2957.p, align 8, !alias.scope !3, !noalias !4
  %c2958 = trunc i64 %r2957 to i32
  %t2959 = or i32 0, %c2958
  %c2960 = zext i32 %t2959 to i64
  %wp2961 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2960, ptr %wp2961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269258 word 0xaa1c03e5
  %r2962.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2962 = load i64, ptr %r2962.p, align 8, !alias.scope !3, !noalias !4
  %t2963 = or i64 0, %r2962
  %wp2964 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2963, ptr %wp2964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026925c word 0x17fffe96
  br label %L_800268cb4
L_800269260:
  ; @pc 0x800269260 word 0x39048fff
  %r2965.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2965 = load i64, ptr %r2965.p, align 8, !alias.scope !3, !noalias !4
  %t2966 = add i64 %r2965, 291
  %c2967 = trunc i32 0 to i8
  %gmp2968 = inttoptr i64 %t2966 to ptr
  store i8 %c2967, ptr %gmp2968, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269264 word 0x910063e9
  %r2969.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2969 = load i64, ptr %r2969.p, align 8, !alias.scope !3, !noalias !4
  %t2970 = add i64 %r2969, 24
  %wp2971 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2970, ptr %wp2971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269268 word 0xf0014f01
  %wp2972 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026926c word 0x91270c21
  %r2973.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2973 = load i64, ptr %r2973.p, align 8, !alias.scope !3, !noalias !4
  %t2974 = add i64 %r2973, 2499
  %wp2975 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2974, ptr %wp2975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269270 word 0xf9400908
  %r2976.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2976 = load i64, ptr %r2976.p, align 8, !alias.scope !3, !noalias !4
  %t2977 = add i64 %r2976, 16
  %gmp2978 = inttoptr i64 %t2977 to ptr
  %gml2979 = load i64, ptr %gmp2978, align 1, !alias.scope !4, !noalias !3
  %wp2980 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2979, ptr %wp2980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269274 word 0x91003129
  %r2981.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2981 = load i64, ptr %r2981.p, align 8, !alias.scope !3, !noalias !4
  %t2982 = add i64 %r2981, 12
  %wp2983 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2982, ptr %wp2983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269278 word 0xf9000fe9
  %r2984.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2984 = load i64, ptr %r2984.p, align 8, !alias.scope !3, !noalias !4
  %t2985 = add i64 %r2984, 24
  %r2986.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2986 = load i64, ptr %r2986.p, align 8, !alias.scope !3, !noalias !4
  %gmp2987 = inttoptr i64 %t2985 to ptr
  store i64 %r2986, ptr %gmp2987, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026927c word 0x52802009
  %c2988 = zext i32 256 to i64
  %wp2989 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2988, ptr %wp2989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269280 word 0x390093ff
  %r2990.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2990 = load i64, ptr %r2990.p, align 8, !alias.scope !3, !noalias !4
  %t2991 = add i64 %r2990, 36
  %c2992 = trunc i32 0 to i8
  %gmp2993 = inttoptr i64 %t2991 to ptr
  store i8 %c2992, ptr %gmp2993, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269284 word 0xb90023e9
  %r2994.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2994 = load i64, ptr %r2994.p, align 8, !alias.scope !3, !noalias !4
  %t2995 = add i64 %r2994, 32
  %r2996.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2996 = load i64, ptr %r2996.p, align 8, !alias.scope !3, !noalias !4
  %c2997 = trunc i64 %r2996 to i32
  %gmp2998 = inttoptr i64 %t2995 to ptr
  store i32 %c2997, ptr %gmp2998, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269288 word 0x910063e0
  %r2999.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2999 = load i64, ptr %r2999.p, align 8, !alias.scope !3, !noalias !4
  %t3000 = add i64 %r2999, 24
  %wp3001 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3000, ptr %wp3001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026928c word 0x2a0403f7
  %r3002.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3002 = load i64, ptr %r3002.p, align 8, !alias.scope !3, !noalias !4
  %c3003 = trunc i64 %r3002 to i32
  %t3004 = or i32 0, %c3003
  %c3005 = zext i32 %t3004 to i64
  %wp3006 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3005, ptr %wp3006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269290 word 0xaa0503f8
  %r3007.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3007 = load i64, ptr %r3007.p, align 8, !alias.scope !3, !noalias !4
  %t3008 = or i64 0, %r3007
  %wp3009 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3008, ptr %wp3009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269294 word 0xaa0603f9
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %t3011 = or i64 0, %r3010
  %wp3012 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3011, ptr %wp3012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269298 word 0x2a0703f4
  %r3013.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3013 = load i64, ptr %r3013.p, align 8, !alias.scope !3, !noalias !4
  %c3014 = trunc i64 %r3013 to i32
  %t3015 = or i32 0, %c3014
  %c3016 = zext i32 %t3015 to i64
  %wp3017 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3016, ptr %wp3017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026929c word 0xf9400908
  %r3018.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3018 = load i64, ptr %r3018.p, align 8, !alias.scope !3, !noalias !4
  %t3019 = add i64 %r3018, 16
  %gmp3020 = inttoptr i64 %t3019 to ptr
  %gml3021 = load i64, ptr %gmp3020, align 1, !alias.scope !4, !noalias !3
  %wp3022 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3021, ptr %wp3022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692a0 word 0xb980250a
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %t3024 = add i64 %r3023, 36
  %gmp3025 = inttoptr i64 %t3024 to ptr
  %gml3026 = load i32, ptr %gmp3025, align 1, !alias.scope !4, !noalias !3
  %c3027 = sext i32 %gml3026 to i64
  %wp3028 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3027, ptr %wp3028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692a4 word 0xb9800909
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %t3030 = add i64 %r3029, 8
  %gmp3031 = inttoptr i64 %t3030 to ptr
  %gml3032 = load i32, ptr %gmp3031, align 1, !alias.scope !4, !noalias !3
  %c3033 = sext i32 %gml3032 to i64
  %wp3034 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3033, ptr %wp3034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692a8 word 0x8b0a0108
  %r3035.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3035 = load i64, ptr %r3035.p, align 8, !alias.scope !3, !noalias !4
  %r3036.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3036 = load i64, ptr %r3036.p, align 8, !alias.scope !3, !noalias !4
  %t3037 = add i64 %r3035, %r3036
  %wp3038 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3037, ptr %wp3038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692ac word 0x8b090102
  %r3039.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3039 = load i64, ptr %r3039.p, align 8, !alias.scope !3, !noalias !4
  %r3040.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3040 = load i64, ptr %r3040.p, align 8, !alias.scope !3, !noalias !4
  %t3041 = add i64 %r3039, %r3040
  %wp3042 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3041, ptr %wp3042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692b0 word 0x97f8c16c
  %wp3043 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266292, ptr %wp3043, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8002692b4 word 0xb9400feb
  %r3044.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3044 = load i64, ptr %r3044.p, align 8, !alias.scope !3, !noalias !4
  %t3045 = add i64 %r3044, 12
  %gmp3046 = inttoptr i64 %t3045 to ptr
  %gml3047 = load i32, ptr %gmp3046, align 1, !alias.scope !4, !noalias !3
  %c3048 = zext i32 %gml3047 to i64
  %wp3049 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3048, ptr %wp3049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692b8 word 0x2a1403e7
  %r3050.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3050 = load i64, ptr %r3050.p, align 8, !alias.scope !3, !noalias !4
  %c3051 = trunc i64 %r3050 to i32
  %t3052 = or i32 0, %c3051
  %c3053 = zext i32 %t3052 to i64
  %wp3054 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3053, ptr %wp3054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692bc word 0xaa1903e6
  %r3055.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3055 = load i64, ptr %r3055.p, align 8, !alias.scope !3, !noalias !4
  %t3056 = or i64 0, %r3055
  %wp3057 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t3056, ptr %wp3057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692c0 word 0xf9400bea
  %r3058.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3058 = load i64, ptr %r3058.p, align 8, !alias.scope !3, !noalias !4
  %t3059 = add i64 %r3058, 16
  %gmp3060 = inttoptr i64 %t3059 to ptr
  %gml3061 = load i64, ptr %gmp3060, align 1, !alias.scope !4, !noalias !3
  %wp3062 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3061, ptr %wp3062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692c4 word 0xaa1803e5
  %r3063.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3063 = load i64, ptr %r3063.p, align 8, !alias.scope !3, !noalias !4
  %t3064 = or i64 0, %r3063
  %wp3065 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3064, ptr %wp3065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692c8 word 0x2a1703e4
  %r3066.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3066 = load i64, ptr %r3066.p, align 8, !alias.scope !3, !noalias !4
  %c3067 = trunc i64 %r3066 to i32
  %t3068 = or i32 0, %c3067
  %c3069 = zext i32 %t3068 to i64
  %wp3070 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3069, ptr %wp3070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692cc word 0xaa1f03f7
  %t3071 = or i64 0, 0
  %wp3072 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3071, ptr %wp3072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692d0 word 0x17fffdfb
  br label %L_800268abc
L_8002692d4:
  ; @pc 0x8002692d4 word 0xd001b7a0
  %wp3073 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692d8 word 0xaa0503f8
  %r3074.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3074 = load i64, ptr %r3074.p, align 8, !alias.scope !3, !noalias !4
  %t3075 = or i64 0, %r3074
  %wp3076 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3075, ptr %wp3076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692dc word 0xf9452c00
  %r3077.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3077 = load i64, ptr %r3077.p, align 8, !alias.scope !3, !noalias !4
  %t3078 = add i64 %r3077, 2648
  %gmp3079 = inttoptr i64 %t3078 to ptr
  %gml3080 = load i64, ptr %gmp3079, align 1, !alias.scope !4, !noalias !3
  %wp3081 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3080, ptr %wp3081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692e0 word 0xb90003e4
  %r3082.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3082 = load i64, ptr %r3082.p, align 8, !alias.scope !3, !noalias !4
  %r3083.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3083 = load i64, ptr %r3083.p, align 8, !alias.scope !3, !noalias !4
  %c3084 = trunc i64 %r3083 to i32
  %gmp3085 = inttoptr i64 %r3082 to ptr
  store i32 %c3084, ptr %gmp3085, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002692e4 word 0xaa0603f9
  %r3086.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3086 = load i64, ptr %r3086.p, align 8, !alias.scope !3, !noalias !4
  %t3087 = or i64 0, %r3086
  %wp3088 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3087, ptr %wp3088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692e8 word 0x2a0703f4
  %r3089.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3089 = load i64, ptr %r3089.p, align 8, !alias.scope !3, !noalias !4
  %c3090 = trunc i64 %r3089 to i32
  %t3091 = or i32 0, %c3090
  %c3092 = zext i32 %t3091 to i64
  %wp3093 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3092, ptr %wp3093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692ec word 0x94a4e9ad
  %wp3094 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266352, ptr %wp3094, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8002692f0 word 0xb9400feb
  %r3095.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3095 = load i64, ptr %r3095.p, align 8, !alias.scope !3, !noalias !4
  %t3096 = add i64 %r3095, 12
  %gmp3097 = inttoptr i64 %t3096 to ptr
  %gml3098 = load i32, ptr %gmp3097, align 1, !alias.scope !4, !noalias !3
  %c3099 = zext i32 %gml3098 to i64
  %wp3100 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3099, ptr %wp3100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692f4 word 0x2a1403e7
  %r3101.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3101 = load i64, ptr %r3101.p, align 8, !alias.scope !3, !noalias !4
  %c3102 = trunc i64 %r3101 to i32
  %t3103 = or i32 0, %c3102
  %c3104 = zext i32 %t3103 to i64
  %wp3105 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3104, ptr %wp3105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692f8 word 0xaa1903e6
  %r3106.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3106 = load i64, ptr %r3106.p, align 8, !alias.scope !3, !noalias !4
  %t3107 = or i64 0, %r3106
  %wp3108 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t3107, ptr %wp3108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002692fc word 0xf9400bea
  %r3109.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3109 = load i64, ptr %r3109.p, align 8, !alias.scope !3, !noalias !4
  %t3110 = add i64 %r3109, 16
  %gmp3111 = inttoptr i64 %t3110 to ptr
  %gml3112 = load i64, ptr %gmp3111, align 1, !alias.scope !4, !noalias !3
  %wp3113 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3112, ptr %wp3113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269300 word 0xaa1803e5
  %r3114.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3114 = load i64, ptr %r3114.p, align 8, !alias.scope !3, !noalias !4
  %t3115 = or i64 0, %r3114
  %wp3116 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3115, ptr %wp3116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269304 word 0xb94003e4
  %r3117.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3117 = load i64, ptr %r3117.p, align 8, !alias.scope !3, !noalias !4
  %gmp3118 = inttoptr i64 %r3117 to ptr
  %gml3119 = load i32, ptr %gmp3118, align 1, !alias.scope !4, !noalias !3
  %c3120 = zext i32 %gml3119 to i64
  %wp3121 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3120, ptr %wp3121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269308 word 0x34ffbe20
  %r3122.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3122 = load i64, ptr %r3122.p, align 8, !alias.scope !3, !noalias !4
  %c3123 = trunc i64 %r3122 to i32
  %cmp3124 = icmp eq i32 %c3123, 0
  br i1 %cmp3124, label %L_800268acc, label %L_80026930c_ft
L_80026934c:
  ; @pc 0x80026934c word 0xd001b7a0
  %wp3177 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269350 word 0xaa0503f8
  %r3178.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3178 = load i64, ptr %r3178.p, align 8, !alias.scope !3, !noalias !4
  %t3179 = or i64 0, %r3178
  %wp3180 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3179, ptr %wp3180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269354 word 0xf9453400
  %r3181.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3181 = load i64, ptr %r3181.p, align 8, !alias.scope !3, !noalias !4
  %t3182 = add i64 %r3181, 2664
  %gmp3183 = inttoptr i64 %t3182 to ptr
  %gml3184 = load i64, ptr %gmp3183, align 1, !alias.scope !4, !noalias !3
  %wp3185 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3184, ptr %wp3185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269358 word 0xb90003e4
  %r3186.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3186 = load i64, ptr %r3186.p, align 8, !alias.scope !3, !noalias !4
  %r3187.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3187 = load i64, ptr %r3187.p, align 8, !alias.scope !3, !noalias !4
  %c3188 = trunc i64 %r3187 to i32
  %gmp3189 = inttoptr i64 %r3186 to ptr
  store i32 %c3188, ptr %gmp3189, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026935c word 0x2a0703f4
  %r3190.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3190 = load i64, ptr %r3190.p, align 8, !alias.scope !3, !noalias !4
  %c3191 = trunc i64 %r3190 to i32
  %t3192 = or i32 0, %c3191
  %c3193 = zext i32 %t3192 to i64
  %wp3194 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3193, ptr %wp3194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269360 word 0xaa0903f9
  %r3195.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3195 = load i64, ptr %r3195.p, align 8, !alias.scope !3, !noalias !4
  %t3196 = or i64 0, %r3195
  %wp3197 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3196, ptr %wp3197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269364 word 0x94a4e98f
  %wp3198 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266472, ptr %wp3198, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269368 word 0xf001b86e
  %wp3199 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026936c word 0xf001b86d
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269370 word 0xf941b5ce
  %r3201.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3201 = load i64, ptr %r3201.p, align 8, !alias.scope !3, !noalias !4
  %t3202 = add i64 %r3201, 872
  %gmp3203 = inttoptr i64 %t3202 to ptr
  %gml3204 = load i64, ptr %gmp3203, align 1, !alias.scope !4, !noalias !3
  %wp3205 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3204, ptr %wp3205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269374 word 0xb001b72c
  %wp3206 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269378 word 0xb001b726
  %wp3207 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026937c word 0xf941bdad
  %r3208.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3208 = load i64, ptr %r3208.p, align 8, !alias.scope !3, !noalias !4
  %t3209 = add i64 %r3208, 888
  %gmp3210 = inttoptr i64 %t3209 to ptr
  %gml3211 = load i64, ptr %gmp3210, align 1, !alias.scope !4, !noalias !3
  %wp3212 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3211, ptr %wp3212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269380 word 0xf943018c
  %r3213.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3213 = load i64, ptr %r3213.p, align 8, !alias.scope !3, !noalias !4
  %t3214 = add i64 %r3213, 1536
  %gmp3215 = inttoptr i64 %t3214 to ptr
  %gml3216 = load i64, ptr %gmp3215, align 1, !alias.scope !4, !noalias !3
  %wp3217 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3216, ptr %wp3217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269384 word 0xaa1903e9
  %r3218.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3218 = load i64, ptr %r3218.p, align 8, !alias.scope !3, !noalias !4
  %t3219 = or i64 0, %r3218
  %wp3220 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3219, ptr %wp3220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269388 word 0x2a1403e7
  %r3221.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3221 = load i64, ptr %r3221.p, align 8, !alias.scope !3, !noalias !4
  %c3222 = trunc i64 %r3221 to i32
  %t3223 = or i32 0, %c3222
  %c3224 = zext i32 %t3223 to i64
  %wp3225 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3224, ptr %wp3225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026938c word 0xb9400feb
  %r3226.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3226 = load i64, ptr %r3226.p, align 8, !alias.scope !3, !noalias !4
  %t3227 = add i64 %r3226, 12
  %gmp3228 = inttoptr i64 %t3227 to ptr
  %gml3229 = load i32, ptr %gmp3228, align 1, !alias.scope !4, !noalias !3
  %c3230 = zext i32 %gml3229 to i64
  %wp3231 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3230, ptr %wp3231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269390 word 0xaa1803e5
  %r3232.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3232 = load i64, ptr %r3232.p, align 8, !alias.scope !3, !noalias !4
  %t3233 = or i64 0, %r3232
  %wp3234 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3233, ptr %wp3234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269394 word 0xf9400bea
  %r3235.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3235 = load i64, ptr %r3235.p, align 8, !alias.scope !3, !noalias !4
  %t3236 = add i64 %r3235, 16
  %gmp3237 = inttoptr i64 %t3236 to ptr
  %gml3238 = load i64, ptr %gmp3237, align 1, !alias.scope !4, !noalias !3
  %wp3239 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3238, ptr %wp3239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269398 word 0xf94398c6
  %r3240.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3240 = load i64, ptr %r3240.p, align 8, !alias.scope !3, !noalias !4
  %t3241 = add i64 %r3240, 1840
  %gmp3242 = inttoptr i64 %t3241 to ptr
  %gml3243 = load i64, ptr %gmp3242, align 1, !alias.scope !4, !noalias !3
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026939c word 0xb94003e4
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %gmp3246 = inttoptr i64 %r3245 to ptr
  %gml3247 = load i32, ptr %gmp3246, align 1, !alias.scope !4, !noalias !3
  %c3248 = zext i32 %gml3247 to i64
  %wp3249 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3248, ptr %wp3249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693a0 word 0x34ffbc40
  %r3250.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3250 = load i64, ptr %r3250.p, align 8, !alias.scope !3, !noalias !4
  %c3251 = trunc i64 %r3250 to i32
  %cmp3252 = icmp eq i32 %c3251, 0
  br i1 %cmp3252, label %L_800268b28, label %L_8002693a4_ft
L_800269404:
  ; @pc 0x800269404 word 0xd001b7a0
  %wp3329 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269408 word 0xaa0503f8
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %t3331 = or i64 0, %r3330
  %wp3332 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3331, ptr %wp3332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026940c word 0xf9453c00
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %t3334 = add i64 %r3333, 2680
  %gmp3335 = inttoptr i64 %t3334 to ptr
  %gml3336 = load i64, ptr %gmp3335, align 1, !alias.scope !4, !noalias !3
  %wp3337 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3336, ptr %wp3337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269410 word 0xb90003e4
  %r3338.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3338 = load i64, ptr %r3338.p, align 8, !alias.scope !3, !noalias !4
  %r3339.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3339 = load i64, ptr %r3339.p, align 8, !alias.scope !3, !noalias !4
  %c3340 = trunc i64 %r3339 to i32
  %gmp3341 = inttoptr i64 %r3338 to ptr
  store i32 %c3340, ptr %gmp3341, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269414 word 0x2a0703f4
  %r3342.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3342 = load i64, ptr %r3342.p, align 8, !alias.scope !3, !noalias !4
  %c3343 = trunc i64 %r3342 to i32
  %t3344 = or i32 0, %c3343
  %c3345 = zext i32 %t3344 to i64
  %wp3346 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3345, ptr %wp3346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269418 word 0xaa0903f9
  %r3347.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3347 = load i64, ptr %r3347.p, align 8, !alias.scope !3, !noalias !4
  %t3348 = or i64 0, %r3347
  %wp3349 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3348, ptr %wp3349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026941c word 0x94a4e961
  %wp3350 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266656, ptr %wp3350, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269420 word 0xf001b86e
  %wp3351 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269424 word 0xf001b86d
  %wp3352 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269428 word 0xf941b5ce
  %r3353.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3353 = load i64, ptr %r3353.p, align 8, !alias.scope !3, !noalias !4
  %t3354 = add i64 %r3353, 872
  %gmp3355 = inttoptr i64 %t3354 to ptr
  %gml3356 = load i64, ptr %gmp3355, align 1, !alias.scope !4, !noalias !3
  %wp3357 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3356, ptr %wp3357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026942c word 0xb001b72c
  %wp3358 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269430 word 0xb001b726
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269434 word 0xf941bdad
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %t3361 = add i64 %r3360, 888
  %gmp3362 = inttoptr i64 %t3361 to ptr
  %gml3363 = load i64, ptr %gmp3362, align 1, !alias.scope !4, !noalias !3
  %wp3364 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3363, ptr %wp3364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269438 word 0xf943018c
  %r3365.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3365 = load i64, ptr %r3365.p, align 8, !alias.scope !3, !noalias !4
  %t3366 = add i64 %r3365, 1536
  %gmp3367 = inttoptr i64 %t3366 to ptr
  %gml3368 = load i64, ptr %gmp3367, align 1, !alias.scope !4, !noalias !3
  %wp3369 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3368, ptr %wp3369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026943c word 0xaa1903e9
  %r3370.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3370 = load i64, ptr %r3370.p, align 8, !alias.scope !3, !noalias !4
  %t3371 = or i64 0, %r3370
  %wp3372 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3371, ptr %wp3372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269440 word 0x2a1403e7
  %r3373.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3373 = load i64, ptr %r3373.p, align 8, !alias.scope !3, !noalias !4
  %c3374 = trunc i64 %r3373 to i32
  %t3375 = or i32 0, %c3374
  %c3376 = zext i32 %t3375 to i64
  %wp3377 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3376, ptr %wp3377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269444 word 0xb9400feb
  %r3378.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3378 = load i64, ptr %r3378.p, align 8, !alias.scope !3, !noalias !4
  %t3379 = add i64 %r3378, 12
  %gmp3380 = inttoptr i64 %t3379 to ptr
  %gml3381 = load i32, ptr %gmp3380, align 1, !alias.scope !4, !noalias !3
  %c3382 = zext i32 %gml3381 to i64
  %wp3383 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3382, ptr %wp3383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269448 word 0xaa1803e5
  %r3384.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3384 = load i64, ptr %r3384.p, align 8, !alias.scope !3, !noalias !4
  %t3385 = or i64 0, %r3384
  %wp3386 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3385, ptr %wp3386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026944c word 0xf9400bea
  %r3387.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3387 = load i64, ptr %r3387.p, align 8, !alias.scope !3, !noalias !4
  %t3388 = add i64 %r3387, 16
  %gmp3389 = inttoptr i64 %t3388 to ptr
  %gml3390 = load i64, ptr %gmp3389, align 1, !alias.scope !4, !noalias !3
  %wp3391 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3390, ptr %wp3391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269450 word 0xf94398c6
  %r3392.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3392 = load i64, ptr %r3392.p, align 8, !alias.scope !3, !noalias !4
  %t3393 = add i64 %r3392, 1840
  %gmp3394 = inttoptr i64 %t3393 to ptr
  %gml3395 = load i64, ptr %gmp3394, align 1, !alias.scope !4, !noalias !3
  %wp3396 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3395, ptr %wp3396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269454 word 0xb94003e4
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %gmp3398 = inttoptr i64 %r3397 to ptr
  %gml3399 = load i32, ptr %gmp3398, align 1, !alias.scope !4, !noalias !3
  %c3400 = zext i32 %gml3399 to i64
  %wp3401 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3400, ptr %wp3401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269458 word 0x34ffb860
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %c3403 = trunc i64 %r3402 to i32
  %cmp3404 = icmp eq i32 %c3403, 0
  br i1 %cmp3404, label %L_800268b64, label %L_80026945c_ft
L_8002694bc:
  ; @pc 0x8002694bc word 0xd001b7a0
  %wp3481 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694c0 word 0xaa0503f8
  %r3482.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3482 = load i64, ptr %r3482.p, align 8, !alias.scope !3, !noalias !4
  %t3483 = or i64 0, %r3482
  %wp3484 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3483, ptr %wp3484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694c4 word 0xf9454400
  %r3485.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3485 = load i64, ptr %r3485.p, align 8, !alias.scope !3, !noalias !4
  %t3486 = add i64 %r3485, 2696
  %gmp3487 = inttoptr i64 %t3486 to ptr
  %gml3488 = load i64, ptr %gmp3487, align 1, !alias.scope !4, !noalias !3
  %wp3489 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3488, ptr %wp3489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694c8 word 0xb90003e4
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %c3492 = trunc i64 %r3491 to i32
  %gmp3493 = inttoptr i64 %r3490 to ptr
  store i32 %c3492, ptr %gmp3493, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002694cc word 0x2a0703f4
  %r3494.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3494 = load i64, ptr %r3494.p, align 8, !alias.scope !3, !noalias !4
  %c3495 = trunc i64 %r3494 to i32
  %t3496 = or i32 0, %c3495
  %c3497 = zext i32 %t3496 to i64
  %wp3498 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3497, ptr %wp3498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694d0 word 0xaa0903f9
  %r3499.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3499 = load i64, ptr %r3499.p, align 8, !alias.scope !3, !noalias !4
  %t3500 = or i64 0, %r3499
  %wp3501 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3500, ptr %wp3501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694d4 word 0x94a4e933
  %wp3502 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266840, ptr %wp3502, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8002694d8 word 0xf001b86e
  %wp3503 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694dc word 0xf001b86d
  %wp3504 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694e0 word 0xf941b5ce
  %r3505.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3505 = load i64, ptr %r3505.p, align 8, !alias.scope !3, !noalias !4
  %t3506 = add i64 %r3505, 872
  %gmp3507 = inttoptr i64 %t3506 to ptr
  %gml3508 = load i64, ptr %gmp3507, align 1, !alias.scope !4, !noalias !3
  %wp3509 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3508, ptr %wp3509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694e4 word 0xb001b72c
  %wp3510 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694e8 word 0xb001b726
  %wp3511 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694ec word 0xf941bdad
  %r3512.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3512 = load i64, ptr %r3512.p, align 8, !alias.scope !3, !noalias !4
  %t3513 = add i64 %r3512, 888
  %gmp3514 = inttoptr i64 %t3513 to ptr
  %gml3515 = load i64, ptr %gmp3514, align 1, !alias.scope !4, !noalias !3
  %wp3516 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3515, ptr %wp3516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694f0 word 0xf943018c
  %r3517.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3517 = load i64, ptr %r3517.p, align 8, !alias.scope !3, !noalias !4
  %t3518 = add i64 %r3517, 1536
  %gmp3519 = inttoptr i64 %t3518 to ptr
  %gml3520 = load i64, ptr %gmp3519, align 1, !alias.scope !4, !noalias !3
  %wp3521 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3520, ptr %wp3521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694f4 word 0xaa1903e9
  %r3522.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3522 = load i64, ptr %r3522.p, align 8, !alias.scope !3, !noalias !4
  %t3523 = or i64 0, %r3522
  %wp3524 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3523, ptr %wp3524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694f8 word 0x2a1403e7
  %r3525.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3525 = load i64, ptr %r3525.p, align 8, !alias.scope !3, !noalias !4
  %c3526 = trunc i64 %r3525 to i32
  %t3527 = or i32 0, %c3526
  %c3528 = zext i32 %t3527 to i64
  %wp3529 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3528, ptr %wp3529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694fc word 0xb9400feb
  %r3530.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3530 = load i64, ptr %r3530.p, align 8, !alias.scope !3, !noalias !4
  %t3531 = add i64 %r3530, 12
  %gmp3532 = inttoptr i64 %t3531 to ptr
  %gml3533 = load i32, ptr %gmp3532, align 1, !alias.scope !4, !noalias !3
  %c3534 = zext i32 %gml3533 to i64
  %wp3535 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3534, ptr %wp3535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269500 word 0xaa1803e5
  %r3536.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3536 = load i64, ptr %r3536.p, align 8, !alias.scope !3, !noalias !4
  %t3537 = or i64 0, %r3536
  %wp3538 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3537, ptr %wp3538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269504 word 0xf9400bea
  %r3539.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3539 = load i64, ptr %r3539.p, align 8, !alias.scope !3, !noalias !4
  %t3540 = add i64 %r3539, 16
  %gmp3541 = inttoptr i64 %t3540 to ptr
  %gml3542 = load i64, ptr %gmp3541, align 1, !alias.scope !4, !noalias !3
  %wp3543 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3542, ptr %wp3543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269508 word 0xf94398c6
  %r3544.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3544 = load i64, ptr %r3544.p, align 8, !alias.scope !3, !noalias !4
  %t3545 = add i64 %r3544, 1840
  %gmp3546 = inttoptr i64 %t3545 to ptr
  %gml3547 = load i64, ptr %gmp3546, align 1, !alias.scope !4, !noalias !3
  %wp3548 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3547, ptr %wp3548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026950c word 0xb94003e4
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %gmp3550 = inttoptr i64 %r3549 to ptr
  %gml3551 = load i32, ptr %gmp3550, align 1, !alias.scope !4, !noalias !3
  %c3552 = zext i32 %gml3551 to i64
  %wp3553 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3552, ptr %wp3553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269510 word 0x34ffb480
  %r3554.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3554 = load i64, ptr %r3554.p, align 8, !alias.scope !3, !noalias !4
  %c3555 = trunc i64 %r3554 to i32
  %cmp3556 = icmp eq i32 %c3555, 0
  br i1 %cmp3556, label %L_800268ba0, label %L_800269514_ft
L_800269574:
  ; @pc 0x800269574 word 0xd001b7a0
  %wp3633 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269578 word 0xaa0503f8
  %r3634.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3634 = load i64, ptr %r3634.p, align 8, !alias.scope !3, !noalias !4
  %t3635 = or i64 0, %r3634
  %wp3636 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3635, ptr %wp3636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026957c word 0xf9454c00
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %t3638 = add i64 %r3637, 2712
  %gmp3639 = inttoptr i64 %t3638 to ptr
  %gml3640 = load i64, ptr %gmp3639, align 1, !alias.scope !4, !noalias !3
  %wp3641 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3640, ptr %wp3641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269580 word 0xb90003e4
  %r3642.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3642 = load i64, ptr %r3642.p, align 8, !alias.scope !3, !noalias !4
  %r3643.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3643 = load i64, ptr %r3643.p, align 8, !alias.scope !3, !noalias !4
  %c3644 = trunc i64 %r3643 to i32
  %gmp3645 = inttoptr i64 %r3642 to ptr
  store i32 %c3644, ptr %gmp3645, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269584 word 0x2a0703f4
  %r3646.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3646 = load i64, ptr %r3646.p, align 8, !alias.scope !3, !noalias !4
  %c3647 = trunc i64 %r3646 to i32
  %t3648 = or i32 0, %c3647
  %c3649 = zext i32 %t3648 to i64
  %wp3650 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3649, ptr %wp3650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269588 word 0xaa0903f9
  %r3651.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3651 = load i64, ptr %r3651.p, align 8, !alias.scope !3, !noalias !4
  %t3652 = or i64 0, %r3651
  %wp3653 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3652, ptr %wp3653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026958c word 0x94a4e905
  %wp3654 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267024, ptr %wp3654, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269590 word 0xf001b86e
  %wp3655 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269594 word 0xf001b86d
  %wp3656 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269598 word 0xf941b5ce
  %r3657.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3657 = load i64, ptr %r3657.p, align 8, !alias.scope !3, !noalias !4
  %t3658 = add i64 %r3657, 872
  %gmp3659 = inttoptr i64 %t3658 to ptr
  %gml3660 = load i64, ptr %gmp3659, align 1, !alias.scope !4, !noalias !3
  %wp3661 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3660, ptr %wp3661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026959c word 0xb001b72c
  %wp3662 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695a0 word 0xb001b726
  %wp3663 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695a4 word 0xf941bdad
  %r3664.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3664 = load i64, ptr %r3664.p, align 8, !alias.scope !3, !noalias !4
  %t3665 = add i64 %r3664, 888
  %gmp3666 = inttoptr i64 %t3665 to ptr
  %gml3667 = load i64, ptr %gmp3666, align 1, !alias.scope !4, !noalias !3
  %wp3668 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3667, ptr %wp3668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695a8 word 0xf943018c
  %r3669.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3669 = load i64, ptr %r3669.p, align 8, !alias.scope !3, !noalias !4
  %t3670 = add i64 %r3669, 1536
  %gmp3671 = inttoptr i64 %t3670 to ptr
  %gml3672 = load i64, ptr %gmp3671, align 1, !alias.scope !4, !noalias !3
  %wp3673 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3672, ptr %wp3673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695ac word 0xaa1903e9
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %t3675 = or i64 0, %r3674
  %wp3676 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3675, ptr %wp3676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695b0 word 0x2a1403e7
  %r3677.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3677 = load i64, ptr %r3677.p, align 8, !alias.scope !3, !noalias !4
  %c3678 = trunc i64 %r3677 to i32
  %t3679 = or i32 0, %c3678
  %c3680 = zext i32 %t3679 to i64
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3680, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695b4 word 0xb9400feb
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %t3683 = add i64 %r3682, 12
  %gmp3684 = inttoptr i64 %t3683 to ptr
  %gml3685 = load i32, ptr %gmp3684, align 1, !alias.scope !4, !noalias !3
  %c3686 = zext i32 %gml3685 to i64
  %wp3687 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3686, ptr %wp3687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695b8 word 0xaa1803e5
  %r3688.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3688 = load i64, ptr %r3688.p, align 8, !alias.scope !3, !noalias !4
  %t3689 = or i64 0, %r3688
  %wp3690 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3689, ptr %wp3690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695bc word 0xf9400bea
  %r3691.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3691 = load i64, ptr %r3691.p, align 8, !alias.scope !3, !noalias !4
  %t3692 = add i64 %r3691, 16
  %gmp3693 = inttoptr i64 %t3692 to ptr
  %gml3694 = load i64, ptr %gmp3693, align 1, !alias.scope !4, !noalias !3
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3694, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695c0 word 0xf94398c6
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %t3697 = add i64 %r3696, 1840
  %gmp3698 = inttoptr i64 %t3697 to ptr
  %gml3699 = load i64, ptr %gmp3698, align 1, !alias.scope !4, !noalias !3
  %wp3700 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3699, ptr %wp3700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695c4 word 0xb94003e4
  %r3701.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3701 = load i64, ptr %r3701.p, align 8, !alias.scope !3, !noalias !4
  %gmp3702 = inttoptr i64 %r3701 to ptr
  %gml3703 = load i32, ptr %gmp3702, align 1, !alias.scope !4, !noalias !3
  %c3704 = zext i32 %gml3703 to i64
  %wp3705 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3704, ptr %wp3705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695c8 word 0x34ffb0a0
  %r3706.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3706 = load i64, ptr %r3706.p, align 8, !alias.scope !3, !noalias !4
  %c3707 = trunc i64 %r3706 to i32
  %cmp3708 = icmp eq i32 %c3707, 0
  br i1 %cmp3708, label %L_800268bdc, label %L_8002695cc_ft
L_80026962c:
  ; @pc 0x80026962c word 0xf001b860
  %wp3785 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp3785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269630 word 0xaa0503f8
  %r3786.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3786 = load i64, ptr %r3786.p, align 8, !alias.scope !3, !noalias !4
  %t3787 = or i64 0, %r3786
  %wp3788 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3787, ptr %wp3788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269634 word 0xf941bc00
  %r3789.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3789 = load i64, ptr %r3789.p, align 8, !alias.scope !3, !noalias !4
  %t3790 = add i64 %r3789, 888
  %gmp3791 = inttoptr i64 %t3790 to ptr
  %gml3792 = load i64, ptr %gmp3791, align 1, !alias.scope !4, !noalias !3
  %wp3793 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3792, ptr %wp3793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269638 word 0xb90003e4
  %r3794.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3794 = load i64, ptr %r3794.p, align 8, !alias.scope !3, !noalias !4
  %r3795.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3795 = load i64, ptr %r3795.p, align 8, !alias.scope !3, !noalias !4
  %c3796 = trunc i64 %r3795 to i32
  %gmp3797 = inttoptr i64 %r3794 to ptr
  store i32 %c3796, ptr %gmp3797, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026963c word 0xaa0603f9
  %r3798.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3798 = load i64, ptr %r3798.p, align 8, !alias.scope !3, !noalias !4
  %t3799 = or i64 0, %r3798
  %wp3800 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3799, ptr %wp3800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269640 word 0x2a0703f4
  %r3801.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3801 = load i64, ptr %r3801.p, align 8, !alias.scope !3, !noalias !4
  %c3802 = trunc i64 %r3801 to i32
  %t3803 = or i32 0, %c3802
  %c3804 = zext i32 %t3803 to i64
  %wp3805 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3804, ptr %wp3805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269644 word 0x94a4e8d7
  %wp3806 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267208, ptr %wp3806, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269648 word 0xf001b86e
  %wp3807 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026964c word 0xf001b86d
  %wp3808 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269650 word 0xf941b5ce
  %r3809.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3809 = load i64, ptr %r3809.p, align 8, !alias.scope !3, !noalias !4
  %t3810 = add i64 %r3809, 872
  %gmp3811 = inttoptr i64 %t3810 to ptr
  %gml3812 = load i64, ptr %gmp3811, align 1, !alias.scope !4, !noalias !3
  %wp3813 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3812, ptr %wp3813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269654 word 0xb001b72c
  %wp3814 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269658 word 0xb001b729
  %wp3815 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026965c word 0xf941bdad
  %r3816.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3816 = load i64, ptr %r3816.p, align 8, !alias.scope !3, !noalias !4
  %t3817 = add i64 %r3816, 888
  %gmp3818 = inttoptr i64 %t3817 to ptr
  %gml3819 = load i64, ptr %gmp3818, align 1, !alias.scope !4, !noalias !3
  %wp3820 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3819, ptr %wp3820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269660 word 0xf943018c
  %r3821.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3821 = load i64, ptr %r3821.p, align 8, !alias.scope !3, !noalias !4
  %t3822 = add i64 %r3821, 1536
  %gmp3823 = inttoptr i64 %t3822 to ptr
  %gml3824 = load i64, ptr %gmp3823, align 1, !alias.scope !4, !noalias !3
  %wp3825 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3824, ptr %wp3825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269664 word 0x2a1403e7
  %r3826.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3826 = load i64, ptr %r3826.p, align 8, !alias.scope !3, !noalias !4
  %c3827 = trunc i64 %r3826 to i32
  %t3828 = or i32 0, %c3827
  %c3829 = zext i32 %t3828 to i64
  %wp3830 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3829, ptr %wp3830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269668 word 0xaa1903e6
  %r3831.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3831 = load i64, ptr %r3831.p, align 8, !alias.scope !3, !noalias !4
  %t3832 = or i64 0, %r3831
  %wp3833 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t3832, ptr %wp3833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026966c word 0xf9430d29
  %r3834.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3834 = load i64, ptr %r3834.p, align 8, !alias.scope !3, !noalias !4
  %t3835 = add i64 %r3834, 1560
  %gmp3836 = inttoptr i64 %t3835 to ptr
  %gml3837 = load i64, ptr %gmp3836, align 1, !alias.scope !4, !noalias !3
  %wp3838 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3837, ptr %wp3838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269670 word 0xaa1803e5
  %r3839.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3839 = load i64, ptr %r3839.p, align 8, !alias.scope !3, !noalias !4
  %t3840 = or i64 0, %r3839
  %wp3841 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3840, ptr %wp3841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269674 word 0xb9400feb
  %r3842.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3842 = load i64, ptr %r3842.p, align 8, !alias.scope !3, !noalias !4
  %t3843 = add i64 %r3842, 12
  %gmp3844 = inttoptr i64 %t3843 to ptr
  %gml3845 = load i32, ptr %gmp3844, align 1, !alias.scope !4, !noalias !3
  %c3846 = zext i32 %gml3845 to i64
  %wp3847 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3846, ptr %wp3847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269678 word 0xf9400bea
  %r3848.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3848 = load i64, ptr %r3848.p, align 8, !alias.scope !3, !noalias !4
  %t3849 = add i64 %r3848, 16
  %gmp3850 = inttoptr i64 %t3849 to ptr
  %gml3851 = load i64, ptr %gmp3850, align 1, !alias.scope !4, !noalias !3
  %wp3852 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3851, ptr %wp3852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026967c word 0xb94003e4
  %r3853.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3853 = load i64, ptr %r3853.p, align 8, !alias.scope !3, !noalias !4
  %gmp3854 = inttoptr i64 %r3853 to ptr
  %gml3855 = load i32, ptr %gmp3854, align 1, !alias.scope !4, !noalias !3
  %c3856 = zext i32 %gml3855 to i64
  %wp3857 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3856, ptr %wp3857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269680 word 0x34ffa440
  %r3858.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3858 = load i64, ptr %r3858.p, align 8, !alias.scope !3, !noalias !4
  %c3859 = trunc i64 %r3858 to i32
  %cmp3860 = icmp eq i32 %c3859, 0
  br i1 %cmp3860, label %L_800268b08, label %L_800269684_ft
L_8002696e4:
  ; @pc 0x8002696e4 word 0xb001b720
  %wp3937 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp3937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696e8 word 0xaa0503f8
  %r3938.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3938 = load i64, ptr %r3938.p, align 8, !alias.scope !3, !noalias !4
  %t3939 = or i64 0, %r3938
  %wp3940 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3939, ptr %wp3940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696ec word 0xf9430000
  %r3941.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3941 = load i64, ptr %r3941.p, align 8, !alias.scope !3, !noalias !4
  %t3942 = add i64 %r3941, 1536
  %gmp3943 = inttoptr i64 %t3942 to ptr
  %gml3944 = load i64, ptr %gmp3943, align 1, !alias.scope !4, !noalias !3
  %wp3945 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3944, ptr %wp3945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696f0 word 0xb90003e4
  %r3946.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3946 = load i64, ptr %r3946.p, align 8, !alias.scope !3, !noalias !4
  %r3947.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3947 = load i64, ptr %r3947.p, align 8, !alias.scope !3, !noalias !4
  %c3948 = trunc i64 %r3947 to i32
  %gmp3949 = inttoptr i64 %r3946 to ptr
  store i32 %c3948, ptr %gmp3949, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002696f4 word 0xaa0603f9
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3950 = load i64, ptr %r3950.p, align 8, !alias.scope !3, !noalias !4
  %t3951 = or i64 0, %r3950
  %wp3952 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3951, ptr %wp3952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696f8 word 0x2a0703f4
  %r3953.p = getelementptr inbounds i8, ptr %c, i64 56
  %r3953 = load i64, ptr %r3953.p, align 8, !alias.scope !3, !noalias !4
  %c3954 = trunc i64 %r3953 to i32
  %t3955 = or i32 0, %c3954
  %c3956 = zext i32 %t3955 to i64
  %wp3957 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3956, ptr %wp3957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696fc word 0x94a4e8a9
  %wp3958 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267392, ptr %wp3958, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269700 word 0xf001b86e
  %wp3959 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269704 word 0xf001b86d
  %wp3960 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269708 word 0xf941b5ce
  %r3961.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3961 = load i64, ptr %r3961.p, align 8, !alias.scope !3, !noalias !4
  %t3962 = add i64 %r3961, 872
  %gmp3963 = inttoptr i64 %t3962 to ptr
  %gml3964 = load i64, ptr %gmp3963, align 1, !alias.scope !4, !noalias !3
  %wp3965 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3964, ptr %wp3965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026970c word 0xb001b72c
  %wp3966 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269710 word 0xb001b729
  %wp3967 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269714 word 0xf941bdad
  %r3968.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3968 = load i64, ptr %r3968.p, align 8, !alias.scope !3, !noalias !4
  %t3969 = add i64 %r3968, 888
  %gmp3970 = inttoptr i64 %t3969 to ptr
  %gml3971 = load i64, ptr %gmp3970, align 1, !alias.scope !4, !noalias !3
  %wp3972 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3971, ptr %wp3972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269718 word 0xf943018c
  %r3973.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3973 = load i64, ptr %r3973.p, align 8, !alias.scope !3, !noalias !4
  %t3974 = add i64 %r3973, 1536
  %gmp3975 = inttoptr i64 %t3974 to ptr
  %gml3976 = load i64, ptr %gmp3975, align 1, !alias.scope !4, !noalias !3
  %wp3977 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3976, ptr %wp3977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026971c word 0x2a1403e7
  %r3978.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3978 = load i64, ptr %r3978.p, align 8, !alias.scope !3, !noalias !4
  %c3979 = trunc i64 %r3978 to i32
  %t3980 = or i32 0, %c3979
  %c3981 = zext i32 %t3980 to i64
  %wp3982 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3981, ptr %wp3982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269720 word 0xaa1903e6
  %r3983.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3983 = load i64, ptr %r3983.p, align 8, !alias.scope !3, !noalias !4
  %t3984 = or i64 0, %r3983
  %wp3985 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t3984, ptr %wp3985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269724 word 0xf9430d29
  %r3986.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3986 = load i64, ptr %r3986.p, align 8, !alias.scope !3, !noalias !4
  %t3987 = add i64 %r3986, 1560
  %gmp3988 = inttoptr i64 %t3987 to ptr
  %gml3989 = load i64, ptr %gmp3988, align 1, !alias.scope !4, !noalias !3
  %wp3990 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3989, ptr %wp3990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269728 word 0xaa1803e5
  %r3991.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3991 = load i64, ptr %r3991.p, align 8, !alias.scope !3, !noalias !4
  %t3992 = or i64 0, %r3991
  %wp3993 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3992, ptr %wp3993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026972c word 0xb9400feb
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %t3995 = add i64 %r3994, 12
  %gmp3996 = inttoptr i64 %t3995 to ptr
  %gml3997 = load i32, ptr %gmp3996, align 1, !alias.scope !4, !noalias !3
  %c3998 = zext i32 %gml3997 to i64
  %wp3999 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3998, ptr %wp3999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269730 word 0xf9400bea
  %r4000.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4000 = load i64, ptr %r4000.p, align 8, !alias.scope !3, !noalias !4
  %t4001 = add i64 %r4000, 16
  %gmp4002 = inttoptr i64 %t4001 to ptr
  %gml4003 = load i64, ptr %gmp4002, align 1, !alias.scope !4, !noalias !3
  %wp4004 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4003, ptr %wp4004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269734 word 0xb94003e4
  %r4005.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4005 = load i64, ptr %r4005.p, align 8, !alias.scope !3, !noalias !4
  %gmp4006 = inttoptr i64 %r4005 to ptr
  %gml4007 = load i32, ptr %gmp4006, align 1, !alias.scope !4, !noalias !3
  %c4008 = zext i32 %gml4007 to i64
  %wp4009 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4008, ptr %wp4009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269738 word 0x34ff9ec0
  %r4010.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4010 = load i64, ptr %r4010.p, align 8, !alias.scope !3, !noalias !4
  %c4011 = trunc i64 %r4010 to i32
  %cmp4012 = icmp eq i32 %c4011, 0
  br i1 %cmp4012, label %L_800268b10, label %L_80026973c_ft
L_80026979c:
  ; @pc 0x80026979c word 0xb001b720
  %wp4089 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697a0 word 0xaa0503f8
  %r4090.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4090 = load i64, ptr %r4090.p, align 8, !alias.scope !3, !noalias !4
  %t4091 = or i64 0, %r4090
  %wp4092 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4091, ptr %wp4092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697a4 word 0xf9430c00
  %r4093.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4093 = load i64, ptr %r4093.p, align 8, !alias.scope !3, !noalias !4
  %t4094 = add i64 %r4093, 1560
  %gmp4095 = inttoptr i64 %t4094 to ptr
  %gml4096 = load i64, ptr %gmp4095, align 1, !alias.scope !4, !noalias !3
  %wp4097 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4096, ptr %wp4097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697a8 word 0xb90003e4
  %r4098.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4098 = load i64, ptr %r4098.p, align 8, !alias.scope !3, !noalias !4
  %r4099.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4099 = load i64, ptr %r4099.p, align 8, !alias.scope !3, !noalias !4
  %c4100 = trunc i64 %r4099 to i32
  %gmp4101 = inttoptr i64 %r4098 to ptr
  store i32 %c4100, ptr %gmp4101, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002697ac word 0xaa0603f9
  %r4102.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4102 = load i64, ptr %r4102.p, align 8, !alias.scope !3, !noalias !4
  %t4103 = or i64 0, %r4102
  %wp4104 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4103, ptr %wp4104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697b0 word 0x2a0703f4
  %r4105.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4105 = load i64, ptr %r4105.p, align 8, !alias.scope !3, !noalias !4
  %c4106 = trunc i64 %r4105 to i32
  %t4107 = or i32 0, %c4106
  %c4108 = zext i32 %t4107 to i64
  %wp4109 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4108, ptr %wp4109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697b4 word 0x94a4e87b
  %wp4110 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267576, ptr %wp4110, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8002697b8 word 0xf001b86e
  %wp4111 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697bc word 0xf001b86d
  %wp4112 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697c0 word 0xf941b5ce
  %r4113.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4113 = load i64, ptr %r4113.p, align 8, !alias.scope !3, !noalias !4
  %t4114 = add i64 %r4113, 872
  %gmp4115 = inttoptr i64 %t4114 to ptr
  %gml4116 = load i64, ptr %gmp4115, align 1, !alias.scope !4, !noalias !3
  %wp4117 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4116, ptr %wp4117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697c4 word 0xb001b72c
  %wp4118 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697c8 word 0xb001b729
  %wp4119 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697cc word 0xf941bdad
  %r4120.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4120 = load i64, ptr %r4120.p, align 8, !alias.scope !3, !noalias !4
  %t4121 = add i64 %r4120, 888
  %gmp4122 = inttoptr i64 %t4121 to ptr
  %gml4123 = load i64, ptr %gmp4122, align 1, !alias.scope !4, !noalias !3
  %wp4124 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4123, ptr %wp4124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697d0 word 0xf943018c
  %r4125.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4125 = load i64, ptr %r4125.p, align 8, !alias.scope !3, !noalias !4
  %t4126 = add i64 %r4125, 1536
  %gmp4127 = inttoptr i64 %t4126 to ptr
  %gml4128 = load i64, ptr %gmp4127, align 1, !alias.scope !4, !noalias !3
  %wp4129 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4128, ptr %wp4129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697d4 word 0x2a1403e7
  %r4130.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4130 = load i64, ptr %r4130.p, align 8, !alias.scope !3, !noalias !4
  %c4131 = trunc i64 %r4130 to i32
  %t4132 = or i32 0, %c4131
  %c4133 = zext i32 %t4132 to i64
  %wp4134 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4133, ptr %wp4134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697d8 word 0xaa1903e6
  %r4135.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4135 = load i64, ptr %r4135.p, align 8, !alias.scope !3, !noalias !4
  %t4136 = or i64 0, %r4135
  %wp4137 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4136, ptr %wp4137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697dc word 0xf9430d29
  %r4138.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4138 = load i64, ptr %r4138.p, align 8, !alias.scope !3, !noalias !4
  %t4139 = add i64 %r4138, 1560
  %gmp4140 = inttoptr i64 %t4139 to ptr
  %gml4141 = load i64, ptr %gmp4140, align 1, !alias.scope !4, !noalias !3
  %wp4142 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4141, ptr %wp4142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697e0 word 0xaa1803e5
  %r4143.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4143 = load i64, ptr %r4143.p, align 8, !alias.scope !3, !noalias !4
  %t4144 = or i64 0, %r4143
  %wp4145 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4144, ptr %wp4145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697e4 word 0xb9400feb
  %r4146.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4146 = load i64, ptr %r4146.p, align 8, !alias.scope !3, !noalias !4
  %t4147 = add i64 %r4146, 12
  %gmp4148 = inttoptr i64 %t4147 to ptr
  %gml4149 = load i32, ptr %gmp4148, align 1, !alias.scope !4, !noalias !3
  %c4150 = zext i32 %gml4149 to i64
  %wp4151 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4150, ptr %wp4151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697e8 word 0xf9400bea
  %r4152.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4152 = load i64, ptr %r4152.p, align 8, !alias.scope !3, !noalias !4
  %t4153 = add i64 %r4152, 16
  %gmp4154 = inttoptr i64 %t4153 to ptr
  %gml4155 = load i64, ptr %gmp4154, align 1, !alias.scope !4, !noalias !3
  %wp4156 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4155, ptr %wp4156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697ec word 0xb94003e4
  %r4157.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4157 = load i64, ptr %r4157.p, align 8, !alias.scope !3, !noalias !4
  %gmp4158 = inttoptr i64 %r4157 to ptr
  %gml4159 = load i32, ptr %gmp4158, align 1, !alias.scope !4, !noalias !3
  %c4160 = zext i32 %gml4159 to i64
  %wp4161 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4160, ptr %wp4161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697f0 word 0x34ff9940
  %r4162.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4162 = load i64, ptr %r4162.p, align 8, !alias.scope !3, !noalias !4
  %c4163 = trunc i64 %r4162 to i32
  %cmp4164 = icmp eq i32 %c4163, 0
  br i1 %cmp4164, label %L_800268b18, label %L_8002697f4_ft
L_800269854:
  ; @pc 0x800269854 word 0xf001b860
  %wp4241 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269858 word 0xaa0503f8
  %r4242.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4242 = load i64, ptr %r4242.p, align 8, !alias.scope !3, !noalias !4
  %t4243 = or i64 0, %r4242
  %wp4244 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4243, ptr %wp4244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026985c word 0xf941bc00
  %r4245.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4245 = load i64, ptr %r4245.p, align 8, !alias.scope !3, !noalias !4
  %t4246 = add i64 %r4245, 888
  %gmp4247 = inttoptr i64 %t4246 to ptr
  %gml4248 = load i64, ptr %gmp4247, align 1, !alias.scope !4, !noalias !3
  %wp4249 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4248, ptr %wp4249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269860 word 0xb90003e4
  %r4250.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4250 = load i64, ptr %r4250.p, align 8, !alias.scope !3, !noalias !4
  %r4251.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4251 = load i64, ptr %r4251.p, align 8, !alias.scope !3, !noalias !4
  %c4252 = trunc i64 %r4251 to i32
  %gmp4253 = inttoptr i64 %r4250 to ptr
  store i32 %c4252, ptr %gmp4253, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269864 word 0xaa0603f9
  %r4254.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4254 = load i64, ptr %r4254.p, align 8, !alias.scope !3, !noalias !4
  %t4255 = or i64 0, %r4254
  %wp4256 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4255, ptr %wp4256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269868 word 0x2a0703f4
  %r4257.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4257 = load i64, ptr %r4257.p, align 8, !alias.scope !3, !noalias !4
  %c4258 = trunc i64 %r4257 to i32
  %t4259 = or i32 0, %c4258
  %c4260 = zext i32 %t4259 to i64
  %wp4261 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4260, ptr %wp4261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026986c word 0x94a4e84d
  %wp4262 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267760, ptr %wp4262, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269870 word 0xf001b86e
  %wp4263 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269874 word 0xf001b86d
  %wp4264 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269878 word 0xf941b5ce
  %r4265.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4265 = load i64, ptr %r4265.p, align 8, !alias.scope !3, !noalias !4
  %t4266 = add i64 %r4265, 872
  %gmp4267 = inttoptr i64 %t4266 to ptr
  %gml4268 = load i64, ptr %gmp4267, align 1, !alias.scope !4, !noalias !3
  %wp4269 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4268, ptr %wp4269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026987c word 0xb001b72c
  %wp4270 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269880 word 0xb001b729
  %wp4271 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269884 word 0xf941bdad
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %t4273 = add i64 %r4272, 888
  %gmp4274 = inttoptr i64 %t4273 to ptr
  %gml4275 = load i64, ptr %gmp4274, align 1, !alias.scope !4, !noalias !3
  %wp4276 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4275, ptr %wp4276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269888 word 0xf943018c
  %r4277.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4277 = load i64, ptr %r4277.p, align 8, !alias.scope !3, !noalias !4
  %t4278 = add i64 %r4277, 1536
  %gmp4279 = inttoptr i64 %t4278 to ptr
  %gml4280 = load i64, ptr %gmp4279, align 1, !alias.scope !4, !noalias !3
  %wp4281 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4280, ptr %wp4281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026988c word 0x2a1403e7
  %r4282.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4282 = load i64, ptr %r4282.p, align 8, !alias.scope !3, !noalias !4
  %c4283 = trunc i64 %r4282 to i32
  %t4284 = or i32 0, %c4283
  %c4285 = zext i32 %t4284 to i64
  %wp4286 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4285, ptr %wp4286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269890 word 0xaa1903e6
  %r4287.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4287 = load i64, ptr %r4287.p, align 8, !alias.scope !3, !noalias !4
  %t4288 = or i64 0, %r4287
  %wp4289 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4288, ptr %wp4289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269894 word 0xf9430d29
  %r4290.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4290 = load i64, ptr %r4290.p, align 8, !alias.scope !3, !noalias !4
  %t4291 = add i64 %r4290, 1560
  %gmp4292 = inttoptr i64 %t4291 to ptr
  %gml4293 = load i64, ptr %gmp4292, align 1, !alias.scope !4, !noalias !3
  %wp4294 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4293, ptr %wp4294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269898 word 0xaa1803e5
  %r4295.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4295 = load i64, ptr %r4295.p, align 8, !alias.scope !3, !noalias !4
  %t4296 = or i64 0, %r4295
  %wp4297 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4296, ptr %wp4297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026989c word 0xb9400feb
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %t4299 = add i64 %r4298, 12
  %gmp4300 = inttoptr i64 %t4299 to ptr
  %gml4301 = load i32, ptr %gmp4300, align 1, !alias.scope !4, !noalias !3
  %c4302 = zext i32 %gml4301 to i64
  %wp4303 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4302, ptr %wp4303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698a0 word 0xf9400bea
  %r4304.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4304 = load i64, ptr %r4304.p, align 8, !alias.scope !3, !noalias !4
  %t4305 = add i64 %r4304, 16
  %gmp4306 = inttoptr i64 %t4305 to ptr
  %gml4307 = load i64, ptr %gmp4306, align 1, !alias.scope !4, !noalias !3
  %wp4308 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4307, ptr %wp4308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698a4 word 0xb94003e4
  %r4309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4309 = load i64, ptr %r4309.p, align 8, !alias.scope !3, !noalias !4
  %gmp4310 = inttoptr i64 %r4309 to ptr
  %gml4311 = load i32, ptr %gmp4310, align 1, !alias.scope !4, !noalias !3
  %c4312 = zext i32 %gml4311 to i64
  %wp4313 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4312, ptr %wp4313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698a8 word 0x34ff94e0
  %r4314.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4314 = load i64, ptr %r4314.p, align 8, !alias.scope !3, !noalias !4
  %c4315 = trunc i64 %r4314 to i32
  %cmp4316 = icmp eq i32 %c4315, 0
  br i1 %cmp4316, label %L_800268b44, label %L_8002698ac_ft
L_80026990c:
  ; @pc 0x80026990c word 0xb001b720
  %wp4393 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269910 word 0xaa0503f8
  %r4394.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4394 = load i64, ptr %r4394.p, align 8, !alias.scope !3, !noalias !4
  %t4395 = or i64 0, %r4394
  %wp4396 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4395, ptr %wp4396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269914 word 0xf9430000
  %r4397.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4397 = load i64, ptr %r4397.p, align 8, !alias.scope !3, !noalias !4
  %t4398 = add i64 %r4397, 1536
  %gmp4399 = inttoptr i64 %t4398 to ptr
  %gml4400 = load i64, ptr %gmp4399, align 1, !alias.scope !4, !noalias !3
  %wp4401 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4400, ptr %wp4401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269918 word 0xb90003e4
  %r4402.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4402 = load i64, ptr %r4402.p, align 8, !alias.scope !3, !noalias !4
  %r4403.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4403 = load i64, ptr %r4403.p, align 8, !alias.scope !3, !noalias !4
  %c4404 = trunc i64 %r4403 to i32
  %gmp4405 = inttoptr i64 %r4402 to ptr
  store i32 %c4404, ptr %gmp4405, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026991c word 0xaa0603f9
  %r4406.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4406 = load i64, ptr %r4406.p, align 8, !alias.scope !3, !noalias !4
  %t4407 = or i64 0, %r4406
  %wp4408 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4407, ptr %wp4408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269920 word 0x2a0703f4
  %r4409.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4409 = load i64, ptr %r4409.p, align 8, !alias.scope !3, !noalias !4
  %c4410 = trunc i64 %r4409 to i32
  %t4411 = or i32 0, %c4410
  %c4412 = zext i32 %t4411 to i64
  %wp4413 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4412, ptr %wp4413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269924 word 0x94a4e81f
  %wp4414 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267944, ptr %wp4414, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269928 word 0xf001b86e
  %wp4415 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026992c word 0xf001b86d
  %wp4416 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269930 word 0xf941b5ce
  %r4417.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4417 = load i64, ptr %r4417.p, align 8, !alias.scope !3, !noalias !4
  %t4418 = add i64 %r4417, 872
  %gmp4419 = inttoptr i64 %t4418 to ptr
  %gml4420 = load i64, ptr %gmp4419, align 1, !alias.scope !4, !noalias !3
  %wp4421 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4420, ptr %wp4421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269934 word 0xb001b72c
  %wp4422 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269938 word 0xb001b729
  %wp4423 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026993c word 0xf941bdad
  %r4424.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4424 = load i64, ptr %r4424.p, align 8, !alias.scope !3, !noalias !4
  %t4425 = add i64 %r4424, 888
  %gmp4426 = inttoptr i64 %t4425 to ptr
  %gml4427 = load i64, ptr %gmp4426, align 1, !alias.scope !4, !noalias !3
  %wp4428 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4427, ptr %wp4428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269940 word 0xf943018c
  %r4429.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4429 = load i64, ptr %r4429.p, align 8, !alias.scope !3, !noalias !4
  %t4430 = add i64 %r4429, 1536
  %gmp4431 = inttoptr i64 %t4430 to ptr
  %gml4432 = load i64, ptr %gmp4431, align 1, !alias.scope !4, !noalias !3
  %wp4433 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4432, ptr %wp4433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269944 word 0x2a1403e7
  %r4434.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4434 = load i64, ptr %r4434.p, align 8, !alias.scope !3, !noalias !4
  %c4435 = trunc i64 %r4434 to i32
  %t4436 = or i32 0, %c4435
  %c4437 = zext i32 %t4436 to i64
  %wp4438 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4437, ptr %wp4438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269948 word 0xaa1903e6
  %r4439.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4439 = load i64, ptr %r4439.p, align 8, !alias.scope !3, !noalias !4
  %t4440 = or i64 0, %r4439
  %wp4441 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4440, ptr %wp4441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026994c word 0xf9430d29
  %r4442.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4442 = load i64, ptr %r4442.p, align 8, !alias.scope !3, !noalias !4
  %t4443 = add i64 %r4442, 1560
  %gmp4444 = inttoptr i64 %t4443 to ptr
  %gml4445 = load i64, ptr %gmp4444, align 1, !alias.scope !4, !noalias !3
  %wp4446 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4445, ptr %wp4446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269950 word 0xaa1803e5
  %r4447.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4447 = load i64, ptr %r4447.p, align 8, !alias.scope !3, !noalias !4
  %t4448 = or i64 0, %r4447
  %wp4449 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4448, ptr %wp4449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269954 word 0xb9400feb
  %r4450.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4450 = load i64, ptr %r4450.p, align 8, !alias.scope !3, !noalias !4
  %t4451 = add i64 %r4450, 12
  %gmp4452 = inttoptr i64 %t4451 to ptr
  %gml4453 = load i32, ptr %gmp4452, align 1, !alias.scope !4, !noalias !3
  %c4454 = zext i32 %gml4453 to i64
  %wp4455 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4454, ptr %wp4455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269958 word 0xf9400bea
  %r4456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4456 = load i64, ptr %r4456.p, align 8, !alias.scope !3, !noalias !4
  %t4457 = add i64 %r4456, 16
  %gmp4458 = inttoptr i64 %t4457 to ptr
  %gml4459 = load i64, ptr %gmp4458, align 1, !alias.scope !4, !noalias !3
  %wp4460 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4459, ptr %wp4460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026995c word 0xb94003e4
  %r4461.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4461 = load i64, ptr %r4461.p, align 8, !alias.scope !3, !noalias !4
  %gmp4462 = inttoptr i64 %r4461 to ptr
  %gml4463 = load i32, ptr %gmp4462, align 1, !alias.scope !4, !noalias !3
  %c4464 = zext i32 %gml4463 to i64
  %wp4465 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4464, ptr %wp4465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269960 word 0x34ff8f60
  %r4466.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4466 = load i64, ptr %r4466.p, align 8, !alias.scope !3, !noalias !4
  %c4467 = trunc i64 %r4466 to i32
  %cmp4468 = icmp eq i32 %c4467, 0
  br i1 %cmp4468, label %L_800268b4c, label %L_800269964_ft
L_8002699c4:
  ; @pc 0x8002699c4 word 0xb001b720
  %wp4545 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699c8 word 0xaa0503f8
  %r4546.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4546 = load i64, ptr %r4546.p, align 8, !alias.scope !3, !noalias !4
  %t4547 = or i64 0, %r4546
  %wp4548 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4547, ptr %wp4548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699cc word 0xf9430c00
  %r4549.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4549 = load i64, ptr %r4549.p, align 8, !alias.scope !3, !noalias !4
  %t4550 = add i64 %r4549, 1560
  %gmp4551 = inttoptr i64 %t4550 to ptr
  %gml4552 = load i64, ptr %gmp4551, align 1, !alias.scope !4, !noalias !3
  %wp4553 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4552, ptr %wp4553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699d0 word 0xb90003e4
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %r4555.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4555 = load i64, ptr %r4555.p, align 8, !alias.scope !3, !noalias !4
  %c4556 = trunc i64 %r4555 to i32
  %gmp4557 = inttoptr i64 %r4554 to ptr
  store i32 %c4556, ptr %gmp4557, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002699d4 word 0xaa0603f9
  %r4558.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4558 = load i64, ptr %r4558.p, align 8, !alias.scope !3, !noalias !4
  %t4559 = or i64 0, %r4558
  %wp4560 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4559, ptr %wp4560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699d8 word 0x2a0703f4
  %r4561.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4561 = load i64, ptr %r4561.p, align 8, !alias.scope !3, !noalias !4
  %c4562 = trunc i64 %r4561 to i32
  %t4563 = or i32 0, %c4562
  %c4564 = zext i32 %t4563 to i64
  %wp4565 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4564, ptr %wp4565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699dc word 0x94a4e7f1
  %wp4566 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268128, ptr %wp4566, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8002699e0 word 0xf001b86e
  %wp4567 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699e4 word 0xf001b86d
  %wp4568 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699e8 word 0xf941b5ce
  %r4569.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4569 = load i64, ptr %r4569.p, align 8, !alias.scope !3, !noalias !4
  %t4570 = add i64 %r4569, 872
  %gmp4571 = inttoptr i64 %t4570 to ptr
  %gml4572 = load i64, ptr %gmp4571, align 1, !alias.scope !4, !noalias !3
  %wp4573 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4572, ptr %wp4573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699ec word 0xb001b72c
  %wp4574 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699f0 word 0xb001b729
  %wp4575 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699f4 word 0xf941bdad
  %r4576.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4576 = load i64, ptr %r4576.p, align 8, !alias.scope !3, !noalias !4
  %t4577 = add i64 %r4576, 888
  %gmp4578 = inttoptr i64 %t4577 to ptr
  %gml4579 = load i64, ptr %gmp4578, align 1, !alias.scope !4, !noalias !3
  %wp4580 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4579, ptr %wp4580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699f8 word 0xf943018c
  %r4581.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4581 = load i64, ptr %r4581.p, align 8, !alias.scope !3, !noalias !4
  %t4582 = add i64 %r4581, 1536
  %gmp4583 = inttoptr i64 %t4582 to ptr
  %gml4584 = load i64, ptr %gmp4583, align 1, !alias.scope !4, !noalias !3
  %wp4585 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4584, ptr %wp4585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699fc word 0x2a1403e7
  %r4586.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4586 = load i64, ptr %r4586.p, align 8, !alias.scope !3, !noalias !4
  %c4587 = trunc i64 %r4586 to i32
  %t4588 = or i32 0, %c4587
  %c4589 = zext i32 %t4588 to i64
  %wp4590 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4589, ptr %wp4590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a00 word 0xaa1903e6
  %r4591.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4591 = load i64, ptr %r4591.p, align 8, !alias.scope !3, !noalias !4
  %t4592 = or i64 0, %r4591
  %wp4593 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4592, ptr %wp4593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a04 word 0xf9430d29
  %r4594.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4594 = load i64, ptr %r4594.p, align 8, !alias.scope !3, !noalias !4
  %t4595 = add i64 %r4594, 1560
  %gmp4596 = inttoptr i64 %t4595 to ptr
  %gml4597 = load i64, ptr %gmp4596, align 1, !alias.scope !4, !noalias !3
  %wp4598 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4597, ptr %wp4598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a08 word 0xaa1803e5
  %r4599.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4599 = load i64, ptr %r4599.p, align 8, !alias.scope !3, !noalias !4
  %t4600 = or i64 0, %r4599
  %wp4601 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4600, ptr %wp4601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a0c word 0xb9400feb
  %r4602.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4602 = load i64, ptr %r4602.p, align 8, !alias.scope !3, !noalias !4
  %t4603 = add i64 %r4602, 12
  %gmp4604 = inttoptr i64 %t4603 to ptr
  %gml4605 = load i32, ptr %gmp4604, align 1, !alias.scope !4, !noalias !3
  %c4606 = zext i32 %gml4605 to i64
  %wp4607 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4606, ptr %wp4607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a10 word 0xf9400bea
  %r4608.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4608 = load i64, ptr %r4608.p, align 8, !alias.scope !3, !noalias !4
  %t4609 = add i64 %r4608, 16
  %gmp4610 = inttoptr i64 %t4609 to ptr
  %gml4611 = load i64, ptr %gmp4610, align 1, !alias.scope !4, !noalias !3
  %wp4612 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4611, ptr %wp4612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a14 word 0xb94003e4
  %r4613.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4613 = load i64, ptr %r4613.p, align 8, !alias.scope !3, !noalias !4
  %gmp4614 = inttoptr i64 %r4613 to ptr
  %gml4615 = load i32, ptr %gmp4614, align 1, !alias.scope !4, !noalias !3
  %c4616 = zext i32 %gml4615 to i64
  %wp4617 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4616, ptr %wp4617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a18 word 0x34ff89e0
  %r4618.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4618 = load i64, ptr %r4618.p, align 8, !alias.scope !3, !noalias !4
  %c4619 = trunc i64 %r4618 to i32
  %cmp4620 = icmp eq i32 %c4619, 0
  br i1 %cmp4620, label %L_800268b54, label %L_800269a1c_ft
L_800269a7c:
  ; @pc 0x800269a7c word 0xf001b860
  %wp4697 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a80 word 0x2a0403f7
  %r4698.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4698 = load i64, ptr %r4698.p, align 8, !alias.scope !3, !noalias !4
  %c4699 = trunc i64 %r4698 to i32
  %t4700 = or i32 0, %c4699
  %c4701 = zext i32 %t4700 to i64
  %wp4702 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4701, ptr %wp4702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a84 word 0xf941bc00
  %r4703.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4703 = load i64, ptr %r4703.p, align 8, !alias.scope !3, !noalias !4
  %t4704 = add i64 %r4703, 888
  %gmp4705 = inttoptr i64 %t4704 to ptr
  %gml4706 = load i64, ptr %gmp4705, align 1, !alias.scope !4, !noalias !3
  %wp4707 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4706, ptr %wp4707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a88 word 0xaa0503f8
  %r4708.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4708 = load i64, ptr %r4708.p, align 8, !alias.scope !3, !noalias !4
  %t4709 = or i64 0, %r4708
  %wp4710 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4709, ptr %wp4710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a8c word 0xaa0603f9
  %r4711.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4711 = load i64, ptr %r4711.p, align 8, !alias.scope !3, !noalias !4
  %t4712 = or i64 0, %r4711
  %wp4713 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4712, ptr %wp4713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a90 word 0x2a0703f4
  %r4714.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4714 = load i64, ptr %r4714.p, align 8, !alias.scope !3, !noalias !4
  %c4715 = trunc i64 %r4714 to i32
  %t4716 = or i32 0, %c4715
  %c4717 = zext i32 %t4716 to i64
  %wp4718 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4717, ptr %wp4718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a94 word 0x94a4e7c3
  %wp4719 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268312, ptr %wp4719, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269a98 word 0xb001b72c
  %wp4720 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a9c word 0xb001b729
  %wp4721 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269aa0 word 0xf943018c
  %r4722.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4722 = load i64, ptr %r4722.p, align 8, !alias.scope !3, !noalias !4
  %t4723 = add i64 %r4722, 1536
  %gmp4724 = inttoptr i64 %t4723 to ptr
  %gml4725 = load i64, ptr %gmp4724, align 1, !alias.scope !4, !noalias !3
  %wp4726 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4725, ptr %wp4726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269aa4 word 0xf9430d29
  %r4727.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4727 = load i64, ptr %r4727.p, align 8, !alias.scope !3, !noalias !4
  %t4728 = add i64 %r4727, 1560
  %gmp4729 = inttoptr i64 %t4728 to ptr
  %gml4730 = load i64, ptr %gmp4729, align 1, !alias.scope !4, !noalias !3
  %wp4731 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4730, ptr %wp4731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269aa8 word 0x2a1403e7
  %r4732.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4732 = load i64, ptr %r4732.p, align 8, !alias.scope !3, !noalias !4
  %c4733 = trunc i64 %r4732 to i32
  %t4734 = or i32 0, %c4733
  %c4735 = zext i32 %t4734 to i64
  %wp4736 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4735, ptr %wp4736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269aac word 0xaa1903e6
  %r4737.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4737 = load i64, ptr %r4737.p, align 8, !alias.scope !3, !noalias !4
  %t4738 = or i64 0, %r4737
  %wp4739 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4738, ptr %wp4739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ab0 word 0xb9400feb
  %r4740.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4740 = load i64, ptr %r4740.p, align 8, !alias.scope !3, !noalias !4
  %t4741 = add i64 %r4740, 12
  %gmp4742 = inttoptr i64 %t4741 to ptr
  %gml4743 = load i32, ptr %gmp4742, align 1, !alias.scope !4, !noalias !3
  %c4744 = zext i32 %gml4743 to i64
  %wp4745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4744, ptr %wp4745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ab4 word 0xaa1803e5
  %r4746.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4746 = load i64, ptr %r4746.p, align 8, !alias.scope !3, !noalias !4
  %t4747 = or i64 0, %r4746
  %wp4748 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4747, ptr %wp4748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ab8 word 0x2a1703e4
  %r4749.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4749 = load i64, ptr %r4749.p, align 8, !alias.scope !3, !noalias !4
  %c4750 = trunc i64 %r4749 to i32
  %t4751 = or i32 0, %c4750
  %c4752 = zext i32 %t4751 to i64
  %wp4753 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4752, ptr %wp4753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269abc word 0xf9400bea
  %r4754.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4754 = load i64, ptr %r4754.p, align 8, !alias.scope !3, !noalias !4
  %t4755 = add i64 %r4754, 16
  %gmp4756 = inttoptr i64 %t4755 to ptr
  %gml4757 = load i64, ptr %gmp4756, align 1, !alias.scope !4, !noalias !3
  %wp4758 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4757, ptr %wp4758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ac0 word 0x34ff89c0
  %r4759.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4759 = load i64, ptr %r4759.p, align 8, !alias.scope !3, !noalias !4
  %c4760 = trunc i64 %r4759 to i32
  %cmp4761 = icmp eq i32 %c4760, 0
  br i1 %cmp4761, label %L_800268bf8, label %L_800269ac4_ft
L_800269b14:
  ; @pc 0x800269b14 word 0xb001b720
  %wp4826 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b18 word 0x2a0403f7
  %r4827.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4827 = load i64, ptr %r4827.p, align 8, !alias.scope !3, !noalias !4
  %c4828 = trunc i64 %r4827 to i32
  %t4829 = or i32 0, %c4828
  %c4830 = zext i32 %t4829 to i64
  %wp4831 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4830, ptr %wp4831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b1c word 0xf9430000
  %r4832.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4832 = load i64, ptr %r4832.p, align 8, !alias.scope !3, !noalias !4
  %t4833 = add i64 %r4832, 1536
  %gmp4834 = inttoptr i64 %t4833 to ptr
  %gml4835 = load i64, ptr %gmp4834, align 1, !alias.scope !4, !noalias !3
  %wp4836 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4835, ptr %wp4836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b20 word 0xaa0503f8
  %r4837.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4837 = load i64, ptr %r4837.p, align 8, !alias.scope !3, !noalias !4
  %t4838 = or i64 0, %r4837
  %wp4839 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4838, ptr %wp4839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b24 word 0xaa0603f9
  %r4840.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4840 = load i64, ptr %r4840.p, align 8, !alias.scope !3, !noalias !4
  %t4841 = or i64 0, %r4840
  %wp4842 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4841, ptr %wp4842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b28 word 0x2a0703f4
  %r4843.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4843 = load i64, ptr %r4843.p, align 8, !alias.scope !3, !noalias !4
  %c4844 = trunc i64 %r4843 to i32
  %t4845 = or i32 0, %c4844
  %c4846 = zext i32 %t4845 to i64
  %wp4847 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4846, ptr %wp4847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b2c word 0x94a4e79d
  %wp4848 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268464, ptr %wp4848, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269b30 word 0xb001b729
  %wp4849 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b34 word 0x2a1403e7
  %r4850.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4850 = load i64, ptr %r4850.p, align 8, !alias.scope !3, !noalias !4
  %c4851 = trunc i64 %r4850 to i32
  %t4852 = or i32 0, %c4851
  %c4853 = zext i32 %t4852 to i64
  %wp4854 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4853, ptr %wp4854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b38 word 0xf9430d29
  %r4855.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4855 = load i64, ptr %r4855.p, align 8, !alias.scope !3, !noalias !4
  %t4856 = add i64 %r4855, 1560
  %gmp4857 = inttoptr i64 %t4856 to ptr
  %gml4858 = load i64, ptr %gmp4857, align 1, !alias.scope !4, !noalias !3
  %wp4859 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4858, ptr %wp4859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b3c word 0xb9400feb
  %r4860.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4860 = load i64, ptr %r4860.p, align 8, !alias.scope !3, !noalias !4
  %t4861 = add i64 %r4860, 12
  %gmp4862 = inttoptr i64 %t4861 to ptr
  %gml4863 = load i32, ptr %gmp4862, align 1, !alias.scope !4, !noalias !3
  %c4864 = zext i32 %gml4863 to i64
  %wp4865 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4864, ptr %wp4865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b40 word 0xaa1903e6
  %r4866.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4866 = load i64, ptr %r4866.p, align 8, !alias.scope !3, !noalias !4
  %t4867 = or i64 0, %r4866
  %wp4868 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4867, ptr %wp4868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b44 word 0xaa1803e5
  %r4869.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4869 = load i64, ptr %r4869.p, align 8, !alias.scope !3, !noalias !4
  %t4870 = or i64 0, %r4869
  %wp4871 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4870, ptr %wp4871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b48 word 0xf9400bea
  %r4872.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4872 = load i64, ptr %r4872.p, align 8, !alias.scope !3, !noalias !4
  %t4873 = add i64 %r4872, 16
  %gmp4874 = inttoptr i64 %t4873 to ptr
  %gml4875 = load i64, ptr %gmp4874, align 1, !alias.scope !4, !noalias !3
  %wp4876 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4875, ptr %wp4876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b4c word 0x2a1703e4
  %r4877.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4877 = load i64, ptr %r4877.p, align 8, !alias.scope !3, !noalias !4
  %c4878 = trunc i64 %r4877 to i32
  %t4879 = or i32 0, %c4878
  %c4880 = zext i32 %t4879 to i64
  %wp4881 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4880, ptr %wp4881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b50 word 0x34ff8580
  %r4882.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4882 = load i64, ptr %r4882.p, align 8, !alias.scope !3, !noalias !4
  %c4883 = trunc i64 %r4882 to i32
  %cmp4884 = icmp eq i32 %c4883, 0
  br i1 %cmp4884, label %L_800268c00, label %L_800269b54_ft
L_800269b9c:
  ; @pc 0x800269b9c word 0xb001b720
  %wp4943 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ba0 word 0x2a0403f7
  %r4944.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4944 = load i64, ptr %r4944.p, align 8, !alias.scope !3, !noalias !4
  %c4945 = trunc i64 %r4944 to i32
  %t4946 = or i32 0, %c4945
  %c4947 = zext i32 %t4946 to i64
  %wp4948 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4947, ptr %wp4948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ba4 word 0xf9430c00
  %r4949.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4949 = load i64, ptr %r4949.p, align 8, !alias.scope !3, !noalias !4
  %t4950 = add i64 %r4949, 1560
  %gmp4951 = inttoptr i64 %t4950 to ptr
  %gml4952 = load i64, ptr %gmp4951, align 1, !alias.scope !4, !noalias !3
  %wp4953 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4952, ptr %wp4953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ba8 word 0xaa0503f8
  %r4954.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4954 = load i64, ptr %r4954.p, align 8, !alias.scope !3, !noalias !4
  %t4955 = or i64 0, %r4954
  %wp4956 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4955, ptr %wp4956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bac word 0xaa0603f9
  %r4957.p = getelementptr inbounds i8, ptr %c, i64 48
  %r4957 = load i64, ptr %r4957.p, align 8, !alias.scope !3, !noalias !4
  %t4958 = or i64 0, %r4957
  %wp4959 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4958, ptr %wp4959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bb0 word 0x2a0703f4
  %r4960.p = getelementptr inbounds i8, ptr %c, i64 56
  %r4960 = load i64, ptr %r4960.p, align 8, !alias.scope !3, !noalias !4
  %c4961 = trunc i64 %r4960 to i32
  %t4962 = or i32 0, %c4961
  %c4963 = zext i32 %t4962 to i64
  %wp4964 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4963, ptr %wp4964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bb4 word 0x94a4e77b
  %wp4965 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268600, ptr %wp4965, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269bb8 word 0xb9400feb
  %r4966.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4966 = load i64, ptr %r4966.p, align 8, !alias.scope !3, !noalias !4
  %t4967 = add i64 %r4966, 12
  %gmp4968 = inttoptr i64 %t4967 to ptr
  %gml4969 = load i32, ptr %gmp4968, align 1, !alias.scope !4, !noalias !3
  %c4970 = zext i32 %gml4969 to i64
  %wp4971 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4970, ptr %wp4971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bbc word 0x2a1403e7
  %r4972.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4972 = load i64, ptr %r4972.p, align 8, !alias.scope !3, !noalias !4
  %c4973 = trunc i64 %r4972 to i32
  %t4974 = or i32 0, %c4973
  %c4975 = zext i32 %t4974 to i64
  %wp4976 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4975, ptr %wp4976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bc0 word 0xaa1903e6
  %r4977.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4977 = load i64, ptr %r4977.p, align 8, !alias.scope !3, !noalias !4
  %t4978 = or i64 0, %r4977
  %wp4979 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4978, ptr %wp4979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bc4 word 0xf9400bea
  %r4980.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4980 = load i64, ptr %r4980.p, align 8, !alias.scope !3, !noalias !4
  %t4981 = add i64 %r4980, 16
  %gmp4982 = inttoptr i64 %t4981 to ptr
  %gml4983 = load i64, ptr %gmp4982, align 1, !alias.scope !4, !noalias !3
  %wp4984 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4983, ptr %wp4984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bc8 word 0xaa1803e5
  %r4985.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4985 = load i64, ptr %r4985.p, align 8, !alias.scope !3, !noalias !4
  %t4986 = or i64 0, %r4985
  %wp4987 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4986, ptr %wp4987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bcc word 0x2a1703e4
  %r4988.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4988 = load i64, ptr %r4988.p, align 8, !alias.scope !3, !noalias !4
  %c4989 = trunc i64 %r4988 to i32
  %t4990 = or i32 0, %c4989
  %c4991 = zext i32 %t4990 to i64
  %wp4992 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4991, ptr %wp4992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bd0 word 0x34ff81c0
  %r4993.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4993 = load i64, ptr %r4993.p, align 8, !alias.scope !3, !noalias !4
  %c4994 = trunc i64 %r4993 to i32
  %cmp4995 = icmp eq i32 %c4994, 0
  br i1 %cmp4995, label %L_800268c08, label %L_800269bd4_ft
L_800269c14:
  ; @pc 0x800269c14 word 0xf001b860
  %wp5048 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c18 word 0xaa0503f8
  %r5049.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5049 = load i64, ptr %r5049.p, align 8, !alias.scope !3, !noalias !4
  %t5050 = or i64 0, %r5049
  %wp5051 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5050, ptr %wp5051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c1c word 0xf941bc00
  %r5052.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5052 = load i64, ptr %r5052.p, align 8, !alias.scope !3, !noalias !4
  %t5053 = add i64 %r5052, 888
  %gmp5054 = inttoptr i64 %t5053 to ptr
  %gml5055 = load i64, ptr %gmp5054, align 1, !alias.scope !4, !noalias !3
  %wp5056 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5055, ptr %wp5056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c20 word 0xb90003e4
  %r5057.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5057 = load i64, ptr %r5057.p, align 8, !alias.scope !3, !noalias !4
  %r5058.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5058 = load i64, ptr %r5058.p, align 8, !alias.scope !3, !noalias !4
  %c5059 = trunc i64 %r5058 to i32
  %gmp5060 = inttoptr i64 %r5057 to ptr
  store i32 %c5059, ptr %gmp5060, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269c24 word 0xaa0603f9
  %r5061.p = getelementptr inbounds i8, ptr %c, i64 48
  %r5061 = load i64, ptr %r5061.p, align 8, !alias.scope !3, !noalias !4
  %t5062 = or i64 0, %r5061
  %wp5063 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5062, ptr %wp5063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c28 word 0x2a0703f4
  %r5064.p = getelementptr inbounds i8, ptr %c, i64 56
  %r5064 = load i64, ptr %r5064.p, align 8, !alias.scope !3, !noalias !4
  %c5065 = trunc i64 %r5064 to i32
  %t5066 = or i32 0, %c5065
  %c5067 = zext i32 %t5066 to i64
  %wp5068 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5067, ptr %wp5068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c2c word 0x94a4e75d
  %wp5069 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268720, ptr %wp5069, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269c30 word 0xf001b86e
  %wp5070 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c34 word 0xf001b86d
  %wp5071 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c38 word 0xf941b5ce
  %r5072.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5072 = load i64, ptr %r5072.p, align 8, !alias.scope !3, !noalias !4
  %t5073 = add i64 %r5072, 872
  %gmp5074 = inttoptr i64 %t5073 to ptr
  %gml5075 = load i64, ptr %gmp5074, align 1, !alias.scope !4, !noalias !3
  %wp5076 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5075, ptr %wp5076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c3c word 0xb001b72c
  %wp5077 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c40 word 0xb001b729
  %wp5078 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c44 word 0xf941bdad
  %r5079.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5079 = load i64, ptr %r5079.p, align 8, !alias.scope !3, !noalias !4
  %t5080 = add i64 %r5079, 888
  %gmp5081 = inttoptr i64 %t5080 to ptr
  %gml5082 = load i64, ptr %gmp5081, align 1, !alias.scope !4, !noalias !3
  %wp5083 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5082, ptr %wp5083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c48 word 0xf943018c
  %r5084.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5084 = load i64, ptr %r5084.p, align 8, !alias.scope !3, !noalias !4
  %t5085 = add i64 %r5084, 1536
  %gmp5086 = inttoptr i64 %t5085 to ptr
  %gml5087 = load i64, ptr %gmp5086, align 1, !alias.scope !4, !noalias !3
  %wp5088 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5087, ptr %wp5088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c4c word 0x2a1403e7
  %r5089.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5089 = load i64, ptr %r5089.p, align 8, !alias.scope !3, !noalias !4
  %c5090 = trunc i64 %r5089 to i32
  %t5091 = or i32 0, %c5090
  %c5092 = zext i32 %t5091 to i64
  %wp5093 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5092, ptr %wp5093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c50 word 0xaa1903e6
  %r5094.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5094 = load i64, ptr %r5094.p, align 8, !alias.scope !3, !noalias !4
  %t5095 = or i64 0, %r5094
  %wp5096 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5095, ptr %wp5096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c54 word 0xf9430d29
  %r5097.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5097 = load i64, ptr %r5097.p, align 8, !alias.scope !3, !noalias !4
  %t5098 = add i64 %r5097, 1560
  %gmp5099 = inttoptr i64 %t5098 to ptr
  %gml5100 = load i64, ptr %gmp5099, align 1, !alias.scope !4, !noalias !3
  %wp5101 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5100, ptr %wp5101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c58 word 0xaa1803e5
  %r5102.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5102 = load i64, ptr %r5102.p, align 8, !alias.scope !3, !noalias !4
  %t5103 = or i64 0, %r5102
  %wp5104 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5103, ptr %wp5104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c5c word 0xb9400feb
  %r5105.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5105 = load i64, ptr %r5105.p, align 8, !alias.scope !3, !noalias !4
  %t5106 = add i64 %r5105, 12
  %gmp5107 = inttoptr i64 %t5106 to ptr
  %gml5108 = load i32, ptr %gmp5107, align 1, !alias.scope !4, !noalias !3
  %c5109 = zext i32 %gml5108 to i64
  %wp5110 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5109, ptr %wp5110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c60 word 0xf9400bea
  %r5111.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5111 = load i64, ptr %r5111.p, align 8, !alias.scope !3, !noalias !4
  %t5112 = add i64 %r5111, 16
  %gmp5113 = inttoptr i64 %t5112 to ptr
  %gml5114 = load i64, ptr %gmp5113, align 1, !alias.scope !4, !noalias !3
  %wp5115 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5114, ptr %wp5115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c64 word 0xb94003e4
  %r5116.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5116 = load i64, ptr %r5116.p, align 8, !alias.scope !3, !noalias !4
  %gmp5117 = inttoptr i64 %r5116 to ptr
  %gml5118 = load i32, ptr %gmp5117, align 1, !alias.scope !4, !noalias !3
  %c5119 = zext i32 %gml5118 to i64
  %wp5120 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5119, ptr %wp5120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c68 word 0x34ff7aa0
  %r5121.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5121 = load i64, ptr %r5121.p, align 8, !alias.scope !3, !noalias !4
  %c5122 = trunc i64 %r5121 to i32
  %cmp5123 = icmp eq i32 %c5122, 0
  br i1 %cmp5123, label %L_800268bbc, label %L_800269c6c_ft
L_800269ccc:
  ; @pc 0x800269ccc word 0xb001b720
  %wp5200 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cd0 word 0xaa0503f8
  %r5201.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5201 = load i64, ptr %r5201.p, align 8, !alias.scope !3, !noalias !4
  %t5202 = or i64 0, %r5201
  %wp5203 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5202, ptr %wp5203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cd4 word 0xf9430000
  %r5204.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5204 = load i64, ptr %r5204.p, align 8, !alias.scope !3, !noalias !4
  %t5205 = add i64 %r5204, 1536
  %gmp5206 = inttoptr i64 %t5205 to ptr
  %gml5207 = load i64, ptr %gmp5206, align 1, !alias.scope !4, !noalias !3
  %wp5208 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5207, ptr %wp5208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cd8 word 0xb90003e4
  %r5209.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5209 = load i64, ptr %r5209.p, align 8, !alias.scope !3, !noalias !4
  %r5210.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5210 = load i64, ptr %r5210.p, align 8, !alias.scope !3, !noalias !4
  %c5211 = trunc i64 %r5210 to i32
  %gmp5212 = inttoptr i64 %r5209 to ptr
  store i32 %c5211, ptr %gmp5212, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269cdc word 0xaa0603f9
  %r5213.p = getelementptr inbounds i8, ptr %c, i64 48
  %r5213 = load i64, ptr %r5213.p, align 8, !alias.scope !3, !noalias !4
  %t5214 = or i64 0, %r5213
  %wp5215 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5214, ptr %wp5215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ce0 word 0x2a0703f4
  %r5216.p = getelementptr inbounds i8, ptr %c, i64 56
  %r5216 = load i64, ptr %r5216.p, align 8, !alias.scope !3, !noalias !4
  %c5217 = trunc i64 %r5216 to i32
  %t5218 = or i32 0, %c5217
  %c5219 = zext i32 %t5218 to i64
  %wp5220 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5219, ptr %wp5220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ce4 word 0x94a4e72f
  %wp5221 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268904, ptr %wp5221, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269ce8 word 0xf001b86e
  %wp5222 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cec word 0xf001b86d
  %wp5223 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cf0 word 0xf941b5ce
  %r5224.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5224 = load i64, ptr %r5224.p, align 8, !alias.scope !3, !noalias !4
  %t5225 = add i64 %r5224, 872
  %gmp5226 = inttoptr i64 %t5225 to ptr
  %gml5227 = load i64, ptr %gmp5226, align 1, !alias.scope !4, !noalias !3
  %wp5228 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5227, ptr %wp5228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cf4 word 0xb001b72c
  %wp5229 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cf8 word 0xb001b729
  %wp5230 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cfc word 0xf941bdad
  %r5231.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5231 = load i64, ptr %r5231.p, align 8, !alias.scope !3, !noalias !4
  %t5232 = add i64 %r5231, 888
  %gmp5233 = inttoptr i64 %t5232 to ptr
  %gml5234 = load i64, ptr %gmp5233, align 1, !alias.scope !4, !noalias !3
  %wp5235 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5234, ptr %wp5235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d00 word 0xf943018c
  %r5236.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5236 = load i64, ptr %r5236.p, align 8, !alias.scope !3, !noalias !4
  %t5237 = add i64 %r5236, 1536
  %gmp5238 = inttoptr i64 %t5237 to ptr
  %gml5239 = load i64, ptr %gmp5238, align 1, !alias.scope !4, !noalias !3
  %wp5240 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5239, ptr %wp5240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d04 word 0x2a1403e7
  %r5241.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5241 = load i64, ptr %r5241.p, align 8, !alias.scope !3, !noalias !4
  %c5242 = trunc i64 %r5241 to i32
  %t5243 = or i32 0, %c5242
  %c5244 = zext i32 %t5243 to i64
  %wp5245 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5244, ptr %wp5245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d08 word 0xaa1903e6
  %r5246.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5246 = load i64, ptr %r5246.p, align 8, !alias.scope !3, !noalias !4
  %t5247 = or i64 0, %r5246
  %wp5248 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5247, ptr %wp5248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d0c word 0xf9430d29
  %r5249.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5249 = load i64, ptr %r5249.p, align 8, !alias.scope !3, !noalias !4
  %t5250 = add i64 %r5249, 1560
  %gmp5251 = inttoptr i64 %t5250 to ptr
  %gml5252 = load i64, ptr %gmp5251, align 1, !alias.scope !4, !noalias !3
  %wp5253 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5252, ptr %wp5253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d10 word 0xaa1803e5
  %r5254.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5254 = load i64, ptr %r5254.p, align 8, !alias.scope !3, !noalias !4
  %t5255 = or i64 0, %r5254
  %wp5256 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5255, ptr %wp5256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d14 word 0xb9400feb
  %r5257.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5257 = load i64, ptr %r5257.p, align 8, !alias.scope !3, !noalias !4
  %t5258 = add i64 %r5257, 12
  %gmp5259 = inttoptr i64 %t5258 to ptr
  %gml5260 = load i32, ptr %gmp5259, align 1, !alias.scope !4, !noalias !3
  %c5261 = zext i32 %gml5260 to i64
  %wp5262 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5261, ptr %wp5262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d18 word 0xf9400bea
  %r5263.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5263 = load i64, ptr %r5263.p, align 8, !alias.scope !3, !noalias !4
  %t5264 = add i64 %r5263, 16
  %gmp5265 = inttoptr i64 %t5264 to ptr
  %gml5266 = load i64, ptr %gmp5265, align 1, !alias.scope !4, !noalias !3
  %wp5267 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5266, ptr %wp5267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d1c word 0xb94003e4
  %r5268.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5268 = load i64, ptr %r5268.p, align 8, !alias.scope !3, !noalias !4
  %gmp5269 = inttoptr i64 %r5268 to ptr
  %gml5270 = load i32, ptr %gmp5269, align 1, !alias.scope !4, !noalias !3
  %c5271 = zext i32 %gml5270 to i64
  %wp5272 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5271, ptr %wp5272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d20 word 0x34ff7520
  %r5273.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5273 = load i64, ptr %r5273.p, align 8, !alias.scope !3, !noalias !4
  %c5274 = trunc i64 %r5273 to i32
  %cmp5275 = icmp eq i32 %c5274, 0
  br i1 %cmp5275, label %L_800268bc4, label %L_800269d24_ft
L_800269d84:
  ; @pc 0x800269d84 word 0xb001b720
  %wp5352 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d88 word 0xaa0503f8
  %r5353.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5353 = load i64, ptr %r5353.p, align 8, !alias.scope !3, !noalias !4
  %t5354 = or i64 0, %r5353
  %wp5355 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5354, ptr %wp5355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d8c word 0xf9430c00
  %r5356.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5356 = load i64, ptr %r5356.p, align 8, !alias.scope !3, !noalias !4
  %t5357 = add i64 %r5356, 1560
  %gmp5358 = inttoptr i64 %t5357 to ptr
  %gml5359 = load i64, ptr %gmp5358, align 1, !alias.scope !4, !noalias !3
  %wp5360 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5359, ptr %wp5360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d90 word 0xb90003e4
  %r5361.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5361 = load i64, ptr %r5361.p, align 8, !alias.scope !3, !noalias !4
  %r5362.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5362 = load i64, ptr %r5362.p, align 8, !alias.scope !3, !noalias !4
  %c5363 = trunc i64 %r5362 to i32
  %gmp5364 = inttoptr i64 %r5361 to ptr
  store i32 %c5363, ptr %gmp5364, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269d94 word 0xaa0603f9
  %r5365.p = getelementptr inbounds i8, ptr %c, i64 48
  %r5365 = load i64, ptr %r5365.p, align 8, !alias.scope !3, !noalias !4
  %t5366 = or i64 0, %r5365
  %wp5367 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5366, ptr %wp5367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d98 word 0x2a0703f4
  %r5368.p = getelementptr inbounds i8, ptr %c, i64 56
  %r5368 = load i64, ptr %r5368.p, align 8, !alias.scope !3, !noalias !4
  %c5369 = trunc i64 %r5368 to i32
  %t5370 = or i32 0, %c5369
  %c5371 = zext i32 %t5370 to i64
  %wp5372 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5371, ptr %wp5372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d9c word 0x94a4e701
  %wp5373 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269088, ptr %wp5373, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269da0 word 0xf001b86e
  %wp5374 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269da4 word 0xf001b86d
  %wp5375 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269da8 word 0xf941b5ce
  %r5376.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5376 = load i64, ptr %r5376.p, align 8, !alias.scope !3, !noalias !4
  %t5377 = add i64 %r5376, 872
  %gmp5378 = inttoptr i64 %t5377 to ptr
  %gml5379 = load i64, ptr %gmp5378, align 1, !alias.scope !4, !noalias !3
  %wp5380 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5379, ptr %wp5380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dac word 0xb001b72c
  %wp5381 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269db0 word 0xb001b729
  %wp5382 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269db4 word 0xf941bdad
  %r5383.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5383 = load i64, ptr %r5383.p, align 8, !alias.scope !3, !noalias !4
  %t5384 = add i64 %r5383, 888
  %gmp5385 = inttoptr i64 %t5384 to ptr
  %gml5386 = load i64, ptr %gmp5385, align 1, !alias.scope !4, !noalias !3
  %wp5387 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5386, ptr %wp5387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269db8 word 0xf943018c
  %r5388.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5388 = load i64, ptr %r5388.p, align 8, !alias.scope !3, !noalias !4
  %t5389 = add i64 %r5388, 1536
  %gmp5390 = inttoptr i64 %t5389 to ptr
  %gml5391 = load i64, ptr %gmp5390, align 1, !alias.scope !4, !noalias !3
  %wp5392 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5391, ptr %wp5392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dbc word 0x2a1403e7
  %r5393.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5393 = load i64, ptr %r5393.p, align 8, !alias.scope !3, !noalias !4
  %c5394 = trunc i64 %r5393 to i32
  %t5395 = or i32 0, %c5394
  %c5396 = zext i32 %t5395 to i64
  %wp5397 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5396, ptr %wp5397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dc0 word 0xaa1903e6
  %r5398.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5398 = load i64, ptr %r5398.p, align 8, !alias.scope !3, !noalias !4
  %t5399 = or i64 0, %r5398
  %wp5400 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5399, ptr %wp5400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dc4 word 0xf9430d29
  %r5401.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5401 = load i64, ptr %r5401.p, align 8, !alias.scope !3, !noalias !4
  %t5402 = add i64 %r5401, 1560
  %gmp5403 = inttoptr i64 %t5402 to ptr
  %gml5404 = load i64, ptr %gmp5403, align 1, !alias.scope !4, !noalias !3
  %wp5405 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5404, ptr %wp5405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dc8 word 0xaa1803e5
  %r5406.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5406 = load i64, ptr %r5406.p, align 8, !alias.scope !3, !noalias !4
  %t5407 = or i64 0, %r5406
  %wp5408 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5407, ptr %wp5408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dcc word 0xb9400feb
  %r5409.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5409 = load i64, ptr %r5409.p, align 8, !alias.scope !3, !noalias !4
  %t5410 = add i64 %r5409, 12
  %gmp5411 = inttoptr i64 %t5410 to ptr
  %gml5412 = load i32, ptr %gmp5411, align 1, !alias.scope !4, !noalias !3
  %c5413 = zext i32 %gml5412 to i64
  %wp5414 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5413, ptr %wp5414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dd0 word 0xf9400bea
  %r5415.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5415 = load i64, ptr %r5415.p, align 8, !alias.scope !3, !noalias !4
  %t5416 = add i64 %r5415, 16
  %gmp5417 = inttoptr i64 %t5416 to ptr
  %gml5418 = load i64, ptr %gmp5417, align 1, !alias.scope !4, !noalias !3
  %wp5419 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5418, ptr %wp5419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dd4 word 0xb94003e4
  %r5420.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5420 = load i64, ptr %r5420.p, align 8, !alias.scope !3, !noalias !4
  %gmp5421 = inttoptr i64 %r5420 to ptr
  %gml5422 = load i32, ptr %gmp5421, align 1, !alias.scope !4, !noalias !3
  %c5423 = zext i32 %gml5422 to i64
  %wp5424 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5423, ptr %wp5424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dd8 word 0x34ff6fa0
  %r5425.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5425 = load i64, ptr %r5425.p, align 8, !alias.scope !3, !noalias !4
  %c5426 = trunc i64 %r5425 to i32
  %cmp5427 = icmp eq i32 %c5426, 0
  br i1 %cmp5427, label %L_800268bcc, label %L_800269ddc_ft
L_800269e3c:
  ; @pc 0x800269e3c word 0xf001b860
  %wp5504 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e40 word 0xaa0503f8
  %r5505.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5505 = load i64, ptr %r5505.p, align 8, !alias.scope !3, !noalias !4
  %t5506 = or i64 0, %r5505
  %wp5507 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5506, ptr %wp5507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e44 word 0xf941bc00
  %r5508.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5508 = load i64, ptr %r5508.p, align 8, !alias.scope !3, !noalias !4
  %t5509 = add i64 %r5508, 888
  %gmp5510 = inttoptr i64 %t5509 to ptr
  %gml5511 = load i64, ptr %gmp5510, align 1, !alias.scope !4, !noalias !3
  %wp5512 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5511, ptr %wp5512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e48 word 0xb90003e4
  %r5513.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5513 = load i64, ptr %r5513.p, align 8, !alias.scope !3, !noalias !4
  %r5514.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5514 = load i64, ptr %r5514.p, align 8, !alias.scope !3, !noalias !4
  %c5515 = trunc i64 %r5514 to i32
  %gmp5516 = inttoptr i64 %r5513 to ptr
  store i32 %c5515, ptr %gmp5516, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269e4c word 0xaa0603f9
  %r5517.p = getelementptr inbounds i8, ptr %c, i64 48
  %r5517 = load i64, ptr %r5517.p, align 8, !alias.scope !3, !noalias !4
  %t5518 = or i64 0, %r5517
  %wp5519 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5518, ptr %wp5519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e50 word 0x2a0703f4
  %r5520.p = getelementptr inbounds i8, ptr %c, i64 56
  %r5520 = load i64, ptr %r5520.p, align 8, !alias.scope !3, !noalias !4
  %c5521 = trunc i64 %r5520 to i32
  %t5522 = or i32 0, %c5521
  %c5523 = zext i32 %t5522 to i64
  %wp5524 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5523, ptr %wp5524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e54 word 0x94a4e6d3
  %wp5525 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269272, ptr %wp5525, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269e58 word 0xf001b86e
  %wp5526 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e5c word 0xf001b86d
  %wp5527 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e60 word 0xf941b5ce
  %r5528.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5528 = load i64, ptr %r5528.p, align 8, !alias.scope !3, !noalias !4
  %t5529 = add i64 %r5528, 872
  %gmp5530 = inttoptr i64 %t5529 to ptr
  %gml5531 = load i64, ptr %gmp5530, align 1, !alias.scope !4, !noalias !3
  %wp5532 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5531, ptr %wp5532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e64 word 0xb001b72c
  %wp5533 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e68 word 0xb001b729
  %wp5534 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e6c word 0xf941bdad
  %r5535.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5535 = load i64, ptr %r5535.p, align 8, !alias.scope !3, !noalias !4
  %t5536 = add i64 %r5535, 888
  %gmp5537 = inttoptr i64 %t5536 to ptr
  %gml5538 = load i64, ptr %gmp5537, align 1, !alias.scope !4, !noalias !3
  %wp5539 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5538, ptr %wp5539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e70 word 0xf943018c
  %r5540.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5540 = load i64, ptr %r5540.p, align 8, !alias.scope !3, !noalias !4
  %t5541 = add i64 %r5540, 1536
  %gmp5542 = inttoptr i64 %t5541 to ptr
  %gml5543 = load i64, ptr %gmp5542, align 1, !alias.scope !4, !noalias !3
  %wp5544 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5543, ptr %wp5544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e74 word 0x2a1403e7
  %r5545.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5545 = load i64, ptr %r5545.p, align 8, !alias.scope !3, !noalias !4
  %c5546 = trunc i64 %r5545 to i32
  %t5547 = or i32 0, %c5546
  %c5548 = zext i32 %t5547 to i64
  %wp5549 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5548, ptr %wp5549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e78 word 0xaa1903e6
  %r5550.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5550 = load i64, ptr %r5550.p, align 8, !alias.scope !3, !noalias !4
  %t5551 = or i64 0, %r5550
  %wp5552 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5551, ptr %wp5552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e7c word 0xf9430d29
  %r5553.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5553 = load i64, ptr %r5553.p, align 8, !alias.scope !3, !noalias !4
  %t5554 = add i64 %r5553, 1560
  %gmp5555 = inttoptr i64 %t5554 to ptr
  %gml5556 = load i64, ptr %gmp5555, align 1, !alias.scope !4, !noalias !3
  %wp5557 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5556, ptr %wp5557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e80 word 0xaa1803e5
  %r5558.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5558 = load i64, ptr %r5558.p, align 8, !alias.scope !3, !noalias !4
  %t5559 = or i64 0, %r5558
  %wp5560 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5559, ptr %wp5560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e84 word 0xb9400feb
  %r5561.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5561 = load i64, ptr %r5561.p, align 8, !alias.scope !3, !noalias !4
  %t5562 = add i64 %r5561, 12
  %gmp5563 = inttoptr i64 %t5562 to ptr
  %gml5564 = load i32, ptr %gmp5563, align 1, !alias.scope !4, !noalias !3
  %c5565 = zext i32 %gml5564 to i64
  %wp5566 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5565, ptr %wp5566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e88 word 0xf9400bea
  %r5567.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5567 = load i64, ptr %r5567.p, align 8, !alias.scope !3, !noalias !4
  %t5568 = add i64 %r5567, 16
  %gmp5569 = inttoptr i64 %t5568 to ptr
  %gml5570 = load i64, ptr %gmp5569, align 1, !alias.scope !4, !noalias !3
  %wp5571 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5570, ptr %wp5571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e8c word 0xb94003e4
  %r5572.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5572 = load i64, ptr %r5572.p, align 8, !alias.scope !3, !noalias !4
  %gmp5573 = inttoptr i64 %r5572 to ptr
  %gml5574 = load i32, ptr %gmp5573, align 1, !alias.scope !4, !noalias !3
  %c5575 = zext i32 %gml5574 to i64
  %wp5576 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5575, ptr %wp5576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e90 word 0x34ff6780
  %r5577.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5577 = load i64, ptr %r5577.p, align 8, !alias.scope !3, !noalias !4
  %c5578 = trunc i64 %r5577 to i32
  %cmp5579 = icmp eq i32 %c5578, 0
  br i1 %cmp5579, label %L_800268b80, label %L_800269e94_ft
L_800269ef4:
  ; @pc 0x800269ef4 word 0xb001b720
  %wp5656 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ef8 word 0xaa0503f8
  %r5657.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5657 = load i64, ptr %r5657.p, align 8, !alias.scope !3, !noalias !4
  %t5658 = or i64 0, %r5657
  %wp5659 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5658, ptr %wp5659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269efc word 0xf9430000
  %r5660.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5660 = load i64, ptr %r5660.p, align 8, !alias.scope !3, !noalias !4
  %t5661 = add i64 %r5660, 1536
  %gmp5662 = inttoptr i64 %t5661 to ptr
  %gml5663 = load i64, ptr %gmp5662, align 1, !alias.scope !4, !noalias !3
  %wp5664 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5663, ptr %wp5664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f00 word 0xb90003e4
  %r5665.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5665 = load i64, ptr %r5665.p, align 8, !alias.scope !3, !noalias !4
  %r5666.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5666 = load i64, ptr %r5666.p, align 8, !alias.scope !3, !noalias !4
  %c5667 = trunc i64 %r5666 to i32
  %gmp5668 = inttoptr i64 %r5665 to ptr
  store i32 %c5667, ptr %gmp5668, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269f04 word 0xaa0603f9
  %r5669.p = getelementptr inbounds i8, ptr %c, i64 48
  %r5669 = load i64, ptr %r5669.p, align 8, !alias.scope !3, !noalias !4
  %t5670 = or i64 0, %r5669
  %wp5671 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5670, ptr %wp5671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f08 word 0x2a0703f4
  %r5672.p = getelementptr inbounds i8, ptr %c, i64 56
  %r5672 = load i64, ptr %r5672.p, align 8, !alias.scope !3, !noalias !4
  %c5673 = trunc i64 %r5672 to i32
  %t5674 = or i32 0, %c5673
  %c5675 = zext i32 %t5674 to i64
  %wp5676 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5675, ptr %wp5676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f0c word 0x94a4e6a5
  %wp5677 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269456, ptr %wp5677, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269f10 word 0xf001b86e
  %wp5678 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f14 word 0xf001b86d
  %wp5679 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f18 word 0xf941b5ce
  %r5680.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5680 = load i64, ptr %r5680.p, align 8, !alias.scope !3, !noalias !4
  %t5681 = add i64 %r5680, 872
  %gmp5682 = inttoptr i64 %t5681 to ptr
  %gml5683 = load i64, ptr %gmp5682, align 1, !alias.scope !4, !noalias !3
  %wp5684 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5683, ptr %wp5684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f1c word 0xb001b72c
  %wp5685 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f20 word 0xb001b729
  %wp5686 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f24 word 0xf941bdad
  %r5687.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5687 = load i64, ptr %r5687.p, align 8, !alias.scope !3, !noalias !4
  %t5688 = add i64 %r5687, 888
  %gmp5689 = inttoptr i64 %t5688 to ptr
  %gml5690 = load i64, ptr %gmp5689, align 1, !alias.scope !4, !noalias !3
  %wp5691 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5690, ptr %wp5691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f28 word 0xf943018c
  %r5692.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5692 = load i64, ptr %r5692.p, align 8, !alias.scope !3, !noalias !4
  %t5693 = add i64 %r5692, 1536
  %gmp5694 = inttoptr i64 %t5693 to ptr
  %gml5695 = load i64, ptr %gmp5694, align 1, !alias.scope !4, !noalias !3
  %wp5696 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5695, ptr %wp5696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f2c word 0x2a1403e7
  %r5697.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5697 = load i64, ptr %r5697.p, align 8, !alias.scope !3, !noalias !4
  %c5698 = trunc i64 %r5697 to i32
  %t5699 = or i32 0, %c5698
  %c5700 = zext i32 %t5699 to i64
  %wp5701 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5700, ptr %wp5701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f30 word 0xaa1903e6
  %r5702.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5702 = load i64, ptr %r5702.p, align 8, !alias.scope !3, !noalias !4
  %t5703 = or i64 0, %r5702
  %wp5704 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5703, ptr %wp5704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f34 word 0xf9430d29
  %r5705.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5705 = load i64, ptr %r5705.p, align 8, !alias.scope !3, !noalias !4
  %t5706 = add i64 %r5705, 1560
  %gmp5707 = inttoptr i64 %t5706 to ptr
  %gml5708 = load i64, ptr %gmp5707, align 1, !alias.scope !4, !noalias !3
  %wp5709 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5708, ptr %wp5709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f38 word 0xaa1803e5
  %r5710.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5710 = load i64, ptr %r5710.p, align 8, !alias.scope !3, !noalias !4
  %t5711 = or i64 0, %r5710
  %wp5712 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5711, ptr %wp5712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f3c word 0xb9400feb
  %r5713.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5713 = load i64, ptr %r5713.p, align 8, !alias.scope !3, !noalias !4
  %t5714 = add i64 %r5713, 12
  %gmp5715 = inttoptr i64 %t5714 to ptr
  %gml5716 = load i32, ptr %gmp5715, align 1, !alias.scope !4, !noalias !3
  %c5717 = zext i32 %gml5716 to i64
  %wp5718 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5717, ptr %wp5718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f40 word 0xf9400bea
  %r5719.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5719 = load i64, ptr %r5719.p, align 8, !alias.scope !3, !noalias !4
  %t5720 = add i64 %r5719, 16
  %gmp5721 = inttoptr i64 %t5720 to ptr
  %gml5722 = load i64, ptr %gmp5721, align 1, !alias.scope !4, !noalias !3
  %wp5723 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5722, ptr %wp5723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f44 word 0xb94003e4
  %r5724.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5724 = load i64, ptr %r5724.p, align 8, !alias.scope !3, !noalias !4
  %gmp5725 = inttoptr i64 %r5724 to ptr
  %gml5726 = load i32, ptr %gmp5725, align 1, !alias.scope !4, !noalias !3
  %c5727 = zext i32 %gml5726 to i64
  %wp5728 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5727, ptr %wp5728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f48 word 0x34ff6200
  %r5729.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5729 = load i64, ptr %r5729.p, align 8, !alias.scope !3, !noalias !4
  %c5730 = trunc i64 %r5729 to i32
  %cmp5731 = icmp eq i32 %c5730, 0
  br i1 %cmp5731, label %L_800268b88, label %L_800269f4c_ft
L_800269fac:
  ; @pc 0x800269fac word 0xb001b720
  %wp5808 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fb0 word 0xaa0503f8
  %r5809.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5809 = load i64, ptr %r5809.p, align 8, !alias.scope !3, !noalias !4
  %t5810 = or i64 0, %r5809
  %wp5811 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5810, ptr %wp5811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fb4 word 0xf9430c00
  %r5812.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5812 = load i64, ptr %r5812.p, align 8, !alias.scope !3, !noalias !4
  %t5813 = add i64 %r5812, 1560
  %gmp5814 = inttoptr i64 %t5813 to ptr
  %gml5815 = load i64, ptr %gmp5814, align 1, !alias.scope !4, !noalias !3
  %wp5816 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5815, ptr %wp5816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fb8 word 0xb90003e4
  %r5817.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5817 = load i64, ptr %r5817.p, align 8, !alias.scope !3, !noalias !4
  %r5818.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5818 = load i64, ptr %r5818.p, align 8, !alias.scope !3, !noalias !4
  %c5819 = trunc i64 %r5818 to i32
  %gmp5820 = inttoptr i64 %r5817 to ptr
  store i32 %c5819, ptr %gmp5820, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269fbc word 0xaa0603f9
  %r5821.p = getelementptr inbounds i8, ptr %c, i64 48
  %r5821 = load i64, ptr %r5821.p, align 8, !alias.scope !3, !noalias !4
  %t5822 = or i64 0, %r5821
  %wp5823 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5822, ptr %wp5823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fc0 word 0x2a0703f4
  %r5824.p = getelementptr inbounds i8, ptr %c, i64 56
  %r5824 = load i64, ptr %r5824.p, align 8, !alias.scope !3, !noalias !4
  %c5825 = trunc i64 %r5824 to i32
  %t5826 = or i32 0, %c5825
  %c5827 = zext i32 %t5826 to i64
  %wp5828 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5827, ptr %wp5828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fc4 word 0x94a4e677
  %wp5829 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269640, ptr %wp5829, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800269fc8 word 0xf001b86e
  %wp5830 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fcc word 0xf001b86d
  %wp5831 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fd0 word 0xf941b5ce
  %r5832.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5832 = load i64, ptr %r5832.p, align 8, !alias.scope !3, !noalias !4
  %t5833 = add i64 %r5832, 872
  %gmp5834 = inttoptr i64 %t5833 to ptr
  %gml5835 = load i64, ptr %gmp5834, align 1, !alias.scope !4, !noalias !3
  %wp5836 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5835, ptr %wp5836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fd4 word 0xb001b72c
  %wp5837 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fd8 word 0xb001b729
  %wp5838 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fdc word 0xf941bdad
  %r5839.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5839 = load i64, ptr %r5839.p, align 8, !alias.scope !3, !noalias !4
  %t5840 = add i64 %r5839, 888
  %gmp5841 = inttoptr i64 %t5840 to ptr
  %gml5842 = load i64, ptr %gmp5841, align 1, !alias.scope !4, !noalias !3
  %wp5843 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5842, ptr %wp5843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fe0 word 0xf943018c
  %r5844.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5844 = load i64, ptr %r5844.p, align 8, !alias.scope !3, !noalias !4
  %t5845 = add i64 %r5844, 1536
  %gmp5846 = inttoptr i64 %t5845 to ptr
  %gml5847 = load i64, ptr %gmp5846, align 1, !alias.scope !4, !noalias !3
  %wp5848 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5847, ptr %wp5848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fe4 word 0x2a1403e7
  %r5849.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5849 = load i64, ptr %r5849.p, align 8, !alias.scope !3, !noalias !4
  %c5850 = trunc i64 %r5849 to i32
  %t5851 = or i32 0, %c5850
  %c5852 = zext i32 %t5851 to i64
  %wp5853 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5852, ptr %wp5853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fe8 word 0xaa1903e6
  %r5854.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5854 = load i64, ptr %r5854.p, align 8, !alias.scope !3, !noalias !4
  %t5855 = or i64 0, %r5854
  %wp5856 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5855, ptr %wp5856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fec word 0xf9430d29
  %r5857.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5857 = load i64, ptr %r5857.p, align 8, !alias.scope !3, !noalias !4
  %t5858 = add i64 %r5857, 1560
  %gmp5859 = inttoptr i64 %t5858 to ptr
  %gml5860 = load i64, ptr %gmp5859, align 1, !alias.scope !4, !noalias !3
  %wp5861 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5860, ptr %wp5861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ff0 word 0xaa1803e5
  %r5862.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5862 = load i64, ptr %r5862.p, align 8, !alias.scope !3, !noalias !4
  %t5863 = or i64 0, %r5862
  %wp5864 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5863, ptr %wp5864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ff4 word 0xb9400feb
  %r5865.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5865 = load i64, ptr %r5865.p, align 8, !alias.scope !3, !noalias !4
  %t5866 = add i64 %r5865, 12
  %gmp5867 = inttoptr i64 %t5866 to ptr
  %gml5868 = load i32, ptr %gmp5867, align 1, !alias.scope !4, !noalias !3
  %c5869 = zext i32 %gml5868 to i64
  %wp5870 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5869, ptr %wp5870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ff8 word 0xf9400bea
  %r5871.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5871 = load i64, ptr %r5871.p, align 8, !alias.scope !3, !noalias !4
  %t5872 = add i64 %r5871, 16
  %gmp5873 = inttoptr i64 %t5872 to ptr
  %gml5874 = load i64, ptr %gmp5873, align 1, !alias.scope !4, !noalias !3
  %wp5875 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5874, ptr %wp5875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ffc word 0xb94003e4
  %r5876.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5876 = load i64, ptr %r5876.p, align 8, !alias.scope !3, !noalias !4
  %gmp5877 = inttoptr i64 %r5876 to ptr
  %gml5878 = load i32, ptr %gmp5877, align 1, !alias.scope !4, !noalias !3
  %c5879 = zext i32 %gml5878 to i64
  %wp5880 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5879, ptr %wp5880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a000 word 0x34ff5c80
  %r5881.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5881 = load i64, ptr %r5881.p, align 8, !alias.scope !3, !noalias !4
  %c5882 = trunc i64 %r5881 to i32
  %cmp5883 = icmp eq i32 %c5882, 0
  br i1 %cmp5883, label %L_800268b90, label %L_80026a004_ft
L_80026a064:
  ; @pc 0x80026a064 word 0x927ef503
  %r5960.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5960 = load i64, ptr %r5960.p, align 8, !alias.scope !3, !noalias !4
  %t5961 = and i64 %r5960, -4
  %wp5962 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5961, ptr %wp5962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a068 word 0xaa1603e0
  %r5963.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5963 = load i64, ptr %r5963.p, align 8, !alias.scope !3, !noalias !4
  %t5964 = or i64 0, %r5963
  %wp5965 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5964, ptr %wp5965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a06c word 0xaa1903e1
  %r5966.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5966 = load i64, ptr %r5966.p, align 8, !alias.scope !3, !noalias !4
  %t5967 = or i64 0, %r5966
  %wp5968 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5967, ptr %wp5968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a070 word 0x2a1703e2
  %r5969.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5969 = load i64, ptr %r5969.p, align 8, !alias.scope !3, !noalias !4
  %c5970 = trunc i64 %r5969 to i32
  %t5971 = or i32 0, %c5970
  %c5972 = zext i32 %t5971 to i64
  %wp5973 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5972, ptr %wp5973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a074 word 0x2a1f03e4
  %t5974 = or i32 0, 0
  %c5975 = zext i32 %t5974 to i64
  %wp5976 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5975, ptr %wp5976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a078 word 0xaa1f03e5
  %t5977 = or i64 0, 0
  %wp5978 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5977, ptr %wp5978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a07c word 0x9484b50d
  %wp5979 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269824, ptr %wp5979, align 8, !alias.scope !3, !noalias !4
  call void @f_8023974b0(ptr %c)
  ; @pc 0x80026a080 word 0xaa1a03f3
  %r5980.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5980 = load i64, ptr %r5980.p, align 8, !alias.scope !3, !noalias !4
  %t5981 = or i64 0, %r5980
  %wp5982 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t5981, ptr %wp5982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a084 word 0x17fffbcf
  br label %L_800268fc0
L_80026a088:
  ; @pc 0x80026a088 word 0xaa1f03e2
  %t5983 = or i64 0, 0
  %wp5984 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5983, ptr %wp5984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a08c word 0x17fffc6d
  br label %L_800269240
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34362263752, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8002688c8
L_800268914_ft:
  ; @pc 0x800268914 word 0x79403ac9
  %r117.p = getelementptr inbounds i8, ptr %c, i64 176
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 28
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i16, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i16 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268918 word 0x5280078b
  %c123 = zext i32 60 to i64
  %wp124 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026891c word 0xf940274a
  %r125.p = getelementptr inbounds i8, ptr %c, i64 208
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %t126 = add i64 %r125, 72
  %gmp127 = inttoptr i64 %t126 to ptr
  %gml128 = load i64, ptr %gmp127, align 1, !alias.scope !4, !noalias !3
  %wp129 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml128, ptr %wp129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268920 word 0x9bab2929
  %r130.p = getelementptr inbounds i8, ptr %c, i64 72
  %r130 = load i64, ptr %r130.p, align 8, !alias.scope !3, !noalias !4
  %c131 = trunc i64 %r130 to i32
  %c132 = zext i32 %c131 to i64
  %r133.p = getelementptr inbounds i8, ptr %c, i64 88
  %r133 = load i64, ptr %r133.p, align 8, !alias.scope !3, !noalias !4
  %c134 = trunc i64 %r133 to i32
  %c135 = zext i32 %c134 to i64
  %t136 = mul i64 %c132, %c135
  %r137.p = getelementptr inbounds i8, ptr %c, i64 80
  %r137 = load i64, ptr %r137.p, align 8, !alias.scope !3, !noalias !4
  %t138 = add i64 %r137, %t136
  %wp139 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t138, ptr %wp139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268924 word 0xb980152a
  %r140.p = getelementptr inbounds i8, ptr %c, i64 72
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %t141 = add i64 %r140, 20
  %gmp142 = inttoptr i64 %t141 to ptr
  %gml143 = load i32, ptr %gmp142, align 1, !alias.scope !4, !noalias !3
  %c144 = sext i32 %gml143 to i64
  %wp145 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268928 word 0xf9400b49
  %r146.p = getelementptr inbounds i8, ptr %c, i64 208
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %t147 = add i64 %r146, 16
  %gmp148 = inttoptr i64 %t147 to ptr
  %gml149 = load i64, ptr %gmp148, align 1, !alias.scope !4, !noalias !3
  %wp150 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026892c word 0x8b0a0120
  %r151.p = getelementptr inbounds i8, ptr %c, i64 72
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %r152.p = getelementptr inbounds i8, ptr %c, i64 80
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = add i64 %r151, %r152
  %wp154 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t153, ptr %wp154, align 8, !alias.scope !3, !noalias !4
  br label %L_800268930
L_800268940_ft:
  ; @pc 0x800268940 word 0xf940174c
  %r191.p = getelementptr inbounds i8, ptr %c, i64 208
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 40
  %gmp193 = inttoptr i64 %t192 to ptr
  %gml194 = load i64, ptr %gmp193, align 1, !alias.scope !4, !noalias !3
  %wp195 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml194, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268944 word 0xaa1f03eb
  %t196 = or i64 0, 0
  %wp197 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t196, ptr %wp197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268948 word 0xb980600d
  %r198.p = getelementptr inbounds i8, ptr %c, i64 0
  %r198 = load i64, ptr %r198.p, align 8, !alias.scope !3, !noalias !4
  %t199 = add i64 %r198, 96
  %gmp200 = inttoptr i64 %t199 to ptr
  %gml201 = load i32, ptr %gmp200, align 1, !alias.scope !4, !noalias !3
  %c202 = sext i32 %gml201 to i64
  %wp203 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c202, ptr %wp203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026894c word 0xf94000ae
  %r204.p = getelementptr inbounds i8, ptr %c, i64 40
  %r204 = load i64, ptr %r204.p, align 8, !alias.scope !3, !noalias !4
  %gmp205 = inttoptr i64 %r204 to ptr
  %gml206 = load i64, ptr %gmp205, align 1, !alias.scope !4, !noalias !3
  %wp207 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml206, ptr %wp207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268950 word 0x910005cf
  %r208.p = getelementptr inbounds i8, ptr %c, i64 112
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %t209 = add i64 %r208, 1
  %wp210 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t209, ptr %wp210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268954 word 0xb980198c
  %r211.p = getelementptr inbounds i8, ptr %c, i64 96
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %t212 = add i64 %r211, 24
  %gmp213 = inttoptr i64 %t212 to ptr
  %gml214 = load i32, ptr %gmp213, align 1, !alias.scope !4, !noalias !3
  %c215 = sext i32 %gml214 to i64
  %wp216 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c215, ptr %wp216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268958 word 0x8b0c012c
  %r217.p = getelementptr inbounds i8, ptr %c, i64 72
  %r217 = load i64, ptr %r217.p, align 8, !alias.scope !3, !noalias !4
  %r218.p = getelementptr inbounds i8, ptr %c, i64 96
  %r218 = load i64, ptr %r218.p, align 8, !alias.scope !3, !noalias !4
  %t219 = add i64 %r217, %r218
  %wp220 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t219, ptr %wp220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026895c word 0x8b0d118c
  %r221.p = getelementptr inbounds i8, ptr %c, i64 96
  %r221 = load i64, ptr %r221.p, align 8, !alias.scope !3, !noalias !4
  %r222.p = getelementptr inbounds i8, ptr %c, i64 104
  %r222 = load i64, ptr %r222.p, align 8, !alias.scope !3, !noalias !4
  %t223 = shl i64 %r222, 4
  %t224 = add i64 %r221, %t223
  %wp225 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t224, ptr %wp225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268960 word 0xb980252d
  %r226.p = getelementptr inbounds i8, ptr %c, i64 72
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %t227 = add i64 %r226, 36
  %gmp228 = inttoptr i64 %t227 to ptr
  %gml229 = load i32, ptr %gmp228, align 1, !alias.scope !4, !noalias !3
  %c230 = sext i32 %gml229 to i64
  %wp231 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c230, ptr %wp231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268964 word 0x8b0d012d
  %r232.p = getelementptr inbounds i8, ptr %c, i64 72
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %r233.p = getelementptr inbounds i8, ptr %c, i64 104
  %r233 = load i64, ptr %r233.p, align 8, !alias.scope !3, !noalias !4
  %t234 = add i64 %r232, %r233
  %wp235 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t234, ptr %wp235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268968 word 0x91000db0
  %r236.p = getelementptr inbounds i8, ptr %c, i64 104
  %r236 = load i64, ptr %r236.p, align 8, !alias.scope !3, !noalias !4
  %t237 = add i64 %r236, 3
  %wp238 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t237, ptr %wp238, align 8, !alias.scope !3, !noalias !4
  br label %L_80026896c
L_800268980_ft:
  ; @pc 0x800268980 word 0xaa1f03f1
  %t279 = or i64 0, 0
  %wp280 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t279, ptr %wp280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268984 word 0x8b120212
  %r281.p = getelementptr inbounds i8, ptr %c, i64 128
  %r281 = load i64, ptr %r281.p, align 8, !alias.scope !3, !noalias !4
  %r282.p = getelementptr inbounds i8, ptr %c, i64 144
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %t283 = add i64 %r281, %r282
  %wp284 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t283, ptr %wp284, align 8, !alias.scope !3, !noalias !4
  br label %L_800268988
L_8002689a0_ft:
  ; @pc 0x8002689a0 word 0x34000282
  %r333.p = getelementptr inbounds i8, ptr %c, i64 16
  %r333 = load i64, ptr %r333.p, align 8, !alias.scope !3, !noalias !4
  %c334 = trunc i64 %r333 to i32
  %cmp335 = icmp eq i32 %c334, 0
  br i1 %cmp335, label %L_8002689f0, label %L_8002689a4_ft
L_8002689a4_ft:
  ; @pc 0x8002689a4 word 0xf150023f
  %r336.p = getelementptr inbounds i8, ptr %c, i64 136
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
  ; @pc 0x8002689a8 word 0x54001f00
  %r357.p = getelementptr inbounds i8, ptr %c, i64 272
  %r357 = load i64, ptr %r357.p, align 8, !alias.scope !3, !noalias !4
  %fsh359 = lshr i64 %r357, 30
  %cond358 = trunc i64 %fsh359 to i1
  br i1 %cond358, label %L_800268d88, label %L_8002689ac_ft
L_8002689ac_ft:
  ; @pc 0x8002689ac word 0x387169e2
  %r360.p = getelementptr inbounds i8, ptr %c, i64 120
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %r361.p = getelementptr inbounds i8, ptr %c, i64 136
  %r361 = load i64, ptr %r361.p, align 8, !alias.scope !3, !noalias !4
  %t362 = add i64 %r360, %r361
  %gmp363 = inttoptr i64 %t362 to ptr
  %gml364 = load i8, ptr %gmp363, align 1, !alias.scope !4, !noalias !3
  %c365 = zext i8 %gml364 to i64
  %wp366 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c365, ptr %wp366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689b0 word 0x385fe023
  %r367.p = getelementptr inbounds i8, ptr %c, i64 8
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = add i64 %r367, -2
  %gmp369 = inttoptr i64 %t368 to ptr
  %gml370 = load i8, ptr %gmp369, align 1, !alias.scope !4, !noalias !3
  %c371 = zext i8 %gml370 to i64
  %wp372 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c371, ptr %wp372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689b4 word 0x6b03005f
  %r373.p = getelementptr inbounds i8, ptr %c, i64 16
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %c374 = trunc i64 %r373 to i32
  %r375.p = getelementptr inbounds i8, ptr %c, i64 24
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
  ; @pc 0x8002689b8 word 0x54001e81
  %r397.p = getelementptr inbounds i8, ptr %c, i64 272
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %fsh399 = lshr i64 %r397, 30
  %ftr400 = trunc i64 %fsh399 to i1
  %cond398 = xor i1 %ftr400, true
  br i1 %cond398, label %L_800268d88, label %L_8002689bc_ft
L_8002689bc_ft:
  ; @pc 0x8002689bc word 0x340001a2
  %r401.p = getelementptr inbounds i8, ptr %c, i64 16
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %c402 = trunc i64 %r401 to i32
  %cmp403 = icmp eq i32 %c402, 0
  br i1 %cmp403, label %L_8002689f0, label %L_8002689c0_ft
L_8002689c0_ft:
  ; @pc 0x8002689c0 word 0x39400402
  %r404.p = getelementptr inbounds i8, ptr %c, i64 0
  %r404 = load i64, ptr %r404.p, align 8, !alias.scope !3, !noalias !4
  %t405 = add i64 %r404, 1
  %gmp406 = inttoptr i64 %t405 to ptr
  %gml407 = load i8, ptr %gmp406, align 1, !alias.scope !4, !noalias !3
  %c408 = zext i8 %gml407 to i64
  %wp409 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c408, ptr %wp409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689c4 word 0x385ff021
  %r410.p = getelementptr inbounds i8, ptr %c, i64 8
  %r410 = load i64, ptr %r410.p, align 8, !alias.scope !3, !noalias !4
  %t411 = add i64 %r410, -1
  %gmp412 = inttoptr i64 %t411 to ptr
  %gml413 = load i8, ptr %gmp412, align 1, !alias.scope !4, !noalias !3
  %c414 = zext i8 %gml413 to i64
  %wp415 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c414, ptr %wp415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689c8 word 0x6b01005f
  %r416.p = getelementptr inbounds i8, ptr %c, i64 16
  %r416 = load i64, ptr %r416.p, align 8, !alias.scope !3, !noalias !4
  %c417 = trunc i64 %r416 to i32
  %r418.p = getelementptr inbounds i8, ptr %c, i64 8
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
  ; @pc 0x8002689cc word 0x54001de1
  %r440.p = getelementptr inbounds i8, ptr %c, i64 272
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %fsh442 = lshr i64 %r440, 30
  %ftr443 = trunc i64 %fsh442 to i1
  %cond441 = xor i1 %ftr443, true
  br i1 %cond441, label %L_800268d88, label %L_8002689d0_ft
L_8002689d0_ft:
  ; @pc 0x8002689d0 word 0x34000102
  %r444.p = getelementptr inbounds i8, ptr %c, i64 16
  %r444 = load i64, ptr %r444.p, align 8, !alias.scope !3, !noalias !4
  %c445 = trunc i64 %r444 to i32
  %cmp446 = icmp eq i32 %c445, 0
  br i1 %cmp446, label %L_8002689f0, label %L_8002689d4_ft
L_8002689d4_ft:
  ; @pc 0x8002689d4 word 0x39400800
  %r447.p = getelementptr inbounds i8, ptr %c, i64 0
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %t448 = add i64 %r447, 2
  %gmp449 = inttoptr i64 %t448 to ptr
  %gml450 = load i8, ptr %gmp449, align 1, !alias.scope !4, !noalias !3
  %c451 = zext i8 %gml450 to i64
  %wp452 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c451, ptr %wp452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689d8 word 0x38716a41
  %r453.p = getelementptr inbounds i8, ptr %c, i64 144
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %r454.p = getelementptr inbounds i8, ptr %c, i64 136
  %r454 = load i64, ptr %r454.p, align 8, !alias.scope !3, !noalias !4
  %t455 = add i64 %r453, %r454
  %gmp456 = inttoptr i64 %t455 to ptr
  %gml457 = load i8, ptr %gmp456, align 1, !alias.scope !4, !noalias !3
  %c458 = zext i8 %gml457 to i64
  %wp459 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c458, ptr %wp459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689dc word 0x6b01001f
  %r460.p = getelementptr inbounds i8, ptr %c, i64 0
  %r460 = load i64, ptr %r460.p, align 8, !alias.scope !3, !noalias !4
  %c461 = trunc i64 %r460 to i32
  %r462.p = getelementptr inbounds i8, ptr %c, i64 8
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
  ; @pc 0x8002689e0 word 0x54001d41
  %r484.p = getelementptr inbounds i8, ptr %c, i64 272
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %fsh486 = lshr i64 %r484, 30
  %ftr487 = trunc i64 %fsh486 to i1
  %cond485 = xor i1 %ftr487, true
  br i1 %cond485, label %L_800268d88, label %L_8002689e4_ft
L_8002689e4_ft:
  ; @pc 0x8002689e4 word 0x34000060
  %r488.p = getelementptr inbounds i8, ptr %c, i64 0
  %r488 = load i64, ptr %r488.p, align 8, !alias.scope !3, !noalias !4
  %c489 = trunc i64 %r488 to i32
  %cmp490 = icmp eq i32 %c489, 0
  br i1 %cmp490, label %L_8002689f0, label %L_8002689e8_ft
L_8002689e8_ft:
  ; @pc 0x8002689e8 word 0x91001231
  %r491.p = getelementptr inbounds i8, ptr %c, i64 136
  %r491 = load i64, ptr %r491.p, align 8, !alias.scope !3, !noalias !4
  %t492 = add i64 %r491, 4
  %wp493 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t492, ptr %wp493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002689ec word 0x17ffffe7
  br label %L_800268988
L_800268a28_ft:
  ; @pc 0x800268a28 word 0x35002b17
  %r598.p = getelementptr inbounds i8, ptr %c, i64 184
  %r598 = load i64, ptr %r598.p, align 8, !alias.scope !3, !noalias !4
  %c599 = trunc i64 %r598 to i32
  %cmp600 = icmp ne i32 %c599, 0
  br i1 %cmp600, label %L_800268f88, label %L_800268a2c
L_800268a64_ft:
  ; @pc 0x800268a64 word 0xb27f0108
  %r664.p = getelementptr inbounds i8, ptr %c, i64 64
  %r664 = load i64, ptr %r664.p, align 8, !alias.scope !3, !noalias !4
  %t665 = or i64 %r664, 2
  %wp666 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t665, ptr %wp666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268a68 word 0xf9000268
  %r667.p = getelementptr inbounds i8, ptr %c, i64 152
  %r667 = load i64, ptr %r667.p, align 8, !alias.scope !3, !noalias !4
  %r668.p = getelementptr inbounds i8, ptr %c, i64 64
  %r668 = load i64, ptr %r668.p, align 8, !alias.scope !3, !noalias !4
  %gmp669 = inttoptr i64 %r667 to ptr
  store i64 %r668, ptr %gmp669, align 1, !alias.scope !4, !noalias !3
  br label %L_800268a6c
L_800268aa0_ft:
  ; @pc 0x800268aa0 word 0xb9406109
  %r768.p = getelementptr inbounds i8, ptr %c, i64 64
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %t769 = add i64 %r768, 96
  %gmp770 = inttoptr i64 %t769 to ptr
  %gml771 = load i32, ptr %gmp770, align 1, !alias.scope !4, !noalias !3
  %c772 = zext i32 %gml771 to i64
  %wp773 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c772, ptr %wp773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268aa4 word 0xf9000bea
  %r774.p = getelementptr inbounds i8, ptr %c, i64 256
  %r774 = load i64, ptr %r774.p, align 8, !alias.scope !3, !noalias !4
  %t775 = add i64 %r774, 16
  %r776.p = getelementptr inbounds i8, ptr %c, i64 80
  %r776 = load i64, ptr %r776.p, align 8, !alias.scope !3, !noalias !4
  %gmp777 = inttoptr i64 %t775 to ptr
  store i64 %r776, ptr %gmp777, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268aa8 word 0xb9000feb
  %r778.p = getelementptr inbounds i8, ptr %c, i64 256
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %t779 = add i64 %r778, 12
  %r780.p = getelementptr inbounds i8, ptr %c, i64 88
  %r780 = load i64, ptr %r780.p, align 8, !alias.scope !3, !noalias !4
  %c781 = trunc i64 %r780 to i32
  %gmp782 = inttoptr i64 %t779 to ptr
  store i32 %c781, ptr %gmp782, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800268aac word 0x6b18013f
  %r783.p = getelementptr inbounds i8, ptr %c, i64 72
  %r783 = load i64, ptr %r783.p, align 8, !alias.scope !3, !noalias !4
  %c784 = trunc i64 %r783 to i32
  %r785.p = getelementptr inbounds i8, ptr %c, i64 192
  %r785 = load i64, ptr %r785.p, align 8, !alias.scope !3, !noalias !4
  %c786 = trunc i64 %r785 to i32
  %t787 = sub i32 %c784, %c786
  %fn788 = icmp slt i32 %t787, 0
  %fz789 = icmp eq i32 %t787, 0
  %fc790 = icmp uge i32 %c784, %c786
  %fx1791 = xor i32 %c784, %c786
  %fx2792 = xor i32 %c784, %t787
  %fva793 = and i32 %fx1791, %fx2792
  %fv794 = icmp slt i32 %fva793, 0
  %nz795 = zext i1 %fn788 to i64
  %zz796 = zext i1 %fz789 to i64
  %cz797 = zext i1 %fc790 to i64
  %vz798 = zext i1 %fv794 to i64
  %ns799 = shl i64 %nz795, 31
  %zs800 = shl i64 %zz796, 30
  %cs801 = shl i64 %cz797, 29
  %vs802 = shl i64 %vz798, 28
  %nzor803 = or i64 %ns799, %zs800
  %cvor804 = or i64 %cs801, %vs802
  %nzcv805 = or i64 %nzor803, %cvor804
  %wp806 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv805, ptr %wp806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ab0 word 0x54003d8d
  %r807.p = getelementptr inbounds i8, ptr %c, i64 272
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %fsh809 = lshr i64 %r807, 30
  %ftr810 = trunc i64 %fsh809 to i1
  %fsh811 = lshr i64 %r807, 31
  %ftr812 = trunc i64 %fsh811 to i1
  %fsh813 = lshr i64 %r807, 28
  %ftr814 = trunc i64 %fsh813 to i1
  %fnz815 = xor i1 %ftr810, true
  %feq816 = icmp eq i1 %ftr812, %ftr814
  %fgt817 = and i1 %fnz815, %feq816
  %cond808 = xor i1 %fgt817, true
  br i1 %cond808, label %L_800269260, label %L_800268ab4_ft
L_800268ab4_ft:
  ; @pc 0x800268ab4 word 0xf9403508
  %r818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r818 = load i64, ptr %r818.p, align 8, !alias.scope !3, !noalias !4
  %t819 = add i64 %r818, 104
  %gmp820 = inttoptr i64 %t819 to ptr
  %gml821 = load i64, ptr %gmp820, align 1, !alias.scope !4, !noalias !3
  %wp822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml821, ptr %wp822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ab8 word 0xf8785917
  %r823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %r824.p = getelementptr inbounds i8, ptr %c, i64 192
  %r824 = load i64, ptr %r824.p, align 8, !alias.scope !3, !noalias !4
  %c825 = trunc i64 %r824 to i32
  %c826 = zext i32 %c825 to i64
  %t827 = shl i64 %c826, 3
  %t828 = add i64 %r823, %t827
  %gmp829 = inttoptr i64 %t828 to ptr
  %gml830 = load i64, ptr %gmp829, align 1, !alias.scope !4, !noalias !3
  %wp831 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml830, ptr %wp831, align 8, !alias.scope !3, !noalias !4
  br label %L_800268abc
L_800268af0_ft:
  ; @pc 0x800268af0 word 0xf94002e8
  %r872.p = getelementptr inbounds i8, ptr %c, i64 184
  %r872 = load i64, ptr %r872.p, align 8, !alias.scope !3, !noalias !4
  %gmp873 = inttoptr i64 %r872 to ptr
  %gml874 = load i64, ptr %gmp873, align 1, !alias.scope !4, !noalias !3
  %wp875 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml874, ptr %wp875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268af4 word 0xf9400108
  %r876.p = getelementptr inbounds i8, ptr %c, i64 64
  %r876 = load i64, ptr %r876.p, align 8, !alias.scope !3, !noalias !4
  %gmp877 = inttoptr i64 %r876 to ptr
  %gml878 = load i64, ptr %gmp877, align 1, !alias.scope !4, !noalias !3
  %wp879 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268af8 word 0xeb0e011f
  %r880.p = getelementptr inbounds i8, ptr %c, i64 64
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %r881.p = getelementptr inbounds i8, ptr %c, i64 112
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %t882 = sub i64 %r880, %r881
  %fn883 = icmp slt i64 %t882, 0
  %fz884 = icmp eq i64 %t882, 0
  %fc885 = icmp uge i64 %r880, %r881
  %fx1886 = xor i64 %r880, %r881
  %fx2887 = xor i64 %r880, %t882
  %fva888 = and i64 %fx1886, %fx2887
  %fv889 = icmp slt i64 %fva888, 0
  %nz890 = zext i1 %fn883 to i64
  %zz891 = zext i1 %fz884 to i64
  %cz892 = zext i1 %fc885 to i64
  %vz893 = zext i1 %fv889 to i64
  %ns894 = shl i64 %nz890, 31
  %zs895 = shl i64 %zz891, 30
  %cs896 = shl i64 %cz892, 29
  %vs897 = shl i64 %vz893, 28
  %nzor898 = or i64 %ns894, %zs895
  %cvor899 = or i64 %cs896, %vs897
  %nzcv900 = or i64 %nzor898, %cvor899
  %wp901 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv900, ptr %wp901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268afc word 0x54002161
  %r902.p = getelementptr inbounds i8, ptr %c, i64 272
  %r902 = load i64, ptr %r902.p, align 8, !alias.scope !3, !noalias !4
  %fsh904 = lshr i64 %r902, 30
  %ftr905 = trunc i64 %fsh904 to i1
  %cond903 = xor i1 %ftr905, true
  br i1 %cond903, label %L_800268f28, label %L_800268b00_ft
L_800268b00_ft:
  ; @pc 0x800268b00 word 0x08dffda8
  %r906.p = getelementptr inbounds i8, ptr %c, i64 104
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %atp907 = inttoptr i64 %r906 to ptr
  %lda908 = load atomic i8, ptr %atp907 acquire, align 1, !alias.scope !4, !noalias !3
  %c909 = zext i8 %lda908 to i64
  %wp910 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c909, ptr %wp910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b04 word 0x36005948
  %r911.p = getelementptr inbounds i8, ptr %c, i64 64
  %r911 = load i64, ptr %r911.p, align 8, !alias.scope !3, !noalias !4
  %t912 = and i64 %r911, 1
  %cmp913 = icmp eq i64 %t912, 0
  br i1 %cmp913, label %L_80026962c, label %L_800268b08
L_800268b2c_ft:
  ; @pc 0x800268b2c word 0xf94002e8
  %r946.p = getelementptr inbounds i8, ptr %c, i64 184
  %r946 = load i64, ptr %r946.p, align 8, !alias.scope !3, !noalias !4
  %gmp947 = inttoptr i64 %r946 to ptr
  %gml948 = load i64, ptr %gmp947, align 1, !alias.scope !4, !noalias !3
  %wp949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml948, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b30 word 0xf9400108
  %r950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %gmp951 = inttoptr i64 %r950 to ptr
  %gml952 = load i64, ptr %gmp951, align 1, !alias.scope !4, !noalias !3
  %wp953 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml952, ptr %wp953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b34 word 0xeb0e011f
  %r954.p = getelementptr inbounds i8, ptr %c, i64 64
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %r955.p = getelementptr inbounds i8, ptr %c, i64 112
  %r955 = load i64, ptr %r955.p, align 8, !alias.scope !3, !noalias !4
  %t956 = sub i64 %r954, %r955
  %fn957 = icmp slt i64 %t956, 0
  %fz958 = icmp eq i64 %t956, 0
  %fc959 = icmp uge i64 %r954, %r955
  %fx1960 = xor i64 %r954, %r955
  %fx2961 = xor i64 %r954, %t956
  %fva962 = and i64 %fx1960, %fx2961
  %fv963 = icmp slt i64 %fva962, 0
  %nz964 = zext i1 %fn957 to i64
  %zz965 = zext i1 %fz958 to i64
  %cz966 = zext i1 %fc959 to i64
  %vz967 = zext i1 %fv963 to i64
  %ns968 = shl i64 %nz964, 31
  %zs969 = shl i64 %zz965, 30
  %cs970 = shl i64 %cz966, 29
  %vs971 = shl i64 %vz967, 28
  %nzor972 = or i64 %ns968, %zs969
  %cvor973 = or i64 %cs970, %vs971
  %nzcv974 = or i64 %nzor972, %cvor973
  %wp975 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv974, ptr %wp975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b38 word 0x54001c81
  %r976.p = getelementptr inbounds i8, ptr %c, i64 272
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %fsh978 = lshr i64 %r976, 30
  %ftr979 = trunc i64 %fsh978 to i1
  %cond977 = xor i1 %ftr979, true
  br i1 %cond977, label %L_800268ec8, label %L_800268b3c_ft
L_800268b3c_ft:
  ; @pc 0x800268b3c word 0x08dffda8
  %r980.p = getelementptr inbounds i8, ptr %c, i64 104
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %atp981 = inttoptr i64 %r980 to ptr
  %lda982 = load atomic i8, ptr %atp981 acquire, align 1, !alias.scope !4, !noalias !3
  %c983 = zext i8 %lda982 to i64
  %wp984 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c983, ptr %wp984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b40 word 0x360068a8
  %r985.p = getelementptr inbounds i8, ptr %c, i64 64
  %r985 = load i64, ptr %r985.p, align 8, !alias.scope !3, !noalias !4
  %t986 = and i64 %r985, 1
  %cmp987 = icmp eq i64 %t986, 0
  br i1 %cmp987, label %L_800269854, label %L_800268b44
L_800268b68_ft:
  ; @pc 0x800268b68 word 0xf94002e8
  %r1020.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1020 = load i64, ptr %r1020.p, align 8, !alias.scope !3, !noalias !4
  %gmp1021 = inttoptr i64 %r1020 to ptr
  %gml1022 = load i64, ptr %gmp1021, align 1, !alias.scope !4, !noalias !3
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1022, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b6c word 0xf9400108
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %gmp1025 = inttoptr i64 %r1024 to ptr
  %gml1026 = load i64, ptr %gmp1025, align 1, !alias.scope !4, !noalias !3
  %wp1027 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1026, ptr %wp1027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b70 word 0xeb0e011f
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %r1029.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1029 = load i64, ptr %r1029.p, align 8, !alias.scope !3, !noalias !4
  %t1030 = sub i64 %r1028, %r1029
  %fn1031 = icmp slt i64 %t1030, 0
  %fz1032 = icmp eq i64 %t1030, 0
  %fc1033 = icmp uge i64 %r1028, %r1029
  %fx11034 = xor i64 %r1028, %r1029
  %fx21035 = xor i64 %r1028, %t1030
  %fva1036 = and i64 %fx11034, %fx21035
  %fv1037 = icmp slt i64 %fva1036, 0
  %nz1038 = zext i1 %fn1031 to i64
  %zz1039 = zext i1 %fz1032 to i64
  %cz1040 = zext i1 %fc1033 to i64
  %vz1041 = zext i1 %fv1037 to i64
  %ns1042 = shl i64 %nz1038, 31
  %zs1043 = shl i64 %zz1039, 30
  %cs1044 = shl i64 %cz1040, 29
  %vs1045 = shl i64 %vz1041, 28
  %nzor1046 = or i64 %ns1042, %zs1043
  %cvor1047 = or i64 %cs1044, %vs1045
  %nzcv1048 = or i64 %nzor1046, %cvor1047
  %wp1049 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1048, ptr %wp1049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b74 word 0x540011e1
  %r1050.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1050 = load i64, ptr %r1050.p, align 8, !alias.scope !3, !noalias !4
  %fsh1052 = lshr i64 %r1050, 30
  %ftr1053 = trunc i64 %fsh1052 to i1
  %cond1051 = xor i1 %ftr1053, true
  br i1 %cond1051, label %L_800268db0, label %L_800268b78_ft
L_800268b78_ft:
  ; @pc 0x800268b78 word 0x08dffda8
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %atp1055 = inttoptr i64 %r1054 to ptr
  %lda1056 = load atomic i8, ptr %atp1055 acquire, align 1, !alias.scope !4, !noalias !3
  %c1057 = zext i8 %lda1056 to i64
  %wp1058 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1057, ptr %wp1058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268b7c word 0x36009608
  %r1059.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1059 = load i64, ptr %r1059.p, align 8, !alias.scope !3, !noalias !4
  %t1060 = and i64 %r1059, 1
  %cmp1061 = icmp eq i64 %t1060, 0
  br i1 %cmp1061, label %L_800269e3c, label %L_800268b80
L_800268ba4_ft:
  ; @pc 0x800268ba4 word 0xf94002e8
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %gmp1095 = inttoptr i64 %r1094 to ptr
  %gml1096 = load i64, ptr %gmp1095, align 1, !alias.scope !4, !noalias !3
  %wp1097 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1096, ptr %wp1097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ba8 word 0xf9400108
  %r1098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1098 = load i64, ptr %r1098.p, align 8, !alias.scope !3, !noalias !4
  %gmp1099 = inttoptr i64 %r1098 to ptr
  %gml1100 = load i64, ptr %gmp1099, align 1, !alias.scope !4, !noalias !3
  %wp1101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1100, ptr %wp1101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bac word 0xeb0e011f
  %r1102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1102 = load i64, ptr %r1102.p, align 8, !alias.scope !3, !noalias !4
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %t1104 = sub i64 %r1102, %r1103
  %fn1105 = icmp slt i64 %t1104, 0
  %fz1106 = icmp eq i64 %t1104, 0
  %fc1107 = icmp uge i64 %r1102, %r1103
  %fx11108 = xor i64 %r1102, %r1103
  %fx21109 = xor i64 %r1102, %t1104
  %fva1110 = and i64 %fx11108, %fx21109
  %fv1111 = icmp slt i64 %fva1110, 0
  %nz1112 = zext i1 %fn1105 to i64
  %zz1113 = zext i1 %fz1106 to i64
  %cz1114 = zext i1 %fc1107 to i64
  %vz1115 = zext i1 %fv1111 to i64
  %ns1116 = shl i64 %nz1112, 31
  %zs1117 = shl i64 %zz1113, 30
  %cs1118 = shl i64 %cz1114, 29
  %vs1119 = shl i64 %vz1115, 28
  %nzor1120 = or i64 %ns1116, %zs1117
  %cvor1121 = or i64 %cs1118, %vs1119
  %nzcv1122 = or i64 %nzor1120, %cvor1121
  %wp1123 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1122, ptr %wp1123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bb0 word 0x54001341
  %r1124.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1124 = load i64, ptr %r1124.p, align 8, !alias.scope !3, !noalias !4
  %fsh1126 = lshr i64 %r1124, 30
  %ftr1127 = trunc i64 %fsh1126 to i1
  %cond1125 = xor i1 %ftr1127, true
  br i1 %cond1125, label %L_800268e18, label %L_800268bb4_ft
L_800268bb4_ft:
  ; @pc 0x800268bb4 word 0x08dffda8
  %r1128.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1128 = load i64, ptr %r1128.p, align 8, !alias.scope !3, !noalias !4
  %atp1129 = inttoptr i64 %r1128 to ptr
  %lda1130 = load atomic i8, ptr %atp1129 acquire, align 1, !alias.scope !4, !noalias !3
  %c1131 = zext i8 %lda1130 to i64
  %wp1132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1131, ptr %wp1132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bb8 word 0x360082e8
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %t1134 = and i64 %r1133, 1
  %cmp1135 = icmp eq i64 %t1134, 0
  br i1 %cmp1135, label %L_800269c14, label %L_800268bbc
L_800268be0_ft:
  ; @pc 0x800268be0 word 0xf94002e8
  %r1168.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1168 = load i64, ptr %r1168.p, align 8, !alias.scope !3, !noalias !4
  %gmp1169 = inttoptr i64 %r1168 to ptr
  %gml1170 = load i64, ptr %gmp1169, align 1, !alias.scope !4, !noalias !3
  %wp1171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1170, ptr %wp1171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268be4 word 0xf9400108
  %r1172.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1172 = load i64, ptr %r1172.p, align 8, !alias.scope !3, !noalias !4
  %gmp1173 = inttoptr i64 %r1172 to ptr
  %gml1174 = load i64, ptr %gmp1173, align 1, !alias.scope !4, !noalias !3
  %wp1175 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1174, ptr %wp1175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268be8 word 0xeb0e011f
  %r1176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1176 = load i64, ptr %r1176.p, align 8, !alias.scope !3, !noalias !4
  %r1177.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1177 = load i64, ptr %r1177.p, align 8, !alias.scope !3, !noalias !4
  %t1178 = sub i64 %r1176, %r1177
  %fn1179 = icmp slt i64 %t1178, 0
  %fz1180 = icmp eq i64 %t1178, 0
  %fc1181 = icmp uge i64 %r1176, %r1177
  %fx11182 = xor i64 %r1176, %r1177
  %fx21183 = xor i64 %r1176, %t1178
  %fva1184 = and i64 %fx11182, %fx21183
  %fv1185 = icmp slt i64 %fva1184, 0
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
  ; @pc 0x800268bec word 0x540014a1
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %fsh1200 = lshr i64 %r1198, 30
  %ftr1201 = trunc i64 %fsh1200 to i1
  %cond1199 = xor i1 %ftr1201, true
  br i1 %cond1199, label %L_800268e80, label %L_800268bf0_ft
L_800268bf0_ft:
  ; @pc 0x800268bf0 word 0x08dffda8
  %r1202.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1202 = load i64, ptr %r1202.p, align 8, !alias.scope !3, !noalias !4
  %atp1203 = inttoptr i64 %r1202 to ptr
  %lda1204 = load atomic i8, ptr %atp1203 acquire, align 1, !alias.scope !4, !noalias !3
  %c1205 = zext i8 %lda1204 to i64
  %wp1206 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1205, ptr %wp1206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268bf4 word 0x36007448
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1207 = load i64, ptr %r1207.p, align 8, !alias.scope !3, !noalias !4
  %t1208 = and i64 %r1207, 1
  %cmp1209 = icmp eq i64 %t1208, 0
  br i1 %cmp1209, label %L_800269a7c, label %L_800268bf8
L_800268c20_ft:
  ; @pc 0x800268c20 word 0x2a1f03f5
  %t1269 = or i32 0, 0
  %c1270 = zext i32 %t1269 to i64
  %wp1271 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c1270, ptr %wp1271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c24 word 0x2a1f03f7
  %t1272 = or i32 0, 0
  %c1273 = zext i32 %t1272 to i64
  %wp1274 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1273, ptr %wp1274, align 8, !alias.scope !3, !noalias !4
  br label %L_800268c28
L_800268c40_ft:
  ; @pc 0x800268c40 word 0xf94006c9
  %r1294.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1294 = load i64, ptr %r1294.p, align 8, !alias.scope !3, !noalias !4
  %t1295 = add i64 %r1294, 8
  %gmp1296 = inttoptr i64 %t1295 to ptr
  %gml1297 = load i64, ptr %gmp1296, align 1, !alias.scope !4, !noalias !3
  %wp1298 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1297, ptr %wp1298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c44 word 0xb9406128
  %r1299.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1299 = load i64, ptr %r1299.p, align 8, !alias.scope !3, !noalias !4
  %t1300 = add i64 %r1299, 96
  %gmp1301 = inttoptr i64 %t1300 to ptr
  %gml1302 = load i32, ptr %gmp1301, align 1, !alias.scope !4, !noalias !3
  %c1303 = zext i32 %gml1302 to i64
  %wp1304 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1303, ptr %wp1304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c48 word 0x6b38211f
  %r1305.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1305 = load i64, ptr %r1305.p, align 8, !alias.scope !3, !noalias !4
  %c1306 = trunc i64 %r1305 to i32
  %r1307.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1307 = load i64, ptr %r1307.p, align 8, !alias.scope !3, !noalias !4
  %c1308 = trunc i64 %r1307 to i16
  %c1309 = zext i16 %c1308 to i64
  %c1310 = trunc i64 %c1309 to i32
  %t1311 = sub i32 %c1306, %c1310
  %fn1312 = icmp slt i32 %t1311, 0
  %fz1313 = icmp eq i32 %t1311, 0
  %fc1314 = icmp uge i32 %c1306, %c1310
  %fx11315 = xor i32 %c1306, %c1310
  %fx21316 = xor i32 %c1306, %t1311
  %fva1317 = and i32 %fx11315, %fx21316
  %fv1318 = icmp slt i32 %fva1317, 0
  %nz1319 = zext i1 %fn1312 to i64
  %zz1320 = zext i1 %fz1313 to i64
  %cz1321 = zext i1 %fc1314 to i64
  %vz1322 = zext i1 %fv1318 to i64
  %ns1323 = shl i64 %nz1319, 31
  %zs1324 = shl i64 %zz1320, 30
  %cs1325 = shl i64 %cz1321, 29
  %vs1326 = shl i64 %vz1322, 28
  %nzor1327 = or i64 %ns1323, %zs1324
  %cvor1328 = or i64 %cs1325, %vs1326
  %nzcv1329 = or i64 %nzor1327, %cvor1328
  %wp1330 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1329, ptr %wp1330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c4c word 0x540026ad
  %r1331.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1331 = load i64, ptr %r1331.p, align 8, !alias.scope !3, !noalias !4
  %fsh1333 = lshr i64 %r1331, 30
  %ftr1334 = trunc i64 %fsh1333 to i1
  %fsh1335 = lshr i64 %r1331, 31
  %ftr1336 = trunc i64 %fsh1335 to i1
  %fsh1337 = lshr i64 %r1331, 28
  %ftr1338 = trunc i64 %fsh1337 to i1
  %fnz1339 = xor i1 %ftr1334, true
  %feq1340 = icmp eq i1 %ftr1336, %ftr1338
  %fgt1341 = and i1 %fnz1339, %feq1340
  %cond1332 = xor i1 %fgt1341, true
  br i1 %cond1332, label %L_800269120, label %L_800268c50_ft
L_800268c50_ft:
  ; @pc 0x800268c50 word 0xf9403528
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %t1343 = add i64 %r1342, 104
  %gmp1344 = inttoptr i64 %t1343 to ptr
  %gml1345 = load i64, ptr %gmp1344, align 1, !alias.scope !4, !noalias !3
  %wp1346 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1345, ptr %wp1346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c54 word 0x92403f0a
  %r1347.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1347 = load i64, ptr %r1347.p, align 8, !alias.scope !3, !noalias !4
  %t1348 = and i64 %r1347, 65535
  %wp1349 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1348, ptr %wp1349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c58 word 0xf86a7908
  %r1350.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1350 = load i64, ptr %r1350.p, align 8, !alias.scope !3, !noalias !4
  %r1351.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1351 = load i64, ptr %r1351.p, align 8, !alias.scope !3, !noalias !4
  %t1352 = shl i64 %r1351, 3
  %t1353 = add i64 %r1350, %t1352
  %gmp1354 = inttoptr i64 %t1353 to ptr
  %gml1355 = load i64, ptr %gmp1354, align 1, !alias.scope !4, !noalias !3
  %wp1356 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1355, ptr %wp1356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c5c word 0xb40028e8
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %cmp1358 = icmp eq i64 %r1357, 0
  br i1 %cmp1358, label %L_800269178, label %L_800268c60_ft
L_800268c60_ft:
  ; @pc 0x800268c60 word 0xf9400109
  %r1359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1359 = load i64, ptr %r1359.p, align 8, !alias.scope !3, !noalias !4
  %gmp1360 = inttoptr i64 %r1359 to ptr
  %gml1361 = load i64, ptr %gmp1360, align 1, !alias.scope !4, !noalias !3
  %wp1362 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1361, ptr %wp1362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c64 word 0xf9404d29
  %r1363.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1363 = load i64, ptr %r1363.p, align 8, !alias.scope !3, !noalias !4
  %t1364 = add i64 %r1363, 152
  %gmp1365 = inttoptr i64 %t1364 to ptr
  %gml1366 = load i64, ptr %gmp1365, align 1, !alias.scope !4, !noalias !3
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1366, ptr %wp1367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c68 word 0xeb06013f
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %r1369.p = getelementptr inbounds i8, ptr %c, i64 48
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
  ; @pc 0x800268c6c word 0x54002ba1
  %r1390.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1390 = load i64, ptr %r1390.p, align 8, !alias.scope !3, !noalias !4
  %fsh1392 = lshr i64 %r1390, 30
  %ftr1393 = trunc i64 %fsh1392 to i1
  %cond1391 = xor i1 %ftr1393, true
  br i1 %cond1391, label %L_8002691e0, label %L_800268c70_ft
L_800268c70_ft:
  ; @pc 0x800268c70 word 0xf9400509
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %t1395 = add i64 %r1394, 8
  %gmp1396 = inttoptr i64 %t1395 to ptr
  %gml1397 = load i64, ptr %gmp1396, align 1, !alias.scope !4, !noalias !3
  %wp1398 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1397, ptr %wp1398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c74 word 0x5280078c
  %c1399 = zext i32 60 to i64
  %wp1400 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1399, ptr %wp1400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c78 word 0x7940390a
  %r1401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1401 = load i64, ptr %r1401.p, align 8, !alias.scope !3, !noalias !4
  %t1402 = add i64 %r1401, 28
  %gmp1403 = inttoptr i64 %t1402 to ptr
  %gml1404 = load i16, ptr %gmp1403, align 1, !alias.scope !4, !noalias !3
  %c1405 = zext i16 %gml1404 to i64
  %wp1406 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1405, ptr %wp1406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c7c word 0xf9400929
  %r1407.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1407 = load i64, ptr %r1407.p, align 8, !alias.scope !3, !noalias !4
  %t1408 = add i64 %r1407, 16
  %gmp1409 = inttoptr i64 %t1408 to ptr
  %gml1410 = load i64, ptr %gmp1409, align 1, !alias.scope !4, !noalias !3
  %wp1411 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1410, ptr %wp1411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c80 word 0xf940252b
  %r1412.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1412 = load i64, ptr %r1412.p, align 8, !alias.scope !3, !noalias !4
  %t1413 = add i64 %r1412, 72
  %gmp1414 = inttoptr i64 %t1413 to ptr
  %gml1415 = load i64, ptr %gmp1414, align 1, !alias.scope !4, !noalias !3
  %wp1416 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1415, ptr %wp1416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c84 word 0xf9400929
  %r1417.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1417 = load i64, ptr %r1417.p, align 8, !alias.scope !3, !noalias !4
  %t1418 = add i64 %r1417, 16
  %gmp1419 = inttoptr i64 %t1418 to ptr
  %gml1420 = load i64, ptr %gmp1419, align 1, !alias.scope !4, !noalias !3
  %wp1421 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1420, ptr %wp1421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c88 word 0x9bac2d4a
  %r1422.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1422 = load i64, ptr %r1422.p, align 8, !alias.scope !3, !noalias !4
  %c1423 = trunc i64 %r1422 to i32
  %c1424 = zext i32 %c1423 to i64
  %r1425.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1425 = load i64, ptr %r1425.p, align 8, !alias.scope !3, !noalias !4
  %c1426 = trunc i64 %r1425 to i32
  %c1427 = zext i32 %c1426 to i64
  %t1428 = mul i64 %c1424, %c1427
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %t1430 = add i64 %r1429, %t1428
  %wp1431 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1430, ptr %wp1431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c8c word 0xb980154a
  %r1432.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1432 = load i64, ptr %r1432.p, align 8, !alias.scope !3, !noalias !4
  %t1433 = add i64 %r1432, 20
  %gmp1434 = inttoptr i64 %t1433 to ptr
  %gml1435 = load i32, ptr %gmp1434, align 1, !alias.scope !4, !noalias !3
  %c1436 = sext i32 %gml1435 to i64
  %wp1437 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1436, ptr %wp1437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c90 word 0x8b0a0120
  %r1438.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1438 = load i64, ptr %r1438.p, align 8, !alias.scope !3, !noalias !4
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %t1440 = add i64 %r1438, %r1439
  %wp1441 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1440, ptr %wp1441, align 8, !alias.scope !3, !noalias !4
  br label %L_800268c94
L_800268c98_ft:
  ; @pc 0x800268c98 word 0xb9403c09
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %t1446 = add i64 %r1445, 60
  %gmp1447 = inttoptr i64 %t1446 to ptr
  %gml1448 = load i32, ptr %gmp1447, align 1, !alias.scope !4, !noalias !3
  %c1449 = zext i32 %gml1448 to i64
  %wp1450 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1449, ptr %wp1450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268c9c word 0xb9404c0a
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %t1452 = add i64 %r1451, 76
  %gmp1453 = inttoptr i64 %t1452 to ptr
  %gml1454 = load i32, ptr %gmp1453, align 1, !alias.scope !4, !noalias !3
  %c1455 = zext i32 %gml1454 to i64
  %wp1456 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1455, ptr %wp1456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ca0 word 0x0b090149
  %r1457.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1457 = load i64, ptr %r1457.p, align 8, !alias.scope !3, !noalias !4
  %c1458 = trunc i64 %r1457 to i32
  %r1459.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1459 = load i64, ptr %r1459.p, align 8, !alias.scope !3, !noalias !4
  %c1460 = trunc i64 %r1459 to i32
  %t1461 = add i32 %c1458, %c1460
  %c1462 = zext i32 %t1461 to i64
  %wp1463 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1462, ptr %wp1463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ca4 word 0xb9405c0a
  %r1464.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1464 = load i64, ptr %r1464.p, align 8, !alias.scope !3, !noalias !4
  %t1465 = add i64 %r1464, 92
  %gmp1466 = inttoptr i64 %t1465 to ptr
  %gml1467 = load i32, ptr %gmp1466, align 1, !alias.scope !4, !noalias !3
  %c1468 = zext i32 %gml1467 to i64
  %wp1469 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1468, ptr %wp1469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ca8 word 0x0b0a0129
  %r1470.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1470 = load i64, ptr %r1470.p, align 8, !alias.scope !3, !noalias !4
  %c1471 = trunc i64 %r1470 to i32
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %c1473 = trunc i64 %r1472 to i32
  %t1474 = add i32 %c1471, %c1473
  %c1475 = zext i32 %t1474 to i64
  %wp1476 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1475, ptr %wp1476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cac word 0x531e7529
  %r1477.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1477 = load i64, ptr %r1477.p, align 8, !alias.scope !3, !noalias !4
  %c1478 = trunc i64 %r1477 to i32
  %ror1479 = call i32 @llvm.fshr.i32(i32 %c1478, i32 %c1478, i32 30)
  %t1480 = and i32 %ror1479, -4
  %c1481 = zext i32 %t1480 to i64
  %wp1482 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1481, ptr %wp1482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cb0 word 0x0b3aad38
  %r1483.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1483 = load i64, ptr %r1483.p, align 8, !alias.scope !3, !noalias !4
  %c1484 = trunc i64 %r1483 to i32
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %c1486 = trunc i64 %r1485 to i16
  %c1487 = sext i16 %c1486 to i64
  %t1488 = shl i64 %c1487, 3
  %c1489 = trunc i64 %t1488 to i32
  %t1490 = add i32 %c1484, %c1489
  %c1491 = zext i32 %t1490 to i64
  %wp1492 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1491, ptr %wp1492, align 8, !alias.scope !3, !noalias !4
  br label %L_800268cb4
L_800268cbc_ft:
  ; @pc 0x800268cbc word 0xf9400008
  %r1500.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1500 = load i64, ptr %r1500.p, align 8, !alias.scope !3, !noalias !4
  %gmp1501 = inttoptr i64 %r1500 to ptr
  %gml1502 = load i64, ptr %gmp1501, align 1, !alias.scope !4, !noalias !3
  %wp1503 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1502, ptr %wp1503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cc0 word 0xf001b7a9
  %wp1504 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cc4 word 0xf9400908
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %t1506 = add i64 %r1505, 16
  %gmp1507 = inttoptr i64 %t1506 to ptr
  %gml1508 = load i64, ptr %gmp1507, align 1, !alias.scope !4, !noalias !3
  %wp1509 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1508, ptr %wp1509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268cc8 word 0xf9462929
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %t1511 = add i64 %r1510, 3152
  %gmp1512 = inttoptr i64 %t1511 to ptr
  %gml1513 = load i64, ptr %gmp1512, align 1, !alias.scope !4, !noalias !3
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268ccc word 0xeb09011f
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 72
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
  ; @pc 0x800268cd0 word 0x540017e1
  %r1537.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1537 = load i64, ptr %r1537.p, align 8, !alias.scope !3, !noalias !4
  %fsh1539 = lshr i64 %r1537, 30
  %ftr1540 = trunc i64 %fsh1539 to i1
  %cond1538 = xor i1 %ftr1540, true
  br i1 %cond1538, label %L_800268fcc, label %L_800268cd4_ft
L_800268cd4_ft:
  ; @pc 0x800268cd4 word 0xf9400400
  %r1541.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1541 = load i64, ptr %r1541.p, align 8, !alias.scope !3, !noalias !4
  %t1542 = add i64 %r1541, 8
  %gmp1543 = inttoptr i64 %t1542 to ptr
  %gml1544 = load i64, ptr %gmp1543, align 1, !alias.scope !4, !noalias !3
  %wp1545 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1544, ptr %wp1545, align 8, !alias.scope !3, !noalias !4
  br label %L_800268cd8
L_800268d00_ft:
  ; @pc 0x800268d00 word 0x36009b38
  %r1603.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1603 = load i64, ptr %r1603.p, align 8, !alias.scope !3, !noalias !4
  %t1604 = and i64 %r1603, 1
  %cmp1605 = icmp eq i64 %t1604, 0
  br i1 %cmp1605, label %L_80026a064, label %L_800268d04
L_800268d1c_ft:
  ; @pc 0x800268d1c word 0xf9400408
  %r1631.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1631 = load i64, ptr %r1631.p, align 8, !alias.scope !3, !noalias !4
  %t1632 = add i64 %r1631, 8
  %gmp1633 = inttoptr i64 %t1632 to ptr
  %gml1634 = load i64, ptr %gmp1633, align 1, !alias.scope !4, !noalias !3
  %wp1635 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1634, ptr %wp1635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d20 word 0x5280002b
  %c1636 = zext i32 1 to i64
  %wp1637 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1636, ptr %wp1637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d24 word 0x72a0080b
  %r1638.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1638 = load i64, ptr %r1638.p, align 8, !alias.scope !3, !noalias !4
  %t1639 = and i64 %r1638, -4294901761
  %t1640 = or i64 %t1639, 4194304
  %c1641 = trunc i64 %t1640 to i32
  %c1642 = zext i32 %c1641 to i64
  %wp1643 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1642, ptr %wp1643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d28 word 0xf940032a
  %r1644.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1644 = load i64, ptr %r1644.p, align 8, !alias.scope !3, !noalias !4
  %gmp1645 = inttoptr i64 %r1644 to ptr
  %gml1646 = load i64, ptr %gmp1645, align 1, !alias.scope !4, !noalias !3
  %wp1647 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1646, ptr %wp1647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d2c word 0x8b090d09
  %r1648.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1648 = load i64, ptr %r1648.p, align 8, !alias.scope !3, !noalias !4
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %t1650 = shl i64 %r1649, 3
  %t1651 = add i64 %r1648, %t1650
  %wp1652 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1651, ptr %wp1652, align 8, !alias.scope !3, !noalias !4
  br label %L_800268d30
L_800268d40_ft:
  ; @pc 0x800268d40 word 0xb940318d
  %r1689.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1689 = load i64, ptr %r1689.p, align 8, !alias.scope !3, !noalias !4
  %t1690 = add i64 %r1689, 48
  %gmp1691 = inttoptr i64 %t1690 to ptr
  %gml1692 = load i32, ptr %gmp1691, align 1, !alias.scope !4, !noalias !3
  %c1693 = zext i32 %gml1692 to i64
  %wp1694 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1693, ptr %wp1694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d44 word 0x37f801ad
  %r1695.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1695 = load i64, ptr %r1695.p, align 8, !alias.scope !3, !noalias !4
  %t1696 = and i64 %r1695, 2147483648
  %cmp1697 = icmp ne i64 %t1696, 0
  br i1 %cmp1697, label %L_800268d78, label %L_800268d48_ft
L_800268d48_ft:
  ; @pc 0x800268d48 word 0xf940018d
  %r1698.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1698 = load i64, ptr %r1698.p, align 8, !alias.scope !3, !noalias !4
  %gmp1699 = inttoptr i64 %r1698 to ptr
  %gml1700 = load i64, ptr %gmp1699, align 1, !alias.scope !4, !noalias !3
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1700, ptr %wp1701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d4c word 0xeb0a01bf
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %t1704 = sub i64 %r1702, %r1703
  %fn1705 = icmp slt i64 %t1704, 0
  %fz1706 = icmp eq i64 %t1704, 0
  %fc1707 = icmp uge i64 %r1702, %r1703
  %fx11708 = xor i64 %r1702, %r1703
  %fx21709 = xor i64 %r1702, %t1704
  %fva1710 = and i64 %fx11708, %fx21709
  %fv1711 = icmp slt i64 %fva1710, 0
  %nz1712 = zext i1 %fn1705 to i64
  %zz1713 = zext i1 %fz1706 to i64
  %cz1714 = zext i1 %fc1707 to i64
  %vz1715 = zext i1 %fv1711 to i64
  %ns1716 = shl i64 %nz1712, 31
  %zs1717 = shl i64 %zz1713, 30
  %cs1718 = shl i64 %cz1714, 29
  %vs1719 = shl i64 %vz1715, 28
  %nzor1720 = or i64 %ns1716, %zs1717
  %cvor1721 = or i64 %cs1718, %vs1719
  %nzcv1722 = or i64 %nzor1720, %cvor1721
  %wp1723 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1722, ptr %wp1723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d50 word 0x54001bc0
  %r1724.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1724 = load i64, ptr %r1724.p, align 8, !alias.scope !3, !noalias !4
  %fsh1726 = lshr i64 %r1724, 30
  %cond1725 = trunc i64 %fsh1726 to i1
  br i1 %cond1725, label %L_8002690c8, label %L_800268d54_ft
L_800268d54_ft:
  ; @pc 0x800268d54 word 0xaa0b03ee
  %r1727.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1727 = load i64, ptr %r1727.p, align 8, !alias.scope !3, !noalias !4
  %t1728 = or i64 0, %r1727
  %wp1729 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1728, ptr %wp1729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d58 word 0xaa0a03ef
  %r1730.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1730 = load i64, ptr %r1730.p, align 8, !alias.scope !3, !noalias !4
  %t1731 = or i64 0, %r1730
  %wp1732 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1731, ptr %wp1732, align 8, !alias.scope !3, !noalias !4
  br label %L_800268d5c
L_800268d6c_ft:
  ; @pc 0x800268d6c word 0x34001af0
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %c1776 = trunc i64 %r1775 to i32
  %cmp1777 = icmp eq i32 %c1776, 0
  br i1 %cmp1777, label %L_8002690c8, label %L_800268d70_ft
L_800268d70_ft:
  ; @pc 0x800268d70 word 0xf10005ce
  %r1778.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1778 = load i64, ptr %r1778.p, align 8, !alias.scope !3, !noalias !4
  %t1779 = sub i64 %r1778, 1
  %fn1780 = icmp slt i64 %t1779, 0
  %fz1781 = icmp eq i64 %t1779, 0
  %fc1782 = icmp uge i64 %r1778, 1
  %fx11783 = xor i64 %r1778, 1
  %fx21784 = xor i64 %r1778, %t1779
  %fva1785 = and i64 %fx11783, %fx21784
  %fv1786 = icmp slt i64 %fva1785, 0
  %nz1787 = zext i1 %fn1780 to i64
  %zz1788 = zext i1 %fz1781 to i64
  %cz1789 = zext i1 %fc1782 to i64
  %vz1790 = zext i1 %fv1786 to i64
  %ns1791 = shl i64 %nz1787, 31
  %zs1792 = shl i64 %zz1788, 30
  %cs1793 = shl i64 %cz1789, 29
  %vs1794 = shl i64 %vz1790, 28
  %nzor1795 = or i64 %ns1791, %zs1792
  %cvor1796 = or i64 %cs1793, %vs1794
  %nzcv1797 = or i64 %nzor1795, %cvor1796
  %wp1798 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1797, ptr %wp1798, align 8, !alias.scope !3, !noalias !4
  %wp1799 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1779, ptr %wp1799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d74 word 0x54ffff41
  %r1800.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1800 = load i64, ptr %r1800.p, align 8, !alias.scope !3, !noalias !4
  %fsh1802 = lshr i64 %r1800, 30
  %ftr1803 = trunc i64 %fsh1802 to i1
  %cond1801 = xor i1 %ftr1803, true
  br i1 %cond1801, label %L_800268d5c, label %L_800268d78
L_800268d84_ft:
  ; @pc 0x800268d84 word 0x17ffff3c
  br label %L_800268a74
L_800268d98_ft:
  ; @pc 0x800268d98 word 0x2a1f03f7
  %t1865 = or i32 0, 0
  %c1866 = zext i32 %t1865 to i64
  %wp1867 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1866, ptr %wp1867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268d9c word 0x2a1f03fb
  %t1868 = or i32 0, 0
  %c1869 = zext i32 %t1868 to i64
  %wp1870 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c1869, ptr %wp1870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268da0 word 0x5280003c
  %c1871 = zext i32 1 to i64
  %wp1872 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1871, ptr %wp1872, align 8, !alias.scope !3, !noalias !4
  br label %L_800268da4
L_800268e14_ft:
  ; @pc 0x800268e14 word 0x17ffff01
  br label %L_800268a18
L_800268e7c_ft:
  ; @pc 0x800268e7c word 0x17fffee7
  br label %L_800268a18
L_800268ec4_ft:
  ; @pc 0x800268ec4 word 0x17fffed5
  br label %L_800268a18
L_800268f24_ft:
  ; @pc 0x800268f24 word 0x17fffebd
  br label %L_800268a18
L_800268f84_ft:
  ; @pc 0x800268f84 word 0x17fffea5
  br label %L_800268a18
L_800268fa0_ft:
  ; @pc 0x800268fa0 word 0x54ffe440
  %r2322.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2322 = load i64, ptr %r2322.p, align 8, !alias.scope !3, !noalias !4
  %fsh2324 = lshr i64 %r2322, 30
  %cond2323 = trunc i64 %fsh2324 to i1
  br i1 %cond2323, label %L_800268c28, label %L_800268fa4_ft
L_800268fa4_ft:
  ; @pc 0x800268fa4 word 0xf94006c8
  %r2325.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2325 = load i64, ptr %r2325.p, align 8, !alias.scope !3, !noalias !4
  %t2326 = add i64 %r2325, 8
  %gmp2327 = inttoptr i64 %t2326 to ptr
  %gml2328 = load i64, ptr %gmp2327, align 1, !alias.scope !4, !noalias !3
  %wp2329 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2328, ptr %wp2329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fa8 word 0x12003ee1
  %r2330.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2330 = load i64, ptr %r2330.p, align 8, !alias.scope !3, !noalias !4
  %c2331 = trunc i64 %r2330 to i32
  %t2332 = and i32 %c2331, 65535
  %c2333 = zext i32 %t2332 to i64
  %wp2334 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2333, ptr %wp2334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fac word 0xf9401100
  %r2335.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2335 = load i64, ptr %r2335.p, align 8, !alias.scope !3, !noalias !4
  %t2336 = add i64 %r2335, 32
  %gmp2337 = inttoptr i64 %t2336 to ptr
  %gml2338 = load i64, ptr %gmp2337, align 1, !alias.scope !4, !noalias !3
  %wp2339 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2338, ptr %wp2339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fb0 word 0xf9400008
  %r2340.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2340 = load i64, ptr %r2340.p, align 8, !alias.scope !3, !noalias !4
  %gmp2341 = inttoptr i64 %r2340 to ptr
  %gml2342 = load i64, ptr %gmp2341, align 1, !alias.scope !4, !noalias !3
  %wp2343 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2342, ptr %wp2343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fb4 word 0xf9408108
  %r2344.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2344 = load i64, ptr %r2344.p, align 8, !alias.scope !3, !noalias !4
  %t2345 = add i64 %r2344, 256
  %gmp2346 = inttoptr i64 %t2345 to ptr
  %gml2347 = load i64, ptr %gmp2346, align 1, !alias.scope !4, !noalias !3
  %wp2348 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2347, ptr %wp2348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800268fb8 word 0xd63f0100
  %r2349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2349 = load i64, ptr %r2349.p, align 8, !alias.scope !3, !noalias !4
  %fp2350 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2349, ptr %fp2350, align 8, !alias.scope !3, !noalias !4
  %wp2351 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265532, ptr %wp2351, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800268fbc word 0x2a1f03fc
  %t2352 = or i32 0, 0
  %c2353 = zext i32 %t2352 to i64
  %wp2354 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c2353, ptr %wp2354, align 8, !alias.scope !3, !noalias !4
  br label %L_800268fc0
L_800269070_ft:
  ; @pc 0x800269070 word 0xb001c2a8
  %wp2498 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp2498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269074 word 0xd0014d29
  %wp2499 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34405937152, ptr %wp2499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269078 word 0x91047d29
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %t2501 = add i64 %r2500, 287
  %wp2502 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2501, ptr %wp2502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026907c word 0xb001c2a0
  %wp2503 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp2503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269080 word 0x91154000
  %r2504.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2504 = load i64, ptr %r2504.p, align 8, !alias.scope !3, !noalias !4
  %t2505 = add i64 %r2504, 1360
  %wp2506 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2505, ptr %wp2506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269084 word 0xf902a509
  %r2507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2507 = load i64, ptr %r2507.p, align 8, !alias.scope !3, !noalias !4
  %t2508 = add i64 %r2507, 1352
  %r2509.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2509 = load i64, ptr %r2509.p, align 8, !alias.scope !3, !noalias !4
  %gmp2510 = inttoptr i64 %t2508 to ptr
  store i64 %r2509, ptr %gmp2510, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269088 word 0x94a4ea4a
  %wp2511 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362265740, ptr %wp2511, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80026908c word 0xaa1c03e6
  %r2512.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2512 = load i64, ptr %r2512.p, align 8, !alias.scope !3, !noalias !4
  %t2513 = or i64 0, %r2512
  %wp2514 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2513, ptr %wp2514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269090 word 0xaa1b03e5
  %r2515.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2515 = load i64, ptr %r2515.p, align 8, !alias.scope !3, !noalias !4
  %t2516 = or i64 0, %r2515
  %wp2517 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2516, ptr %wp2517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269094 word 0x2a1903e4
  %r2518.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2518 = load i64, ptr %r2518.p, align 8, !alias.scope !3, !noalias !4
  %c2519 = trunc i64 %r2518 to i32
  %t2520 = or i32 0, %c2519
  %c2521 = zext i32 %t2520 to i64
  %wp2522 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2521, ptr %wp2522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269098 word 0x17fffee9
  br label %L_800268c3c
L_8002690cc_ft:
  ; @pc 0x8002690cc word 0xf9400348
  %r2564.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2564 = load i64, ptr %r2564.p, align 8, !alias.scope !3, !noalias !4
  %gmp2565 = inttoptr i64 %r2564 to ptr
  %gml2566 = load i64, ptr %gmp2565, align 1, !alias.scope !4, !noalias !3
  %wp2567 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2566, ptr %wp2567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690d0 word 0x927ef508
  %r2568.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2568 = load i64, ptr %r2568.p, align 8, !alias.scope !3, !noalias !4
  %t2569 = and i64 %r2568, -4
  %wp2570 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2569, ptr %wp2570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002690d4 word 0xf9000588
  %r2571.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2571 = load i64, ptr %r2571.p, align 8, !alias.scope !3, !noalias !4
  %t2572 = add i64 %r2571, 8
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %gmp2574 = inttoptr i64 %t2572 to ptr
  store i64 %r2573, ptr %gmp2574, align 1, !alias.scope !4, !noalias !3
  br label %L_8002690d8
L_8002691d8_ft:
  ; @pc 0x8002691d8 word 0xaa1303fa
  %r2803.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2803 = load i64, ptr %r2803.p, align 8, !alias.scope !3, !noalias !4
  %t2804 = or i64 0, %r2803
  %wp2805 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2804, ptr %wp2805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002691dc word 0x17fffec7
  br label %L_800268cf8
L_800269230_ft:
  ; @pc 0x800269230 word 0x12003ee9
  %r2912.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2912 = load i64, ptr %r2912.p, align 8, !alias.scope !3, !noalias !4
  %c2913 = trunc i64 %r2912 to i32
  %t2914 = and i32 %c2913, 65535
  %c2915 = zext i32 %t2914 to i64
  %wp2916 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2915, ptr %wp2916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269234 word 0x5280038a
  %c2917 = zext i32 28 to i64
  %wp2918 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2917, ptr %wp2918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269238 word 0x9baa2128
  %r2919.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2919 = load i64, ptr %r2919.p, align 8, !alias.scope !3, !noalias !4
  %c2920 = trunc i64 %r2919 to i32
  %c2921 = zext i32 %c2920 to i64
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %c2923 = trunc i64 %r2922 to i32
  %c2924 = zext i32 %c2923 to i64
  %t2925 = mul i64 %c2921, %c2924
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %t2927 = add i64 %r2926, %t2925
  %wp2928 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2927, ptr %wp2928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026923c word 0x79403d02
  %r2929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2929 = load i64, ptr %r2929.p, align 8, !alias.scope !3, !noalias !4
  %t2930 = add i64 %r2929, 30
  %gmp2931 = inttoptr i64 %t2930 to ptr
  %gml2932 = load i16, ptr %gmp2931, align 1, !alias.scope !4, !noalias !3
  %c2933 = zext i16 %gml2932 to i64
  %wp2934 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2933, ptr %wp2934, align 8, !alias.scope !3, !noalias !4
  br label %L_800269240
L_80026930c_ft:
  ; @pc 0x80026930c word 0xb001b728
  %wp3125 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269310 word 0xd001b7a9
  %wp3126 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269314 word 0xf942f908
  %r3127.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3127 = load i64, ptr %r3127.p, align 8, !alias.scope !3, !noalias !4
  %t3128 = add i64 %r3127, 1520
  %gmp3129 = inttoptr i64 %t3128 to ptr
  %gml3130 = load i64, ptr %gmp3129, align 1, !alias.scope !4, !noalias !3
  %wp3131 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3130, ptr %wp3131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269318 word 0xf9452929
  %r3132.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3132 = load i64, ptr %r3132.p, align 8, !alias.scope !3, !noalias !4
  %t3133 = add i64 %r3132, 2640
  %gmp3134 = inttoptr i64 %t3133 to ptr
  %gml3135 = load i64, ptr %gmp3134, align 1, !alias.scope !4, !noalias !3
  %wp3136 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3135, ptr %wp3136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026931c word 0xd001b7a0
  %wp3137 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269320 word 0x91004108
  %r3138.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3138 = load i64, ptr %r3138.p, align 8, !alias.scope !3, !noalias !4
  %t3139 = add i64 %r3138, 16
  %wp3140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3139, ptr %wp3140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269324 word 0xf9000128
  %r3141.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3141 = load i64, ptr %r3141.p, align 8, !alias.scope !3, !noalias !4
  %r3142.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3142 = load i64, ptr %r3142.p, align 8, !alias.scope !3, !noalias !4
  %gmp3143 = inttoptr i64 %r3141 to ptr
  store i64 %r3142, ptr %gmp3143, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269328 word 0xf9452c00
  %r3144.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3144 = load i64, ptr %r3144.p, align 8, !alias.scope !3, !noalias !4
  %t3145 = add i64 %r3144, 2648
  %gmp3146 = inttoptr i64 %t3145 to ptr
  %gml3147 = load i64, ptr %gmp3146, align 1, !alias.scope !4, !noalias !3
  %wp3148 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3147, ptr %wp3148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026932c word 0x94a4e9a1
  %wp3149 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266416, ptr %wp3149, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269330 word 0xb9400feb
  %r3150.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3150 = load i64, ptr %r3150.p, align 8, !alias.scope !3, !noalias !4
  %t3151 = add i64 %r3150, 12
  %gmp3152 = inttoptr i64 %t3151 to ptr
  %gml3153 = load i32, ptr %gmp3152, align 1, !alias.scope !4, !noalias !3
  %c3154 = zext i32 %gml3153 to i64
  %wp3155 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3154, ptr %wp3155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269334 word 0x2a1403e7
  %r3156.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3156 = load i64, ptr %r3156.p, align 8, !alias.scope !3, !noalias !4
  %c3157 = trunc i64 %r3156 to i32
  %t3158 = or i32 0, %c3157
  %c3159 = zext i32 %t3158 to i64
  %wp3160 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3159, ptr %wp3160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269338 word 0xaa1903e6
  %r3161.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3161 = load i64, ptr %r3161.p, align 8, !alias.scope !3, !noalias !4
  %t3162 = or i64 0, %r3161
  %wp3163 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t3162, ptr %wp3163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026933c word 0xf9400bea
  %r3164.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3164 = load i64, ptr %r3164.p, align 8, !alias.scope !3, !noalias !4
  %t3165 = add i64 %r3164, 16
  %gmp3166 = inttoptr i64 %t3165 to ptr
  %gml3167 = load i64, ptr %gmp3166, align 1, !alias.scope !4, !noalias !3
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3167, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269340 word 0xaa1803e5
  %r3169.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3169 = load i64, ptr %r3169.p, align 8, !alias.scope !3, !noalias !4
  %t3170 = or i64 0, %r3169
  %wp3171 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3170, ptr %wp3171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269344 word 0xb94003e4
  %r3172.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3172 = load i64, ptr %r3172.p, align 8, !alias.scope !3, !noalias !4
  %gmp3173 = inttoptr i64 %r3172 to ptr
  %gml3174 = load i32, ptr %gmp3173, align 1, !alias.scope !4, !noalias !3
  %c3175 = zext i32 %gml3174 to i64
  %wp3176 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3175, ptr %wp3176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269348 word 0x17fffde1
  br label %L_800268acc
L_8002693a4_ft:
  ; @pc 0x8002693a4 word 0xb001b728
  %wp3253 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693a8 word 0xd001b7a9
  %wp3254 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693ac word 0xf942f908
  %r3255.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3255 = load i64, ptr %r3255.p, align 8, !alias.scope !3, !noalias !4
  %t3256 = add i64 %r3255, 1520
  %gmp3257 = inttoptr i64 %t3256 to ptr
  %gml3258 = load i64, ptr %gmp3257, align 1, !alias.scope !4, !noalias !3
  %wp3259 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3258, ptr %wp3259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693b0 word 0xf9453129
  %r3260.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3260 = load i64, ptr %r3260.p, align 8, !alias.scope !3, !noalias !4
  %t3261 = add i64 %r3260, 2656
  %gmp3262 = inttoptr i64 %t3261 to ptr
  %gml3263 = load i64, ptr %gmp3262, align 1, !alias.scope !4, !noalias !3
  %wp3264 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3263, ptr %wp3264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693b4 word 0xd001b7a0
  %wp3265 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693b8 word 0x91004108
  %r3266.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3266 = load i64, ptr %r3266.p, align 8, !alias.scope !3, !noalias !4
  %t3267 = add i64 %r3266, 16
  %wp3268 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3267, ptr %wp3268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693bc word 0xf9000128
  %r3269.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3269 = load i64, ptr %r3269.p, align 8, !alias.scope !3, !noalias !4
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %gmp3271 = inttoptr i64 %r3269 to ptr
  store i64 %r3270, ptr %gmp3271, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002693c0 word 0xf9453400
  %r3272.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3272 = load i64, ptr %r3272.p, align 8, !alias.scope !3, !noalias !4
  %t3273 = add i64 %r3272, 2664
  %gmp3274 = inttoptr i64 %t3273 to ptr
  %gml3275 = load i64, ptr %gmp3274, align 1, !alias.scope !4, !noalias !3
  %wp3276 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3275, ptr %wp3276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693c4 word 0x94a4e97b
  %wp3277 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266568, ptr %wp3277, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8002693c8 word 0xf001b86e
  %wp3278 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693cc word 0xf001b86d
  %wp3279 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693d0 word 0xf941b5ce
  %r3280.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3280 = load i64, ptr %r3280.p, align 8, !alias.scope !3, !noalias !4
  %t3281 = add i64 %r3280, 872
  %gmp3282 = inttoptr i64 %t3281 to ptr
  %gml3283 = load i64, ptr %gmp3282, align 1, !alias.scope !4, !noalias !3
  %wp3284 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3283, ptr %wp3284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693d4 word 0xb001b72c
  %wp3285 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693d8 word 0xb001b726
  %wp3286 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693dc word 0xf941bdad
  %r3287.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3287 = load i64, ptr %r3287.p, align 8, !alias.scope !3, !noalias !4
  %t3288 = add i64 %r3287, 888
  %gmp3289 = inttoptr i64 %t3288 to ptr
  %gml3290 = load i64, ptr %gmp3289, align 1, !alias.scope !4, !noalias !3
  %wp3291 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3290, ptr %wp3291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693e0 word 0xf943018c
  %r3292.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3292 = load i64, ptr %r3292.p, align 8, !alias.scope !3, !noalias !4
  %t3293 = add i64 %r3292, 1536
  %gmp3294 = inttoptr i64 %t3293 to ptr
  %gml3295 = load i64, ptr %gmp3294, align 1, !alias.scope !4, !noalias !3
  %wp3296 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3295, ptr %wp3296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693e4 word 0xaa1903e9
  %r3297.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3297 = load i64, ptr %r3297.p, align 8, !alias.scope !3, !noalias !4
  %t3298 = or i64 0, %r3297
  %wp3299 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3298, ptr %wp3299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693e8 word 0x2a1403e7
  %r3300.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3300 = load i64, ptr %r3300.p, align 8, !alias.scope !3, !noalias !4
  %c3301 = trunc i64 %r3300 to i32
  %t3302 = or i32 0, %c3301
  %c3303 = zext i32 %t3302 to i64
  %wp3304 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3303, ptr %wp3304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693ec word 0xb9400feb
  %r3305.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3305 = load i64, ptr %r3305.p, align 8, !alias.scope !3, !noalias !4
  %t3306 = add i64 %r3305, 12
  %gmp3307 = inttoptr i64 %t3306 to ptr
  %gml3308 = load i32, ptr %gmp3307, align 1, !alias.scope !4, !noalias !3
  %c3309 = zext i32 %gml3308 to i64
  %wp3310 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3309, ptr %wp3310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693f0 word 0xaa1803e5
  %r3311.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3311 = load i64, ptr %r3311.p, align 8, !alias.scope !3, !noalias !4
  %t3312 = or i64 0, %r3311
  %wp3313 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3312, ptr %wp3313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693f4 word 0xf9400bea
  %r3314.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3314 = load i64, ptr %r3314.p, align 8, !alias.scope !3, !noalias !4
  %t3315 = add i64 %r3314, 16
  %gmp3316 = inttoptr i64 %t3315 to ptr
  %gml3317 = load i64, ptr %gmp3316, align 1, !alias.scope !4, !noalias !3
  %wp3318 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3317, ptr %wp3318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693f8 word 0xf94398c6
  %r3319.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3319 = load i64, ptr %r3319.p, align 8, !alias.scope !3, !noalias !4
  %t3320 = add i64 %r3319, 1840
  %gmp3321 = inttoptr i64 %t3320 to ptr
  %gml3322 = load i64, ptr %gmp3321, align 1, !alias.scope !4, !noalias !3
  %wp3323 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3322, ptr %wp3323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002693fc word 0xb94003e4
  %r3324.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3324 = load i64, ptr %r3324.p, align 8, !alias.scope !3, !noalias !4
  %gmp3325 = inttoptr i64 %r3324 to ptr
  %gml3326 = load i32, ptr %gmp3325, align 1, !alias.scope !4, !noalias !3
  %c3327 = zext i32 %gml3326 to i64
  %wp3328 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3327, ptr %wp3328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269400 word 0x17fffdca
  br label %L_800268b28
L_80026945c_ft:
  ; @pc 0x80026945c word 0xb001b728
  %wp3405 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269460 word 0xd001b7a9
  %wp3406 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269464 word 0xf942f908
  %r3407.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3407 = load i64, ptr %r3407.p, align 8, !alias.scope !3, !noalias !4
  %t3408 = add i64 %r3407, 1520
  %gmp3409 = inttoptr i64 %t3408 to ptr
  %gml3410 = load i64, ptr %gmp3409, align 1, !alias.scope !4, !noalias !3
  %wp3411 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3410, ptr %wp3411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269468 word 0xf9453929
  %r3412.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3412 = load i64, ptr %r3412.p, align 8, !alias.scope !3, !noalias !4
  %t3413 = add i64 %r3412, 2672
  %gmp3414 = inttoptr i64 %t3413 to ptr
  %gml3415 = load i64, ptr %gmp3414, align 1, !alias.scope !4, !noalias !3
  %wp3416 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3415, ptr %wp3416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026946c word 0xd001b7a0
  %wp3417 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269470 word 0x91004108
  %r3418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3418 = load i64, ptr %r3418.p, align 8, !alias.scope !3, !noalias !4
  %t3419 = add i64 %r3418, 16
  %wp3420 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3419, ptr %wp3420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269474 word 0xf9000128
  %r3421.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3421 = load i64, ptr %r3421.p, align 8, !alias.scope !3, !noalias !4
  %r3422.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3422 = load i64, ptr %r3422.p, align 8, !alias.scope !3, !noalias !4
  %gmp3423 = inttoptr i64 %r3421 to ptr
  store i64 %r3422, ptr %gmp3423, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269478 word 0xf9453c00
  %r3424.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3424 = load i64, ptr %r3424.p, align 8, !alias.scope !3, !noalias !4
  %t3425 = add i64 %r3424, 2680
  %gmp3426 = inttoptr i64 %t3425 to ptr
  %gml3427 = load i64, ptr %gmp3426, align 1, !alias.scope !4, !noalias !3
  %wp3428 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3427, ptr %wp3428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026947c word 0x94a4e94d
  %wp3429 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266752, ptr %wp3429, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269480 word 0xf001b86e
  %wp3430 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269484 word 0xf001b86d
  %wp3431 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269488 word 0xf941b5ce
  %r3432.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3432 = load i64, ptr %r3432.p, align 8, !alias.scope !3, !noalias !4
  %t3433 = add i64 %r3432, 872
  %gmp3434 = inttoptr i64 %t3433 to ptr
  %gml3435 = load i64, ptr %gmp3434, align 1, !alias.scope !4, !noalias !3
  %wp3436 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3435, ptr %wp3436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026948c word 0xb001b72c
  %wp3437 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269490 word 0xb001b726
  %wp3438 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269494 word 0xf941bdad
  %r3439.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3439 = load i64, ptr %r3439.p, align 8, !alias.scope !3, !noalias !4
  %t3440 = add i64 %r3439, 888
  %gmp3441 = inttoptr i64 %t3440 to ptr
  %gml3442 = load i64, ptr %gmp3441, align 1, !alias.scope !4, !noalias !3
  %wp3443 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3442, ptr %wp3443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269498 word 0xf943018c
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %t3445 = add i64 %r3444, 1536
  %gmp3446 = inttoptr i64 %t3445 to ptr
  %gml3447 = load i64, ptr %gmp3446, align 1, !alias.scope !4, !noalias !3
  %wp3448 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3447, ptr %wp3448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026949c word 0xaa1903e9
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %t3450 = or i64 0, %r3449
  %wp3451 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3450, ptr %wp3451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694a0 word 0x2a1403e7
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %c3453 = trunc i64 %r3452 to i32
  %t3454 = or i32 0, %c3453
  %c3455 = zext i32 %t3454 to i64
  %wp3456 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3455, ptr %wp3456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694a4 word 0xb9400feb
  %r3457.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3457 = load i64, ptr %r3457.p, align 8, !alias.scope !3, !noalias !4
  %t3458 = add i64 %r3457, 12
  %gmp3459 = inttoptr i64 %t3458 to ptr
  %gml3460 = load i32, ptr %gmp3459, align 1, !alias.scope !4, !noalias !3
  %c3461 = zext i32 %gml3460 to i64
  %wp3462 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3461, ptr %wp3462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694a8 word 0xaa1803e5
  %r3463.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3463 = load i64, ptr %r3463.p, align 8, !alias.scope !3, !noalias !4
  %t3464 = or i64 0, %r3463
  %wp3465 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3464, ptr %wp3465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694ac word 0xf9400bea
  %r3466.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3466 = load i64, ptr %r3466.p, align 8, !alias.scope !3, !noalias !4
  %t3467 = add i64 %r3466, 16
  %gmp3468 = inttoptr i64 %t3467 to ptr
  %gml3469 = load i64, ptr %gmp3468, align 1, !alias.scope !4, !noalias !3
  %wp3470 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3469, ptr %wp3470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694b0 word 0xf94398c6
  %r3471.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3471 = load i64, ptr %r3471.p, align 8, !alias.scope !3, !noalias !4
  %t3472 = add i64 %r3471, 1840
  %gmp3473 = inttoptr i64 %t3472 to ptr
  %gml3474 = load i64, ptr %gmp3473, align 1, !alias.scope !4, !noalias !3
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3474, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694b4 word 0xb94003e4
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %gmp3477 = inttoptr i64 %r3476 to ptr
  %gml3478 = load i32, ptr %gmp3477, align 1, !alias.scope !4, !noalias !3
  %c3479 = zext i32 %gml3478 to i64
  %wp3480 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3479, ptr %wp3480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002694b8 word 0x17fffdab
  br label %L_800268b64
L_800269514_ft:
  ; @pc 0x800269514 word 0xb001b728
  %wp3557 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269518 word 0xd001b7a9
  %wp3558 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026951c word 0xf942f908
  %r3559.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3559 = load i64, ptr %r3559.p, align 8, !alias.scope !3, !noalias !4
  %t3560 = add i64 %r3559, 1520
  %gmp3561 = inttoptr i64 %t3560 to ptr
  %gml3562 = load i64, ptr %gmp3561, align 1, !alias.scope !4, !noalias !3
  %wp3563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3562, ptr %wp3563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269520 word 0xf9454129
  %r3564.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3564 = load i64, ptr %r3564.p, align 8, !alias.scope !3, !noalias !4
  %t3565 = add i64 %r3564, 2688
  %gmp3566 = inttoptr i64 %t3565 to ptr
  %gml3567 = load i64, ptr %gmp3566, align 1, !alias.scope !4, !noalias !3
  %wp3568 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3567, ptr %wp3568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269524 word 0xd001b7a0
  %wp3569 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269528 word 0x91004108
  %r3570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3570 = load i64, ptr %r3570.p, align 8, !alias.scope !3, !noalias !4
  %t3571 = add i64 %r3570, 16
  %wp3572 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3571, ptr %wp3572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026952c word 0xf9000128
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %r3574.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3574 = load i64, ptr %r3574.p, align 8, !alias.scope !3, !noalias !4
  %gmp3575 = inttoptr i64 %r3573 to ptr
  store i64 %r3574, ptr %gmp3575, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269530 word 0xf9454400
  %r3576.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3576 = load i64, ptr %r3576.p, align 8, !alias.scope !3, !noalias !4
  %t3577 = add i64 %r3576, 2696
  %gmp3578 = inttoptr i64 %t3577 to ptr
  %gml3579 = load i64, ptr %gmp3578, align 1, !alias.scope !4, !noalias !3
  %wp3580 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3579, ptr %wp3580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269534 word 0x94a4e91f
  %wp3581 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362266936, ptr %wp3581, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269538 word 0xf001b86e
  %wp3582 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026953c word 0xf001b86d
  %wp3583 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269540 word 0xf941b5ce
  %r3584.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3584 = load i64, ptr %r3584.p, align 8, !alias.scope !3, !noalias !4
  %t3585 = add i64 %r3584, 872
  %gmp3586 = inttoptr i64 %t3585 to ptr
  %gml3587 = load i64, ptr %gmp3586, align 1, !alias.scope !4, !noalias !3
  %wp3588 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3587, ptr %wp3588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269544 word 0xb001b72c
  %wp3589 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269548 word 0xb001b726
  %wp3590 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026954c word 0xf941bdad
  %r3591.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3591 = load i64, ptr %r3591.p, align 8, !alias.scope !3, !noalias !4
  %t3592 = add i64 %r3591, 888
  %gmp3593 = inttoptr i64 %t3592 to ptr
  %gml3594 = load i64, ptr %gmp3593, align 1, !alias.scope !4, !noalias !3
  %wp3595 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3594, ptr %wp3595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269550 word 0xf943018c
  %r3596.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3596 = load i64, ptr %r3596.p, align 8, !alias.scope !3, !noalias !4
  %t3597 = add i64 %r3596, 1536
  %gmp3598 = inttoptr i64 %t3597 to ptr
  %gml3599 = load i64, ptr %gmp3598, align 1, !alias.scope !4, !noalias !3
  %wp3600 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3599, ptr %wp3600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269554 word 0xaa1903e9
  %r3601.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3601 = load i64, ptr %r3601.p, align 8, !alias.scope !3, !noalias !4
  %t3602 = or i64 0, %r3601
  %wp3603 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3602, ptr %wp3603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269558 word 0x2a1403e7
  %r3604.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3604 = load i64, ptr %r3604.p, align 8, !alias.scope !3, !noalias !4
  %c3605 = trunc i64 %r3604 to i32
  %t3606 = or i32 0, %c3605
  %c3607 = zext i32 %t3606 to i64
  %wp3608 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3607, ptr %wp3608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026955c word 0xb9400feb
  %r3609.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3609 = load i64, ptr %r3609.p, align 8, !alias.scope !3, !noalias !4
  %t3610 = add i64 %r3609, 12
  %gmp3611 = inttoptr i64 %t3610 to ptr
  %gml3612 = load i32, ptr %gmp3611, align 1, !alias.scope !4, !noalias !3
  %c3613 = zext i32 %gml3612 to i64
  %wp3614 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3613, ptr %wp3614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269560 word 0xaa1803e5
  %r3615.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3615 = load i64, ptr %r3615.p, align 8, !alias.scope !3, !noalias !4
  %t3616 = or i64 0, %r3615
  %wp3617 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3616, ptr %wp3617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269564 word 0xf9400bea
  %r3618.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3618 = load i64, ptr %r3618.p, align 8, !alias.scope !3, !noalias !4
  %t3619 = add i64 %r3618, 16
  %gmp3620 = inttoptr i64 %t3619 to ptr
  %gml3621 = load i64, ptr %gmp3620, align 1, !alias.scope !4, !noalias !3
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269568 word 0xf94398c6
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %t3624 = add i64 %r3623, 1840
  %gmp3625 = inttoptr i64 %t3624 to ptr
  %gml3626 = load i64, ptr %gmp3625, align 1, !alias.scope !4, !noalias !3
  %wp3627 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3626, ptr %wp3627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026956c word 0xb94003e4
  %r3628.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3628 = load i64, ptr %r3628.p, align 8, !alias.scope !3, !noalias !4
  %gmp3629 = inttoptr i64 %r3628 to ptr
  %gml3630 = load i32, ptr %gmp3629, align 1, !alias.scope !4, !noalias !3
  %c3631 = zext i32 %gml3630 to i64
  %wp3632 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3631, ptr %wp3632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269570 word 0x17fffd8c
  br label %L_800268ba0
L_8002695cc_ft:
  ; @pc 0x8002695cc word 0xb001b728
  %wp3709 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695d0 word 0xd001b7a9
  %wp3710 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695d4 word 0xf942f908
  %r3711.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3711 = load i64, ptr %r3711.p, align 8, !alias.scope !3, !noalias !4
  %t3712 = add i64 %r3711, 1520
  %gmp3713 = inttoptr i64 %t3712 to ptr
  %gml3714 = load i64, ptr %gmp3713, align 1, !alias.scope !4, !noalias !3
  %wp3715 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3714, ptr %wp3715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695d8 word 0xf9454929
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = add i64 %r3716, 2704
  %gmp3718 = inttoptr i64 %t3717 to ptr
  %gml3719 = load i64, ptr %gmp3718, align 1, !alias.scope !4, !noalias !3
  %wp3720 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3719, ptr %wp3720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695dc word 0xd001b7a0
  %wp3721 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695e0 word 0x91004108
  %r3722.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3722 = load i64, ptr %r3722.p, align 8, !alias.scope !3, !noalias !4
  %t3723 = add i64 %r3722, 16
  %wp3724 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3723, ptr %wp3724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695e4 word 0xf9000128
  %r3725.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3725 = load i64, ptr %r3725.p, align 8, !alias.scope !3, !noalias !4
  %r3726.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3726 = load i64, ptr %r3726.p, align 8, !alias.scope !3, !noalias !4
  %gmp3727 = inttoptr i64 %r3725 to ptr
  store i64 %r3726, ptr %gmp3727, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002695e8 word 0xf9454c00
  %r3728.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3728 = load i64, ptr %r3728.p, align 8, !alias.scope !3, !noalias !4
  %t3729 = add i64 %r3728, 2712
  %gmp3730 = inttoptr i64 %t3729 to ptr
  %gml3731 = load i64, ptr %gmp3730, align 1, !alias.scope !4, !noalias !3
  %wp3732 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3731, ptr %wp3732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695ec word 0x94a4e8f1
  %wp3733 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267120, ptr %wp3733, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8002695f0 word 0xf001b86e
  %wp3734 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695f4 word 0xf001b86d
  %wp3735 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695f8 word 0xf941b5ce
  %r3736.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3736 = load i64, ptr %r3736.p, align 8, !alias.scope !3, !noalias !4
  %t3737 = add i64 %r3736, 872
  %gmp3738 = inttoptr i64 %t3737 to ptr
  %gml3739 = load i64, ptr %gmp3738, align 1, !alias.scope !4, !noalias !3
  %wp3740 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3739, ptr %wp3740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002695fc word 0xb001b72c
  %wp3741 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269600 word 0xb001b726
  %wp3742 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 34419826688, ptr %wp3742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269604 word 0xf941bdad
  %r3743.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3743 = load i64, ptr %r3743.p, align 8, !alias.scope !3, !noalias !4
  %t3744 = add i64 %r3743, 888
  %gmp3745 = inttoptr i64 %t3744 to ptr
  %gml3746 = load i64, ptr %gmp3745, align 1, !alias.scope !4, !noalias !3
  %wp3747 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3746, ptr %wp3747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269608 word 0xf943018c
  %r3748.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3748 = load i64, ptr %r3748.p, align 8, !alias.scope !3, !noalias !4
  %t3749 = add i64 %r3748, 1536
  %gmp3750 = inttoptr i64 %t3749 to ptr
  %gml3751 = load i64, ptr %gmp3750, align 1, !alias.scope !4, !noalias !3
  %wp3752 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3751, ptr %wp3752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026960c word 0xaa1903e9
  %r3753.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3753 = load i64, ptr %r3753.p, align 8, !alias.scope !3, !noalias !4
  %t3754 = or i64 0, %r3753
  %wp3755 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3754, ptr %wp3755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269610 word 0x2a1403e7
  %r3756.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3756 = load i64, ptr %r3756.p, align 8, !alias.scope !3, !noalias !4
  %c3757 = trunc i64 %r3756 to i32
  %t3758 = or i32 0, %c3757
  %c3759 = zext i32 %t3758 to i64
  %wp3760 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3759, ptr %wp3760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269614 word 0xb9400feb
  %r3761.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3761 = load i64, ptr %r3761.p, align 8, !alias.scope !3, !noalias !4
  %t3762 = add i64 %r3761, 12
  %gmp3763 = inttoptr i64 %t3762 to ptr
  %gml3764 = load i32, ptr %gmp3763, align 1, !alias.scope !4, !noalias !3
  %c3765 = zext i32 %gml3764 to i64
  %wp3766 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3765, ptr %wp3766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269618 word 0xaa1803e5
  %r3767.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3767 = load i64, ptr %r3767.p, align 8, !alias.scope !3, !noalias !4
  %t3768 = or i64 0, %r3767
  %wp3769 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3768, ptr %wp3769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026961c word 0xf9400bea
  %r3770.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3770 = load i64, ptr %r3770.p, align 8, !alias.scope !3, !noalias !4
  %t3771 = add i64 %r3770, 16
  %gmp3772 = inttoptr i64 %t3771 to ptr
  %gml3773 = load i64, ptr %gmp3772, align 1, !alias.scope !4, !noalias !3
  %wp3774 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3773, ptr %wp3774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269620 word 0xf94398c6
  %r3775.p = getelementptr inbounds i8, ptr %c, i64 48
  %r3775 = load i64, ptr %r3775.p, align 8, !alias.scope !3, !noalias !4
  %t3776 = add i64 %r3775, 1840
  %gmp3777 = inttoptr i64 %t3776 to ptr
  %gml3778 = load i64, ptr %gmp3777, align 1, !alias.scope !4, !noalias !3
  %wp3779 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml3778, ptr %wp3779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269624 word 0xb94003e4
  %r3780.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3780 = load i64, ptr %r3780.p, align 8, !alias.scope !3, !noalias !4
  %gmp3781 = inttoptr i64 %r3780 to ptr
  %gml3782 = load i32, ptr %gmp3781, align 1, !alias.scope !4, !noalias !3
  %c3783 = zext i32 %gml3782 to i64
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269628 word 0x17fffd6d
  br label %L_800268bdc
L_800269684_ft:
  ; @pc 0x800269684 word 0xb001b728
  %wp3861 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269688 word 0xf001b869
  %wp3862 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026968c word 0xf942f908
  %r3863.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3863 = load i64, ptr %r3863.p, align 8, !alias.scope !3, !noalias !4
  %t3864 = add i64 %r3863, 1520
  %gmp3865 = inttoptr i64 %t3864 to ptr
  %gml3866 = load i64, ptr %gmp3865, align 1, !alias.scope !4, !noalias !3
  %wp3867 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3866, ptr %wp3867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269690 word 0xf941b929
  %r3868.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3868 = load i64, ptr %r3868.p, align 8, !alias.scope !3, !noalias !4
  %t3869 = add i64 %r3868, 880
  %gmp3870 = inttoptr i64 %t3869 to ptr
  %gml3871 = load i64, ptr %gmp3870, align 1, !alias.scope !4, !noalias !3
  %wp3872 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3871, ptr %wp3872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269694 word 0xf001b860
  %wp3873 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp3873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269698 word 0x91004108
  %r3874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3874 = load i64, ptr %r3874.p, align 8, !alias.scope !3, !noalias !4
  %t3875 = add i64 %r3874, 16
  %wp3876 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3875, ptr %wp3876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026969c word 0xf9000128
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %r3878.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3878 = load i64, ptr %r3878.p, align 8, !alias.scope !3, !noalias !4
  %gmp3879 = inttoptr i64 %r3877 to ptr
  store i64 %r3878, ptr %gmp3879, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002696a0 word 0xf941bc00
  %r3880.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3880 = load i64, ptr %r3880.p, align 8, !alias.scope !3, !noalias !4
  %t3881 = add i64 %r3880, 888
  %gmp3882 = inttoptr i64 %t3881 to ptr
  %gml3883 = load i64, ptr %gmp3882, align 1, !alias.scope !4, !noalias !3
  %wp3884 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3883, ptr %wp3884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696a4 word 0x94a4e8c3
  %wp3885 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267304, ptr %wp3885, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8002696a8 word 0xf001b86e
  %wp3886 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp3886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696ac word 0xf001b86d
  %wp3887 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696b0 word 0xf941b5ce
  %r3888.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3888 = load i64, ptr %r3888.p, align 8, !alias.scope !3, !noalias !4
  %t3889 = add i64 %r3888, 872
  %gmp3890 = inttoptr i64 %t3889 to ptr
  %gml3891 = load i64, ptr %gmp3890, align 1, !alias.scope !4, !noalias !3
  %wp3892 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3891, ptr %wp3892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696b4 word 0xb001b72c
  %wp3893 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp3893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696b8 word 0xb001b729
  %wp3894 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696bc word 0xf941bdad
  %r3895.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3895 = load i64, ptr %r3895.p, align 8, !alias.scope !3, !noalias !4
  %t3896 = add i64 %r3895, 888
  %gmp3897 = inttoptr i64 %t3896 to ptr
  %gml3898 = load i64, ptr %gmp3897, align 1, !alias.scope !4, !noalias !3
  %wp3899 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3898, ptr %wp3899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696c0 word 0xf943018c
  %r3900.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3900 = load i64, ptr %r3900.p, align 8, !alias.scope !3, !noalias !4
  %t3901 = add i64 %r3900, 1536
  %gmp3902 = inttoptr i64 %t3901 to ptr
  %gml3903 = load i64, ptr %gmp3902, align 1, !alias.scope !4, !noalias !3
  %wp3904 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3903, ptr %wp3904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696c4 word 0x2a1403e7
  %r3905.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3905 = load i64, ptr %r3905.p, align 8, !alias.scope !3, !noalias !4
  %c3906 = trunc i64 %r3905 to i32
  %t3907 = or i32 0, %c3906
  %c3908 = zext i32 %t3907 to i64
  %wp3909 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c3908, ptr %wp3909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696c8 word 0xaa1903e6
  %r3910.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3910 = load i64, ptr %r3910.p, align 8, !alias.scope !3, !noalias !4
  %t3911 = or i64 0, %r3910
  %wp3912 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t3911, ptr %wp3912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696cc word 0xf9430d29
  %r3913.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3913 = load i64, ptr %r3913.p, align 8, !alias.scope !3, !noalias !4
  %t3914 = add i64 %r3913, 1560
  %gmp3915 = inttoptr i64 %t3914 to ptr
  %gml3916 = load i64, ptr %gmp3915, align 1, !alias.scope !4, !noalias !3
  %wp3917 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3916, ptr %wp3917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696d0 word 0xaa1803e5
  %r3918.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3918 = load i64, ptr %r3918.p, align 8, !alias.scope !3, !noalias !4
  %t3919 = or i64 0, %r3918
  %wp3920 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t3919, ptr %wp3920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696d4 word 0xb9400feb
  %r3921.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3921 = load i64, ptr %r3921.p, align 8, !alias.scope !3, !noalias !4
  %t3922 = add i64 %r3921, 12
  %gmp3923 = inttoptr i64 %t3922 to ptr
  %gml3924 = load i32, ptr %gmp3923, align 1, !alias.scope !4, !noalias !3
  %c3925 = zext i32 %gml3924 to i64
  %wp3926 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3925, ptr %wp3926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696d8 word 0xf9400bea
  %r3927.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3927 = load i64, ptr %r3927.p, align 8, !alias.scope !3, !noalias !4
  %t3928 = add i64 %r3927, 16
  %gmp3929 = inttoptr i64 %t3928 to ptr
  %gml3930 = load i64, ptr %gmp3929, align 1, !alias.scope !4, !noalias !3
  %wp3931 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3930, ptr %wp3931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696dc word 0xb94003e4
  %r3932.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3932 = load i64, ptr %r3932.p, align 8, !alias.scope !3, !noalias !4
  %gmp3933 = inttoptr i64 %r3932 to ptr
  %gml3934 = load i32, ptr %gmp3933, align 1, !alias.scope !4, !noalias !3
  %c3935 = zext i32 %gml3934 to i64
  %wp3936 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3935, ptr %wp3936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002696e0 word 0x17fffd0a
  br label %L_800268b08
L_80026973c_ft:
  ; @pc 0x80026973c word 0xb001b728
  %wp4013 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269740 word 0xb001b729
  %wp4014 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269744 word 0xf9430508
  %r4015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4015 = load i64, ptr %r4015.p, align 8, !alias.scope !3, !noalias !4
  %t4016 = add i64 %r4015, 1544
  %gmp4017 = inttoptr i64 %t4016 to ptr
  %gml4018 = load i64, ptr %gmp4017, align 1, !alias.scope !4, !noalias !3
  %wp4019 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4018, ptr %wp4019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269748 word 0xf942fd29
  %r4020.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4020 = load i64, ptr %r4020.p, align 8, !alias.scope !3, !noalias !4
  %t4021 = add i64 %r4020, 1528
  %gmp4022 = inttoptr i64 %t4021 to ptr
  %gml4023 = load i64, ptr %gmp4022, align 1, !alias.scope !4, !noalias !3
  %wp4024 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4023, ptr %wp4024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026974c word 0xb001b720
  %wp4025 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269750 word 0x91004108
  %r4026.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4026 = load i64, ptr %r4026.p, align 8, !alias.scope !3, !noalias !4
  %t4027 = add i64 %r4026, 16
  %wp4028 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4027, ptr %wp4028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269754 word 0xf9000128
  %r4029.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4029 = load i64, ptr %r4029.p, align 8, !alias.scope !3, !noalias !4
  %r4030.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4030 = load i64, ptr %r4030.p, align 8, !alias.scope !3, !noalias !4
  %gmp4031 = inttoptr i64 %r4029 to ptr
  store i64 %r4030, ptr %gmp4031, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269758 word 0xf9430000
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %t4033 = add i64 %r4032, 1536
  %gmp4034 = inttoptr i64 %t4033 to ptr
  %gml4035 = load i64, ptr %gmp4034, align 1, !alias.scope !4, !noalias !3
  %wp4036 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4035, ptr %wp4036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026975c word 0x94a4e895
  %wp4037 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267488, ptr %wp4037, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269760 word 0xf001b86e
  %wp4038 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269764 word 0xf001b86d
  %wp4039 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269768 word 0xf941b5ce
  %r4040.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4040 = load i64, ptr %r4040.p, align 8, !alias.scope !3, !noalias !4
  %t4041 = add i64 %r4040, 872
  %gmp4042 = inttoptr i64 %t4041 to ptr
  %gml4043 = load i64, ptr %gmp4042, align 1, !alias.scope !4, !noalias !3
  %wp4044 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4043, ptr %wp4044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026976c word 0xb001b72c
  %wp4045 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269770 word 0xb001b729
  %wp4046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269774 word 0xf941bdad
  %r4047.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4047 = load i64, ptr %r4047.p, align 8, !alias.scope !3, !noalias !4
  %t4048 = add i64 %r4047, 888
  %gmp4049 = inttoptr i64 %t4048 to ptr
  %gml4050 = load i64, ptr %gmp4049, align 1, !alias.scope !4, !noalias !3
  %wp4051 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4050, ptr %wp4051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269778 word 0xf943018c
  %r4052.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4052 = load i64, ptr %r4052.p, align 8, !alias.scope !3, !noalias !4
  %t4053 = add i64 %r4052, 1536
  %gmp4054 = inttoptr i64 %t4053 to ptr
  %gml4055 = load i64, ptr %gmp4054, align 1, !alias.scope !4, !noalias !3
  %wp4056 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4055, ptr %wp4056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026977c word 0x2a1403e7
  %r4057.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4057 = load i64, ptr %r4057.p, align 8, !alias.scope !3, !noalias !4
  %c4058 = trunc i64 %r4057 to i32
  %t4059 = or i32 0, %c4058
  %c4060 = zext i32 %t4059 to i64
  %wp4061 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4060, ptr %wp4061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269780 word 0xaa1903e6
  %r4062.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4062 = load i64, ptr %r4062.p, align 8, !alias.scope !3, !noalias !4
  %t4063 = or i64 0, %r4062
  %wp4064 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4063, ptr %wp4064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269784 word 0xf9430d29
  %r4065.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4065 = load i64, ptr %r4065.p, align 8, !alias.scope !3, !noalias !4
  %t4066 = add i64 %r4065, 1560
  %gmp4067 = inttoptr i64 %t4066 to ptr
  %gml4068 = load i64, ptr %gmp4067, align 1, !alias.scope !4, !noalias !3
  %wp4069 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4068, ptr %wp4069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269788 word 0xaa1803e5
  %r4070.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4070 = load i64, ptr %r4070.p, align 8, !alias.scope !3, !noalias !4
  %t4071 = or i64 0, %r4070
  %wp4072 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4071, ptr %wp4072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026978c word 0xb9400feb
  %r4073.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4073 = load i64, ptr %r4073.p, align 8, !alias.scope !3, !noalias !4
  %t4074 = add i64 %r4073, 12
  %gmp4075 = inttoptr i64 %t4074 to ptr
  %gml4076 = load i32, ptr %gmp4075, align 1, !alias.scope !4, !noalias !3
  %c4077 = zext i32 %gml4076 to i64
  %wp4078 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4077, ptr %wp4078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269790 word 0xf9400bea
  %r4079.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4079 = load i64, ptr %r4079.p, align 8, !alias.scope !3, !noalias !4
  %t4080 = add i64 %r4079, 16
  %gmp4081 = inttoptr i64 %t4080 to ptr
  %gml4082 = load i64, ptr %gmp4081, align 1, !alias.scope !4, !noalias !3
  %wp4083 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4082, ptr %wp4083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269794 word 0xb94003e4
  %r4084.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4084 = load i64, ptr %r4084.p, align 8, !alias.scope !3, !noalias !4
  %gmp4085 = inttoptr i64 %r4084 to ptr
  %gml4086 = load i32, ptr %gmp4085, align 1, !alias.scope !4, !noalias !3
  %c4087 = zext i32 %gml4086 to i64
  %wp4088 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4087, ptr %wp4088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269798 word 0x17fffcde
  br label %L_800268b10
L_8002697f4_ft:
  ; @pc 0x8002697f4 word 0xd001b708
  %wp4165 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697f8 word 0xb001b729
  %wp4166 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002697fc word 0xf9440508
  %r4167.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4167 = load i64, ptr %r4167.p, align 8, !alias.scope !3, !noalias !4
  %t4168 = add i64 %r4167, 2056
  %gmp4169 = inttoptr i64 %t4168 to ptr
  %gml4170 = load i64, ptr %gmp4169, align 1, !alias.scope !4, !noalias !3
  %wp4171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4170, ptr %wp4171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269800 word 0xf9430929
  %r4172.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4172 = load i64, ptr %r4172.p, align 8, !alias.scope !3, !noalias !4
  %t4173 = add i64 %r4172, 1552
  %gmp4174 = inttoptr i64 %t4173 to ptr
  %gml4175 = load i64, ptr %gmp4174, align 1, !alias.scope !4, !noalias !3
  %wp4176 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4175, ptr %wp4176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269804 word 0xb001b720
  %wp4177 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269808 word 0x91004108
  %r4178.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4178 = load i64, ptr %r4178.p, align 8, !alias.scope !3, !noalias !4
  %t4179 = add i64 %r4178, 16
  %wp4180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4179, ptr %wp4180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026980c word 0xf9000128
  %r4181.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4181 = load i64, ptr %r4181.p, align 8, !alias.scope !3, !noalias !4
  %r4182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4182 = load i64, ptr %r4182.p, align 8, !alias.scope !3, !noalias !4
  %gmp4183 = inttoptr i64 %r4181 to ptr
  store i64 %r4182, ptr %gmp4183, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269810 word 0xf9430c00
  %r4184.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4184 = load i64, ptr %r4184.p, align 8, !alias.scope !3, !noalias !4
  %t4185 = add i64 %r4184, 1560
  %gmp4186 = inttoptr i64 %t4185 to ptr
  %gml4187 = load i64, ptr %gmp4186, align 1, !alias.scope !4, !noalias !3
  %wp4188 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4187, ptr %wp4188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269814 word 0x94a4e867
  %wp4189 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267672, ptr %wp4189, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269818 word 0xf001b86e
  %wp4190 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026981c word 0xf001b86d
  %wp4191 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269820 word 0xf941b5ce
  %r4192.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4192 = load i64, ptr %r4192.p, align 8, !alias.scope !3, !noalias !4
  %t4193 = add i64 %r4192, 872
  %gmp4194 = inttoptr i64 %t4193 to ptr
  %gml4195 = load i64, ptr %gmp4194, align 1, !alias.scope !4, !noalias !3
  %wp4196 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4195, ptr %wp4196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269824 word 0xb001b72c
  %wp4197 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269828 word 0xb001b729
  %wp4198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026982c word 0xf941bdad
  %r4199.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4199 = load i64, ptr %r4199.p, align 8, !alias.scope !3, !noalias !4
  %t4200 = add i64 %r4199, 888
  %gmp4201 = inttoptr i64 %t4200 to ptr
  %gml4202 = load i64, ptr %gmp4201, align 1, !alias.scope !4, !noalias !3
  %wp4203 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4202, ptr %wp4203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269830 word 0xf943018c
  %r4204.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4204 = load i64, ptr %r4204.p, align 8, !alias.scope !3, !noalias !4
  %t4205 = add i64 %r4204, 1536
  %gmp4206 = inttoptr i64 %t4205 to ptr
  %gml4207 = load i64, ptr %gmp4206, align 1, !alias.scope !4, !noalias !3
  %wp4208 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4207, ptr %wp4208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269834 word 0x2a1403e7
  %r4209.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4209 = load i64, ptr %r4209.p, align 8, !alias.scope !3, !noalias !4
  %c4210 = trunc i64 %r4209 to i32
  %t4211 = or i32 0, %c4210
  %c4212 = zext i32 %t4211 to i64
  %wp4213 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4212, ptr %wp4213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269838 word 0xaa1903e6
  %r4214.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4214 = load i64, ptr %r4214.p, align 8, !alias.scope !3, !noalias !4
  %t4215 = or i64 0, %r4214
  %wp4216 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4215, ptr %wp4216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026983c word 0xf9430d29
  %r4217.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4217 = load i64, ptr %r4217.p, align 8, !alias.scope !3, !noalias !4
  %t4218 = add i64 %r4217, 1560
  %gmp4219 = inttoptr i64 %t4218 to ptr
  %gml4220 = load i64, ptr %gmp4219, align 1, !alias.scope !4, !noalias !3
  %wp4221 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4220, ptr %wp4221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269840 word 0xaa1803e5
  %r4222.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4222 = load i64, ptr %r4222.p, align 8, !alias.scope !3, !noalias !4
  %t4223 = or i64 0, %r4222
  %wp4224 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4223, ptr %wp4224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269844 word 0xb9400feb
  %r4225.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4225 = load i64, ptr %r4225.p, align 8, !alias.scope !3, !noalias !4
  %t4226 = add i64 %r4225, 12
  %gmp4227 = inttoptr i64 %t4226 to ptr
  %gml4228 = load i32, ptr %gmp4227, align 1, !alias.scope !4, !noalias !3
  %c4229 = zext i32 %gml4228 to i64
  %wp4230 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4229, ptr %wp4230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269848 word 0xf9400bea
  %r4231.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4231 = load i64, ptr %r4231.p, align 8, !alias.scope !3, !noalias !4
  %t4232 = add i64 %r4231, 16
  %gmp4233 = inttoptr i64 %t4232 to ptr
  %gml4234 = load i64, ptr %gmp4233, align 1, !alias.scope !4, !noalias !3
  %wp4235 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4234, ptr %wp4235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026984c word 0xb94003e4
  %r4236.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4236 = load i64, ptr %r4236.p, align 8, !alias.scope !3, !noalias !4
  %gmp4237 = inttoptr i64 %r4236 to ptr
  %gml4238 = load i32, ptr %gmp4237, align 1, !alias.scope !4, !noalias !3
  %c4239 = zext i32 %gml4238 to i64
  %wp4240 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4239, ptr %wp4240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269850 word 0x17fffcb2
  br label %L_800268b18
L_8002698ac_ft:
  ; @pc 0x8002698ac word 0xb001b728
  %wp4317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698b0 word 0xf001b869
  %wp4318 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698b4 word 0xf942f908
  %r4319.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4319 = load i64, ptr %r4319.p, align 8, !alias.scope !3, !noalias !4
  %t4320 = add i64 %r4319, 1520
  %gmp4321 = inttoptr i64 %t4320 to ptr
  %gml4322 = load i64, ptr %gmp4321, align 1, !alias.scope !4, !noalias !3
  %wp4323 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4322, ptr %wp4323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698b8 word 0xf941b929
  %r4324.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4324 = load i64, ptr %r4324.p, align 8, !alias.scope !3, !noalias !4
  %t4325 = add i64 %r4324, 880
  %gmp4326 = inttoptr i64 %t4325 to ptr
  %gml4327 = load i64, ptr %gmp4326, align 1, !alias.scope !4, !noalias !3
  %wp4328 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4327, ptr %wp4328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698bc word 0xf001b860
  %wp4329 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698c0 word 0x91004108
  %r4330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4330 = load i64, ptr %r4330.p, align 8, !alias.scope !3, !noalias !4
  %t4331 = add i64 %r4330, 16
  %wp4332 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4331, ptr %wp4332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698c4 word 0xf9000128
  %r4333.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4333 = load i64, ptr %r4333.p, align 8, !alias.scope !3, !noalias !4
  %r4334.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4334 = load i64, ptr %r4334.p, align 8, !alias.scope !3, !noalias !4
  %gmp4335 = inttoptr i64 %r4333 to ptr
  store i64 %r4334, ptr %gmp4335, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002698c8 word 0xf941bc00
  %r4336.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4336 = load i64, ptr %r4336.p, align 8, !alias.scope !3, !noalias !4
  %t4337 = add i64 %r4336, 888
  %gmp4338 = inttoptr i64 %t4337 to ptr
  %gml4339 = load i64, ptr %gmp4338, align 1, !alias.scope !4, !noalias !3
  %wp4340 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4339, ptr %wp4340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698cc word 0x94a4e839
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362267856, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8002698d0 word 0xf001b86e
  %wp4342 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698d4 word 0xf001b86d
  %wp4343 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698d8 word 0xf941b5ce
  %r4344.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4344 = load i64, ptr %r4344.p, align 8, !alias.scope !3, !noalias !4
  %t4345 = add i64 %r4344, 872
  %gmp4346 = inttoptr i64 %t4345 to ptr
  %gml4347 = load i64, ptr %gmp4346, align 1, !alias.scope !4, !noalias !3
  %wp4348 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4347, ptr %wp4348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698dc word 0xb001b72c
  %wp4349 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698e0 word 0xb001b729
  %wp4350 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698e4 word 0xf941bdad
  %r4351.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4351 = load i64, ptr %r4351.p, align 8, !alias.scope !3, !noalias !4
  %t4352 = add i64 %r4351, 888
  %gmp4353 = inttoptr i64 %t4352 to ptr
  %gml4354 = load i64, ptr %gmp4353, align 1, !alias.scope !4, !noalias !3
  %wp4355 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4354, ptr %wp4355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698e8 word 0xf943018c
  %r4356.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4356 = load i64, ptr %r4356.p, align 8, !alias.scope !3, !noalias !4
  %t4357 = add i64 %r4356, 1536
  %gmp4358 = inttoptr i64 %t4357 to ptr
  %gml4359 = load i64, ptr %gmp4358, align 1, !alias.scope !4, !noalias !3
  %wp4360 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4359, ptr %wp4360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698ec word 0x2a1403e7
  %r4361.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4361 = load i64, ptr %r4361.p, align 8, !alias.scope !3, !noalias !4
  %c4362 = trunc i64 %r4361 to i32
  %t4363 = or i32 0, %c4362
  %c4364 = zext i32 %t4363 to i64
  %wp4365 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4364, ptr %wp4365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698f0 word 0xaa1903e6
  %r4366.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4366 = load i64, ptr %r4366.p, align 8, !alias.scope !3, !noalias !4
  %t4367 = or i64 0, %r4366
  %wp4368 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4367, ptr %wp4368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698f4 word 0xf9430d29
  %r4369.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4369 = load i64, ptr %r4369.p, align 8, !alias.scope !3, !noalias !4
  %t4370 = add i64 %r4369, 1560
  %gmp4371 = inttoptr i64 %t4370 to ptr
  %gml4372 = load i64, ptr %gmp4371, align 1, !alias.scope !4, !noalias !3
  %wp4373 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4372, ptr %wp4373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698f8 word 0xaa1803e5
  %r4374.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4374 = load i64, ptr %r4374.p, align 8, !alias.scope !3, !noalias !4
  %t4375 = or i64 0, %r4374
  %wp4376 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4375, ptr %wp4376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002698fc word 0xb9400feb
  %r4377.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4377 = load i64, ptr %r4377.p, align 8, !alias.scope !3, !noalias !4
  %t4378 = add i64 %r4377, 12
  %gmp4379 = inttoptr i64 %t4378 to ptr
  %gml4380 = load i32, ptr %gmp4379, align 1, !alias.scope !4, !noalias !3
  %c4381 = zext i32 %gml4380 to i64
  %wp4382 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4381, ptr %wp4382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269900 word 0xf9400bea
  %r4383.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4383 = load i64, ptr %r4383.p, align 8, !alias.scope !3, !noalias !4
  %t4384 = add i64 %r4383, 16
  %gmp4385 = inttoptr i64 %t4384 to ptr
  %gml4386 = load i64, ptr %gmp4385, align 1, !alias.scope !4, !noalias !3
  %wp4387 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4386, ptr %wp4387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269904 word 0xb94003e4
  %r4388.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4388 = load i64, ptr %r4388.p, align 8, !alias.scope !3, !noalias !4
  %gmp4389 = inttoptr i64 %r4388 to ptr
  %gml4390 = load i32, ptr %gmp4389, align 1, !alias.scope !4, !noalias !3
  %c4391 = zext i32 %gml4390 to i64
  %wp4392 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4391, ptr %wp4392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269908 word 0x17fffc8f
  br label %L_800268b44
L_800269964_ft:
  ; @pc 0x800269964 word 0xb001b728
  %wp4469 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269968 word 0xb001b729
  %wp4470 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026996c word 0xf9430508
  %r4471.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4471 = load i64, ptr %r4471.p, align 8, !alias.scope !3, !noalias !4
  %t4472 = add i64 %r4471, 1544
  %gmp4473 = inttoptr i64 %t4472 to ptr
  %gml4474 = load i64, ptr %gmp4473, align 1, !alias.scope !4, !noalias !3
  %wp4475 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4474, ptr %wp4475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269970 word 0xf942fd29
  %r4476.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4476 = load i64, ptr %r4476.p, align 8, !alias.scope !3, !noalias !4
  %t4477 = add i64 %r4476, 1528
  %gmp4478 = inttoptr i64 %t4477 to ptr
  %gml4479 = load i64, ptr %gmp4478, align 1, !alias.scope !4, !noalias !3
  %wp4480 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4479, ptr %wp4480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269974 word 0xb001b720
  %wp4481 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269978 word 0x91004108
  %r4482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4482 = load i64, ptr %r4482.p, align 8, !alias.scope !3, !noalias !4
  %t4483 = add i64 %r4482, 16
  %wp4484 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4483, ptr %wp4484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026997c word 0xf9000128
  %r4485.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4485 = load i64, ptr %r4485.p, align 8, !alias.scope !3, !noalias !4
  %r4486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4486 = load i64, ptr %r4486.p, align 8, !alias.scope !3, !noalias !4
  %gmp4487 = inttoptr i64 %r4485 to ptr
  store i64 %r4486, ptr %gmp4487, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269980 word 0xf9430000
  %r4488.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4488 = load i64, ptr %r4488.p, align 8, !alias.scope !3, !noalias !4
  %t4489 = add i64 %r4488, 1536
  %gmp4490 = inttoptr i64 %t4489 to ptr
  %gml4491 = load i64, ptr %gmp4490, align 1, !alias.scope !4, !noalias !3
  %wp4492 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4491, ptr %wp4492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269984 word 0x94a4e80b
  %wp4493 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268040, ptr %wp4493, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269988 word 0xf001b86e
  %wp4494 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026998c word 0xf001b86d
  %wp4495 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269990 word 0xf941b5ce
  %r4496.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4496 = load i64, ptr %r4496.p, align 8, !alias.scope !3, !noalias !4
  %t4497 = add i64 %r4496, 872
  %gmp4498 = inttoptr i64 %t4497 to ptr
  %gml4499 = load i64, ptr %gmp4498, align 1, !alias.scope !4, !noalias !3
  %wp4500 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4499, ptr %wp4500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269994 word 0xb001b72c
  %wp4501 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269998 word 0xb001b729
  %wp4502 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026999c word 0xf941bdad
  %r4503.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4503 = load i64, ptr %r4503.p, align 8, !alias.scope !3, !noalias !4
  %t4504 = add i64 %r4503, 888
  %gmp4505 = inttoptr i64 %t4504 to ptr
  %gml4506 = load i64, ptr %gmp4505, align 1, !alias.scope !4, !noalias !3
  %wp4507 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4506, ptr %wp4507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699a0 word 0xf943018c
  %r4508.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4508 = load i64, ptr %r4508.p, align 8, !alias.scope !3, !noalias !4
  %t4509 = add i64 %r4508, 1536
  %gmp4510 = inttoptr i64 %t4509 to ptr
  %gml4511 = load i64, ptr %gmp4510, align 1, !alias.scope !4, !noalias !3
  %wp4512 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4511, ptr %wp4512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699a4 word 0x2a1403e7
  %r4513.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4513 = load i64, ptr %r4513.p, align 8, !alias.scope !3, !noalias !4
  %c4514 = trunc i64 %r4513 to i32
  %t4515 = or i32 0, %c4514
  %c4516 = zext i32 %t4515 to i64
  %wp4517 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4516, ptr %wp4517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699a8 word 0xaa1903e6
  %r4518.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4518 = load i64, ptr %r4518.p, align 8, !alias.scope !3, !noalias !4
  %t4519 = or i64 0, %r4518
  %wp4520 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4519, ptr %wp4520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699ac word 0xf9430d29
  %r4521.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4521 = load i64, ptr %r4521.p, align 8, !alias.scope !3, !noalias !4
  %t4522 = add i64 %r4521, 1560
  %gmp4523 = inttoptr i64 %t4522 to ptr
  %gml4524 = load i64, ptr %gmp4523, align 1, !alias.scope !4, !noalias !3
  %wp4525 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4524, ptr %wp4525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699b0 word 0xaa1803e5
  %r4526.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4526 = load i64, ptr %r4526.p, align 8, !alias.scope !3, !noalias !4
  %t4527 = or i64 0, %r4526
  %wp4528 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4527, ptr %wp4528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699b4 word 0xb9400feb
  %r4529.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4529 = load i64, ptr %r4529.p, align 8, !alias.scope !3, !noalias !4
  %t4530 = add i64 %r4529, 12
  %gmp4531 = inttoptr i64 %t4530 to ptr
  %gml4532 = load i32, ptr %gmp4531, align 1, !alias.scope !4, !noalias !3
  %c4533 = zext i32 %gml4532 to i64
  %wp4534 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4533, ptr %wp4534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699b8 word 0xf9400bea
  %r4535.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4535 = load i64, ptr %r4535.p, align 8, !alias.scope !3, !noalias !4
  %t4536 = add i64 %r4535, 16
  %gmp4537 = inttoptr i64 %t4536 to ptr
  %gml4538 = load i64, ptr %gmp4537, align 1, !alias.scope !4, !noalias !3
  %wp4539 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4538, ptr %wp4539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699bc word 0xb94003e4
  %r4540.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4540 = load i64, ptr %r4540.p, align 8, !alias.scope !3, !noalias !4
  %gmp4541 = inttoptr i64 %r4540 to ptr
  %gml4542 = load i32, ptr %gmp4541, align 1, !alias.scope !4, !noalias !3
  %c4543 = zext i32 %gml4542 to i64
  %wp4544 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4543, ptr %wp4544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002699c0 word 0x17fffc63
  br label %L_800268b4c
L_800269a1c_ft:
  ; @pc 0x800269a1c word 0xd001b708
  %wp4621 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a20 word 0xb001b729
  %wp4622 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a24 word 0xf9440508
  %r4623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4623 = load i64, ptr %r4623.p, align 8, !alias.scope !3, !noalias !4
  %t4624 = add i64 %r4623, 2056
  %gmp4625 = inttoptr i64 %t4624 to ptr
  %gml4626 = load i64, ptr %gmp4625, align 1, !alias.scope !4, !noalias !3
  %wp4627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4626, ptr %wp4627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a28 word 0xf9430929
  %r4628.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4628 = load i64, ptr %r4628.p, align 8, !alias.scope !3, !noalias !4
  %t4629 = add i64 %r4628, 1552
  %gmp4630 = inttoptr i64 %t4629 to ptr
  %gml4631 = load i64, ptr %gmp4630, align 1, !alias.scope !4, !noalias !3
  %wp4632 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4631, ptr %wp4632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a2c word 0xb001b720
  %wp4633 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a30 word 0x91004108
  %r4634.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4634 = load i64, ptr %r4634.p, align 8, !alias.scope !3, !noalias !4
  %t4635 = add i64 %r4634, 16
  %wp4636 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4635, ptr %wp4636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a34 word 0xf9000128
  %r4637.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4637 = load i64, ptr %r4637.p, align 8, !alias.scope !3, !noalias !4
  %r4638.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4638 = load i64, ptr %r4638.p, align 8, !alias.scope !3, !noalias !4
  %gmp4639 = inttoptr i64 %r4637 to ptr
  store i64 %r4638, ptr %gmp4639, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269a38 word 0xf9430c00
  %r4640.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4640 = load i64, ptr %r4640.p, align 8, !alias.scope !3, !noalias !4
  %t4641 = add i64 %r4640, 1560
  %gmp4642 = inttoptr i64 %t4641 to ptr
  %gml4643 = load i64, ptr %gmp4642, align 1, !alias.scope !4, !noalias !3
  %wp4644 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4643, ptr %wp4644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a3c word 0x94a4e7dd
  %wp4645 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268224, ptr %wp4645, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269a40 word 0xf001b86e
  %wp4646 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp4646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a44 word 0xf001b86d
  %wp4647 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a48 word 0xf941b5ce
  %r4648.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4648 = load i64, ptr %r4648.p, align 8, !alias.scope !3, !noalias !4
  %t4649 = add i64 %r4648, 872
  %gmp4650 = inttoptr i64 %t4649 to ptr
  %gml4651 = load i64, ptr %gmp4650, align 1, !alias.scope !4, !noalias !3
  %wp4652 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4651, ptr %wp4652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a4c word 0xb001b72c
  %wp4653 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a50 word 0xb001b729
  %wp4654 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a54 word 0xf941bdad
  %r4655.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4655 = load i64, ptr %r4655.p, align 8, !alias.scope !3, !noalias !4
  %t4656 = add i64 %r4655, 888
  %gmp4657 = inttoptr i64 %t4656 to ptr
  %gml4658 = load i64, ptr %gmp4657, align 1, !alias.scope !4, !noalias !3
  %wp4659 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4658, ptr %wp4659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a58 word 0xf943018c
  %r4660.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4660 = load i64, ptr %r4660.p, align 8, !alias.scope !3, !noalias !4
  %t4661 = add i64 %r4660, 1536
  %gmp4662 = inttoptr i64 %t4661 to ptr
  %gml4663 = load i64, ptr %gmp4662, align 1, !alias.scope !4, !noalias !3
  %wp4664 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4663, ptr %wp4664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a5c word 0x2a1403e7
  %r4665.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4665 = load i64, ptr %r4665.p, align 8, !alias.scope !3, !noalias !4
  %c4666 = trunc i64 %r4665 to i32
  %t4667 = or i32 0, %c4666
  %c4668 = zext i32 %t4667 to i64
  %wp4669 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4668, ptr %wp4669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a60 word 0xaa1903e6
  %r4670.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4670 = load i64, ptr %r4670.p, align 8, !alias.scope !3, !noalias !4
  %t4671 = or i64 0, %r4670
  %wp4672 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4671, ptr %wp4672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a64 word 0xf9430d29
  %r4673.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4673 = load i64, ptr %r4673.p, align 8, !alias.scope !3, !noalias !4
  %t4674 = add i64 %r4673, 1560
  %gmp4675 = inttoptr i64 %t4674 to ptr
  %gml4676 = load i64, ptr %gmp4675, align 1, !alias.scope !4, !noalias !3
  %wp4677 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4676, ptr %wp4677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a68 word 0xaa1803e5
  %r4678.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4678 = load i64, ptr %r4678.p, align 8, !alias.scope !3, !noalias !4
  %t4679 = or i64 0, %r4678
  %wp4680 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4679, ptr %wp4680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a6c word 0xb9400feb
  %r4681.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4681 = load i64, ptr %r4681.p, align 8, !alias.scope !3, !noalias !4
  %t4682 = add i64 %r4681, 12
  %gmp4683 = inttoptr i64 %t4682 to ptr
  %gml4684 = load i32, ptr %gmp4683, align 1, !alias.scope !4, !noalias !3
  %c4685 = zext i32 %gml4684 to i64
  %wp4686 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4685, ptr %wp4686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a70 word 0xf9400bea
  %r4687.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4687 = load i64, ptr %r4687.p, align 8, !alias.scope !3, !noalias !4
  %t4688 = add i64 %r4687, 16
  %gmp4689 = inttoptr i64 %t4688 to ptr
  %gml4690 = load i64, ptr %gmp4689, align 1, !alias.scope !4, !noalias !3
  %wp4691 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4690, ptr %wp4691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a74 word 0xb94003e4
  %r4692.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4692 = load i64, ptr %r4692.p, align 8, !alias.scope !3, !noalias !4
  %gmp4693 = inttoptr i64 %r4692 to ptr
  %gml4694 = load i32, ptr %gmp4693, align 1, !alias.scope !4, !noalias !3
  %c4695 = zext i32 %gml4694 to i64
  %wp4696 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4695, ptr %wp4696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269a78 word 0x17fffc37
  br label %L_800268b54
L_800269ac4_ft:
  ; @pc 0x800269ac4 word 0xb001b728
  %wp4762 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ac8 word 0xf001b869
  %wp4763 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269acc word 0xf942f908
  %r4764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4764 = load i64, ptr %r4764.p, align 8, !alias.scope !3, !noalias !4
  %t4765 = add i64 %r4764, 1520
  %gmp4766 = inttoptr i64 %t4765 to ptr
  %gml4767 = load i64, ptr %gmp4766, align 1, !alias.scope !4, !noalias !3
  %wp4768 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4767, ptr %wp4768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ad0 word 0xf941b929
  %r4769.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4769 = load i64, ptr %r4769.p, align 8, !alias.scope !3, !noalias !4
  %t4770 = add i64 %r4769, 880
  %gmp4771 = inttoptr i64 %t4770 to ptr
  %gml4772 = load i64, ptr %gmp4771, align 1, !alias.scope !4, !noalias !3
  %wp4773 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4772, ptr %wp4773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ad4 word 0xf001b860
  %wp4774 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ad8 word 0x91004108
  %r4775.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4775 = load i64, ptr %r4775.p, align 8, !alias.scope !3, !noalias !4
  %t4776 = add i64 %r4775, 16
  %wp4777 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4776, ptr %wp4777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269adc word 0xf9000128
  %r4778.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4778 = load i64, ptr %r4778.p, align 8, !alias.scope !3, !noalias !4
  %r4779.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4779 = load i64, ptr %r4779.p, align 8, !alias.scope !3, !noalias !4
  %gmp4780 = inttoptr i64 %r4778 to ptr
  store i64 %r4779, ptr %gmp4780, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269ae0 word 0xf941bc00
  %r4781.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4781 = load i64, ptr %r4781.p, align 8, !alias.scope !3, !noalias !4
  %t4782 = add i64 %r4781, 888
  %gmp4783 = inttoptr i64 %t4782 to ptr
  %gml4784 = load i64, ptr %gmp4783, align 1, !alias.scope !4, !noalias !3
  %wp4785 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4784, ptr %wp4785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ae4 word 0x94a4e7b3
  %wp4786 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268392, ptr %wp4786, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269ae8 word 0xb001b72c
  %wp4787 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp4787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269aec word 0xb001b729
  %wp4788 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269af0 word 0xf943018c
  %r4789.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4789 = load i64, ptr %r4789.p, align 8, !alias.scope !3, !noalias !4
  %t4790 = add i64 %r4789, 1536
  %gmp4791 = inttoptr i64 %t4790 to ptr
  %gml4792 = load i64, ptr %gmp4791, align 1, !alias.scope !4, !noalias !3
  %wp4793 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4792, ptr %wp4793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269af4 word 0xf9430d29
  %r4794.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4794 = load i64, ptr %r4794.p, align 8, !alias.scope !3, !noalias !4
  %t4795 = add i64 %r4794, 1560
  %gmp4796 = inttoptr i64 %t4795 to ptr
  %gml4797 = load i64, ptr %gmp4796, align 1, !alias.scope !4, !noalias !3
  %wp4798 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4797, ptr %wp4798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269af8 word 0x2a1403e7
  %r4799.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4799 = load i64, ptr %r4799.p, align 8, !alias.scope !3, !noalias !4
  %c4800 = trunc i64 %r4799 to i32
  %t4801 = or i32 0, %c4800
  %c4802 = zext i32 %t4801 to i64
  %wp4803 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4802, ptr %wp4803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269afc word 0xaa1903e6
  %r4804.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4804 = load i64, ptr %r4804.p, align 8, !alias.scope !3, !noalias !4
  %t4805 = or i64 0, %r4804
  %wp4806 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4805, ptr %wp4806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b00 word 0xb9400feb
  %r4807.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4807 = load i64, ptr %r4807.p, align 8, !alias.scope !3, !noalias !4
  %t4808 = add i64 %r4807, 12
  %gmp4809 = inttoptr i64 %t4808 to ptr
  %gml4810 = load i32, ptr %gmp4809, align 1, !alias.scope !4, !noalias !3
  %c4811 = zext i32 %gml4810 to i64
  %wp4812 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4811, ptr %wp4812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b04 word 0xaa1803e5
  %r4813.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4813 = load i64, ptr %r4813.p, align 8, !alias.scope !3, !noalias !4
  %t4814 = or i64 0, %r4813
  %wp4815 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4814, ptr %wp4815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b08 word 0x2a1703e4
  %r4816.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4816 = load i64, ptr %r4816.p, align 8, !alias.scope !3, !noalias !4
  %c4817 = trunc i64 %r4816 to i32
  %t4818 = or i32 0, %c4817
  %c4819 = zext i32 %t4818 to i64
  %wp4820 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4819, ptr %wp4820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b0c word 0xf9400bea
  %r4821.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4821 = load i64, ptr %r4821.p, align 8, !alias.scope !3, !noalias !4
  %t4822 = add i64 %r4821, 16
  %gmp4823 = inttoptr i64 %t4822 to ptr
  %gml4824 = load i64, ptr %gmp4823, align 1, !alias.scope !4, !noalias !3
  %wp4825 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4824, ptr %wp4825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b10 word 0x17fffc3a
  br label %L_800268bf8
L_800269b54_ft:
  ; @pc 0x800269b54 word 0xb001b728
  %wp4885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b58 word 0xb001b729
  %wp4886 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b5c word 0xf9430508
  %r4887.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4887 = load i64, ptr %r4887.p, align 8, !alias.scope !3, !noalias !4
  %t4888 = add i64 %r4887, 1544
  %gmp4889 = inttoptr i64 %t4888 to ptr
  %gml4890 = load i64, ptr %gmp4889, align 1, !alias.scope !4, !noalias !3
  %wp4891 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4890, ptr %wp4891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b60 word 0xf942fd29
  %r4892.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4892 = load i64, ptr %r4892.p, align 8, !alias.scope !3, !noalias !4
  %t4893 = add i64 %r4892, 1528
  %gmp4894 = inttoptr i64 %t4893 to ptr
  %gml4895 = load i64, ptr %gmp4894, align 1, !alias.scope !4, !noalias !3
  %wp4896 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4895, ptr %wp4896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b64 word 0xb001b720
  %wp4897 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b68 word 0x91004108
  %r4898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4898 = load i64, ptr %r4898.p, align 8, !alias.scope !3, !noalias !4
  %t4899 = add i64 %r4898, 16
  %wp4900 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4899, ptr %wp4900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b6c word 0xf9000128
  %r4901.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4901 = load i64, ptr %r4901.p, align 8, !alias.scope !3, !noalias !4
  %r4902.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4902 = load i64, ptr %r4902.p, align 8, !alias.scope !3, !noalias !4
  %gmp4903 = inttoptr i64 %r4901 to ptr
  store i64 %r4902, ptr %gmp4903, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269b70 word 0xf9430000
  %r4904.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4904 = load i64, ptr %r4904.p, align 8, !alias.scope !3, !noalias !4
  %t4905 = add i64 %r4904, 1536
  %gmp4906 = inttoptr i64 %t4905 to ptr
  %gml4907 = load i64, ptr %gmp4906, align 1, !alias.scope !4, !noalias !3
  %wp4908 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4907, ptr %wp4908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b74 word 0x94a4e78f
  %wp4909 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268536, ptr %wp4909, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269b78 word 0xb001b729
  %wp4910 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b7c word 0x2a1403e7
  %r4911.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4911 = load i64, ptr %r4911.p, align 8, !alias.scope !3, !noalias !4
  %c4912 = trunc i64 %r4911 to i32
  %t4913 = or i32 0, %c4912
  %c4914 = zext i32 %t4913 to i64
  %wp4915 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c4914, ptr %wp4915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b80 word 0xf9430d29
  %r4916.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4916 = load i64, ptr %r4916.p, align 8, !alias.scope !3, !noalias !4
  %t4917 = add i64 %r4916, 1560
  %gmp4918 = inttoptr i64 %t4917 to ptr
  %gml4919 = load i64, ptr %gmp4918, align 1, !alias.scope !4, !noalias !3
  %wp4920 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4919, ptr %wp4920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b84 word 0xb9400feb
  %r4921.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4921 = load i64, ptr %r4921.p, align 8, !alias.scope !3, !noalias !4
  %t4922 = add i64 %r4921, 12
  %gmp4923 = inttoptr i64 %t4922 to ptr
  %gml4924 = load i32, ptr %gmp4923, align 1, !alias.scope !4, !noalias !3
  %c4925 = zext i32 %gml4924 to i64
  %wp4926 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4925, ptr %wp4926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b88 word 0xaa1903e6
  %r4927.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4927 = load i64, ptr %r4927.p, align 8, !alias.scope !3, !noalias !4
  %t4928 = or i64 0, %r4927
  %wp4929 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t4928, ptr %wp4929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b8c word 0xaa1803e5
  %r4930.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4930 = load i64, ptr %r4930.p, align 8, !alias.scope !3, !noalias !4
  %t4931 = or i64 0, %r4930
  %wp4932 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4931, ptr %wp4932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b90 word 0xf9400bea
  %r4933.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4933 = load i64, ptr %r4933.p, align 8, !alias.scope !3, !noalias !4
  %t4934 = add i64 %r4933, 16
  %gmp4935 = inttoptr i64 %t4934 to ptr
  %gml4936 = load i64, ptr %gmp4935, align 1, !alias.scope !4, !noalias !3
  %wp4937 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4936, ptr %wp4937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b94 word 0x2a1703e4
  %r4938.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4938 = load i64, ptr %r4938.p, align 8, !alias.scope !3, !noalias !4
  %c4939 = trunc i64 %r4938 to i32
  %t4940 = or i32 0, %c4939
  %c4941 = zext i32 %t4940 to i64
  %wp4942 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4941, ptr %wp4942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269b98 word 0x17fffc1a
  br label %L_800268c00
L_800269bd4_ft:
  ; @pc 0x800269bd4 word 0xd001b708
  %wp4996 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bd8 word 0xb001b729
  %wp4997 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bdc word 0xf9440508
  %r4998.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4998 = load i64, ptr %r4998.p, align 8, !alias.scope !3, !noalias !4
  %t4999 = add i64 %r4998, 2056
  %gmp5000 = inttoptr i64 %t4999 to ptr
  %gml5001 = load i64, ptr %gmp5000, align 1, !alias.scope !4, !noalias !3
  %wp5002 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5001, ptr %wp5002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269be0 word 0xf9430929
  %r5003.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5003 = load i64, ptr %r5003.p, align 8, !alias.scope !3, !noalias !4
  %t5004 = add i64 %r5003, 1552
  %gmp5005 = inttoptr i64 %t5004 to ptr
  %gml5006 = load i64, ptr %gmp5005, align 1, !alias.scope !4, !noalias !3
  %wp5007 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5006, ptr %wp5007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269be4 word 0xb001b720
  %wp5008 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269be8 word 0x91004108
  %r5009.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5009 = load i64, ptr %r5009.p, align 8, !alias.scope !3, !noalias !4
  %t5010 = add i64 %r5009, 16
  %wp5011 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5010, ptr %wp5011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bec word 0xf9000128
  %r5012.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5012 = load i64, ptr %r5012.p, align 8, !alias.scope !3, !noalias !4
  %r5013.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5013 = load i64, ptr %r5013.p, align 8, !alias.scope !3, !noalias !4
  %gmp5014 = inttoptr i64 %r5012 to ptr
  store i64 %r5013, ptr %gmp5014, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269bf0 word 0xf9430c00
  %r5015.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5015 = load i64, ptr %r5015.p, align 8, !alias.scope !3, !noalias !4
  %t5016 = add i64 %r5015, 1560
  %gmp5017 = inttoptr i64 %t5016 to ptr
  %gml5018 = load i64, ptr %gmp5017, align 1, !alias.scope !4, !noalias !3
  %wp5019 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5018, ptr %wp5019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bf4 word 0x94a4e76f
  %wp5020 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268664, ptr %wp5020, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269bf8 word 0xb9400feb
  %r5021.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5021 = load i64, ptr %r5021.p, align 8, !alias.scope !3, !noalias !4
  %t5022 = add i64 %r5021, 12
  %gmp5023 = inttoptr i64 %t5022 to ptr
  %gml5024 = load i32, ptr %gmp5023, align 1, !alias.scope !4, !noalias !3
  %c5025 = zext i32 %gml5024 to i64
  %wp5026 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5025, ptr %wp5026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269bfc word 0x2a1403e7
  %r5027.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5027 = load i64, ptr %r5027.p, align 8, !alias.scope !3, !noalias !4
  %c5028 = trunc i64 %r5027 to i32
  %t5029 = or i32 0, %c5028
  %c5030 = zext i32 %t5029 to i64
  %wp5031 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5030, ptr %wp5031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c00 word 0xaa1903e6
  %r5032.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5032 = load i64, ptr %r5032.p, align 8, !alias.scope !3, !noalias !4
  %t5033 = or i64 0, %r5032
  %wp5034 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5033, ptr %wp5034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c04 word 0xf9400bea
  %r5035.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5035 = load i64, ptr %r5035.p, align 8, !alias.scope !3, !noalias !4
  %t5036 = add i64 %r5035, 16
  %gmp5037 = inttoptr i64 %t5036 to ptr
  %gml5038 = load i64, ptr %gmp5037, align 1, !alias.scope !4, !noalias !3
  %wp5039 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5038, ptr %wp5039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c08 word 0xaa1803e5
  %r5040.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5040 = load i64, ptr %r5040.p, align 8, !alias.scope !3, !noalias !4
  %t5041 = or i64 0, %r5040
  %wp5042 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5041, ptr %wp5042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c0c word 0x2a1703e4
  %r5043.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5043 = load i64, ptr %r5043.p, align 8, !alias.scope !3, !noalias !4
  %c5044 = trunc i64 %r5043 to i32
  %t5045 = or i32 0, %c5044
  %c5046 = zext i32 %t5045 to i64
  %wp5047 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5046, ptr %wp5047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c10 word 0x17fffbfe
  br label %L_800268c08
L_800269c6c_ft:
  ; @pc 0x800269c6c word 0xb001b728
  %wp5124 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c70 word 0xf001b869
  %wp5125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp5125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c74 word 0xf942f908
  %r5126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5126 = load i64, ptr %r5126.p, align 8, !alias.scope !3, !noalias !4
  %t5127 = add i64 %r5126, 1520
  %gmp5128 = inttoptr i64 %t5127 to ptr
  %gml5129 = load i64, ptr %gmp5128, align 1, !alias.scope !4, !noalias !3
  %wp5130 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5129, ptr %wp5130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c78 word 0xf941b929
  %r5131.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5131 = load i64, ptr %r5131.p, align 8, !alias.scope !3, !noalias !4
  %t5132 = add i64 %r5131, 880
  %gmp5133 = inttoptr i64 %t5132 to ptr
  %gml5134 = load i64, ptr %gmp5133, align 1, !alias.scope !4, !noalias !3
  %wp5135 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5134, ptr %wp5135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c7c word 0xf001b860
  %wp5136 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c80 word 0x91004108
  %r5137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5137 = load i64, ptr %r5137.p, align 8, !alias.scope !3, !noalias !4
  %t5138 = add i64 %r5137, 16
  %wp5139 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5138, ptr %wp5139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c84 word 0xf9000128
  %r5140.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5140 = load i64, ptr %r5140.p, align 8, !alias.scope !3, !noalias !4
  %r5141.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5141 = load i64, ptr %r5141.p, align 8, !alias.scope !3, !noalias !4
  %gmp5142 = inttoptr i64 %r5140 to ptr
  store i64 %r5141, ptr %gmp5142, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269c88 word 0xf941bc00
  %r5143.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5143 = load i64, ptr %r5143.p, align 8, !alias.scope !3, !noalias !4
  %t5144 = add i64 %r5143, 888
  %gmp5145 = inttoptr i64 %t5144 to ptr
  %gml5146 = load i64, ptr %gmp5145, align 1, !alias.scope !4, !noalias !3
  %wp5147 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5146, ptr %wp5147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c8c word 0x94a4e749
  %wp5148 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362268816, ptr %wp5148, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269c90 word 0xf001b86e
  %wp5149 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c94 word 0xf001b86d
  %wp5150 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c98 word 0xf941b5ce
  %r5151.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5151 = load i64, ptr %r5151.p, align 8, !alias.scope !3, !noalias !4
  %t5152 = add i64 %r5151, 872
  %gmp5153 = inttoptr i64 %t5152 to ptr
  %gml5154 = load i64, ptr %gmp5153, align 1, !alias.scope !4, !noalias !3
  %wp5155 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5154, ptr %wp5155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269c9c word 0xb001b72c
  %wp5156 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ca0 word 0xb001b729
  %wp5157 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ca4 word 0xf941bdad
  %r5158.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5158 = load i64, ptr %r5158.p, align 8, !alias.scope !3, !noalias !4
  %t5159 = add i64 %r5158, 888
  %gmp5160 = inttoptr i64 %t5159 to ptr
  %gml5161 = load i64, ptr %gmp5160, align 1, !alias.scope !4, !noalias !3
  %wp5162 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5161, ptr %wp5162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ca8 word 0xf943018c
  %r5163.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5163 = load i64, ptr %r5163.p, align 8, !alias.scope !3, !noalias !4
  %t5164 = add i64 %r5163, 1536
  %gmp5165 = inttoptr i64 %t5164 to ptr
  %gml5166 = load i64, ptr %gmp5165, align 1, !alias.scope !4, !noalias !3
  %wp5167 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5166, ptr %wp5167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cac word 0x2a1403e7
  %r5168.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5168 = load i64, ptr %r5168.p, align 8, !alias.scope !3, !noalias !4
  %c5169 = trunc i64 %r5168 to i32
  %t5170 = or i32 0, %c5169
  %c5171 = zext i32 %t5170 to i64
  %wp5172 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5171, ptr %wp5172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cb0 word 0xaa1903e6
  %r5173.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5173 = load i64, ptr %r5173.p, align 8, !alias.scope !3, !noalias !4
  %t5174 = or i64 0, %r5173
  %wp5175 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5174, ptr %wp5175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cb4 word 0xf9430d29
  %r5176.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5176 = load i64, ptr %r5176.p, align 8, !alias.scope !3, !noalias !4
  %t5177 = add i64 %r5176, 1560
  %gmp5178 = inttoptr i64 %t5177 to ptr
  %gml5179 = load i64, ptr %gmp5178, align 1, !alias.scope !4, !noalias !3
  %wp5180 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5179, ptr %wp5180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cb8 word 0xaa1803e5
  %r5181.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5181 = load i64, ptr %r5181.p, align 8, !alias.scope !3, !noalias !4
  %t5182 = or i64 0, %r5181
  %wp5183 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5182, ptr %wp5183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cbc word 0xb9400feb
  %r5184.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5184 = load i64, ptr %r5184.p, align 8, !alias.scope !3, !noalias !4
  %t5185 = add i64 %r5184, 12
  %gmp5186 = inttoptr i64 %t5185 to ptr
  %gml5187 = load i32, ptr %gmp5186, align 1, !alias.scope !4, !noalias !3
  %c5188 = zext i32 %gml5187 to i64
  %wp5189 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5188, ptr %wp5189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cc0 word 0xf9400bea
  %r5190.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5190 = load i64, ptr %r5190.p, align 8, !alias.scope !3, !noalias !4
  %t5191 = add i64 %r5190, 16
  %gmp5192 = inttoptr i64 %t5191 to ptr
  %gml5193 = load i64, ptr %gmp5192, align 1, !alias.scope !4, !noalias !3
  %wp5194 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5193, ptr %wp5194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cc4 word 0xb94003e4
  %r5195.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5195 = load i64, ptr %r5195.p, align 8, !alias.scope !3, !noalias !4
  %gmp5196 = inttoptr i64 %r5195 to ptr
  %gml5197 = load i32, ptr %gmp5196, align 1, !alias.scope !4, !noalias !3
  %c5198 = zext i32 %gml5197 to i64
  %wp5199 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5198, ptr %wp5199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269cc8 word 0x17fffbbd
  br label %L_800268bbc
L_800269d24_ft:
  ; @pc 0x800269d24 word 0xb001b728
  %wp5276 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d28 word 0xb001b729
  %wp5277 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d2c word 0xf9430508
  %r5278.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5278 = load i64, ptr %r5278.p, align 8, !alias.scope !3, !noalias !4
  %t5279 = add i64 %r5278, 1544
  %gmp5280 = inttoptr i64 %t5279 to ptr
  %gml5281 = load i64, ptr %gmp5280, align 1, !alias.scope !4, !noalias !3
  %wp5282 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5281, ptr %wp5282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d30 word 0xf942fd29
  %r5283.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5283 = load i64, ptr %r5283.p, align 8, !alias.scope !3, !noalias !4
  %t5284 = add i64 %r5283, 1528
  %gmp5285 = inttoptr i64 %t5284 to ptr
  %gml5286 = load i64, ptr %gmp5285, align 1, !alias.scope !4, !noalias !3
  %wp5287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5286, ptr %wp5287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d34 word 0xb001b720
  %wp5288 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d38 word 0x91004108
  %r5289.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5289 = load i64, ptr %r5289.p, align 8, !alias.scope !3, !noalias !4
  %t5290 = add i64 %r5289, 16
  %wp5291 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5290, ptr %wp5291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d3c word 0xf9000128
  %r5292.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5292 = load i64, ptr %r5292.p, align 8, !alias.scope !3, !noalias !4
  %r5293.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5293 = load i64, ptr %r5293.p, align 8, !alias.scope !3, !noalias !4
  %gmp5294 = inttoptr i64 %r5292 to ptr
  store i64 %r5293, ptr %gmp5294, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269d40 word 0xf9430000
  %r5295.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5295 = load i64, ptr %r5295.p, align 8, !alias.scope !3, !noalias !4
  %t5296 = add i64 %r5295, 1536
  %gmp5297 = inttoptr i64 %t5296 to ptr
  %gml5298 = load i64, ptr %gmp5297, align 1, !alias.scope !4, !noalias !3
  %wp5299 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5298, ptr %wp5299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d44 word 0x94a4e71b
  %wp5300 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269000, ptr %wp5300, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269d48 word 0xf001b86e
  %wp5301 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d4c word 0xf001b86d
  %wp5302 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d50 word 0xf941b5ce
  %r5303.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5303 = load i64, ptr %r5303.p, align 8, !alias.scope !3, !noalias !4
  %t5304 = add i64 %r5303, 872
  %gmp5305 = inttoptr i64 %t5304 to ptr
  %gml5306 = load i64, ptr %gmp5305, align 1, !alias.scope !4, !noalias !3
  %wp5307 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5306, ptr %wp5307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d54 word 0xb001b72c
  %wp5308 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d58 word 0xb001b729
  %wp5309 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d5c word 0xf941bdad
  %r5310.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5310 = load i64, ptr %r5310.p, align 8, !alias.scope !3, !noalias !4
  %t5311 = add i64 %r5310, 888
  %gmp5312 = inttoptr i64 %t5311 to ptr
  %gml5313 = load i64, ptr %gmp5312, align 1, !alias.scope !4, !noalias !3
  %wp5314 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5313, ptr %wp5314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d60 word 0xf943018c
  %r5315.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5315 = load i64, ptr %r5315.p, align 8, !alias.scope !3, !noalias !4
  %t5316 = add i64 %r5315, 1536
  %gmp5317 = inttoptr i64 %t5316 to ptr
  %gml5318 = load i64, ptr %gmp5317, align 1, !alias.scope !4, !noalias !3
  %wp5319 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5318, ptr %wp5319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d64 word 0x2a1403e7
  %r5320.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5320 = load i64, ptr %r5320.p, align 8, !alias.scope !3, !noalias !4
  %c5321 = trunc i64 %r5320 to i32
  %t5322 = or i32 0, %c5321
  %c5323 = zext i32 %t5322 to i64
  %wp5324 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5323, ptr %wp5324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d68 word 0xaa1903e6
  %r5325.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5325 = load i64, ptr %r5325.p, align 8, !alias.scope !3, !noalias !4
  %t5326 = or i64 0, %r5325
  %wp5327 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5326, ptr %wp5327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d6c word 0xf9430d29
  %r5328.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5328 = load i64, ptr %r5328.p, align 8, !alias.scope !3, !noalias !4
  %t5329 = add i64 %r5328, 1560
  %gmp5330 = inttoptr i64 %t5329 to ptr
  %gml5331 = load i64, ptr %gmp5330, align 1, !alias.scope !4, !noalias !3
  %wp5332 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5331, ptr %wp5332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d70 word 0xaa1803e5
  %r5333.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5333 = load i64, ptr %r5333.p, align 8, !alias.scope !3, !noalias !4
  %t5334 = or i64 0, %r5333
  %wp5335 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5334, ptr %wp5335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d74 word 0xb9400feb
  %r5336.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5336 = load i64, ptr %r5336.p, align 8, !alias.scope !3, !noalias !4
  %t5337 = add i64 %r5336, 12
  %gmp5338 = inttoptr i64 %t5337 to ptr
  %gml5339 = load i32, ptr %gmp5338, align 1, !alias.scope !4, !noalias !3
  %c5340 = zext i32 %gml5339 to i64
  %wp5341 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5340, ptr %wp5341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d78 word 0xf9400bea
  %r5342.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5342 = load i64, ptr %r5342.p, align 8, !alias.scope !3, !noalias !4
  %t5343 = add i64 %r5342, 16
  %gmp5344 = inttoptr i64 %t5343 to ptr
  %gml5345 = load i64, ptr %gmp5344, align 1, !alias.scope !4, !noalias !3
  %wp5346 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5345, ptr %wp5346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d7c word 0xb94003e4
  %r5347.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5347 = load i64, ptr %r5347.p, align 8, !alias.scope !3, !noalias !4
  %gmp5348 = inttoptr i64 %r5347 to ptr
  %gml5349 = load i32, ptr %gmp5348, align 1, !alias.scope !4, !noalias !3
  %c5350 = zext i32 %gml5349 to i64
  %wp5351 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5350, ptr %wp5351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269d80 word 0x17fffb91
  br label %L_800268bc4
L_800269ddc_ft:
  ; @pc 0x800269ddc word 0xd001b708
  %wp5428 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp5428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269de0 word 0xb001b729
  %wp5429 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269de4 word 0xf9440508
  %r5430.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5430 = load i64, ptr %r5430.p, align 8, !alias.scope !3, !noalias !4
  %t5431 = add i64 %r5430, 2056
  %gmp5432 = inttoptr i64 %t5431 to ptr
  %gml5433 = load i64, ptr %gmp5432, align 1, !alias.scope !4, !noalias !3
  %wp5434 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5433, ptr %wp5434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269de8 word 0xf9430929
  %r5435.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5435 = load i64, ptr %r5435.p, align 8, !alias.scope !3, !noalias !4
  %t5436 = add i64 %r5435, 1552
  %gmp5437 = inttoptr i64 %t5436 to ptr
  %gml5438 = load i64, ptr %gmp5437, align 1, !alias.scope !4, !noalias !3
  %wp5439 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5438, ptr %wp5439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dec word 0xb001b720
  %wp5440 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269df0 word 0x91004108
  %r5441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5441 = load i64, ptr %r5441.p, align 8, !alias.scope !3, !noalias !4
  %t5442 = add i64 %r5441, 16
  %wp5443 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5442, ptr %wp5443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269df4 word 0xf9000128
  %r5444.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5444 = load i64, ptr %r5444.p, align 8, !alias.scope !3, !noalias !4
  %r5445.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5445 = load i64, ptr %r5445.p, align 8, !alias.scope !3, !noalias !4
  %gmp5446 = inttoptr i64 %r5444 to ptr
  store i64 %r5445, ptr %gmp5446, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269df8 word 0xf9430c00
  %r5447.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5447 = load i64, ptr %r5447.p, align 8, !alias.scope !3, !noalias !4
  %t5448 = add i64 %r5447, 1560
  %gmp5449 = inttoptr i64 %t5448 to ptr
  %gml5450 = load i64, ptr %gmp5449, align 1, !alias.scope !4, !noalias !3
  %wp5451 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5450, ptr %wp5451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269dfc word 0x94a4e6ed
  %wp5452 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269184, ptr %wp5452, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269e00 word 0xf001b86e
  %wp5453 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e04 word 0xf001b86d
  %wp5454 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e08 word 0xf941b5ce
  %r5455.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5455 = load i64, ptr %r5455.p, align 8, !alias.scope !3, !noalias !4
  %t5456 = add i64 %r5455, 872
  %gmp5457 = inttoptr i64 %t5456 to ptr
  %gml5458 = load i64, ptr %gmp5457, align 1, !alias.scope !4, !noalias !3
  %wp5459 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5458, ptr %wp5459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e0c word 0xb001b72c
  %wp5460 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e10 word 0xb001b729
  %wp5461 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e14 word 0xf941bdad
  %r5462.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5462 = load i64, ptr %r5462.p, align 8, !alias.scope !3, !noalias !4
  %t5463 = add i64 %r5462, 888
  %gmp5464 = inttoptr i64 %t5463 to ptr
  %gml5465 = load i64, ptr %gmp5464, align 1, !alias.scope !4, !noalias !3
  %wp5466 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5465, ptr %wp5466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e18 word 0xf943018c
  %r5467.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5467 = load i64, ptr %r5467.p, align 8, !alias.scope !3, !noalias !4
  %t5468 = add i64 %r5467, 1536
  %gmp5469 = inttoptr i64 %t5468 to ptr
  %gml5470 = load i64, ptr %gmp5469, align 1, !alias.scope !4, !noalias !3
  %wp5471 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5470, ptr %wp5471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e1c word 0x2a1403e7
  %r5472.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5472 = load i64, ptr %r5472.p, align 8, !alias.scope !3, !noalias !4
  %c5473 = trunc i64 %r5472 to i32
  %t5474 = or i32 0, %c5473
  %c5475 = zext i32 %t5474 to i64
  %wp5476 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5475, ptr %wp5476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e20 word 0xaa1903e6
  %r5477.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5477 = load i64, ptr %r5477.p, align 8, !alias.scope !3, !noalias !4
  %t5478 = or i64 0, %r5477
  %wp5479 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5478, ptr %wp5479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e24 word 0xf9430d29
  %r5480.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5480 = load i64, ptr %r5480.p, align 8, !alias.scope !3, !noalias !4
  %t5481 = add i64 %r5480, 1560
  %gmp5482 = inttoptr i64 %t5481 to ptr
  %gml5483 = load i64, ptr %gmp5482, align 1, !alias.scope !4, !noalias !3
  %wp5484 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5483, ptr %wp5484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e28 word 0xaa1803e5
  %r5485.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5485 = load i64, ptr %r5485.p, align 8, !alias.scope !3, !noalias !4
  %t5486 = or i64 0, %r5485
  %wp5487 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5486, ptr %wp5487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e2c word 0xb9400feb
  %r5488.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5488 = load i64, ptr %r5488.p, align 8, !alias.scope !3, !noalias !4
  %t5489 = add i64 %r5488, 12
  %gmp5490 = inttoptr i64 %t5489 to ptr
  %gml5491 = load i32, ptr %gmp5490, align 1, !alias.scope !4, !noalias !3
  %c5492 = zext i32 %gml5491 to i64
  %wp5493 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5492, ptr %wp5493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e30 word 0xf9400bea
  %r5494.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5494 = load i64, ptr %r5494.p, align 8, !alias.scope !3, !noalias !4
  %t5495 = add i64 %r5494, 16
  %gmp5496 = inttoptr i64 %t5495 to ptr
  %gml5497 = load i64, ptr %gmp5496, align 1, !alias.scope !4, !noalias !3
  %wp5498 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5497, ptr %wp5498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e34 word 0xb94003e4
  %r5499.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5499 = load i64, ptr %r5499.p, align 8, !alias.scope !3, !noalias !4
  %gmp5500 = inttoptr i64 %r5499 to ptr
  %gml5501 = load i32, ptr %gmp5500, align 1, !alias.scope !4, !noalias !3
  %c5502 = zext i32 %gml5501 to i64
  %wp5503 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5502, ptr %wp5503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e38 word 0x17fffb65
  br label %L_800268bcc
L_800269e94_ft:
  ; @pc 0x800269e94 word 0xb001b728
  %wp5580 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e98 word 0xf001b869
  %wp5581 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp5581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269e9c word 0xf942f908
  %r5582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5582 = load i64, ptr %r5582.p, align 8, !alias.scope !3, !noalias !4
  %t5583 = add i64 %r5582, 1520
  %gmp5584 = inttoptr i64 %t5583 to ptr
  %gml5585 = load i64, ptr %gmp5584, align 1, !alias.scope !4, !noalias !3
  %wp5586 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5585, ptr %wp5586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ea0 word 0xf941b929
  %r5587.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5587 = load i64, ptr %r5587.p, align 8, !alias.scope !3, !noalias !4
  %t5588 = add i64 %r5587, 880
  %gmp5589 = inttoptr i64 %t5588 to ptr
  %gml5590 = load i64, ptr %gmp5589, align 1, !alias.scope !4, !noalias !3
  %wp5591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5590, ptr %wp5591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ea4 word 0xf001b860
  %wp5592 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ea8 word 0x91004108
  %r5593.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5593 = load i64, ptr %r5593.p, align 8, !alias.scope !3, !noalias !4
  %t5594 = add i64 %r5593, 16
  %wp5595 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5594, ptr %wp5595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269eac word 0xf9000128
  %r5596.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5596 = load i64, ptr %r5596.p, align 8, !alias.scope !3, !noalias !4
  %r5597.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5597 = load i64, ptr %r5597.p, align 8, !alias.scope !3, !noalias !4
  %gmp5598 = inttoptr i64 %r5596 to ptr
  store i64 %r5597, ptr %gmp5598, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269eb0 word 0xf941bc00
  %r5599.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5599 = load i64, ptr %r5599.p, align 8, !alias.scope !3, !noalias !4
  %t5600 = add i64 %r5599, 888
  %gmp5601 = inttoptr i64 %t5600 to ptr
  %gml5602 = load i64, ptr %gmp5601, align 1, !alias.scope !4, !noalias !3
  %wp5603 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5602, ptr %wp5603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269eb4 word 0x94a4e6bf
  %wp5604 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269368, ptr %wp5604, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269eb8 word 0xf001b86e
  %wp5605 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ebc word 0xf001b86d
  %wp5606 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ec0 word 0xf941b5ce
  %r5607.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5607 = load i64, ptr %r5607.p, align 8, !alias.scope !3, !noalias !4
  %t5608 = add i64 %r5607, 872
  %gmp5609 = inttoptr i64 %t5608 to ptr
  %gml5610 = load i64, ptr %gmp5609, align 1, !alias.scope !4, !noalias !3
  %wp5611 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5610, ptr %wp5611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ec4 word 0xb001b72c
  %wp5612 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ec8 word 0xb001b729
  %wp5613 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ecc word 0xf941bdad
  %r5614.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5614 = load i64, ptr %r5614.p, align 8, !alias.scope !3, !noalias !4
  %t5615 = add i64 %r5614, 888
  %gmp5616 = inttoptr i64 %t5615 to ptr
  %gml5617 = load i64, ptr %gmp5616, align 1, !alias.scope !4, !noalias !3
  %wp5618 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5617, ptr %wp5618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ed0 word 0xf943018c
  %r5619.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5619 = load i64, ptr %r5619.p, align 8, !alias.scope !3, !noalias !4
  %t5620 = add i64 %r5619, 1536
  %gmp5621 = inttoptr i64 %t5620 to ptr
  %gml5622 = load i64, ptr %gmp5621, align 1, !alias.scope !4, !noalias !3
  %wp5623 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5622, ptr %wp5623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ed4 word 0x2a1403e7
  %r5624.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5624 = load i64, ptr %r5624.p, align 8, !alias.scope !3, !noalias !4
  %c5625 = trunc i64 %r5624 to i32
  %t5626 = or i32 0, %c5625
  %c5627 = zext i32 %t5626 to i64
  %wp5628 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5627, ptr %wp5628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ed8 word 0xaa1903e6
  %r5629.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5629 = load i64, ptr %r5629.p, align 8, !alias.scope !3, !noalias !4
  %t5630 = or i64 0, %r5629
  %wp5631 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5630, ptr %wp5631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269edc word 0xf9430d29
  %r5632.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5632 = load i64, ptr %r5632.p, align 8, !alias.scope !3, !noalias !4
  %t5633 = add i64 %r5632, 1560
  %gmp5634 = inttoptr i64 %t5633 to ptr
  %gml5635 = load i64, ptr %gmp5634, align 1, !alias.scope !4, !noalias !3
  %wp5636 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5635, ptr %wp5636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ee0 word 0xaa1803e5
  %r5637.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5637 = load i64, ptr %r5637.p, align 8, !alias.scope !3, !noalias !4
  %t5638 = or i64 0, %r5637
  %wp5639 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5638, ptr %wp5639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ee4 word 0xb9400feb
  %r5640.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5640 = load i64, ptr %r5640.p, align 8, !alias.scope !3, !noalias !4
  %t5641 = add i64 %r5640, 12
  %gmp5642 = inttoptr i64 %t5641 to ptr
  %gml5643 = load i32, ptr %gmp5642, align 1, !alias.scope !4, !noalias !3
  %c5644 = zext i32 %gml5643 to i64
  %wp5645 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5644, ptr %wp5645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ee8 word 0xf9400bea
  %r5646.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5646 = load i64, ptr %r5646.p, align 8, !alias.scope !3, !noalias !4
  %t5647 = add i64 %r5646, 16
  %gmp5648 = inttoptr i64 %t5647 to ptr
  %gml5649 = load i64, ptr %gmp5648, align 1, !alias.scope !4, !noalias !3
  %wp5650 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5649, ptr %wp5650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269eec word 0xb94003e4
  %r5651.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5651 = load i64, ptr %r5651.p, align 8, !alias.scope !3, !noalias !4
  %gmp5652 = inttoptr i64 %r5651 to ptr
  %gml5653 = load i32, ptr %gmp5652, align 1, !alias.scope !4, !noalias !3
  %c5654 = zext i32 %gml5653 to i64
  %wp5655 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5654, ptr %wp5655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269ef0 word 0x17fffb24
  br label %L_800268b80
L_800269f4c_ft:
  ; @pc 0x800269f4c word 0xb001b728
  %wp5732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f50 word 0xb001b729
  %wp5733 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f54 word 0xf9430508
  %r5734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5734 = load i64, ptr %r5734.p, align 8, !alias.scope !3, !noalias !4
  %t5735 = add i64 %r5734, 1544
  %gmp5736 = inttoptr i64 %t5735 to ptr
  %gml5737 = load i64, ptr %gmp5736, align 1, !alias.scope !4, !noalias !3
  %wp5738 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5737, ptr %wp5738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f58 word 0xf942fd29
  %r5739.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5739 = load i64, ptr %r5739.p, align 8, !alias.scope !3, !noalias !4
  %t5740 = add i64 %r5739, 1528
  %gmp5741 = inttoptr i64 %t5740 to ptr
  %gml5742 = load i64, ptr %gmp5741, align 1, !alias.scope !4, !noalias !3
  %wp5743 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5742, ptr %wp5743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f5c word 0xb001b720
  %wp5744 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f60 word 0x91004108
  %r5745.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5745 = load i64, ptr %r5745.p, align 8, !alias.scope !3, !noalias !4
  %t5746 = add i64 %r5745, 16
  %wp5747 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5746, ptr %wp5747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f64 word 0xf9000128
  %r5748.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5748 = load i64, ptr %r5748.p, align 8, !alias.scope !3, !noalias !4
  %r5749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5749 = load i64, ptr %r5749.p, align 8, !alias.scope !3, !noalias !4
  %gmp5750 = inttoptr i64 %r5748 to ptr
  store i64 %r5749, ptr %gmp5750, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800269f68 word 0xf9430000
  %r5751.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5751 = load i64, ptr %r5751.p, align 8, !alias.scope !3, !noalias !4
  %t5752 = add i64 %r5751, 1536
  %gmp5753 = inttoptr i64 %t5752 to ptr
  %gml5754 = load i64, ptr %gmp5753, align 1, !alias.scope !4, !noalias !3
  %wp5755 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5754, ptr %wp5755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f6c word 0x94a4e691
  %wp5756 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269552, ptr %wp5756, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800269f70 word 0xf001b86e
  %wp5757 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f74 word 0xf001b86d
  %wp5758 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f78 word 0xf941b5ce
  %r5759.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5759 = load i64, ptr %r5759.p, align 8, !alias.scope !3, !noalias !4
  %t5760 = add i64 %r5759, 872
  %gmp5761 = inttoptr i64 %t5760 to ptr
  %gml5762 = load i64, ptr %gmp5761, align 1, !alias.scope !4, !noalias !3
  %wp5763 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5762, ptr %wp5763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f7c word 0xb001b72c
  %wp5764 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f80 word 0xb001b729
  %wp5765 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f84 word 0xf941bdad
  %r5766.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5766 = load i64, ptr %r5766.p, align 8, !alias.scope !3, !noalias !4
  %t5767 = add i64 %r5766, 888
  %gmp5768 = inttoptr i64 %t5767 to ptr
  %gml5769 = load i64, ptr %gmp5768, align 1, !alias.scope !4, !noalias !3
  %wp5770 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5769, ptr %wp5770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f88 word 0xf943018c
  %r5771.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5771 = load i64, ptr %r5771.p, align 8, !alias.scope !3, !noalias !4
  %t5772 = add i64 %r5771, 1536
  %gmp5773 = inttoptr i64 %t5772 to ptr
  %gml5774 = load i64, ptr %gmp5773, align 1, !alias.scope !4, !noalias !3
  %wp5775 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5774, ptr %wp5775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f8c word 0x2a1403e7
  %r5776.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5776 = load i64, ptr %r5776.p, align 8, !alias.scope !3, !noalias !4
  %c5777 = trunc i64 %r5776 to i32
  %t5778 = or i32 0, %c5777
  %c5779 = zext i32 %t5778 to i64
  %wp5780 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5779, ptr %wp5780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f90 word 0xaa1903e6
  %r5781.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5781 = load i64, ptr %r5781.p, align 8, !alias.scope !3, !noalias !4
  %t5782 = or i64 0, %r5781
  %wp5783 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5782, ptr %wp5783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f94 word 0xf9430d29
  %r5784.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5784 = load i64, ptr %r5784.p, align 8, !alias.scope !3, !noalias !4
  %t5785 = add i64 %r5784, 1560
  %gmp5786 = inttoptr i64 %t5785 to ptr
  %gml5787 = load i64, ptr %gmp5786, align 1, !alias.scope !4, !noalias !3
  %wp5788 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5787, ptr %wp5788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f98 word 0xaa1803e5
  %r5789.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5789 = load i64, ptr %r5789.p, align 8, !alias.scope !3, !noalias !4
  %t5790 = or i64 0, %r5789
  %wp5791 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5790, ptr %wp5791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269f9c word 0xb9400feb
  %r5792.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5792 = load i64, ptr %r5792.p, align 8, !alias.scope !3, !noalias !4
  %t5793 = add i64 %r5792, 12
  %gmp5794 = inttoptr i64 %t5793 to ptr
  %gml5795 = load i32, ptr %gmp5794, align 1, !alias.scope !4, !noalias !3
  %c5796 = zext i32 %gml5795 to i64
  %wp5797 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5796, ptr %wp5797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fa0 word 0xf9400bea
  %r5798.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5798 = load i64, ptr %r5798.p, align 8, !alias.scope !3, !noalias !4
  %t5799 = add i64 %r5798, 16
  %gmp5800 = inttoptr i64 %t5799 to ptr
  %gml5801 = load i64, ptr %gmp5800, align 1, !alias.scope !4, !noalias !3
  %wp5802 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5801, ptr %wp5802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fa4 word 0xb94003e4
  %r5803.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5803 = load i64, ptr %r5803.p, align 8, !alias.scope !3, !noalias !4
  %gmp5804 = inttoptr i64 %r5803 to ptr
  %gml5805 = load i32, ptr %gmp5804, align 1, !alias.scope !4, !noalias !3
  %c5806 = zext i32 %gml5805 to i64
  %wp5807 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5806, ptr %wp5807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800269fa8 word 0x17fffaf8
  br label %L_800268b88
L_80026a004_ft:
  ; @pc 0x80026a004 word 0xb001b708
  %wp5884 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp5884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a008 word 0x9001b729
  %wp5885 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a00c word 0xf9440508
  %r5886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5886 = load i64, ptr %r5886.p, align 8, !alias.scope !3, !noalias !4
  %t5887 = add i64 %r5886, 2056
  %gmp5888 = inttoptr i64 %t5887 to ptr
  %gml5889 = load i64, ptr %gmp5888, align 1, !alias.scope !4, !noalias !3
  %wp5890 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5889, ptr %wp5890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a010 word 0xf9430929
  %r5891.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5891 = load i64, ptr %r5891.p, align 8, !alias.scope !3, !noalias !4
  %t5892 = add i64 %r5891, 1552
  %gmp5893 = inttoptr i64 %t5892 to ptr
  %gml5894 = load i64, ptr %gmp5893, align 1, !alias.scope !4, !noalias !3
  %wp5895 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5894, ptr %wp5895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a014 word 0x9001b720
  %wp5896 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a018 word 0x91004108
  %r5897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5897 = load i64, ptr %r5897.p, align 8, !alias.scope !3, !noalias !4
  %t5898 = add i64 %r5897, 16
  %wp5899 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5898, ptr %wp5899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a01c word 0xf9000128
  %r5900.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5900 = load i64, ptr %r5900.p, align 8, !alias.scope !3, !noalias !4
  %r5901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5901 = load i64, ptr %r5901.p, align 8, !alias.scope !3, !noalias !4
  %gmp5902 = inttoptr i64 %r5900 to ptr
  store i64 %r5901, ptr %gmp5902, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80026a020 word 0xf9430c00
  %r5903.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5903 = load i64, ptr %r5903.p, align 8, !alias.scope !3, !noalias !4
  %t5904 = add i64 %r5903, 1560
  %gmp5905 = inttoptr i64 %t5904 to ptr
  %gml5906 = load i64, ptr %gmp5905, align 1, !alias.scope !4, !noalias !3
  %wp5907 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5906, ptr %wp5907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a024 word 0x94a4e663
  %wp5908 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362269736, ptr %wp5908, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80026a028 word 0xd001b86e
  %wp5909 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419998720, ptr %wp5909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a02c word 0xd001b86d
  %wp5910 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a030 word 0xf941b5ce
  %r5911.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5911 = load i64, ptr %r5911.p, align 8, !alias.scope !3, !noalias !4
  %t5912 = add i64 %r5911, 872
  %gmp5913 = inttoptr i64 %t5912 to ptr
  %gml5914 = load i64, ptr %gmp5913, align 1, !alias.scope !4, !noalias !3
  %wp5915 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5914, ptr %wp5915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a034 word 0x9001b72c
  %wp5916 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419826688, ptr %wp5916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a038 word 0x9001b729
  %wp5917 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a03c word 0xf941bdad
  %r5918.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5918 = load i64, ptr %r5918.p, align 8, !alias.scope !3, !noalias !4
  %t5919 = add i64 %r5918, 888
  %gmp5920 = inttoptr i64 %t5919 to ptr
  %gml5921 = load i64, ptr %gmp5920, align 1, !alias.scope !4, !noalias !3
  %wp5922 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5921, ptr %wp5922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a040 word 0xf943018c
  %r5923.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5923 = load i64, ptr %r5923.p, align 8, !alias.scope !3, !noalias !4
  %t5924 = add i64 %r5923, 1536
  %gmp5925 = inttoptr i64 %t5924 to ptr
  %gml5926 = load i64, ptr %gmp5925, align 1, !alias.scope !4, !noalias !3
  %wp5927 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5926, ptr %wp5927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a044 word 0x2a1403e7
  %r5928.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5928 = load i64, ptr %r5928.p, align 8, !alias.scope !3, !noalias !4
  %c5929 = trunc i64 %r5928 to i32
  %t5930 = or i32 0, %c5929
  %c5931 = zext i32 %t5930 to i64
  %wp5932 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c5931, ptr %wp5932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a048 word 0xaa1903e6
  %r5933.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5933 = load i64, ptr %r5933.p, align 8, !alias.scope !3, !noalias !4
  %t5934 = or i64 0, %r5933
  %wp5935 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t5934, ptr %wp5935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a04c word 0xf9430d29
  %r5936.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5936 = load i64, ptr %r5936.p, align 8, !alias.scope !3, !noalias !4
  %t5937 = add i64 %r5936, 1560
  %gmp5938 = inttoptr i64 %t5937 to ptr
  %gml5939 = load i64, ptr %gmp5938, align 1, !alias.scope !4, !noalias !3
  %wp5940 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5939, ptr %wp5940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a050 word 0xaa1803e5
  %r5941.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5941 = load i64, ptr %r5941.p, align 8, !alias.scope !3, !noalias !4
  %t5942 = or i64 0, %r5941
  %wp5943 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5942, ptr %wp5943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a054 word 0xb9400feb
  %r5944.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5944 = load i64, ptr %r5944.p, align 8, !alias.scope !3, !noalias !4
  %t5945 = add i64 %r5944, 12
  %gmp5946 = inttoptr i64 %t5945 to ptr
  %gml5947 = load i32, ptr %gmp5946, align 1, !alias.scope !4, !noalias !3
  %c5948 = zext i32 %gml5947 to i64
  %wp5949 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5948, ptr %wp5949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a058 word 0xf9400bea
  %r5950.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5950 = load i64, ptr %r5950.p, align 8, !alias.scope !3, !noalias !4
  %t5951 = add i64 %r5950, 16
  %gmp5952 = inttoptr i64 %t5951 to ptr
  %gml5953 = load i64, ptr %gmp5952, align 1, !alias.scope !4, !noalias !3
  %wp5954 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5953, ptr %wp5954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a05c word 0xb94003e4
  %r5955.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5955 = load i64, ptr %r5955.p, align 8, !alias.scope !3, !noalias !4
  %gmp5956 = inttoptr i64 %r5955 to ptr
  %gml5957 = load i32, ptr %gmp5956, align 1, !alias.scope !4, !noalias !3
  %c5958 = zext i32 %gml5957 to i64
  %wp5959 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5958, ptr %wp5959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80026a060 word 0x17fffacc
  br label %L_800268b90
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
