; UltraTears chunk main_027_physics: 1 functions [0x800062d9c..0x800065220)
; ModuleID = 'main_027_physics_raw'
source_filename = "main_027_physics_raw"
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

declare dso_local void @f_8000e08c4(ptr)
declare dso_local void @f_8000ef6d8(ptr)
declare dso_local void @f_8000f1808(ptr)
declare dso_local void @f_8000f1a88(ptr)
declare dso_local void @f_8000f1de0(ptr)
declare dso_local void @f_8000f2558(ptr)
declare dso_local void @f_8000f2a00(ptr)
declare dso_local void @f_8000f75a8(ptr)
declare dso_local void @f_8000f78c4(ptr)
declare dso_local void @f_8000f9d10(ptr)
declare dso_local void @f_800105f90(ptr)
declare dso_local void @f_800106c00(ptr)
declare dso_local void @f_800107e80(ptr)
declare dso_local void @f_8001192e4(ptr)
declare dso_local void @f_800125710(ptr)
declare dso_local void @f_800138d60(ptr)
declare dso_local void @f_80015d7bc(ptr)
declare dso_local void @f_80048d084(ptr)
declare dso_local void @f_80049309c(ptr)
declare dso_local void @f_800494654(ptr)
declare dso_local void @f_8004b19a0(ptr)
declare dso_local void @f_8006906c8(ptr)
declare dso_local void @f_800b3a298(ptr)
declare dso_local void @f_800b4284c(ptr)
declare dso_local void @f_800b44314(ptr)
declare dso_local void @f_800b4641c(ptr)
declare dso_local void @f_800b468f0(ptr)
declare dso_local void @f_800c323d0(ptr)
declare dso_local void @f_800c6f200(ptr)
declare dso_local void @f_800cf02d0(ptr)
declare dso_local void @f_800e69458(ptr)
declare dso_local void @f_801ebba6c(ptr)
declare dso_local void @f_801ebf5f0(ptr)
declare dso_local void @f_801ec0bb8(ptr)
declare dso_local void @f_801ec0c40(ptr)
declare dso_local void @f_801ec1db8(ptr)
declare dso_local void @f_801ec1e84(ptr)
declare dso_local void @f_801ec26e0(ptr)
declare dso_local void @f_801ee6154(ptr)
declare dso_local void @f_8027c3748(ptr)
declare dso_local void @f_8027c7874(ptr)
declare dso_local void @f_8027dc908(ptr)
declare dso_local void @f_802b17d0c(ptr)
declare dso_local void @f_802b2d038(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)
declare dso_local void @f_802ba4060(ptr)
declare dso_local void @f_802ba4070(ptr)
declare dso_local void @f_802ba5960(ptr)

define dso_local void @f_800062d9c(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_800062d9c:
  ; @pc 0x800062d9c word 0x6db733ed
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = add i64 %r5, -144
  %t7 = add i64 %t6, 8
  %r8.p = getelementptr inbounds i8, ptr %c, i64 720
  %r8 = load i128, ptr %r8.p, align 16, !alias.scope !3, !noalias !4
  %r9.p = getelementptr inbounds i8, ptr %c, i64 704
  %r9 = load i128, ptr %r9.p, align 16, !alias.scope !3, !noalias !4
  %c10 = trunc i128 %r8 to i64
  %c11 = trunc i128 %r9 to i64
  %gmp12 = inttoptr i64 %t6 to ptr
  store i64 %c10, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %gmp13 = inttoptr i64 %t7 to ptr
  store i64 %c11, ptr %gmp13, align 1, !alias.scope !4, !noalias !3
  %wp14 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp14, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062da0 word 0x6d012beb
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 16
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 688
  %r18 = load i128, ptr %r18.p, align 16, !alias.scope !3, !noalias !4
  %r19.p = getelementptr inbounds i8, ptr %c, i64 672
  %r19 = load i128, ptr %r19.p, align 16, !alias.scope !3, !noalias !4
  %c20 = trunc i128 %r18 to i64
  %c21 = trunc i128 %r19 to i64
  %gmp22 = inttoptr i64 %t16 to ptr
  store i64 %c20, ptr %gmp22, align 1, !alias.scope !4, !noalias !3
  %gmp23 = inttoptr i64 %t17 to ptr
  store i64 %c21, ptr %gmp23, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062da4 word 0x6d0223e9
  %r24.p = getelementptr inbounds i8, ptr %c, i64 256
  %r24 = load i64, ptr %r24.p, align 8, !alias.scope !3, !noalias !4
  %t25 = add i64 %r24, 32
  %t26 = add i64 %t25, 8
  %r27.p = getelementptr inbounds i8, ptr %c, i64 656
  %r27 = load i128, ptr %r27.p, align 16, !alias.scope !3, !noalias !4
  %r28.p = getelementptr inbounds i8, ptr %c, i64 640
  %r28 = load i128, ptr %r28.p, align 16, !alias.scope !3, !noalias !4
  %c29 = trunc i128 %r27 to i64
  %c30 = trunc i128 %r28 to i64
  %gmp31 = inttoptr i64 %t25 to ptr
  store i64 %c29, ptr %gmp31, align 1, !alias.scope !4, !noalias !3
  %gmp32 = inttoptr i64 %t26 to ptr
  store i64 %c30, ptr %gmp32, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062da8 word 0xa9037bfd
  %r33.p = getelementptr inbounds i8, ptr %c, i64 256
  %r33 = load i64, ptr %r33.p, align 8, !alias.scope !3, !noalias !4
  %t34 = add i64 %r33, 48
  %t35 = add i64 %t34, 8
  %r36.p = getelementptr inbounds i8, ptr %c, i64 232
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %gmp37 = inttoptr i64 %t34 to ptr
  store i64 %r36, ptr %gmp37, align 1, !alias.scope !4, !noalias !3
  %r38.p = getelementptr inbounds i8, ptr %c, i64 240
  %r38 = load i64, ptr %r38.p, align 8, !alias.scope !3, !noalias !4
  %gmp39 = inttoptr i64 %t35 to ptr
  store i64 %r38, ptr %gmp39, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062dac word 0x9100c3fd
  %r40.p = getelementptr inbounds i8, ptr %c, i64 256
  %r40 = load i64, ptr %r40.p, align 8, !alias.scope !3, !noalias !4
  %t41 = add i64 %r40, 48
  %wp42 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t41, ptr %wp42, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062db0 word 0xa9046ffc
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 64
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 224
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 216
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062db4 word 0xa90567fa
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 80
  %t52 = add i64 %t51, 8
  %r53.p = getelementptr inbounds i8, ptr %c, i64 208
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %gmp54 = inttoptr i64 %t51 to ptr
  store i64 %r53, ptr %gmp54, align 1, !alias.scope !4, !noalias !3
  %r55.p = getelementptr inbounds i8, ptr %c, i64 200
  %r55 = load i64, ptr %r55.p, align 8, !alias.scope !3, !noalias !4
  %gmp56 = inttoptr i64 %t52 to ptr
  store i64 %r55, ptr %gmp56, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062db8 word 0xa9065ff8
  %r57.p = getelementptr inbounds i8, ptr %c, i64 256
  %r57 = load i64, ptr %r57.p, align 8, !alias.scope !3, !noalias !4
  %t58 = add i64 %r57, 96
  %t59 = add i64 %t58, 8
  %r60.p = getelementptr inbounds i8, ptr %c, i64 192
  %r60 = load i64, ptr %r60.p, align 8, !alias.scope !3, !noalias !4
  %gmp61 = inttoptr i64 %t58 to ptr
  store i64 %r60, ptr %gmp61, align 1, !alias.scope !4, !noalias !3
  %r62.p = getelementptr inbounds i8, ptr %c, i64 184
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %gmp63 = inttoptr i64 %t59 to ptr
  store i64 %r62, ptr %gmp63, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062dbc word 0xa90757f6
  %r64.p = getelementptr inbounds i8, ptr %c, i64 256
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = add i64 %r64, 112
  %t66 = add i64 %t65, 8
  %r67.p = getelementptr inbounds i8, ptr %c, i64 176
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %gmp68 = inttoptr i64 %t65 to ptr
  store i64 %r67, ptr %gmp68, align 1, !alias.scope !4, !noalias !3
  %r69.p = getelementptr inbounds i8, ptr %c, i64 168
  %r69 = load i64, ptr %r69.p, align 8, !alias.scope !3, !noalias !4
  %gmp70 = inttoptr i64 %t66 to ptr
  store i64 %r69, ptr %gmp70, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062dc0 word 0xa9084ff4
  %r71.p = getelementptr inbounds i8, ptr %c, i64 256
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %t72 = add i64 %r71, 128
  %t73 = add i64 %t72, 8
  %r74.p = getelementptr inbounds i8, ptr %c, i64 160
  %r74 = load i64, ptr %r74.p, align 8, !alias.scope !3, !noalias !4
  %gmp75 = inttoptr i64 %t72 to ptr
  store i64 %r74, ptr %gmp75, align 1, !alias.scope !4, !noalias !3
  %r76.p = getelementptr inbounds i8, ptr %c, i64 152
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %gmp77 = inttoptr i64 %t73 to ptr
  store i64 %r76, ptr %gmp77, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062dc4 word 0xd11243ff
  %r78.p = getelementptr inbounds i8, ptr %c, i64 256
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %t79 = sub i64 %r78, 1168
  %wp80 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062dc8 word 0x91008014
  %r81.p = getelementptr inbounds i8, ptr %c, i64 0
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 32
  %wp83 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t82, ptr %wp83, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062dcc word 0xaa0003f5
  %r84.p = getelementptr inbounds i8, ptr %c, i64 0
  %r84 = load i64, ptr %r84.p, align 8, !alias.scope !3, !noalias !4
  %t85 = or i64 0, %r84
  %wp86 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062dd0 word 0xf90033e1
  %r87.p = getelementptr inbounds i8, ptr %c, i64 256
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %t88 = add i64 %r87, 96
  %r89.p = getelementptr inbounds i8, ptr %c, i64 8
  %r89 = load i64, ptr %r89.p, align 8, !alias.scope !3, !noalias !4
  %gmp90 = inttoptr i64 %t88 to ptr
  store i64 %r89, ptr %gmp90, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062dd4 word 0xaa1403e0
  %r91.p = getelementptr inbounds i8, ptr %c, i64 160
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %t92 = or i64 0, %r91
  %wp93 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t92, ptr %wp93, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062dd8 word 0x94ad04a2
  %wp94 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143324, ptr %wp94, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x800062ddc word 0xf9400aa9
  %r95.p = getelementptr inbounds i8, ptr %c, i64 168
  %r95 = load i64, ptr %r95.p, align 8, !alias.scope !3, !noalias !4
  %t96 = add i64 %r95, 16
  %gmp97 = inttoptr i64 %t96 to ptr
  %gml98 = load i64, ptr %gmp97, align 1, !alias.scope !4, !noalias !3
  %wp99 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml98, ptr %wp99, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062de0 word 0x910022a8
  %r100.p = getelementptr inbounds i8, ptr %c, i64 168
  %r100 = load i64, ptr %r100.p, align 8, !alias.scope !3, !noalias !4
  %t101 = add i64 %r100, 8
  %wp102 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t101, ptr %wp102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062de4 word 0xeb08013f
  %r103.p = getelementptr inbounds i8, ptr %c, i64 72
  %r103 = load i64, ptr %r103.p, align 8, !alias.scope !3, !noalias !4
  %r104.p = getelementptr inbounds i8, ptr %c, i64 64
  %r104 = load i64, ptr %r104.p, align 8, !alias.scope !3, !noalias !4
  %t105 = sub i64 %r103, %r104
  %fn106 = icmp slt i64 %t105, 0
  %fz107 = icmp eq i64 %t105, 0
  %fc108 = icmp uge i64 %r103, %r104
  %fx1109 = xor i64 %r103, %r104
  %fx2110 = xor i64 %r103, %t105
  %fva111 = and i64 %fx1109, %fx2110
  %fv112 = icmp slt i64 %fva111, 0
  %nz113 = zext i1 %fn106 to i64
  %zz114 = zext i1 %fz107 to i64
  %cz115 = zext i1 %fc108 to i64
  %vz116 = zext i1 %fv112 to i64
  %ns117 = shl i64 %nz113, 31
  %zs118 = shl i64 %zz114, 30
  %cs119 = shl i64 %cz115, 29
  %vs120 = shl i64 %vz116, 28
  %nzor121 = or i64 %ns117, %zs118
  %cvor122 = or i64 %cs119, %vs120
  %nzcv123 = or i64 %nzor121, %cvor122
  %wp124 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062de8 word 0x54000620
  %r125.p = getelementptr inbounds i8, ptr %c, i64 272
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %fsh127 = lshr i64 %r125, 30
  %cond126 = trunc i64 %fsh127 to i1
  br i1 %cond126, label %L_800062eac, label %L_800062dec_ft
L_800062e24:
  ; @pc 0x800062e24 word 0xaa1703e0
  %r171.p = getelementptr inbounds i8, ptr %c, i64 184
  %r171 = load i64, ptr %r171.p, align 8, !alias.scope !3, !noalias !4
  %t172 = or i64 0, %r171
  %wp173 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t172, ptr %wp173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e28 word 0xf8408c08
  %r174.p = getelementptr inbounds i8, ptr %c, i64 0
  %r174 = load i64, ptr %r174.p, align 8, !alias.scope !3, !noalias !4
  %t175 = add i64 %r174, 8
  %gmp176 = inttoptr i64 %t175 to ptr
  %gml177 = load i64, ptr %gmp176, align 1, !alias.scope !4, !noalias !3
  %wp178 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t175, ptr %wp178, align 8, !alias.scope !3, !noalias !4
  %wp179 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml177, ptr %wp179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e2c word 0xf9400108
  %r180.p = getelementptr inbounds i8, ptr %c, i64 64
  %r180 = load i64, ptr %r180.p, align 8, !alias.scope !3, !noalias !4
  %gmp181 = inttoptr i64 %r180 to ptr
  %gml182 = load i64, ptr %gmp181, align 1, !alias.scope !4, !noalias !3
  %wp183 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml182, ptr %wp183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e30 word 0xeb1a011f
  %r184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %r185.p = getelementptr inbounds i8, ptr %c, i64 208
  %r185 = load i64, ptr %r185.p, align 8, !alias.scope !3, !noalias !4
  %t186 = sub i64 %r184, %r185
  %fn187 = icmp slt i64 %t186, 0
  %fz188 = icmp eq i64 %t186, 0
  %fc189 = icmp uge i64 %r184, %r185
  %fx1190 = xor i64 %r184, %r185
  %fx2191 = xor i64 %r184, %t186
  %fva192 = and i64 %fx1190, %fx2191
  %fv193 = icmp slt i64 %fva192, 0
  %nz194 = zext i1 %fn187 to i64
  %zz195 = zext i1 %fz188 to i64
  %cz196 = zext i1 %fc189 to i64
  %vz197 = zext i1 %fv193 to i64
  %ns198 = shl i64 %nz194, 31
  %zs199 = shl i64 %zz195, 30
  %cs200 = shl i64 %cz196, 29
  %vs201 = shl i64 %vz197, 28
  %nzor202 = or i64 %ns198, %zs199
  %cvor203 = or i64 %cs200, %vs201
  %nzcv204 = or i64 %nzor202, %cvor203
  %wp205 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e34 word 0x54000420
  %r206.p = getelementptr inbounds i8, ptr %c, i64 272
  %r206 = load i64, ptr %r206.p, align 8, !alias.scope !3, !noalias !4
  %fsh208 = lshr i64 %r206, 30
  %cond207 = trunc i64 %fsh208 to i1
  br i1 %cond207, label %L_800062eb8, label %L_800062e38_ft
L_800062e40:
  ; @pc 0x800062e40 word 0xf94033e1
  %r234.p = getelementptr inbounds i8, ptr %c, i64 256
  %r234 = load i64, ptr %r234.p, align 8, !alias.scope !3, !noalias !4
  %t235 = add i64 %r234, 96
  %gmp236 = inttoptr i64 %t235 to ptr
  %gml237 = load i64, ptr %gmp236, align 1, !alias.scope !4, !noalias !3
  %wp238 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml237, ptr %wp238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e44 word 0xd63f0100
  %r239.p = getelementptr inbounds i8, ptr %c, i64 64
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %fp240 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r239, ptr %fp240, align 8, !alias.scope !3, !noalias !4
  %wp241 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143432, ptr %wp241, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_800062e48
L_800062e48:
  ; @pc 0x800062e48 word 0x12000008
  %r242.p = getelementptr inbounds i8, ptr %c, i64 0
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %c243 = trunc i64 %r242 to i32
  %t244 = and i32 %c243, 1
  %c245 = zext i32 %t244 to i64
  %wp246 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c245, ptr %wp246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e4c word 0x0b080339
  %r247.p = getelementptr inbounds i8, ptr %c, i64 200
  %r247 = load i64, ptr %r247.p, align 8, !alias.scope !3, !noalias !4
  %c248 = trunc i64 %r247 to i32
  %r249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r249 = load i64, ptr %r249.p, align 8, !alias.scope !3, !noalias !4
  %c250 = trunc i64 %r249 to i32
  %t251 = add i32 %c248, %c250
  %c252 = zext i32 %t251 to i64
  %wp253 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c252, ptr %wp253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e50 word 0x0a2002a8
  %r254.p = getelementptr inbounds i8, ptr %c, i64 0
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %c255 = trunc i64 %r254 to i32
  %t256 = xor i32 %c255, -1
  %r257.p = getelementptr inbounds i8, ptr %c, i64 168
  %r257 = load i64, ptr %r257.p, align 8, !alias.scope !3, !noalias !4
  %c258 = trunc i64 %r257 to i32
  %t259 = and i32 %c258, %t256
  %c260 = zext i32 %t259 to i64
  %wp261 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c260, ptr %wp261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e54 word 0x0b08039c
  %r262.p = getelementptr inbounds i8, ptr %c, i64 224
  %r262 = load i64, ptr %r262.p, align 8, !alias.scope !3, !noalias !4
  %c263 = trunc i64 %r262 to i32
  %r264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %c265 = trunc i64 %r264 to i32
  %t266 = add i32 %c263, %c265
  %c267 = zext i32 %t266 to i64
  %wp268 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c267, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e58 word 0x8b1802e8
  %r269.p = getelementptr inbounds i8, ptr %c, i64 184
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %r270.p = getelementptr inbounds i8, ptr %c, i64 192
  %r270 = load i64, ptr %r270.p, align 8, !alias.scope !3, !noalias !4
  %t271 = add i64 %r269, %r270
  %wp272 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t271, ptr %wp272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e5c word 0xf9400508
  %r273.p = getelementptr inbounds i8, ptr %c, i64 64
  %r273 = load i64, ptr %r273.p, align 8, !alias.scope !3, !noalias !4
  %t274 = add i64 %r273, 8
  %gmp275 = inttoptr i64 %t274 to ptr
  %gml276 = load i64, ptr %gmp275, align 1, !alias.scope !4, !noalias !3
  %wp277 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml276, ptr %wp277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e60 word 0x8b160117
  %r278.p = getelementptr inbounds i8, ptr %c, i64 64
  %r278 = load i64, ptr %r278.p, align 8, !alias.scope !3, !noalias !4
  %r279.p = getelementptr inbounds i8, ptr %c, i64 176
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %t280 = add i64 %r278, %r279
  %wp281 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t280, ptr %wp281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e64 word 0xeb1302ff
  %r282.p = getelementptr inbounds i8, ptr %c, i64 184
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %r283.p = getelementptr inbounds i8, ptr %c, i64 152
  %r283 = load i64, ptr %r283.p, align 8, !alias.scope !3, !noalias !4
  %t284 = sub i64 %r282, %r283
  %fn285 = icmp slt i64 %t284, 0
  %fz286 = icmp eq i64 %t284, 0
  %fc287 = icmp uge i64 %r282, %r283
  %fx1288 = xor i64 %r282, %r283
  %fx2289 = xor i64 %r282, %t284
  %fva290 = and i64 %fx1288, %fx2289
  %fv291 = icmp slt i64 %fva290, 0
  %nz292 = zext i1 %fn285 to i64
  %zz293 = zext i1 %fz286 to i64
  %cz294 = zext i1 %fc287 to i64
  %vz295 = zext i1 %fv291 to i64
  %ns296 = shl i64 %nz292, 31
  %zs297 = shl i64 %zz293, 30
  %cs298 = shl i64 %cz294, 29
  %vs299 = shl i64 %vz295, 28
  %nzor300 = or i64 %ns296, %zs297
  %cvor301 = or i64 %cs298, %vs299
  %nzcv302 = or i64 %nzor300, %cvor301
  %wp303 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv302, ptr %wp303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e68 word 0x54fffde1
  %r304.p = getelementptr inbounds i8, ptr %c, i64 272
  %r304 = load i64, ptr %r304.p, align 8, !alias.scope !3, !noalias !4
  %fsh306 = lshr i64 %r304, 30
  %ftr307 = trunc i64 %fsh306 to i1
  %cond305 = xor i1 %ftr307, true
  br i1 %cond305, label %L_800062e24, label %L_800062e6c_ft
L_800062e74:
  ; @pc 0x800062e74 word 0xaa1403e0
  %r317.p = getelementptr inbounds i8, ptr %c, i64 160
  %r317 = load i64, ptr %r317.p, align 8, !alias.scope !3, !noalias !4
  %t318 = or i64 0, %r317
  %wp319 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t318, ptr %wp319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e78 word 0x94ad047e
  %wp320 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143484, ptr %wp320, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x800062e7c word 0xaa190260
  %r321.p = getelementptr inbounds i8, ptr %c, i64 200
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %r322.p = getelementptr inbounds i8, ptr %c, i64 152
  %r322 = load i64, ptr %r322.p, align 8, !alias.scope !3, !noalias !4
  %t323 = or i64 %r322, %r321
  %wp324 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t323, ptr %wp324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e80 word 0x911243ff
  %r325.p = getelementptr inbounds i8, ptr %c, i64 256
  %r325 = load i64, ptr %r325.p, align 8, !alias.scope !3, !noalias !4
  %t326 = add i64 %r325, 1168
  %wp327 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t326, ptr %wp327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e84 word 0x6d4223e9
  %r328.p = getelementptr inbounds i8, ptr %c, i64 256
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = add i64 %r328, 32
  %t330 = add i64 %t329, 8
  %gmp331 = inttoptr i64 %t329 to ptr
  %gml332 = load i64, ptr %gmp331, align 1, !alias.scope !4, !noalias !3
  %gmp333 = inttoptr i64 %t330 to ptr
  %gml334 = load i64, ptr %gmp333, align 1, !alias.scope !4, !noalias !3
  %c335 = zext i64 %gml332 to i128
  %wp336 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c335, ptr %wp336, align 16, !alias.scope !3, !noalias !4
  %c337 = zext i64 %gml334 to i128
  %wp338 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c337, ptr %wp338, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800062e88 word 0x6d412beb
  %r339.p = getelementptr inbounds i8, ptr %c, i64 256
  %r339 = load i64, ptr %r339.p, align 8, !alias.scope !3, !noalias !4
  %t340 = add i64 %r339, 16
  %t341 = add i64 %t340, 8
  %gmp342 = inttoptr i64 %t340 to ptr
  %gml343 = load i64, ptr %gmp342, align 1, !alias.scope !4, !noalias !3
  %gmp344 = inttoptr i64 %t341 to ptr
  %gml345 = load i64, ptr %gmp344, align 1, !alias.scope !4, !noalias !3
  %c346 = zext i64 %gml343 to i128
  %wp347 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c346, ptr %wp347, align 16, !alias.scope !3, !noalias !4
  %c348 = zext i64 %gml345 to i128
  %wp349 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c348, ptr %wp349, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800062e8c word 0xa9484ff4
  %r350.p = getelementptr inbounds i8, ptr %c, i64 256
  %r350 = load i64, ptr %r350.p, align 8, !alias.scope !3, !noalias !4
  %t351 = add i64 %r350, 128
  %t352 = add i64 %t351, 8
  %gmp353 = inttoptr i64 %t351 to ptr
  %gml354 = load i64, ptr %gmp353, align 1, !alias.scope !4, !noalias !3
  %gmp355 = inttoptr i64 %t352 to ptr
  %gml356 = load i64, ptr %gmp355, align 1, !alias.scope !4, !noalias !3
  %wp357 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml354, ptr %wp357, align 8, !alias.scope !3, !noalias !4
  %wp358 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml356, ptr %wp358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e90 word 0xa94757f6
  %r359.p = getelementptr inbounds i8, ptr %c, i64 256
  %r359 = load i64, ptr %r359.p, align 8, !alias.scope !3, !noalias !4
  %t360 = add i64 %r359, 112
  %t361 = add i64 %t360, 8
  %gmp362 = inttoptr i64 %t360 to ptr
  %gml363 = load i64, ptr %gmp362, align 1, !alias.scope !4, !noalias !3
  %gmp364 = inttoptr i64 %t361 to ptr
  %gml365 = load i64, ptr %gmp364, align 1, !alias.scope !4, !noalias !3
  %wp366 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml363, ptr %wp366, align 8, !alias.scope !3, !noalias !4
  %wp367 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml365, ptr %wp367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e94 word 0xa9465ff8
  %r368.p = getelementptr inbounds i8, ptr %c, i64 256
  %r368 = load i64, ptr %r368.p, align 8, !alias.scope !3, !noalias !4
  %t369 = add i64 %r368, 96
  %t370 = add i64 %t369, 8
  %gmp371 = inttoptr i64 %t369 to ptr
  %gml372 = load i64, ptr %gmp371, align 1, !alias.scope !4, !noalias !3
  %gmp373 = inttoptr i64 %t370 to ptr
  %gml374 = load i64, ptr %gmp373, align 1, !alias.scope !4, !noalias !3
  %wp375 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml372, ptr %wp375, align 8, !alias.scope !3, !noalias !4
  %wp376 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml374, ptr %wp376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e98 word 0xa94567fa
  %r377.p = getelementptr inbounds i8, ptr %c, i64 256
  %r377 = load i64, ptr %r377.p, align 8, !alias.scope !3, !noalias !4
  %t378 = add i64 %r377, 80
  %t379 = add i64 %t378, 8
  %gmp380 = inttoptr i64 %t378 to ptr
  %gml381 = load i64, ptr %gmp380, align 1, !alias.scope !4, !noalias !3
  %gmp382 = inttoptr i64 %t379 to ptr
  %gml383 = load i64, ptr %gmp382, align 1, !alias.scope !4, !noalias !3
  %wp384 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml381, ptr %wp384, align 8, !alias.scope !3, !noalias !4
  %wp385 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml383, ptr %wp385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e9c word 0xa9446ffc
  %r386.p = getelementptr inbounds i8, ptr %c, i64 256
  %r386 = load i64, ptr %r386.p, align 8, !alias.scope !3, !noalias !4
  %t387 = add i64 %r386, 64
  %t388 = add i64 %t387, 8
  %gmp389 = inttoptr i64 %t387 to ptr
  %gml390 = load i64, ptr %gmp389, align 1, !alias.scope !4, !noalias !3
  %gmp391 = inttoptr i64 %t388 to ptr
  %gml392 = load i64, ptr %gmp391, align 1, !alias.scope !4, !noalias !3
  %wp393 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml390, ptr %wp393, align 8, !alias.scope !3, !noalias !4
  %wp394 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml392, ptr %wp394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ea0 word 0xa9437bfd
  %r395.p = getelementptr inbounds i8, ptr %c, i64 256
  %r395 = load i64, ptr %r395.p, align 8, !alias.scope !3, !noalias !4
  %t396 = add i64 %r395, 48
  %t397 = add i64 %t396, 8
  %gmp398 = inttoptr i64 %t396 to ptr
  %gml399 = load i64, ptr %gmp398, align 1, !alias.scope !4, !noalias !3
  %gmp400 = inttoptr i64 %t397 to ptr
  %gml401 = load i64, ptr %gmp400, align 1, !alias.scope !4, !noalias !3
  %wp402 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml399, ptr %wp402, align 8, !alias.scope !3, !noalias !4
  %wp403 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml401, ptr %wp403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ea4 word 0x6cc933ed
  %r404.p = getelementptr inbounds i8, ptr %c, i64 256
  %r404 = load i64, ptr %r404.p, align 8, !alias.scope !3, !noalias !4
  %t405 = add i64 %r404, 8
  %gmp406 = inttoptr i64 %r404 to ptr
  %gml407 = load i64, ptr %gmp406, align 1, !alias.scope !4, !noalias !3
  %gmp408 = inttoptr i64 %t405 to ptr
  %gml409 = load i64, ptr %gmp408, align 1, !alias.scope !4, !noalias !3
  %c410 = zext i64 %gml407 to i128
  %wp411 = getelementptr inbounds i8, ptr %c, i64 720
  store i128 %c410, ptr %wp411, align 16, !alias.scope !3, !noalias !4
  %c412 = zext i64 %gml409 to i128
  %wp413 = getelementptr inbounds i8, ptr %c, i64 704
  store i128 %c412, ptr %wp413, align 16, !alias.scope !3, !noalias !4
  %t414 = add i64 %r404, 144
  %wp415 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t414, ptr %wp415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ea8 word 0xd65f03c0
  ret void
L_800062eac:
  ; @pc 0x800062eac word 0xaa1f03f9
  %t416 = or i64 0, 0
  %wp417 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t416, ptr %wp417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062eb0 word 0xaa1f03f3
  %t418 = or i64 0, 0
  %wp419 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t418, ptr %wp419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062eb4 word 0x17fffff0
  br label %L_800062e74
L_800062eb8:
  ; @pc 0x800062eb8 word 0xf9400ae9
  %r420.p = getelementptr inbounds i8, ptr %c, i64 184
  %r420 = load i64, ptr %r420.p, align 8, !alias.scope !3, !noalias !4
  %t421 = add i64 %r420, 16
  %gmp422 = inttoptr i64 %t421 to ptr
  %gml423 = load i64, ptr %gmp422, align 1, !alias.scope !4, !noalias !3
  %wp424 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml423, ptr %wp424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ebc word 0xb4000a09
  %r425.p = getelementptr inbounds i8, ptr %c, i64 72
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %cmp426 = icmp eq i64 %r425, 0
  br i1 %cmp426, label %L_800062ffc, label %L_800062ec0_ft
L_800062ed8:
  ; @pc 0x800062ed8 word 0xd000f3e9
  %wp452 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34392113152, ptr %wp452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062edc word 0x91211129
  %r453.p = getelementptr inbounds i8, ptr %c, i64 72
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %t454 = add i64 %r453, 2116
  %wp455 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t454, ptr %wp455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ee0 word 0xeb09011f
  %r456.p = getelementptr inbounds i8, ptr %c, i64 64
  %r456 = load i64, ptr %r456.p, align 8, !alias.scope !3, !noalias !4
  %r457.p = getelementptr inbounds i8, ptr %c, i64 72
  %r457 = load i64, ptr %r457.p, align 8, !alias.scope !3, !noalias !4
  %t458 = sub i64 %r456, %r457
  %fn459 = icmp slt i64 %t458, 0
  %fz460 = icmp eq i64 %t458, 0
  %fc461 = icmp uge i64 %r456, %r457
  %fx1462 = xor i64 %r456, %r457
  %fx2463 = xor i64 %r456, %t458
  %fva464 = and i64 %fx1462, %fx2463
  %fv465 = icmp slt i64 %fva464, 0
  %nz466 = zext i1 %fn459 to i64
  %zz467 = zext i1 %fz460 to i64
  %cz468 = zext i1 %fc461 to i64
  %vz469 = zext i1 %fv465 to i64
  %ns470 = shl i64 %nz466, 31
  %zs471 = shl i64 %zz467, 30
  %cs472 = shl i64 %cz468, 29
  %vs473 = shl i64 %vz469, 28
  %nzor474 = or i64 %ns470, %zs471
  %cvor475 = or i64 %cs472, %vs473
  %nzcv476 = or i64 %nzor474, %cvor475
  %wp477 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv476, ptr %wp477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ee4 word 0x54000900
  %r478.p = getelementptr inbounds i8, ptr %c, i64 272
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %fsh480 = lshr i64 %r478, 30
  %cond479 = trunc i64 %fsh480 to i1
  br i1 %cond479, label %L_800063004, label %L_800062ee8_ft
L_800062f18:
  ; @pc 0x800062f18 word 0xf9400ae9
  %r556.p = getelementptr inbounds i8, ptr %c, i64 184
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %t557 = add i64 %r556, 16
  %gmp558 = inttoptr i64 %t557 to ptr
  %gml559 = load i64, ptr %gmp558, align 1, !alias.scope !4, !noalias !3
  %wp560 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml559, ptr %wp560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f1c word 0xa9044ff6
  %r561.p = getelementptr inbounds i8, ptr %c, i64 256
  %r561 = load i64, ptr %r561.p, align 8, !alias.scope !3, !noalias !4
  %t562 = add i64 %r561, 64
  %t563 = add i64 %t562, 8
  %r564.p = getelementptr inbounds i8, ptr %c, i64 176
  %r564 = load i64, ptr %r564.p, align 8, !alias.scope !3, !noalias !4
  %gmp565 = inttoptr i64 %t562 to ptr
  store i64 %r564, ptr %gmp565, align 1, !alias.scope !4, !noalias !3
  %r566.p = getelementptr inbounds i8, ptr %c, i64 152
  %r566 = load i64, ptr %r566.p, align 8, !alias.scope !3, !noalias !4
  %gmp567 = inttoptr i64 %t563 to ptr
  store i64 %r566, ptr %gmp567, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062f20 word 0xaa1a03f6
  %r568.p = getelementptr inbounds i8, ptr %c, i64 208
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %t569 = or i64 0, %r568
  %wp570 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t569, ptr %wp570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f24 word 0xf9002bf7
  %r571.p = getelementptr inbounds i8, ptr %c, i64 256
  %r571 = load i64, ptr %r571.p, align 8, !alias.scope !3, !noalias !4
  %t572 = add i64 %r571, 80
  %r573.p = getelementptr inbounds i8, ptr %c, i64 184
  %r573 = load i64, ptr %r573.p, align 8, !alias.scope !3, !noalias !4
  %gmp574 = inttoptr i64 %t572 to ptr
  store i64 %r573, ptr %gmp574, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062f28 word 0xb4007c69
  %r575.p = getelementptr inbounds i8, ptr %c, i64 72
  %r575 = load i64, ptr %r575.p, align 8, !alias.scope !3, !noalias !4
  %cmp576 = icmp eq i64 %r575, 0
  br i1 %cmp576, label %L_800063eb4, label %L_800062f2c_ft
L_800062f48:
  ; @pc 0x800062f48 word 0xf001c7a9
  %wp607 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419871744, ptr %wp607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f4c word 0xf9423d29
  %r608.p = getelementptr inbounds i8, ptr %c, i64 72
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %t609 = add i64 %r608, 1144
  %gmp610 = inttoptr i64 %t609 to ptr
  %gml611 = load i64, ptr %gmp610, align 1, !alias.scope !4, !noalias !3
  %wp612 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml611, ptr %wp612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f50 word 0xeb09011f
  %r613.p = getelementptr inbounds i8, ptr %c, i64 64
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %r614.p = getelementptr inbounds i8, ptr %c, i64 72
  %r614 = load i64, ptr %r614.p, align 8, !alias.scope !3, !noalias !4
  %t615 = sub i64 %r613, %r614
  %fn616 = icmp slt i64 %t615, 0
  %fz617 = icmp eq i64 %t615, 0
  %fc618 = icmp uge i64 %r613, %r614
  %fx1619 = xor i64 %r613, %r614
  %fx2620 = xor i64 %r613, %t615
  %fva621 = and i64 %fx1619, %fx2620
  %fv622 = icmp slt i64 %fva621, 0
  %nz623 = zext i1 %fn616 to i64
  %zz624 = zext i1 %fz617 to i64
  %cz625 = zext i1 %fc618 to i64
  %vz626 = zext i1 %fv622 to i64
  %ns627 = shl i64 %nz623, 31
  %zs628 = shl i64 %zz624, 30
  %cs629 = shl i64 %cz625, 29
  %vs630 = shl i64 %vz626, 28
  %nzor631 = or i64 %ns627, %zs628
  %cvor632 = or i64 %cs629, %vs630
  %nzcv633 = or i64 %nzor631, %cvor632
  %wp634 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv633, ptr %wp634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f54 word 0x54001721
  %r635.p = getelementptr inbounds i8, ptr %c, i64 272
  %r635 = load i64, ptr %r635.p, align 8, !alias.scope !3, !noalias !4
  %fsh637 = lshr i64 %r635, 30
  %ftr638 = trunc i64 %fsh637 to i1
  %cond636 = xor i1 %ftr638, true
  br i1 %cond636, label %L_800063238, label %L_800062f58_ft
L_800062f68:
  ; @pc 0x800062f68 word 0xf9403c14
  %r651.p = getelementptr inbounds i8, ptr %c, i64 0
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %t652 = add i64 %r651, 120
  %gmp653 = inttoptr i64 %t652 to ptr
  %gml654 = load i64, ptr %gmp653, align 1, !alias.scope !4, !noalias !3
  %wp655 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml654, ptr %wp655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f6c word 0xb4000294
  %r656.p = getelementptr inbounds i8, ptr %c, i64 160
  %r656 = load i64, ptr %r656.p, align 8, !alias.scope !3, !noalias !4
  %cmp657 = icmp eq i64 %r656, 0
  br i1 %cmp657, label %L_800062fbc, label %L_800062f70_ft
L_800062f94:
  ; @pc 0x800062f94 word 0xf9405d4a
  %r704.p = getelementptr inbounds i8, ptr %c, i64 80
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %t705 = add i64 %r704, 184
  %gmp706 = inttoptr i64 %t705 to ptr
  %gml707 = load i64, ptr %gmp706, align 1, !alias.scope !4, !noalias !3
  %wp708 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml707, ptr %wp708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f98 word 0xb40078aa
  %r709.p = getelementptr inbounds i8, ptr %c, i64 80
  %r709 = load i64, ptr %r709.p, align 8, !alias.scope !3, !noalias !4
  %cmp710 = icmp eq i64 %r709, 0
  br i1 %cmp710, label %L_800063eac, label %L_800062f9c_ft
L_800062fb4:
  ; @pc 0x800062fb4 word 0xaa1503e0
  %r752.p = getelementptr inbounds i8, ptr %c, i64 168
  %r752 = load i64, ptr %r752.p, align 8, !alias.scope !3, !noalias !4
  %t753 = or i64 0, %r752
  %wp754 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t753, ptr %wp754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fb8 word 0x94ad042e
  %wp755 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143804, ptr %wp755, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  br label %L_800062fbc
L_800062fbc:
  ; @pc 0x800062fbc word 0xb001c7b4
  %wp756 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419863552, ptr %wp756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fc0 word 0xf944aa94
  %r757.p = getelementptr inbounds i8, ptr %c, i64 160
  %r757 = load i64, ptr %r757.p, align 8, !alias.scope !3, !noalias !4
  %t758 = add i64 %r757, 2384
  %gmp759 = inttoptr i64 %t758 to ptr
  %gml760 = load i64, ptr %gmp759, align 1, !alias.scope !4, !noalias !3
  %wp761 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml760, ptr %wp761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fc4 word 0xf9400280
  %r762.p = getelementptr inbounds i8, ptr %c, i64 160
  %r762 = load i64, ptr %r762.p, align 8, !alias.scope !3, !noalias !4
  %gmp763 = inttoptr i64 %r762 to ptr
  %gml764 = load i64, ptr %gmp763, align 1, !alias.scope !4, !noalias !3
  %wp765 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml764, ptr %wp765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fc8 word 0xb4006dc0
  %r766.p = getelementptr inbounds i8, ptr %c, i64 0
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %cmp767 = icmp eq i64 %r766, 0
  br i1 %cmp767, label %L_800063d80, label %L_800062fcc
L_800062fcc:
  ; @pc 0x800062fcc word 0xb94a8008
  %r768.p = getelementptr inbounds i8, ptr %c, i64 0
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %t769 = add i64 %r768, 2688
  %gmp770 = inttoptr i64 %t769 to ptr
  %gml771 = load i32, ptr %gmp770, align 1, !alias.scope !4, !noalias !3
  %c772 = zext i32 %gml771 to i64
  %wp773 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c772, ptr %wp773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fd0 word 0x7100011f
  %r774.p = getelementptr inbounds i8, ptr %c, i64 64
  %r774 = load i64, ptr %r774.p, align 8, !alias.scope !3, !noalias !4
  %c775 = trunc i64 %r774 to i32
  %t776 = sub i32 %c775, 0
  %fn777 = icmp slt i32 %t776, 0
  %fz778 = icmp eq i32 %t776, 0
  %fc779 = icmp uge i32 %c775, 0
  %fx1780 = xor i32 %c775, 0
  %fx2781 = xor i32 %c775, %t776
  %fva782 = and i32 %fx1780, %fx2781
  %fv783 = icmp slt i32 %fva782, 0
  %nz784 = zext i1 %fn777 to i64
  %zz785 = zext i1 %fz778 to i64
  %cz786 = zext i1 %fc779 to i64
  %vz787 = zext i1 %fv783 to i64
  %ns788 = shl i64 %nz784, 31
  %zs789 = shl i64 %zz785, 30
  %cs790 = shl i64 %cz786, 29
  %vs791 = shl i64 %vz787, 28
  %nzor792 = or i64 %ns788, %zs789
  %cvor793 = or i64 %cs790, %vs791
  %nzcv794 = or i64 %nzor792, %cvor793
  %wp795 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv794, ptr %wp795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fd4 word 0x1a9f17e0
  %t796 = add i32 0, 1
  %r797.p = getelementptr inbounds i8, ptr %c, i64 272
  %r797 = load i64, ptr %r797.p, align 8, !alias.scope !3, !noalias !4
  %fsh799 = lshr i64 %r797, 30
  %ftr800 = trunc i64 %fsh799 to i1
  %cond798 = xor i1 %ftr800, true
  %sel801 = select i1 %cond798, i32 0, i32 %t796
  %c802 = zext i32 %sel801 to i64
  %wp803 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c802, ptr %wp803, align 8, !alias.scope !3, !noalias !4
  br label %L_800062fd8
L_800062fd8:
  ; @pc 0x800062fd8 word 0xaa1603fa
  %r804.p = getelementptr inbounds i8, ptr %c, i64 176
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %t805 = or i64 0, %r804
  %wp806 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t805, ptr %wp806, align 8, !alias.scope !3, !noalias !4
  br label %L_800062fdc
L_800062fdc:
  ; @pc 0x800062fdc word 0xf001c7b4
  %wp807 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fe0 word 0xa9444ff6
  %r808.p = getelementptr inbounds i8, ptr %c, i64 256
  %r808 = load i64, ptr %r808.p, align 8, !alias.scope !3, !noalias !4
  %t809 = add i64 %r808, 64
  %t810 = add i64 %t809, 8
  %gmp811 = inttoptr i64 %t809 to ptr
  %gml812 = load i64, ptr %gmp811, align 1, !alias.scope !4, !noalias !3
  %gmp813 = inttoptr i64 %t810 to ptr
  %gml814 = load i64, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  %wp815 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml812, ptr %wp815, align 8, !alias.scope !3, !noalias !4
  %wp816 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml814, ptr %wp816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fe4 word 0xf9424294
  %r817.p = getelementptr inbounds i8, ptr %c, i64 160
  %r817 = load i64, ptr %r817.p, align 8, !alias.scope !3, !noalias !4
  %t818 = add i64 %r817, 1152
  %gmp819 = inttoptr i64 %t818 to ptr
  %gml820 = load i64, ptr %gmp819, align 1, !alias.scope !4, !noalias !3
  %wp821 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml820, ptr %wp821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fe8 word 0x52800035
  %c822 = zext i32 1 to i64
  %wp823 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c822, ptr %wp823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fec word 0xb000219b
  %wp824 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34364534784, ptr %wp824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ff0 word 0x9101b37b
  %r825.p = getelementptr inbounds i8, ptr %c, i64 216
  %r825 = load i64, ptr %r825.p, align 8, !alias.scope !3, !noalias !4
  %t826 = add i64 %r825, 108
  %wp827 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t826, ptr %wp827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ff4 word 0xf9402bf7
  %r828.p = getelementptr inbounds i8, ptr %c, i64 256
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %t829 = add i64 %r828, 80
  %gmp830 = inttoptr i64 %t829 to ptr
  %gml831 = load i64, ptr %gmp830, align 1, !alias.scope !4, !noalias !3
  %wp832 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml831, ptr %wp832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ff8 word 0x17ffff94
  br label %L_800062e48
L_800062ffc:
  ; @pc 0x800062ffc word 0x2a1f03e0
  %t833 = or i32 0, 0
  %c834 = zext i32 %t833 to i64
  %wp835 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c834, ptr %wp835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063000 word 0x17ffff92
  br label %L_800062e48
L_800063004:
  ; @pc 0x800063004 word 0xf94033e8
  %r836.p = getelementptr inbounds i8, ptr %c, i64 256
  %r836 = load i64, ptr %r836.p, align 8, !alias.scope !3, !noalias !4
  %t837 = add i64 %r836, 96
  %gmp838 = inttoptr i64 %t837 to ptr
  %gml839 = load i64, ptr %gmp838, align 1, !alias.scope !4, !noalias !3
  %wp840 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml839, ptr %wp840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063008 word 0xa904dff3
  %r841.p = getelementptr inbounds i8, ptr %c, i64 256
  %r841 = load i64, ptr %r841.p, align 8, !alias.scope !3, !noalias !4
  %t842 = add i64 %r841, 72
  %t843 = add i64 %t842, 8
  %r844.p = getelementptr inbounds i8, ptr %c, i64 152
  %r844 = load i64, ptr %r844.p, align 8, !alias.scope !3, !noalias !4
  %gmp845 = inttoptr i64 %t842 to ptr
  store i64 %r844, ptr %gmp845, align 1, !alias.scope !4, !noalias !3
  %r846.p = getelementptr inbounds i8, ptr %c, i64 184
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %gmp847 = inttoptr i64 %t843 to ptr
  store i64 %r846, ptr %gmp847, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006300c word 0xb9400d08
  %r848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r848 = load i64, ptr %r848.p, align 8, !alias.scope !3, !noalias !4
  %t849 = add i64 %r848, 12
  %gmp850 = inttoptr i64 %t849 to ptr
  %gml851 = load i32, ptr %gmp850, align 1, !alias.scope !4, !noalias !3
  %c852 = zext i32 %gml851 to i64
  %wp853 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c852, ptr %wp853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063010 word 0xa903dbf8
  %r854.p = getelementptr inbounds i8, ptr %c, i64 256
  %r854 = load i64, ptr %r854.p, align 8, !alias.scope !3, !noalias !4
  %t855 = add i64 %r854, 56
  %t856 = add i64 %t855, 8
  %r857.p = getelementptr inbounds i8, ptr %c, i64 192
  %r857 = load i64, ptr %r857.p, align 8, !alias.scope !3, !noalias !4
  %gmp858 = inttoptr i64 %t855 to ptr
  store i64 %r857, ptr %gmp858, align 1, !alias.scope !4, !noalias !3
  %r859.p = getelementptr inbounds i8, ptr %c, i64 176
  %r859 = load i64, ptr %r859.p, align 8, !alias.scope !3, !noalias !4
  %gmp860 = inttoptr i64 %t856 to ptr
  store i64 %r859, ptr %gmp860, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063014 word 0xa902f3f9
  %r861.p = getelementptr inbounds i8, ptr %c, i64 256
  %r861 = load i64, ptr %r861.p, align 8, !alias.scope !3, !noalias !4
  %t862 = add i64 %r861, 40
  %t863 = add i64 %t862, 8
  %r864.p = getelementptr inbounds i8, ptr %c, i64 200
  %r864 = load i64, ptr %r864.p, align 8, !alias.scope !3, !noalias !4
  %gmp865 = inttoptr i64 %t862 to ptr
  store i64 %r864, ptr %gmp865, align 1, !alias.scope !4, !noalias !3
  %r866.p = getelementptr inbounds i8, ptr %c, i64 224
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %gmp867 = inttoptr i64 %t863 to ptr
  store i64 %r866, ptr %gmp867, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063018 word 0xf90013e0
  %r868.p = getelementptr inbounds i8, ptr %c, i64 256
  %r868 = load i64, ptr %r868.p, align 8, !alias.scope !3, !noalias !4
  %t869 = add i64 %r868, 32
  %r870.p = getelementptr inbounds i8, ptr %c, i64 0
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %gmp871 = inttoptr i64 %t869 to ptr
  store i64 %r870, ptr %gmp871, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006301c word 0x35000148
  %r872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r872 = load i64, ptr %r872.p, align 8, !alias.scope !3, !noalias !4
  %c873 = trunc i64 %r872 to i32
  %cmp874 = icmp ne i32 %c873, 0
  br i1 %cmp874, label %L_800063044, label %L_800063020_ft
L_800063044:
  ; @pc 0x800063044 word 0xa942f3f9
  %r959.p = getelementptr inbounds i8, ptr %c, i64 256
  %r959 = load i64, ptr %r959.p, align 8, !alias.scope !3, !noalias !4
  %t960 = add i64 %r959, 40
  %t961 = add i64 %t960, 8
  %gmp962 = inttoptr i64 %t960 to ptr
  %gml963 = load i64, ptr %gmp962, align 1, !alias.scope !4, !noalias !3
  %gmp964 = inttoptr i64 %t961 to ptr
  %gml965 = load i64, ptr %gmp964, align 1, !alias.scope !4, !noalias !3
  %wp966 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml963, ptr %wp966, align 8, !alias.scope !3, !noalias !4
  %wp967 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml965, ptr %wp967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063048 word 0x52800020
  %c968 = zext i32 1 to i64
  %wp969 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c968, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006304c word 0xf9401ff8
  %r970.p = getelementptr inbounds i8, ptr %c, i64 256
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r970, 56
  %gmp972 = inttoptr i64 %t971 to ptr
  %gml973 = load i64, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %wp974 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml973, ptr %wp974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063050 word 0xf000217a
  %wp975 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34364530688, ptr %wp975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063054 word 0x9119235a
  %r976.p = getelementptr inbounds i8, ptr %c, i64 208
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %t977 = add i64 %r976, 1608
  %wp978 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t977, ptr %wp978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063058 word 0x17ffffe1
  br label %L_800062fdc
L_80006305c:
  ; @pc 0x80006305c word 0xf94033e8
  %r979.p = getelementptr inbounds i8, ptr %c, i64 256
  %r979 = load i64, ptr %r979.p, align 8, !alias.scope !3, !noalias !4
  %t980 = add i64 %r979, 96
  %gmp981 = inttoptr i64 %t980 to ptr
  %gml982 = load i64, ptr %gmp981, align 1, !alias.scope !4, !noalias !3
  %wp983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml982, ptr %wp983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063060 word 0xb9401508
  %r984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r984 = load i64, ptr %r984.p, align 8, !alias.scope !3, !noalias !4
  %t985 = add i64 %r984, 20
  %gmp986 = inttoptr i64 %t985 to ptr
  %gml987 = load i32, ptr %gmp986, align 1, !alias.scope !4, !noalias !3
  %c988 = zext i32 %gml987 to i64
  %wp989 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c988, ptr %wp989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063064 word 0x35000fe8
  %r990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r990 = load i64, ptr %r990.p, align 8, !alias.scope !3, !noalias !4
  %c991 = trunc i64 %r990 to i32
  %cmp992 = icmp ne i32 %c991, 0
  br i1 %cmp992, label %L_800063260, label %L_800063068_ft
L_800063070:
  ; @pc 0x800063070 word 0x52800020
  %c999 = zext i32 1 to i64
  %wp1000 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c999, ptr %wp1000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063074 word 0x52800035
  %c1001 = zext i32 1 to i64
  %wp1002 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c1001, ptr %wp1002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063078 word 0x9000219b
  %wp1003 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34364534784, ptr %wp1003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006307c word 0x9101b37b
  %r1004.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1004 = load i64, ptr %r1004.p, align 8, !alias.scope !3, !noalias !4
  %t1005 = add i64 %r1004, 108
  %wp1006 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1005, ptr %wp1006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063080 word 0x17ffff72
  br label %L_800062e48
L_800063084:
  ; @pc 0x800063084 word 0xf9400009
  %r1007.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1007 = load i64, ptr %r1007.p, align 8, !alias.scope !3, !noalias !4
  %gmp1008 = inttoptr i64 %r1007 to ptr
  %gml1009 = load i64, ptr %gmp1008, align 1, !alias.scope !4, !noalias !3
  %wp1010 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1009, ptr %wp1010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063088 word 0xf8686928
  %r1011.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1011 = load i64, ptr %r1011.p, align 8, !alias.scope !3, !noalias !4
  %r1012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1012 = load i64, ptr %r1012.p, align 8, !alias.scope !3, !noalias !4
  %t1013 = add i64 %r1011, %r1012
  %gmp1014 = inttoptr i64 %t1013 to ptr
  %gml1015 = load i64, ptr %gmp1014, align 1, !alias.scope !4, !noalias !3
  %wp1016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1015, ptr %wp1016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006308c word 0x17ffff93
  br label %L_800062ed8
L_800063090:
  ; @pc 0x800063090 word 0xf94033e8
  %r1017.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1017 = load i64, ptr %r1017.p, align 8, !alias.scope !3, !noalias !4
  %t1018 = add i64 %r1017, 96
  %gmp1019 = inttoptr i64 %t1018 to ptr
  %gml1020 = load i64, ptr %gmp1019, align 1, !alias.scope !4, !noalias !3
  %wp1021 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1020, ptr %wp1021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063094 word 0xb9401108
  %r1022.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1022 = load i64, ptr %r1022.p, align 8, !alias.scope !3, !noalias !4
  %t1023 = add i64 %r1022, 16
  %gmp1024 = inttoptr i64 %t1023 to ptr
  %gml1025 = load i32, ptr %gmp1024, align 1, !alias.scope !4, !noalias !3
  %c1026 = zext i32 %gml1025 to i64
  %wp1027 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1026, ptr %wp1027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063098 word 0x7100591f
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %c1029 = trunc i64 %r1028 to i32
  %t1030 = sub i32 %c1029, 22
  %fn1031 = icmp slt i32 %t1030, 0
  %fz1032 = icmp eq i32 %t1030, 0
  %fc1033 = icmp uge i32 %c1029, 22
  %fx11034 = xor i32 %c1029, 22
  %fx21035 = xor i32 %c1029, %t1030
  %fva1036 = and i32 %fx11034, %fx21035
  %fv1037 = icmp slt i32 %fva1036, 0
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
  ; @pc 0x80006309c word 0x54fffd4c
  %r1050.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1050 = load i64, ptr %r1050.p, align 8, !alias.scope !3, !noalias !4
  %fsh1052 = lshr i64 %r1050, 30
  %ftr1053 = trunc i64 %fsh1052 to i1
  %fsh1054 = lshr i64 %r1050, 31
  %ftr1055 = trunc i64 %fsh1054 to i1
  %fsh1056 = lshr i64 %r1050, 28
  %ftr1057 = trunc i64 %fsh1056 to i1
  %fnz1058 = xor i1 %ftr1053, true
  %feq1059 = icmp eq i1 %ftr1055, %ftr1057
  %cond1051 = and i1 %fnz1058, %feq1059
  br i1 %cond1051, label %L_800063044, label %L_8000630a0_ft
L_8000630fc:
  ; @pc 0x8000630fc word 0xf9400fe8
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %t1171 = add i64 %r1170, 24
  %gmp1172 = inttoptr i64 %t1171 to ptr
  %gml1173 = load i64, ptr %gmp1172, align 1, !alias.scope !4, !noalias !3
  %wp1174 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1173, ptr %wp1174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063100 word 0xb9413108
  %r1175.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1175 = load i64, ptr %r1175.p, align 8, !alias.scope !3, !noalias !4
  %t1176 = add i64 %r1175, 304
  %gmp1177 = inttoptr i64 %t1176 to ptr
  %gml1178 = load i32, ptr %gmp1177, align 1, !alias.scope !4, !noalias !3
  %c1179 = zext i32 %gml1178 to i64
  %wp1180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1179, ptr %wp1180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063104 word 0x7100051f
  %r1181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1181 = load i64, ptr %r1181.p, align 8, !alias.scope !3, !noalias !4
  %c1182 = trunc i64 %r1181 to i32
  %t1183 = sub i32 %c1182, 1
  %fn1184 = icmp slt i32 %t1183, 0
  %fz1185 = icmp eq i32 %t1183, 0
  %fc1186 = icmp uge i32 %c1182, 1
  %fx11187 = xor i32 %c1182, 1
  %fx21188 = xor i32 %c1182, %t1183
  %fva1189 = and i32 %fx11187, %fx21188
  %fv1190 = icmp slt i32 %fva1189, 0
  %nz1191 = zext i1 %fn1184 to i64
  %zz1192 = zext i1 %fz1185 to i64
  %cz1193 = zext i1 %fc1186 to i64
  %vz1194 = zext i1 %fv1190 to i64
  %ns1195 = shl i64 %nz1191, 31
  %zs1196 = shl i64 %zz1192, 30
  %cs1197 = shl i64 %cz1193, 29
  %vs1198 = shl i64 %vz1194, 28
  %nzor1199 = or i64 %ns1195, %zs1196
  %cvor1200 = or i64 %cs1197, %vs1198
  %nzcv1201 = or i64 %nzor1199, %cvor1200
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1201, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063108 word 0x540051eb
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %fsh1205 = lshr i64 %r1203, 31
  %ftr1206 = trunc i64 %fsh1205 to i1
  %fsh1207 = lshr i64 %r1203, 28
  %ftr1208 = trunc i64 %fsh1207 to i1
  %cond1204 = icmp ne i1 %ftr1206, %ftr1208
  br i1 %cond1204, label %L_800063b44, label %L_80006310c_ft
L_800063110:
  ; @pc 0x800063110 word 0xf94013e9
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %t1212 = add i64 %r1211, 32
  %gmp1213 = inttoptr i64 %t1212 to ptr
  %gml1214 = load i64, ptr %gmp1213, align 1, !alias.scope !4, !noalias !3
  %wp1215 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1214, ptr %wp1215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063114 word 0xf9450529
  %r1216.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1216 = load i64, ptr %r1216.p, align 8, !alias.scope !3, !noalias !4
  %t1217 = add i64 %r1216, 2568
  %gmp1218 = inttoptr i64 %t1217 to ptr
  %gml1219 = load i64, ptr %gmp1218, align 1, !alias.scope !4, !noalias !3
  %wp1220 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1219, ptr %wp1220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063118 word 0x39402529
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %t1222 = add i64 %r1221, 9
  %gmp1223 = inttoptr i64 %t1222 to ptr
  %gml1224 = load i8, ptr %gmp1223, align 1, !alias.scope !4, !noalias !3
  %c1225 = zext i8 %gml1224 to i64
  %wp1226 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1225, ptr %wp1226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006311c word 0x37086e89
  %r1227.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1227 = load i64, ptr %r1227.p, align 8, !alias.scope !3, !noalias !4
  %t1228 = and i64 %r1227, 2
  %cmp1229 = icmp ne i64 %t1228, 0
  br i1 %cmp1229, label %L_800063eec, label %L_800063120_ft
L_800063124:
  ; @pc 0x800063124 word 0xf94013ea
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %t1234 = add i64 %r1233, 32
  %gmp1235 = inttoptr i64 %t1234 to ptr
  %gml1236 = load i64, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  %wp1237 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1236, ptr %wp1237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063128 word 0x1e249001
  %wp1238 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1092616192, ptr %wp1238, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006312c word 0xd001c7b4
  %wp1239 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp1239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063130 word 0xf9400fed
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %t1241 = add i64 %r1240, 24
  %gmp1242 = inttoptr i64 %t1241 to ptr
  %gml1243 = load i64, ptr %gmp1242, align 1, !alias.scope !4, !noalias !3
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1243, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063134 word 0x52800020
  %c1245 = zext i32 1 to i64
  %wp1246 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1245, ptr %wp1246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063138 word 0xf000217a
  %wp1247 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34364530688, ptr %wp1247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006313c word 0x9119235a
  %r1248.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1248 = load i64, ptr %r1248.p, align 8, !alias.scope !3, !noalias !4
  %t1249 = add i64 %r1248, 1608
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1249, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063140 word 0xa942f3f9
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %t1252 = add i64 %r1251, 40
  %t1253 = add i64 %t1252, 8
  %gmp1254 = inttoptr i64 %t1252 to ptr
  %gml1255 = load i64, ptr %gmp1254, align 1, !alias.scope !4, !noalias !3
  %gmp1256 = inttoptr i64 %t1253 to ptr
  %gml1257 = load i64, ptr %gmp1256, align 1, !alias.scope !4, !noalias !3
  %wp1258 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1255, ptr %wp1258, align 8, !alias.scope !3, !noalias !4
  %wp1259 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1257, ptr %wp1259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063144 word 0xa943dbf8
  %r1260.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1260 = load i64, ptr %r1260.p, align 8, !alias.scope !3, !noalias !4
  %t1261 = add i64 %r1260, 56
  %t1262 = add i64 %t1261, 8
  %gmp1263 = inttoptr i64 %t1261 to ptr
  %gml1264 = load i64, ptr %gmp1263, align 1, !alias.scope !4, !noalias !3
  %gmp1265 = inttoptr i64 %t1262 to ptr
  %gml1266 = load i64, ptr %gmp1265, align 1, !alias.scope !4, !noalias !3
  %wp1267 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1264, ptr %wp1267, align 8, !alias.scope !3, !noalias !4
  %wp1268 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1266, ptr %wp1268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063148 word 0x52800035
  %c1269 = zext i32 1 to i64
  %wp1270 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c1269, ptr %wp1270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006314c word 0xf945414b
  %r1271.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1271 = load i64, ptr %r1271.p, align 8, !alias.scope !3, !noalias !4
  %t1272 = add i64 %r1271, 2688
  %gmp1273 = inttoptr i64 %t1272 to ptr
  %gml1274 = load i64, ptr %gmp1273, align 1, !alias.scope !4, !noalias !3
  %wp1275 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1274, ptr %wp1275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063150 word 0x9000219b
  %wp1276 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34364534784, ptr %wp1276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063154 word 0x9101b37b
  %r1277.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1277 = load i64, ptr %r1277.p, align 8, !alias.scope !3, !noalias !4
  %t1278 = add i64 %r1277, 108
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1278, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063158 word 0xa944dff3
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %t1281 = add i64 %r1280, 72
  %t1282 = add i64 %t1281, 8
  %gmp1283 = inttoptr i64 %t1281 to ptr
  %gml1284 = load i64, ptr %gmp1283, align 1, !alias.scope !4, !noalias !3
  %gmp1285 = inttoptr i64 %t1282 to ptr
  %gml1286 = load i64, ptr %gmp1285, align 1, !alias.scope !4, !noalias !3
  %wp1287 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1284, ptr %wp1287, align 8, !alias.scope !3, !noalias !4
  %wp1288 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1286, ptr %wp1288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006315c word 0xb940096c
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1289 = load i64, ptr %r1289.p, align 8, !alias.scope !3, !noalias !4
  %t1290 = add i64 %r1289, 8
  %gmp1291 = inttoptr i64 %t1290 to ptr
  %gml1292 = load i32, ptr %gmp1291, align 1, !alias.scope !4, !noalias !3
  %c1293 = zext i32 %gml1292 to i64
  %wp1294 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1293, ptr %wp1294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063160 word 0xf940096b
  %r1295.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1295 = load i64, ptr %r1295.p, align 8, !alias.scope !3, !noalias !4
  %t1296 = add i64 %r1295, 16
  %gmp1297 = inttoptr i64 %t1296 to ptr
  %gml1298 = load i64, ptr %gmp1297, align 1, !alias.scope !4, !noalias !3
  %wp1299 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1298, ptr %wp1299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063164 word 0x6b08019f
  %r1300.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1300 = load i64, ptr %r1300.p, align 8, !alias.scope !3, !noalias !4
  %c1301 = trunc i64 %r1300 to i32
  %r1302.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1302 = load i64, ptr %r1302.p, align 8, !alias.scope !3, !noalias !4
  %c1303 = trunc i64 %r1302 to i32
  %t1304 = sub i32 %c1301, %c1303
  %fn1305 = icmp slt i32 %t1304, 0
  %fz1306 = icmp eq i32 %t1304, 0
  %fc1307 = icmp uge i32 %c1301, %c1303
  %fx11308 = xor i32 %c1301, %c1303
  %fx21309 = xor i32 %c1301, %t1304
  %fva1310 = and i32 %fx11308, %fx21309
  %fv1311 = icmp slt i32 %fva1310, 0
  %nz1312 = zext i1 %fn1305 to i64
  %zz1313 = zext i1 %fz1306 to i64
  %cz1314 = zext i1 %fc1307 to i64
  %vz1315 = zext i1 %fv1311 to i64
  %ns1316 = shl i64 %nz1312, 31
  %zs1317 = shl i64 %zz1313, 30
  %cs1318 = shl i64 %cz1314, 29
  %vs1319 = shl i64 %vz1315, 28
  %nzor1320 = or i64 %ns1316, %zs1317
  %cvor1321 = or i64 %cs1318, %vs1319
  %nzcv1322 = or i64 %nzor1320, %cvor1321
  %wp1323 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1322, ptr %wp1323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063168 word 0x9a9f810c
  %r1324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1324 = load i64, ptr %r1324.p, align 8, !alias.scope !3, !noalias !4
  %r1325.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1325 = load i64, ptr %r1325.p, align 8, !alias.scope !3, !noalias !4
  %fsh1327 = lshr i64 %r1325, 29
  %ftr1328 = trunc i64 %fsh1327 to i1
  %fsh1329 = lshr i64 %r1325, 30
  %ftr1330 = trunc i64 %fsh1329 to i1
  %fnz1331 = xor i1 %ftr1330, true
  %cond1326 = and i1 %ftr1328, %fnz1331
  %sel1332 = select i1 %cond1326, i64 %r1324, i64 0
  %wp1333 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %sel1332, ptr %wp1333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006316c word 0x8b0c156b
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %r1335.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1335 = load i64, ptr %r1335.p, align 8, !alias.scope !3, !noalias !4
  %t1336 = shl i64 %r1335, 5
  %t1337 = add i64 %r1334, %t1336
  %wp1338 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1337, ptr %wp1338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063170 word 0xf940096b
  %r1339.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1339 = load i64, ptr %r1339.p, align 8, !alias.scope !3, !noalias !4
  %t1340 = add i64 %r1339, 16
  %gmp1341 = inttoptr i64 %t1340 to ptr
  %gml1342 = load i64, ptr %gmp1341, align 1, !alias.scope !4, !noalias !3
  %wp1343 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1342, ptr %wp1343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063174 word 0x394ca16c
  %r1344.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1344 = load i64, ptr %r1344.p, align 8, !alias.scope !3, !noalias !4
  %t1345 = add i64 %r1344, 808
  %gmp1346 = inttoptr i64 %t1345 to ptr
  %gml1347 = load i8, ptr %gmp1346, align 1, !alias.scope !4, !noalias !3
  %c1348 = zext i8 %gml1347 to i64
  %wp1349 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1348, ptr %wp1349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063178 word 0x121f198c
  %r1350.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1350 = load i64, ptr %r1350.p, align 8, !alias.scope !3, !noalias !4
  %c1351 = trunc i64 %r1350 to i32
  %t1352 = and i32 %c1351, 254
  %c1353 = zext i32 %t1352 to i64
  %wp1354 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1353, ptr %wp1354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006317c word 0x2a090189
  %r1355.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1355 = load i64, ptr %r1355.p, align 8, !alias.scope !3, !noalias !4
  %c1356 = trunc i64 %r1355 to i32
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %c1358 = trunc i64 %r1357 to i32
  %t1359 = or i32 %c1358, %c1356
  %c1360 = zext i32 %t1359 to i64
  %wp1361 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1360, ptr %wp1361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063180 word 0x5280660c
  %c1362 = zext i32 816 to i64
  %wp1363 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1362, ptr %wp1363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063184 word 0x390ca169
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %t1365 = add i64 %r1364, 808
  %r1366.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1366 = load i64, ptr %r1366.p, align 8, !alias.scope !3, !noalias !4
  %c1367 = trunc i64 %r1366 to i32
  %c1368 = trunc i32 %c1367 to i8
  %gmp1369 = inttoptr i64 %t1365 to ptr
  store i8 %c1368, ptr %gmp1369, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063188 word 0xf9454149
  %r1370.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1370 = load i64, ptr %r1370.p, align 8, !alias.scope !3, !noalias !4
  %t1371 = add i64 %r1370, 2688
  %gmp1372 = inttoptr i64 %t1371 to ptr
  %gml1373 = load i64, ptr %gmp1372, align 1, !alias.scope !4, !noalias !3
  %wp1374 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1373, ptr %wp1374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006318c word 0xb940092b
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %t1376 = add i64 %r1375, 8
  %gmp1377 = inttoptr i64 %t1376 to ptr
  %gml1378 = load i32, ptr %gmp1377, align 1, !alias.scope !4, !noalias !3
  %c1379 = zext i32 %gml1378 to i64
  %wp1380 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1379, ptr %wp1380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063190 word 0xf9400929
  %r1381.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1381 = load i64, ptr %r1381.p, align 8, !alias.scope !3, !noalias !4
  %t1382 = add i64 %r1381, 16
  %gmp1383 = inttoptr i64 %t1382 to ptr
  %gml1384 = load i64, ptr %gmp1383, align 1, !alias.scope !4, !noalias !3
  %wp1385 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1384, ptr %wp1385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063194 word 0x6b08017f
  %r1386.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1386 = load i64, ptr %r1386.p, align 8, !alias.scope !3, !noalias !4
  %c1387 = trunc i64 %r1386 to i32
  %r1388.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1388 = load i64, ptr %r1388.p, align 8, !alias.scope !3, !noalias !4
  %c1389 = trunc i64 %r1388 to i32
  %t1390 = sub i32 %c1387, %c1389
  %fn1391 = icmp slt i32 %t1390, 0
  %fz1392 = icmp eq i32 %t1390, 0
  %fc1393 = icmp uge i32 %c1387, %c1389
  %fx11394 = xor i32 %c1387, %c1389
  %fx21395 = xor i32 %c1387, %t1390
  %fva1396 = and i32 %fx11394, %fx21395
  %fv1397 = icmp slt i32 %fva1396, 0
  %nz1398 = zext i1 %fn1391 to i64
  %zz1399 = zext i1 %fz1392 to i64
  %cz1400 = zext i1 %fc1393 to i64
  %vz1401 = zext i1 %fv1397 to i64
  %ns1402 = shl i64 %nz1398, 31
  %zs1403 = shl i64 %zz1399, 30
  %cs1404 = shl i64 %cz1400, 29
  %vs1405 = shl i64 %vz1401, 28
  %nzor1406 = or i64 %ns1402, %zs1403
  %cvor1407 = or i64 %cs1404, %vs1405
  %nzcv1408 = or i64 %nzor1406, %cvor1407
  %wp1409 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1408, ptr %wp1409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063198 word 0x9a9f810b
  %r1410.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1410 = load i64, ptr %r1410.p, align 8, !alias.scope !3, !noalias !4
  %r1411.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1411 = load i64, ptr %r1411.p, align 8, !alias.scope !3, !noalias !4
  %fsh1413 = lshr i64 %r1411, 29
  %ftr1414 = trunc i64 %fsh1413 to i1
  %fsh1415 = lshr i64 %r1411, 30
  %ftr1416 = trunc i64 %fsh1415 to i1
  %fnz1417 = xor i1 %ftr1416, true
  %cond1412 = and i1 %ftr1414, %fnz1417
  %sel1418 = select i1 %cond1412, i64 %r1410, i64 0
  %wp1419 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel1418, ptr %wp1419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006319c word 0x8b0b1529
  %r1420.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1420 = load i64, ptr %r1420.p, align 8, !alias.scope !3, !noalias !4
  %r1421.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1421 = load i64, ptr %r1421.p, align 8, !alias.scope !3, !noalias !4
  %t1422 = shl i64 %r1421, 5
  %t1423 = add i64 %r1420, %t1422
  %wp1424 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1423, ptr %wp1424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631a0 word 0xb940092b
  %r1425.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1425 = load i64, ptr %r1425.p, align 8, !alias.scope !3, !noalias !4
  %t1426 = add i64 %r1425, 8
  %gmp1427 = inttoptr i64 %t1426 to ptr
  %gml1428 = load i32, ptr %gmp1427, align 1, !alias.scope !4, !noalias !3
  %c1429 = zext i32 %gml1428 to i64
  %wp1430 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1429, ptr %wp1430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631a4 word 0xf9400929
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %t1432 = add i64 %r1431, 16
  %gmp1433 = inttoptr i64 %t1432 to ptr
  %gml1434 = load i64, ptr %gmp1433, align 1, !alias.scope !4, !noalias !3
  %wp1435 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1434, ptr %wp1435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631a8 word 0x7100057f
  %r1436.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1436 = load i64, ptr %r1436.p, align 8, !alias.scope !3, !noalias !4
  %c1437 = trunc i64 %r1436 to i32
  %t1438 = sub i32 %c1437, 1
  %fn1439 = icmp slt i32 %t1438, 0
  %fz1440 = icmp eq i32 %t1438, 0
  %fc1441 = icmp uge i32 %c1437, 1
  %fx11442 = xor i32 %c1437, 1
  %fx21443 = xor i32 %c1437, %t1438
  %fva1444 = and i32 %fx11442, %fx21443
  %fv1445 = icmp slt i32 %fva1444, 0
  %nz1446 = zext i1 %fn1439 to i64
  %zz1447 = zext i1 %fz1440 to i64
  %cz1448 = zext i1 %fc1441 to i64
  %vz1449 = zext i1 %fv1445 to i64
  %ns1450 = shl i64 %nz1446, 31
  %zs1451 = shl i64 %zz1447, 30
  %cs1452 = shl i64 %cz1448, 29
  %vs1453 = shl i64 %vz1449, 28
  %nzor1454 = or i64 %ns1450, %zs1451
  %cvor1455 = or i64 %cs1452, %vs1453
  %nzcv1456 = or i64 %nzor1454, %cvor1455
  %wp1457 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1456, ptr %wp1457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631ac word 0x1a9f97eb
  %t1458 = add i32 0, 1
  %r1459.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1459 = load i64, ptr %r1459.p, align 8, !alias.scope !3, !noalias !4
  %fsh1461 = lshr i64 %r1459, 29
  %ftr1462 = trunc i64 %fsh1461 to i1
  %fsh1463 = lshr i64 %r1459, 30
  %ftr1464 = trunc i64 %fsh1463 to i1
  %fnz1465 = xor i1 %ftr1464, true
  %fhi1466 = and i1 %ftr1462, %fnz1465
  %cond1460 = xor i1 %fhi1466, true
  %sel1467 = select i1 %cond1460, i32 0, i32 %t1458
  %c1468 = zext i32 %sel1467 to i64
  %wp1469 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1468, ptr %wp1469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631b0 word 0x9bac2569
  %r1470.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1470 = load i64, ptr %r1470.p, align 8, !alias.scope !3, !noalias !4
  %c1471 = trunc i64 %r1470 to i32
  %c1472 = zext i32 %c1471 to i64
  %r1473.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1473 = load i64, ptr %r1473.p, align 8, !alias.scope !3, !noalias !4
  %c1474 = trunc i64 %r1473 to i32
  %c1475 = zext i32 %c1474 to i64
  %t1476 = mul i64 %c1472, %c1475
  %r1477.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1477 = load i64, ptr %r1477.p, align 8, !alias.scope !3, !noalias !4
  %t1478 = add i64 %r1477, %t1476
  %wp1479 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1478, ptr %wp1479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631b4 word 0x5280050c
  %c1480 = zext i32 40 to i64
  %wp1481 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1480, ptr %wp1481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631b8 word 0x394ca12b
  %r1482.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1482 = load i64, ptr %r1482.p, align 8, !alias.scope !3, !noalias !4
  %t1483 = add i64 %r1482, 808
  %gmp1484 = inttoptr i64 %t1483 to ptr
  %gml1485 = load i8, ptr %gmp1484, align 1, !alias.scope !4, !noalias !3
  %c1486 = zext i8 %gml1485 to i64
  %wp1487 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1486, ptr %wp1487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631bc word 0x3200016b
  %r1488.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1488 = load i64, ptr %r1488.p, align 8, !alias.scope !3, !noalias !4
  %c1489 = trunc i64 %r1488 to i32
  %t1490 = or i32 %c1489, 1
  %c1491 = zext i32 %t1490 to i64
  %wp1492 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1491, ptr %wp1492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631c0 word 0x390ca12b
  %r1493.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1493 = load i64, ptr %r1493.p, align 8, !alias.scope !3, !noalias !4
  %t1494 = add i64 %r1493, 808
  %r1495.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1495 = load i64, ptr %r1495.p, align 8, !alias.scope !3, !noalias !4
  %c1496 = trunc i64 %r1495 to i32
  %c1497 = trunc i32 %c1496 to i8
  %gmp1498 = inttoptr i64 %t1494 to ptr
  store i8 %c1497, ptr %gmp1498, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000631c4 word 0xf9451149
  %r1499.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1499 = load i64, ptr %r1499.p, align 8, !alias.scope !3, !noalias !4
  %t1500 = add i64 %r1499, 2592
  %gmp1501 = inttoptr i64 %t1500 to ptr
  %gml1502 = load i64, ptr %gmp1501, align 1, !alias.scope !4, !noalias !3
  %wp1503 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1502, ptr %wp1503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631c8 word 0xb940092b
  %r1504.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1504 = load i64, ptr %r1504.p, align 8, !alias.scope !3, !noalias !4
  %t1505 = add i64 %r1504, 8
  %gmp1506 = inttoptr i64 %t1505 to ptr
  %gml1507 = load i32, ptr %gmp1506, align 1, !alias.scope !4, !noalias !3
  %c1508 = zext i32 %gml1507 to i64
  %wp1509 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1508, ptr %wp1509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631cc word 0xf9400929
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %t1511 = add i64 %r1510, 16
  %gmp1512 = inttoptr i64 %t1511 to ptr
  %gml1513 = load i64, ptr %gmp1512, align 1, !alias.scope !4, !noalias !3
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631d0 word 0xeb0b011f
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 88
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
  ; @pc 0x8000631d4 word 0x9a9f310b
  %r1537.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1537 = load i64, ptr %r1537.p, align 8, !alias.scope !3, !noalias !4
  %r1538.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1538 = load i64, ptr %r1538.p, align 8, !alias.scope !3, !noalias !4
  %fsh1540 = lshr i64 %r1538, 29
  %ftr1541 = trunc i64 %fsh1540 to i1
  %cond1539 = xor i1 %ftr1541, true
  %sel1542 = select i1 %cond1539, i64 %r1537, i64 0
  %wp1543 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel1542, ptr %wp1543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631d8 word 0x9b0c7d6b
  %r1544.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1544 = load i64, ptr %r1544.p, align 8, !alias.scope !3, !noalias !4
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %t1546 = mul i64 %r1545, %r1544
  %t1547 = add i64 0, %t1546
  %wp1548 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1547, ptr %wp1548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631dc word 0x5285240c
  %c1549 = zext i32 10528 to i64
  %wp1550 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1549, ptr %wp1550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631e0 word 0xbc6b6920
  %r1551.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1551 = load i64, ptr %r1551.p, align 8, !alias.scope !3, !noalias !4
  %r1552.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1552 = load i64, ptr %r1552.p, align 8, !alias.scope !3, !noalias !4
  %t1553 = add i64 %r1551, %r1552
  %gmp1554 = inttoptr i64 %t1553 to ptr
  %gml1555 = load i32, ptr %gmp1554, align 1, !alias.scope !4, !noalias !3
  %c1556 = zext i32 %gml1555 to i128
  %wp1557 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1556, ptr %wp1557, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000631e4 word 0xb94131a9
  %r1558.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1558 = load i64, ptr %r1558.p, align 8, !alias.scope !3, !noalias !4
  %t1559 = add i64 %r1558, 304
  %gmp1560 = inttoptr i64 %t1559 to ptr
  %gml1561 = load i32, ptr %gmp1560, align 1, !alias.scope !4, !noalias !3
  %c1562 = zext i32 %gml1561 to i64
  %wp1563 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1562, ptr %wp1563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631e8 word 0xf9409dab
  %r1564.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1564 = load i64, ptr %r1564.p, align 8, !alias.scope !3, !noalias !4
  %t1565 = add i64 %r1564, 312
  %gmp1566 = inttoptr i64 %t1565 to ptr
  %gml1567 = load i64, ptr %gmp1566, align 1, !alias.scope !4, !noalias !3
  %wp1568 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1567, ptr %wp1568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631ec word 0xeb09011f
  %r1569.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1569 = load i64, ptr %r1569.p, align 8, !alias.scope !3, !noalias !4
  %r1570.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1570 = load i64, ptr %r1570.p, align 8, !alias.scope !3, !noalias !4
  %t1571 = sub i64 %r1569, %r1570
  %fn1572 = icmp slt i64 %t1571, 0
  %fz1573 = icmp eq i64 %t1571, 0
  %fc1574 = icmp uge i64 %r1569, %r1570
  %fx11575 = xor i64 %r1569, %r1570
  %fx21576 = xor i64 %r1569, %t1571
  %fva1577 = and i64 %fx11575, %fx21576
  %fv1578 = icmp slt i64 %fva1577, 0
  %nz1579 = zext i1 %fn1572 to i64
  %zz1580 = zext i1 %fz1573 to i64
  %cz1581 = zext i1 %fc1574 to i64
  %vz1582 = zext i1 %fv1578 to i64
  %ns1583 = shl i64 %nz1579, 31
  %zs1584 = shl i64 %zz1580, 30
  %cs1585 = shl i64 %cz1581, 29
  %vs1586 = shl i64 %vz1582, 28
  %nzor1587 = or i64 %ns1583, %zs1584
  %cvor1588 = or i64 %cs1585, %vs1586
  %nzcv1589 = or i64 %nzor1587, %cvor1588
  %wp1590 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1589, ptr %wp1590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631f0 word 0x9a9f3109
  %r1591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1591 = load i64, ptr %r1591.p, align 8, !alias.scope !3, !noalias !4
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %fsh1594 = lshr i64 %r1592, 29
  %ftr1595 = trunc i64 %fsh1594 to i1
  %cond1593 = xor i1 %ftr1595, true
  %sel1596 = select i1 %cond1593, i64 %r1591, i64 0
  %wp1597 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel1596, ptr %wp1597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631f4 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8000631f8 word 0x9b0c2d29
  %r1598.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1598 = load i64, ptr %r1598.p, align 8, !alias.scope !3, !noalias !4
  %r1599.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1599 = load i64, ptr %r1599.p, align 8, !alias.scope !3, !noalias !4
  %t1600 = mul i64 %r1599, %r1598
  %r1601.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1601 = load i64, ptr %r1601.p, align 8, !alias.scope !3, !noalias !4
  %t1602 = add i64 %r1601, %t1600
  %wp1603 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1602, ptr %wp1603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000631fc word 0x5280740b
  %c1604 = zext i32 928 to i64
  %wp1605 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1604, ptr %wp1605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063200 word 0xbd0c7120
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %t1607 = add i64 %r1606, 3184
  %r1608.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1608 = load i128, ptr %r1608.p, align 16, !alias.scope !3, !noalias !4
  %c1609 = trunc i128 %r1608 to i32
  %gmp1610 = inttoptr i64 %t1607 to ptr
  store i32 %c1609, ptr %gmp1610, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063204 word 0xf9456949
  %r1611.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1611 = load i64, ptr %r1611.p, align 8, !alias.scope !3, !noalias !4
  %t1612 = add i64 %r1611, 2768
  %gmp1613 = inttoptr i64 %t1612 to ptr
  %gml1614 = load i64, ptr %gmp1613, align 1, !alias.scope !4, !noalias !3
  %wp1615 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1614, ptr %wp1615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063208 word 0xb943712a
  %r1616.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1616 = load i64, ptr %r1616.p, align 8, !alias.scope !3, !noalias !4
  %t1617 = add i64 %r1616, 880
  %gmp1618 = inttoptr i64 %t1617 to ptr
  %gml1619 = load i32, ptr %gmp1618, align 1, !alias.scope !4, !noalias !3
  %c1620 = zext i32 %gml1619 to i64
  %wp1621 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1620, ptr %wp1621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006320c word 0xf941bd29
  %r1622.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1622 = load i64, ptr %r1622.p, align 8, !alias.scope !3, !noalias !4
  %t1623 = add i64 %r1622, 888
  %gmp1624 = inttoptr i64 %t1623 to ptr
  %gml1625 = load i64, ptr %gmp1624, align 1, !alias.scope !4, !noalias !3
  %wp1626 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1625, ptr %wp1626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063210 word 0x6b08015f
  %r1627.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1627 = load i64, ptr %r1627.p, align 8, !alias.scope !3, !noalias !4
  %c1628 = trunc i64 %r1627 to i32
  %r1629.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1629 = load i64, ptr %r1629.p, align 8, !alias.scope !3, !noalias !4
  %c1630 = trunc i64 %r1629 to i32
  %t1631 = sub i32 %c1628, %c1630
  %fn1632 = icmp slt i32 %t1631, 0
  %fz1633 = icmp eq i32 %t1631, 0
  %fc1634 = icmp uge i32 %c1628, %c1630
  %fx11635 = xor i32 %c1628, %c1630
  %fx21636 = xor i32 %c1628, %t1631
  %fva1637 = and i32 %fx11635, %fx21636
  %fv1638 = icmp slt i32 %fva1637, 0
  %nz1639 = zext i1 %fn1632 to i64
  %zz1640 = zext i1 %fz1633 to i64
  %cz1641 = zext i1 %fc1634 to i64
  %vz1642 = zext i1 %fv1638 to i64
  %ns1643 = shl i64 %nz1639, 31
  %zs1644 = shl i64 %zz1640, 30
  %cs1645 = shl i64 %cz1641, 29
  %vs1646 = shl i64 %vz1642, 28
  %nzor1647 = or i64 %ns1643, %zs1644
  %cvor1648 = or i64 %cs1645, %vs1646
  %nzcv1649 = or i64 %nzor1647, %cvor1648
  %wp1650 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1649, ptr %wp1650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063214 word 0x9a9f810a
  %r1651.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1651 = load i64, ptr %r1651.p, align 8, !alias.scope !3, !noalias !4
  %r1652.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1652 = load i64, ptr %r1652.p, align 8, !alias.scope !3, !noalias !4
  %fsh1654 = lshr i64 %r1652, 29
  %ftr1655 = trunc i64 %fsh1654 to i1
  %fsh1656 = lshr i64 %r1652, 30
  %ftr1657 = trunc i64 %fsh1656 to i1
  %fnz1658 = xor i1 %ftr1657, true
  %cond1653 = and i1 %ftr1655, %fnz1658
  %sel1659 = select i1 %cond1653, i64 %r1651, i64 0
  %wp1660 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel1659, ptr %wp1660, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063218 word 0x91000508
  %r1661.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1661 = load i64, ptr %r1661.p, align 8, !alias.scope !3, !noalias !4
  %t1662 = add i64 %r1661, 1
  %wp1663 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1662, ptr %wp1663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006321c word 0x9b0b2549
  %r1664.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1664 = load i64, ptr %r1664.p, align 8, !alias.scope !3, !noalias !4
  %r1665.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1665 = load i64, ptr %r1665.p, align 8, !alias.scope !3, !noalias !4
  %t1666 = mul i64 %r1665, %r1664
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %t1668 = add i64 %r1667, %t1666
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063220 word 0xbd039920
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %t1671 = add i64 %r1670, 920
  %r1672.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1672 = load i128, ptr %r1672.p, align 16, !alias.scope !3, !noalias !4
  %c1673 = trunc i128 %r1672 to i32
  %gmp1674 = inttoptr i64 %t1671 to ptr
  store i32 %c1673, ptr %gmp1674, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063224 word 0xb98131a9
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %t1676 = add i64 %r1675, 304
  %gmp1677 = inttoptr i64 %t1676 to ptr
  %gml1678 = load i32, ptr %gmp1677, align 1, !alias.scope !4, !noalias !3
  %c1679 = sext i32 %gml1678 to i64
  %wp1680 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1679, ptr %wp1680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063228 word 0xf9424294
  %r1681.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1681 = load i64, ptr %r1681.p, align 8, !alias.scope !3, !noalias !4
  %t1682 = add i64 %r1681, 1152
  %gmp1683 = inttoptr i64 %t1682 to ptr
  %gml1684 = load i64, ptr %gmp1683, align 1, !alias.scope !4, !noalias !3
  %wp1685 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1684, ptr %wp1685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006322c word 0xeb09011f
  %r1686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1686 = load i64, ptr %r1686.p, align 8, !alias.scope !3, !noalias !4
  %r1687.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1687 = load i64, ptr %r1687.p, align 8, !alias.scope !3, !noalias !4
  %t1688 = sub i64 %r1686, %r1687
  %fn1689 = icmp slt i64 %t1688, 0
  %fz1690 = icmp eq i64 %t1688, 0
  %fc1691 = icmp uge i64 %r1686, %r1687
  %fx11692 = xor i64 %r1686, %r1687
  %fx21693 = xor i64 %r1686, %t1688
  %fva1694 = and i64 %fx11692, %fx21693
  %fv1695 = icmp slt i64 %fva1694, 0
  %nz1696 = zext i1 %fn1689 to i64
  %zz1697 = zext i1 %fz1690 to i64
  %cz1698 = zext i1 %fc1691 to i64
  %vz1699 = zext i1 %fv1695 to i64
  %ns1700 = shl i64 %nz1696, 31
  %zs1701 = shl i64 %zz1697, 30
  %cs1702 = shl i64 %cz1698, 29
  %vs1703 = shl i64 %vz1699, 28
  %nzor1704 = or i64 %ns1700, %zs1701
  %cvor1705 = or i64 %cs1702, %vs1703
  %nzcv1706 = or i64 %nzor1704, %cvor1705
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063230 word 0x54fff70b
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %fsh1710 = lshr i64 %r1708, 31
  %ftr1711 = trunc i64 %fsh1710 to i1
  %fsh1712 = lshr i64 %r1708, 28
  %ftr1713 = trunc i64 %fsh1712 to i1
  %cond1709 = icmp ne i1 %ftr1711, %ftr1713
  br i1 %cond1709, label %L_800063110, label %L_800063234_ft
L_800063238:
  ; @pc 0x800063238 word 0xf94033e1
  %r1714.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1714 = load i64, ptr %r1714.p, align 8, !alias.scope !3, !noalias !4
  %t1715 = add i64 %r1714, 96
  %gmp1716 = inttoptr i64 %t1715 to ptr
  %gml1717 = load i64, ptr %gmp1716, align 1, !alias.scope !4, !noalias !3
  %wp1718 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1717, ptr %wp1718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006323c word 0xd63f0100
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %fp1720 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1719, ptr %fp1720, align 8, !alias.scope !3, !noalias !4
  %wp1721 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144448, ptr %wp1721, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800063240 word 0x17ffff66
  br label %L_800062fd8
L_800063244:
  ; @pc 0x800063244 word 0x7100051f
  %r1722.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1722 = load i64, ptr %r1722.p, align 8, !alias.scope !3, !noalias !4
  %c1723 = trunc i64 %r1722 to i32
  %t1724 = sub i32 %c1723, 1
  %fn1725 = icmp slt i32 %t1724, 0
  %fz1726 = icmp eq i32 %t1724, 0
  %fc1727 = icmp uge i32 %c1723, 1
  %fx11728 = xor i32 %c1723, 1
  %fx21729 = xor i32 %c1723, %t1724
  %fva1730 = and i32 %fx11728, %fx21729
  %fv1731 = icmp slt i32 %fva1730, 0
  %nz1732 = zext i1 %fn1725 to i64
  %zz1733 = zext i1 %fz1726 to i64
  %cz1734 = zext i1 %fc1727 to i64
  %vz1735 = zext i1 %fv1731 to i64
  %ns1736 = shl i64 %nz1732, 31
  %zs1737 = shl i64 %zz1733, 30
  %cs1738 = shl i64 %cz1734, 29
  %vs1739 = shl i64 %vz1735, 28
  %nzor1740 = or i64 %ns1736, %zs1737
  %cvor1741 = or i64 %cs1738, %vs1739
  %nzcv1742 = or i64 %nzor1740, %cvor1741
  %wp1743 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1742, ptr %wp1743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063248 word 0x54005580
  %r1744.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1744 = load i64, ptr %r1744.p, align 8, !alias.scope !3, !noalias !4
  %fsh1746 = lshr i64 %r1744, 30
  %cond1745 = trunc i64 %fsh1746 to i1
  br i1 %cond1745, label %L_800063cf8, label %L_80006324c_ft
L_800063260:
  ; @pc 0x800063260 word 0x7100051f
  %r1761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1761 = load i64, ptr %r1761.p, align 8, !alias.scope !3, !noalias !4
  %c1762 = trunc i64 %r1761 to i32
  %t1763 = sub i32 %c1762, 1
  %fn1764 = icmp slt i32 %t1763, 0
  %fz1765 = icmp eq i32 %t1763, 0
  %fc1766 = icmp uge i32 %c1762, 1
  %fx11767 = xor i32 %c1762, 1
  %fx21768 = xor i32 %c1762, %t1763
  %fva1769 = and i32 %fx11767, %fx21768
  %fv1770 = icmp slt i32 %fva1769, 0
  %nz1771 = zext i1 %fn1764 to i64
  %zz1772 = zext i1 %fz1765 to i64
  %cz1773 = zext i1 %fc1766 to i64
  %vz1774 = zext i1 %fv1770 to i64
  %ns1775 = shl i64 %nz1771, 31
  %zs1776 = shl i64 %zz1772, 30
  %cs1777 = shl i64 %cz1773, 29
  %vs1778 = shl i64 %vz1774, 28
  %nzor1779 = or i64 %ns1775, %zs1776
  %cvor1780 = or i64 %cs1777, %vs1778
  %nzcv1781 = or i64 %nzor1779, %cvor1780
  %wp1782 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1781, ptr %wp1782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063264 word 0x54fff061
  %r1783.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1783 = load i64, ptr %r1783.p, align 8, !alias.scope !3, !noalias !4
  %fsh1785 = lshr i64 %r1783, 30
  %ftr1786 = trunc i64 %fsh1785 to i1
  %cond1784 = xor i1 %ftr1786, true
  br i1 %cond1784, label %L_800063070, label %L_800063268_ft
L_8000632a0:
  ; @pc 0x8000632a0 word 0x7100051f
  %r1849.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1849 = load i64, ptr %r1849.p, align 8, !alias.scope !3, !noalias !4
  %c1850 = trunc i64 %r1849 to i32
  %t1851 = sub i32 %c1850, 1
  %fn1852 = icmp slt i32 %t1851, 0
  %fz1853 = icmp eq i32 %t1851, 0
  %fc1854 = icmp uge i32 %c1850, 1
  %fx11855 = xor i32 %c1850, 1
  %fx21856 = xor i32 %c1850, %t1851
  %fva1857 = and i32 %fx11855, %fx21856
  %fv1858 = icmp slt i32 %fva1857, 0
  %nz1859 = zext i1 %fn1852 to i64
  %zz1860 = zext i1 %fz1853 to i64
  %cz1861 = zext i1 %fc1854 to i64
  %vz1862 = zext i1 %fv1858 to i64
  %ns1863 = shl i64 %nz1859, 31
  %zs1864 = shl i64 %zz1860, 30
  %cs1865 = shl i64 %cz1861, 29
  %vs1866 = shl i64 %vz1862, 28
  %nzor1867 = or i64 %ns1863, %zs1864
  %cvor1868 = or i64 %cs1865, %vs1866
  %nzcv1869 = or i64 %nzor1867, %cvor1868
  %wp1870 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1869, ptr %wp1870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632a4 word 0x54ffee61
  %r1871.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1871 = load i64, ptr %r1871.p, align 8, !alias.scope !3, !noalias !4
  %fsh1873 = lshr i64 %r1871, 30
  %ftr1874 = trunc i64 %fsh1873 to i1
  %cond1872 = xor i1 %ftr1874, true
  br i1 %cond1872, label %L_800063070, label %L_8000632a8_ft
L_8000632b4:
  ; @pc 0x8000632b4 word 0xf94013f3
  %r1881.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1881 = load i64, ptr %r1881.p, align 8, !alias.scope !3, !noalias !4
  %t1882 = add i64 %r1881, 32
  %gmp1883 = inttoptr i64 %t1882 to ptr
  %gml1884 = load i64, ptr %gmp1883, align 1, !alias.scope !4, !noalias !3
  %wp1885 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1884, ptr %wp1885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632b8 word 0xf9454a60
  %r1886.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1886 = load i64, ptr %r1886.p, align 8, !alias.scope !3, !noalias !4
  %t1887 = add i64 %r1886, 2704
  %gmp1888 = inttoptr i64 %t1887 to ptr
  %gml1889 = load i64, ptr %gmp1888, align 1, !alias.scope !4, !noalias !3
  %wp1890 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1889, ptr %wp1890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632bc word 0x94023dd1
  %wp1891 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144576, ptr %wp1891, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f2a00(ptr %c)
  ; @pc 0x8000632c0 word 0xf9451e60
  %r1892.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1892 = load i64, ptr %r1892.p, align 8, !alias.scope !3, !noalias !4
  %t1893 = add i64 %r1892, 2616
  %gmp1894 = inttoptr i64 %t1893 to ptr
  %gml1895 = load i64, ptr %gmp1894, align 1, !alias.scope !4, !noalias !3
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1895, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632c4 word 0x940292ef
  %wp1897 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144584, ptr %wp1897, align 8, !alias.scope !3, !noalias !4
  call void @f_800107e80(ptr %c)
  ; @pc 0x8000632c8 word 0xf9450a60
  %r1898.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1898 = load i64, ptr %r1898.p, align 8, !alias.scope !3, !noalias !4
  %t1899 = add i64 %r1898, 2576
  %gmp1900 = inttoptr i64 %t1899 to ptr
  %gml1901 = load i64, ptr %gmp1900, align 1, !alias.scope !4, !noalias !3
  %wp1902 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1901, ptr %wp1902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632cc word 0xf9400fe1
  %r1903.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1903 = load i64, ptr %r1903.p, align 8, !alias.scope !3, !noalias !4
  %t1904 = add i64 %r1903, 24
  %gmp1905 = inttoptr i64 %t1904 to ptr
  %gml1906 = load i64, ptr %gmp1905, align 1, !alias.scope !4, !noalias !3
  %wp1907 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1906, ptr %wp1907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632d0 word 0x94025a90
  %wp1908 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144596, ptr %wp1908, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f9d10(ptr %c)
  ; @pc 0x8000632d4 word 0xd001c748
  %wp1909 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419822592, ptr %wp1909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632d8 word 0xf9452a69
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %t1911 = add i64 %r1910, 2640
  %gmp1912 = inttoptr i64 %t1911 to ptr
  %gml1913 = load i64, ptr %gmp1912, align 1, !alias.scope !4, !noalias !3
  %wp1914 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1913, ptr %wp1914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632dc word 0x1e2a1002
  %wp1915 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 1048576000, ptr %wp1915, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000632e0 word 0xf941cd08
  %r1916.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1916 = load i64, ptr %r1916.p, align 8, !alias.scope !3, !noalias !4
  %t1917 = add i64 %r1916, 920
  %gmp1918 = inttoptr i64 %t1917 to ptr
  %gml1919 = load i64, ptr %gmp1918, align 1, !alias.scope !4, !noalias !3
  %wp1920 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1919, ptr %wp1920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632e4 word 0xf940010a
  %r1921.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1921 = load i64, ptr %r1921.p, align 8, !alias.scope !3, !noalias !4
  %gmp1922 = inttoptr i64 %r1921 to ptr
  %gml1923 = load i64, ptr %gmp1922, align 1, !alias.scope !4, !noalias !3
  %wp1924 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1923, ptr %wp1924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632e8 word 0xbd43dd40
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  %t1926 = add i64 %r1925, 988
  %gmp1927 = inttoptr i64 %t1926 to ptr
  %gml1928 = load i32, ptr %gmp1927, align 1, !alias.scope !4, !noalias !3
  %c1929 = zext i32 %gml1928 to i128
  %wp1930 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1929, ptr %wp1930, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000632ec word 0xbd43e544
  %r1931.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1931 = load i64, ptr %r1931.p, align 8, !alias.scope !3, !noalias !4
  %t1932 = add i64 %r1931, 996
  %gmp1933 = inttoptr i64 %t1932 to ptr
  %gml1934 = load i32, ptr %gmp1933, align 1, !alias.scope !4, !noalias !3
  %c1935 = zext i32 %gml1934 to i128
  %wp1936 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c1935, ptr %wp1936, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000632f0 word 0xbd43e141
  %r1937.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1937 = load i64, ptr %r1937.p, align 8, !alias.scope !3, !noalias !4
  %t1938 = add i64 %r1937, 992
  %gmp1939 = inttoptr i64 %t1938 to ptr
  %gml1940 = load i32, ptr %gmp1939, align 1, !alias.scope !4, !noalias !3
  %c1941 = zext i32 %gml1940 to i128
  %wp1942 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1941, ptr %wp1942, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000632f4 word 0x1e220800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 2)
  ; @pc 0x8000632f8 word 0x1e220882
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 4, i32 2)
  ; @pc 0x8000632fc word 0xbd027521
  %r1943.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1943 = load i64, ptr %r1943.p, align 8, !alias.scope !3, !noalias !4
  %t1944 = add i64 %r1943, 628
  %r1945.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1945 = load i128, ptr %r1945.p, align 16, !alias.scope !3, !noalias !4
  %c1946 = trunc i128 %r1945 to i32
  %gmp1947 = inttoptr i64 %t1944 to ptr
  store i32 %c1946, ptr %gmp1947, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063300 word 0x5ea1b803
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 3, i32 0)
  ; @pc 0x800063304 word 0x1e380008
  %fptoi1948 = call i64 @rt_fp_toint(ptr %c, i32 0, i32 0, i32 3, i32 0, i32 32, i32 0)
  %c1949 = trunc i64 %fptoi1948 to i32
  %c1950 = zext i32 %c1949 to i64
  %wp1951 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1950, ptr %wp1951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063308 word 0x5ea1b844
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2)
  ; @pc 0x80006330c word 0x1e202008
  %fcmp1952 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp1953 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1952, ptr %wp1953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063310 word 0x1a9fa7eb
  %t1954 = add i32 0, 1
  %r1955.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1955 = load i64, ptr %r1955.p, align 8, !alias.scope !3, !noalias !4
  %fsh1957 = lshr i64 %r1955, 31
  %ftr1958 = trunc i64 %fsh1957 to i1
  %fsh1959 = lshr i64 %r1955, 28
  %ftr1960 = trunc i64 %fsh1959 to i1
  %cond1956 = icmp eq i1 %ftr1958, %ftr1960
  %sel1961 = select i1 %cond1956, i32 0, i32 %t1954
  %c1962 = zext i32 %sel1961 to i64
  %wp1963 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1962, ptr %wp1963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063314 word 0x5e21d863
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3)
  ; @pc 0x800063318 word 0x1e232000
  %fcmp1964 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 3, i32 0)
  %wp1965 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1964, ptr %wp1965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006331c word 0x5e21d884
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 4, i32 4)
  ; @pc 0x800063320 word 0x1e221003
  %wp1966 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 1082130432, ptr %wp1966, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063324 word 0x1a8b03eb
  %r1967.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1967 = load i64, ptr %r1967.p, align 8, !alias.scope !3, !noalias !4
  %c1968 = trunc i64 %r1967 to i32
  %r1969.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1969 = load i64, ptr %r1969.p, align 8, !alias.scope !3, !noalias !4
  %fsh1971 = lshr i64 %r1969, 30
  %cond1970 = trunc i64 %fsh1971 to i1
  %sel1972 = select i1 %cond1970, i32 0, i32 %c1968
  %c1973 = zext i32 %sel1972 to i64
  %wp1974 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1973, ptr %wp1974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063328 word 0x1e202048
  %fcmp1975 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 0, i32 1)
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006332c word 0x4b0b0108
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %c1978 = trunc i64 %r1977 to i32
  %r1979.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1979 = load i64, ptr %r1979.p, align 8, !alias.scope !3, !noalias !4
  %c1980 = trunc i64 %r1979 to i32
  %t1981 = sub i32 %c1978, %c1980
  %c1982 = zext i32 %t1981 to i64
  %wp1983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1982, ptr %wp1983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063330 word 0x1e220100
  %r1984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1984 = load i64, ptr %r1984.p, align 8, !alias.scope !3, !noalias !4
  %c1985 = trunc i64 %r1984 to i32
  %c1986 = zext i32 %c1985 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 0, i64 %c1986, i32 32, i32 0, i32 0)
  ; @pc 0x800063334 word 0x1a9fa7eb
  %t1987 = add i32 0, 1
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %fsh1990 = lshr i64 %r1988, 31
  %ftr1991 = trunc i64 %fsh1990 to i1
  %fsh1992 = lshr i64 %r1988, 28
  %ftr1993 = trunc i64 %fsh1992 to i1
  %cond1989 = icmp eq i1 %ftr1991, %ftr1993
  %sel1994 = select i1 %cond1989, i32 0, i32 %t1987
  %c1995 = zext i32 %sel1994 to i64
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1995, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063338 word 0x1e380048
  %fptoi1997 = call i64 @rt_fp_toint(ptr %c, i32 0, i32 2, i32 3, i32 0, i32 32, i32 0)
  %c1998 = trunc i64 %fptoi1997 to i32
  %c1999 = zext i32 %c1998 to i64
  %wp2000 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1999, ptr %wp2000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006333c word 0x1e242040
  %fcmp2001 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 4, i32 0)
  %wp2002 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2001, ptr %wp2002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063340 word 0x1a8b03eb
  %r2003.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2003 = load i64, ptr %r2003.p, align 8, !alias.scope !3, !noalias !4
  %c2004 = trunc i64 %r2003 to i32
  %r2005.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2005 = load i64, ptr %r2005.p, align 8, !alias.scope !3, !noalias !4
  %fsh2007 = lshr i64 %r2005, 30
  %cond2006 = trunc i64 %fsh2007 to i1
  %sel2008 = select i1 %cond2006, i32 0, i32 %c2004
  %c2009 = zext i32 %sel2008 to i64
  %wp2010 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2009, ptr %wp2010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063344 word 0x4b0b0108
  %r2011.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2011 = load i64, ptr %r2011.p, align 8, !alias.scope !3, !noalias !4
  %c2012 = trunc i64 %r2011 to i32
  %r2013.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2013 = load i64, ptr %r2013.p, align 8, !alias.scope !3, !noalias !4
  %c2014 = trunc i64 %r2013 to i32
  %t2015 = sub i32 %c2012, %c2014
  %c2016 = zext i32 %t2015 to i64
  %wp2017 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2016, ptr %wp2017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063348 word 0x1e230800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 3)
  ; @pc 0x80006334c word 0x529ae14b
  %c2018 = zext i32 55050 to i64
  %wp2019 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2018, ptr %wp2019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063350 word 0x72a7646b
  %r2020.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2020 = load i64, ptr %r2020.p, align 8, !alias.scope !3, !noalias !4
  %t2021 = and i64 %r2020, -4294901761
  %t2022 = or i64 %t2021, 992149504
  %c2023 = trunc i64 %t2022 to i32
  %c2024 = zext i32 %c2023 to i64
  %wp2025 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2024, ptr %wp2025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063354 word 0xbd027120
  %r2026.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2026 = load i64, ptr %r2026.p, align 8, !alias.scope !3, !noalias !4
  %t2027 = add i64 %r2026, 624
  %r2028.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2028 = load i128, ptr %r2028.p, align 16, !alias.scope !3, !noalias !4
  %c2029 = trunc i128 %r2028 to i32
  %gmp2030 = inttoptr i64 %t2027 to ptr
  store i32 %c2029, ptr %gmp2030, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063358 word 0x1e220102
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %c2032 = trunc i64 %r2031 to i32
  %c2033 = zext i32 %c2032 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 2, i64 %c2033, i32 32, i32 0, i32 0)
  ; @pc 0x80006335c word 0x52b86908
  %c2034 = zext i32 -1018691584 to i64
  %wp2035 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2034, ptr %wp2035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063360 word 0x1e270101
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %c2037 = trunc i64 %r2036 to i32
  %c2038 = zext i32 %c2037 to i128
  %wp2039 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2038, ptr %wp2039, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063364 word 0x91093128
  %r2040.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2040 = load i64, ptr %r2040.p, align 8, !alias.scope !3, !noalias !4
  %t2041 = add i64 %r2040, 588
  %wp2042 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2041, ptr %wp2042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063368 word 0xf900050b
  %r2043.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2043 = load i64, ptr %r2043.p, align 8, !alias.scope !3, !noalias !4
  %t2044 = add i64 %r2043, 8
  %r2045.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2045 = load i64, ptr %r2045.p, align 8, !alias.scope !3, !noalias !4
  %gmp2046 = inttoptr i64 %t2044 to ptr
  store i64 %r2045, ptr %gmp2046, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006336c word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x800063370 word 0x1e230842
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 2, i32 3)
  ; @pc 0x800063374 word 0xbd024d20
  %r2047.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2047 = load i64, ptr %r2047.p, align 8, !alias.scope !3, !noalias !4
  %t2048 = add i64 %r2047, 588
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2049 = load i128, ptr %r2049.p, align 16, !alias.scope !3, !noalias !4
  %c2050 = trunc i128 %r2049 to i32
  %gmp2051 = inttoptr i64 %t2048 to ptr
  store i32 %c2050, ptr %gmp2051, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063378 word 0x1e212841
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 2, i32 1)
  ; @pc 0x80006337c word 0xbd027922
  %r2052.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2052 = load i64, ptr %r2052.p, align 8, !alias.scope !3, !noalias !4
  %t2053 = add i64 %r2052, 632
  %r2054.p = getelementptr inbounds i8, ptr %c, i64 544
  %r2054 = load i128, ptr %r2054.p, align 16, !alias.scope !3, !noalias !4
  %c2055 = trunc i128 %r2054 to i32
  %gmp2056 = inttoptr i64 %t2053 to ptr
  store i32 %c2055, ptr %gmp2056, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063380 word 0xbd025121
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %t2058 = add i64 %r2057, 592
  %r2059.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2059 = load i128, ptr %r2059.p, align 16, !alias.scope !3, !noalias !4
  %c2060 = trunc i128 %r2059 to i32
  %gmp2061 = inttoptr i64 %t2058 to ptr
  store i32 %c2060, ptr %gmp2061, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063384 word 0x9108f129
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %t2063 = add i64 %r2062, 572
  %wp2064 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2063, ptr %wp2064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063388 word 0xb945354a
  %r2065.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2065 = load i64, ptr %r2065.p, align 8, !alias.scope !3, !noalias !4
  %t2066 = add i64 %r2065, 1332
  %gmp2067 = inttoptr i64 %t2066 to ptr
  %gml2068 = load i32, ptr %gmp2067, align 1, !alias.scope !4, !noalias !3
  %c2069 = zext i32 %gml2068 to i64
  %wp2070 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2069, ptr %wp2070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006338c word 0x7100c95f
  %r2071.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2071 = load i64, ptr %r2071.p, align 8, !alias.scope !3, !noalias !4
  %c2072 = trunc i64 %r2071 to i32
  %t2073 = sub i32 %c2072, 50
  %fn2074 = icmp slt i32 %t2073, 0
  %fz2075 = icmp eq i32 %t2073, 0
  %fc2076 = icmp uge i32 %c2072, 50
  %fx12077 = xor i32 %c2072, 50
  %fx22078 = xor i32 %c2072, %t2073
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
  ; @pc 0x800063390 word 0x540059c0
  %r2093.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2093 = load i64, ptr %r2093.p, align 8, !alias.scope !3, !noalias !4
  %fsh2095 = lshr i64 %r2093, 30
  %cond2094 = trunc i64 %fsh2095 to i1
  br i1 %cond2094, label %L_800063ec8, label %L_800063394_ft
L_8000633a0:
  ; @pc 0x8000633a0 word 0xa941a3e1
  %r2110.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2110 = load i64, ptr %r2110.p, align 8, !alias.scope !3, !noalias !4
  %t2111 = add i64 %r2110, 24
  %t2112 = add i64 %t2111, 8
  %gmp2113 = inttoptr i64 %t2111 to ptr
  %gml2114 = load i64, ptr %gmp2113, align 1, !alias.scope !4, !noalias !3
  %gmp2115 = inttoptr i64 %t2112 to ptr
  %gml2116 = load i64, ptr %gmp2115, align 1, !alias.scope !4, !noalias !3
  %wp2117 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2114, ptr %wp2117, align 8, !alias.scope !3, !noalias !4
  %wp2118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2116, ptr %wp2118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633a4 word 0xf9452500
  %r2119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2119 = load i64, ptr %r2119.p, align 8, !alias.scope !3, !noalias !4
  %t2120 = add i64 %r2119, 2632
  %gmp2121 = inttoptr i64 %t2120 to ptr
  %gml2122 = load i64, ptr %gmp2121, align 1, !alias.scope !4, !noalias !3
  %wp2123 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2122, ptr %wp2123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633a8 word 0x9403566e
  %wp2124 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144812, ptr %wp2124, align 8, !alias.scope !3, !noalias !4
  call void @f_800138d60(ptr %c)
  ; @pc 0x8000633ac word 0x14000196
  br label %L_800063a04
L_8000633b0:
  ; @pc 0x8000633b0 word 0xf94013e8
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %t2126 = add i64 %r2125, 32
  %gmp2127 = inttoptr i64 %t2126 to ptr
  %gml2128 = load i64, ptr %gmp2127, align 1, !alias.scope !4, !noalias !3
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633b4 word 0xf9452d13
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %t2131 = add i64 %r2130, 2648
  %gmp2132 = inttoptr i64 %t2131 to ptr
  %gml2133 = load i64, ptr %gmp2132, align 1, !alias.scope !4, !noalias !3
  %wp2134 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2133, ptr %wp2134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633b8 word 0x5286d388
  %c2135 = zext i32 13980 to i64
  %wp2136 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2135, ptr %wp2136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633bc word 0x8b080268
  %r2137.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2137 = load i64, ptr %r2137.p, align 8, !alias.scope !3, !noalias !4
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %t2139 = add i64 %r2137, %r2138
  %wp2140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2139, ptr %wp2140, align 8, !alias.scope !3, !noalias !4
  br label %L_8000633c0
L_8000633c0:
  ; @pc 0x8000633c0 word 0x885f7d09
  %r2141.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2141 = load i64, ptr %r2141.p, align 8, !alias.scope !3, !noalias !4
  %atp2142 = inttoptr i64 %r2141 to ptr
  %ldx2143 = load atomic i32, ptr %atp2142 acquire, align 4, !alias.scope !4, !noalias !3
  %c2144 = zext i32 %ldx2143 to i64
  %fp2145 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2141, ptr %fp2145, align 8, !alias.scope !3, !noalias !4
  %fp2146 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2144, ptr %fp2146, align 8, !alias.scope !3, !noalias !4
  %wp2147 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2144, ptr %wp2147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633c4 word 0x121f7929
  %r2148.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2148 = load i64, ptr %r2148.p, align 8, !alias.scope !3, !noalias !4
  %c2149 = trunc i64 %r2148 to i32
  %t2150 = and i32 %c2149, -2
  %c2151 = zext i32 %t2150 to i64
  %wp2152 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2151, ptr %wp2152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633c8 word 0x880a7d09
  %r2153.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2153 = load i64, ptr %r2153.p, align 8, !alias.scope !3, !noalias !4
  %atp2154 = inttoptr i64 %r2153 to ptr
  %fp2155 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2156 = load i64, ptr %fp2155, align 8, !alias.scope !3, !noalias !4
  %fp2157 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2158 = load i64, ptr %fp2157, align 8, !alias.scope !3, !noalias !4
  %fp2159 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2159, align 8, !alias.scope !3, !noalias !4
  %cmp2160 = icmp eq i64 %fv2156, %r2153
  %c2161 = trunc i64 %fv2158 to i32
  %r2162.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2162 = load i64, ptr %r2162.p, align 8, !alias.scope !3, !noalias !4
  %c2163 = trunc i64 %r2162 to i32
  %cx2164 = cmpxchg ptr %atp2154, i32 %c2161, i32 %c2163 seq_cst seq_cst, align 4
  %cxok2165 = extractvalue { i32, i1 } %cx2164, 1
  %t2166 = and i1 %cmp2160, %cxok2165
  %sel2167 = select i1 %t2166, i32 0, i32 1
  %c2168 = zext i32 %sel2167 to i64
  %wp2169 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2168, ptr %wp2169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633cc word 0x35ffffaa
  %r2170.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2170 = load i64, ptr %r2170.p, align 8, !alias.scope !3, !noalias !4
  %c2171 = trunc i64 %r2170 to i32
  %cmp2172 = icmp ne i32 %c2171, 0
  br i1 %cmp2172, label %L_8000633c0, label %L_8000633d0_ft
L_8000633e0:
  ; @pc 0x8000633e0 word 0x91002276
  %r2187.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2187 = load i64, ptr %r2187.p, align 8, !alias.scope !3, !noalias !4
  %t2188 = add i64 %r2187, 8
  %wp2189 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2188, ptr %wp2189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633e4 word 0x9101a3e1
  %r2190.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2190 = load i64, ptr %r2190.p, align 8, !alias.scope !3, !noalias !4
  %t2191 = add i64 %r2190, 104
  %wp2192 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2191, ptr %wp2192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633e8 word 0x3901a3ff
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %t2194 = add i64 %r2193, 104
  %c2195 = trunc i32 0 to i8
  %gmp2196 = inttoptr i64 %t2194 to ptr
  store i8 %c2195, ptr %gmp2196, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000633ec word 0x9101e3e2
  %r2197.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2197 = load i64, ptr %r2197.p, align 8, !alias.scope !3, !noalias !4
  %t2198 = add i64 %r2197, 120
  %wp2199 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2198, ptr %wp2199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633f0 word 0xaa1603e0
  %r2200.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2200 = load i64, ptr %r2200.p, align 8, !alias.scope !3, !noalias !4
  %t2201 = or i64 0, %r2200
  %wp2202 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2201, ptr %wp2202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633f4 word 0xb9007bff
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %t2204 = add i64 %r2203, 120
  %gmp2205 = inttoptr i64 %t2204 to ptr
  store i32 0, ptr %gmp2205, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000633f8 word 0x94023a7a
  %wp2206 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144892, ptr %wp2206, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f1de0(ptr %c)
  ; @pc 0x8000633fc word 0x3941a3e8
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %t2208 = add i64 %r2207, 104
  %gmp2209 = inttoptr i64 %t2208 to ptr
  %gml2210 = load i8, ptr %gmp2209, align 1, !alias.scope !4, !noalias !3
  %c2211 = zext i8 %gml2210 to i64
  %wp2212 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2211, ptr %wp2212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063400 word 0x34ffe228
  %r2213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2213 = load i64, ptr %r2213.p, align 8, !alias.scope !3, !noalias !4
  %c2214 = trunc i64 %r2213 to i32
  %cmp2215 = icmp eq i32 %c2214, 0
  br i1 %cmp2215, label %L_800063044, label %L_800063404_ft
L_800063428:
  ; @pc 0x800063428 word 0xf94013e8
  %r2245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2245 = load i64, ptr %r2245.p, align 8, !alias.scope !3, !noalias !4
  %t2246 = add i64 %r2245, 32
  %gmp2247 = inttoptr i64 %t2246 to ptr
  %gml2248 = load i64, ptr %gmp2247, align 1, !alias.scope !4, !noalias !3
  %wp2249 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2248, ptr %wp2249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006342c word 0xf9458500
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %t2251 = add i64 %r2250, 2824
  %gmp2252 = inttoptr i64 %t2251 to ptr
  %gml2253 = load i64, ptr %gmp2252, align 1, !alias.scope !4, !noalias !3
  %wp2254 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2253, ptr %wp2254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063430 word 0x94028ad8
  %wp2255 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144948, ptr %wp2255, align 8, !alias.scope !3, !noalias !4
  call void @f_800105f90(ptr %c)
  ; @pc 0x800063434 word 0x14000174
  br label %L_800063a04
L_800063438:
  ; @pc 0x800063438 word 0xf94013e8
  %r2256.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2256 = load i64, ptr %r2256.p, align 8, !alias.scope !3, !noalias !4
  %t2257 = add i64 %r2256, 32
  %gmp2258 = inttoptr i64 %t2257 to ptr
  %gml2259 = load i64, ptr %gmp2258, align 1, !alias.scope !4, !noalias !3
  %wp2260 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2259, ptr %wp2260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006343c word 0xd001c756
  %wp2261 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419822592, ptr %wp2261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063440 word 0x52950329
  %c2262 = zext i32 43033 to i64
  %wp2263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2262, ptr %wp2263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063444 word 0xf9450d17
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %t2265 = add i64 %r2264, 2584
  %gmp2266 = inttoptr i64 %t2265 to ptr
  %gml2267 = load i64, ptr %gmp2266, align 1, !alias.scope !4, !noalias !3
  %wp2268 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2267, ptr %wp2268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063448 word 0xf941ced6
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %t2270 = add i64 %r2269, 920
  %gmp2271 = inttoptr i64 %t2270 to ptr
  %gml2272 = load i64, ptr %gmp2271, align 1, !alias.scope !4, !noalias !3
  %wp2273 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2272, ptr %wp2273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006344c word 0xf94002c8
  %r2274.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2274 = load i64, ptr %r2274.p, align 8, !alias.scope !3, !noalias !4
  %gmp2275 = inttoptr i64 %r2274 to ptr
  %gml2276 = load i64, ptr %gmp2275, align 1, !alias.scope !4, !noalias !3
  %wp2277 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2276, ptr %wp2277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063450 word 0x8b090108
  %r2278.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2278 = load i64, ptr %r2278.p, align 8, !alias.scope !3, !noalias !4
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %t2280 = add i64 %r2278, %r2279
  %wp2281 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2280, ptr %wp2281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063454 word 0x396022e9
  %r2282.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2282 = load i64, ptr %r2282.p, align 8, !alias.scope !3, !noalias !4
  %t2283 = add i64 %r2282, 2056
  %gmp2284 = inttoptr i64 %t2283 to ptr
  %gml2285 = load i8, ptr %gmp2284, align 1, !alias.scope !4, !noalias !3
  %c2286 = zext i8 %gml2285 to i64
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2286, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063458 word 0x37005749
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %t2289 = and i64 %r2288, 1
  %cmp2290 = icmp ne i64 %t2289, 0
  br i1 %cmp2290, label %L_800063f40, label %L_80006345c_ft
L_800063464:
  ; @pc 0x800063464 word 0xf94013e8
  %r2296.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2296 = load i64, ptr %r2296.p, align 8, !alias.scope !3, !noalias !4
  %t2297 = add i64 %r2296, 32
  %gmp2298 = inttoptr i64 %t2297 to ptr
  %gml2299 = load i64, ptr %gmp2298, align 1, !alias.scope !4, !noalias !3
  %wp2300 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2299, ptr %wp2300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063468 word 0xf9451109
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %t2302 = add i64 %r2301, 2592
  %gmp2303 = inttoptr i64 %t2302 to ptr
  %gml2304 = load i64, ptr %gmp2303, align 1, !alias.scope !4, !noalias !3
  %wp2305 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2304, ptr %wp2305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006346c word 0xf9400929
  %r2306.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2306 = load i64, ptr %r2306.p, align 8, !alias.scope !3, !noalias !4
  %t2307 = add i64 %r2306, 16
  %gmp2308 = inttoptr i64 %t2307 to ptr
  %gml2309 = load i64, ptr %gmp2308, align 1, !alias.scope !4, !noalias !3
  %wp2310 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2309, ptr %wp2310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063470 word 0xb940252a
  %r2311.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2311 = load i64, ptr %r2311.p, align 8, !alias.scope !3, !noalias !4
  %t2312 = add i64 %r2311, 36
  %gmp2313 = inttoptr i64 %t2312 to ptr
  %gml2314 = load i32, ptr %gmp2313, align 1, !alias.scope !4, !noalias !3
  %c2315 = zext i32 %gml2314 to i64
  %wp2316 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2315, ptr %wp2316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063474 word 0xf841c129
  %r2317.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2317 = load i64, ptr %r2317.p, align 8, !alias.scope !3, !noalias !4
  %t2318 = add i64 %r2317, 28
  %gmp2319 = inttoptr i64 %t2318 to ptr
  %gml2320 = load i64, ptr %gmp2319, align 1, !alias.scope !4, !noalias !3
  %wp2321 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2320, ptr %wp2321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063478 word 0xb90083ea
  %r2322.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2322 = load i64, ptr %r2322.p, align 8, !alias.scope !3, !noalias !4
  %t2323 = add i64 %r2322, 128
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %c2325 = trunc i64 %r2324 to i32
  %gmp2326 = inttoptr i64 %t2323 to ptr
  store i32 %c2325, ptr %gmp2326, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006347c word 0xf9003fe9
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %t2328 = add i64 %r2327, 120
  %r2329.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2329 = load i64, ptr %r2329.p, align 8, !alias.scope !3, !noalias !4
  %gmp2330 = inttoptr i64 %t2328 to ptr
  store i64 %r2329, ptr %gmp2330, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063480 word 0xbd4c4100
  %r2331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2331 = load i64, ptr %r2331.p, align 8, !alias.scope !3, !noalias !4
  %t2332 = add i64 %r2331, 3136
  %gmp2333 = inttoptr i64 %t2332 to ptr
  %gml2334 = load i32, ptr %gmp2333, align 1, !alias.scope !4, !noalias !3
  %c2335 = zext i32 %gml2334 to i128
  %wp2336 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2335, ptr %wp2336, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063484 word 0xbd407fe1
  %r2337.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2337 = load i64, ptr %r2337.p, align 8, !alias.scope !3, !noalias !4
  %t2338 = add i64 %r2337, 124
  %gmp2339 = inttoptr i64 %t2338 to ptr
  %gml2340 = load i32, ptr %gmp2339, align 1, !alias.scope !4, !noalias !3
  %c2341 = zext i32 %gml2340 to i128
  %wp2342 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2341, ptr %wp2342, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063488 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x80006348c word 0xbd007fe0
  %r2343.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2343 = load i64, ptr %r2343.p, align 8, !alias.scope !3, !noalias !4
  %t2344 = add i64 %r2343, 124
  %r2345.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2345 = load i128, ptr %r2345.p, align 16, !alias.scope !3, !noalias !4
  %c2346 = trunc i128 %r2345 to i32
  %gmp2347 = inttoptr i64 %t2344 to ptr
  store i32 %c2346, ptr %gmp2347, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063490 word 0xf9448108
  %r2348.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2348 = load i64, ptr %r2348.p, align 8, !alias.scope !3, !noalias !4
  %t2349 = add i64 %r2348, 2304
  %gmp2350 = inttoptr i64 %t2349 to ptr
  %gml2351 = load i64, ptr %gmp2350, align 1, !alias.scope !4, !noalias !3
  %wp2352 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2351, ptr %wp2352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063494 word 0xf9400108
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %gmp2354 = inttoptr i64 %r2353 to ptr
  %gml2355 = load i64, ptr %gmp2354, align 1, !alias.scope !4, !noalias !3
  %wp2356 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2355, ptr %wp2356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063498 word 0xb40000a8
  %r2357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2357 = load i64, ptr %r2357.p, align 8, !alias.scope !3, !noalias !4
  %cmp2358 = icmp eq i64 %r2357, 0
  br i1 %cmp2358, label %L_8000634ac, label %L_80006349c_ft
L_8000634ac:
  ; @pc 0x8000634ac word 0xf94013e8
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %t2385 = add i64 %r2384, 32
  %gmp2386 = inttoptr i64 %t2385 to ptr
  %gml2387 = load i64, ptr %gmp2386, align 1, !alias.scope !4, !noalias !3
  %wp2388 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2387, ptr %wp2388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634b0 word 0xf9457100
  %r2389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2389 = load i64, ptr %r2389.p, align 8, !alias.scope !3, !noalias !4
  %t2390 = add i64 %r2389, 2784
  %gmp2391 = inttoptr i64 %t2390 to ptr
  %gml2392 = load i64, ptr %gmp2391, align 1, !alias.scope !4, !noalias !3
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634b4 word 0x39641008
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %t2395 = add i64 %r2394, 2308
  %gmp2396 = inttoptr i64 %t2395 to ptr
  %gml2397 = load i8, ptr %gmp2396, align 1, !alias.scope !4, !noalias !3
  %c2398 = zext i8 %gml2397 to i64
  %wp2399 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2398, ptr %wp2399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634b8 word 0x360804a8
  %r2400.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2400 = load i64, ptr %r2400.p, align 8, !alias.scope !3, !noalias !4
  %t2401 = and i64 %r2400, 2
  %cmp2402 = icmp eq i64 %t2401, 0
  br i1 %cmp2402, label %L_80006354c, label %L_8000634bc_ft
L_800063528:
  ; @pc 0x800063528 word 0xf0016448
  %wp2501 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406850560, ptr %wp2501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006352c word 0xbd407fe1
  %r2502.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2502 = load i64, ptr %r2502.p, align 8, !alias.scope !3, !noalias !4
  %t2503 = add i64 %r2502, 124
  %gmp2504 = inttoptr i64 %t2503 to ptr
  %gml2505 = load i32, ptr %gmp2504, align 1, !alias.scope !4, !noalias !3
  %c2506 = zext i32 %gml2505 to i128
  %wp2507 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2506, ptr %wp2507, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063530 word 0xbd4db900
  %r2508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2508 = load i64, ptr %r2508.p, align 8, !alias.scope !3, !noalias !4
  %t2509 = add i64 %r2508, 3512
  %gmp2510 = inttoptr i64 %t2509 to ptr
  %gml2511 = load i32, ptr %gmp2510, align 1, !alias.scope !4, !noalias !3
  %c2512 = zext i32 %gml2511 to i128
  %wp2513 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2512, ptr %wp2513, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063534 word 0x1f002140
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 10, i32 0, i32 8)
  ; @pc 0x800063538 word 0x1e203820
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 1, i32 0)
  ; @pc 0x80006353c word 0x1e2c2000
  %fcmp2514 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 12, i32 0)
  %wp2515 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2514, ptr %wp2515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063540 word 0x54004984
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %fsh2518 = lshr i64 %r2516, 31
  %cond2517 = trunc i64 %fsh2518 to i1
  br i1 %cond2517, label %L_800063e70, label %L_800063544_ft
L_80006354c:
  ; @pc 0x80006354c word 0xbd407be0
  %r2531.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2531 = load i64, ptr %r2531.p, align 8, !alias.scope !3, !noalias !4
  %t2532 = add i64 %r2531, 120
  %gmp2533 = inttoptr i64 %t2532 to ptr
  %gml2534 = load i32, ptr %gmp2533, align 1, !alias.scope !4, !noalias !3
  %c2535 = zext i32 %gml2534 to i128
  %wp2536 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2535, ptr %wp2536, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063550 word 0x9101a3e1
  %r2537.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2537 = load i64, ptr %r2537.p, align 8, !alias.scope !3, !noalias !4
  %t2538 = add i64 %r2537, 104
  %wp2539 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2538, ptr %wp2539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063554 word 0xbd4083e1
  %r2540.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2540 = load i64, ptr %r2540.p, align 8, !alias.scope !3, !noalias !4
  %t2541 = add i64 %r2540, 128
  %gmp2542 = inttoptr i64 %t2541 to ptr
  %gml2543 = load i32, ptr %gmp2542, align 1, !alias.scope !4, !noalias !3
  %c2544 = zext i32 %gml2543 to i128
  %wp2545 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2544, ptr %wp2545, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063558 word 0x2d0d07e0
  %r2546.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2546 = load i64, ptr %r2546.p, align 8, !alias.scope !3, !noalias !4
  %t2547 = add i64 %r2546, 104
  %t2548 = add i64 %t2547, 4
  %r2549.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2549 = load i128, ptr %r2549.p, align 16, !alias.scope !3, !noalias !4
  %r2550.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2550 = load i128, ptr %r2550.p, align 16, !alias.scope !3, !noalias !4
  %c2551 = trunc i128 %r2549 to i32
  %c2552 = trunc i128 %r2550 to i32
  %gmp2553 = inttoptr i64 %t2547 to ptr
  store i32 %c2551, ptr %gmp2553, align 1, !alias.scope !4, !noalias !3
  %gmp2554 = inttoptr i64 %t2548 to ptr
  store i32 %c2552, ptr %gmp2554, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006355c word 0x94023bff
  %wp2555 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360145248, ptr %wp2555, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f2558(ptr %c)
  ; @pc 0x800063560 word 0xa941a7e8
  %r2556.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2556 = load i64, ptr %r2556.p, align 8, !alias.scope !3, !noalias !4
  %t2557 = add i64 %r2556, 24
  %t2558 = add i64 %t2557, 8
  %gmp2559 = inttoptr i64 %t2557 to ptr
  %gml2560 = load i64, ptr %gmp2559, align 1, !alias.scope !4, !noalias !3
  %gmp2561 = inttoptr i64 %t2558 to ptr
  %gml2562 = load i64, ptr %gmp2561, align 1, !alias.scope !4, !noalias !3
  %wp2563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2560, ptr %wp2563, align 8, !alias.scope !3, !noalias !4
  %wp2564 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2562, ptr %wp2564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063564 word 0xf958f508
  %r2565.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2565 = load i64, ptr %r2565.p, align 8, !alias.scope !3, !noalias !4
  %t2566 = add i64 %r2565, 12776
  %gmp2567 = inttoptr i64 %t2566 to ptr
  %gml2568 = load i64, ptr %gmp2567, align 1, !alias.scope !4, !noalias !3
  %wp2569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2568, ptr %wp2569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063568 word 0xb94ca92a
  %r2570.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2570 = load i64, ptr %r2570.p, align 8, !alias.scope !3, !noalias !4
  %t2571 = add i64 %r2570, 3240
  %gmp2572 = inttoptr i64 %t2571 to ptr
  %gml2573 = load i32, ptr %gmp2572, align 1, !alias.scope !4, !noalias !3
  %c2574 = zext i32 %gml2573 to i64
  %wp2575 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2574, ptr %wp2575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006356c word 0x373856aa
  %r2576.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2576 = load i64, ptr %r2576.p, align 8, !alias.scope !3, !noalias !4
  %t2577 = and i64 %r2576, 128
  %cmp2578 = icmp ne i64 %t2577, 0
  br i1 %cmp2578, label %L_800064040, label %L_800063570_ft
L_800063588:
  ; @pc 0x800063588 word 0xf908cd09
  %r2604.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2604 = load i64, ptr %r2604.p, align 8, !alias.scope !3, !noalias !4
  %t2605 = add i64 %r2604, 4504
  %r2606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2606 = load i64, ptr %r2606.p, align 8, !alias.scope !3, !noalias !4
  %gmp2607 = inttoptr i64 %t2605 to ptr
  store i64 %r2606, ptr %gmp2607, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006358c word 0x17fffeae
  br label %L_800063044
L_800063590:
  ; @pc 0x800063590 word 0xa941cfe1
  %r2608.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2608 = load i64, ptr %r2608.p, align 8, !alias.scope !3, !noalias !4
  %t2609 = add i64 %r2608, 24
  %t2610 = add i64 %t2609, 8
  %gmp2611 = inttoptr i64 %t2609 to ptr
  %gml2612 = load i64, ptr %gmp2611, align 1, !alias.scope !4, !noalias !3
  %gmp2613 = inttoptr i64 %t2610 to ptr
  %gml2614 = load i64, ptr %gmp2613, align 1, !alias.scope !4, !noalias !3
  %wp2615 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2612, ptr %wp2615, align 8, !alias.scope !3, !noalias !4
  %wp2616 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2614, ptr %wp2616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063594 word 0xf9454660
  %r2617.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2617 = load i64, ptr %r2617.p, align 8, !alias.scope !3, !noalias !4
  %t2618 = add i64 %r2617, 2696
  %gmp2619 = inttoptr i64 %t2618 to ptr
  %gml2620 = load i64, ptr %gmp2619, align 1, !alias.scope !4, !noalias !3
  %wp2621 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2620, ptr %wp2621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063598 word 0xf9446e62
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %t2623 = add i64 %r2622, 2264
  %gmp2624 = inttoptr i64 %t2623 to ptr
  %gml2625 = load i64, ptr %gmp2624, align 1, !alias.scope !4, !noalias !3
  %wp2626 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml2625, ptr %wp2626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006359c word 0x9402d752
  %wp2627 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360145312, ptr %wp2627, align 8, !alias.scope !3, !noalias !4
  call void @f_8001192e4(ptr %c)
  ; @pc 0x8000635a0 word 0xb94d0262
  %r2628.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2628 = load i64, ptr %r2628.p, align 8, !alias.scope !3, !noalias !4
  %t2629 = add i64 %r2628, 3328
  %gmp2630 = inttoptr i64 %t2629 to ptr
  %gml2631 = load i32, ptr %gmp2630, align 1, !alias.scope !4, !noalias !3
  %c2632 = zext i32 %gml2631 to i64
  %wp2633 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2632, ptr %wp2633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635a4 word 0x3100045f
  %r2634.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2634 = load i64, ptr %r2634.p, align 8, !alias.scope !3, !noalias !4
  %c2635 = trunc i64 %r2634 to i32
  %t2636 = add i32 %c2635, 1
  %fn2637 = icmp slt i32 %t2636, 0
  %fz2638 = icmp eq i32 %t2636, 0
  %fc2639 = icmp ult i32 %t2636, %c2635
  %fx12640 = xor i32 %c2635, %t2636
  %fx22641 = xor i32 1, %t2636
  %fva2642 = and i32 %fx12640, %fx22641
  %fv2643 = icmp slt i32 %fva2642, 0
  %nz2644 = zext i1 %fn2637 to i64
  %zz2645 = zext i1 %fz2638 to i64
  %cz2646 = zext i1 %fc2639 to i64
  %vz2647 = zext i1 %fv2643 to i64
  %ns2648 = shl i64 %nz2644, 31
  %zs2649 = shl i64 %zz2645, 30
  %cs2650 = shl i64 %cz2646, 29
  %vs2651 = shl i64 %vz2647, 28
  %nzor2652 = or i64 %ns2648, %zs2649
  %cvor2653 = or i64 %cs2650, %vs2651
  %nzcv2654 = or i64 %nzor2652, %cvor2653
  %wp2655 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2654, ptr %wp2655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635a8 word 0x54005621
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %fsh2658 = lshr i64 %r2656, 30
  %ftr2659 = trunc i64 %fsh2658 to i1
  %cond2657 = xor i1 %ftr2659, true
  br i1 %cond2657, label %L_80006406c, label %L_8000635ac
L_8000635ac:
  ; @pc 0x8000635ac word 0xf94013e8
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %t2661 = add i64 %r2660, 32
  %gmp2662 = inttoptr i64 %t2661 to ptr
  %gml2663 = load i64, ptr %gmp2662, align 1, !alias.scope !4, !noalias !3
  %wp2664 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2663, ptr %wp2664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635b0 word 0xb94bc908
  %r2665.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2665 = load i64, ptr %r2665.p, align 8, !alias.scope !3, !noalias !4
  %t2666 = add i64 %r2665, 3016
  %gmp2667 = inttoptr i64 %t2666 to ptr
  %gml2668 = load i32, ptr %gmp2667, align 1, !alias.scope !4, !noalias !3
  %c2669 = zext i32 %gml2668 to i64
  %wp2670 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2669, ptr %wp2670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635b4 word 0x7100051f
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %c2672 = trunc i64 %r2671 to i32
  %t2673 = sub i32 %c2672, 1
  %fn2674 = icmp slt i32 %t2673, 0
  %fz2675 = icmp eq i32 %t2673, 0
  %fc2676 = icmp uge i32 %c2672, 1
  %fx12677 = xor i32 %c2672, 1
  %fx22678 = xor i32 %c2672, %t2673
  %fva2679 = and i32 %fx12677, %fx22678
  %fv2680 = icmp slt i32 %fva2679, 0
  %nz2681 = zext i1 %fn2674 to i64
  %zz2682 = zext i1 %fz2675 to i64
  %cz2683 = zext i1 %fc2676 to i64
  %vz2684 = zext i1 %fv2680 to i64
  %ns2685 = shl i64 %nz2681, 31
  %zs2686 = shl i64 %zz2682, 30
  %cs2687 = shl i64 %cz2683, 29
  %vs2688 = shl i64 %vz2684, 28
  %nzor2689 = or i64 %ns2685, %zs2686
  %cvor2690 = or i64 %cs2687, %vs2688
  %nzcv2691 = or i64 %nzor2689, %cvor2690
  %wp2692 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2691, ptr %wp2692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635b8 word 0x54002c4b
  %r2693.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2693 = load i64, ptr %r2693.p, align 8, !alias.scope !3, !noalias !4
  %fsh2695 = lshr i64 %r2693, 31
  %ftr2696 = trunc i64 %fsh2695 to i1
  %fsh2697 = lshr i64 %r2693, 28
  %ftr2698 = trunc i64 %fsh2697 to i1
  %cond2694 = icmp ne i1 %ftr2696, %ftr2698
  br i1 %cond2694, label %L_800063b40, label %L_8000635bc_ft
L_8000635c8:
  ; @pc 0x8000635c8 word 0xf94013e9
  %r2726.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2726 = load i64, ptr %r2726.p, align 8, !alias.scope !3, !noalias !4
  %t2727 = add i64 %r2726, 32
  %gmp2728 = inttoptr i64 %t2727 to ptr
  %gml2729 = load i64, ptr %gmp2728, align 1, !alias.scope !4, !noalias !3
  %wp2730 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2729, ptr %wp2730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635cc word 0x531d7108
  %r2731.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2731 = load i64, ptr %r2731.p, align 8, !alias.scope !3, !noalias !4
  %c2732 = trunc i64 %r2731 to i32
  %ror2733 = call i32 @llvm.fshr.i32(i32 %c2732, i32 %c2732, i32 29)
  %t2734 = and i32 %ror2733, -8
  %c2735 = zext i32 %t2734 to i64
  %wp2736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2735, ptr %wp2736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635d0 word 0x51002108
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %c2738 = trunc i64 %r2737 to i32
  %t2739 = sub i32 %c2738, 8
  %c2740 = zext i32 %t2739 to i64
  %wp2741 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2740, ptr %wp2741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635d4 word 0x93407d02
  %r2742.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2742 = load i64, ptr %r2742.p, align 8, !alias.scope !3, !noalias !4
  %t2743 = lshr i64 %r2742, 31
  %t2744 = and i64 %t2743, 1
  %t2745 = sub i64 0, %t2744
  %t2746 = and i64 %t2745, -4294967296
  %t2747 = and i64 %r2742, 4294967295
  %t2748 = or i64 %t2746, %t2747
  %wp2749 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2748, ptr %wp2749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635d8 word 0xf945e920
  %r2750.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2750 = load i64, ptr %r2750.p, align 8, !alias.scope !3, !noalias !4
  %t2751 = add i64 %r2750, 3024
  %gmp2752 = inttoptr i64 %t2751 to ptr
  %gml2753 = load i64, ptr %gmp2752, align 1, !alias.scope !4, !noalias !3
  %wp2754 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2753, ptr %wp2754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635dc word 0xaa0003e1
  %r2755.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2755 = load i64, ptr %r2755.p, align 8, !alias.scope !3, !noalias !4
  %t2756 = or i64 0, %r2755
  %wp2757 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2756, ptr %wp2757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635e0 word 0xf8408429
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %t2759 = add i64 %r2758, 8
  %gmp2760 = inttoptr i64 %r2758 to ptr
  %gml2761 = load i64, ptr %gmp2760, align 1, !alias.scope !4, !noalias !3
  %wp2762 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2759, ptr %wp2762, align 8, !alias.scope !3, !noalias !4
  %wp2763 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2761, ptr %wp2763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635e4 word 0xf9000fe9
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %t2765 = add i64 %r2764, 24
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %gmp2767 = inttoptr i64 %t2765 to ptr
  store i64 %r2766, ptr %gmp2767, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000635e8 word 0x94ad08de
  %wp2768 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360145388, ptr %wp2768, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba5960(ptr %c)
  ; @pc 0x8000635ec word 0xa941a7e0
  %r2769.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2769 = load i64, ptr %r2769.p, align 8, !alias.scope !3, !noalias !4
  %t2770 = add i64 %r2769, 24
  %t2771 = add i64 %t2770, 8
  %gmp2772 = inttoptr i64 %t2770 to ptr
  %gml2773 = load i64, ptr %gmp2772, align 1, !alias.scope !4, !noalias !3
  %gmp2774 = inttoptr i64 %t2771 to ptr
  %gml2775 = load i64, ptr %gmp2774, align 1, !alias.scope !4, !noalias !3
  %wp2776 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2773, ptr %wp2776, align 8, !alias.scope !3, !noalias !4
  %wp2777 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2775, ptr %wp2777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635f0 word 0xb94bc928
  %r2778.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2778 = load i64, ptr %r2778.p, align 8, !alias.scope !3, !noalias !4
  %t2779 = add i64 %r2778, 3016
  %gmp2780 = inttoptr i64 %t2779 to ptr
  %gml2781 = load i32, ptr %gmp2780, align 1, !alias.scope !4, !noalias !3
  %c2782 = zext i32 %gml2781 to i64
  %wp2783 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2782, ptr %wp2783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635f4 word 0x51000508
  %r2784.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2784 = load i64, ptr %r2784.p, align 8, !alias.scope !3, !noalias !4
  %c2785 = trunc i64 %r2784 to i32
  %t2786 = sub i32 %c2785, 1
  %c2787 = zext i32 %t2786 to i64
  %wp2788 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2787, ptr %wp2788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635f8 word 0xb90bc928
  %r2789.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2789 = load i64, ptr %r2789.p, align 8, !alias.scope !3, !noalias !4
  %t2790 = add i64 %r2789, 3016
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %c2792 = trunc i64 %r2791 to i32
  %gmp2793 = inttoptr i64 %t2790 to ptr
  store i32 %c2792, ptr %gmp2793, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000635fc word 0x94ab268f
  %wp2794 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360145408, ptr %wp2794, align 8, !alias.scope !3, !noalias !4
  call void @f_802b2d038(ptr %c)
  ; @pc 0x800063600 word 0xf94013e8
  %r2795.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2795 = load i64, ptr %r2795.p, align 8, !alias.scope !3, !noalias !4
  %t2796 = add i64 %r2795, 32
  %gmp2797 = inttoptr i64 %t2796 to ptr
  %gml2798 = load i64, ptr %gmp2797, align 1, !alias.scope !4, !noalias !3
  %wp2799 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2798, ptr %wp2799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063604 word 0x52800020
  %c2800 = zext i32 1 to i64
  %wp2801 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c2800, ptr %wp2801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063608 word 0xb94bc908
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %t2803 = add i64 %r2802, 3016
  %gmp2804 = inttoptr i64 %t2803 to ptr
  %gml2805 = load i32, ptr %gmp2804, align 1, !alias.scope !4, !noalias !3
  %c2806 = zext i32 %gml2805 to i64
  %wp2807 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2806, ptr %wp2807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006360c word 0x7100011f
  %r2808.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2808 = load i64, ptr %r2808.p, align 8, !alias.scope !3, !noalias !4
  %c2809 = trunc i64 %r2808 to i32
  %t2810 = sub i32 %c2809, 0
  %fn2811 = icmp slt i32 %t2810, 0
  %fz2812 = icmp eq i32 %t2810, 0
  %fc2813 = icmp uge i32 %c2809, 0
  %fx12814 = xor i32 %c2809, 0
  %fx22815 = xor i32 %c2809, %t2810
  %fva2816 = and i32 %fx12814, %fx22815
  %fv2817 = icmp slt i32 %fva2816, 0
  %nz2818 = zext i1 %fn2811 to i64
  %zz2819 = zext i1 %fz2812 to i64
  %cz2820 = zext i1 %fc2813 to i64
  %vz2821 = zext i1 %fv2817 to i64
  %ns2822 = shl i64 %nz2818, 31
  %zs2823 = shl i64 %zz2819, 30
  %cs2824 = shl i64 %cz2820, 29
  %vs2825 = shl i64 %vz2821, 28
  %nzor2826 = or i64 %ns2822, %zs2823
  %cvor2827 = or i64 %cs2824, %vs2825
  %nzcv2828 = or i64 %nzor2826, %cvor2827
  %wp2829 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2828, ptr %wp2829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063610 word 0x54ffc1cd
  %r2830.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2830 = load i64, ptr %r2830.p, align 8, !alias.scope !3, !noalias !4
  %fsh2832 = lshr i64 %r2830, 30
  %ftr2833 = trunc i64 %fsh2832 to i1
  %fsh2834 = lshr i64 %r2830, 31
  %ftr2835 = trunc i64 %fsh2834 to i1
  %fsh2836 = lshr i64 %r2830, 28
  %ftr2837 = trunc i64 %fsh2836 to i1
  %fnz2838 = xor i1 %ftr2833, true
  %feq2839 = icmp eq i1 %ftr2835, %ftr2837
  %fgt2840 = and i1 %fnz2838, %feq2839
  %cond2831 = xor i1 %fgt2840, true
  br i1 %cond2831, label %L_800062e48, label %L_800063614_ft
L_800063618:
  ; @pc 0x800063618 word 0xf94013e8
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %t2842 = add i64 %r2841, 32
  %gmp2843 = inttoptr i64 %t2842 to ptr
  %gml2844 = load i64, ptr %gmp2843, align 1, !alias.scope !4, !noalias !3
  %wp2845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2844, ptr %wp2845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006361c word 0xf9457516
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %t2847 = add i64 %r2846, 2792
  %gmp2848 = inttoptr i64 %t2847 to ptr
  %gml2849 = load i64, ptr %gmp2848, align 1, !alias.scope !4, !noalias !3
  %wp2850 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2849, ptr %wp2850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063620 word 0xf9448108
  %r2851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2851 = load i64, ptr %r2851.p, align 8, !alias.scope !3, !noalias !4
  %t2852 = add i64 %r2851, 2304
  %gmp2853 = inttoptr i64 %t2852 to ptr
  %gml2854 = load i64, ptr %gmp2853, align 1, !alias.scope !4, !noalias !3
  %wp2855 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2854, ptr %wp2855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063624 word 0xf9400517
  %r2856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2856 = load i64, ptr %r2856.p, align 8, !alias.scope !3, !noalias !4
  %t2857 = add i64 %r2856, 8
  %gmp2858 = inttoptr i64 %t2857 to ptr
  %gml2859 = load i64, ptr %gmp2858, align 1, !alias.scope !4, !noalias !3
  %wp2860 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2859, ptr %wp2860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063628 word 0xb9400ec8
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %t2862 = add i64 %r2861, 12
  %gmp2863 = inttoptr i64 %t2862 to ptr
  %gml2864 = load i32, ptr %gmp2863, align 1, !alias.scope !4, !noalias !3
  %c2865 = zext i32 %gml2864 to i64
  %wp2866 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2865, ptr %wp2866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006362c word 0x361028c8
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %t2868 = and i64 %r2867, 4
  %cmp2869 = icmp eq i64 %t2868, 0
  br i1 %cmp2869, label %L_800063b44, label %L_800063630_ft
L_800063660:
  ; @pc 0x800063660 word 0x885f7f28
  %r2915.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2915 = load i64, ptr %r2915.p, align 8, !alias.scope !3, !noalias !4
  %atp2916 = inttoptr i64 %r2915 to ptr
  %ldx2917 = load atomic i32, ptr %atp2916 acquire, align 4, !alias.scope !4, !noalias !3
  %c2918 = zext i32 %ldx2917 to i64
  %fp2919 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2915, ptr %fp2919, align 8, !alias.scope !3, !noalias !4
  %fp2920 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2918, ptr %fp2920, align 8, !alias.scope !3, !noalias !4
  %wp2921 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2918, ptr %wp2921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063664 word 0x121d7908
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %c2923 = trunc i64 %r2922 to i32
  %t2924 = and i32 %c2923, -5
  %c2925 = zext i32 %t2924 to i64
  %wp2926 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2925, ptr %wp2926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063668 word 0x88097f28
  %r2927.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2927 = load i64, ptr %r2927.p, align 8, !alias.scope !3, !noalias !4
  %atp2928 = inttoptr i64 %r2927 to ptr
  %fp2929 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2930 = load i64, ptr %fp2929, align 8, !alias.scope !3, !noalias !4
  %fp2931 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2932 = load i64, ptr %fp2931, align 8, !alias.scope !3, !noalias !4
  %fp2933 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2933, align 8, !alias.scope !3, !noalias !4
  %cmp2934 = icmp eq i64 %fv2930, %r2927
  %c2935 = trunc i64 %fv2932 to i32
  %r2936.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2936 = load i64, ptr %r2936.p, align 8, !alias.scope !3, !noalias !4
  %c2937 = trunc i64 %r2936 to i32
  %cx2938 = cmpxchg ptr %atp2928, i32 %c2935, i32 %c2937 seq_cst seq_cst, align 4
  %cxok2939 = extractvalue { i32, i1 } %cx2938, 1
  %t2940 = and i1 %cmp2934, %cxok2939
  %sel2941 = select i1 %t2940, i32 0, i32 1
  %c2942 = zext i32 %sel2941 to i64
  %wp2943 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2942, ptr %wp2943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006366c word 0x35ffffa9
  %r2944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2944 = load i64, ptr %r2944.p, align 8, !alias.scope !3, !noalias !4
  %c2945 = trunc i64 %r2944 to i32
  %cmp2946 = icmp ne i32 %c2945, 0
  br i1 %cmp2946, label %L_800063660, label %L_800063670_ft
L_800063678:
  ; @pc 0x800063678 word 0xf9400fe8
  %r2948.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2948 = load i64, ptr %r2948.p, align 8, !alias.scope !3, !noalias !4
  %t2949 = add i64 %r2948, 24
  %gmp2950 = inttoptr i64 %t2949 to ptr
  %gml2951 = load i64, ptr %gmp2950, align 1, !alias.scope !4, !noalias !3
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2951, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006367c word 0xbd7aa500
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %t2954 = add i64 %r2953, 15012
  %gmp2955 = inttoptr i64 %t2954 to ptr
  %gml2956 = load i32, ptr %gmp2955, align 1, !alias.scope !4, !noalias !3
  %c2957 = zext i32 %gml2956 to i128
  %wp2958 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2957, ptr %wp2958, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063680 word 0x1e202008
  %fcmp2959 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2960 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2959, ptr %wp2960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063684 word 0x5400260d
  %r2961.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2961 = load i64, ptr %r2961.p, align 8, !alias.scope !3, !noalias !4
  %fsh2963 = lshr i64 %r2961, 30
  %ftr2964 = trunc i64 %fsh2963 to i1
  %fsh2965 = lshr i64 %r2961, 31
  %ftr2966 = trunc i64 %fsh2965 to i1
  %fsh2967 = lshr i64 %r2961, 28
  %ftr2968 = trunc i64 %fsh2967 to i1
  %fnz2969 = xor i1 %ftr2964, true
  %feq2970 = icmp eq i1 %ftr2966, %ftr2968
  %fgt2971 = and i1 %fnz2969, %feq2970
  %cond2962 = xor i1 %fgt2971, true
  br i1 %cond2962, label %L_800063b44, label %L_800063688_ft
L_8000636a0:
  ; @pc 0x8000636a0 word 0xb001c788
  %wp3015 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419851264, ptr %wp3015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636a4 word 0xf942b908
  %r3016.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3016 = load i64, ptr %r3016.p, align 8, !alias.scope !3, !noalias !4
  %t3017 = add i64 %r3016, 1392
  %gmp3018 = inttoptr i64 %t3017 to ptr
  %gml3019 = load i64, ptr %gmp3018, align 1, !alias.scope !4, !noalias !3
  %wp3020 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3019, ptr %wp3020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636a8 word 0xb9400269
  %r3021.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3021 = load i64, ptr %r3021.p, align 8, !alias.scope !3, !noalias !4
  %gmp3022 = inttoptr i64 %r3021 to ptr
  %gml3023 = load i32, ptr %gmp3022, align 1, !alias.scope !4, !noalias !3
  %c3024 = zext i32 %gml3023 to i64
  %wp3025 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3024, ptr %wp3025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636ac word 0x71001d3f
  %r3026.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3026 = load i64, ptr %r3026.p, align 8, !alias.scope !3, !noalias !4
  %c3027 = trunc i64 %r3026 to i32
  %t3028 = sub i32 %c3027, 7
  %fn3029 = icmp slt i32 %t3028, 0
  %fz3030 = icmp eq i32 %t3028, 0
  %fc3031 = icmp uge i32 %c3027, 7
  %fx13032 = xor i32 %c3027, 7
  %fx23033 = xor i32 %c3027, %t3028
  %fva3034 = and i32 %fx13032, %fx23033
  %fv3035 = icmp slt i32 %fva3034, 0
  %nz3036 = zext i1 %fn3029 to i64
  %zz3037 = zext i1 %fz3030 to i64
  %cz3038 = zext i1 %fc3031 to i64
  %vz3039 = zext i1 %fv3035 to i64
  %ns3040 = shl i64 %nz3036, 31
  %zs3041 = shl i64 %zz3037, 30
  %cs3042 = shl i64 %cz3038, 29
  %vs3043 = shl i64 %vz3039, 28
  %nzor3044 = or i64 %ns3040, %zs3041
  %cvor3045 = or i64 %cs3042, %vs3043
  %nzcv3046 = or i64 %nzor3044, %cvor3045
  %wp3047 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3046, ptr %wp3047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636b0 word 0xf9400108
  %r3048.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3048 = load i64, ptr %r3048.p, align 8, !alias.scope !3, !noalias !4
  %gmp3049 = inttoptr i64 %r3048 to ptr
  %gml3050 = load i64, ptr %gmp3049, align 1, !alias.scope !4, !noalias !3
  %wp3051 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3050, ptr %wp3051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636b4 word 0x1a9f17e9
  %t3052 = add i32 0, 1
  %r3053.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3053 = load i64, ptr %r3053.p, align 8, !alias.scope !3, !noalias !4
  %fsh3055 = lshr i64 %r3053, 30
  %ftr3056 = trunc i64 %fsh3055 to i1
  %cond3054 = xor i1 %ftr3056, true
  %sel3057 = select i1 %cond3054, i32 0, i32 %t3052
  %c3058 = zext i32 %sel3057 to i64
  %wp3059 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3058, ptr %wp3059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636b8 word 0x3904d509
  %r3060.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3060 = load i64, ptr %r3060.p, align 8, !alias.scope !3, !noalias !4
  %t3061 = add i64 %r3060, 309
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %c3063 = trunc i64 %r3062 to i32
  %c3064 = trunc i32 %c3063 to i8
  %gmp3065 = inttoptr i64 %t3061 to ptr
  store i8 %c3064, ptr %gmp3065, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000636bc word 0x5291c729
  %c3066 = zext i32 36409 to i64
  %wp3067 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3066, ptr %wp3067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636c0 word 0x72a71c69
  %r3068.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3068 = load i64, ptr %r3068.p, align 8, !alias.scope !3, !noalias !4
  %t3069 = and i64 %r3068, -4294901761
  %t3070 = or i64 %t3069, 954400768
  %c3071 = trunc i64 %t3070 to i32
  %c3072 = zext i32 %c3071 to i64
  %wp3073 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3072, ptr %wp3073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636c4 word 0xb9400268
  %r3074.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3074 = load i64, ptr %r3074.p, align 8, !alias.scope !3, !noalias !4
  %gmp3075 = inttoptr i64 %r3074 to ptr
  %gml3076 = load i32, ptr %gmp3075, align 1, !alias.scope !4, !noalias !3
  %c3077 = zext i32 %gml3076 to i64
  %wp3078 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3077, ptr %wp3078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636c8 word 0x11000508
  %r3079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3079 = load i64, ptr %r3079.p, align 8, !alias.scope !3, !noalias !4
  %c3080 = trunc i64 %r3079 to i32
  %t3081 = add i32 %c3080, 1
  %c3082 = zext i32 %t3081 to i64
  %wp3083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3082, ptr %wp3083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636cc word 0x9ba97d09
  %r3084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3084 = load i64, ptr %r3084.p, align 8, !alias.scope !3, !noalias !4
  %c3085 = trunc i64 %r3084 to i32
  %c3086 = zext i32 %c3085 to i64
  %r3087.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3087 = load i64, ptr %r3087.p, align 8, !alias.scope !3, !noalias !4
  %c3088 = trunc i64 %r3087 to i32
  %c3089 = zext i32 %c3088 to i64
  %t3090 = mul i64 %c3086, %c3089
  %t3091 = add i64 0, %t3090
  %wp3092 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3091, ptr %wp3092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636d0 word 0xd361fd29
  %r3093.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3093 = load i64, ptr %r3093.p, align 8, !alias.scope !3, !noalias !4
  %ror3094 = call i64 @llvm.fshr.i64(i64 %r3093, i64 %r3093, i64 33)
  %t3095 = and i64 %ror3094, 2147483647
  %wp3096 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3095, ptr %wp3096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636d4 word 0x0b090d29
  %r3097.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3097 = load i64, ptr %r3097.p, align 8, !alias.scope !3, !noalias !4
  %c3098 = trunc i64 %r3097 to i32
  %r3099.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3099 = load i64, ptr %r3099.p, align 8, !alias.scope !3, !noalias !4
  %c3100 = trunc i64 %r3099 to i32
  %t3101 = shl i32 %c3100, 3
  %t3102 = add i32 %c3098, %t3101
  %c3103 = zext i32 %t3102 to i64
  %wp3104 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3103, ptr %wp3104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636d8 word 0x4b090108
  %r3105.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3105 = load i64, ptr %r3105.p, align 8, !alias.scope !3, !noalias !4
  %c3106 = trunc i64 %r3105 to i32
  %r3107.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3107 = load i64, ptr %r3107.p, align 8, !alias.scope !3, !noalias !4
  %c3108 = trunc i64 %r3107 to i32
  %t3109 = sub i32 %c3106, %c3108
  %c3110 = zext i32 %t3109 to i64
  %wp3111 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3110, ptr %wp3111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636dc word 0xb9000268
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %r3113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3113 = load i64, ptr %r3113.p, align 8, !alias.scope !3, !noalias !4
  %c3114 = trunc i64 %r3113 to i32
  %gmp3115 = inttoptr i64 %r3112 to ptr
  store i32 %c3114, ptr %gmp3115, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000636e0 word 0x14000118
  br label %L_800063b40
L_8000636e4:
  ; @pc 0x8000636e4 word 0xf94013e8
  %r3116.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3116 = load i64, ptr %r3116.p, align 8, !alias.scope !3, !noalias !4
  %t3117 = add i64 %r3116, 32
  %gmp3118 = inttoptr i64 %t3117 to ptr
  %gml3119 = load i64, ptr %gmp3118, align 1, !alias.scope !4, !noalias !3
  %wp3120 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3119, ptr %wp3120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636e8 word 0xf944ed00
  %r3121.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3121 = load i64, ptr %r3121.p, align 8, !alias.scope !3, !noalias !4
  %t3122 = add i64 %r3121, 2520
  %gmp3123 = inttoptr i64 %t3122 to ptr
  %gml3124 = load i64, ptr %gmp3123, align 1, !alias.scope !4, !noalias !3
  %wp3125 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3124, ptr %wp3125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636ec word 0x940238e7
  %wp3126 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360145648, ptr %wp3126, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f1a88(ptr %c)
  ; @pc 0x8000636f0 word 0x140000c5
  br label %L_800063a04
L_8000636f4:
  ; @pc 0x8000636f4 word 0xf94013e8
  %r3127.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3127 = load i64, ptr %r3127.p, align 8, !alias.scope !3, !noalias !4
  %t3128 = add i64 %r3127, 32
  %gmp3129 = inttoptr i64 %t3128 to ptr
  %gml3130 = load i64, ptr %gmp3129, align 1, !alias.scope !4, !noalias !3
  %wp3131 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3130, ptr %wp3131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636f8 word 0xf9459508
  %r3132.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3132 = load i64, ptr %r3132.p, align 8, !alias.scope !3, !noalias !4
  %t3133 = add i64 %r3132, 2856
  %gmp3134 = inttoptr i64 %t3133 to ptr
  %gml3135 = load i64, ptr %gmp3134, align 1, !alias.scope !4, !noalias !3
  %wp3136 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3135, ptr %wp3136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000636fc word 0x396a4109
  %r3137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3137 = load i64, ptr %r3137.p, align 8, !alias.scope !3, !noalias !4
  %t3138 = add i64 %r3137, 2704
  %gmp3139 = inttoptr i64 %t3138 to ptr
  %gml3140 = load i8, ptr %gmp3139, align 1, !alias.scope !4, !noalias !3
  %c3141 = zext i8 %gml3140 to i64
  %wp3142 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3141, ptr %wp3142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063700 word 0x361001a9
  %r3143.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3143 = load i64, ptr %r3143.p, align 8, !alias.scope !3, !noalias !4
  %t3144 = and i64 %r3143, 4
  %cmp3145 = icmp eq i64 %t3144, 0
  br i1 %cmp3145, label %L_800063734, label %L_800063704_ft
L_800063734:
  ; @pc 0x800063734 word 0xa94267e8
  %r3210.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3210 = load i64, ptr %r3210.p, align 8, !alias.scope !3, !noalias !4
  %t3211 = add i64 %r3210, 32
  %t3212 = add i64 %t3211, 8
  %gmp3213 = inttoptr i64 %t3211 to ptr
  %gml3214 = load i64, ptr %gmp3213, align 1, !alias.scope !4, !noalias !3
  %gmp3215 = inttoptr i64 %t3212 to ptr
  %gml3216 = load i64, ptr %gmp3215, align 1, !alias.scope !4, !noalias !3
  %wp3217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3214, ptr %wp3217, align 8, !alias.scope !3, !noalias !4
  %wp3218 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml3216, ptr %wp3218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063738 word 0xf9402bf7
  %r3219.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3219 = load i64, ptr %r3219.p, align 8, !alias.scope !3, !noalias !4
  %t3220 = add i64 %r3219, 80
  %gmp3221 = inttoptr i64 %t3220 to ptr
  %gml3222 = load i64, ptr %gmp3221, align 1, !alias.scope !4, !noalias !3
  %wp3223 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml3222, ptr %wp3223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006373c word 0xa94363fc
  %r3224.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3224 = load i64, ptr %r3224.p, align 8, !alias.scope !3, !noalias !4
  %t3225 = add i64 %r3224, 48
  %t3226 = add i64 %t3225, 8
  %gmp3227 = inttoptr i64 %t3225 to ptr
  %gml3228 = load i64, ptr %gmp3227, align 1, !alias.scope !4, !noalias !3
  %gmp3229 = inttoptr i64 %t3226 to ptr
  %gml3230 = load i64, ptr %gmp3229, align 1, !alias.scope !4, !noalias !3
  %wp3231 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml3228, ptr %wp3231, align 8, !alias.scope !3, !noalias !4
  %wp3232 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml3230, ptr %wp3232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063740 word 0xf9457908
  %r3233.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3233 = load i64, ptr %r3233.p, align 8, !alias.scope !3, !noalias !4
  %t3234 = add i64 %r3233, 2800
  %gmp3235 = inttoptr i64 %t3234 to ptr
  %gml3236 = load i64, ptr %gmp3235, align 1, !alias.scope !4, !noalias !3
  %wp3237 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3236, ptr %wp3237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063744 word 0xa9444ff6
  %r3238.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3238 = load i64, ptr %r3238.p, align 8, !alias.scope !3, !noalias !4
  %t3239 = add i64 %r3238, 64
  %t3240 = add i64 %t3239, 8
  %gmp3241 = inttoptr i64 %t3239 to ptr
  %gml3242 = load i64, ptr %gmp3241, align 1, !alias.scope !4, !noalias !3
  %gmp3243 = inttoptr i64 %t3240 to ptr
  %gml3244 = load i64, ptr %gmp3243, align 1, !alias.scope !4, !noalias !3
  %wp3245 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3242, ptr %wp3245, align 8, !alias.scope !3, !noalias !4
  %wp3246 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml3244, ptr %wp3246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063748 word 0x3942710a
  %r3247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3247 = load i64, ptr %r3247.p, align 8, !alias.scope !3, !noalias !4
  %t3248 = add i64 %r3247, 156
  %gmp3249 = inttoptr i64 %t3248 to ptr
  %gml3250 = load i8, ptr %gmp3249, align 1, !alias.scope !4, !noalias !3
  %c3251 = zext i8 %gml3250 to i64
  %wp3252 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3251, ptr %wp3252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006374c word 0x360fb7ea
  %r3253.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3253 = load i64, ptr %r3253.p, align 8, !alias.scope !3, !noalias !4
  %t3254 = and i64 %r3253, 2
  %cmp3255 = icmp eq i64 %t3254, 0
  br i1 %cmp3255, label %L_800062e48, label %L_800063750_ft
L_80006377c:
  ; @pc 0x80006377c word 0xf94013e8
  %r3304.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3304 = load i64, ptr %r3304.p, align 8, !alias.scope !3, !noalias !4
  %t3305 = add i64 %r3304, 32
  %gmp3306 = inttoptr i64 %t3305 to ptr
  %gml3307 = load i64, ptr %gmp3306, align 1, !alias.scope !4, !noalias !3
  %wp3308 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3307, ptr %wp3308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063780 word 0x1280000a
  %c3309 = zext i32 -1 to i64
  %wp3310 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3309, ptr %wp3310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063784 word 0xf9456508
  %r3311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3311 = load i64, ptr %r3311.p, align 8, !alias.scope !3, !noalias !4
  %t3312 = add i64 %r3311, 2760
  %gmp3313 = inttoptr i64 %t3312 to ptr
  %gml3314 = load i64, ptr %gmp3313, align 1, !alias.scope !4, !noalias !3
  %wp3315 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3314, ptr %wp3315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063788 word 0xb900091f
  %r3316.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3316 = load i64, ptr %r3316.p, align 8, !alias.scope !3, !noalias !4
  %t3317 = add i64 %r3316, 8
  %gmp3318 = inttoptr i64 %t3317 to ptr
  store i32 0, ptr %gmp3318, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006378c word 0xf9400d09
  %r3319.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3319 = load i64, ptr %r3319.p, align 8, !alias.scope !3, !noalias !4
  %t3320 = add i64 %r3319, 24
  %gmp3321 = inttoptr i64 %t3320 to ptr
  %gml3322 = load i64, ptr %gmp3321, align 1, !alias.scope !4, !noalias !3
  %wp3323 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3322, ptr %wp3323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063790 word 0xb9002d3f
  %r3324.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3324 = load i64, ptr %r3324.p, align 8, !alias.scope !3, !noalias !4
  %t3325 = add i64 %r3324, 44
  %gmp3326 = inttoptr i64 %t3325 to ptr
  store i32 0, ptr %gmp3326, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063794 word 0xa9017d2a
  %r3327.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3327 = load i64, ptr %r3327.p, align 8, !alias.scope !3, !noalias !4
  %t3328 = add i64 %r3327, 16
  %t3329 = add i64 %t3328, 8
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %gmp3331 = inttoptr i64 %t3328 to ptr
  store i64 %r3330, ptr %gmp3331, align 1, !alias.scope !4, !noalias !3
  %gmp3332 = inttoptr i64 %t3329 to ptr
  store i64 0, ptr %gmp3332, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063798 word 0xb900413f
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %t3334 = add i64 %r3333, 64
  %gmp3335 = inttoptr i64 %t3334 to ptr
  store i32 0, ptr %gmp3335, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006379c word 0xf9400d08
  %r3336.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3336 = load i64, ptr %r3336.p, align 8, !alias.scope !3, !noalias !4
  %t3337 = add i64 %r3336, 24
  %gmp3338 = inttoptr i64 %t3337 to ptr
  %gml3339 = load i64, ptr %gmp3338, align 1, !alias.scope !4, !noalias !3
  %wp3340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3339, ptr %wp3340, align 8, !alias.scope !3, !noalias !4
  br label %L_8000637a0
L_8000637a0:
  ; @pc 0x8000637a0 word 0xf9400fea
  %r3341.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3341 = load i64, ptr %r3341.p, align 8, !alias.scope !3, !noalias !4
  %t3342 = add i64 %r3341, 24
  %gmp3343 = inttoptr i64 %t3342 to ptr
  %gml3344 = load i64, ptr %gmp3343, align 1, !alias.scope !4, !noalias !3
  %wp3345 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3344, ptr %wp3345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637a4 word 0x52867c09
  %c3346 = zext i32 13280 to i64
  %wp3347 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3346, ptr %wp3347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637a8 word 0x8b09014a
  %r3348.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3348 = load i64, ptr %r3348.p, align 8, !alias.scope !3, !noalias !4
  %r3349.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3349 = load i64, ptr %r3349.p, align 8, !alias.scope !3, !noalias !4
  %t3350 = add i64 %r3348, %r3349
  %wp3351 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3350, ptr %wp3351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637ac word 0x885f7d49
  %r3352.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3352 = load i64, ptr %r3352.p, align 8, !alias.scope !3, !noalias !4
  %atp3353 = inttoptr i64 %r3352 to ptr
  %ldx3354 = load atomic i32, ptr %atp3353 acquire, align 4, !alias.scope !4, !noalias !3
  %c3355 = zext i32 %ldx3354 to i64
  %fp3356 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r3352, ptr %fp3356, align 8, !alias.scope !3, !noalias !4
  %fp3357 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c3355, ptr %fp3357, align 8, !alias.scope !3, !noalias !4
  %wp3358 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3355, ptr %wp3358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637b0 word 0x1100052b
  %r3359.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3359 = load i64, ptr %r3359.p, align 8, !alias.scope !3, !noalias !4
  %c3360 = trunc i64 %r3359 to i32
  %t3361 = add i32 %c3360, 1
  %c3362 = zext i32 %t3361 to i64
  %wp3363 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3362, ptr %wp3363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637b4 word 0x880c7d4b
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %atp3365 = inttoptr i64 %r3364 to ptr
  %fp3366 = getelementptr inbounds i8, ptr %c, i64 296
  %fv3367 = load i64, ptr %fp3366, align 8, !alias.scope !3, !noalias !4
  %fp3368 = getelementptr inbounds i8, ptr %c, i64 304
  %fv3369 = load i64, ptr %fp3368, align 8, !alias.scope !3, !noalias !4
  %fp3370 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp3370, align 8, !alias.scope !3, !noalias !4
  %cmp3371 = icmp eq i64 %fv3367, %r3364
  %c3372 = trunc i64 %fv3369 to i32
  %r3373.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3373 = load i64, ptr %r3373.p, align 8, !alias.scope !3, !noalias !4
  %c3374 = trunc i64 %r3373 to i32
  %cx3375 = cmpxchg ptr %atp3365, i32 %c3372, i32 %c3374 seq_cst seq_cst, align 4
  %cxok3376 = extractvalue { i32, i1 } %cx3375, 1
  %t3377 = and i1 %cmp3371, %cxok3376
  %sel3378 = select i1 %t3377, i32 0, i32 1
  %c3379 = zext i32 %sel3378 to i64
  %wp3380 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3379, ptr %wp3380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637b8 word 0x35ffff4c
  %r3381.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3381 = load i64, ptr %r3381.p, align 8, !alias.scope !3, !noalias !4
  %c3382 = trunc i64 %r3381 to i32
  %cmp3383 = icmp ne i32 %c3382, 0
  br i1 %cmp3383, label %L_8000637a0, label %L_8000637bc_ft
L_8000637e0:
  ; @pc 0x8000637e0 word 0xa941cfe8
  %r3454.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3454 = load i64, ptr %r3454.p, align 8, !alias.scope !3, !noalias !4
  %t3455 = add i64 %r3454, 24
  %t3456 = add i64 %t3455, 8
  %gmp3457 = inttoptr i64 %t3455 to ptr
  %gml3458 = load i64, ptr %gmp3457, align 1, !alias.scope !4, !noalias !3
  %gmp3459 = inttoptr i64 %t3456 to ptr
  %gml3460 = load i64, ptr %gmp3459, align 1, !alias.scope !4, !noalias !3
  %wp3461 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3458, ptr %wp3461, align 8, !alias.scope !3, !noalias !4
  %wp3462 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml3460, ptr %wp3462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637e4 word 0x91306274
  %r3463.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3463 = load i64, ptr %r3463.p, align 8, !alias.scope !3, !noalias !4
  %t3464 = add i64 %r3463, 3096
  %wp3465 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t3464, ptr %wp3465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637e8 word 0xf94f6508
  %r3466.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3466 = load i64, ptr %r3466.p, align 8, !alias.scope !3, !noalias !4
  %t3467 = add i64 %r3466, 7880
  %gmp3468 = inttoptr i64 %t3467 to ptr
  %gml3469 = load i64, ptr %gmp3468, align 1, !alias.scope !4, !noalias !3
  %wp3470 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3469, ptr %wp3470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637ec word 0xf9447676
  %r3471.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3471 = load i64, ptr %r3471.p, align 8, !alias.scope !3, !noalias !4
  %t3472 = add i64 %r3471, 2280
  %gmp3473 = inttoptr i64 %t3472 to ptr
  %gml3474 = load i64, ptr %gmp3473, align 1, !alias.scope !4, !noalias !3
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3474, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637f0 word 0xaa1403e0
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %t3477 = or i64 0, %r3476
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3477, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637f4 word 0xf9400908
  %r3479.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3479 = load i64, ptr %r3479.p, align 8, !alias.scope !3, !noalias !4
  %t3480 = add i64 %r3479, 16
  %gmp3481 = inttoptr i64 %t3480 to ptr
  %gml3482 = load i64, ptr %gmp3481, align 1, !alias.scope !4, !noalias !3
  %wp3483 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3482, ptr %wp3483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637f8 word 0xbd6e0d08
  %r3484.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3484 = load i64, ptr %r3484.p, align 8, !alias.scope !3, !noalias !4
  %t3485 = add i64 %r3484, 11788
  %gmp3486 = inttoptr i64 %t3485 to ptr
  %gml3487 = load i32, ptr %gmp3486, align 1, !alias.scope !4, !noalias !3
  %c3488 = zext i32 %gml3487 to i128
  %wp3489 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3488, ptr %wp3489, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000637fc word 0xbd6e0509
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %t3491 = add i64 %r3490, 11780
  %gmp3492 = inttoptr i64 %t3491 to ptr
  %gml3493 = load i32, ptr %gmp3492, align 1, !alias.scope !4, !noalias !3
  %c3494 = zext i32 %gml3493 to i128
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c3494, ptr %wp3495, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063800 word 0x94ad0218
  %wp3496 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360145924, ptr %wp3496, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x800063804 word 0xd0015ca9
  %wp3497 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34405847040, ptr %wp3497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063808 word 0x9126e129
  %r3498.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3498 = load i64, ptr %r3498.p, align 8, !alias.scope !3, !noalias !4
  %t3499 = add i64 %r3498, 2488
  %wp3500 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3499, ptr %wp3500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006380c word 0x39f34677
  %r3501.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3501 = load i64, ptr %r3501.p, align 8, !alias.scope !3, !noalias !4
  %t3502 = add i64 %r3501, 3281
  %gmp3503 = inttoptr i64 %t3502 to ptr
  %gml3504 = load i8, ptr %gmp3503, align 1, !alias.scope !4, !noalias !3
  %c3505 = sext i8 %gml3504 to i32
  %c3506 = zext i32 %c3505 to i64
  %wp3507 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3506, ptr %wp3507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063810 word 0xf9003fe9
  %r3508.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3508 = load i64, ptr %r3508.p, align 8, !alias.scope !3, !noalias !4
  %t3509 = add i64 %r3508, 120
  %r3510.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3510 = load i64, ptr %r3510.p, align 8, !alias.scope !3, !noalias !4
  %gmp3511 = inttoptr i64 %t3509 to ptr
  store i64 %r3510, ptr %gmp3511, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063814 word 0xb001c74a
  %wp3512 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34419818496, ptr %wp3512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063818 word 0xf94002c8
  %r3513.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3513 = load i64, ptr %r3513.p, align 8, !alias.scope !3, !noalias !4
  %gmp3514 = inttoptr i64 %r3513 to ptr
  %gml3515 = load i64, ptr %gmp3514, align 1, !alias.scope !4, !noalias !3
  %wp3516 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3515, ptr %wp3516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006381c word 0xf9407108
  %r3517.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3517 = load i64, ptr %r3517.p, align 8, !alias.scope !3, !noalias !4
  %t3518 = add i64 %r3517, 224
  %gmp3519 = inttoptr i64 %t3518 to ptr
  %gml3520 = load i64, ptr %gmp3519, align 1, !alias.scope !4, !noalias !3
  %wp3521 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3520, ptr %wp3521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063820 word 0xf946f14a
  %r3522.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3522 = load i64, ptr %r3522.p, align 8, !alias.scope !3, !noalias !4
  %t3523 = add i64 %r3522, 3552
  %gmp3524 = inttoptr i64 %t3523 to ptr
  %gml3525 = load i64, ptr %gmp3524, align 1, !alias.scope !4, !noalias !3
  %wp3526 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3525, ptr %wp3526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063824 word 0xeb0a011f
  %r3527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3527 = load i64, ptr %r3527.p, align 8, !alias.scope !3, !noalias !4
  %r3528.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3528 = load i64, ptr %r3528.p, align 8, !alias.scope !3, !noalias !4
  %t3529 = sub i64 %r3527, %r3528
  %fn3530 = icmp slt i64 %t3529, 0
  %fz3531 = icmp eq i64 %t3529, 0
  %fc3532 = icmp uge i64 %r3527, %r3528
  %fx13533 = xor i64 %r3527, %r3528
  %fx23534 = xor i64 %r3527, %t3529
  %fva3535 = and i64 %fx13533, %fx23534
  %fv3536 = icmp slt i64 %fva3535, 0
  %nz3537 = zext i1 %fn3530 to i64
  %zz3538 = zext i1 %fz3531 to i64
  %cz3539 = zext i1 %fc3532 to i64
  %vz3540 = zext i1 %fv3536 to i64
  %ns3541 = shl i64 %nz3537, 31
  %zs3542 = shl i64 %zz3538, 30
  %cs3543 = shl i64 %cz3539, 29
  %vs3544 = shl i64 %vz3540, 28
  %nzor3545 = or i64 %ns3541, %zs3542
  %cvor3546 = or i64 %cs3543, %vs3544
  %nzcv3547 = or i64 %nzor3545, %cvor3546
  %wp3548 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3547, ptr %wp3548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063828 word 0x54004ac1
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %fsh3551 = lshr i64 %r3549, 30
  %ftr3552 = trunc i64 %fsh3551 to i1
  %cond3550 = xor i1 %ftr3552, true
  br i1 %cond3550, label %L_800064180, label %L_80006382c_ft
L_800063874:
  ; @pc 0x800063874 word 0x71033d7f
  %r3660.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3660 = load i64, ptr %r3660.p, align 8, !alias.scope !3, !noalias !4
  %c3661 = trunc i64 %r3660 to i32
  %t3662 = sub i32 %c3661, 207
  %fn3663 = icmp slt i32 %t3662, 0
  %fz3664 = icmp eq i32 %t3662, 0
  %fc3665 = icmp uge i32 %c3661, 207
  %fx13666 = xor i32 %c3661, 207
  %fx23667 = xor i32 %c3661, %t3662
  %fva3668 = and i32 %fx13666, %fx23667
  %fv3669 = icmp slt i32 %fva3668, 0
  %nz3670 = zext i1 %fn3663 to i64
  %zz3671 = zext i1 %fz3664 to i64
  %cz3672 = zext i1 %fc3665 to i64
  %vz3673 = zext i1 %fv3669 to i64
  %ns3674 = shl i64 %nz3670, 31
  %zs3675 = shl i64 %zz3671, 30
  %cs3676 = shl i64 %cz3672, 29
  %vs3677 = shl i64 %vz3673, 28
  %nzor3678 = or i64 %ns3674, %zs3675
  %cvor3679 = or i64 %cs3676, %vs3677
  %nzcv3680 = or i64 %nzor3678, %cvor3679
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3680, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063878 word 0x54002a68
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %fsh3684 = lshr i64 %r3682, 29
  %ftr3685 = trunc i64 %fsh3684 to i1
  %fsh3686 = lshr i64 %r3682, 30
  %ftr3687 = trunc i64 %fsh3686 to i1
  %fnz3688 = xor i1 %ftr3687, true
  %cond3683 = and i1 %ftr3685, %fnz3688
  br i1 %cond3683, label %L_800063dc4, label %L_80006387c_ft
L_800063894:
  ; @pc 0x800063894 word 0x9100214d
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = add i64 %r3716, 8
  %wp3718 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3717, ptr %wp3718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063898 word 0x8b0811a8
  %r3719.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3719 = load i64, ptr %r3719.p, align 8, !alias.scope !3, !noalias !4
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3720 = load i64, ptr %r3720.p, align 8, !alias.scope !3, !noalias !4
  %t3721 = shl i64 %r3720, 4
  %t3722 = add i64 %r3719, %t3721
  %wp3723 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3722, ptr %wp3723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006389c word 0x8b0c0508
  %r3724.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3724 = load i64, ptr %r3724.p, align 8, !alias.scope !3, !noalias !4
  %r3725.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3725 = load i64, ptr %r3725.p, align 8, !alias.scope !3, !noalias !4
  %t3726 = shl i64 %r3725, 1
  %t3727 = add i64 %r3724, %t3726
  %wp3728 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3727, ptr %wp3728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638a0 word 0x79400908
  %r3729.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3729 = load i64, ptr %r3729.p, align 8, !alias.scope !3, !noalias !4
  %t3730 = add i64 %r3729, 4
  %gmp3731 = inttoptr i64 %t3730 to ptr
  %gml3732 = load i16, ptr %gmp3731, align 1, !alias.scope !4, !noalias !3
  %c3733 = zext i16 %gml3732 to i64
  %wp3734 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3733, ptr %wp3734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638a4 word 0xd37c7d0c
  %r3735.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3735 = load i64, ptr %r3735.p, align 8, !alias.scope !3, !noalias !4
  %ror3736 = call i64 @llvm.fshr.i64(i64 %r3735, i64 %r3735, i64 60)
  %t3737 = and i64 %ror3736, 68719476720
  %wp3738 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3737, ptr %wp3738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638a8 word 0xb86c69ac
  %r3739.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3739 = load i64, ptr %r3739.p, align 8, !alias.scope !3, !noalias !4
  %r3740.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3740 = load i64, ptr %r3740.p, align 8, !alias.scope !3, !noalias !4
  %t3741 = add i64 %r3739, %r3740
  %gmp3742 = inttoptr i64 %t3741 to ptr
  %gml3743 = load i32, ptr %gmp3742, align 1, !alias.scope !4, !noalias !3
  %c3744 = zext i32 %gml3743 to i64
  %wp3745 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3744, ptr %wp3745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638ac word 0x6b0c017f
  %r3746.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3746 = load i64, ptr %r3746.p, align 8, !alias.scope !3, !noalias !4
  %c3747 = trunc i64 %r3746 to i32
  %r3748.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3748 = load i64, ptr %r3748.p, align 8, !alias.scope !3, !noalias !4
  %c3749 = trunc i64 %r3748 to i32
  %t3750 = sub i32 %c3747, %c3749
  %fn3751 = icmp slt i32 %t3750, 0
  %fz3752 = icmp eq i32 %t3750, 0
  %fc3753 = icmp uge i32 %c3747, %c3749
  %fx13754 = xor i32 %c3747, %c3749
  %fx23755 = xor i32 %c3747, %t3750
  %fva3756 = and i32 %fx13754, %fx23755
  %fv3757 = icmp slt i32 %fva3756, 0
  %nz3758 = zext i1 %fn3751 to i64
  %zz3759 = zext i1 %fz3752 to i64
  %cz3760 = zext i1 %fc3753 to i64
  %vz3761 = zext i1 %fv3757 to i64
  %ns3762 = shl i64 %nz3758, 31
  %zs3763 = shl i64 %zz3759, 30
  %cs3764 = shl i64 %cz3760, 29
  %vs3765 = shl i64 %vz3761, 28
  %nzor3766 = or i64 %ns3762, %zs3763
  %cvor3767 = or i64 %cs3764, %vs3765
  %nzcv3768 = or i64 %nzor3766, %cvor3767
  %wp3769 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3768, ptr %wp3769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638b0 word 0x2a0c03eb
  %r3770.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3770 = load i64, ptr %r3770.p, align 8, !alias.scope !3, !noalias !4
  %c3771 = trunc i64 %r3770 to i32
  %t3772 = or i32 0, %c3771
  %c3773 = zext i32 %t3772 to i64
  %wp3774 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3773, ptr %wp3774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638b4 word 0x54fffe0b
  %r3775.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3775 = load i64, ptr %r3775.p, align 8, !alias.scope !3, !noalias !4
  %fsh3777 = lshr i64 %r3775, 31
  %ftr3778 = trunc i64 %fsh3777 to i1
  %fsh3779 = lshr i64 %r3775, 28
  %ftr3780 = trunc i64 %fsh3779 to i1
  %cond3776 = icmp ne i1 %ftr3778, %ftr3780
  br i1 %cond3776, label %L_800063874, label %L_8000638b8
L_8000638b8:
  ; @pc 0x8000638b8 word 0x8b081149
  %r3781.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3781 = load i64, ptr %r3781.p, align 8, !alias.scope !3, !noalias !4
  %r3782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3782 = load i64, ptr %r3782.p, align 8, !alias.scope !3, !noalias !4
  %t3783 = shl i64 %r3782, 4
  %t3784 = add i64 %r3781, %t3783
  %wp3785 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3784, ptr %wp3785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638bc word 0xf9400929
  %r3786.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3786 = load i64, ptr %r3786.p, align 8, !alias.scope !3, !noalias !4
  %t3787 = add i64 %r3786, 16
  %gmp3788 = inttoptr i64 %t3787 to ptr
  %gml3789 = load i64, ptr %gmp3788, align 1, !alias.scope !4, !noalias !3
  %wp3790 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3789, ptr %wp3790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638c0 word 0x7940012a
  %r3791.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3791 = load i64, ptr %r3791.p, align 8, !alias.scope !3, !noalias !4
  %gmp3792 = inttoptr i64 %r3791 to ptr
  %gml3793 = load i16, ptr %gmp3792, align 1, !alias.scope !4, !noalias !3
  %c3794 = zext i16 %gml3793 to i64
  %wp3795 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3794, ptr %wp3795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638c4 word 0x7100695f
  %r3796.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3796 = load i64, ptr %r3796.p, align 8, !alias.scope !3, !noalias !4
  %c3797 = trunc i64 %r3796 to i32
  %t3798 = sub i32 %c3797, 26
  %fn3799 = icmp slt i32 %t3798, 0
  %fz3800 = icmp eq i32 %t3798, 0
  %fc3801 = icmp uge i32 %c3797, 26
  %fx13802 = xor i32 %c3797, 26
  %fx23803 = xor i32 %c3797, %t3798
  %fva3804 = and i32 %fx13802, %fx23803
  %fv3805 = icmp slt i32 %fva3804, 0
  %nz3806 = zext i1 %fn3799 to i64
  %zz3807 = zext i1 %fz3800 to i64
  %cz3808 = zext i1 %fc3801 to i64
  %vz3809 = zext i1 %fv3805 to i64
  %ns3810 = shl i64 %nz3806, 31
  %zs3811 = shl i64 %zz3807, 30
  %cs3812 = shl i64 %cz3808, 29
  %vs3813 = shl i64 %vz3809, 28
  %nzor3814 = or i64 %ns3810, %zs3811
  %cvor3815 = or i64 %cs3812, %vs3813
  %nzcv3816 = or i64 %nzor3814, %cvor3815
  %wp3817 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3816, ptr %wp3817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638c8 word 0x54000921
  %r3818.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3818 = load i64, ptr %r3818.p, align 8, !alias.scope !3, !noalias !4
  %fsh3820 = lshr i64 %r3818, 30
  %ftr3821 = trunc i64 %fsh3820 to i1
  %cond3819 = xor i1 %ftr3821, true
  br i1 %cond3819, label %L_8000639ec, label %L_8000638cc_ft
L_800063928:
  ; @pc 0x800063928 word 0x3100045f
  %r3995.p = getelementptr inbounds i8, ptr %c, i64 16
  %r3995 = load i64, ptr %r3995.p, align 8, !alias.scope !3, !noalias !4
  %c3996 = trunc i64 %r3995 to i32
  %t3997 = add i32 %c3996, 1
  %fn3998 = icmp slt i32 %t3997, 0
  %fz3999 = icmp eq i32 %t3997, 0
  %fc4000 = icmp ult i32 %t3997, %c3996
  %fx14001 = xor i32 %c3996, %t3997
  %fx24002 = xor i32 1, %t3997
  %fva4003 = and i32 %fx14001, %fx24002
  %fv4004 = icmp slt i32 %fva4003, 0
  %nz4005 = zext i1 %fn3998 to i64
  %zz4006 = zext i1 %fz3999 to i64
  %cz4007 = zext i1 %fc4000 to i64
  %vz4008 = zext i1 %fv4004 to i64
  %ns4009 = shl i64 %nz4005, 31
  %zs4010 = shl i64 %zz4006, 30
  %cs4011 = shl i64 %cz4007, 29
  %vs4012 = shl i64 %vz4008, 28
  %nzor4013 = or i64 %ns4009, %zs4010
  %cvor4014 = or i64 %cs4011, %vs4012
  %nzcv4015 = or i64 %nzor4013, %cvor4014
  %wp4016 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4015, ptr %wp4016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006392c word 0x54000600
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %fsh4019 = lshr i64 %r4017, 30
  %cond4018 = trunc i64 %fsh4019 to i1
  br i1 %cond4018, label %L_8000639ec, label %L_800063930_ft
L_8000639d4:
  ; @pc 0x8000639d4 word 0x93407c4a
  %r4261.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4261 = load i64, ptr %r4261.p, align 8, !alias.scope !3, !noalias !4
  %t4262 = lshr i64 %r4261, 31
  %t4263 = and i64 %t4262, 1
  %t4264 = sub i64 0, %t4263
  %t4265 = and i64 %t4264, -4294967296
  %t4266 = and i64 %r4261, 4294967295
  %t4267 = or i64 %t4265, %t4266
  %wp4268 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4267, ptr %wp4268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639d8 word 0x5280030b
  %c4269 = zext i32 24 to i64
  %wp4270 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4269, ptr %wp4270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639dc word 0xf9402529
  %r4271.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4271 = load i64, ptr %r4271.p, align 8, !alias.scope !3, !noalias !4
  %t4272 = add i64 %r4271, 72
  %gmp4273 = inttoptr i64 %t4272 to ptr
  %gml4274 = load i64, ptr %gmp4273, align 1, !alias.scope !4, !noalias !3
  %wp4275 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4274, ptr %wp4275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639e0 word 0x9b2b2148
  %r4276.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4276 = load i64, ptr %r4276.p, align 8, !alias.scope !3, !noalias !4
  %c4277 = trunc i64 %r4276 to i32
  %c4278 = sext i32 %c4277 to i64
  %r4279.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4279 = load i64, ptr %r4279.p, align 8, !alias.scope !3, !noalias !4
  %c4280 = trunc i64 %r4279 to i32
  %c4281 = sext i32 %c4280 to i64
  %t4282 = mul i64 %c4278, %c4281
  %r4283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4283 = load i64, ptr %r4283.p, align 8, !alias.scope !3, !noalias !4
  %t4284 = add i64 %r4283, %t4282
  %wp4285 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4284, ptr %wp4285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639e4 word 0x79402108
  %r4286.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4286 = load i64, ptr %r4286.p, align 8, !alias.scope !3, !noalias !4
  %t4287 = add i64 %r4286, 16
  %gmp4288 = inttoptr i64 %t4287 to ptr
  %gml4289 = load i16, ptr %gmp4288, align 1, !alias.scope !4, !noalias !3
  %c4290 = zext i16 %gml4289 to i64
  %wp4291 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4290, ptr %wp4291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639e8 word 0xbc286920
  %r4292.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4292 = load i64, ptr %r4292.p, align 8, !alias.scope !3, !noalias !4
  %r4293.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4293 = load i64, ptr %r4293.p, align 8, !alias.scope !3, !noalias !4
  %t4294 = add i64 %r4292, %r4293
  %r4295.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4295 = load i128, ptr %r4295.p, align 16, !alias.scope !3, !noalias !4
  %c4296 = trunc i128 %r4295 to i32
  %gmp4297 = inttoptr i64 %t4294 to ptr
  store i32 %c4296, ptr %gmp4297, align 1, !alias.scope !4, !noalias !3
  br label %L_8000639ec
L_8000639ec:
  ; @pc 0x8000639ec word 0xaa1403e0
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %t4299 = or i64 0, %r4298
  %wp4300 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4299, ptr %wp4300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639f0 word 0x94ad01a0
  %wp4301 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360146420, ptr %wp4301, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8000639f4 word 0x17fffd94
  br label %L_800063044
L_8000639f8:
  ; @pc 0x8000639f8 word 0xf94013e8
  %r4302.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4302 = load i64, ptr %r4302.p, align 8, !alias.scope !3, !noalias !4
  %t4303 = add i64 %r4302, 32
  %gmp4304 = inttoptr i64 %t4303 to ptr
  %gml4305 = load i64, ptr %gmp4304, align 1, !alias.scope !4, !noalias !3
  %wp4306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4305, ptr %wp4306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639fc word 0xf9456900
  %r4307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4307 = load i64, ptr %r4307.p, align 8, !alias.scope !3, !noalias !4
  %t4308 = add i64 %r4307, 2768
  %gmp4309 = inttoptr i64 %t4308 to ptr
  %gml4310 = load i64, ptr %gmp4309, align 1, !alias.scope !4, !noalias !3
  %wp4311 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4310, ptr %wp4311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a00 word 0x94023782
  %wp4312 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360146436, ptr %wp4312, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f1808(ptr %c)
  br label %L_800063a04
L_800063a04:
  ; @pc 0x800063a04 word 0x52800020
  %c4313 = zext i32 1 to i64
  %wp4314 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c4313, ptr %wp4314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a08 word 0x17fffd10
  br label %L_800062e48
L_800063a0c:
  ; @pc 0x800063a0c word 0x9101e3e8
  %r4315.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4315 = load i64, ptr %r4315.p, align 8, !alias.scope !3, !noalias !4
  %t4316 = add i64 %r4315, 120
  %wp4317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4316, ptr %wp4317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a10 word 0x91004109
  %r4318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4318 = load i64, ptr %r4318.p, align 8, !alias.scope !3, !noalias !4
  %t4319 = add i64 %r4318, 16
  %wp4320 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4319, ptr %wp4320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a14 word 0xf94013e8
  %r4321.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4321 = load i64, ptr %r4321.p, align 8, !alias.scope !3, !noalias !4
  %t4322 = add i64 %r4321, 32
  %gmp4323 = inttoptr i64 %t4322 to ptr
  %gml4324 = load i64, ptr %gmp4323, align 1, !alias.scope !4, !noalias !3
  %wp4325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4324, ptr %wp4325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a18 word 0xf9452d0a
  %r4326.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4326 = load i64, ptr %r4326.p, align 8, !alias.scope !3, !noalias !4
  %t4327 = add i64 %r4326, 2648
  %gmp4328 = inttoptr i64 %t4327 to ptr
  %gml4329 = load i64, ptr %gmp4328, align 1, !alias.scope !4, !noalias !3
  %wp4330 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4329, ptr %wp4330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a1c word 0xf945010b
  %r4331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4331 = load i64, ptr %r4331.p, align 8, !alias.scope !3, !noalias !4
  %t4332 = add i64 %r4331, 2560
  %gmp4333 = inttoptr i64 %t4332 to ptr
  %gml4334 = load i64, ptr %gmp4333, align 1, !alias.scope !4, !noalias !3
  %wp4335 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4334, ptr %wp4335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a20 word 0xb976714c
  %r4336.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4336 = load i64, ptr %r4336.p, align 8, !alias.scope !3, !noalias !4
  %t4337 = add i64 %r4336, 13936
  %gmp4338 = inttoptr i64 %t4337 to ptr
  %gml4339 = load i32, ptr %gmp4338, align 1, !alias.scope !4, !noalias !3
  %c4340 = zext i32 %gml4339 to i64
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4340, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a24 word 0xb976754d
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %t4343 = add i64 %r4342, 13940
  %gmp4344 = inttoptr i64 %t4343 to ptr
  %gml4345 = load i32, ptr %gmp4344, align 1, !alias.scope !4, !noalias !3
  %c4346 = zext i32 %gml4345 to i64
  %wp4347 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4346, ptr %wp4347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a28 word 0xf95b354a
  %r4348.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4348 = load i64, ptr %r4348.p, align 8, !alias.scope !3, !noalias !4
  %t4349 = add i64 %r4348, 13928
  %gmp4350 = inttoptr i64 %t4349 to ptr
  %gml4351 = load i64, ptr %gmp4350, align 1, !alias.scope !4, !noalias !3
  %wp4352 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4351, ptr %wp4352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a2c word 0xf809416a
  %r4353.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4353 = load i64, ptr %r4353.p, align 8, !alias.scope !3, !noalias !4
  %t4354 = add i64 %r4353, 148
  %r4355.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4355 = load i64, ptr %r4355.p, align 8, !alias.scope !3, !noalias !4
  %gmp4356 = inttoptr i64 %t4354 to ptr
  store i64 %r4355, ptr %gmp4356, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063a30 word 0x2913b56c
  %r4357.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4357 = load i64, ptr %r4357.p, align 8, !alias.scope !3, !noalias !4
  %t4358 = add i64 %r4357, 156
  %t4359 = add i64 %t4358, 4
  %r4360.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4360 = load i64, ptr %r4360.p, align 8, !alias.scope !3, !noalias !4
  %c4361 = trunc i64 %r4360 to i32
  %gmp4362 = inttoptr i64 %t4358 to ptr
  store i32 %c4361, ptr %gmp4362, align 1, !alias.scope !4, !noalias !3
  %r4363.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4363 = load i64, ptr %r4363.p, align 8, !alias.scope !3, !noalias !4
  %c4364 = trunc i64 %r4363 to i32
  %gmp4365 = inttoptr i64 %t4359 to ptr
  store i32 %c4364, ptr %gmp4365, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063a34 word 0xd2c0100a
  %wp4366 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 549755813888, ptr %wp4366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a38 word 0xf9450117
  %r4367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4367 = load i64, ptr %r4367.p, align 8, !alias.scope !3, !noalias !4
  %t4368 = add i64 %r4367, 2560
  %gmp4369 = inttoptr i64 %t4368 to ptr
  %gml4370 = load i64, ptr %gmp4369, align 1, !alias.scope !4, !noalias !3
  %wp4371 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4370, ptr %wp4371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a3c word 0xf9400fe8
  %r4372.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4372 = load i64, ptr %r4372.p, align 8, !alias.scope !3, !noalias !4
  %t4373 = add i64 %r4372, 24
  %gmp4374 = inttoptr i64 %t4373 to ptr
  %gml4375 = load i64, ptr %gmp4374, align 1, !alias.scope !4, !noalias !3
  %wp4376 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4375, ptr %wp4376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a40 word 0xbd7aa901
  %r4377.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4377 = load i64, ptr %r4377.p, align 8, !alias.scope !3, !noalias !4
  %t4378 = add i64 %r4377, 15016
  %gmp4379 = inttoptr i64 %t4378 to ptr
  %gml4380 = load i32, ptr %gmp4379, align 1, !alias.scope !4, !noalias !3
  %c4381 = zext i32 %gml4380 to i128
  %wp4382 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c4381, ptr %wp4382, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063a44 word 0x9001c788
  %wp4383 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419847168, ptr %wp4383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a48 word 0xf9419d08
  %r4384.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4384 = load i64, ptr %r4384.p, align 8, !alias.scope !3, !noalias !4
  %t4385 = add i64 %r4384, 824
  %gmp4386 = inttoptr i64 %t4385 to ptr
  %gml4387 = load i64, ptr %gmp4386, align 1, !alias.scope !4, !noalias !3
  %wp4388 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4387, ptr %wp4388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a4c word 0xf9400108
  %r4389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4389 = load i64, ptr %r4389.p, align 8, !alias.scope !3, !noalias !4
  %gmp4390 = inttoptr i64 %r4389 to ptr
  %gml4391 = load i64, ptr %gmp4390, align 1, !alias.scope !4, !noalias !3
  %wp4392 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4391, ptr %wp4392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a50 word 0xb9400d08
  %r4393.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4393 = load i64, ptr %r4393.p, align 8, !alias.scope !3, !noalias !4
  %t4394 = add i64 %r4393, 12
  %gmp4395 = inttoptr i64 %t4394 to ptr
  %gml4396 = load i32, ptr %gmp4395, align 1, !alias.scope !4, !noalias !3
  %c4397 = zext i32 %gml4396 to i64
  %wp4398 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4397, ptr %wp4398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a54 word 0xb90022ff
  %r4399.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4399 = load i64, ptr %r4399.p, align 8, !alias.scope !3, !noalias !4
  %t4400 = add i64 %r4399, 32
  %gmp4401 = inttoptr i64 %t4400 to ptr
  store i32 0, ptr %gmp4401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063a58 word 0xa907a7ea
  %r4402.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4402 = load i64, ptr %r4402.p, align 8, !alias.scope !3, !noalias !4
  %t4403 = add i64 %r4402, 120
  %t4404 = add i64 %t4403, 8
  %r4405.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4405 = load i64, ptr %r4405.p, align 8, !alias.scope !3, !noalias !4
  %gmp4406 = inttoptr i64 %t4403 to ptr
  store i64 %r4405, ptr %gmp4406, align 1, !alias.scope !4, !noalias !3
  %r4407.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4407 = load i64, ptr %r4407.p, align 8, !alias.scope !3, !noalias !4
  %gmp4408 = inttoptr i64 %t4404 to ptr
  store i64 %r4407, ptr %gmp4408, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063a5c word 0xb9401eea
  %r4409.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4409 = load i64, ptr %r4409.p, align 8, !alias.scope !3, !noalias !4
  %t4410 = add i64 %r4409, 28
  %gmp4411 = inttoptr i64 %t4410 to ptr
  %gml4412 = load i32, ptr %gmp4411, align 1, !alias.scope !4, !noalias !3
  %c4413 = zext i32 %gml4412 to i64
  %wp4414 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4413, ptr %wp4414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a60 word 0xb9401ae9
  %r4415.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4415 = load i64, ptr %r4415.p, align 8, !alias.scope !3, !noalias !4
  %t4416 = add i64 %r4415, 24
  %gmp4417 = inttoptr i64 %t4416 to ptr
  %gml4418 = load i32, ptr %gmp4417, align 1, !alias.scope !4, !noalias !3
  %c4419 = zext i32 %gml4418 to i64
  %wp4420 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4419, ptr %wp4420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a64 word 0x4b0a0129
  %r4421.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4421 = load i64, ptr %r4421.p, align 8, !alias.scope !3, !noalias !4
  %c4422 = trunc i64 %r4421 to i32
  %r4423.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4423 = load i64, ptr %r4423.p, align 8, !alias.scope !3, !noalias !4
  %c4424 = trunc i64 %r4423 to i32
  %t4425 = sub i32 %c4422, %c4424
  %c4426 = zext i32 %t4425 to i64
  %wp4427 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4426, ptr %wp4427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a68 word 0x7100053f
  %r4428.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4428 = load i64, ptr %r4428.p, align 8, !alias.scope !3, !noalias !4
  %c4429 = trunc i64 %r4428 to i32
  %t4430 = sub i32 %c4429, 1
  %fn4431 = icmp slt i32 %t4430, 0
  %fz4432 = icmp eq i32 %t4430, 0
  %fc4433 = icmp uge i32 %c4429, 1
  %fx14434 = xor i32 %c4429, 1
  %fx24435 = xor i32 %c4429, %t4430
  %fva4436 = and i32 %fx14434, %fx24435
  %fv4437 = icmp slt i32 %fva4436, 0
  %nz4438 = zext i1 %fn4431 to i64
  %zz4439 = zext i1 %fz4432 to i64
  %cz4440 = zext i1 %fc4433 to i64
  %vz4441 = zext i1 %fv4437 to i64
  %ns4442 = shl i64 %nz4438, 31
  %zs4443 = shl i64 %zz4439, 30
  %cs4444 = shl i64 %cz4440, 29
  %vs4445 = shl i64 %vz4441, 28
  %nzor4446 = or i64 %ns4442, %zs4443
  %cvor4447 = or i64 %cs4444, %vs4445
  %nzcv4448 = or i64 %nzor4446, %cvor4447
  %wp4449 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4448, ptr %wp4449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a6c word 0x540039ea
  %r4450.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4450 = load i64, ptr %r4450.p, align 8, !alias.scope !3, !noalias !4
  %fsh4452 = lshr i64 %r4450, 31
  %ftr4453 = trunc i64 %fsh4452 to i1
  %fsh4454 = lshr i64 %r4450, 28
  %ftr4455 = trunc i64 %fsh4454 to i1
  %cond4451 = icmp eq i1 %ftr4453, %ftr4455
  br i1 %cond4451, label %L_8000641a8, label %L_800063a70
L_800063a70:
  ; @pc 0x800063a70 word 0xb94022e8
  %r4456.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4456 = load i64, ptr %r4456.p, align 8, !alias.scope !3, !noalias !4
  %t4457 = add i64 %r4456, 32
  %gmp4458 = inttoptr i64 %t4457 to ptr
  %gml4459 = load i32, ptr %gmp4458, align 1, !alias.scope !4, !noalias !3
  %c4460 = zext i32 %gml4459 to i64
  %wp4461 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4460, ptr %wp4461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a74 word 0x7100051f
  %r4462.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4462 = load i64, ptr %r4462.p, align 8, !alias.scope !3, !noalias !4
  %c4463 = trunc i64 %r4462 to i32
  %t4464 = sub i32 %c4463, 1
  %fn4465 = icmp slt i32 %t4464, 0
  %fz4466 = icmp eq i32 %t4464, 0
  %fc4467 = icmp uge i32 %c4463, 1
  %fx14468 = xor i32 %c4463, 1
  %fx24469 = xor i32 %c4463, %t4464
  %fva4470 = and i32 %fx14468, %fx24469
  %fv4471 = icmp slt i32 %fva4470, 0
  %nz4472 = zext i1 %fn4465 to i64
  %zz4473 = zext i1 %fz4466 to i64
  %cz4474 = zext i1 %fc4467 to i64
  %vz4475 = zext i1 %fv4471 to i64
  %ns4476 = shl i64 %nz4472, 31
  %zs4477 = shl i64 %zz4473, 30
  %cs4478 = shl i64 %cz4474, 29
  %vs4479 = shl i64 %vz4475, 28
  %nzor4480 = or i64 %ns4476, %zs4477
  %cvor4481 = or i64 %cs4478, %vs4479
  %nzcv4482 = or i64 %nzor4480, %cvor4481
  %wp4483 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4482, ptr %wp4483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a78 word 0xf94016f5
  %r4484.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4484 = load i64, ptr %r4484.p, align 8, !alias.scope !3, !noalias !4
  %t4485 = add i64 %r4484, 40
  %gmp4486 = inttoptr i64 %t4485 to ptr
  %gml4487 = load i64, ptr %gmp4486, align 1, !alias.scope !4, !noalias !3
  %wp4488 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml4487, ptr %wp4488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a7c word 0x540044cc
  %r4489.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4489 = load i64, ptr %r4489.p, align 8, !alias.scope !3, !noalias !4
  %fsh4491 = lshr i64 %r4489, 30
  %ftr4492 = trunc i64 %fsh4491 to i1
  %fsh4493 = lshr i64 %r4489, 31
  %ftr4494 = trunc i64 %fsh4493 to i1
  %fsh4495 = lshr i64 %r4489, 28
  %ftr4496 = trunc i64 %fsh4495 to i1
  %fnz4497 = xor i1 %ftr4492, true
  %feq4498 = icmp eq i1 %ftr4494, %ftr4496
  %cond4490 = and i1 %fnz4497, %feq4498
  br i1 %cond4490, label %L_800064314, label %L_800063a80
L_800063a80:
  ; @pc 0x800063a80 word 0x910022f6
  %r4499.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4499 = load i64, ptr %r4499.p, align 8, !alias.scope !3, !noalias !4
  %t4500 = add i64 %r4499, 8
  %wp4501 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4500, ptr %wp4501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a84 word 0x35004f28
  %r4502.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4502 = load i64, ptr %r4502.p, align 8, !alias.scope !3, !noalias !4
  %c4503 = trunc i64 %r4502 to i32
  %cmp4504 = icmp ne i32 %c4503, 0
  br i1 %cmp4504, label %L_800064468, label %L_800063a88
L_800063a88:
  ; @pc 0x800063a88 word 0xb9807be8
  %r4505.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4505 = load i64, ptr %r4505.p, align 8, !alias.scope !3, !noalias !4
  %t4506 = add i64 %r4505, 120
  %gmp4507 = inttoptr i64 %t4506 to ptr
  %gml4508 = load i32, ptr %gmp4507, align 1, !alias.scope !4, !noalias !3
  %c4509 = sext i32 %gml4508 to i64
  %wp4510 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4509, ptr %wp4510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a8c word 0x35004fe8
  %r4511.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4511 = load i64, ptr %r4511.p, align 8, !alias.scope !3, !noalias !4
  %c4512 = trunc i64 %r4511 to i32
  %cmp4513 = icmp ne i32 %c4512, 0
  br i1 %cmp4513, label %L_800064488, label %L_800063a90
L_800063a90:
  ; @pc 0x800063a90 word 0xb900c2ff
  %r4514.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4514 = load i64, ptr %r4514.p, align 8, !alias.scope !3, !noalias !4
  %t4515 = add i64 %r4514, 192
  %gmp4516 = inttoptr i64 %t4515 to ptr
  store i32 0, ptr %gmp4516, align 1, !alias.scope !4, !noalias !3
  br label %L_800063a94
L_800063a94:
  ; @pc 0x800063a94 word 0xb940bee8
  %r4517.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4517 = load i64, ptr %r4517.p, align 8, !alias.scope !3, !noalias !4
  %t4518 = add i64 %r4517, 188
  %gmp4519 = inttoptr i64 %t4518 to ptr
  %gml4520 = load i32, ptr %gmp4519, align 1, !alias.scope !4, !noalias !3
  %c4521 = zext i32 %gml4520 to i64
  %wp4522 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4521, ptr %wp4522, align 8, !alias.scope !3, !noalias !4
  br label %L_800063a98
L_800063a98:
  ; @pc 0x800063a98 word 0xb940bae9
  %r4523.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4523 = load i64, ptr %r4523.p, align 8, !alias.scope !3, !noalias !4
  %t4524 = add i64 %r4523, 184
  %gmp4525 = inttoptr i64 %t4524 to ptr
  %gml4526 = load i32, ptr %gmp4525, align 1, !alias.scope !4, !noalias !3
  %c4527 = zext i32 %gml4526 to i64
  %wp4528 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4527, ptr %wp4528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063a9c word 0x4b080129
  %r4529.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4529 = load i64, ptr %r4529.p, align 8, !alias.scope !3, !noalias !4
  %c4530 = trunc i64 %r4529 to i32
  %r4531.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4531 = load i64, ptr %r4531.p, align 8, !alias.scope !3, !noalias !4
  %c4532 = trunc i64 %r4531 to i32
  %t4533 = sub i32 %c4530, %c4532
  %c4534 = zext i32 %t4533 to i64
  %wp4535 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4534, ptr %wp4535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063aa0 word 0x7100053f
  %r4536.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4536 = load i64, ptr %r4536.p, align 8, !alias.scope !3, !noalias !4
  %c4537 = trunc i64 %r4536 to i32
  %t4538 = sub i32 %c4537, 1
  %fn4539 = icmp slt i32 %t4538, 0
  %fz4540 = icmp eq i32 %t4538, 0
  %fc4541 = icmp uge i32 %c4537, 1
  %fx14542 = xor i32 %c4537, 1
  %fx24543 = xor i32 %c4537, %t4538
  %fva4544 = and i32 %fx14542, %fx24543
  %fv4545 = icmp slt i32 %fva4544, 0
  %nz4546 = zext i1 %fn4539 to i64
  %zz4547 = zext i1 %fz4540 to i64
  %cz4548 = zext i1 %fc4541 to i64
  %vz4549 = zext i1 %fv4545 to i64
  %ns4550 = shl i64 %nz4546, 31
  %zs4551 = shl i64 %zz4547, 30
  %cs4552 = shl i64 %cz4548, 29
  %vs4553 = shl i64 %vz4549, 28
  %nzor4554 = or i64 %ns4550, %zs4551
  %cvor4555 = or i64 %cs4552, %vs4553
  %nzcv4556 = or i64 %nzor4554, %cvor4555
  %wp4557 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4556, ptr %wp4557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063aa4 word 0x5400502a
  %r4558.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4558 = load i64, ptr %r4558.p, align 8, !alias.scope !3, !noalias !4
  %fsh4560 = lshr i64 %r4558, 31
  %ftr4561 = trunc i64 %fsh4560 to i1
  %fsh4562 = lshr i64 %r4558, 28
  %ftr4563 = trunc i64 %fsh4562 to i1
  %cond4559 = icmp eq i1 %ftr4561, %ftr4563
  br i1 %cond4559, label %L_8000644a8, label %L_800063aa8
L_800063aa8:
  ; @pc 0x800063aa8 word 0xb980c2e8
  %r4564.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4564 = load i64, ptr %r4564.p, align 8, !alias.scope !3, !noalias !4
  %t4565 = add i64 %r4564, 192
  %gmp4566 = inttoptr i64 %t4565 to ptr
  %gml4567 = load i32, ptr %gmp4566, align 1, !alias.scope !4, !noalias !3
  %c4568 = sext i32 %gml4567 to i64
  %wp4569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4568, ptr %wp4569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063aac word 0x350052e8
  %r4570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4570 = load i64, ptr %r4570.p, align 8, !alias.scope !3, !noalias !4
  %c4571 = trunc i64 %r4570 to i32
  %cmp4572 = icmp ne i32 %c4571, 0
  br i1 %cmp4572, label %L_800064508, label %L_800063ab0
L_800063ab0:
  ; @pc 0x800063ab0 word 0xb940e6e9
  %r4573.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4573 = load i64, ptr %r4573.p, align 8, !alias.scope !3, !noalias !4
  %t4574 = add i64 %r4573, 228
  %gmp4575 = inttoptr i64 %t4574 to ptr
  %gml4576 = load i32, ptr %gmp4575, align 1, !alias.scope !4, !noalias !3
  %c4577 = zext i32 %gml4576 to i64
  %wp4578 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4577, ptr %wp4578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ab4 word 0xaa1703e8
  %r4579.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4579 = load i64, ptr %r4579.p, align 8, !alias.scope !3, !noalias !4
  %t4580 = or i64 0, %r4579
  %wp4581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4580, ptr %wp4581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ab8 word 0xb84e0d0a
  %r4582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4582 = load i64, ptr %r4582.p, align 8, !alias.scope !3, !noalias !4
  %t4583 = add i64 %r4582, 224
  %gmp4584 = inttoptr i64 %t4583 to ptr
  %gml4585 = load i32, ptr %gmp4584, align 1, !alias.scope !4, !noalias !3
  %c4586 = zext i32 %gml4585 to i64
  %wp4587 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4583, ptr %wp4587, align 8, !alias.scope !3, !noalias !4
  %wp4588 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4586, ptr %wp4588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063abc word 0xb900091f
  %r4589.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4589 = load i64, ptr %r4589.p, align 8, !alias.scope !3, !noalias !4
  %t4590 = add i64 %r4589, 8
  %gmp4591 = inttoptr i64 %t4590 to ptr
  store i32 0, ptr %gmp4591, align 1, !alias.scope !4, !noalias !3
  br label %L_800063ac0
L_800063ac0:
  ; @pc 0x800063ac0 word 0x4b09014a
  %r4592.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4592 = load i64, ptr %r4592.p, align 8, !alias.scope !3, !noalias !4
  %c4593 = trunc i64 %r4592 to i32
  %r4594.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4594 = load i64, ptr %r4594.p, align 8, !alias.scope !3, !noalias !4
  %c4595 = trunc i64 %r4594 to i32
  %t4596 = sub i32 %c4593, %c4595
  %c4597 = zext i32 %t4596 to i64
  %wp4598 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4597, ptr %wp4598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ac4 word 0x7100055f
  %r4599.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4599 = load i64, ptr %r4599.p, align 8, !alias.scope !3, !noalias !4
  %c4600 = trunc i64 %r4599 to i32
  %t4601 = sub i32 %c4600, 1
  %fn4602 = icmp slt i32 %t4601, 0
  %fz4603 = icmp eq i32 %t4601, 0
  %fc4604 = icmp uge i32 %c4600, 1
  %fx14605 = xor i32 %c4600, 1
  %fx24606 = xor i32 %c4600, %t4601
  %fva4607 = and i32 %fx14605, %fx24606
  %fv4608 = icmp slt i32 %fva4607, 0
  %nz4609 = zext i1 %fn4602 to i64
  %zz4610 = zext i1 %fz4603 to i64
  %cz4611 = zext i1 %fc4604 to i64
  %vz4612 = zext i1 %fv4608 to i64
  %ns4613 = shl i64 %nz4609, 31
  %zs4614 = shl i64 %zz4610, 30
  %cs4615 = shl i64 %cz4611, 29
  %vs4616 = shl i64 %vz4612, 28
  %nzor4617 = or i64 %ns4613, %zs4614
  %cvor4618 = or i64 %cs4615, %vs4616
  %nzcv4619 = or i64 %nzor4617, %cvor4618
  %wp4620 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4619, ptr %wp4620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ac8 word 0x54000d0b
  %r4621.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4621 = load i64, ptr %r4621.p, align 8, !alias.scope !3, !noalias !4
  %fsh4623 = lshr i64 %r4621, 31
  %ftr4624 = trunc i64 %fsh4623 to i1
  %fsh4625 = lshr i64 %r4621, 28
  %ftr4626 = trunc i64 %fsh4625 to i1
  %cond4622 = icmp ne i1 %ftr4624, %ftr4626
  br i1 %cond4622, label %L_800063c68, label %L_800063acc_ft
L_800063b28:
  ; @pc 0x800063b28 word 0xb940e6e9
  %r4785.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4785 = load i64, ptr %r4785.p, align 8, !alias.scope !3, !noalias !4
  %t4786 = add i64 %r4785, 228
  %gmp4787 = inttoptr i64 %t4786 to ptr
  %gml4788 = load i32, ptr %gmp4787, align 1, !alias.scope !4, !noalias !3
  %c4789 = zext i32 %gml4788 to i64
  %wp4790 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4789, ptr %wp4790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b2c word 0xb940e2ea
  %r4791.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4791 = load i64, ptr %r4791.p, align 8, !alias.scope !3, !noalias !4
  %t4792 = add i64 %r4791, 224
  %gmp4793 = inttoptr i64 %t4792 to ptr
  %gml4794 = load i32, ptr %gmp4793, align 1, !alias.scope !4, !noalias !3
  %c4795 = zext i32 %gml4794 to i64
  %wp4796 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4795, ptr %wp4796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b30 word 0x17ffffe4
  br label %L_800063ac0
L_800063b34:
  ; @pc 0x800063b34 word 0xf94013e8
  %r4797.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4797 = load i64, ptr %r4797.p, align 8, !alias.scope !3, !noalias !4
  %t4798 = add i64 %r4797, 32
  %gmp4799 = inttoptr i64 %t4798 to ptr
  %gml4800 = load i64, ptr %gmp4799, align 1, !alias.scope !4, !noalias !3
  %wp4801 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4800, ptr %wp4801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b38 word 0xf944e900
  %r4802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4802 = load i64, ptr %r4802.p, align 8, !alias.scope !3, !noalias !4
  %t4803 = add i64 %r4802, 2512
  %gmp4804 = inttoptr i64 %t4803 to ptr
  %gml4805 = load i64, ptr %gmp4804, align 1, !alias.scope !4, !noalias !3
  %wp4806 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4805, ptr %wp4806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b3c word 0xb5005080
  %r4807.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4807 = load i64, ptr %r4807.p, align 8, !alias.scope !3, !noalias !4
  %cmp4808 = icmp ne i64 %r4807, 0
  br i1 %cmp4808, label %L_80006454c, label %L_800063b40
L_800063b40:
  ; @pc 0x800063b40 word 0x52800020
  %c4809 = zext i32 1 to i64
  %wp4810 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c4809, ptr %wp4810, align 8, !alias.scope !3, !noalias !4
  br label %L_800063b44
L_800063b44:
  ; @pc 0x800063b44 word 0xa942f3f9
  %r4811.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4811 = load i64, ptr %r4811.p, align 8, !alias.scope !3, !noalias !4
  %t4812 = add i64 %r4811, 40
  %t4813 = add i64 %t4812, 8
  %gmp4814 = inttoptr i64 %t4812 to ptr
  %gml4815 = load i64, ptr %gmp4814, align 1, !alias.scope !4, !noalias !3
  %gmp4816 = inttoptr i64 %t4813 to ptr
  %gml4817 = load i64, ptr %gmp4816, align 1, !alias.scope !4, !noalias !3
  %wp4818 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml4815, ptr %wp4818, align 8, !alias.scope !3, !noalias !4
  %wp4819 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml4817, ptr %wp4819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b48 word 0xa943dbf8
  %r4820.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4820 = load i64, ptr %r4820.p, align 8, !alias.scope !3, !noalias !4
  %t4821 = add i64 %r4820, 56
  %t4822 = add i64 %t4821, 8
  %gmp4823 = inttoptr i64 %t4821 to ptr
  %gml4824 = load i64, ptr %gmp4823, align 1, !alias.scope !4, !noalias !3
  %gmp4825 = inttoptr i64 %t4822 to ptr
  %gml4826 = load i64, ptr %gmp4825, align 1, !alias.scope !4, !noalias !3
  %wp4827 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml4824, ptr %wp4827, align 8, !alias.scope !3, !noalias !4
  %wp4828 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4826, ptr %wp4828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b4c word 0xa944dff3
  %r4829.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4829 = load i64, ptr %r4829.p, align 8, !alias.scope !3, !noalias !4
  %t4830 = add i64 %r4829, 72
  %t4831 = add i64 %t4830, 8
  %gmp4832 = inttoptr i64 %t4830 to ptr
  %gml4833 = load i64, ptr %gmp4832, align 1, !alias.scope !4, !noalias !3
  %gmp4834 = inttoptr i64 %t4831 to ptr
  %gml4835 = load i64, ptr %gmp4834, align 1, !alias.scope !4, !noalias !3
  %wp4836 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4833, ptr %wp4836, align 8, !alias.scope !3, !noalias !4
  %wp4837 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4835, ptr %wp4837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b50 word 0x17fffcbe
  br label %L_800062e48
L_800063b54:
  ; @pc 0x800063b54 word 0xf94013e8
  %r4838.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4838 = load i64, ptr %r4838.p, align 8, !alias.scope !3, !noalias !4
  %t4839 = add i64 %r4838, 32
  %gmp4840 = inttoptr i64 %t4839 to ptr
  %gml4841 = load i64, ptr %gmp4840, align 1, !alias.scope !4, !noalias !3
  %wp4842 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4841, ptr %wp4842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b58 word 0xf9446d08
  %r4843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4843 = load i64, ptr %r4843.p, align 8, !alias.scope !3, !noalias !4
  %t4844 = add i64 %r4843, 2264
  %gmp4845 = inttoptr i64 %t4844 to ptr
  %gml4846 = load i64, ptr %gmp4845, align 1, !alias.scope !4, !noalias !3
  %wp4847 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4846, ptr %wp4847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b5c word 0xf90013e8
  %r4848.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4848 = load i64, ptr %r4848.p, align 8, !alias.scope !3, !noalias !4
  %t4849 = add i64 %r4848, 32
  %r4850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4850 = load i64, ptr %r4850.p, align 8, !alias.scope !3, !noalias !4
  %gmp4851 = inttoptr i64 %t4849 to ptr
  store i64 %r4850, ptr %gmp4851, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063b60 word 0xb4ffff28
  %r4852.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4852 = load i64, ptr %r4852.p, align 8, !alias.scope !3, !noalias !4
  %cmp4853 = icmp eq i64 %r4852, 0
  br i1 %cmp4853, label %L_800063b44, label %L_800063b64_ft
L_800063b78:
  ; @pc 0x800063b78 word 0xf9400fe8
  %r4875.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4875 = load i64, ptr %r4875.p, align 8, !alias.scope !3, !noalias !4
  %t4876 = add i64 %r4875, 24
  %gmp4877 = inttoptr i64 %t4876 to ptr
  %gml4878 = load i64, ptr %gmp4877, align 1, !alias.scope !4, !noalias !3
  %wp4879 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4878, ptr %wp4879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b7c word 0xb001c749
  %wp4880 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp4880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b80 word 0xf94f6508
  %r4881.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4881 = load i64, ptr %r4881.p, align 8, !alias.scope !3, !noalias !4
  %t4882 = add i64 %r4881, 7880
  %gmp4883 = inttoptr i64 %t4882 to ptr
  %gml4884 = load i64, ptr %gmp4883, align 1, !alias.scope !4, !noalias !3
  %wp4885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4884, ptr %wp4885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b84 word 0xf9400908
  %r4886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4886 = load i64, ptr %r4886.p, align 8, !alias.scope !3, !noalias !4
  %t4887 = add i64 %r4886, 16
  %gmp4888 = inttoptr i64 %t4887 to ptr
  %gml4889 = load i64, ptr %gmp4888, align 1, !alias.scope !4, !noalias !3
  %wp4890 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4889, ptr %wp4890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b88 word 0xb97cd913
  %r4891.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4891 = load i64, ptr %r4891.p, align 8, !alias.scope !3, !noalias !4
  %t4892 = add i64 %r4891, 15576
  %gmp4893 = inttoptr i64 %t4892 to ptr
  %gml4894 = load i32, ptr %gmp4893, align 1, !alias.scope !4, !noalias !3
  %c4895 = zext i32 %gml4894 to i64
  %wp4896 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c4895, ptr %wp4896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b8c word 0xb97cdd14
  %r4897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4897 = load i64, ptr %r4897.p, align 8, !alias.scope !3, !noalias !4
  %t4898 = add i64 %r4897, 15580
  %gmp4899 = inttoptr i64 %t4898 to ptr
  %gml4900 = load i32, ptr %gmp4899, align 1, !alias.scope !4, !noalias !3
  %c4901 = zext i32 %gml4900 to i64
  %wp4902 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4901, ptr %wp4902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b90 word 0xf94013e8
  %r4903.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4903 = load i64, ptr %r4903.p, align 8, !alias.scope !3, !noalias !4
  %t4904 = add i64 %r4903, 32
  %gmp4905 = inttoptr i64 %t4904 to ptr
  %gml4906 = load i64, ptr %gmp4905, align 1, !alias.scope !4, !noalias !3
  %wp4907 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4906, ptr %wp4907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b94 word 0xf9400108
  %r4908.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4908 = load i64, ptr %r4908.p, align 8, !alias.scope !3, !noalias !4
  %gmp4909 = inttoptr i64 %r4908 to ptr
  %gml4910 = load i64, ptr %gmp4909, align 1, !alias.scope !4, !noalias !3
  %wp4911 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4910, ptr %wp4911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b98 word 0xf940f508
  %r4912.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4912 = load i64, ptr %r4912.p, align 8, !alias.scope !3, !noalias !4
  %t4913 = add i64 %r4912, 488
  %gmp4914 = inttoptr i64 %t4913 to ptr
  %gml4915 = load i64, ptr %gmp4914, align 1, !alias.scope !4, !noalias !3
  %wp4916 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4915, ptr %wp4916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b9c word 0xf9471129
  %r4917.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4917 = load i64, ptr %r4917.p, align 8, !alias.scope !3, !noalias !4
  %t4918 = add i64 %r4917, 3616
  %gmp4919 = inttoptr i64 %t4918 to ptr
  %gml4920 = load i64, ptr %gmp4919, align 1, !alias.scope !4, !noalias !3
  %wp4921 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4920, ptr %wp4921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ba0 word 0xeb09011f
  %r4922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4922 = load i64, ptr %r4922.p, align 8, !alias.scope !3, !noalias !4
  %r4923.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4923 = load i64, ptr %r4923.p, align 8, !alias.scope !3, !noalias !4
  %t4924 = sub i64 %r4922, %r4923
  %fn4925 = icmp slt i64 %t4924, 0
  %fz4926 = icmp eq i64 %t4924, 0
  %fc4927 = icmp uge i64 %r4922, %r4923
  %fx14928 = xor i64 %r4922, %r4923
  %fx24929 = xor i64 %r4922, %t4924
  %fva4930 = and i64 %fx14928, %fx24929
  %fv4931 = icmp slt i64 %fva4930, 0
  %nz4932 = zext i1 %fn4925 to i64
  %zz4933 = zext i1 %fz4926 to i64
  %cz4934 = zext i1 %fc4927 to i64
  %vz4935 = zext i1 %fv4931 to i64
  %ns4936 = shl i64 %nz4932, 31
  %zs4937 = shl i64 %zz4933, 30
  %cs4938 = shl i64 %cz4934, 29
  %vs4939 = shl i64 %vz4935, 28
  %nzor4940 = or i64 %ns4936, %zs4937
  %cvor4941 = or i64 %cs4938, %vs4939
  %nzcv4942 = or i64 %nzor4940, %cvor4941
  %wp4943 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4942, ptr %wp4943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ba4 word 0x54004d81
  %r4944.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4944 = load i64, ptr %r4944.p, align 8, !alias.scope !3, !noalias !4
  %fsh4946 = lshr i64 %r4944, 30
  %ftr4947 = trunc i64 %fsh4946 to i1
  %cond4945 = xor i1 %ftr4947, true
  br i1 %cond4945, label %L_800064554, label %L_800063ba8_ft
L_800063bb0:
  ; @pc 0x800063bb0 word 0x7100041f
  %r4959.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4959 = load i64, ptr %r4959.p, align 8, !alias.scope !3, !noalias !4
  %c4960 = trunc i64 %r4959 to i32
  %t4961 = sub i32 %c4960, 1
  %fn4962 = icmp slt i32 %t4961, 0
  %fz4963 = icmp eq i32 %t4961, 0
  %fc4964 = icmp uge i32 %c4960, 1
  %fx14965 = xor i32 %c4960, 1
  %fx24966 = xor i32 %c4960, %t4961
  %fva4967 = and i32 %fx14965, %fx24966
  %fv4968 = icmp slt i32 %fva4967, 0
  %nz4969 = zext i1 %fn4962 to i64
  %zz4970 = zext i1 %fz4963 to i64
  %cz4971 = zext i1 %fc4964 to i64
  %vz4972 = zext i1 %fv4968 to i64
  %ns4973 = shl i64 %nz4969, 31
  %zs4974 = shl i64 %zz4970, 30
  %cs4975 = shl i64 %cz4971, 29
  %vs4976 = shl i64 %vz4972, 28
  %nzor4977 = or i64 %ns4973, %zs4974
  %cvor4978 = or i64 %cs4975, %vs4976
  %nzcv4979 = or i64 %nzor4977, %cvor4978
  %wp4980 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4979, ptr %wp4980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bb4 word 0x54000d8b
  %r4981.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4981 = load i64, ptr %r4981.p, align 8, !alias.scope !3, !noalias !4
  %fsh4983 = lshr i64 %r4981, 31
  %ftr4984 = trunc i64 %fsh4983 to i1
  %fsh4985 = lshr i64 %r4981, 28
  %ftr4986 = trunc i64 %fsh4985 to i1
  %cond4982 = icmp ne i1 %ftr4984, %ftr4986
  br i1 %cond4982, label %L_800063d64, label %L_800063bb8_ft
L_800063bc4:
  ; @pc 0x800063bc4 word 0xa941a3e9
  %r5003.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5003 = load i64, ptr %r5003.p, align 8, !alias.scope !3, !noalias !4
  %t5004 = add i64 %r5003, 24
  %t5005 = add i64 %t5004, 8
  %gmp5006 = inttoptr i64 %t5004 to ptr
  %gml5007 = load i64, ptr %gmp5006, align 1, !alias.scope !4, !noalias !3
  %gmp5008 = inttoptr i64 %t5005 to ptr
  %gml5009 = load i64, ptr %gmp5008, align 1, !alias.scope !4, !noalias !3
  %wp5010 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5007, ptr %wp5010, align 8, !alias.scope !3, !noalias !4
  %wp5011 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5009, ptr %wp5011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bc8 word 0xf940b508
  %r5012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5012 = load i64, ptr %r5012.p, align 8, !alias.scope !3, !noalias !4
  %t5013 = add i64 %r5012, 360
  %gmp5014 = inttoptr i64 %t5013 to ptr
  %gml5015 = load i64, ptr %gmp5014, align 1, !alias.scope !4, !noalias !3
  %wp5016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5015, ptr %wp5016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bcc word 0xf8697908
  %r5017.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5017 = load i64, ptr %r5017.p, align 8, !alias.scope !3, !noalias !4
  %r5018.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5018 = load i64, ptr %r5018.p, align 8, !alias.scope !3, !noalias !4
  %t5019 = shl i64 %r5018, 3
  %t5020 = add i64 %r5017, %t5019
  %gmp5021 = inttoptr i64 %t5020 to ptr
  %gml5022 = load i64, ptr %gmp5021, align 1, !alias.scope !4, !noalias !3
  %wp5023 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5022, ptr %wp5023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bd0 word 0xb4000188
  %r5024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5024 = load i64, ptr %r5024.p, align 8, !alias.scope !3, !noalias !4
  %cmp5025 = icmp eq i64 %r5024, 0
  br i1 %cmp5025, label %L_800063c00, label %L_800063bd4_ft
L_800063c00:
  ; @pc 0x800063c00 word 0xf94013e8
  %r5123.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5123 = load i64, ptr %r5123.p, align 8, !alias.scope !3, !noalias !4
  %t5124 = add i64 %r5123, 32
  %gmp5125 = inttoptr i64 %t5124 to ptr
  %gml5126 = load i64, ptr %gmp5125, align 1, !alias.scope !4, !noalias !3
  %wp5127 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5126, ptr %wp5127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c04 word 0xb001c749
  %wp5128 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp5128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c08 word 0xf9400108
  %r5129.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5129 = load i64, ptr %r5129.p, align 8, !alias.scope !3, !noalias !4
  %gmp5130 = inttoptr i64 %r5129 to ptr
  %gml5131 = load i64, ptr %gmp5130, align 1, !alias.scope !4, !noalias !3
  %wp5132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5131, ptr %wp5132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c0c word 0xf940f508
  %r5133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5133 = load i64, ptr %r5133.p, align 8, !alias.scope !3, !noalias !4
  %t5134 = add i64 %r5133, 488
  %gmp5135 = inttoptr i64 %t5134 to ptr
  %gml5136 = load i64, ptr %gmp5135, align 1, !alias.scope !4, !noalias !3
  %wp5137 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5136, ptr %wp5137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c10 word 0xf9471129
  %r5138.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5138 = load i64, ptr %r5138.p, align 8, !alias.scope !3, !noalias !4
  %t5139 = add i64 %r5138, 3616
  %gmp5140 = inttoptr i64 %t5139 to ptr
  %gml5141 = load i64, ptr %gmp5140, align 1, !alias.scope !4, !noalias !3
  %wp5142 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5141, ptr %wp5142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c14 word 0xeb09011f
  %r5143.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5143 = load i64, ptr %r5143.p, align 8, !alias.scope !3, !noalias !4
  %r5144.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5144 = load i64, ptr %r5144.p, align 8, !alias.scope !3, !noalias !4
  %t5145 = sub i64 %r5143, %r5144
  %fn5146 = icmp slt i64 %t5145, 0
  %fz5147 = icmp eq i64 %t5145, 0
  %fc5148 = icmp uge i64 %r5143, %r5144
  %fx15149 = xor i64 %r5143, %r5144
  %fx25150 = xor i64 %r5143, %t5145
  %fva5151 = and i64 %fx15149, %fx25150
  %fv5152 = icmp slt i64 %fva5151, 0
  %nz5153 = zext i1 %fn5146 to i64
  %zz5154 = zext i1 %fz5147 to i64
  %cz5155 = zext i1 %fc5148 to i64
  %vz5156 = zext i1 %fv5152 to i64
  %ns5157 = shl i64 %nz5153, 31
  %zs5158 = shl i64 %zz5154, 30
  %cs5159 = shl i64 %cz5155, 29
  %vs5160 = shl i64 %vz5156, 28
  %nzor5161 = or i64 %ns5157, %zs5158
  %cvor5162 = or i64 %cs5159, %vs5160
  %nzcv5163 = or i64 %nzor5161, %cvor5162
  %wp5164 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5163, ptr %wp5164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c18 word 0x54004a41
  %r5165.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5165 = load i64, ptr %r5165.p, align 8, !alias.scope !3, !noalias !4
  %fsh5167 = lshr i64 %r5165, 30
  %ftr5168 = trunc i64 %fsh5167 to i1
  %cond5166 = xor i1 %ftr5168, true
  br i1 %cond5166, label %L_800064560, label %L_800063c1c_ft
L_800063c24:
  ; @pc 0x800063c24 word 0xf9400fe9
  %r5180.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5180 = load i64, ptr %r5180.p, align 8, !alias.scope !3, !noalias !4
  %t5181 = add i64 %r5180, 24
  %gmp5182 = inttoptr i64 %t5181 to ptr
  %gml5183 = load i64, ptr %gmp5182, align 1, !alias.scope !4, !noalias !3
  %wp5184 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5183, ptr %wp5184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c28 word 0xd001c7b4
  %wp5185 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp5185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c2c word 0x52800020
  %c5186 = zext i32 1 to i64
  %wp5187 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c5186, ptr %wp5187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c30 word 0xa942f3f9
  %r5188.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5188 = load i64, ptr %r5188.p, align 8, !alias.scope !3, !noalias !4
  %t5189 = add i64 %r5188, 40
  %t5190 = add i64 %t5189, 8
  %gmp5191 = inttoptr i64 %t5189 to ptr
  %gml5192 = load i64, ptr %gmp5191, align 1, !alias.scope !4, !noalias !3
  %gmp5193 = inttoptr i64 %t5190 to ptr
  %gml5194 = load i64, ptr %gmp5193, align 1, !alias.scope !4, !noalias !3
  %wp5195 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml5192, ptr %wp5195, align 8, !alias.scope !3, !noalias !4
  %wp5196 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml5194, ptr %wp5196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c34 word 0xf000217a
  %wp5197 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34364530688, ptr %wp5197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c38 word 0x9119235a
  %r5198.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5198 = load i64, ptr %r5198.p, align 8, !alias.scope !3, !noalias !4
  %t5199 = add i64 %r5198, 1608
  %wp5200 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5199, ptr %wp5200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c3c word 0xa943dbf8
  %r5201.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5201 = load i64, ptr %r5201.p, align 8, !alias.scope !3, !noalias !4
  %t5202 = add i64 %r5201, 56
  %t5203 = add i64 %t5202, 8
  %gmp5204 = inttoptr i64 %t5202 to ptr
  %gml5205 = load i64, ptr %gmp5204, align 1, !alias.scope !4, !noalias !3
  %gmp5206 = inttoptr i64 %t5203 to ptr
  %gml5207 = load i64, ptr %gmp5206, align 1, !alias.scope !4, !noalias !3
  %wp5208 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml5205, ptr %wp5208, align 8, !alias.scope !3, !noalias !4
  %wp5209 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5207, ptr %wp5209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c40 word 0xa944dff3
  %r5210.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5210 = load i64, ptr %r5210.p, align 8, !alias.scope !3, !noalias !4
  %t5211 = add i64 %r5210, 72
  %t5212 = add i64 %t5211, 8
  %gmp5213 = inttoptr i64 %t5211 to ptr
  %gml5214 = load i64, ptr %gmp5213, align 1, !alias.scope !4, !noalias !3
  %gmp5215 = inttoptr i64 %t5212 to ptr
  %gml5216 = load i64, ptr %gmp5215, align 1, !alias.scope !4, !noalias !3
  %wp5217 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml5214, ptr %wp5217, align 8, !alias.scope !3, !noalias !4
  %wp5218 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml5216, ptr %wp5218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c44 word 0x52800035
  %c5219 = zext i32 1 to i64
  %wp5220 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c5219, ptr %wp5220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c48 word 0x91000529
  %r5221.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5221 = load i64, ptr %r5221.p, align 8, !alias.scope !3, !noalias !4
  %t5222 = add i64 %r5221, 1
  %wp5223 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5222, ptr %wp5223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c4c word 0x9000219b
  %wp5224 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34364534784, ptr %wp5224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c50 word 0x9101b37b
  %r5225.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5225 = load i64, ptr %r5225.p, align 8, !alias.scope !3, !noalias !4
  %t5226 = add i64 %r5225, 108
  %wp5227 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t5226, ptr %wp5227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c54 word 0xf9000fe9
  %r5228.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5228 = load i64, ptr %r5228.p, align 8, !alias.scope !3, !noalias !4
  %t5229 = add i64 %r5228, 24
  %r5230.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5230 = load i64, ptr %r5230.p, align 8, !alias.scope !3, !noalias !4
  %gmp5231 = inttoptr i64 %t5229 to ptr
  store i64 %r5230, ptr %gmp5231, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063c58 word 0xeb28c13f
  %r5232.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5232 = load i64, ptr %r5232.p, align 8, !alias.scope !3, !noalias !4
  %r5233.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5233 = load i64, ptr %r5233.p, align 8, !alias.scope !3, !noalias !4
  %c5234 = trunc i64 %r5233 to i32
  %c5235 = sext i32 %c5234 to i64
  %t5236 = sub i64 %r5232, %c5235
  %fn5237 = icmp slt i64 %t5236, 0
  %fz5238 = icmp eq i64 %t5236, 0
  %fc5239 = icmp uge i64 %r5232, %c5235
  %fx15240 = xor i64 %r5232, %c5235
  %fx25241 = xor i64 %r5232, %t5236
  %fva5242 = and i64 %fx15240, %fx25241
  %fv5243 = icmp slt i64 %fva5242, 0
  %nz5244 = zext i1 %fn5237 to i64
  %zz5245 = zext i1 %fz5238 to i64
  %cz5246 = zext i1 %fc5239 to i64
  %vz5247 = zext i1 %fv5243 to i64
  %ns5248 = shl i64 %nz5244, 31
  %zs5249 = shl i64 %zz5245, 30
  %cs5250 = shl i64 %cz5246, 29
  %vs5251 = shl i64 %vz5247, 28
  %nzor5252 = or i64 %ns5248, %zs5249
  %cvor5253 = or i64 %cs5250, %vs5251
  %nzcv5254 = or i64 %nzor5252, %cvor5253
  %wp5255 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5254, ptr %wp5255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c5c word 0xf9424294
  %r5256.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5256 = load i64, ptr %r5256.p, align 8, !alias.scope !3, !noalias !4
  %t5257 = add i64 %r5256, 1152
  %gmp5258 = inttoptr i64 %t5257 to ptr
  %gml5259 = load i64, ptr %gmp5258, align 1, !alias.scope !4, !noalias !3
  %wp5260 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml5259, ptr %wp5260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c60 word 0x54fffb2b
  %r5261.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5261 = load i64, ptr %r5261.p, align 8, !alias.scope !3, !noalias !4
  %fsh5263 = lshr i64 %r5261, 31
  %ftr5264 = trunc i64 %fsh5263 to i1
  %fsh5265 = lshr i64 %r5261, 28
  %ftr5266 = trunc i64 %fsh5265 to i1
  %cond5262 = icmp ne i1 %ftr5264, %ftr5266
  br i1 %cond5262, label %L_800063bc4, label %L_800063c64_ft
L_800063c68:
  ; @pc 0x800063c68 word 0xb980eaea
  %r5267.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5267 = load i64, ptr %r5267.p, align 8, !alias.scope !3, !noalias !4
  %t5268 = add i64 %r5267, 232
  %gmp5269 = inttoptr i64 %t5268 to ptr
  %gml5270 = load i32, ptr %gmp5269, align 1, !alias.scope !4, !noalias !3
  %c5271 = sext i32 %gml5270 to i64
  %wp5272 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5271, ptr %wp5272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c6c word 0x3400034a
  %r5273.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5273 = load i64, ptr %r5273.p, align 8, !alias.scope !3, !noalias !4
  %c5274 = trunc i64 %r5273 to i32
  %cmp5275 = icmp eq i32 %c5274, 0
  br i1 %cmp5275, label %L_800063cd4, label %L_800063c70_ft
L_800063c78:
  ; @pc 0x800063c78 word 0xf940012b
  %r5286.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5286 = load i64, ptr %r5286.p, align 8, !alias.scope !3, !noalias !4
  %gmp5287 = inttoptr i64 %r5286 to ptr
  %gml5288 = load i64, ptr %gmp5287, align 1, !alias.scope !4, !noalias !3
  %wp5289 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5288, ptr %wp5289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c7c word 0xb400026b
  %r5290.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5290 = load i64, ptr %r5290.p, align 8, !alias.scope !3, !noalias !4
  %cmp5291 = icmp eq i64 %r5290, 0
  br i1 %cmp5291, label %L_800063cc8, label %L_800063c80_ft
L_800063c98:
  ; @pc 0x800063c98 word 0x885f7d0e
  %r5347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5347 = load i64, ptr %r5347.p, align 8, !alias.scope !3, !noalias !4
  %atp5348 = inttoptr i64 %r5347 to ptr
  %ldx5349 = load atomic i32, ptr %atp5348 acquire, align 4, !alias.scope !4, !noalias !3
  %c5350 = zext i32 %ldx5349 to i64
  %fp5351 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5347, ptr %fp5351, align 8, !alias.scope !3, !noalias !4
  %fp5352 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5350, ptr %fp5352, align 8, !alias.scope !3, !noalias !4
  %wp5353 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c5350, ptr %wp5353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c9c word 0x6b0e019f
  %r5354.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5354 = load i64, ptr %r5354.p, align 8, !alias.scope !3, !noalias !4
  %c5355 = trunc i64 %r5354 to i32
  %r5356.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5356 = load i64, ptr %r5356.p, align 8, !alias.scope !3, !noalias !4
  %c5357 = trunc i64 %r5356 to i32
  %t5358 = sub i32 %c5355, %c5357
  %fn5359 = icmp slt i32 %t5358, 0
  %fz5360 = icmp eq i32 %t5358, 0
  %fc5361 = icmp uge i32 %c5355, %c5357
  %fx15362 = xor i32 %c5355, %c5357
  %fx25363 = xor i32 %c5355, %t5358
  %fva5364 = and i32 %fx15362, %fx25363
  %fv5365 = icmp slt i32 %fva5364, 0
  %nz5366 = zext i1 %fn5359 to i64
  %zz5367 = zext i1 %fz5360 to i64
  %cz5368 = zext i1 %fc5361 to i64
  %vz5369 = zext i1 %fv5365 to i64
  %ns5370 = shl i64 %nz5366, 31
  %zs5371 = shl i64 %zz5367, 30
  %cs5372 = shl i64 %cz5368, 29
  %vs5373 = shl i64 %vz5369, 28
  %nzor5374 = or i64 %ns5370, %zs5371
  %cvor5375 = or i64 %cs5372, %vs5373
  %nzcv5376 = or i64 %nzor5374, %cvor5375
  %wp5377 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5376, ptr %wp5377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ca0 word 0x540046e1
  %r5378.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5378 = load i64, ptr %r5378.p, align 8, !alias.scope !3, !noalias !4
  %fsh5380 = lshr i64 %r5378, 30
  %ftr5381 = trunc i64 %fsh5380 to i1
  %cond5379 = xor i1 %ftr5381, true
  br i1 %cond5379, label %L_80006457c, label %L_800063ca4_ft
L_800063ca8:
  ; @pc 0x800063ca8 word 0x880e7d0d
  %r5387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5387 = load i64, ptr %r5387.p, align 8, !alias.scope !3, !noalias !4
  %atp5388 = inttoptr i64 %r5387 to ptr
  %fp5389 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5390 = load i64, ptr %fp5389, align 8, !alias.scope !3, !noalias !4
  %fp5391 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5392 = load i64, ptr %fp5391, align 8, !alias.scope !3, !noalias !4
  %fp5393 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5393, align 8, !alias.scope !3, !noalias !4
  %cmp5394 = icmp eq i64 %fv5390, %r5387
  %c5395 = trunc i64 %fv5392 to i32
  %r5396.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5396 = load i64, ptr %r5396.p, align 8, !alias.scope !3, !noalias !4
  %c5397 = trunc i64 %r5396 to i32
  %cx5398 = cmpxchg ptr %atp5388, i32 %c5395, i32 %c5397 seq_cst seq_cst, align 4
  %cxok5399 = extractvalue { i32, i1 } %cx5398, 1
  %t5400 = and i1 %cmp5394, %cxok5399
  %sel5401 = select i1 %t5400, i32 0, i32 1
  %c5402 = zext i32 %sel5401 to i64
  %wp5403 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c5402, ptr %wp5403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cac word 0x3500462e
  %r5404.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5404 = load i64, ptr %r5404.p, align 8, !alias.scope !3, !noalias !4
  %c5405 = trunc i64 %r5404 to i32
  %cmp5406 = icmp ne i32 %c5405, 0
  br i1 %cmp5406, label %L_800064570, label %L_800063cb0_ft
L_800063cc8:
  ; @pc 0x800063cc8 word 0x91002129
  %r5438.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5438 = load i64, ptr %r5438.p, align 8, !alias.scope !3, !noalias !4
  %t5439 = add i64 %r5438, 8
  %wp5440 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5439, ptr %wp5440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ccc word 0xeb0a013f
  %r5441.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5441 = load i64, ptr %r5441.p, align 8, !alias.scope !3, !noalias !4
  %r5442.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5442 = load i64, ptr %r5442.p, align 8, !alias.scope !3, !noalias !4
  %t5443 = sub i64 %r5441, %r5442
  %fn5444 = icmp slt i64 %t5443, 0
  %fz5445 = icmp eq i64 %t5443, 0
  %fc5446 = icmp uge i64 %r5441, %r5442
  %fx15447 = xor i64 %r5441, %r5442
  %fx25448 = xor i64 %r5441, %t5443
  %fva5449 = and i64 %fx15447, %fx25448
  %fv5450 = icmp slt i64 %fva5449, 0
  %nz5451 = zext i1 %fn5444 to i64
  %zz5452 = zext i1 %fz5445 to i64
  %cz5453 = zext i1 %fc5446 to i64
  %vz5454 = zext i1 %fv5450 to i64
  %ns5455 = shl i64 %nz5451, 31
  %zs5456 = shl i64 %zz5452, 30
  %cs5457 = shl i64 %cz5453, 29
  %vs5458 = shl i64 %vz5454, 28
  %nzor5459 = or i64 %ns5455, %zs5456
  %cvor5460 = or i64 %cs5457, %vs5458
  %nzcv5461 = or i64 %nzor5459, %cvor5460
  %wp5462 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5461, ptr %wp5462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cd0 word 0x54fffd41
  %r5463.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5463 = load i64, ptr %r5463.p, align 8, !alias.scope !3, !noalias !4
  %fsh5465 = lshr i64 %r5463, 30
  %ftr5466 = trunc i64 %fsh5465 to i1
  %cond5464 = xor i1 %ftr5466, true
  br i1 %cond5464, label %L_800063c78, label %L_800063cd4
L_800063cd4:
  ; @pc 0x800063cd4 word 0x394292e8
  %r5467.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5467 = load i64, ptr %r5467.p, align 8, !alias.scope !3, !noalias !4
  %t5468 = add i64 %r5467, 164
  %gmp5469 = inttoptr i64 %t5468 to ptr
  %gml5470 = load i8, ptr %gmp5469, align 1, !alias.scope !4, !noalias !3
  %c5471 = zext i8 %gml5470 to i64
  %wp5472 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5471, ptr %wp5472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cd8 word 0x35004608
  %r5473.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5473 = load i64, ptr %r5473.p, align 8, !alias.scope !3, !noalias !4
  %c5474 = trunc i64 %r5473 to i32
  %cmp5475 = icmp ne i32 %c5474, 0
  br i1 %cmp5475, label %L_800064598, label %L_800063cdc
L_800063cdc:
  ; @pc 0x800063cdc word 0x394296e8
  %r5476.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5476 = load i64, ptr %r5476.p, align 8, !alias.scope !3, !noalias !4
  %t5477 = add i64 %r5476, 165
  %gmp5478 = inttoptr i64 %t5477 to ptr
  %gml5479 = load i8, ptr %gmp5478, align 1, !alias.scope !4, !noalias !3
  %c5480 = zext i8 %gml5479 to i64
  %wp5481 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5480, ptr %wp5481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ce0 word 0x34ff9b28
  %r5482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5482 = load i64, ptr %r5482.p, align 8, !alias.scope !3, !noalias !4
  %c5483 = trunc i64 %r5482 to i32
  %cmp5484 = icmp eq i32 %c5483, 0
  br i1 %cmp5484, label %L_800063044, label %L_800063ce4_ft
L_800063cf8:
  ; @pc 0x800063cf8 word 0xf94013e8
  %r5505.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5505 = load i64, ptr %r5505.p, align 8, !alias.scope !3, !noalias !4
  %t5506 = add i64 %r5505, 32
  %gmp5507 = inttoptr i64 %t5506 to ptr
  %gml5508 = load i64, ptr %gmp5507, align 1, !alias.scope !4, !noalias !3
  %wp5509 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5508, ptr %wp5509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cfc word 0xf9456900
  %r5510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5510 = load i64, ptr %r5510.p, align 8, !alias.scope !3, !noalias !4
  %t5511 = add i64 %r5510, 2768
  %gmp5512 = inttoptr i64 %t5511 to ptr
  %gml5513 = load i64, ptr %gmp5512, align 1, !alias.scope !4, !noalias !3
  %wp5514 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5513, ptr %wp5514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d00 word 0x9401f2f1
  %wp5515 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147204, ptr %wp5515, align 8, !alias.scope !3, !noalias !4
  call void @f_8000e08c4(ptr %c)
  ; @pc 0x800063d04 word 0x17fffcd0
  br label %L_800063044
L_800063d08:
  ; @pc 0x800063d08 word 0xf94013e8
  %r5516.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5516 = load i64, ptr %r5516.p, align 8, !alias.scope !3, !noalias !4
  %t5517 = add i64 %r5516, 32
  %gmp5518 = inttoptr i64 %t5517 to ptr
  %gml5519 = load i64, ptr %gmp5518, align 1, !alias.scope !4, !noalias !3
  %wp5520 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5519, ptr %wp5520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d0c word 0x9101e3e1
  %r5521.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5521 = load i64, ptr %r5521.p, align 8, !alias.scope !3, !noalias !4
  %t5522 = add i64 %r5521, 120
  %wp5523 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5522, ptr %wp5523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d10 word 0xf9455100
  %r5524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5524 = load i64, ptr %r5524.p, align 8, !alias.scope !3, !noalias !4
  %t5525 = add i64 %r5524, 2720
  %gmp5526 = inttoptr i64 %t5525 to ptr
  %gml5527 = load i64, ptr %gmp5526, align 1, !alias.scope !4, !noalias !3
  %wp5528 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5527, ptr %wp5528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d14 word 0x94024e25
  %wp5529 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147224, ptr %wp5529, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f75a8(ptr %c)
  ; @pc 0x800063d18 word 0x17fffde5
  br label %L_8000634ac
L_800063d1c:
  ; @pc 0x800063d1c word 0x9001c748
  %wp5530 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp5530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d20 word 0xf9463d08
  %r5531.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5531 = load i64, ptr %r5531.p, align 8, !alias.scope !3, !noalias !4
  %t5532 = add i64 %r5531, 3192
  %gmp5533 = inttoptr i64 %t5532 to ptr
  %gml5534 = load i64, ptr %gmp5533, align 1, !alias.scope !4, !noalias !3
  %wp5535 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5534, ptr %wp5535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d24 word 0xf9400108
  %r5536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5536 = load i64, ptr %r5536.p, align 8, !alias.scope !3, !noalias !4
  %gmp5537 = inttoptr i64 %r5536 to ptr
  %gml5538 = load i64, ptr %gmp5537, align 1, !alias.scope !4, !noalias !3
  %wp5539 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5538, ptr %wp5539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d28 word 0xf9409508
  %r5540.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5540 = load i64, ptr %r5540.p, align 8, !alias.scope !3, !noalias !4
  %t5541 = add i64 %r5540, 296
  %gmp5542 = inttoptr i64 %t5541 to ptr
  %gml5543 = load i64, ptr %gmp5542, align 1, !alias.scope !4, !noalias !3
  %wp5544 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5543, ptr %wp5544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d2c word 0xf9455100
  %r5545.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5545 = load i64, ptr %r5545.p, align 8, !alias.scope !3, !noalias !4
  %t5546 = add i64 %r5545, 2720
  %gmp5547 = inttoptr i64 %t5546 to ptr
  %gml5548 = load i64, ptr %gmp5547, align 1, !alias.scope !4, !noalias !3
  %wp5549 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5548, ptr %wp5549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d30 word 0x3953a008
  %r5550.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5550 = load i64, ptr %r5550.p, align 8, !alias.scope !3, !noalias !4
  %t5551 = add i64 %r5550, 1256
  %gmp5552 = inttoptr i64 %t5551 to ptr
  %gml5553 = load i8, ptr %gmp5552, align 1, !alias.scope !4, !noalias !3
  %c5554 = zext i8 %gml5553 to i64
  %wp5555 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5554, ptr %wp5555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d34 word 0x3737cb68
  %r5556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5556 = load i64, ptr %r5556.p, align 8, !alias.scope !3, !noalias !4
  %t5557 = and i64 %r5556, 64
  %cmp5558 = icmp ne i64 %t5557, 0
  br i1 %cmp5558, label %L_8000636a0, label %L_800063d38_ft
L_800063d40:
  ; @pc 0x800063d40 word 0x9001c748
  %wp5560 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp5560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d44 word 0xf9463d08
  %r5561.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5561 = load i64, ptr %r5561.p, align 8, !alias.scope !3, !noalias !4
  %t5562 = add i64 %r5561, 3192
  %gmp5563 = inttoptr i64 %t5562 to ptr
  %gml5564 = load i64, ptr %gmp5563, align 1, !alias.scope !4, !noalias !3
  %wp5565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5564, ptr %wp5565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d48 word 0xf9400108
  %r5566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5566 = load i64, ptr %r5566.p, align 8, !alias.scope !3, !noalias !4
  %gmp5567 = inttoptr i64 %r5566 to ptr
  %gml5568 = load i64, ptr %gmp5567, align 1, !alias.scope !4, !noalias !3
  %wp5569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5568, ptr %wp5569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d4c word 0xf9409508
  %r5570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5570 = load i64, ptr %r5570.p, align 8, !alias.scope !3, !noalias !4
  %t5571 = add i64 %r5570, 296
  %gmp5572 = inttoptr i64 %t5571 to ptr
  %gml5573 = load i64, ptr %gmp5572, align 1, !alias.scope !4, !noalias !3
  %wp5574 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5573, ptr %wp5574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d50 word 0xf9457108
  %r5575.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5575 = load i64, ptr %r5575.p, align 8, !alias.scope !3, !noalias !4
  %t5576 = add i64 %r5575, 2784
  %gmp5577 = inttoptr i64 %t5576 to ptr
  %gml5578 = load i64, ptr %gmp5577, align 1, !alias.scope !4, !noalias !3
  %wp5579 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5578, ptr %wp5579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d54 word 0xb9490509
  %r5580.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5580 = load i64, ptr %r5580.p, align 8, !alias.scope !3, !noalias !4
  %t5581 = add i64 %r5580, 2308
  %gmp5582 = inttoptr i64 %t5581 to ptr
  %gml5583 = load i32, ptr %gmp5582, align 1, !alias.scope !4, !noalias !3
  %c5584 = zext i32 %gml5583 to i64
  %wp5585 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5584, ptr %wp5585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d58 word 0x32060129
  %r5586.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5586 = load i64, ptr %r5586.p, align 8, !alias.scope !3, !noalias !4
  %c5587 = trunc i64 %r5586 to i32
  %t5588 = or i32 %c5587, 67108864
  %c5589 = zext i32 %t5588 to i64
  %wp5590 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5589, ptr %wp5590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d5c word 0xb9090509
  %r5591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5591 = load i64, ptr %r5591.p, align 8, !alias.scope !3, !noalias !4
  %t5592 = add i64 %r5591, 2308
  %r5593.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5593 = load i64, ptr %r5593.p, align 8, !alias.scope !3, !noalias !4
  %c5594 = trunc i64 %r5593 to i32
  %gmp5595 = inttoptr i64 %t5592 to ptr
  store i32 %c5594, ptr %gmp5595, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063d60 word 0x17fffe50
  br label %L_8000636a0
L_800063d64:
  ; @pc 0x800063d64 word 0xd001c7b4
  %wp5596 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp5596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d68 word 0xa942f3f9
  %r5597.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5597 = load i64, ptr %r5597.p, align 8, !alias.scope !3, !noalias !4
  %t5598 = add i64 %r5597, 40
  %t5599 = add i64 %t5598, 8
  %gmp5600 = inttoptr i64 %t5598 to ptr
  %gml5601 = load i64, ptr %gmp5600, align 1, !alias.scope !4, !noalias !3
  %gmp5602 = inttoptr i64 %t5599 to ptr
  %gml5603 = load i64, ptr %gmp5602, align 1, !alias.scope !4, !noalias !3
  %wp5604 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml5601, ptr %wp5604, align 8, !alias.scope !3, !noalias !4
  %wp5605 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml5603, ptr %wp5605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d6c word 0xa943dbf8
  %r5606.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5606 = load i64, ptr %r5606.p, align 8, !alias.scope !3, !noalias !4
  %t5607 = add i64 %r5606, 56
  %t5608 = add i64 %t5607, 8
  %gmp5609 = inttoptr i64 %t5607 to ptr
  %gml5610 = load i64, ptr %gmp5609, align 1, !alias.scope !4, !noalias !3
  %gmp5611 = inttoptr i64 %t5608 to ptr
  %gml5612 = load i64, ptr %gmp5611, align 1, !alias.scope !4, !noalias !3
  %wp5613 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml5610, ptr %wp5613, align 8, !alias.scope !3, !noalias !4
  %wp5614 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5612, ptr %wp5614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d70 word 0x52800020
  %c5615 = zext i32 1 to i64
  %wp5616 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c5615, ptr %wp5616, align 8, !alias.scope !3, !noalias !4
  br label %L_800063d74
L_800063d74:
  ; @pc 0x800063d74 word 0xa944dff3
  %r5617.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5617 = load i64, ptr %r5617.p, align 8, !alias.scope !3, !noalias !4
  %t5618 = add i64 %r5617, 72
  %t5619 = add i64 %t5618, 8
  %gmp5620 = inttoptr i64 %t5618 to ptr
  %gml5621 = load i64, ptr %gmp5620, align 1, !alias.scope !4, !noalias !3
  %gmp5622 = inttoptr i64 %t5619 to ptr
  %gml5623 = load i64, ptr %gmp5622, align 1, !alias.scope !4, !noalias !3
  %wp5624 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml5621, ptr %wp5624, align 8, !alias.scope !3, !noalias !4
  %wp5625 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml5623, ptr %wp5625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d78 word 0xf9424294
  %r5626.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5626 = load i64, ptr %r5626.p, align 8, !alias.scope !3, !noalias !4
  %t5627 = add i64 %r5626, 1152
  %gmp5628 = inttoptr i64 %t5627 to ptr
  %gml5629 = load i64, ptr %gmp5628, align 1, !alias.scope !4, !noalias !3
  %wp5630 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml5629, ptr %wp5630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d7c word 0x17fffc33
  br label %L_800062e48
L_800063d80:
  ; @pc 0x800063d80 word 0xb001c748
  %wp5631 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp5631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d84 word 0xf9461508
  %r5632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5632 = load i64, ptr %r5632.p, align 8, !alias.scope !3, !noalias !4
  %t5633 = add i64 %r5632, 3112
  %gmp5634 = inttoptr i64 %t5633 to ptr
  %gml5635 = load i64, ptr %gmp5634, align 1, !alias.scope !4, !noalias !3
  %wp5636 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5635, ptr %wp5636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d88 word 0xf9400108
  %r5637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5637 = load i64, ptr %r5637.p, align 8, !alias.scope !3, !noalias !4
  %gmp5638 = inttoptr i64 %r5637 to ptr
  %gml5639 = load i64, ptr %gmp5638, align 1, !alias.scope !4, !noalias !3
  %wp5640 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5639, ptr %wp5640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d8c word 0xf9406517
  %r5641.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5641 = load i64, ptr %r5641.p, align 8, !alias.scope !3, !noalias !4
  %t5642 = add i64 %r5641, 200
  %gmp5643 = inttoptr i64 %t5642 to ptr
  %gml5644 = load i64, ptr %gmp5643, align 1, !alias.scope !4, !noalias !3
  %wp5645 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml5644, ptr %wp5645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d90 word 0xb980c108
  %r5646.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5646 = load i64, ptr %r5646.p, align 8, !alias.scope !3, !noalias !4
  %t5647 = add i64 %r5646, 192
  %gmp5648 = inttoptr i64 %t5647 to ptr
  %gml5649 = load i32, ptr %gmp5648, align 1, !alias.scope !4, !noalias !3
  %c5650 = sext i32 %gml5649 to i64
  %wp5651 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5650, ptr %wp5651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d94 word 0xd37df11a
  %r5652.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5652 = load i64, ptr %r5652.p, align 8, !alias.scope !3, !noalias !4
  %ror5653 = call i64 @llvm.fshr.i64(i64 %r5652, i64 %r5652, i64 61)
  %t5654 = and i64 %ror5653, -8
  %wp5655 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5654, ptr %wp5655, align 8, !alias.scope !3, !noalias !4
  br label %L_800063d98
L_800063d98:
  ; @pc 0x800063d98 word 0xf94002f5
  %r5656.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5656 = load i64, ptr %r5656.p, align 8, !alias.scope !3, !noalias !4
  %gmp5657 = inttoptr i64 %r5656 to ptr
  %gml5658 = load i64, ptr %gmp5657, align 1, !alias.scope !4, !noalias !3
  %wp5659 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml5658, ptr %wp5659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063d9c word 0x9432314d
  %wp5660 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147360, ptr %wp5660, align 8, !alias.scope !3, !noalias !4
  call void @f_800cf02d0(ptr %c)
  ; @pc 0x800063da0 word 0xb4004075
  %r5661.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5661 = load i64, ptr %r5661.p, align 8, !alias.scope !3, !noalias !4
  %cmp5662 = icmp eq i64 %r5661, 0
  br i1 %cmp5662, label %L_8000645ac, label %L_800063da4_ft
L_800063dc4:
  ; @pc 0x800063dc4 word 0xaa1f03ec
  %t5685 = or i64 0, 0
  %wp5686 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5685, ptr %wp5686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063dc8 word 0x17fffeb3
  br label %L_800063894
L_800063dcc:
  ; @pc 0x800063dcc word 0xb001c748
  %wp5687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp5687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063dd0 word 0xf9461508
  %r5688.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5688 = load i64, ptr %r5688.p, align 8, !alias.scope !3, !noalias !4
  %t5689 = add i64 %r5688, 3112
  %gmp5690 = inttoptr i64 %t5689 to ptr
  %gml5691 = load i64, ptr %gmp5690, align 1, !alias.scope !4, !noalias !3
  %wp5692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5691, ptr %wp5692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063dd4 word 0xf9400108
  %r5693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5693 = load i64, ptr %r5693.p, align 8, !alias.scope !3, !noalias !4
  %gmp5694 = inttoptr i64 %r5693 to ptr
  %gml5695 = load i64, ptr %gmp5694, align 1, !alias.scope !4, !noalias !3
  %wp5696 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5695, ptr %wp5696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063dd8 word 0xf9406517
  %r5697.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5697 = load i64, ptr %r5697.p, align 8, !alias.scope !3, !noalias !4
  %t5698 = add i64 %r5697, 200
  %gmp5699 = inttoptr i64 %t5698 to ptr
  %gml5700 = load i64, ptr %gmp5699, align 1, !alias.scope !4, !noalias !3
  %wp5701 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml5700, ptr %wp5701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ddc word 0xb980c108
  %r5702.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5702 = load i64, ptr %r5702.p, align 8, !alias.scope !3, !noalias !4
  %t5703 = add i64 %r5702, 192
  %gmp5704 = inttoptr i64 %t5703 to ptr
  %gml5705 = load i32, ptr %gmp5704, align 1, !alias.scope !4, !noalias !3
  %c5706 = sext i32 %gml5705 to i64
  %wp5707 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5706, ptr %wp5707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063de0 word 0xd37df11a
  %r5708.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5708 = load i64, ptr %r5708.p, align 8, !alias.scope !3, !noalias !4
  %ror5709 = call i64 @llvm.fshr.i64(i64 %r5708, i64 %r5708, i64 61)
  %t5710 = and i64 %ror5709, -8
  %wp5711 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5710, ptr %wp5711, align 8, !alias.scope !3, !noalias !4
  br label %L_800063de4
L_800063de4:
  ; @pc 0x800063de4 word 0xb001c788
  %wp5712 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419851264, ptr %wp5712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063de8 word 0xf94002f5
  %r5713.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5713 = load i64, ptr %r5713.p, align 8, !alias.scope !3, !noalias !4
  %gmp5714 = inttoptr i64 %r5713 to ptr
  %gml5715 = load i64, ptr %gmp5714, align 1, !alias.scope !4, !noalias !3
  %wp5716 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml5715, ptr %wp5716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063dec word 0xf9416d08
  %r5717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5717 = load i64, ptr %r5717.p, align 8, !alias.scope !3, !noalias !4
  %t5718 = add i64 %r5717, 728
  %gmp5719 = inttoptr i64 %t5718 to ptr
  %gml5720 = load i64, ptr %gmp5719, align 1, !alias.scope !4, !noalias !3
  %wp5721 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5720, ptr %wp5721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063df0 word 0x08dffd08
  %r5722.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5722 = load i64, ptr %r5722.p, align 8, !alias.scope !3, !noalias !4
  %atp5723 = inttoptr i64 %r5722 to ptr
  %lda5724 = load atomic i8, ptr %atp5723 acquire, align 1, !alias.scope !4, !noalias !3
  %c5725 = zext i8 %lda5724 to i64
  %wp5726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5725, ptr %wp5726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063df4 word 0x360001a8
  %r5727.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5727 = load i64, ptr %r5727.p, align 8, !alias.scope !3, !noalias !4
  %t5728 = and i64 %r5727, 1
  %cmp5729 = icmp eq i64 %t5728, 0
  br i1 %cmp5729, label %L_800063e28, label %L_800063df8
L_800063df8:
  ; @pc 0x800063df8 word 0xb4000115
  %r5730.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5730 = load i64, ptr %r5730.p, align 8, !alias.scope !3, !noalias !4
  %cmp5731 = icmp eq i64 %r5730, 0
  br i1 %cmp5731, label %L_800063e18, label %L_800063dfc_ft
L_800063e18:
  ; @pc 0x800063e18 word 0x910022f7
  %r5754.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5754 = load i64, ptr %r5754.p, align 8, !alias.scope !3, !noalias !4
  %t5755 = add i64 %r5754, 8
  %wp5756 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t5755, ptr %wp5756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e1c word 0xf100235a
  %r5757.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5757 = load i64, ptr %r5757.p, align 8, !alias.scope !3, !noalias !4
  %t5758 = sub i64 %r5757, 8
  %fn5759 = icmp slt i64 %t5758, 0
  %fz5760 = icmp eq i64 %t5758, 0
  %fc5761 = icmp uge i64 %r5757, 8
  %fx15762 = xor i64 %r5757, 8
  %fx25763 = xor i64 %r5757, %t5758
  %fva5764 = and i64 %fx15762, %fx25763
  %fv5765 = icmp slt i64 %fva5764, 0
  %nz5766 = zext i1 %fn5759 to i64
  %zz5767 = zext i1 %fz5760 to i64
  %cz5768 = zext i1 %fc5761 to i64
  %vz5769 = zext i1 %fv5765 to i64
  %ns5770 = shl i64 %nz5766, 31
  %zs5771 = shl i64 %zz5767, 30
  %cs5772 = shl i64 %cz5768, 29
  %vs5773 = shl i64 %vz5769, 28
  %nzor5774 = or i64 %ns5770, %zs5771
  %cvor5775 = or i64 %cs5772, %vs5773
  %nzcv5776 = or i64 %nzor5774, %cvor5775
  %wp5777 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5776, ptr %wp5777, align 8, !alias.scope !3, !noalias !4
  %wp5778 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5758, ptr %wp5778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e20 word 0x54fffe21
  %r5779.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5779 = load i64, ptr %r5779.p, align 8, !alias.scope !3, !noalias !4
  %fsh5781 = lshr i64 %r5779, 30
  %ftr5782 = trunc i64 %fsh5781 to i1
  %cond5780 = xor i1 %ftr5782, true
  br i1 %cond5780, label %L_800063de4, label %L_800063e24_ft
L_800063e28:
  ; @pc 0x800063e28 word 0xb001c780
  %wp5783 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419851264, ptr %wp5783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e2c word 0xf9416c00
  %r5784.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5784 = load i64, ptr %r5784.p, align 8, !alias.scope !3, !noalias !4
  %t5785 = add i64 %r5784, 728
  %gmp5786 = inttoptr i64 %t5785 to ptr
  %gml5787 = load i64, ptr %gmp5786, align 1, !alias.scope !4, !noalias !3
  %wp5788 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5787, ptr %wp5788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e30 word 0x94acfedc
  %wp5789 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147508, ptr %wp5789, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800063e34 word 0x34fffe20
  %r5790.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5790 = load i64, ptr %r5790.p, align 8, !alias.scope !3, !noalias !4
  %c5791 = trunc i64 %r5790 to i32
  %cmp5792 = icmp eq i32 %c5791, 0
  br i1 %cmp5792, label %L_800063df8, label %L_800063e38_ft
L_800063e60:
  ; @pc 0x800063e60 word 0xf9000280
  %r5818.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5818 = load i64, ptr %r5818.p, align 8, !alias.scope !3, !noalias !4
  %r5819.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5819 = load i64, ptr %r5819.p, align 8, !alias.scope !3, !noalias !4
  %gmp5820 = inttoptr i64 %r5818 to ptr
  store i64 %r5819, ptr %gmp5820, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063e64 word 0x17fffc41
  br label %L_800062f68
L_800063e68:
  ; @pc 0x800063e68 word 0xf9000bff
  %r5821.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5821 = load i64, ptr %r5821.p, align 8, !alias.scope !3, !noalias !4
  %t5822 = add i64 %r5821, 16
  %gmp5823 = inttoptr i64 %t5822 to ptr
  store i64 0, ptr %gmp5823, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063e6c word 0x17ffff43
  br label %L_800063b78
L_800063e70:
  ; @pc 0x800063e70 word 0x1e2b3908
  call void @rt_fp_op_s(ptr %c, i32 1, i32 8, i32 8, i32 11)
  ; @pc 0x800063e74 word 0x1e2b3929
  call void @rt_fp_op_s(ptr %c, i32 1, i32 9, i32 9, i32 11)
  br label %L_800063e78
L_800063e78:
  ; @pc 0x800063e78 word 0x1e204100
  %r5824.p = getelementptr inbounds i8, ptr %c, i64 640
  %r5824 = load i128, ptr %r5824.p, align 16, !alias.scope !3, !noalias !4
  %c5825 = trunc i128 %r5824 to i32
  %c5826 = zext i32 %c5825 to i128
  %wp5827 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5826, ptr %wp5827, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063e7c word 0x1e204121
  %r5828.p = getelementptr inbounds i8, ptr %c, i64 656
  %r5828 = load i128, ptr %r5828.p, align 16, !alias.scope !3, !noalias !4
  %c5829 = trunc i128 %r5828 to i32
  %c5830 = zext i32 %c5829 to i128
  %wp5831 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5830, ptr %wp5831, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063e80 word 0x2a1f03e1
  %t5832 = or i32 0, 0
  %c5833 = zext i32 %t5832 to i64
  %wp5834 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5833, ptr %wp5834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e84 word 0x942b5905
  %wp5835 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147592, ptr %wp5835, align 8, !alias.scope !3, !noalias !4
  call void @f_800b3a298(ptr %c)
  ; @pc 0x800063e88 word 0xf94013e8
  %r5836.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5836 = load i64, ptr %r5836.p, align 8, !alias.scope !3, !noalias !4
  %t5837 = add i64 %r5836, 32
  %gmp5838 = inttoptr i64 %t5837 to ptr
  %gml5839 = load i64, ptr %gmp5838, align 1, !alias.scope !4, !noalias !3
  %wp5840 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5839, ptr %wp5840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e8c word 0xf9457100
  %r5841.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5841 = load i64, ptr %r5841.p, align 8, !alias.scope !3, !noalias !4
  %t5842 = add i64 %r5841, 2784
  %gmp5843 = inttoptr i64 %t5842 to ptr
  %gml5844 = load i64, ptr %gmp5843, align 1, !alias.scope !4, !noalias !3
  %wp5845 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5844, ptr %wp5845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e90 word 0xb948f408
  %r5846.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5846 = load i64, ptr %r5846.p, align 8, !alias.scope !3, !noalias !4
  %t5847 = add i64 %r5846, 2292
  %gmp5848 = inttoptr i64 %t5847 to ptr
  %gml5849 = load i32, ptr %gmp5848, align 1, !alias.scope !4, !noalias !3
  %c5850 = zext i32 %gml5849 to i64
  %wp5851 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5850, ptr %wp5851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e94 word 0xb9490409
  %r5852.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5852 = load i64, ptr %r5852.p, align 8, !alias.scope !3, !noalias !4
  %t5853 = add i64 %r5852, 2308
  %gmp5854 = inttoptr i64 %t5853 to ptr
  %gml5855 = load i32, ptr %gmp5854, align 1, !alias.scope !4, !noalias !3
  %c5856 = zext i32 %gml5855 to i64
  %wp5857 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5856, ptr %wp5857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e98 word 0x7100051f
  %r5858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5858 = load i64, ptr %r5858.p, align 8, !alias.scope !3, !noalias !4
  %c5859 = trunc i64 %r5858 to i32
  %t5860 = sub i32 %c5859, 1
  %fn5861 = icmp slt i32 %t5860, 0
  %fz5862 = icmp eq i32 %t5860, 0
  %fc5863 = icmp uge i32 %c5859, 1
  %fx15864 = xor i32 %c5859, 1
  %fx25865 = xor i32 %c5859, %t5860
  %fva5866 = and i32 %fx15864, %fx25865
  %fv5867 = icmp slt i32 %fva5866, 0
  %nz5868 = zext i1 %fn5861 to i64
  %zz5869 = zext i1 %fz5862 to i64
  %cz5870 = zext i1 %fc5863 to i64
  %vz5871 = zext i1 %fv5867 to i64
  %ns5872 = shl i64 %nz5868, 31
  %zs5873 = shl i64 %zz5869, 30
  %cs5874 = shl i64 %cz5870, 29
  %vs5875 = shl i64 %vz5871, 28
  %nzor5876 = or i64 %ns5872, %zs5873
  %cvor5877 = or i64 %cs5874, %vs5875
  %nzcv5878 = or i64 %nzor5876, %cvor5877
  %wp5879 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5878, ptr %wp5879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e9c word 0x531d7d28
  %r5880.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5880 = load i64, ptr %r5880.p, align 8, !alias.scope !3, !noalias !4
  %c5881 = trunc i64 %r5880 to i32
  %ror5882 = call i32 @llvm.fshr.i32(i32 %c5881, i32 %c5881, i32 29)
  %t5883 = and i32 %ror5882, 7
  %c5884 = zext i32 %t5883 to i64
  %wp5885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5884, ptr %wp5885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ea0 word 0x7a409900
  %r5886.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5886 = load i64, ptr %r5886.p, align 8, !alias.scope !3, !noalias !4
  %fsh5888 = lshr i64 %r5886, 29
  %ftr5889 = trunc i64 %fsh5888 to i1
  %fsh5890 = lshr i64 %r5886, 30
  %ftr5891 = trunc i64 %fsh5890 to i1
  %fnz5892 = xor i1 %ftr5891, true
  %fhi5893 = and i1 %ftr5889, %fnz5892
  %cond5887 = xor i1 %fhi5893, true
  %r5894.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5894 = load i64, ptr %r5894.p, align 8, !alias.scope !3, !noalias !4
  %c5895 = trunc i64 %r5894 to i32
  %t5896 = sub i32 %c5895, 0
  %cmp5897 = icmp slt i32 %t5896, 0
  %cmp5898 = icmp eq i32 %t5896, 0
  %cmp5899 = icmp uge i32 %c5895, 0
  %t5900 = xor i32 %c5895, 0
  %t5901 = xor i32 %c5895, %t5896
  %t5902 = and i32 %t5900, %t5901
  %cmp5903 = icmp slt i32 %t5902, 0
  %c5904 = zext i1 %cmp5897 to i64
  %t5905 = shl i64 %c5904, 31
  %c5906 = zext i1 %cmp5898 to i64
  %t5907 = shl i64 %c5906, 30
  %c5908 = zext i1 %cmp5899 to i64
  %t5909 = shl i64 %c5908, 29
  %c5910 = zext i1 %cmp5903 to i64
  %t5911 = shl i64 %c5910, 28
  %t5912 = or i64 %t5909, %t5911
  %t5913 = or i64 %t5905, %t5907
  %t5914 = or i64 %t5913, %t5912
  %sel5915 = select i1 %cond5887, i64 %t5914, i64 0
  %wp5916 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel5915, ptr %wp5916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ea4 word 0x54ffb421
  %r5917.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5917 = load i64, ptr %r5917.p, align 8, !alias.scope !3, !noalias !4
  %fsh5919 = lshr i64 %r5917, 30
  %ftr5920 = trunc i64 %fsh5919 to i1
  %cond5918 = xor i1 %ftr5920, true
  br i1 %cond5918, label %L_800063528, label %L_800063ea8_ft
L_800063eac:
  ; @pc 0x800063eac word 0xaa1503e0
  %r5921.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5921 = load i64, ptr %r5921.p, align 8, !alias.scope !3, !noalias !4
  %t5922 = or i64 0, %r5921
  %wp5923 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5922, ptr %wp5923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063eb0 word 0x94ad0070
  %wp5924 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147636, ptr %wp5924, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  br label %L_800063eb4
L_800063eb4:
  ; @pc 0x800063eb4 word 0x2a1f03e0
  %t5925 = or i32 0, 0
  %c5926 = zext i32 %t5925 to i64
  %wp5927 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c5926, ptr %wp5927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063eb8 word 0x17fffc48
  br label %L_800062fd8
L_800063ebc:
  ; @pc 0x800063ebc word 0xf9400009
  %r5928.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5928 = load i64, ptr %r5928.p, align 8, !alias.scope !3, !noalias !4
  %gmp5929 = inttoptr i64 %r5928 to ptr
  %gml5930 = load i64, ptr %gmp5929, align 1, !alias.scope !4, !noalias !3
  %wp5931 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5930, ptr %wp5931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ec0 word 0xf8686928
  %r5932.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5932 = load i64, ptr %r5932.p, align 8, !alias.scope !3, !noalias !4
  %r5933.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5933 = load i64, ptr %r5933.p, align 8, !alias.scope !3, !noalias !4
  %t5934 = add i64 %r5932, %r5933
  %gmp5935 = inttoptr i64 %t5934 to ptr
  %gml5936 = load i64, ptr %gmp5935, align 1, !alias.scope !4, !noalias !3
  %wp5937 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5936, ptr %wp5937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ec4 word 0x17fffc21
  br label %L_800062f48
L_800063ec8:
  ; @pc 0x800063ec8 word 0xb20283e8
  %t5938 = or i64 0, 4611756388245323776
  %wp5939 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5938, ptr %wp5939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ecc word 0x5296e2ea
  %c5940 = zext i32 46871 to i64
  %wp5941 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5940, ptr %wp5941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ed0 word 0x72a71a2a
  %r5942.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5942 = load i64, ptr %r5942.p, align 8, !alias.scope !3, !noalias !4
  %t5943 = and i64 %r5942, -4294901761
  %t5944 = or i64 %t5943, 953221120
  %c5945 = trunc i64 %t5944 to i32
  %c5946 = zext i32 %c5945 to i64
  %wp5947 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5946, ptr %wp5947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ed4 word 0xf2b8b388
  %r5948.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5948 = load i64, ptr %r5948.p, align 8, !alias.scope !3, !noalias !4
  %t5949 = and i64 %r5948, -4294901761
  %t5950 = or i64 %t5949, 3315335168
  %wp5951 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5950, ptr %wp5951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ed8 word 0xf2f8b388
  %r5952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5952 = load i64, ptr %r5952.p, align 8, !alias.scope !3, !noalias !4
  %t5953 = and i64 %r5952, 281474976710655
  %t5954 = or i64 %t5953, -4207487951870885888
  %wp5955 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5954, ptr %wp5955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063edc word 0xa9002928
  %r5956.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5956 = load i64, ptr %r5956.p, align 8, !alias.scope !3, !noalias !4
  %t5957 = add i64 %r5956, 8
  %r5958.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5958 = load i64, ptr %r5958.p, align 8, !alias.scope !3, !noalias !4
  %gmp5959 = inttoptr i64 %r5956 to ptr
  store i64 %r5958, ptr %gmp5959, align 1, !alias.scope !4, !noalias !3
  %r5960.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5960 = load i64, ptr %r5960.p, align 8, !alias.scope !3, !noalias !4
  %gmp5961 = inttoptr i64 %t5957 to ptr
  store i64 %r5960, ptr %gmp5961, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063ee0 word 0x17ffff18
  br label %L_800063b40
L_800063ee4:
  ; @pc 0x800063ee4 word 0xf9400280
  %r5962.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5962 = load i64, ptr %r5962.p, align 8, !alias.scope !3, !noalias !4
  %gmp5963 = inttoptr i64 %r5962 to ptr
  %gml5964 = load i64, ptr %gmp5963, align 1, !alias.scope !4, !noalias !3
  %wp5965 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5964, ptr %wp5965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ee8 word 0x17fffc20
  br label %L_800062f68
L_800063eec:
  ; @pc 0x800063eec word 0xf94013e9
  %r5966.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5966 = load i64, ptr %r5966.p, align 8, !alias.scope !3, !noalias !4
  %t5967 = add i64 %r5966, 32
  %gmp5968 = inttoptr i64 %t5967 to ptr
  %gml5969 = load i64, ptr %gmp5968, align 1, !alias.scope !4, !noalias !3
  %wp5970 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5969, ptr %wp5970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ef0 word 0x5280850b
  %c5971 = zext i32 1064 to i64
  %wp5972 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5971, ptr %wp5972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ef4 word 0xf944e129
  %r5973.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5973 = load i64, ptr %r5973.p, align 8, !alias.scope !3, !noalias !4
  %t5974 = add i64 %r5973, 2496
  %gmp5975 = inttoptr i64 %t5974 to ptr
  %gml5976 = load i64, ptr %gmp5975, align 1, !alias.scope !4, !noalias !3
  %wp5977 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5976, ptr %wp5977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ef8 word 0xb940092a
  %r5978.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5978 = load i64, ptr %r5978.p, align 8, !alias.scope !3, !noalias !4
  %t5979 = add i64 %r5978, 8
  %gmp5980 = inttoptr i64 %t5979 to ptr
  %gml5981 = load i32, ptr %gmp5980, align 1, !alias.scope !4, !noalias !3
  %c5982 = zext i32 %gml5981 to i64
  %wp5983 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5982, ptr %wp5983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063efc word 0xf9400929
  %r5984.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5984 = load i64, ptr %r5984.p, align 8, !alias.scope !3, !noalias !4
  %t5985 = add i64 %r5984, 16
  %gmp5986 = inttoptr i64 %t5985 to ptr
  %gml5987 = load i64, ptr %gmp5986, align 1, !alias.scope !4, !noalias !3
  %wp5988 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5987, ptr %wp5988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f00 word 0xeb0a011f
  %r5989.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5989 = load i64, ptr %r5989.p, align 8, !alias.scope !3, !noalias !4
  %r5990.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5990 = load i64, ptr %r5990.p, align 8, !alias.scope !3, !noalias !4
  %t5991 = sub i64 %r5989, %r5990
  %fn5992 = icmp slt i64 %t5991, 0
  %fz5993 = icmp eq i64 %t5991, 0
  %fc5994 = icmp uge i64 %r5989, %r5990
  %fx15995 = xor i64 %r5989, %r5990
  %fx25996 = xor i64 %r5989, %t5991
  %fva5997 = and i64 %fx15995, %fx25996
  %fv5998 = icmp slt i64 %fva5997, 0
  %nz5999 = zext i1 %fn5992 to i64
  %zz6000 = zext i1 %fz5993 to i64
  %cz6001 = zext i1 %fc5994 to i64
  %vz6002 = zext i1 %fv5998 to i64
  %ns6003 = shl i64 %nz5999, 31
  %zs6004 = shl i64 %zz6000, 30
  %cs6005 = shl i64 %cz6001, 29
  %vs6006 = shl i64 %vz6002, 28
  %nzor6007 = or i64 %ns6003, %zs6004
  %cvor6008 = or i64 %cs6005, %vs6006
  %nzcv6009 = or i64 %nzor6007, %cvor6008
  %wp6010 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6009, ptr %wp6010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f04 word 0x9a9f310a
  %r6011.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6011 = load i64, ptr %r6011.p, align 8, !alias.scope !3, !noalias !4
  %r6012.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6012 = load i64, ptr %r6012.p, align 8, !alias.scope !3, !noalias !4
  %fsh6014 = lshr i64 %r6012, 29
  %ftr6015 = trunc i64 %fsh6014 to i1
  %cond6013 = xor i1 %ftr6015, true
  %sel6016 = select i1 %cond6013, i64 %r6011, i64 0
  %wp6017 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel6016, ptr %wp6017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f08 word 0x9b0b2549
  %r6018.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6018 = load i64, ptr %r6018.p, align 8, !alias.scope !3, !noalias !4
  %r6019.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6019 = load i64, ptr %r6019.p, align 8, !alias.scope !3, !noalias !4
  %t6020 = mul i64 %r6019, %r6018
  %r6021.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6021 = load i64, ptr %r6021.p, align 8, !alias.scope !3, !noalias !4
  %t6022 = add i64 %r6021, %t6020
  %wp6023 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6022, ptr %wp6023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f0c word 0x7946b129
  %r6024.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6024 = load i64, ptr %r6024.p, align 8, !alias.scope !3, !noalias !4
  %t6025 = add i64 %r6024, 856
  %gmp6026 = inttoptr i64 %t6025 to ptr
  %gml6027 = load i16, ptr %gmp6026, align 1, !alias.scope !4, !noalias !3
  %c6028 = zext i16 %gml6027 to i64
  %wp6029 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6028, ptr %wp6029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f10 word 0x53030d29
  %r6030.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6030 = load i64, ptr %r6030.p, align 8, !alias.scope !3, !noalias !4
  %c6031 = trunc i64 %r6030 to i32
  %ror6032 = call i32 @llvm.fshr.i32(i32 %c6031, i32 %c6031, i32 3)
  %t6033 = and i32 %ror6032, 1
  %c6034 = zext i32 %t6033 to i64
  %wp6035 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6034, ptr %wp6035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f14 word 0x17fffc84
  br label %L_800063124
L_800063f18:
  ; @pc 0x800063f18 word 0x52800309
  %c6036 = zext i32 24 to i64
  %wp6037 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6036, ptr %wp6037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f1c word 0x121c7908
  %r6038.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6038 = load i64, ptr %r6038.p, align 8, !alias.scope !3, !noalias !4
  %c6039 = trunc i64 %r6038 to i32
  %t6040 = and i32 %c6039, -9
  %c6041 = zext i32 %t6040 to i64
  %wp6042 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6041, ptr %wp6042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f20 word 0xb9365e69
  %r6043.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6043 = load i64, ptr %r6043.p, align 8, !alias.scope !3, !noalias !4
  %t6044 = add i64 %r6043, 13916
  %r6045.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6045 = load i64, ptr %r6045.p, align 8, !alias.scope !3, !noalias !4
  %c6046 = trunc i64 %r6045 to i32
  %gmp6047 = inttoptr i64 %t6044 to ptr
  store i32 %c6046, ptr %gmp6047, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063f24 word 0x39000288
  %r6048.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6048 = load i64, ptr %r6048.p, align 8, !alias.scope !3, !noalias !4
  %r6049.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6049 = load i64, ptr %r6049.p, align 8, !alias.scope !3, !noalias !4
  %c6050 = trunc i64 %r6049 to i32
  %c6051 = trunc i32 %c6050 to i8
  %gmp6052 = inttoptr i64 %r6048 to ptr
  store i8 %c6051, ptr %gmp6052, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063f28 word 0x17fffd2e
  br label %L_8000633e0
L_800063f2c:
  ; @pc 0x800063f2c word 0xb9407be9
  %r6053.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6053 = load i64, ptr %r6053.p, align 8, !alias.scope !3, !noalias !4
  %t6054 = add i64 %r6053, 120
  %gmp6055 = inttoptr i64 %t6054 to ptr
  %gml6056 = load i32, ptr %gmp6055, align 1, !alias.scope !4, !noalias !3
  %c6057 = zext i32 %gml6056 to i64
  %wp6058 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6057, ptr %wp6058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f30 word 0x121d7908
  %r6059.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6059 = load i64, ptr %r6059.p, align 8, !alias.scope !3, !noalias !4
  %c6060 = trunc i64 %r6059 to i32
  %t6061 = and i32 %c6060, -5
  %c6062 = zext i32 %t6061 to i64
  %wp6063 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6062, ptr %wp6063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f34 word 0x39000288
  %r6064.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6064 = load i64, ptr %r6064.p, align 8, !alias.scope !3, !noalias !4
  %r6065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6065 = load i64, ptr %r6065.p, align 8, !alias.scope !3, !noalias !4
  %c6066 = trunc i64 %r6065 to i32
  %c6067 = trunc i32 %c6066 to i8
  %gmp6068 = inttoptr i64 %r6064 to ptr
  store i8 %c6067, ptr %gmp6068, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063f38 word 0xb9366269
  %r6069.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6069 = load i64, ptr %r6069.p, align 8, !alias.scope !3, !noalias !4
  %t6070 = add i64 %r6069, 13920
  %r6071.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6071 = load i64, ptr %r6071.p, align 8, !alias.scope !3, !noalias !4
  %c6072 = trunc i64 %r6071 to i32
  %gmp6073 = inttoptr i64 %t6070 to ptr
  store i32 %c6072, ptr %gmp6073, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063f3c word 0x17fffc42
  br label %L_800063044
L_800063f40:
  ; @pc 0x800063f40 word 0x3900011f
  %r6074.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6074 = load i64, ptr %r6074.p, align 8, !alias.scope !3, !noalias !4
  %c6075 = trunc i32 0 to i8
  %gmp6076 = inttoptr i64 %r6074 to ptr
  store i8 %c6075, ptr %gmp6076, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063f44 word 0x9001c753
  %wp6077 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 34419814400, ptr %wp6077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f48 word 0x910022f4
  %r6078.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6078 = load i64, ptr %r6078.p, align 8, !alias.scope !3, !noalias !4
  %t6079 = add i64 %r6078, 8
  %wp6080 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t6079, ptr %wp6080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f4c word 0xf9453a73
  %r6081.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6081 = load i64, ptr %r6081.p, align 8, !alias.scope !3, !noalias !4
  %t6082 = add i64 %r6081, 2672
  %gmp6083 = inttoptr i64 %t6082 to ptr
  %gml6084 = load i64, ptr %gmp6083, align 1, !alias.scope !4, !noalias !3
  %wp6085 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml6084, ptr %wp6085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f50 word 0xf9400260
  %r6086.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6086 = load i64, ptr %r6086.p, align 8, !alias.scope !3, !noalias !4
  %gmp6087 = inttoptr i64 %r6086 to ptr
  %gml6088 = load i64, ptr %gmp6087, align 1, !alias.scope !4, !noalias !3
  %wp6089 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6088, ptr %wp6089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f54 word 0x942f391f
  %wp6090 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147800, ptr %wp6090, align 8, !alias.scope !3, !noalias !4
  call void @f_800c323d0(ptr %c)
  ; @pc 0x800063f58 word 0xbd400808
  %r6091.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6091 = load i64, ptr %r6091.p, align 8, !alias.scope !3, !noalias !4
  %t6092 = add i64 %r6091, 8
  %gmp6093 = inttoptr i64 %t6092 to ptr
  %gml6094 = load i32, ptr %gmp6093, align 1, !alias.scope !4, !noalias !3
  %c6095 = zext i32 %gml6094 to i128
  %wp6096 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c6095, ptr %wp6096, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063f5c word 0xf9400260
  %r6097.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6097 = load i64, ptr %r6097.p, align 8, !alias.scope !3, !noalias !4
  %gmp6098 = inttoptr i64 %r6097 to ptr
  %gml6099 = load i64, ptr %gmp6098, align 1, !alias.scope !4, !noalias !3
  %wp6100 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6099, ptr %wp6100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f60 word 0x942f391c
  %wp6101 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147812, ptr %wp6101, align 8, !alias.scope !3, !noalias !4
  call void @f_800c323d0(ptr %c)
  ; @pc 0x800063f64 word 0xbd400009
  %r6102.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6102 = load i64, ptr %r6102.p, align 8, !alias.scope !3, !noalias !4
  %gmp6103 = inttoptr i64 %r6102 to ptr
  %gml6104 = load i32, ptr %gmp6103, align 1, !alias.scope !4, !noalias !3
  %c6105 = zext i32 %gml6104 to i128
  %wp6106 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c6105, ptr %wp6106, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063f68 word 0xb94b7ef5
  %r6107.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6107 = load i64, ptr %r6107.p, align 8, !alias.scope !3, !noalias !4
  %t6108 = add i64 %r6107, 2940
  %gmp6109 = inttoptr i64 %t6108 to ptr
  %gml6110 = load i32, ptr %gmp6109, align 1, !alias.scope !4, !noalias !3
  %c6111 = zext i32 %gml6110 to i64
  %wp6112 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c6111, ptr %wp6112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f6c word 0xb94b82f8
  %r6113.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6113 = load i64, ptr %r6113.p, align 8, !alias.scope !3, !noalias !4
  %t6114 = add i64 %r6113, 2944
  %gmp6115 = inttoptr i64 %t6114 to ptr
  %gml6116 = load i32, ptr %gmp6115, align 1, !alias.scope !4, !noalias !3
  %c6117 = zext i32 %gml6116 to i64
  %wp6118 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c6117, ptr %wp6118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f70 word 0xb94b86f9
  %r6119.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6119 = load i64, ptr %r6119.p, align 8, !alias.scope !3, !noalias !4
  %t6120 = add i64 %r6119, 2948
  %gmp6121 = inttoptr i64 %t6120 to ptr
  %gml6122 = load i32, ptr %gmp6121, align 1, !alias.scope !4, !noalias !3
  %c6123 = zext i32 %gml6122 to i64
  %wp6124 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c6123, ptr %wp6124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f74 word 0x395e46e8
  %r6125.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6125 = load i64, ptr %r6125.p, align 8, !alias.scope !3, !noalias !4
  %t6126 = add i64 %r6125, 1937
  %gmp6127 = inttoptr i64 %t6126 to ptr
  %gml6128 = load i8, ptr %gmp6127, align 1, !alias.scope !4, !noalias !3
  %c6129 = zext i8 %gml6128 to i64
  %wp6130 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6129, ptr %wp6130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f78 word 0x350002e8
  %r6131.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6131 = load i64, ptr %r6131.p, align 8, !alias.scope !3, !noalias !4
  %c6132 = trunc i64 %r6131 to i32
  %cmp6133 = icmp ne i32 %c6132, 0
  br i1 %cmp6133, label %L_800063fd4, label %L_800063f7c_ft
L_800063fd4:
  ; @pc 0x800063fd4 word 0x395baae8
  %r6231.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6231 = load i64, ptr %r6231.p, align 8, !alias.scope !3, !noalias !4
  %t6232 = add i64 %r6231, 1770
  %gmp6233 = inttoptr i64 %t6232 to ptr
  %gml6234 = load i8, ptr %gmp6233, align 1, !alias.scope !4, !noalias !3
  %c6235 = zext i8 %gml6234 to i64
  %wp6236 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6235, ptr %wp6236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fd8 word 0x52800029
  %c6237 = zext i32 1 to i64
  %wp6238 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6237, ptr %wp6238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fdc word 0x911a82fa
  %r6239.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6239 = load i64, ptr %r6239.p, align 8, !alias.scope !3, !noalias !4
  %t6240 = add i64 %r6239, 1696
  %wp6241 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t6240, ptr %wp6241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fe0 word 0xaa1a03e0
  %r6242.p = getelementptr inbounds i8, ptr %c, i64 208
  %r6242 = load i64, ptr %r6242.p, align 8, !alias.scope !3, !noalias !4
  %t6243 = or i64 0, %r6242
  %wp6244 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6243, ptr %wp6244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fe4 word 0x4b481121
  %r6245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6245 = load i64, ptr %r6245.p, align 8, !alias.scope !3, !noalias !4
  %c6246 = trunc i64 %r6245 to i32
  %r6247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6247 = load i64, ptr %r6247.p, align 8, !alias.scope !3, !noalias !4
  %c6248 = trunc i64 %r6247 to i32
  %t6249 = lshr i32 %c6248, 4
  %t6250 = sub i32 %c6246, %t6249
  %c6251 = zext i32 %t6250 to i64
  %wp6252 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6251, ptr %wp6252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fe8 word 0x94795ea1
  %wp6253 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147948, ptr %wp6253, align 8, !alias.scope !3, !noalias !4
  call void @f_801ebba6c(ptr %c)
  ; @pc 0x800063fec word 0xf9400ee8
  %r6254.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6254 = load i64, ptr %r6254.p, align 8, !alias.scope !3, !noalias !4
  %t6255 = add i64 %r6254, 24
  %gmp6256 = inttoptr i64 %t6255 to ptr
  %gml6257 = load i64, ptr %gmp6256, align 1, !alias.scope !4, !noalias !3
  %wp6258 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6257, ptr %wp6258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ff0 word 0xf0016449
  %wp6259 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406850560, ptr %wp6259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ff4 word 0xbd481ae1
  %r6260.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6260 = load i64, ptr %r6260.p, align 8, !alias.scope !3, !noalias !4
  %t6261 = add i64 %r6260, 2072
  %gmp6262 = inttoptr i64 %t6261 to ptr
  %gml6263 = load i32, ptr %gmp6262, align 1, !alias.scope !4, !noalias !3
  %c6264 = zext i32 %gml6263 to i128
  %wp6265 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6264, ptr %wp6265, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063ff8 word 0xbd4c7924
  %r6266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6266 = load i64, ptr %r6266.p, align 8, !alias.scope !3, !noalias !4
  %t6267 = add i64 %r6266, 3192
  %gmp6268 = inttoptr i64 %t6267 to ptr
  %gml6269 = load i32, ptr %gmp6268, align 1, !alias.scope !4, !noalias !3
  %c6270 = zext i32 %gml6269 to i128
  %wp6271 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c6270, ptr %wp6271, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063ffc word 0xbd47a2e3
  %r6272.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6272 = load i64, ptr %r6272.p, align 8, !alias.scope !3, !noalias !4
  %t6273 = add i64 %r6272, 1952
  %gmp6274 = inttoptr i64 %t6273 to ptr
  %gml6275 = load i32, ptr %gmp6274, align 1, !alias.scope !4, !noalias !3
  %c6276 = zext i32 %gml6275 to i128
  %wp6277 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c6276, ptr %wp6277, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064000 word 0xbd47aee0
  %r6278.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6278 = load i64, ptr %r6278.p, align 8, !alias.scope !3, !noalias !4
  %t6279 = add i64 %r6278, 1964
  %gmp6280 = inttoptr i64 %t6279 to ptr
  %gml6281 = load i32, ptr %gmp6280, align 1, !alias.scope !4, !noalias !3
  %c6282 = zext i32 %gml6281 to i128
  %wp6283 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6282, ptr %wp6283, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064004 word 0xbd5e8902
  %r6284.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6284 = load i64, ptr %r6284.p, align 8, !alias.scope !3, !noalias !4
  %t6285 = add i64 %r6284, 7816
  %gmp6286 = inttoptr i64 %t6285 to ptr
  %gml6287 = load i32, ptr %gmp6286, align 1, !alias.scope !4, !noalias !3
  %c6288 = zext i32 %gml6287 to i128
  %wp6289 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6288, ptr %wp6289, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064008 word 0x1e242040
  %fcmp6290 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 4, i32 0)
  %wp6291 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6290, ptr %wp6291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006400c word 0xb9480ae8
  %r6292.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6292 = load i64, ptr %r6292.p, align 8, !alias.scope !3, !noalias !4
  %t6293 = add i64 %r6292, 2056
  %gmp6294 = inttoptr i64 %t6293 to ptr
  %gml6295 = load i32, ptr %gmp6294, align 1, !alias.scope !4, !noalias !3
  %c6296 = zext i32 %gml6295 to i64
  %wp6297 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6296, ptr %wp6297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064010 word 0x540000ab
  %r6298.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6298 = load i64, ptr %r6298.p, align 8, !alias.scope !3, !noalias !4
  %fsh6300 = lshr i64 %r6298, 31
  %ftr6301 = trunc i64 %fsh6300 to i1
  %fsh6302 = lshr i64 %r6298, 28
  %ftr6303 = trunc i64 %fsh6302 to i1
  %cond6299 = icmp ne i1 %ftr6301, %ftr6303
  br i1 %cond6299, label %L_800064024, label %L_800064014_ft
L_800064024:
  ; @pc 0x800064024 word 0x37502ce8
  %r6321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6321 = load i64, ptr %r6321.p, align 8, !alias.scope !3, !noalias !4
  %t6322 = and i64 %r6321, 1024
  %cmp6323 = icmp ne i64 %t6322, 0
  br i1 %cmp6323, label %L_8000645c0, label %L_800064028_ft
L_800064034:
  ; @pc 0x800064034 word 0x1e282968
  call void @rt_fp_op_s(ptr %c, i32 0, i32 8, i32 11, i32 8)
  ; @pc 0x800064038 word 0x1e292969
  call void @rt_fp_op_s(ptr %c, i32 0, i32 9, i32 11, i32 9)
  ; @pc 0x80006403c word 0x17ffff8f
  br label %L_800063e78
L_800064040:
  ; @pc 0x800064040 word 0xf001c769
  %wp6325 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419847168, ptr %wp6325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064044 word 0xf941a129
  %r6326.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6326 = load i64, ptr %r6326.p, align 8, !alias.scope !3, !noalias !4
  %t6327 = add i64 %r6326, 832
  %gmp6328 = inttoptr i64 %t6327 to ptr
  %gml6329 = load i64, ptr %gmp6328, align 1, !alias.scope !4, !noalias !3
  %wp6330 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6329, ptr %wp6330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064048 word 0xf9400129
  %r6331.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6331 = load i64, ptr %r6331.p, align 8, !alias.scope !3, !noalias !4
  %gmp6332 = inttoptr i64 %r6331 to ptr
  %gml6333 = load i64, ptr %gmp6332, align 1, !alias.scope !4, !noalias !3
  %wp6334 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6333, ptr %wp6334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006404c word 0xf9402129
  %r6335.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6335 = load i64, ptr %r6335.p, align 8, !alias.scope !3, !noalias !4
  %t6336 = add i64 %r6335, 64
  %gmp6337 = inttoptr i64 %t6336 to ptr
  %gml6338 = load i64, ptr %gmp6337, align 1, !alias.scope !4, !noalias !3
  %wp6339 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6338, ptr %wp6339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064050 word 0x17fffd4e
  br label %L_800063588
L_800064054:
  ; @pc 0x800064054 word 0x37082f6b
  %r6340.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6340 = load i64, ptr %r6340.p, align 8, !alias.scope !3, !noalias !4
  %t6341 = and i64 %r6340, 2
  %cmp6342 = icmp ne i64 %t6341, 0
  br i1 %cmp6342, label %L_800064640, label %L_800064058
L_800064058:
  ; @pc 0x800064058 word 0xf001c769
  %wp6343 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419847168, ptr %wp6343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006405c word 0xf941a129
  %r6344.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6344 = load i64, ptr %r6344.p, align 8, !alias.scope !3, !noalias !4
  %t6345 = add i64 %r6344, 832
  %gmp6346 = inttoptr i64 %t6345 to ptr
  %gml6347 = load i64, ptr %gmp6346, align 1, !alias.scope !4, !noalias !3
  %wp6348 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6347, ptr %wp6348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064060 word 0xf9400129
  %r6349.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6349 = load i64, ptr %r6349.p, align 8, !alias.scope !3, !noalias !4
  %gmp6350 = inttoptr i64 %r6349 to ptr
  %gml6351 = load i64, ptr %gmp6350, align 1, !alias.scope !4, !noalias !3
  %wp6352 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6351, ptr %wp6352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064064 word 0xf9402d29
  %r6353.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6353 = load i64, ptr %r6353.p, align 8, !alias.scope !3, !noalias !4
  %t6354 = add i64 %r6353, 88
  %gmp6355 = inttoptr i64 %t6354 to ptr
  %gml6356 = load i64, ptr %gmp6355, align 1, !alias.scope !4, !noalias !3
  %wp6357 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6356, ptr %wp6357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064068 word 0x17fffd48
  br label %L_800063588
L_80006406c:
  ; @pc 0x80006406c word 0xb0015ca1
  %wp6358 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34405847040, ptr %wp6358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064070 word 0x91268821
  %r6359.p = getelementptr inbounds i8, ptr %c, i64 8
  %r6359 = load i64, ptr %r6359.p, align 8, !alias.scope !3, !noalias !4
  %t6360 = add i64 %r6359, 2466
  %wp6361 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6360, ptr %wp6361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064074 word 0x9101e3e0
  %r6362.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6362 = load i64, ptr %r6362.p, align 8, !alias.scope !3, !noalias !4
  %t6363 = add i64 %r6362, 120
  %wp6364 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6363, ptr %wp6364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064078 word 0x940305a6
  %wp6365 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148092, ptr %wp6365, align 8, !alias.scope !3, !noalias !4
  call void @f_800125710(ptr %c)
  ; @pc 0x80006407c word 0xf9403fe8
  %r6366.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6366 = load i64, ptr %r6366.p, align 8, !alias.scope !3, !noalias !4
  %t6367 = add i64 %r6366, 120
  %gmp6368 = inttoptr i64 %t6367 to ptr
  %gml6369 = load i64, ptr %gmp6368, align 1, !alias.scope !4, !noalias !3
  %wp6370 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6369, ptr %wp6370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064080 word 0xb98083e9
  %r6371.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6371 = load i64, ptr %r6371.p, align 8, !alias.scope !3, !noalias !4
  %t6372 = add i64 %r6371, 128
  %gmp6373 = inttoptr i64 %t6372 to ptr
  %gml6374 = load i32, ptr %gmp6373, align 1, !alias.scope !4, !noalias !3
  %c6375 = sext i32 %gml6374 to i64
  %wp6376 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6375, ptr %wp6376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064084 word 0x8b080128
  %r6377.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6377 = load i64, ptr %r6377.p, align 8, !alias.scope !3, !noalias !4
  %r6378.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6378 = load i64, ptr %r6378.p, align 8, !alias.scope !3, !noalias !4
  %t6379 = add i64 %r6377, %r6378
  %wp6380 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6379, ptr %wp6380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064088 word 0x381ff11f
  %r6381.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6381 = load i64, ptr %r6381.p, align 8, !alias.scope !3, !noalias !4
  %t6382 = add i64 %r6381, -1
  %c6383 = trunc i32 0 to i8
  %gmp6384 = inttoptr i64 %t6382 to ptr
  store i8 %c6383, ptr %gmp6384, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006408c word 0xf9403fe0
  %r6385.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6385 = load i64, ptr %r6385.p, align 8, !alias.scope !3, !noalias !4
  %t6386 = add i64 %r6385, 120
  %gmp6387 = inttoptr i64 %t6386 to ptr
  %gml6388 = load i64, ptr %gmp6387, align 1, !alias.scope !4, !noalias !3
  %wp6389 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6388, ptr %wp6389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064090 word 0xf9003be0
  %r6390.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6390 = load i64, ptr %r6390.p, align 8, !alias.scope !3, !noalias !4
  %t6391 = add i64 %r6390, 112
  %r6392.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6392 = load i64, ptr %r6392.p, align 8, !alias.scope !3, !noalias !4
  %gmp6393 = inttoptr i64 %t6391 to ptr
  store i64 %r6392, ptr %gmp6393, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064094 word 0x949d8df8
  %wp6394 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148120, ptr %wp6394, align 8, !alias.scope !3, !noalias !4
  call void @f_8027c7874(ptr %c)
  ; @pc 0x800064098 word 0xb9006be0
  %r6395.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6395 = load i64, ptr %r6395.p, align 8, !alias.scope !3, !noalias !4
  %t6396 = add i64 %r6395, 104
  %r6397.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6397 = load i64, ptr %r6397.p, align 8, !alias.scope !3, !noalias !4
  %c6398 = trunc i64 %r6397 to i32
  %gmp6399 = inttoptr i64 %t6396 to ptr
  store i32 %c6398, ptr %gmp6399, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006409c word 0x9001c788
  %wp6400 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419851264, ptr %wp6400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640a0 word 0x9101a3e1
  %r6401.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6401 = load i64, ptr %r6401.p, align 8, !alias.scope !3, !noalias !4
  %t6402 = add i64 %r6401, 104
  %wp6403 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6402, ptr %wp6403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640a4 word 0xf9402508
  %r6404.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6404 = load i64, ptr %r6404.p, align 8, !alias.scope !3, !noalias !4
  %t6405 = add i64 %r6404, 72
  %gmp6406 = inttoptr i64 %t6405 to ptr
  %gml6407 = load i64, ptr %gmp6406, align 1, !alias.scope !4, !noalias !3
  %wp6408 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6407, ptr %wp6408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640a8 word 0xf9400100
  %r6409.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6409 = load i64, ptr %r6409.p, align 8, !alias.scope !3, !noalias !4
  %gmp6410 = inttoptr i64 %r6409 to ptr
  %gml6411 = load i64, ptr %gmp6410, align 1, !alias.scope !4, !noalias !3
  %wp6412 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6411, ptr %wp6412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640ac word 0x949de217
  %wp6413 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148144, ptr %wp6413, align 8, !alias.scope !3, !noalias !4
  call void @f_8027dc908(ptr %c)
  ; @pc 0x8000640b0 word 0xb4ffa7e0
  %r6414.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6414 = load i64, ptr %r6414.p, align 8, !alias.scope !3, !noalias !4
  %cmp6415 = icmp eq i64 %r6414, 0
  br i1 %cmp6415, label %L_8000635ac, label %L_8000640b4_ft
L_8000640e0:
  ; @pc 0x8000640e0 word 0xf0016448
  %wp6448 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406854656, ptr %wp6448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640e4 word 0x1e2e1002
  %wp6449 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 1065353216, ptr %wp6449, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000640e8 word 0xbd43a100
  %r6450.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6450 = load i64, ptr %r6450.p, align 8, !alias.scope !3, !noalias !4
  %t6451 = add i64 %r6450, 928
  %gmp6452 = inttoptr i64 %t6451 to ptr
  %gml6453 = load i32, ptr %gmp6452, align 1, !alias.scope !4, !noalias !3
  %c6454 = zext i32 %gml6453 to i128
  %wp6455 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6454, ptr %wp6455, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000640ec word 0x1e202820
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 1, i32 0)
  ; @pc 0x8000640f0 word 0x1e222000
  %fcmp6456 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 2, i32 0)
  %wp6457 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6456, ptr %wp6457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640f4 word 0xbd0016c0
  %r6458.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6458 = load i64, ptr %r6458.p, align 8, !alias.scope !3, !noalias !4
  %t6459 = add i64 %r6458, 20
  %r6460.p = getelementptr inbounds i8, ptr %c, i64 512
  %r6460 = load i128, ptr %r6460.p, align 16, !alias.scope !3, !noalias !4
  %c6461 = trunc i128 %r6460 to i32
  %gmp6462 = inttoptr i64 %t6459 to ptr
  store i32 %c6461, ptr %gmp6462, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000640f8 word 0x5400008d
  %r6463.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6463 = load i64, ptr %r6463.p, align 8, !alias.scope !3, !noalias !4
  %fsh6465 = lshr i64 %r6463, 30
  %ftr6466 = trunc i64 %fsh6465 to i1
  %fsh6467 = lshr i64 %r6463, 31
  %ftr6468 = trunc i64 %fsh6467 to i1
  %fsh6469 = lshr i64 %r6463, 28
  %ftr6470 = trunc i64 %fsh6469 to i1
  %fnz6471 = xor i1 %ftr6466, true
  %feq6472 = icmp eq i1 %ftr6468, %ftr6470
  %fgt6473 = and i1 %fnz6471, %feq6472
  %cond6464 = xor i1 %fgt6473, true
  br i1 %cond6464, label %L_800064108, label %L_8000640fc_ft
L_800064108:
  ; @pc 0x800064108 word 0x1e202020
  %fcmp6485 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 0)
  %wp6486 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6485, ptr %wp6486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006410c word 0x54000260
  %r6487.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6487 = load i64, ptr %r6487.p, align 8, !alias.scope !3, !noalias !4
  %fsh6489 = lshr i64 %r6487, 30
  %cond6488 = trunc i64 %fsh6489 to i1
  br i1 %cond6488, label %L_800064158, label %L_800064110_ft
L_800064140:
  ; @pc 0x800064140 word 0x1e202008
  %fcmp6527 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp6528 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6527, ptr %wp6528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064144 word 0x540000a8
  %r6529.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6529 = load i64, ptr %r6529.p, align 8, !alias.scope !3, !noalias !4
  %fsh6531 = lshr i64 %r6529, 29
  %ftr6532 = trunc i64 %fsh6531 to i1
  %fsh6533 = lshr i64 %r6529, 30
  %ftr6534 = trunc i64 %fsh6533 to i1
  %fnz6535 = xor i1 %ftr6534, true
  %cond6530 = and i1 %ftr6532, %fnz6535
  br i1 %cond6530, label %L_800064158, label %L_800064148_ft
L_800064158:
  ; @pc 0x800064158 word 0xbd410ac0
  %r6548.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6548 = load i64, ptr %r6548.p, align 8, !alias.scope !3, !noalias !4
  %t6549 = add i64 %r6548, 264
  %gmp6550 = inttoptr i64 %t6549 to ptr
  %gml6551 = load i32, ptr %gmp6550, align 1, !alias.scope !4, !noalias !3
  %c6552 = zext i32 %gml6551 to i128
  %wp6553 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6552, ptr %wp6553, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006415c word 0x1e202900
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 8, i32 0)
  br label %L_800064160
L_800064160:
  ; @pc 0x800064160 word 0x52a85908
  %c6554 = zext i32 1120403456 to i64
  %wp6555 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6554, ptr %wp6555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064164 word 0x1e270101
  %r6556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6556 = load i64, ptr %r6556.p, align 8, !alias.scope !3, !noalias !4
  %c6557 = trunc i64 %r6556 to i32
  %c6558 = zext i32 %c6557 to i128
  %wp6559 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6558, ptr %wp6559, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064168 word 0x1e212000
  %fcmp6560 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp6561 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6560, ptr %wp6561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006416c word 0x540026eb
  %r6562.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6562 = load i64, ptr %r6562.p, align 8, !alias.scope !3, !noalias !4
  %fsh6564 = lshr i64 %r6562, 31
  %ftr6565 = trunc i64 %fsh6564 to i1
  %fsh6566 = lshr i64 %r6562, 28
  %ftr6567 = trunc i64 %fsh6566 to i1
  %cond6563 = icmp ne i1 %ftr6565, %ftr6567
  br i1 %cond6563, label %L_800064648, label %L_800064170_ft
L_800064180:
  ; @pc 0x800064180 word 0x9101e3e2
  %r6574.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6574 = load i64, ptr %r6574.p, align 8, !alias.scope !3, !noalias !4
  %t6575 = add i64 %r6574, 120
  %wp6576 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6575, ptr %wp6576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064184 word 0xaa1603e0
  %r6577.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6577 = load i64, ptr %r6577.p, align 8, !alias.scope !3, !noalias !4
  %t6578 = or i64 0, %r6577
  %wp6579 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6578, ptr %wp6579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064188 word 0x2a1703e1
  %r6580.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6580 = load i64, ptr %r6580.p, align 8, !alias.scope !3, !noalias !4
  %c6581 = trunc i64 %r6580 to i32
  %t6582 = or i32 0, %c6581
  %c6583 = zext i32 %t6582 to i64
  %wp6584 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6583, ptr %wp6584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006418c word 0xd63f0100
  %r6585.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6585 = load i64, ptr %r6585.p, align 8, !alias.scope !3, !noalias !4
  %fp6586 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6585, ptr %fp6586, align 8, !alias.scope !3, !noalias !4
  %wp6587 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148368, ptr %wp6587, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800064190 word 0x2a0003e2
  %r6588.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6588 = load i64, ptr %r6588.p, align 8, !alias.scope !3, !noalias !4
  %c6589 = trunc i64 %r6588 to i32
  %t6590 = or i32 0, %c6589
  %c6591 = zext i32 %t6590 to i64
  %wp6592 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6591, ptr %wp6592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064194 word 0x17fffde5
  br label %L_800063928
L_800064198:
  ; @pc 0x800064198 word 0xaa1603e0
  %r6593.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6593 = load i64, ptr %r6593.p, align 8, !alias.scope !3, !noalias !4
  %t6594 = or i64 0, %r6593
  %wp6595 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6594, ptr %wp6595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006419c word 0x2a1703e1
  %r6596.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6596 = load i64, ptr %r6596.p, align 8, !alias.scope !3, !noalias !4
  %c6597 = trunc i64 %r6596 to i32
  %t6598 = or i32 0, %c6597
  %c6599 = zext i32 %t6598 to i64
  %wp6600 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6599, ptr %wp6600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641a0 word 0xd63f0100
  %r6601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6601 = load i64, ptr %r6601.p, align 8, !alias.scope !3, !noalias !4
  %fp6602 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6601, ptr %fp6602, align 8, !alias.scope !3, !noalias !4
  %wp6603 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148388, ptr %wp6603, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000641a4 word 0x17fffe12
  br label %L_8000639ec
L_8000641a8:
  ; @pc 0x8000641a8 word 0xd0016449
  %wp6604 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406850560, ptr %wp6604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641ac word 0x11000508
  %r6605.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6605 = load i64, ptr %r6605.p, align 8, !alias.scope !3, !noalias !4
  %c6606 = trunc i64 %r6605 to i32
  %t6607 = add i32 %c6606, 1
  %c6608 = zext i32 %t6607 to i64
  %wp6609 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6608, ptr %wp6609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641b0 word 0xbd477520
  %r6610.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6610 = load i64, ptr %r6610.p, align 8, !alias.scope !3, !noalias !4
  %t6611 = add i64 %r6610, 1908
  %gmp6612 = inttoptr i64 %t6611 to ptr
  %gml6613 = load i32, ptr %gmp6612, align 1, !alias.scope !4, !noalias !3
  %c6614 = zext i32 %gml6613 to i128
  %wp6615 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6614, ptr %wp6615, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000641b4 word 0xd0016449
  %wp6616 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406850560, ptr %wp6616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641b8 word 0xbd4c7522
  %r6617.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6617 = load i64, ptr %r6617.p, align 8, !alias.scope !3, !noalias !4
  %t6618 = add i64 %r6617, 3188
  %gmp6619 = inttoptr i64 %t6618 to ptr
  %gml6620 = load i32, ptr %gmp6619, align 1, !alias.scope !4, !noalias !3
  %c6621 = zext i32 %gml6620 to i128
  %wp6622 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6621, ptr %wp6622, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000641bc word 0x1e200820
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 1, i32 0)
  ; @pc 0x8000641c0 word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  br label %L_8000641c4
L_8000641c4:
  ; @pc 0x8000641c4 word 0xb9400ae9
  %r6623.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6623 = load i64, ptr %r6623.p, align 8, !alias.scope !3, !noalias !4
  %t6624 = add i64 %r6623, 8
  %gmp6625 = inttoptr i64 %t6624 to ptr
  %gml6626 = load i32, ptr %gmp6625, align 1, !alias.scope !4, !noalias !3
  %c6627 = zext i32 %gml6626 to i64
  %wp6628 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6627, ptr %wp6628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641c8 word 0x51000529
  %r6629.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6629 = load i64, ptr %r6629.p, align 8, !alias.scope !3, !noalias !4
  %c6630 = trunc i64 %r6629 to i32
  %t6631 = sub i32 %c6630, 1
  %c6632 = zext i32 %t6631 to i64
  %wp6633 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6632, ptr %wp6633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641cc word 0xf9400aeb
  %r6634.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6634 = load i64, ptr %r6634.p, align 8, !alias.scope !3, !noalias !4
  %t6635 = add i64 %r6634, 16
  %gmp6636 = inttoptr i64 %t6635 to ptr
  %gml6637 = load i64, ptr %gmp6636, align 1, !alias.scope !4, !noalias !3
  %wp6638 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6637, ptr %wp6638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641d0 word 0x0a0a012c
  %r6639.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6639 = load i64, ptr %r6639.p, align 8, !alias.scope !3, !noalias !4
  %c6640 = trunc i64 %r6639 to i32
  %r6641.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6641 = load i64, ptr %r6641.p, align 8, !alias.scope !3, !noalias !4
  %c6642 = trunc i64 %r6641 to i32
  %t6643 = and i32 %c6642, %c6640
  %c6644 = zext i32 %t6643 to i64
  %wp6645 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6644, ptr %wp6645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641d4 word 0xf86c5969
  %r6646.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6646 = load i64, ptr %r6646.p, align 8, !alias.scope !3, !noalias !4
  %r6647.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6647 = load i64, ptr %r6647.p, align 8, !alias.scope !3, !noalias !4
  %c6648 = trunc i64 %r6647 to i32
  %c6649 = zext i32 %c6648 to i64
  %t6650 = shl i64 %c6649, 3
  %t6651 = add i64 %r6646, %t6650
  %gmp6652 = inttoptr i64 %t6651 to ptr
  %gml6653 = load i64, ptr %gmp6652, align 1, !alias.scope !4, !noalias !3
  %wp6654 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6653, ptr %wp6654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641d8 word 0xb4ffc4c9
  %r6655.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6655 = load i64, ptr %r6655.p, align 8, !alias.scope !3, !noalias !4
  %cmp6656 = icmp eq i64 %r6655, 0
  br i1 %cmp6656, label %L_800063a70, label %L_8000641dc_ft
L_800064224:
  ; @pc 0x800064224 word 0xbd004524
  %r6740.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6740 = load i64, ptr %r6740.p, align 8, !alias.scope !3, !noalias !4
  %t6741 = add i64 %r6740, 68
  %r6742.p = getelementptr inbounds i8, ptr %c, i64 576
  %r6742 = load i128, ptr %r6742.p, align 16, !alias.scope !3, !noalias !4
  %c6743 = trunc i128 %r6742 to i32
  %gmp6744 = inttoptr i64 %t6741 to ptr
  store i32 %c6743, ptr %gmp6744, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064228 word 0x14000020
  br label %L_8000642a8
L_80006422c:
  ; @pc 0x80006422c word 0xb9401ae9
  %r6745.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6745 = load i64, ptr %r6745.p, align 8, !alias.scope !3, !noalias !4
  %t6746 = add i64 %r6745, 24
  %gmp6747 = inttoptr i64 %t6746 to ptr
  %gml6748 = load i32, ptr %gmp6747, align 1, !alias.scope !4, !noalias !3
  %c6749 = zext i32 %gml6748 to i64
  %wp6750 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6749, ptr %wp6750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064230 word 0x4b0a0129
  %r6751.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6751 = load i64, ptr %r6751.p, align 8, !alias.scope !3, !noalias !4
  %c6752 = trunc i64 %r6751 to i32
  %r6753.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6753 = load i64, ptr %r6753.p, align 8, !alias.scope !3, !noalias !4
  %c6754 = trunc i64 %r6753 to i32
  %t6755 = sub i32 %c6752, %c6754
  %c6756 = zext i32 %t6755 to i64
  %wp6757 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6756, ptr %wp6757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064234 word 0x7100053f
  %r6758.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6758 = load i64, ptr %r6758.p, align 8, !alias.scope !3, !noalias !4
  %c6759 = trunc i64 %r6758 to i32
  %t6760 = sub i32 %c6759, 1
  %fn6761 = icmp slt i32 %t6760, 0
  %fz6762 = icmp eq i32 %t6760, 0
  %fc6763 = icmp uge i32 %c6759, 1
  %fx16764 = xor i32 %c6759, 1
  %fx26765 = xor i32 %c6759, %t6760
  %fva6766 = and i32 %fx16764, %fx26765
  %fv6767 = icmp slt i32 %fva6766, 0
  %nz6768 = zext i1 %fn6761 to i64
  %zz6769 = zext i1 %fz6762 to i64
  %cz6770 = zext i1 %fc6763 to i64
  %vz6771 = zext i1 %fv6767 to i64
  %ns6772 = shl i64 %nz6768, 31
  %zs6773 = shl i64 %zz6769, 30
  %cs6774 = shl i64 %cz6770, 29
  %vs6775 = shl i64 %vz6771, 28
  %nzor6776 = or i64 %ns6772, %zs6773
  %cvor6777 = or i64 %cs6774, %vs6775
  %nzcv6778 = or i64 %nzor6776, %cvor6777
  %wp6779 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6778, ptr %wp6779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064238 word 0x54ffc1cb
  %r6780.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6780 = load i64, ptr %r6780.p, align 8, !alias.scope !3, !noalias !4
  %fsh6782 = lshr i64 %r6780, 31
  %ftr6783 = trunc i64 %fsh6782 to i1
  %fsh6784 = lshr i64 %r6780, 28
  %ftr6785 = trunc i64 %fsh6784 to i1
  %cond6781 = icmp ne i1 %ftr6783, %ftr6785
  br i1 %cond6781, label %L_800063a70, label %L_80006423c_ft
L_800064240:
  ; @pc 0x800064240 word 0xbd404522
  %r6786.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6786 = load i64, ptr %r6786.p, align 8, !alias.scope !3, !noalias !4
  %t6787 = add i64 %r6786, 68
  %gmp6788 = inttoptr i64 %t6787 to ptr
  %gml6789 = load i32, ptr %gmp6788, align 1, !alias.scope !4, !noalias !3
  %c6790 = zext i32 %gml6789 to i128
  %wp6791 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6790, ptr %wp6791, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064244 word 0x1e202048
  %fcmp6792 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 0, i32 1)
  %wp6793 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6792, ptr %wp6793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064248 word 0x54000205
  %r6794.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6794 = load i64, ptr %r6794.p, align 8, !alias.scope !3, !noalias !4
  %fsh6796 = lshr i64 %r6794, 31
  %ftr6797 = trunc i64 %fsh6796 to i1
  %cond6795 = xor i1 %ftr6797, true
  br i1 %cond6795, label %L_800064288, label %L_80006424c_ft
L_80006425c:
  ; @pc 0x80006425c word 0xbd004523
  %r6812.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6812 = load i64, ptr %r6812.p, align 8, !alias.scope !3, !noalias !4
  %t6813 = add i64 %r6812, 68
  %r6814.p = getelementptr inbounds i8, ptr %c, i64 560
  %r6814 = load i128, ptr %r6814.p, align 16, !alias.scope !3, !noalias !4
  %c6815 = trunc i128 %r6814 to i32
  %gmp6816 = inttoptr i64 %t6813 to ptr
  store i32 %c6815, ptr %gmp6816, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064260 word 0x14000012
  br label %L_8000642a8
L_800064264:
  ; @pc 0x800064264 word 0x540000ed
  %r6817.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6817 = load i64, ptr %r6817.p, align 8, !alias.scope !3, !noalias !4
  %fsh6819 = lshr i64 %r6817, 30
  %ftr6820 = trunc i64 %fsh6819 to i1
  %fsh6821 = lshr i64 %r6817, 31
  %ftr6822 = trunc i64 %fsh6821 to i1
  %fsh6823 = lshr i64 %r6817, 28
  %ftr6824 = trunc i64 %fsh6823 to i1
  %fnz6825 = xor i1 %ftr6820, true
  %feq6826 = icmp eq i1 %ftr6822, %ftr6824
  %fgt6827 = and i1 %fnz6825, %feq6826
  %cond6818 = xor i1 %fgt6827, true
  br i1 %cond6818, label %L_800064280, label %L_800064268_ft
L_800064278:
  ; @pc 0x800064278 word 0x52a7f00b
  %c6844 = zext i32 1065353216 to i64
  %wp6845 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6844, ptr %wp6845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006427c word 0xb900452b
  %r6846.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6846 = load i64, ptr %r6846.p, align 8, !alias.scope !3, !noalias !4
  %t6847 = add i64 %r6846, 68
  %r6848.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6848 = load i64, ptr %r6848.p, align 8, !alias.scope !3, !noalias !4
  %c6849 = trunc i64 %r6848 to i32
  %gmp6850 = inttoptr i64 %t6847 to ptr
  store i32 %c6849, ptr %gmp6850, align 1, !alias.scope !4, !noalias !3
  br label %L_800064280
L_800064280:
  ; @pc 0x800064280 word 0x121e794a
  %r6851.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6851 = load i64, ptr %r6851.p, align 8, !alias.scope !3, !noalias !4
  %c6852 = trunc i64 %r6851 to i32
  %t6853 = and i32 %c6852, -3
  %c6854 = zext i32 %t6853 to i64
  %wp6855 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6854, ptr %wp6855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064284 word 0x14000008
  br label %L_8000642a4
L_800064288:
  ; @pc 0x800064288 word 0x540000cd
  %r6856.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6856 = load i64, ptr %r6856.p, align 8, !alias.scope !3, !noalias !4
  %fsh6858 = lshr i64 %r6856, 30
  %ftr6859 = trunc i64 %fsh6858 to i1
  %fsh6860 = lshr i64 %r6856, 31
  %ftr6861 = trunc i64 %fsh6860 to i1
  %fsh6862 = lshr i64 %r6856, 28
  %ftr6863 = trunc i64 %fsh6862 to i1
  %fnz6864 = xor i1 %ftr6859, true
  %feq6865 = icmp eq i1 %ftr6861, %ftr6863
  %fgt6866 = and i1 %fnz6864, %feq6865
  %cond6857 = xor i1 %fgt6866, true
  br i1 %cond6857, label %L_8000642a0, label %L_80006428c_ft
L_80006429c:
  ; @pc 0x80006429c word 0xb900453f
  %r6883.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6883 = load i64, ptr %r6883.p, align 8, !alias.scope !3, !noalias !4
  %t6884 = add i64 %r6883, 68
  %gmp6885 = inttoptr i64 %t6884 to ptr
  store i32 0, ptr %gmp6885, align 1, !alias.scope !4, !noalias !3
  br label %L_8000642a0
L_8000642a0:
  ; @pc 0x8000642a0 word 0x121d114a
  %r6886.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6886 = load i64, ptr %r6886.p, align 8, !alias.scope !3, !noalias !4
  %c6887 = trunc i64 %r6886 to i32
  %t6888 = and i32 %c6887, 248
  %c6889 = zext i32 %t6888 to i64
  %wp6890 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6889, ptr %wp6890, align 8, !alias.scope !3, !noalias !4
  br label %L_8000642a4
L_8000642a4:
  ; @pc 0x8000642a4 word 0x3901212a
  %r6891.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6891 = load i64, ptr %r6891.p, align 8, !alias.scope !3, !noalias !4
  %t6892 = add i64 %r6891, 72
  %r6893.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6893 = load i64, ptr %r6893.p, align 8, !alias.scope !3, !noalias !4
  %c6894 = trunc i64 %r6893 to i32
  %c6895 = trunc i32 %c6894 to i8
  %gmp6896 = inttoptr i64 %t6892 to ptr
  store i8 %c6895, ptr %gmp6896, align 1, !alias.scope !4, !noalias !3
  br label %L_8000642a8
L_8000642a8:
  ; @pc 0x8000642a8 word 0x3700018a
  %r6897.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6897 = load i64, ptr %r6897.p, align 8, !alias.scope !3, !noalias !4
  %t6898 = and i64 %r6897, 1
  %cmp6899 = icmp ne i64 %t6898, 0
  br i1 %cmp6899, label %L_8000642d8, label %L_8000642ac_ft
L_8000642d8:
  ; @pc 0x8000642d8 word 0x29442eea
  %r6979.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6979 = load i64, ptr %r6979.p, align 8, !alias.scope !3, !noalias !4
  %t6980 = add i64 %r6979, 32
  %t6981 = add i64 %t6980, 4
  %gmp6982 = inttoptr i64 %t6980 to ptr
  %gml6983 = load i32, ptr %gmp6982, align 1, !alias.scope !4, !noalias !3
  %c6984 = zext i32 %gml6983 to i64
  %gmp6985 = inttoptr i64 %t6981 to ptr
  %gml6986 = load i32, ptr %gmp6985, align 1, !alias.scope !4, !noalias !3
  %c6987 = zext i32 %gml6986 to i64
  %wp6988 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6984, ptr %wp6988, align 8, !alias.scope !3, !noalias !4
  %wp6989 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6987, ptr %wp6989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642dc word 0x93407d4a
  %r6990.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6990 = load i64, ptr %r6990.p, align 8, !alias.scope !3, !noalias !4
  %t6991 = lshr i64 %r6990, 31
  %t6992 = and i64 %t6991, 1
  %t6993 = sub i64 0, %t6992
  %t6994 = and i64 %t6993, -4294967296
  %t6995 = and i64 %r6990, 4294967295
  %t6996 = or i64 %t6994, %t6995
  %wp6997 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6996, ptr %wp6997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642e0 word 0x6b0b015f
  %r6998.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6998 = load i64, ptr %r6998.p, align 8, !alias.scope !3, !noalias !4
  %c6999 = trunc i64 %r6998 to i32
  %r7000.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7000 = load i64, ptr %r7000.p, align 8, !alias.scope !3, !noalias !4
  %c7001 = trunc i64 %r7000 to i32
  %t7002 = sub i32 %c6999, %c7001
  %fn7003 = icmp slt i32 %t7002, 0
  %fz7004 = icmp eq i32 %t7002, 0
  %fc7005 = icmp uge i32 %c6999, %c7001
  %fx17006 = xor i32 %c6999, %c7001
  %fx27007 = xor i32 %c6999, %t7002
  %fva7008 = and i32 %fx17006, %fx27007
  %fv7009 = icmp slt i32 %fva7008, 0
  %nz7010 = zext i1 %fn7003 to i64
  %zz7011 = zext i1 %fz7004 to i64
  %cz7012 = zext i1 %fc7005 to i64
  %vz7013 = zext i1 %fv7009 to i64
  %ns7014 = shl i64 %nz7010, 31
  %zs7015 = shl i64 %zz7011, 30
  %cs7016 = shl i64 %cz7012, 29
  %vs7017 = shl i64 %vz7013, 28
  %nzor7018 = or i64 %ns7014, %zs7015
  %cvor7019 = or i64 %cs7016, %vs7017
  %nzcv7020 = or i64 %nzor7018, %cvor7019
  %wp7021 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7020, ptr %wp7021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642e4 word 0x540000ca
  %r7022.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7022 = load i64, ptr %r7022.p, align 8, !alias.scope !3, !noalias !4
  %fsh7024 = lshr i64 %r7022, 31
  %ftr7025 = trunc i64 %fsh7024 to i1
  %fsh7026 = lshr i64 %r7022, 28
  %ftr7027 = trunc i64 %fsh7026 to i1
  %cond7023 = icmp eq i1 %ftr7025, %ftr7027
  br i1 %cond7023, label %L_8000642fc, label %L_8000642e8_ft
L_8000642fc:
  ; @pc 0x8000642fc word 0xb9401eea
  %r7055.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7055 = load i64, ptr %r7055.p, align 8, !alias.scope !3, !noalias !4
  %t7056 = add i64 %r7055, 28
  %gmp7057 = inttoptr i64 %t7056 to ptr
  %gml7058 = load i32, ptr %gmp7057, align 1, !alias.scope !4, !noalias !3
  %c7059 = zext i32 %gml7058 to i64
  %wp7060 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7059, ptr %wp7060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064300 word 0xb9401ae9
  %r7061.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7061 = load i64, ptr %r7061.p, align 8, !alias.scope !3, !noalias !4
  %t7062 = add i64 %r7061, 24
  %gmp7063 = inttoptr i64 %t7062 to ptr
  %gml7064 = load i32, ptr %gmp7063, align 1, !alias.scope !4, !noalias !3
  %c7065 = zext i32 %gml7064 to i64
  %wp7066 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7065, ptr %wp7066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064304 word 0x4b0a0129
  %r7067.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7067 = load i64, ptr %r7067.p, align 8, !alias.scope !3, !noalias !4
  %c7068 = trunc i64 %r7067 to i32
  %r7069.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7069 = load i64, ptr %r7069.p, align 8, !alias.scope !3, !noalias !4
  %c7070 = trunc i64 %r7069 to i32
  %t7071 = sub i32 %c7068, %c7070
  %c7072 = zext i32 %t7071 to i64
  %wp7073 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7072, ptr %wp7073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064308 word 0x7100013f
  %r7074.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7074 = load i64, ptr %r7074.p, align 8, !alias.scope !3, !noalias !4
  %c7075 = trunc i64 %r7074 to i32
  %t7076 = sub i32 %c7075, 0
  %fn7077 = icmp slt i32 %t7076, 0
  %fz7078 = icmp eq i32 %t7076, 0
  %fc7079 = icmp uge i32 %c7075, 0
  %fx17080 = xor i32 %c7075, 0
  %fx27081 = xor i32 %c7075, %t7076
  %fva7082 = and i32 %fx17080, %fx27081
  %fv7083 = icmp slt i32 %fva7082, 0
  %nz7084 = zext i1 %fn7077 to i64
  %zz7085 = zext i1 %fz7078 to i64
  %cz7086 = zext i1 %fc7079 to i64
  %vz7087 = zext i1 %fv7083 to i64
  %ns7088 = shl i64 %nz7084, 31
  %zs7089 = shl i64 %zz7085, 30
  %cs7090 = shl i64 %cz7086, 29
  %vs7091 = shl i64 %vz7087, 28
  %nzor7092 = or i64 %ns7088, %zs7089
  %cvor7093 = or i64 %cs7090, %vs7091
  %nzcv7094 = or i64 %nzor7092, %cvor7093
  %wp7095 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7094, ptr %wp7095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006430c word 0x54ffbb2d
  %r7096.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7096 = load i64, ptr %r7096.p, align 8, !alias.scope !3, !noalias !4
  %fsh7098 = lshr i64 %r7096, 30
  %ftr7099 = trunc i64 %fsh7098 to i1
  %fsh7100 = lshr i64 %r7096, 31
  %ftr7101 = trunc i64 %fsh7100 to i1
  %fsh7102 = lshr i64 %r7096, 28
  %ftr7103 = trunc i64 %fsh7102 to i1
  %fnz7104 = xor i1 %ftr7099, true
  %feq7105 = icmp eq i1 %ftr7101, %ftr7103
  %fgt7106 = and i1 %fnz7104, %feq7105
  %cond7097 = xor i1 %fgt7106, true
  br i1 %cond7097, label %L_800063a70, label %L_800064310_ft
L_800064314:
  ; @pc 0x800064314 word 0xd341fd09
  %r7107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7107 = load i64, ptr %r7107.p, align 8, !alias.scope !3, !noalias !4
  %ror7108 = call i64 @llvm.fshr.i64(i64 %r7107, i64 %r7107, i64 1)
  %t7109 = and i64 %ror7108, 9223372036854775807
  %wp7110 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7109, ptr %wp7110, align 8, !alias.scope !3, !noalias !4
  br label %L_800064318
L_800064318:
  ; @pc 0x800064318 word 0xd100052a
  %r7111.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7111 = load i64, ptr %r7111.p, align 8, !alias.scope !3, !noalias !4
  %t7112 = sub i64 %r7111, 1
  %wp7113 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t7112, ptr %wp7113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006431c word 0x531f792e
  %r7114.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7114 = load i64, ptr %r7114.p, align 8, !alias.scope !3, !noalias !4
  %c7115 = trunc i64 %r7114 to i32
  %ror7116 = call i32 @llvm.fshr.i32(i32 %c7115, i32 %c7115, i32 31)
  %t7117 = and i32 %ror7116, -2
  %c7118 = zext i32 %t7117 to i64
  %wp7119 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7118, ptr %wp7119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064320 word 0x6b0801df
  %r7120.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7120 = load i64, ptr %r7120.p, align 8, !alias.scope !3, !noalias !4
  %c7121 = trunc i64 %r7120 to i32
  %r7122.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7122 = load i64, ptr %r7122.p, align 8, !alias.scope !3, !noalias !4
  %c7123 = trunc i64 %r7122 to i32
  %t7124 = sub i32 %c7121, %c7123
  %fn7125 = icmp slt i32 %t7124, 0
  %fz7126 = icmp eq i32 %t7124, 0
  %fc7127 = icmp uge i32 %c7121, %c7123
  %fx17128 = xor i32 %c7121, %c7123
  %fx27129 = xor i32 %c7121, %t7124
  %fva7130 = and i32 %fx17128, %fx27129
  %fv7131 = icmp slt i32 %fva7130, 0
  %nz7132 = zext i1 %fn7125 to i64
  %zz7133 = zext i1 %fz7126 to i64
  %cz7134 = zext i1 %fc7127 to i64
  %vz7135 = zext i1 %fv7131 to i64
  %ns7136 = shl i64 %nz7132, 31
  %zs7137 = shl i64 %zz7133, 30
  %cs7138 = shl i64 %cz7134, 29
  %vs7139 = shl i64 %vz7135, 28
  %nzor7140 = or i64 %ns7136, %zs7137
  %cvor7141 = or i64 %cs7138, %vs7139
  %nzcv7142 = or i64 %nzor7140, %cvor7141
  %wp7143 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7142, ptr %wp7143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064324 word 0xf86a5aab
  %r7144.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7144 = load i64, ptr %r7144.p, align 8, !alias.scope !3, !noalias !4
  %r7145.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7145 = load i64, ptr %r7145.p, align 8, !alias.scope !3, !noalias !4
  %c7146 = trunc i64 %r7145 to i32
  %c7147 = zext i32 %c7146 to i64
  %t7148 = shl i64 %c7147, 3
  %t7149 = add i64 %r7144, %t7148
  %gmp7150 = inttoptr i64 %t7149 to ptr
  %gml7151 = load i64, ptr %gmp7150, align 1, !alias.scope !4, !noalias !3
  %wp7152 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml7151, ptr %wp7152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064328 word 0x5400006d
  %r7153.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7153 = load i64, ptr %r7153.p, align 8, !alias.scope !3, !noalias !4
  %fsh7155 = lshr i64 %r7153, 30
  %ftr7156 = trunc i64 %fsh7155 to i1
  %fsh7157 = lshr i64 %r7153, 31
  %ftr7158 = trunc i64 %fsh7157 to i1
  %fsh7159 = lshr i64 %r7153, 28
  %ftr7160 = trunc i64 %fsh7159 to i1
  %fnz7161 = xor i1 %ftr7156, true
  %feq7162 = icmp eq i1 %ftr7158, %ftr7160
  %fgt7163 = and i1 %fnz7161, %feq7162
  %cond7154 = xor i1 %fgt7163, true
  br i1 %cond7154, label %L_800064334, label %L_80006432c_ft
L_800064334:
  ; @pc 0x800064334 word 0x2a0903ec
  %r7169.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7169 = load i64, ptr %r7169.p, align 8, !alias.scope !3, !noalias !4
  %c7170 = trunc i64 %r7169 to i32
  %t7171 = or i32 0, %c7170
  %c7172 = zext i32 %t7171 to i64
  %wp7173 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7172, ptr %wp7173, align 8, !alias.scope !3, !noalias !4
  br label %L_800064338
L_800064338:
  ; @pc 0x800064338 word 0x6b0801df
  %r7174.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7174 = load i64, ptr %r7174.p, align 8, !alias.scope !3, !noalias !4
  %c7175 = trunc i64 %r7174 to i32
  %r7176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7176 = load i64, ptr %r7176.p, align 8, !alias.scope !3, !noalias !4
  %c7177 = trunc i64 %r7176 to i32
  %t7178 = sub i32 %c7175, %c7177
  %fn7179 = icmp slt i32 %t7178, 0
  %fz7180 = icmp eq i32 %t7178, 0
  %fc7181 = icmp uge i32 %c7175, %c7177
  %fx17182 = xor i32 %c7175, %c7177
  %fx27183 = xor i32 %c7175, %t7178
  %fva7184 = and i32 %fx17182, %fx27183
  %fv7185 = icmp slt i32 %fva7184, 0
  %nz7186 = zext i1 %fn7179 to i64
  %zz7187 = zext i1 %fz7180 to i64
  %cz7188 = zext i1 %fc7181 to i64
  %vz7189 = zext i1 %fv7185 to i64
  %ns7190 = shl i64 %nz7186, 31
  %zs7191 = shl i64 %zz7187, 30
  %cs7192 = shl i64 %cz7188, 29
  %vs7193 = shl i64 %vz7189, 28
  %nzor7194 = or i64 %ns7190, %zs7191
  %cvor7195 = or i64 %cs7192, %vs7193
  %nzcv7196 = or i64 %nzor7194, %cvor7195
  %wp7197 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7196, ptr %wp7197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006433c word 0x5400012a
  %r7198.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7198 = load i64, ptr %r7198.p, align 8, !alias.scope !3, !noalias !4
  %fsh7200 = lshr i64 %r7198, 31
  %ftr7201 = trunc i64 %fsh7200 to i1
  %fsh7202 = lshr i64 %r7198, 28
  %ftr7203 = trunc i64 %fsh7202 to i1
  %cond7199 = icmp eq i1 %ftr7201, %ftr7203
  br i1 %cond7199, label %L_800064360, label %L_800064340_ft
L_800064360:
  ; @pc 0x800064360 word 0x2a0e03ed
  %r7273.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7273 = load i64, ptr %r7273.p, align 8, !alias.scope !3, !noalias !4
  %c7274 = trunc i64 %r7273 to i32
  %t7275 = or i32 0, %c7274
  %c7276 = zext i32 %t7275 to i64
  %wp7277 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7276, ptr %wp7277, align 8, !alias.scope !3, !noalias !4
  br label %L_800064364
L_800064364:
  ; @pc 0x800064364 word 0x510005ae
  %r7278.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7278 = load i64, ptr %r7278.p, align 8, !alias.scope !3, !noalias !4
  %c7279 = trunc i64 %r7278 to i32
  %t7280 = sub i32 %c7279, 1
  %c7281 = zext i32 %t7280 to i64
  %wp7282 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7281, ptr %wp7282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064368 word 0xb9403d6f
  %r7283.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7283 = load i64, ptr %r7283.p, align 8, !alias.scope !3, !noalias !4
  %t7284 = add i64 %r7283, 60
  %gmp7285 = inttoptr i64 %t7284 to ptr
  %gml7286 = load i32, ptr %gmp7285, align 1, !alias.scope !4, !noalias !3
  %c7287 = zext i32 %gml7286 to i64
  %wp7288 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c7287, ptr %wp7288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006436c word 0xf86edaae
  %r7289.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7289 = load i64, ptr %r7289.p, align 8, !alias.scope !3, !noalias !4
  %r7290.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7290 = load i64, ptr %r7290.p, align 8, !alias.scope !3, !noalias !4
  %c7291 = trunc i64 %r7290 to i32
  %c7292 = sext i32 %c7291 to i64
  %t7293 = shl i64 %c7292, 3
  %t7294 = add i64 %r7289, %t7293
  %gmp7295 = inttoptr i64 %t7294 to ptr
  %gml7296 = load i64, ptr %gmp7295, align 1, !alias.scope !4, !noalias !3
  %wp7297 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml7296, ptr %wp7297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064370 word 0xb9403dd0
  %r7298.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7298 = load i64, ptr %r7298.p, align 8, !alias.scope !3, !noalias !4
  %t7299 = add i64 %r7298, 60
  %gmp7300 = inttoptr i64 %t7299 to ptr
  %gml7301 = load i32, ptr %gmp7300, align 1, !alias.scope !4, !noalias !3
  %c7302 = zext i32 %gml7301 to i64
  %wp7303 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7302, ptr %wp7303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064374 word 0x6b1001ff
  %r7304.p = getelementptr inbounds i8, ptr %c, i64 120
  %r7304 = load i64, ptr %r7304.p, align 8, !alias.scope !3, !noalias !4
  %c7305 = trunc i64 %r7304 to i32
  %r7306.p = getelementptr inbounds i8, ptr %c, i64 128
  %r7306 = load i64, ptr %r7306.p, align 8, !alias.scope !3, !noalias !4
  %c7307 = trunc i64 %r7306 to i32
  %t7308 = sub i32 %c7305, %c7307
  %fn7309 = icmp slt i32 %t7308, 0
  %fz7310 = icmp eq i32 %t7308, 0
  %fc7311 = icmp uge i32 %c7305, %c7307
  %fx17312 = xor i32 %c7305, %c7307
  %fx27313 = xor i32 %c7305, %t7308
  %fva7314 = and i32 %fx17312, %fx27313
  %fv7315 = icmp slt i32 %fva7314, 0
  %nz7316 = zext i1 %fn7309 to i64
  %zz7317 = zext i1 %fz7310 to i64
  %cz7318 = zext i1 %fc7311 to i64
  %vz7319 = zext i1 %fv7315 to i64
  %ns7320 = shl i64 %nz7316, 31
  %zs7321 = shl i64 %zz7317, 30
  %cs7322 = shl i64 %cz7318, 29
  %vs7323 = shl i64 %vz7319, 28
  %nzor7324 = or i64 %ns7320, %zs7321
  %cvor7325 = or i64 %cs7322, %vs7323
  %nzcv7326 = or i64 %nzor7324, %cvor7325
  %wp7327 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7326, ptr %wp7327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064378 word 0x5400010a
  %r7328.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7328 = load i64, ptr %r7328.p, align 8, !alias.scope !3, !noalias !4
  %fsh7330 = lshr i64 %r7328, 31
  %ftr7331 = trunc i64 %fsh7330 to i1
  %fsh7332 = lshr i64 %r7328, 28
  %ftr7333 = trunc i64 %fsh7332 to i1
  %cond7329 = icmp eq i1 %ftr7331, %ftr7333
  br i1 %cond7329, label %L_800064398, label %L_80006437c_ft
L_800064398:
  ; @pc 0x800064398 word 0x2a0c03ed
  %r7393.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7393 = load i64, ptr %r7393.p, align 8, !alias.scope !3, !noalias !4
  %c7394 = trunc i64 %r7393 to i32
  %t7395 = or i32 0, %c7394
  %c7396 = zext i32 %t7395 to i64
  %wp7397 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7396, ptr %wp7397, align 8, !alias.scope !3, !noalias !4
  br label %L_80006439c
L_80006439c:
  ; @pc 0x80006439c word 0x510005ac
  %r7398.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7398 = load i64, ptr %r7398.p, align 8, !alias.scope !3, !noalias !4
  %c7399 = trunc i64 %r7398 to i32
  %t7400 = sub i32 %c7399, 1
  %c7401 = zext i32 %t7400 to i64
  %wp7402 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7401, ptr %wp7402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643a0 word 0xf100053f
  %r7403.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7403 = load i64, ptr %r7403.p, align 8, !alias.scope !3, !noalias !4
  %t7404 = sub i64 %r7403, 1
  %fn7405 = icmp slt i64 %t7404, 0
  %fz7406 = icmp eq i64 %t7404, 0
  %fc7407 = icmp uge i64 %r7403, 1
  %fx17408 = xor i64 %r7403, 1
  %fx27409 = xor i64 %r7403, %t7404
  %fva7410 = and i64 %fx17408, %fx27409
  %fv7411 = icmp slt i64 %fva7410, 0
  %nz7412 = zext i1 %fn7405 to i64
  %zz7413 = zext i1 %fz7406 to i64
  %cz7414 = zext i1 %fc7407 to i64
  %vz7415 = zext i1 %fv7411 to i64
  %ns7416 = shl i64 %nz7412, 31
  %zs7417 = shl i64 %zz7413, 30
  %cs7418 = shl i64 %cz7414, 29
  %vs7419 = shl i64 %vz7415, 28
  %nzor7420 = or i64 %ns7416, %zs7417
  %cvor7421 = or i64 %cs7418, %vs7419
  %nzcv7422 = or i64 %nzor7420, %cvor7421
  %wp7423 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7422, ptr %wp7423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643a4 word 0xaa0a03e9
  %r7424.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7424 = load i64, ptr %r7424.p, align 8, !alias.scope !3, !noalias !4
  %t7425 = or i64 0, %r7424
  %wp7426 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7425, ptr %wp7426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643a8 word 0xf82cdaab
  %r7427.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7427 = load i64, ptr %r7427.p, align 8, !alias.scope !3, !noalias !4
  %r7428.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7428 = load i64, ptr %r7428.p, align 8, !alias.scope !3, !noalias !4
  %c7429 = trunc i64 %r7428 to i32
  %c7430 = sext i32 %c7429 to i64
  %t7431 = shl i64 %c7430, 3
  %t7432 = add i64 %r7427, %t7431
  %r7433.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7433 = load i64, ptr %r7433.p, align 8, !alias.scope !3, !noalias !4
  %gmp7434 = inttoptr i64 %t7432 to ptr
  store i64 %r7433, ptr %gmp7434, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000643ac word 0x54fffb6c
  %r7435.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7435 = load i64, ptr %r7435.p, align 8, !alias.scope !3, !noalias !4
  %fsh7437 = lshr i64 %r7435, 30
  %ftr7438 = trunc i64 %fsh7437 to i1
  %fsh7439 = lshr i64 %r7435, 31
  %ftr7440 = trunc i64 %fsh7439 to i1
  %fsh7441 = lshr i64 %r7435, 28
  %ftr7442 = trunc i64 %fsh7441 to i1
  %fnz7443 = xor i1 %ftr7438, true
  %feq7444 = icmp eq i1 %ftr7440, %ftr7442
  %cond7436 = and i1 %fnz7443, %feq7444
  br i1 %cond7436, label %L_800064318, label %L_8000643b0_ft
L_8000643c8:
  ; @pc 0x8000643c8 word 0xaa0803ea
  %r7495.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7495 = load i64, ptr %r7495.p, align 8, !alias.scope !3, !noalias !4
  %t7496 = or i64 0, %r7495
  %wp7497 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t7496, ptr %wp7497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643cc word 0xaa0b03e8
  %r7498.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7498 = load i64, ptr %r7498.p, align 8, !alias.scope !3, !noalias !4
  %t7499 = or i64 0, %r7498
  %wp7500 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7499, ptr %wp7500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643d0 word 0x5280002b
  %c7501 = zext i32 1 to i64
  %wp7502 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7501, ptr %wp7502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643d4 word 0x5280004c
  %c7503 = zext i32 2 to i64
  %wp7504 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7503, ptr %wp7504, align 8, !alias.scope !3, !noalias !4
  br label %L_8000643d8
L_8000643d8:
  ; @pc 0x8000643d8 word 0x6b08019f
  %r7505.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7505 = load i64, ptr %r7505.p, align 8, !alias.scope !3, !noalias !4
  %c7506 = trunc i64 %r7505 to i32
  %r7507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7507 = load i64, ptr %r7507.p, align 8, !alias.scope !3, !noalias !4
  %c7508 = trunc i64 %r7507 to i32
  %t7509 = sub i32 %c7506, %c7508
  %fn7510 = icmp slt i32 %t7509, 0
  %fz7511 = icmp eq i32 %t7509, 0
  %fc7512 = icmp uge i32 %c7506, %c7508
  %fx17513 = xor i32 %c7506, %c7508
  %fx27514 = xor i32 %c7506, %t7509
  %fva7515 = and i32 %fx17513, %fx27514
  %fv7516 = icmp slt i32 %fva7515, 0
  %nz7517 = zext i1 %fn7510 to i64
  %zz7518 = zext i1 %fz7511 to i64
  %cz7519 = zext i1 %fc7512 to i64
  %vz7520 = zext i1 %fv7516 to i64
  %ns7521 = shl i64 %nz7517, 31
  %zs7522 = shl i64 %zz7518, 30
  %cs7523 = shl i64 %cz7519, 29
  %vs7524 = shl i64 %vz7520, 28
  %nzor7525 = or i64 %ns7521, %zs7522
  %cvor7526 = or i64 %cs7523, %vs7524
  %nzcv7527 = or i64 %nzor7525, %cvor7526
  %wp7528 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7527, ptr %wp7528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643dc word 0x5400012a
  %r7529.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7529 = load i64, ptr %r7529.p, align 8, !alias.scope !3, !noalias !4
  %fsh7531 = lshr i64 %r7529, 31
  %ftr7532 = trunc i64 %fsh7531 to i1
  %fsh7533 = lshr i64 %r7529, 28
  %ftr7534 = trunc i64 %fsh7533 to i1
  %cond7530 = icmp eq i1 %ftr7532, %ftr7534
  br i1 %cond7530, label %L_800064400, label %L_8000643e0_ft
L_800064400:
  ; @pc 0x800064400 word 0x2a0c03ed
  %r7604.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7604 = load i64, ptr %r7604.p, align 8, !alias.scope !3, !noalias !4
  %c7605 = trunc i64 %r7604 to i32
  %t7606 = or i32 0, %c7605
  %c7607 = zext i32 %t7606 to i64
  %wp7608 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7607, ptr %wp7608, align 8, !alias.scope !3, !noalias !4
  br label %L_800064404
L_800064404:
  ; @pc 0x800064404 word 0x510005ae
  %r7609.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7609 = load i64, ptr %r7609.p, align 8, !alias.scope !3, !noalias !4
  %c7610 = trunc i64 %r7609 to i32
  %t7611 = sub i32 %c7610, 1
  %c7612 = zext i32 %t7611 to i64
  %wp7613 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7612, ptr %wp7613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064408 word 0xb9403d2f
  %r7614.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7614 = load i64, ptr %r7614.p, align 8, !alias.scope !3, !noalias !4
  %t7615 = add i64 %r7614, 60
  %gmp7616 = inttoptr i64 %t7615 to ptr
  %gml7617 = load i32, ptr %gmp7616, align 1, !alias.scope !4, !noalias !3
  %c7618 = zext i32 %gml7617 to i64
  %wp7619 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c7618, ptr %wp7619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006440c word 0x5100056b
  %r7620.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7620 = load i64, ptr %r7620.p, align 8, !alias.scope !3, !noalias !4
  %c7621 = trunc i64 %r7620 to i32
  %t7622 = sub i32 %c7621, 1
  %c7623 = zext i32 %t7622 to i64
  %wp7624 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7623, ptr %wp7624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064410 word 0xf86edaac
  %r7625.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7625 = load i64, ptr %r7625.p, align 8, !alias.scope !3, !noalias !4
  %r7626.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7626 = load i64, ptr %r7626.p, align 8, !alias.scope !3, !noalias !4
  %c7627 = trunc i64 %r7626 to i32
  %c7628 = sext i32 %c7627 to i64
  %t7629 = shl i64 %c7628, 3
  %t7630 = add i64 %r7625, %t7629
  %gmp7631 = inttoptr i64 %t7630 to ptr
  %gml7632 = load i64, ptr %gmp7631, align 1, !alias.scope !4, !noalias !3
  %wp7633 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml7632, ptr %wp7633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064414 word 0x93407d6b
  %r7634.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7634 = load i64, ptr %r7634.p, align 8, !alias.scope !3, !noalias !4
  %t7635 = lshr i64 %r7634, 31
  %t7636 = and i64 %t7635, 1
  %t7637 = sub i64 0, %t7636
  %t7638 = and i64 %t7637, -4294967296
  %t7639 = and i64 %r7634, 4294967295
  %t7640 = or i64 %t7638, %t7639
  %wp7641 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t7640, ptr %wp7641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064418 word 0xb9403d90
  %r7642.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7642 = load i64, ptr %r7642.p, align 8, !alias.scope !3, !noalias !4
  %t7643 = add i64 %r7642, 60
  %gmp7644 = inttoptr i64 %t7643 to ptr
  %gml7645 = load i32, ptr %gmp7644, align 1, !alias.scope !4, !noalias !3
  %c7646 = zext i32 %gml7645 to i64
  %wp7647 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7646, ptr %wp7647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006441c word 0x6b1001ff
  %r7648.p = getelementptr inbounds i8, ptr %c, i64 120
  %r7648 = load i64, ptr %r7648.p, align 8, !alias.scope !3, !noalias !4
  %c7649 = trunc i64 %r7648 to i32
  %r7650.p = getelementptr inbounds i8, ptr %c, i64 128
  %r7650 = load i64, ptr %r7650.p, align 8, !alias.scope !3, !noalias !4
  %c7651 = trunc i64 %r7650 to i32
  %t7652 = sub i32 %c7649, %c7651
  %fn7653 = icmp slt i32 %t7652, 0
  %fz7654 = icmp eq i32 %t7652, 0
  %fc7655 = icmp uge i32 %c7649, %c7651
  %fx17656 = xor i32 %c7649, %c7651
  %fx27657 = xor i32 %c7649, %t7652
  %fva7658 = and i32 %fx17656, %fx27657
  %fv7659 = icmp slt i32 %fva7658, 0
  %nz7660 = zext i1 %fn7653 to i64
  %zz7661 = zext i1 %fz7654 to i64
  %cz7662 = zext i1 %fc7655 to i64
  %vz7663 = zext i1 %fv7659 to i64
  %ns7664 = shl i64 %nz7660, 31
  %zs7665 = shl i64 %zz7661, 30
  %cs7666 = shl i64 %cz7662, 29
  %vs7667 = shl i64 %vz7663, 28
  %nzor7668 = or i64 %ns7664, %zs7665
  %cvor7669 = or i64 %cs7666, %vs7667
  %nzcv7670 = or i64 %nzor7668, %cvor7669
  %wp7671 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7670, ptr %wp7671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064420 word 0x540000ea
  %r7672.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7672 = load i64, ptr %r7672.p, align 8, !alias.scope !3, !noalias !4
  %fsh7674 = lshr i64 %r7672, 31
  %ftr7675 = trunc i64 %fsh7674 to i1
  %fsh7676 = lshr i64 %r7672, 28
  %ftr7677 = trunc i64 %fsh7676 to i1
  %cond7673 = icmp eq i1 %ftr7675, %ftr7677
  br i1 %cond7673, label %L_80006443c, label %L_800064424_ft
L_80006443c:
  ; @pc 0x80006443c word 0xf82b7aa9
  %r7737.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7737 = load i64, ptr %r7737.p, align 8, !alias.scope !3, !noalias !4
  %r7738.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7738 = load i64, ptr %r7738.p, align 8, !alias.scope !3, !noalias !4
  %t7739 = shl i64 %r7738, 3
  %t7740 = add i64 %r7737, %t7739
  %r7741.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7741 = load i64, ptr %r7741.p, align 8, !alias.scope !3, !noalias !4
  %gmp7742 = inttoptr i64 %t7740 to ptr
  store i64 %r7741, ptr %gmp7742, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064440 word 0xd100050b
  %r7743.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7743 = load i64, ptr %r7743.p, align 8, !alias.scope !3, !noalias !4
  %t7744 = sub i64 %r7743, 1
  %wp7745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t7744, ptr %wp7745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064444 word 0xf86b5aa9
  %r7746.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7746 = load i64, ptr %r7746.p, align 8, !alias.scope !3, !noalias !4
  %r7747.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7747 = load i64, ptr %r7747.p, align 8, !alias.scope !3, !noalias !4
  %c7748 = trunc i64 %r7747 to i32
  %c7749 = zext i32 %c7748 to i64
  %t7750 = shl i64 %c7749, 3
  %t7751 = add i64 %r7746, %t7750
  %gmp7752 = inttoptr i64 %t7751 to ptr
  %gml7753 = load i64, ptr %gmp7752, align 1, !alias.scope !4, !noalias !3
  %wp7754 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7753, ptr %wp7754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064448 word 0xf94002aa
  %r7755.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7755 = load i64, ptr %r7755.p, align 8, !alias.scope !3, !noalias !4
  %gmp7756 = inttoptr i64 %r7755 to ptr
  %gml7757 = load i64, ptr %gmp7756, align 1, !alias.scope !4, !noalias !3
  %wp7758 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml7757, ptr %wp7758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006444c word 0xf100091f
  %r7759.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7759 = load i64, ptr %r7759.p, align 8, !alias.scope !3, !noalias !4
  %t7760 = sub i64 %r7759, 2
  %fn7761 = icmp slt i64 %t7760, 0
  %fz7762 = icmp eq i64 %t7760, 0
  %fc7763 = icmp uge i64 %r7759, 2
  %fx17764 = xor i64 %r7759, 2
  %fx27765 = xor i64 %r7759, %t7760
  %fva7766 = and i64 %fx17764, %fx27765
  %fv7767 = icmp slt i64 %fva7766, 0
  %nz7768 = zext i1 %fn7761 to i64
  %zz7769 = zext i1 %fz7762 to i64
  %cz7770 = zext i1 %fc7763 to i64
  %vz7771 = zext i1 %fv7767 to i64
  %ns7772 = shl i64 %nz7768, 31
  %zs7773 = shl i64 %zz7769, 30
  %cs7774 = shl i64 %cz7770, 29
  %vs7775 = shl i64 %vz7771, 28
  %nzor7776 = or i64 %ns7772, %zs7773
  %cvor7777 = or i64 %cs7774, %vs7775
  %nzcv7778 = or i64 %nzor7776, %cvor7777
  %wp7779 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7778, ptr %wp7779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064450 word 0xf82b5aaa
  %r7780.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7780 = load i64, ptr %r7780.p, align 8, !alias.scope !3, !noalias !4
  %r7781.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7781 = load i64, ptr %r7781.p, align 8, !alias.scope !3, !noalias !4
  %c7782 = trunc i64 %r7781 to i32
  %c7783 = zext i32 %c7782 to i64
  %t7784 = shl i64 %c7783, 3
  %t7785 = add i64 %r7780, %t7784
  %r7786.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7786 = load i64, ptr %r7786.p, align 8, !alias.scope !3, !noalias !4
  %gmp7787 = inttoptr i64 %t7785 to ptr
  store i64 %r7786, ptr %gmp7787, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064454 word 0x54fffba8
  %r7788.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7788 = load i64, ptr %r7788.p, align 8, !alias.scope !3, !noalias !4
  %fsh7790 = lshr i64 %r7788, 29
  %ftr7791 = trunc i64 %fsh7790 to i1
  %fsh7792 = lshr i64 %r7788, 30
  %ftr7793 = trunc i64 %fsh7792 to i1
  %fnz7794 = xor i1 %ftr7793, true
  %cond7789 = and i1 %ftr7791, %fnz7794
  br i1 %cond7789, label %L_8000643c8, label %L_800064458
L_800064458:
  ; @pc 0x800064458 word 0xf90002a9
  %r7795.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7795 = load i64, ptr %r7795.p, align 8, !alias.scope !3, !noalias !4
  %r7796.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7796 = load i64, ptr %r7796.p, align 8, !alias.scope !3, !noalias !4
  %gmp7797 = inttoptr i64 %r7795 to ptr
  store i64 %r7796, ptr %gmp7797, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006445c word 0xb94022e8
  %r7798.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7798 = load i64, ptr %r7798.p, align 8, !alias.scope !3, !noalias !4
  %t7799 = add i64 %r7798, 32
  %gmp7800 = inttoptr i64 %t7799 to ptr
  %gml7801 = load i32, ptr %gmp7800, align 1, !alias.scope !4, !noalias !3
  %c7802 = zext i32 %gml7801 to i64
  %wp7803 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7802, ptr %wp7803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064460 word 0xf94016f5
  %r7804.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7804 = load i64, ptr %r7804.p, align 8, !alias.scope !3, !noalias !4
  %t7805 = add i64 %r7804, 40
  %gmp7806 = inttoptr i64 %t7805 to ptr
  %gml7807 = load i64, ptr %gmp7806, align 1, !alias.scope !4, !noalias !3
  %wp7808 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml7807, ptr %wp7808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064464 word 0x17fffd87
  br label %L_800063a80
L_800064468:
  ; @pc 0x800064468 word 0x93407d08
  %r7809.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7809 = load i64, ptr %r7809.p, align 8, !alias.scope !3, !noalias !4
  %t7810 = lshr i64 %r7809, 31
  %t7811 = and i64 %t7810, 1
  %t7812 = sub i64 0, %t7811
  %t7813 = and i64 %t7812, -4294967296
  %t7814 = and i64 %r7809, 4294967295
  %t7815 = or i64 %t7813, %t7814
  %wp7816 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7815, ptr %wp7816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006446c word 0xd37df113
  %r7817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7817 = load i64, ptr %r7817.p, align 8, !alias.scope !3, !noalias !4
  %ror7818 = call i64 @llvm.fshr.i64(i64 %r7817, i64 %r7817, i64 61)
  %t7819 = and i64 %ror7818, -8
  %wp7820 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t7819, ptr %wp7820, align 8, !alias.scope !3, !noalias !4
  br label %L_800064470
L_800064470:
  ; @pc 0x800064470 word 0xf84086a1
  %r7821.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7821 = load i64, ptr %r7821.p, align 8, !alias.scope !3, !noalias !4
  %t7822 = add i64 %r7821, 8
  %gmp7823 = inttoptr i64 %r7821 to ptr
  %gml7824 = load i64, ptr %gmp7823, align 1, !alias.scope !4, !noalias !3
  %wp7825 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t7822, ptr %wp7825, align 8, !alias.scope !3, !noalias !4
  %wp7826 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml7824, ptr %wp7826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064474 word 0xaa1603e0
  %r7827.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7827 = load i64, ptr %r7827.p, align 8, !alias.scope !3, !noalias !4
  %t7828 = or i64 0, %r7827
  %wp7829 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7828, ptr %wp7829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064478 word 0x947971d0
  %wp7830 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149116, ptr %wp7830, align 8, !alias.scope !3, !noalias !4
  call void @f_801ec0bb8(ptr %c)
  ; @pc 0x80006447c word 0xf1002273
  %r7831.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7831 = load i64, ptr %r7831.p, align 8, !alias.scope !3, !noalias !4
  %t7832 = sub i64 %r7831, 8
  %fn7833 = icmp slt i64 %t7832, 0
  %fz7834 = icmp eq i64 %t7832, 0
  %fc7835 = icmp uge i64 %r7831, 8
  %fx17836 = xor i64 %r7831, 8
  %fx27837 = xor i64 %r7831, %t7832
  %fva7838 = and i64 %fx17836, %fx27837
  %fv7839 = icmp slt i64 %fva7838, 0
  %nz7840 = zext i1 %fn7833 to i64
  %zz7841 = zext i1 %fz7834 to i64
  %cz7842 = zext i1 %fc7835 to i64
  %vz7843 = zext i1 %fv7839 to i64
  %ns7844 = shl i64 %nz7840, 31
  %zs7845 = shl i64 %zz7841, 30
  %cs7846 = shl i64 %cz7842, 29
  %vs7847 = shl i64 %vz7843, 28
  %nzor7848 = or i64 %ns7844, %zs7845
  %cvor7849 = or i64 %cs7846, %vs7847
  %nzcv7850 = or i64 %nzor7848, %cvor7849
  %wp7851 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7850, ptr %wp7851, align 8, !alias.scope !3, !noalias !4
  %wp7852 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t7832, ptr %wp7852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064480 word 0x54ffb040
  %r7853.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7853 = load i64, ptr %r7853.p, align 8, !alias.scope !3, !noalias !4
  %fsh7855 = lshr i64 %r7853, 30
  %cond7854 = trunc i64 %fsh7855 to i1
  br i1 %cond7854, label %L_800063a88, label %L_800064484_ft
L_800064488:
  ; @pc 0x800064488 word 0xf94043f3
  %r7856.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7856 = load i64, ptr %r7856.p, align 8, !alias.scope !3, !noalias !4
  %t7857 = add i64 %r7856, 128
  %gmp7858 = inttoptr i64 %t7857 to ptr
  %gml7859 = load i64, ptr %gmp7858, align 1, !alias.scope !4, !noalias !3
  %wp7860 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml7859, ptr %wp7860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006448c word 0xd37df114
  %r7861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7861 = load i64, ptr %r7861.p, align 8, !alias.scope !3, !noalias !4
  %ror7862 = call i64 @llvm.fshr.i64(i64 %r7861, i64 %r7861, i64 61)
  %t7863 = and i64 %ror7862, -8
  %wp7864 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t7863, ptr %wp7864, align 8, !alias.scope !3, !noalias !4
  br label %L_800064490
L_800064490:
  ; @pc 0x800064490 word 0xf8408661
  %r7865.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7865 = load i64, ptr %r7865.p, align 8, !alias.scope !3, !noalias !4
  %t7866 = add i64 %r7865, 8
  %gmp7867 = inttoptr i64 %r7865 to ptr
  %gml7868 = load i64, ptr %gmp7867, align 1, !alias.scope !4, !noalias !3
  %wp7869 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t7866, ptr %wp7869, align 8, !alias.scope !3, !noalias !4
  %wp7870 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml7868, ptr %wp7870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064494 word 0xaa1603e0
  %r7871.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7871 = load i64, ptr %r7871.p, align 8, !alias.scope !3, !noalias !4
  %t7872 = or i64 0, %r7871
  %wp7873 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7872, ptr %wp7873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064498 word 0x947971c8
  %wp7874 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149148, ptr %wp7874, align 8, !alias.scope !3, !noalias !4
  call void @f_801ec0bb8(ptr %c)
  ; @pc 0x80006449c word 0xf1002294
  %r7875.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7875 = load i64, ptr %r7875.p, align 8, !alias.scope !3, !noalias !4
  %t7876 = sub i64 %r7875, 8
  %fn7877 = icmp slt i64 %t7876, 0
  %fz7878 = icmp eq i64 %t7876, 0
  %fc7879 = icmp uge i64 %r7875, 8
  %fx17880 = xor i64 %r7875, 8
  %fx27881 = xor i64 %r7875, %t7876
  %fva7882 = and i64 %fx17880, %fx27881
  %fv7883 = icmp slt i64 %fva7882, 0
  %nz7884 = zext i1 %fn7877 to i64
  %zz7885 = zext i1 %fz7878 to i64
  %cz7886 = zext i1 %fc7879 to i64
  %vz7887 = zext i1 %fv7883 to i64
  %ns7888 = shl i64 %nz7884, 31
  %zs7889 = shl i64 %zz7885, 30
  %cs7890 = shl i64 %cz7886, 29
  %vs7891 = shl i64 %vz7887, 28
  %nzor7892 = or i64 %ns7888, %zs7889
  %cvor7893 = or i64 %cs7890, %vs7891
  %nzcv7894 = or i64 %nzor7892, %cvor7893
  %wp7895 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7894, ptr %wp7895, align 8, !alias.scope !3, !noalias !4
  %wp7896 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t7876, ptr %wp7896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644a0 word 0x54ffaf80
  %r7897.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7897 = load i64, ptr %r7897.p, align 8, !alias.scope !3, !noalias !4
  %fsh7899 = lshr i64 %r7897, 30
  %cond7898 = trunc i64 %fsh7899 to i1
  br i1 %cond7898, label %L_800063a90, label %L_8000644a4_ft
L_8000644a8:
  ; @pc 0x8000644a8 word 0xb940aae9
  %r7900.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7900 = load i64, ptr %r7900.p, align 8, !alias.scope !3, !noalias !4
  %t7901 = add i64 %r7900, 168
  %gmp7902 = inttoptr i64 %t7901 to ptr
  %gml7903 = load i32, ptr %gmp7902, align 1, !alias.scope !4, !noalias !3
  %c7904 = zext i32 %gml7903 to i64
  %wp7905 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7904, ptr %wp7905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644ac word 0x51000529
  %r7906.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7906 = load i64, ptr %r7906.p, align 8, !alias.scope !3, !noalias !4
  %c7907 = trunc i64 %r7906 to i32
  %t7908 = sub i32 %c7907, 1
  %c7909 = zext i32 %t7908 to i64
  %wp7910 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7909, ptr %wp7910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644b0 word 0xf9405aea
  %r7911.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7911 = load i64, ptr %r7911.p, align 8, !alias.scope !3, !noalias !4
  %t7912 = add i64 %r7911, 176
  %gmp7913 = inttoptr i64 %t7912 to ptr
  %gml7914 = load i64, ptr %gmp7913, align 1, !alias.scope !4, !noalias !3
  %wp7915 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml7914, ptr %wp7915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644b4 word 0x0a08012b
  %r7916.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7916 = load i64, ptr %r7916.p, align 8, !alias.scope !3, !noalias !4
  %c7917 = trunc i64 %r7916 to i32
  %r7918.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7918 = load i64, ptr %r7918.p, align 8, !alias.scope !3, !noalias !4
  %c7919 = trunc i64 %r7918 to i32
  %t7920 = and i32 %c7919, %c7917
  %c7921 = zext i32 %t7920 to i64
  %wp7922 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7921, ptr %wp7922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644b8 word 0xf86b5949
  %r7923.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7923 = load i64, ptr %r7923.p, align 8, !alias.scope !3, !noalias !4
  %r7924.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7924 = load i64, ptr %r7924.p, align 8, !alias.scope !3, !noalias !4
  %c7925 = trunc i64 %r7924 to i32
  %c7926 = zext i32 %c7925 to i64
  %t7927 = shl i64 %c7926, 3
  %t7928 = add i64 %r7923, %t7927
  %gmp7929 = inttoptr i64 %t7928 to ptr
  %gml7930 = load i64, ptr %gmp7929, align 1, !alias.scope !4, !noalias !3
  %wp7931 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7930, ptr %wp7931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644bc word 0xb4ffaf69
  %r7932.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7932 = load i64, ptr %r7932.p, align 8, !alias.scope !3, !noalias !4
  %cmp7933 = icmp eq i64 %r7932, 0
  br i1 %cmp7933, label %L_800063aa8, label %L_8000644c0_ft
L_800064508:
  ; @pc 0x800064508 word 0xf94066f3
  %r8058.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8058 = load i64, ptr %r8058.p, align 8, !alias.scope !3, !noalias !4
  %t8059 = add i64 %r8058, 200
  %gmp8060 = inttoptr i64 %t8059 to ptr
  %gml8061 = load i64, ptr %gmp8060, align 1, !alias.scope !4, !noalias !3
  %wp8062 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml8061, ptr %wp8062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006450c word 0x9102a2f6
  %r8063.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8063 = load i64, ptr %r8063.p, align 8, !alias.scope !3, !noalias !4
  %t8064 = add i64 %r8063, 168
  %wp8065 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t8064, ptr %wp8065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064510 word 0xd37df114
  %r8066.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8066 = load i64, ptr %r8066.p, align 8, !alias.scope !3, !noalias !4
  %ror8067 = call i64 @llvm.fshr.i64(i64 %r8066, i64 %r8066, i64 61)
  %t8068 = and i64 %ror8067, -8
  %wp8069 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t8068, ptr %wp8069, align 8, !alias.scope !3, !noalias !4
  br label %L_800064514
L_800064514:
  ; @pc 0x800064514 word 0xf8408661
  %r8070.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8070 = load i64, ptr %r8070.p, align 8, !alias.scope !3, !noalias !4
  %t8071 = add i64 %r8070, 8
  %gmp8072 = inttoptr i64 %r8070 to ptr
  %gml8073 = load i64, ptr %gmp8072, align 1, !alias.scope !4, !noalias !3
  %wp8074 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t8071, ptr %wp8074, align 8, !alias.scope !3, !noalias !4
  %wp8075 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml8073, ptr %wp8075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064518 word 0xaa1603e0
  %r8076.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8076 = load i64, ptr %r8076.p, align 8, !alias.scope !3, !noalias !4
  %t8077 = or i64 0, %r8076
  %wp8078 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8077, ptr %wp8078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006451c word 0x947971c9
  %wp8079 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149280, ptr %wp8079, align 8, !alias.scope !3, !noalias !4
  call void @f_801ec0c40(ptr %c)
  ; @pc 0x800064520 word 0xf1002294
  %r8080.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8080 = load i64, ptr %r8080.p, align 8, !alias.scope !3, !noalias !4
  %t8081 = sub i64 %r8080, 8
  %fn8082 = icmp slt i64 %t8081, 0
  %fz8083 = icmp eq i64 %t8081, 0
  %fc8084 = icmp uge i64 %r8080, 8
  %fx18085 = xor i64 %r8080, 8
  %fx28086 = xor i64 %r8080, %t8081
  %fva8087 = and i64 %fx18085, %fx28086
  %fv8088 = icmp slt i64 %fva8087, 0
  %nz8089 = zext i1 %fn8082 to i64
  %zz8090 = zext i1 %fz8083 to i64
  %cz8091 = zext i1 %fc8084 to i64
  %vz8092 = zext i1 %fv8088 to i64
  %ns8093 = shl i64 %nz8089, 31
  %zs8094 = shl i64 %zz8090, 30
  %cs8095 = shl i64 %cz8091, 29
  %vs8096 = shl i64 %vz8092, 28
  %nzor8097 = or i64 %ns8093, %zs8094
  %cvor8098 = or i64 %cs8095, %vs8096
  %nzcv8099 = or i64 %nzor8097, %cvor8098
  %wp8100 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8099, ptr %wp8100, align 8, !alias.scope !3, !noalias !4
  %wp8101 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t8081, ptr %wp8101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064524 word 0x54ffac60
  %r8102.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8102 = load i64, ptr %r8102.p, align 8, !alias.scope !3, !noalias !4
  %fsh8104 = lshr i64 %r8102, 30
  %cond8103 = trunc i64 %fsh8104 to i1
  br i1 %cond8103, label %L_800063ab0, label %L_800064528_ft
L_80006452c:
  ; @pc 0x80006452c word 0xb940010a
  %r8105.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8105 = load i64, ptr %r8105.p, align 8, !alias.scope !3, !noalias !4
  %gmp8106 = inttoptr i64 %r8105 to ptr
  %gml8107 = load i32, ptr %gmp8106, align 1, !alias.scope !4, !noalias !3
  %c8108 = zext i32 %gml8107 to i64
  %wp8109 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8108, ptr %wp8109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064530 word 0x17fffd64
  br label %L_800063ac0
L_800064534:
  ; @pc 0x800064534 word 0x9101a149
  %r8110.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8110 = load i64, ptr %r8110.p, align 8, !alias.scope !3, !noalias !4
  %t8111 = add i64 %r8110, 104
  %wp8112 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t8111, ptr %wp8112, align 8, !alias.scope !3, !noalias !4
  br label %L_800064538
L_800064538:
  ; @pc 0x800064538 word 0x885f7d2a
  %r8113.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8113 = load i64, ptr %r8113.p, align 8, !alias.scope !3, !noalias !4
  %atp8114 = inttoptr i64 %r8113 to ptr
  %ldx8115 = load atomic i32, ptr %atp8114 acquire, align 4, !alias.scope !4, !noalias !3
  %c8116 = zext i32 %ldx8115 to i64
  %fp8117 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r8113, ptr %fp8117, align 8, !alias.scope !3, !noalias !4
  %fp8118 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c8116, ptr %fp8118, align 8, !alias.scope !3, !noalias !4
  %wp8119 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8116, ptr %wp8119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006453c word 0x321b014a
  %r8120.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8120 = load i64, ptr %r8120.p, align 8, !alias.scope !3, !noalias !4
  %c8121 = trunc i64 %r8120 to i32
  %t8122 = or i32 %c8121, 32
  %c8123 = zext i32 %t8122 to i64
  %wp8124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8123, ptr %wp8124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064540 word 0x880b7d2a
  %r8125.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8125 = load i64, ptr %r8125.p, align 8, !alias.scope !3, !noalias !4
  %atp8126 = inttoptr i64 %r8125 to ptr
  %fp8127 = getelementptr inbounds i8, ptr %c, i64 296
  %fv8128 = load i64, ptr %fp8127, align 8, !alias.scope !3, !noalias !4
  %fp8129 = getelementptr inbounds i8, ptr %c, i64 304
  %fv8130 = load i64, ptr %fp8129, align 8, !alias.scope !3, !noalias !4
  %fp8131 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp8131, align 8, !alias.scope !3, !noalias !4
  %cmp8132 = icmp eq i64 %fv8128, %r8125
  %c8133 = trunc i64 %fv8130 to i32
  %r8134.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8134 = load i64, ptr %r8134.p, align 8, !alias.scope !3, !noalias !4
  %c8135 = trunc i64 %r8134 to i32
  %cx8136 = cmpxchg ptr %atp8126, i32 %c8133, i32 %c8135 seq_cst seq_cst, align 4
  %cxok8137 = extractvalue { i32, i1 } %cx8136, 1
  %t8138 = and i1 %cmp8132, %cxok8137
  %sel8139 = select i1 %t8138, i32 0, i32 1
  %c8140 = zext i32 %sel8139 to i64
  %wp8141 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8140, ptr %wp8141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064544 word 0x35ffffab
  %r8142.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8142 = load i64, ptr %r8142.p, align 8, !alias.scope !3, !noalias !4
  %c8143 = trunc i64 %r8142 to i32
  %cmp8144 = icmp ne i32 %c8143, 0
  br i1 %cmp8144, label %L_800064538, label %L_800064548_ft
L_80006454c:
  ; @pc 0x80006454c word 0x94796c29
  %wp8145 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149328, ptr %wp8145, align 8, !alias.scope !3, !noalias !4
  call void @f_801ebf5f0(ptr %c)
  ; @pc 0x800064550 word 0x17fffd7c
  br label %L_800063b40
L_800064554:
  ; @pc 0x800064554 word 0xf94013e0
  %r8146.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8146 = load i64, ptr %r8146.p, align 8, !alias.scope !3, !noalias !4
  %t8147 = add i64 %r8146, 32
  %gmp8148 = inttoptr i64 %t8147 to ptr
  %gml8149 = load i64, ptr %gmp8148, align 1, !alias.scope !4, !noalias !3
  %wp8150 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml8149, ptr %wp8150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064558 word 0xd63f0100
  %r8151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8151 = load i64, ptr %r8151.p, align 8, !alias.scope !3, !noalias !4
  %fp8152 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8151, ptr %fp8152, align 8, !alias.scope !3, !noalias !4
  %wp8153 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149340, ptr %wp8153, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80006455c word 0x17fffd95
  br label %L_800063bb0
L_800064560:
  ; @pc 0x800064560 word 0xf94013e0
  %r8154.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8154 = load i64, ptr %r8154.p, align 8, !alias.scope !3, !noalias !4
  %t8155 = add i64 %r8154, 32
  %gmp8156 = inttoptr i64 %t8155 to ptr
  %gml8157 = load i64, ptr %gmp8156, align 1, !alias.scope !4, !noalias !3
  %wp8158 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml8157, ptr %wp8158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064564 word 0xd63f0100
  %r8159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8159 = load i64, ptr %r8159.p, align 8, !alias.scope !3, !noalias !4
  %fp8160 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8159, ptr %fp8160, align 8, !alias.scope !3, !noalias !4
  %wp8161 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149352, ptr %wp8161, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800064568 word 0x2a0003e8
  %r8162.p = getelementptr inbounds i8, ptr %c, i64 0
  %r8162 = load i64, ptr %r8162.p, align 8, !alias.scope !3, !noalias !4
  %c8163 = trunc i64 %r8162 to i32
  %t8164 = or i32 0, %c8163
  %c8165 = zext i32 %t8164 to i64
  %wp8166 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8165, ptr %wp8166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006456c word 0x17fffdae
  br label %L_800063c24
L_800064570:
  ; @pc 0x800064570 word 0x885f7d0e
  %r8167.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8167 = load i64, ptr %r8167.p, align 8, !alias.scope !3, !noalias !4
  %atp8168 = inttoptr i64 %r8167 to ptr
  %ldx8169 = load atomic i32, ptr %atp8168 acquire, align 4, !alias.scope !4, !noalias !3
  %c8170 = zext i32 %ldx8169 to i64
  %fp8171 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r8167, ptr %fp8171, align 8, !alias.scope !3, !noalias !4
  %fp8172 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c8170, ptr %fp8172, align 8, !alias.scope !3, !noalias !4
  %wp8173 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c8170, ptr %wp8173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064574 word 0x6b0e019f
  %r8174.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8174 = load i64, ptr %r8174.p, align 8, !alias.scope !3, !noalias !4
  %c8175 = trunc i64 %r8174 to i32
  %r8176.p = getelementptr inbounds i8, ptr %c, i64 112
  %r8176 = load i64, ptr %r8176.p, align 8, !alias.scope !3, !noalias !4
  %c8177 = trunc i64 %r8176 to i32
  %t8178 = sub i32 %c8175, %c8177
  %fn8179 = icmp slt i32 %t8178, 0
  %fz8180 = icmp eq i32 %t8178, 0
  %fc8181 = icmp uge i32 %c8175, %c8177
  %fx18182 = xor i32 %c8175, %c8177
  %fx28183 = xor i32 %c8175, %t8178
  %fva8184 = and i32 %fx18182, %fx28183
  %fv8185 = icmp slt i32 %fva8184, 0
  %nz8186 = zext i1 %fn8179 to i64
  %zz8187 = zext i1 %fz8180 to i64
  %cz8188 = zext i1 %fc8181 to i64
  %vz8189 = zext i1 %fv8185 to i64
  %ns8190 = shl i64 %nz8186, 31
  %zs8191 = shl i64 %zz8187, 30
  %cs8192 = shl i64 %cz8188, 29
  %vs8193 = shl i64 %vz8189, 28
  %nzor8194 = or i64 %ns8190, %zs8191
  %cvor8195 = or i64 %cs8192, %vs8193
  %nzcv8196 = or i64 %nzor8194, %cvor8195
  %wp8197 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8196, ptr %wp8197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064578 word 0x54ffb980
  %r8198.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8198 = load i64, ptr %r8198.p, align 8, !alias.scope !3, !noalias !4
  %fsh8200 = lshr i64 %r8198, 30
  %cond8199 = trunc i64 %fsh8200 to i1
  br i1 %cond8199, label %L_800063ca8, label %L_80006457c
L_80006457c:
  ; @pc 0x80006457c word 0xb940e6ec
  %r8201.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8201 = load i64, ptr %r8201.p, align 8, !alias.scope !3, !noalias !4
  %t8202 = add i64 %r8201, 228
  %gmp8203 = inttoptr i64 %t8202 to ptr
  %gml8204 = load i32, ptr %gmp8203, align 1, !alias.scope !4, !noalias !3
  %c8205 = zext i32 %gml8204 to i64
  %wp8206 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8205, ptr %wp8206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064580 word 0x4b0c01cc
  %r8207.p = getelementptr inbounds i8, ptr %c, i64 112
  %r8207 = load i64, ptr %r8207.p, align 8, !alias.scope !3, !noalias !4
  %c8208 = trunc i64 %r8207 to i32
  %r8209.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8209 = load i64, ptr %r8209.p, align 8, !alias.scope !3, !noalias !4
  %c8210 = trunc i64 %r8209 to i32
  %t8211 = sub i32 %c8208, %c8210
  %c8212 = zext i32 %t8211 to i64
  %wp8213 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8212, ptr %wp8213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064584 word 0xb940d2ed
  %r8214.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8214 = load i64, ptr %r8214.p, align 8, !alias.scope !3, !noalias !4
  %t8215 = add i64 %r8214, 208
  %gmp8216 = inttoptr i64 %t8215 to ptr
  %gml8217 = load i32, ptr %gmp8216, align 1, !alias.scope !4, !noalias !3
  %c8218 = zext i32 %gml8217 to i64
  %wp8219 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8218, ptr %wp8219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064588 word 0x6b0d019f
  %r8220.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8220 = load i64, ptr %r8220.p, align 8, !alias.scope !3, !noalias !4
  %c8221 = trunc i64 %r8220 to i32
  %r8222.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8222 = load i64, ptr %r8222.p, align 8, !alias.scope !3, !noalias !4
  %c8223 = trunc i64 %r8222 to i32
  %t8224 = sub i32 %c8221, %c8223
  %fn8225 = icmp slt i32 %t8224, 0
  %fz8226 = icmp eq i32 %t8224, 0
  %fc8227 = icmp uge i32 %c8221, %c8223
  %fx18228 = xor i32 %c8221, %c8223
  %fx28229 = xor i32 %c8221, %t8224
  %fva8230 = and i32 %fx18228, %fx28229
  %fv8231 = icmp slt i32 %fva8230, 0
  %nz8232 = zext i1 %fn8225 to i64
  %zz8233 = zext i1 %fz8226 to i64
  %cz8234 = zext i1 %fc8227 to i64
  %vz8235 = zext i1 %fv8231 to i64
  %ns8236 = shl i64 %nz8232, 31
  %zs8237 = shl i64 %zz8233, 30
  %cs8238 = shl i64 %cz8234, 29
  %vs8239 = shl i64 %vz8235, 28
  %nzor8240 = or i64 %ns8236, %zs8237
  %cvor8241 = or i64 %cs8238, %vs8239
  %nzcv8242 = or i64 %nzor8240, %cvor8241
  %wp8243 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8242, ptr %wp8243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006458c word 0x2a0e03ec
  %r8244.p = getelementptr inbounds i8, ptr %c, i64 112
  %r8244 = load i64, ptr %r8244.p, align 8, !alias.scope !3, !noalias !4
  %c8245 = trunc i64 %r8244 to i32
  %t8246 = or i32 0, %c8245
  %c8247 = zext i32 %t8246 to i64
  %wp8248 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8247, ptr %wp8248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064590 word 0x54ffb84b
  %r8249.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8249 = load i64, ptr %r8249.p, align 8, !alias.scope !3, !noalias !4
  %fsh8251 = lshr i64 %r8249, 31
  %ftr8252 = trunc i64 %fsh8251 to i1
  %fsh8253 = lshr i64 %r8249, 28
  %ftr8254 = trunc i64 %fsh8253 to i1
  %cond8250 = icmp ne i1 %ftr8252, %ftr8254
  br i1 %cond8250, label %L_800063c98, label %L_800064594_ft
L_800064598:
  ; @pc 0x800064598 word 0xb94032e8
  %r8255.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8255 = load i64, ptr %r8255.p, align 8, !alias.scope !3, !noalias !4
  %t8256 = add i64 %r8255, 48
  %gmp8257 = inttoptr i64 %t8256 to ptr
  %gml8258 = load i32, ptr %gmp8257, align 1, !alias.scope !4, !noalias !3
  %c8259 = zext i32 %gml8258 to i64
  %wp8260 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8259, ptr %wp8260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006459c word 0x390292ff
  %r8261.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8261 = load i64, ptr %r8261.p, align 8, !alias.scope !3, !noalias !4
  %t8262 = add i64 %r8261, 164
  %c8263 = trunc i32 0 to i8
  %gmp8264 = inttoptr i64 %t8262 to ptr
  store i8 %c8263, ptr %gmp8264, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000645a0 word 0x32000108
  %r8265.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8265 = load i64, ptr %r8265.p, align 8, !alias.scope !3, !noalias !4
  %c8266 = trunc i64 %r8265 to i32
  %t8267 = or i32 %c8266, 1
  %c8268 = zext i32 %t8267 to i64
  %wp8269 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8268, ptr %wp8269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645a4 word 0xb90032e8
  %r8270.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8270 = load i64, ptr %r8270.p, align 8, !alias.scope !3, !noalias !4
  %t8271 = add i64 %r8270, 48
  %r8272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8272 = load i64, ptr %r8272.p, align 8, !alias.scope !3, !noalias !4
  %c8273 = trunc i64 %r8272 to i32
  %gmp8274 = inttoptr i64 %t8271 to ptr
  store i32 %c8273, ptr %gmp8274, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000645a8 word 0x17fffdcd
  br label %L_800063cdc
L_8000645ac:
  ; @pc 0x8000645ac word 0x910022f7
  %r8275.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8275 = load i64, ptr %r8275.p, align 8, !alias.scope !3, !noalias !4
  %t8276 = add i64 %r8275, 8
  %wp8277 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t8276, ptr %wp8277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645b0 word 0xf100235a
  %r8278.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8278 = load i64, ptr %r8278.p, align 8, !alias.scope !3, !noalias !4
  %t8279 = sub i64 %r8278, 8
  %fn8280 = icmp slt i64 %t8279, 0
  %fz8281 = icmp eq i64 %t8279, 0
  %fc8282 = icmp uge i64 %r8278, 8
  %fx18283 = xor i64 %r8278, 8
  %fx28284 = xor i64 %r8278, %t8279
  %fva8285 = and i64 %fx18283, %fx28284
  %fv8286 = icmp slt i64 %fva8285, 0
  %nz8287 = zext i1 %fn8280 to i64
  %zz8288 = zext i1 %fz8281 to i64
  %cz8289 = zext i1 %fc8282 to i64
  %vz8290 = zext i1 %fv8286 to i64
  %ns8291 = shl i64 %nz8287, 31
  %zs8292 = shl i64 %zz8288, 30
  %cs8293 = shl i64 %cz8289, 29
  %vs8294 = shl i64 %vz8290, 28
  %nzor8295 = or i64 %ns8291, %zs8292
  %cvor8296 = or i64 %cs8293, %vs8294
  %nzcv8297 = or i64 %nzor8295, %cvor8296
  %wp8298 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8297, ptr %wp8298, align 8, !alias.scope !3, !noalias !4
  %wp8299 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t8279, ptr %wp8299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645b4 word 0x54ffbf21
  %r8300.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8300 = load i64, ptr %r8300.p, align 8, !alias.scope !3, !noalias !4
  %fsh8302 = lshr i64 %r8300, 30
  %ftr8303 = trunc i64 %fsh8302 to i1
  %cond8301 = xor i1 %ftr8303, true
  br i1 %cond8301, label %L_800063d98, label %L_8000645b8_ft
L_8000645c0:
  ; @pc 0x8000645c0 word 0x2f00e40a
  %wp8308 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 0, ptr %wp8308, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645c4 word 0x2f00e409
  %wp8309 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 0, ptr %wp8309, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645c8 word 0x2f00e408
  %wp8310 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 0, ptr %wp8310, align 16, !alias.scope !3, !noalias !4
  br label %L_8000645cc
L_8000645cc:
  ; @pc 0x8000645cc word 0x1e231822
  call void @rt_fp_op_s(ptr %c, i32 5, i32 2, i32 1, i32 3)
  ; @pc 0x8000645d0 word 0x721f011f
  %r8311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8311 = load i64, ptr %r8311.p, align 8, !alias.scope !3, !noalias !4
  %c8312 = trunc i64 %r8311 to i32
  %t8313 = and i32 %c8312, 2
  %fn8314 = icmp slt i32 %t8313, 0
  %fz8315 = icmp eq i32 %t8313, 0
  %nz8316 = zext i1 %fn8314 to i64
  %zz8317 = zext i1 %fz8315 to i64
  %ns8318 = shl i64 %nz8316, 31
  %zs8319 = shl i64 %zz8317, 30
  %nzcv8320 = or i64 %ns8318, %zs8319
  %wp8321 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8320, ptr %wp8321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645d4 word 0x52b88f48
  %c8322 = zext i32 -998637568 to i64
  %wp8323 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8322, ptr %wp8323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645d8 word 0x1e270106
  %r8324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8324 = load i64, ptr %r8324.p, align 8, !alias.scope !3, !noalias !4
  %c8325 = trunc i64 %r8324 to i32
  %c8326 = zext i32 %c8325 to i128
  %wp8327 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c8326, ptr %wp8327, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645dc word 0x52a88f48
  %c8328 = zext i32 1148846080 to i64
  %wp8329 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8328, ptr %wp8329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645e0 word 0x1e270107
  %r8330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8330 = load i64, ptr %r8330.p, align 8, !alias.scope !3, !noalias !4
  %c8331 = trunc i64 %r8330 to i32
  %c8332 = zext i32 %c8331 to i128
  %wp8333 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c8332, ptr %wp8333, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645e4 word 0x1e254044
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 4, i32 2)
  ; @pc 0x8000645e8 word 0x1e243845
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 2, i32 4)
  ; @pc 0x8000645ec word 0xbd47dee2
  %r8334.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8334 = load i64, ptr %r8334.p, align 8, !alias.scope !3, !noalias !4
  %t8335 = add i64 %r8334, 2012
  %gmp8336 = inttoptr i64 %t8335 to ptr
  %gml8337 = load i32, ptr %gmp8336, align 1, !alias.scope !4, !noalias !3
  %c8338 = zext i32 %gml8337 to i128
  %wp8339 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8338, ptr %wp8339, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645f0 word 0x0f046404
  %wp8340 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 9223372039002259456, ptr %wp8340, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645f4 word 0x5e21d842
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2)
  ; @pc 0x8000645f8 word 0x1e220c82
  %r8341.p = getelementptr inbounds i8, ptr %c, i64 576
  %r8341 = load i128, ptr %r8341.p, align 16, !alias.scope !3, !noalias !4
  %c8342 = trunc i128 %r8341 to i32
  %r8343.p = getelementptr inbounds i8, ptr %c, i64 544
  %r8343 = load i128, ptr %r8343.p, align 16, !alias.scope !3, !noalias !4
  %c8344 = trunc i128 %r8343 to i32
  %r8345.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8345 = load i64, ptr %r8345.p, align 8, !alias.scope !3, !noalias !4
  %fsh8347 = lshr i64 %r8345, 30
  %cond8346 = trunc i64 %fsh8347 to i1
  %sel8348 = select i1 %cond8346, i32 %c8342, i32 %c8344
  %c8349 = zext i32 %sel8348 to i128
  %wp8350 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8349, ptr %wp8350, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000645fc word 0x1e282824
  call void @rt_fp_op_s(ptr %c, i32 0, i32 4, i32 1, i32 8)
  ; @pc 0x800064600 word 0x1e262886
  call void @rt_fp_op_s(ptr %c, i32 0, i32 6, i32 4, i32 6)
  ; @pc 0x800064604 word 0x1e272080
  %fcmp8351 = call i64 @rt_fp_cmp_s(ptr %c, i32 4, i32 7, i32 0)
  %wp8352 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8351, ptr %wp8352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064608 word 0x1e24ccc4
  %r8353.p = getelementptr inbounds i8, ptr %c, i64 608
  %r8353 = load i128, ptr %r8353.p, align 16, !alias.scope !3, !noalias !4
  %c8354 = trunc i128 %r8353 to i32
  %r8355.p = getelementptr inbounds i8, ptr %c, i64 576
  %r8355 = load i128, ptr %r8355.p, align 16, !alias.scope !3, !noalias !4
  %c8356 = trunc i128 %r8355 to i32
  %r8357.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8357 = load i64, ptr %r8357.p, align 8, !alias.scope !3, !noalias !4
  %fsh8359 = lshr i64 %r8357, 30
  %ftr8360 = trunc i64 %fsh8359 to i1
  %fsh8361 = lshr i64 %r8357, 31
  %ftr8362 = trunc i64 %fsh8361 to i1
  %fsh8363 = lshr i64 %r8357, 28
  %ftr8364 = trunc i64 %fsh8363 to i1
  %fnz8365 = xor i1 %ftr8360, true
  %feq8366 = icmp eq i1 %ftr8362, %ftr8364
  %cond8358 = and i1 %fnz8365, %feq8366
  %sel8367 = select i1 %cond8358, i32 %c8354, i32 %c8356
  %c8368 = zext i32 %sel8367 to i128
  %wp8369 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8368, ptr %wp8369, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006460c word 0x1e231883
  call void @rt_fp_op_s(ptr %c, i32 5, i32 3, i32 4, i32 3)
  ; @pc 0x800064610 word 0xbd081ae4
  %r8370.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8370 = load i64, ptr %r8370.p, align 8, !alias.scope !3, !noalias !4
  %t8371 = add i64 %r8370, 2072
  %r8372.p = getelementptr inbounds i8, ptr %c, i64 576
  %r8372 = load i128, ptr %r8372.p, align 16, !alias.scope !3, !noalias !4
  %c8373 = trunc i128 %r8372 to i32
  %gmp8374 = inttoptr i64 %t8371 to ptr
  store i32 %c8373, ptr %gmp8374, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064614 word 0x1e254066
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 6, i32 3)
  ; @pc 0x800064618 word 0x1e263863
  call void @rt_fp_op_s(ptr %c, i32 1, i32 3, i32 3, i32 6)
  ; @pc 0x80006461c word 0x1e252060
  %fcmp8375 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 5, i32 0)
  %wp8376 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8375, ptr %wp8376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064620 word 0x54000365
  %r8377.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8377 = load i64, ptr %r8377.p, align 8, !alias.scope !3, !noalias !4
  %fsh8379 = lshr i64 %r8377, 31
  %ftr8380 = trunc i64 %fsh8379 to i1
  %cond8378 = xor i1 %ftr8380, true
  br i1 %cond8378, label %L_80006468c, label %L_800064624_ft
L_800064640:
  ; @pc 0x800064640 word 0x91046129
  %r8398.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8398 = load i64, ptr %r8398.p, align 8, !alias.scope !3, !noalias !4
  %t8399 = add i64 %r8398, 280
  %wp8400 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t8399, ptr %wp8400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064644 word 0x17fffbd1
  br label %L_800063588
L_800064648:
  ; @pc 0x800064648 word 0xbd010ac0
  %r8401.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8401 = load i64, ptr %r8401.p, align 8, !alias.scope !3, !noalias !4
  %t8402 = add i64 %r8401, 264
  %r8403.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8403 = load i128, ptr %r8403.p, align 16, !alias.scope !3, !noalias !4
  %c8404 = trunc i128 %r8403 to i32
  %gmp8405 = inttoptr i64 %t8402 to ptr
  store i32 %c8404, ptr %gmp8405, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006464c word 0xbd410ec0
  %r8406.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8406 = load i64, ptr %r8406.p, align 8, !alias.scope !3, !noalias !4
  %t8407 = add i64 %r8406, 268
  %gmp8408 = inttoptr i64 %t8407 to ptr
  %gml8409 = load i32, ptr %gmp8408, align 1, !alias.scope !4, !noalias !3
  %c8410 = zext i32 %gml8409 to i128
  %wp8411 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8410, ptr %wp8411, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064650 word 0x1e202900
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 8, i32 0)
  br label %L_800064654
L_800064654:
  ; @pc 0x800064654 word 0x52a86908
  %c8412 = zext i32 1128792064 to i64
  %wp8413 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8412, ptr %wp8413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064658 word 0x1e270101
  %r8414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8414 = load i64, ptr %r8414.p, align 8, !alias.scope !3, !noalias !4
  %c8415 = trunc i64 %r8414 to i32
  %c8416 = zext i32 %c8415 to i128
  %wp8417 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8416, ptr %wp8417, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006465c word 0x1e212000
  %fcmp8418 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp8419 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8418, ptr %wp8419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064660 word 0x540004ab
  %r8420.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8420 = load i64, ptr %r8420.p, align 8, !alias.scope !3, !noalias !4
  %fsh8422 = lshr i64 %r8420, 31
  %ftr8423 = trunc i64 %fsh8422 to i1
  %fsh8424 = lshr i64 %r8420, 28
  %ftr8425 = trunc i64 %fsh8424 to i1
  %cond8421 = icmp ne i1 %ftr8423, %ftr8425
  br i1 %cond8421, label %L_8000646f4, label %L_800064664_ft
L_800064674:
  ; @pc 0x800064674 word 0x9100d128
  %r8432.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8432 = load i64, ptr %r8432.p, align 8, !alias.scope !3, !noalias !4
  %t8433 = add i64 %r8432, 52
  %wp8434 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t8433, ptr %wp8434, align 8, !alias.scope !3, !noalias !4
  br label %L_800064678
L_800064678:
  ; @pc 0x800064678 word 0x885f7d09
  %r8435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8435 = load i64, ptr %r8435.p, align 8, !alias.scope !3, !noalias !4
  %atp8436 = inttoptr i64 %r8435 to ptr
  %ldx8437 = load atomic i32, ptr %atp8436 acquire, align 4, !alias.scope !4, !noalias !3
  %c8438 = zext i32 %ldx8437 to i64
  %fp8439 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r8435, ptr %fp8439, align 8, !alias.scope !3, !noalias !4
  %fp8440 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c8438, ptr %fp8440, align 8, !alias.scope !3, !noalias !4
  %wp8441 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8438, ptr %wp8441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006467c word 0x321e0129
  %r8442.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8442 = load i64, ptr %r8442.p, align 8, !alias.scope !3, !noalias !4
  %c8443 = trunc i64 %r8442 to i32
  %t8444 = or i32 %c8443, 4
  %c8445 = zext i32 %t8444 to i64
  %wp8446 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8445, ptr %wp8446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064680 word 0x880a7d09
  %r8447.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8447 = load i64, ptr %r8447.p, align 8, !alias.scope !3, !noalias !4
  %atp8448 = inttoptr i64 %r8447 to ptr
  %fp8449 = getelementptr inbounds i8, ptr %c, i64 296
  %fv8450 = load i64, ptr %fp8449, align 8, !alias.scope !3, !noalias !4
  %fp8451 = getelementptr inbounds i8, ptr %c, i64 304
  %fv8452 = load i64, ptr %fp8451, align 8, !alias.scope !3, !noalias !4
  %fp8453 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp8453, align 8, !alias.scope !3, !noalias !4
  %cmp8454 = icmp eq i64 %fv8450, %r8447
  %c8455 = trunc i64 %fv8452 to i32
  %r8456.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8456 = load i64, ptr %r8456.p, align 8, !alias.scope !3, !noalias !4
  %c8457 = trunc i64 %r8456 to i32
  %cx8458 = cmpxchg ptr %atp8448, i32 %c8455, i32 %c8457 seq_cst seq_cst, align 4
  %cxok8459 = extractvalue { i32, i1 } %cx8458, 1
  %t8460 = and i1 %cmp8454, %cxok8459
  %sel8461 = select i1 %t8460, i32 0, i32 1
  %c8462 = zext i32 %sel8461 to i64
  %wp8463 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8462, ptr %wp8463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064684 word 0x35ffffaa
  %r8464.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8464 = load i64, ptr %r8464.p, align 8, !alias.scope !3, !noalias !4
  %c8465 = trunc i64 %r8464 to i32
  %cmp8466 = icmp ne i32 %c8465, 0
  br i1 %cmp8466, label %L_800064678, label %L_800064688_ft
L_80006468c:
  ; @pc 0x80006468c word 0x1e2c1006
  %wp8467 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 1056964608, ptr %wp8467, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064690 word 0x1e2620a0
  %fcmp8468 = call i64 @rt_fp_cmp_s(ptr %c, i32 5, i32 6, i32 0)
  %wp8469 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8468, ptr %wp8469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064694 word 0x54000128
  %r8470.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8470 = load i64, ptr %r8470.p, align 8, !alias.scope !3, !noalias !4
  %fsh8472 = lshr i64 %r8470, 29
  %ftr8473 = trunc i64 %fsh8472 to i1
  %fsh8474 = lshr i64 %r8470, 30
  %ftr8475 = trunc i64 %fsh8474 to i1
  %fnz8476 = xor i1 %ftr8475, true
  %cond8471 = and i1 %ftr8473, %fnz8476
  br i1 %cond8471, label %L_8000646b8, label %L_800064698_ft
L_8000646b8:
  ; @pc 0x8000646b8 word 0x1e201821
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 1, i32 0)
  ; @pc 0x8000646bc word 0x1e254025
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 5, i32 1)
  ; @pc 0x8000646c0 word 0x1e201880
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 4, i32 0)
  ; @pc 0x8000646c4 word 0x1e254004
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 4, i32 0)
  ; @pc 0x8000646c8 word 0x1e253821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 5)
  ; @pc 0x8000646cc word 0x1e243800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 4)
  ; @pc 0x8000646d0 word 0x1e212000
  %fcmp8507 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp8508 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8507, ptr %wp8508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000646d4 word 0x54000265
  %r8509.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8509 = load i64, ptr %r8509.p, align 8, !alias.scope !3, !noalias !4
  %fsh8511 = lshr i64 %r8509, 31
  %ftr8512 = trunc i64 %fsh8511 to i1
  %cond8510 = xor i1 %ftr8512, true
  br i1 %cond8510, label %L_800064720, label %L_8000646d8_ft
L_8000646f4:
  ; @pc 0x8000646f4 word 0xbd010ec0
  %r8530.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8530 = load i64, ptr %r8530.p, align 8, !alias.scope !3, !noalias !4
  %t8531 = add i64 %r8530, 268
  %r8532.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8532 = load i128, ptr %r8532.p, align 16, !alias.scope !3, !noalias !4
  %c8533 = trunc i128 %r8532 to i32
  %gmp8534 = inttoptr i64 %t8531 to ptr
  store i32 %c8533, ptr %gmp8534, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000646f8 word 0xbd4112c0
  %r8535.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8535 = load i64, ptr %r8535.p, align 8, !alias.scope !3, !noalias !4
  %t8536 = add i64 %r8535, 272
  %gmp8537 = inttoptr i64 %t8536 to ptr
  %gml8538 = load i32, ptr %gmp8537, align 1, !alias.scope !4, !noalias !3
  %c8539 = zext i32 %gml8538 to i128
  %wp8540 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8539, ptr %wp8540, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000646fc word 0x1e202900
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 8, i32 0)
  br label %L_800064700
L_800064700:
  ; @pc 0x800064700 word 0x52a872c8
  %c8541 = zext i32 1133903872 to i64
  %wp8542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8541, ptr %wp8542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064704 word 0x1e270101
  %r8543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8543 = load i64, ptr %r8543.p, align 8, !alias.scope !3, !noalias !4
  %c8544 = trunc i64 %r8543 to i32
  %c8545 = zext i32 %c8544 to i128
  %wp8546 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8545, ptr %wp8546, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064708 word 0x1e212000
  %fcmp8547 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp8548 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8547, ptr %wp8548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006470c word 0x540026eb
  %r8549.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8549 = load i64, ptr %r8549.p, align 8, !alias.scope !3, !noalias !4
  %fsh8551 = lshr i64 %r8549, 31
  %ftr8552 = trunc i64 %fsh8551 to i1
  %fsh8553 = lshr i64 %r8549, 28
  %ftr8554 = trunc i64 %fsh8553 to i1
  %cond8550 = icmp ne i1 %ftr8552, %ftr8554
  br i1 %cond8550, label %L_800064be8, label %L_800064710_ft
L_800064720:
  ; @pc 0x800064720 word 0x1e2c1004
  %wp8561 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 1056964608, ptr %wp8561, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064724 word 0x1e242020
  %fcmp8562 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 4, i32 0)
  %wp8563 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8562, ptr %wp8563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064728 word 0x54000128
  %r8564.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8564 = load i64, ptr %r8564.p, align 8, !alias.scope !3, !noalias !4
  %fsh8566 = lshr i64 %r8564, 29
  %ftr8567 = trunc i64 %fsh8566 to i1
  %fsh8568 = lshr i64 %r8564, 30
  %ftr8569 = trunc i64 %fsh8568 to i1
  %fnz8570 = xor i1 %ftr8569, true
  %cond8565 = and i1 %ftr8567, %fnz8570
  br i1 %cond8565, label %L_80006474c, label %L_80006472c_ft
L_80006474c:
  ; @pc 0x80006474c word 0x1e2e100b
  %wp8601 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 1065353216, ptr %wp8601, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064750 word 0x1e201004
  %wp8602 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 1073741824, ptr %wp8602, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064754 word 0x9101e3e2
  %r8603.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8603 = load i64, ptr %r8603.p, align 8, !alias.scope !3, !noalias !4
  %t8604 = add i64 %r8603, 120
  %wp8605 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t8604, ptr %wp8605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064758 word 0x1e222941
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 10, i32 2)
  ; @pc 0x80006475c word 0x1e214062
  %r8606.p = getelementptr inbounds i8, ptr %c, i64 560
  %r8606 = load i128, ptr %r8606.p, align 16, !alias.scope !3, !noalias !4
  %c8607 = trunc i128 %r8606 to i32
  %t8608 = xor i32 %c8607, -2147483648
  %c8609 = zext i32 %t8608 to i128
  %wp8610 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8609, ptr %wp8610, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064760 word 0xaa1a03e0
  %r8611.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8611 = load i64, ptr %r8611.p, align 8, !alias.scope !3, !noalias !4
  %t8612 = or i64 0, %r8611
  %wp8613 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8612, ptr %wp8613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064764 word 0x2a1f03e1
  %t8614 = or i32 0, 0
  %c8615 = zext i32 %t8614 to i64
  %wp8616 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8615, ptr %wp8616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064768 word 0x2a1f03e3
  %t8617 = or i32 0, 0
  %c8618 = zext i32 %t8617 to i64
  %wp8619 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8618, ptr %wp8619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006476c word 0x2a1f03e4
  %t8620 = or i32 0, 0
  %c8621 = zext i32 %t8620 to i64
  %wp8622 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c8621, ptr %wp8622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064770 word 0x1f04ac63
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 3, i32 3, i32 4, i32 11)
  ; @pc 0x800064774 word 0x1f242c42
  call void @rt_fp_fma_s(ptr %c, i32 1, i32 1, i32 2, i32 2, i32 4, i32 11)
  ; @pc 0x800064778 word 0x1e202068
  %fcmp8623 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 0, i32 1)
  %wp8624 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8623, ptr %wp8624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006477c word 0x1e23bc42
  %r8625.p = getelementptr inbounds i8, ptr %c, i64 544
  %r8625 = load i128, ptr %r8625.p, align 16, !alias.scope !3, !noalias !4
  %c8626 = trunc i128 %r8625 to i32
  %r8627.p = getelementptr inbounds i8, ptr %c, i64 560
  %r8627 = load i128, ptr %r8627.p, align 16, !alias.scope !3, !noalias !4
  %c8628 = trunc i128 %r8627 to i32
  %r8629.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8629 = load i64, ptr %r8629.p, align 8, !alias.scope !3, !noalias !4
  %fsh8631 = lshr i64 %r8629, 31
  %ftr8632 = trunc i64 %fsh8631 to i1
  %fsh8633 = lshr i64 %r8629, 28
  %ftr8634 = trunc i64 %fsh8633 to i1
  %cond8630 = icmp ne i1 %ftr8632, %ftr8634
  %sel8635 = select i1 %cond8630, i32 %c8626, i32 %c8628
  %c8636 = zext i32 %sel8635 to i128
  %wp8637 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8636, ptr %wp8637, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064780 word 0x1e22396c
  call void @rt_fp_op_s(ptr %c, i32 1, i32 12, i32 11, i32 2)
  ; @pc 0x800064784 word 0x1e214002
  %r8638.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8638 = load i128, ptr %r8638.p, align 16, !alias.scope !3, !noalias !4
  %c8639 = trunc i128 %r8638 to i32
  %t8640 = xor i32 %c8639, -2147483648
  %c8641 = zext i32 %t8640 to i128
  %wp8642 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8641, ptr %wp8642, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064788 word 0x1f04ac00
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 0, i32 0, i32 4, i32 11)
  ; @pc 0x80006478c word 0x1f242c43
  call void @rt_fp_fma_s(ptr %c, i32 1, i32 1, i32 3, i32 2, i32 4, i32 11)
  ; @pc 0x800064790 word 0xbd472ae2
  %r8643.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8643 = load i64, ptr %r8643.p, align 8, !alias.scope !3, !noalias !4
  %t8644 = add i64 %r8643, 1832
  %gmp8645 = inttoptr i64 %t8644 to ptr
  %gml8646 = load i32, ptr %gmp8645, align 1, !alias.scope !4, !noalias !3
  %c8647 = zext i32 %gml8646 to i128
  %wp8648 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8647, ptr %wp8648, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064794 word 0x1e202008
  %fcmp8649 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp8650 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8649, ptr %wp8650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064798 word 0x1e20bc60
  %r8651.p = getelementptr inbounds i8, ptr %c, i64 560
  %r8651 = load i128, ptr %r8651.p, align 16, !alias.scope !3, !noalias !4
  %c8652 = trunc i128 %r8651 to i32
  %r8653.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8653 = load i128, ptr %r8653.p, align 16, !alias.scope !3, !noalias !4
  %c8654 = trunc i128 %r8653 to i32
  %r8655.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8655 = load i64, ptr %r8655.p, align 8, !alias.scope !3, !noalias !4
  %fsh8657 = lshr i64 %r8655, 31
  %ftr8658 = trunc i64 %fsh8657 to i1
  %fsh8659 = lshr i64 %r8655, 28
  %ftr8660 = trunc i64 %fsh8659 to i1
  %cond8656 = icmp ne i1 %ftr8658, %ftr8660
  %sel8661 = select i1 %cond8656, i32 %c8652, i32 %c8654
  %c8662 = zext i32 %sel8661 to i128
  %wp8663 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8662, ptr %wp8663, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006479c word 0xbd4736e3
  %r8664.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8664 = load i64, ptr %r8664.p, align 8, !alias.scope !3, !noalias !4
  %t8665 = add i64 %r8664, 1844
  %gmp8666 = inttoptr i64 %t8665 to ptr
  %gml8667 = load i32, ptr %gmp8666, align 1, !alias.scope !4, !noalias !3
  %c8668 = zext i32 %gml8667 to i128
  %wp8669 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c8668, ptr %wp8669, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647a0 word 0x1e20396d
  call void @rt_fp_op_s(ptr %c, i32 1, i32 13, i32 11, i32 0)
  ; @pc 0x8000647a4 word 0xbd47cee0
  %r8670.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8670 = load i64, ptr %r8670.p, align 8, !alias.scope !3, !noalias !4
  %t8671 = add i64 %r8670, 1996
  %gmp8672 = inttoptr i64 %t8671 to ptr
  %gml8673 = load i32, ptr %gmp8672, align 1, !alias.scope !4, !noalias !3
  %c8674 = zext i32 %gml8673 to i128
  %wp8675 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8674, ptr %wp8675, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647a8 word 0x1e230821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 3)
  ; @pc 0x8000647ac word 0xbd476ae3
  %r8676.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8676 = load i64, ptr %r8676.p, align 8, !alias.scope !3, !noalias !4
  %t8677 = add i64 %r8676, 1896
  %gmp8678 = inttoptr i64 %t8677 to ptr
  %gml8679 = load i32, ptr %gmp8678, align 1, !alias.scope !4, !noalias !3
  %c8680 = zext i32 %gml8679 to i128
  %wp8681 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c8680, ptr %wp8681, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647b0 word 0x2d0f0be0
  %r8682.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8682 = load i64, ptr %r8682.p, align 8, !alias.scope !3, !noalias !4
  %t8683 = add i64 %r8682, 120
  %t8684 = add i64 %t8683, 4
  %r8685.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8685 = load i128, ptr %r8685.p, align 16, !alias.scope !3, !noalias !4
  %r8686.p = getelementptr inbounds i8, ptr %c, i64 544
  %r8686 = load i128, ptr %r8686.p, align 16, !alias.scope !3, !noalias !4
  %c8687 = trunc i128 %r8685 to i32
  %c8688 = trunc i128 %r8686 to i32
  %gmp8689 = inttoptr i64 %t8683 to ptr
  store i32 %c8687, ptr %gmp8689, align 1, !alias.scope !4, !noalias !3
  %gmp8690 = inttoptr i64 %t8684 to ptr
  store i32 %c8688, ptr %gmp8690, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000647b4 word 0x1e230940
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 10, i32 3)
  ; @pc 0x8000647b8 word 0x2d1003e1
  %r8691.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8691 = load i64, ptr %r8691.p, align 8, !alias.scope !3, !noalias !4
  %t8692 = add i64 %r8691, 128
  %t8693 = add i64 %t8692, 4
  %r8694.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8694 = load i128, ptr %r8694.p, align 16, !alias.scope !3, !noalias !4
  %r8695.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8695 = load i128, ptr %r8695.p, align 16, !alias.scope !3, !noalias !4
  %c8696 = trunc i128 %r8694 to i32
  %c8697 = trunc i128 %r8695 to i32
  %gmp8698 = inttoptr i64 %t8692 to ptr
  store i32 %c8696, ptr %gmp8698, align 1, !alias.scope !4, !noalias !3
  %gmp8699 = inttoptr i64 %t8693 to ptr
  store i32 %c8697, ptr %gmp8699, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000647bc word 0x9418afc3
  %wp8700 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360149952, ptr %wp8700, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x8000647c0 word 0xb94806e8
  %r8701.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8701 = load i64, ptr %r8701.p, align 8, !alias.scope !3, !noalias !4
  %t8702 = add i64 %r8701, 2052
  %gmp8703 = inttoptr i64 %t8702 to ptr
  %gml8704 = load i32, ptr %gmp8703, align 1, !alias.scope !4, !noalias !3
  %c8705 = zext i32 %gml8704 to i64
  %wp8706 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8705, ptr %wp8706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647c4 word 0x9101e3e2
  %r8707.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8707 = load i64, ptr %r8707.p, align 8, !alias.scope !3, !noalias !4
  %t8708 = add i64 %r8707, 120
  %wp8709 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t8708, ptr %wp8709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647c8 word 0xaa1a03e0
  %r8710.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8710 = load i64, ptr %r8710.p, align 8, !alias.scope !3, !noalias !4
  %t8711 = or i64 0, %r8710
  %wp8712 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8711, ptr %wp8712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647cc word 0xbd47fae0
  %r8713.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8713 = load i64, ptr %r8713.p, align 8, !alias.scope !3, !noalias !4
  %t8714 = add i64 %r8713, 2040
  %gmp8715 = inttoptr i64 %t8714 to ptr
  %gml8716 = load i32, ptr %gmp8715, align 1, !alias.scope !4, !noalias !3
  %c8717 = zext i32 %gml8716 to i128
  %wp8718 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8717, ptr %wp8718, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647d0 word 0x52800021
  %c8719 = zext i32 1 to i64
  %wp8720 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8719, ptr %wp8720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647d4 word 0x2a1f03e3
  %t8721 = or i32 0, 0
  %c8722 = zext i32 %t8721 to i64
  %wp8723 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8722, ptr %wp8723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647d8 word 0xbd47d2e4
  %r8724.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8724 = load i64, ptr %r8724.p, align 8, !alias.scope !3, !noalias !4
  %t8725 = add i64 %r8724, 2000
  %gmp8726 = inttoptr i64 %t8725 to ptr
  %gml8727 = load i32, ptr %gmp8726, align 1, !alias.scope !4, !noalias !3
  %c8728 = zext i32 %gml8727 to i128
  %wp8729 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8728, ptr %wp8729, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647dc word 0x2a1f03e4
  %t8730 = or i32 0, 0
  %c8731 = zext i32 %t8730 to i64
  %wp8732 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c8731, ptr %wp8732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647e0 word 0x7200011f
  %r8733.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8733 = load i64, ptr %r8733.p, align 8, !alias.scope !3, !noalias !4
  %c8734 = trunc i64 %r8733 to i32
  %t8735 = and i32 %c8734, 1
  %fn8736 = icmp slt i32 %t8735, 0
  %fz8737 = icmp eq i32 %t8735, 0
  %nz8738 = zext i1 %fn8736 to i64
  %zz8739 = zext i1 %fz8737 to i64
  %ns8740 = shl i64 %nz8738, 31
  %zs8741 = shl i64 %zz8739, 30
  %nzcv8742 = or i64 %ns8740, %zs8741
  %wp8743 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8742, ptr %wp8743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000647e4 word 0xbd4b72e1
  %r8744.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8744 = load i64, ptr %r8744.p, align 8, !alias.scope !3, !noalias !4
  %t8745 = add i64 %r8744, 2928
  %gmp8746 = inttoptr i64 %t8745 to ptr
  %gml8747 = load i32, ptr %gmp8746, align 1, !alias.scope !4, !noalias !3
  %c8748 = zext i32 %gml8747 to i128
  %wp8749 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8748, ptr %wp8749, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647e8 word 0xbd481ee2
  %r8750.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8750 = load i64, ptr %r8750.p, align 8, !alias.scope !3, !noalias !4
  %t8751 = add i64 %r8750, 2076
  %gmp8752 = inttoptr i64 %t8751 to ptr
  %gml8753 = load i32, ptr %gmp8752, align 1, !alias.scope !4, !noalias !3
  %c8754 = zext i32 %gml8753 to i128
  %wp8755 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8754, ptr %wp8755, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647ec word 0x1e200d60
  %r8756.p = getelementptr inbounds i8, ptr %c, i64 688
  %r8756 = load i128, ptr %r8756.p, align 16, !alias.scope !3, !noalias !4
  %c8757 = trunc i128 %r8756 to i32
  %r8758.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8758 = load i128, ptr %r8758.p, align 16, !alias.scope !3, !noalias !4
  %c8759 = trunc i128 %r8758 to i32
  %r8760.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8760 = load i64, ptr %r8760.p, align 8, !alias.scope !3, !noalias !4
  %fsh8762 = lshr i64 %r8760, 30
  %cond8761 = trunc i64 %fsh8762 to i1
  %sel8763 = select i1 %cond8761, i32 %c8757, i32 %c8759
  %c8764 = zext i32 %sel8763 to i128
  %wp8765 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8764, ptr %wp8765, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647f0 word 0xbd4b7ae3
  %r8766.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8766 = load i64, ptr %r8766.p, align 8, !alias.scope !3, !noalias !4
  %t8767 = add i64 %r8766, 2936
  %gmp8768 = inttoptr i64 %t8767 to ptr
  %gml8769 = load i32, ptr %gmp8768, align 1, !alias.scope !4, !noalias !3
  %c8770 = zext i32 %gml8769 to i128
  %wp8771 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c8770, ptr %wp8771, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000647f4 word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  ; @pc 0x8000647f8 word 0x1e200880
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 4, i32 0)
  ; @pc 0x8000647fc word 0xbd47d6e4
  %r8772.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8772 = load i64, ptr %r8772.p, align 8, !alias.scope !3, !noalias !4
  %t8773 = add i64 %r8772, 2004
  %gmp8774 = inttoptr i64 %t8773 to ptr
  %gml8775 = load i32, ptr %gmp8774, align 1, !alias.scope !4, !noalias !3
  %c8776 = zext i32 %gml8775 to i128
  %wp8777 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8776, ptr %wp8777, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064800 word 0x2d0f13e0
  %r8778.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8778 = load i64, ptr %r8778.p, align 8, !alias.scope !3, !noalias !4
  %t8779 = add i64 %r8778, 120
  %t8780 = add i64 %t8779, 4
  %r8781.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8781 = load i128, ptr %r8781.p, align 16, !alias.scope !3, !noalias !4
  %r8782.p = getelementptr inbounds i8, ptr %c, i64 576
  %r8782 = load i128, ptr %r8782.p, align 16, !alias.scope !3, !noalias !4
  %c8783 = trunc i128 %r8781 to i32
  %c8784 = trunc i128 %r8782 to i32
  %gmp8785 = inttoptr i64 %t8779 to ptr
  store i32 %c8783, ptr %gmp8785, align 1, !alias.scope !4, !noalias !3
  %gmp8786 = inttoptr i64 %t8780 to ptr
  store i32 %c8784, ptr %gmp8786, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064804 word 0x1e230840
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 2, i32 3)
  ; @pc 0x800064808 word 0x2d1003e1
  %r8787.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8787 = load i64, ptr %r8787.p, align 8, !alias.scope !3, !noalias !4
  %t8788 = add i64 %r8787, 128
  %t8789 = add i64 %t8788, 4
  %r8790.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8790 = load i128, ptr %r8790.p, align 16, !alias.scope !3, !noalias !4
  %r8791.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8791 = load i128, ptr %r8791.p, align 16, !alias.scope !3, !noalias !4
  %c8792 = trunc i128 %r8790 to i32
  %c8793 = trunc i128 %r8791 to i32
  %gmp8794 = inttoptr i64 %t8788 to ptr
  store i32 %c8792, ptr %gmp8794, align 1, !alias.scope !4, !noalias !3
  %gmp8795 = inttoptr i64 %t8789 to ptr
  store i32 %c8793, ptr %gmp8795, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006480c word 0x9418afaf
  %wp8796 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150032, ptr %wp8796, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064810 word 0xbd472ee0
  %r8797.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8797 = load i64, ptr %r8797.p, align 8, !alias.scope !3, !noalias !4
  %t8798 = add i64 %r8797, 1836
  %gmp8799 = inttoptr i64 %t8798 to ptr
  %gml8800 = load i32, ptr %gmp8799, align 1, !alias.scope !4, !noalias !3
  %c8801 = zext i32 %gml8800 to i128
  %wp8802 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8801, ptr %wp8802, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064814 word 0x9101e3e2
  %r8803.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8803 = load i64, ptr %r8803.p, align 8, !alias.scope !3, !noalias !4
  %t8804 = add i64 %r8803, 120
  %wp8805 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t8804, ptr %wp8805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064818 word 0xaa1a03e0
  %r8806.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8806 = load i64, ptr %r8806.p, align 8, !alias.scope !3, !noalias !4
  %t8807 = or i64 0, %r8806
  %wp8808 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8807, ptr %wp8808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006481c word 0xbd4732e1
  %r8809.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8809 = load i64, ptr %r8809.p, align 8, !alias.scope !3, !noalias !4
  %t8810 = add i64 %r8809, 1840
  %gmp8811 = inttoptr i64 %t8810 to ptr
  %gml8812 = load i32, ptr %gmp8811, align 1, !alias.scope !4, !noalias !3
  %c8813 = zext i32 %gml8812 to i128
  %wp8814 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8813, ptr %wp8814, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064820 word 0x52800041
  %c8815 = zext i32 2 to i64
  %wp8816 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8815, ptr %wp8816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064824 word 0x2a1f03e3
  %t8817 = or i32 0, 0
  %c8818 = zext i32 %t8817 to i64
  %wp8819 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8818, ptr %wp8819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064828 word 0x2a1f03e4
  %t8820 = or i32 0, 0
  %c8821 = zext i32 %t8820 to i64
  %wp8822 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c8821, ptr %wp8822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006482c word 0x2d0f37ec
  %r8823.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8823 = load i64, ptr %r8823.p, align 8, !alias.scope !3, !noalias !4
  %t8824 = add i64 %r8823, 120
  %t8825 = add i64 %t8824, 4
  %r8826.p = getelementptr inbounds i8, ptr %c, i64 704
  %r8826 = load i128, ptr %r8826.p, align 16, !alias.scope !3, !noalias !4
  %r8827.p = getelementptr inbounds i8, ptr %c, i64 720
  %r8827 = load i128, ptr %r8827.p, align 16, !alias.scope !3, !noalias !4
  %c8828 = trunc i128 %r8826 to i32
  %c8829 = trunc i128 %r8827 to i32
  %gmp8830 = inttoptr i64 %t8824 to ptr
  store i32 %c8828, ptr %gmp8830, align 1, !alias.scope !4, !noalias !3
  %gmp8831 = inttoptr i64 %t8825 to ptr
  store i32 %c8829, ptr %gmp8831, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064830 word 0x1e203960
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 11, i32 0)
  ; @pc 0x800064834 word 0x1e213961
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 11, i32 1)
  ; @pc 0x800064838 word 0x1f0aac00
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 0, i32 0, i32 10, i32 11)
  ; @pc 0x80006483c word 0x1f0aac21
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 10, i32 11)
  ; @pc 0x800064840 word 0x2d1007e0
  %r8832.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8832 = load i64, ptr %r8832.p, align 8, !alias.scope !3, !noalias !4
  %t8833 = add i64 %r8832, 128
  %t8834 = add i64 %t8833, 4
  %r8835.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8835 = load i128, ptr %r8835.p, align 16, !alias.scope !3, !noalias !4
  %r8836.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8836 = load i128, ptr %r8836.p, align 16, !alias.scope !3, !noalias !4
  %c8837 = trunc i128 %r8835 to i32
  %c8838 = trunc i128 %r8836 to i32
  %gmp8839 = inttoptr i64 %t8833 to ptr
  store i32 %c8837, ptr %gmp8839, align 1, !alias.scope !4, !noalias !3
  %gmp8840 = inttoptr i64 %t8834 to ptr
  store i32 %c8838, ptr %gmp8840, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064844 word 0x9418afa1
  %wp8841 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150088, ptr %wp8841, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064848 word 0xbd481ae0
  %r8842.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8842 = load i64, ptr %r8842.p, align 8, !alias.scope !3, !noalias !4
  %t8843 = add i64 %r8842, 2072
  %gmp8844 = inttoptr i64 %t8843 to ptr
  %gml8845 = load i32, ptr %gmp8844, align 1, !alias.scope !4, !noalias !3
  %c8846 = zext i32 %gml8845 to i128
  %wp8847 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8846, ptr %wp8847, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006484c word 0x9101e3e2
  %r8848.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8848 = load i64, ptr %r8848.p, align 8, !alias.scope !3, !noalias !4
  %t8849 = add i64 %r8848, 120
  %wp8850 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t8849, ptr %wp8850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064850 word 0xaa1a03e0
  %r8851.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8851 = load i64, ptr %r8851.p, align 8, !alias.scope !3, !noalias !4
  %t8852 = or i64 0, %r8851
  %wp8853 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8852, ptr %wp8853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064854 word 0xbd473ae1
  %r8854.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8854 = load i64, ptr %r8854.p, align 8, !alias.scope !3, !noalias !4
  %t8855 = add i64 %r8854, 1848
  %gmp8856 = inttoptr i64 %t8855 to ptr
  %gml8857 = load i32, ptr %gmp8856, align 1, !alias.scope !4, !noalias !3
  %c8858 = zext i32 %gml8857 to i128
  %wp8859 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8858, ptr %wp8859, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064858 word 0x52800061
  %c8860 = zext i32 3 to i64
  %wp8861 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8860, ptr %wp8861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006485c word 0x2a1f03e3
  %t8862 = or i32 0, 0
  %c8863 = zext i32 %t8862 to i64
  %wp8864 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8863, ptr %wp8864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064860 word 0xbd473ee2
  %r8865.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8865 = load i64, ptr %r8865.p, align 8, !alias.scope !3, !noalias !4
  %t8866 = add i64 %r8865, 1852
  %gmp8867 = inttoptr i64 %t8866 to ptr
  %gml8868 = load i32, ptr %gmp8867, align 1, !alias.scope !4, !noalias !3
  %c8869 = zext i32 %gml8868 to i128
  %wp8870 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8869, ptr %wp8870, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064864 word 0x2a1f03e4
  %t8871 = or i32 0, 0
  %c8872 = zext i32 %t8871 to i64
  %wp8873 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c8872, ptr %wp8873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064868 word 0x1e210801
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 0, i32 1)
  ; @pc 0x80006486c word 0xbd4742e3
  %r8874.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8874 = load i64, ptr %r8874.p, align 8, !alias.scope !3, !noalias !4
  %t8875 = add i64 %r8874, 1856
  %gmp8876 = inttoptr i64 %t8875 to ptr
  %gml8877 = load i32, ptr %gmp8876, align 1, !alias.scope !4, !noalias !3
  %c8878 = zext i32 %gml8877 to i128
  %wp8879 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c8878, ptr %wp8879, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064870 word 0xbd4746e4
  %r8880.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8880 = load i64, ptr %r8880.p, align 8, !alias.scope !3, !noalias !4
  %t8881 = add i64 %r8880, 1860
  %gmp8882 = inttoptr i64 %t8881 to ptr
  %gml8883 = load i32, ptr %gmp8882, align 1, !alias.scope !4, !noalias !3
  %c8884 = zext i32 %gml8883 to i128
  %wp8885 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8884, ptr %wp8885, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064874 word 0x1e220800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 2)
  ; @pc 0x800064878 word 0xbd474ae2
  %r8886.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8886 = load i64, ptr %r8886.p, align 8, !alias.scope !3, !noalias !4
  %t8887 = add i64 %r8886, 1864
  %gmp8888 = inttoptr i64 %t8887 to ptr
  %gml8889 = load i32, ptr %gmp8888, align 1, !alias.scope !4, !noalias !3
  %c8890 = zext i32 %gml8889 to i128
  %wp8891 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8890, ptr %wp8891, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006487c word 0x1e232821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 3)
  ; @pc 0x800064880 word 0x1e242800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 4)
  ; @pc 0x800064884 word 0x2d0f03e1
  %r8892.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8892 = load i64, ptr %r8892.p, align 8, !alias.scope !3, !noalias !4
  %t8893 = add i64 %r8892, 120
  %t8894 = add i64 %t8893, 4
  %r8895.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8895 = load i128, ptr %r8895.p, align 16, !alias.scope !3, !noalias !4
  %r8896.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8896 = load i128, ptr %r8896.p, align 16, !alias.scope !3, !noalias !4
  %c8897 = trunc i128 %r8895 to i32
  %c8898 = trunc i128 %r8896 to i32
  %gmp8899 = inttoptr i64 %t8893 to ptr
  store i32 %c8897, ptr %gmp8899, align 1, !alias.scope !4, !noalias !3
  %gmp8900 = inttoptr i64 %t8894 to ptr
  store i32 %c8898, ptr %gmp8900, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064888 word 0xbd474ee0
  %r8901.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8901 = load i64, ptr %r8901.p, align 8, !alias.scope !3, !noalias !4
  %t8902 = add i64 %r8901, 1868
  %gmp8903 = inttoptr i64 %t8902 to ptr
  %gml8904 = load i32, ptr %gmp8903, align 1, !alias.scope !4, !noalias !3
  %c8905 = zext i32 %gml8904 to i128
  %wp8906 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8905, ptr %wp8906, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006488c word 0x2d1003e2
  %r8907.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8907 = load i64, ptr %r8907.p, align 8, !alias.scope !3, !noalias !4
  %t8908 = add i64 %r8907, 128
  %t8909 = add i64 %t8908, 4
  %r8910.p = getelementptr inbounds i8, ptr %c, i64 544
  %r8910 = load i128, ptr %r8910.p, align 16, !alias.scope !3, !noalias !4
  %r8911.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8911 = load i128, ptr %r8911.p, align 16, !alias.scope !3, !noalias !4
  %c8912 = trunc i128 %r8910 to i32
  %c8913 = trunc i128 %r8911 to i32
  %gmp8914 = inttoptr i64 %t8908 to ptr
  store i32 %c8912, ptr %gmp8914, align 1, !alias.scope !4, !noalias !3
  %gmp8915 = inttoptr i64 %t8909 to ptr
  store i32 %c8913, ptr %gmp8915, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064890 word 0x9418af8e
  %wp8916 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150164, ptr %wp8916, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064894 word 0xbd481ae0
  %r8917.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8917 = load i64, ptr %r8917.p, align 8, !alias.scope !3, !noalias !4
  %t8918 = add i64 %r8917, 2072
  %gmp8919 = inttoptr i64 %t8918 to ptr
  %gml8920 = load i32, ptr %gmp8919, align 1, !alias.scope !4, !noalias !3
  %c8921 = zext i32 %gml8920 to i128
  %wp8922 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8921, ptr %wp8922, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064898 word 0x9101e3e2
  %r8923.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8923 = load i64, ptr %r8923.p, align 8, !alias.scope !3, !noalias !4
  %t8924 = add i64 %r8923, 120
  %wp8925 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t8924, ptr %wp8925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006489c word 0xaa1a03e0
  %r8926.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8926 = load i64, ptr %r8926.p, align 8, !alias.scope !3, !noalias !4
  %t8927 = or i64 0, %r8926
  %wp8928 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8927, ptr %wp8928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648a0 word 0xbd4752e1
  %r8929.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8929 = load i64, ptr %r8929.p, align 8, !alias.scope !3, !noalias !4
  %t8930 = add i64 %r8929, 1872
  %gmp8931 = inttoptr i64 %t8930 to ptr
  %gml8932 = load i32, ptr %gmp8931, align 1, !alias.scope !4, !noalias !3
  %c8933 = zext i32 %gml8932 to i128
  %wp8934 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8933, ptr %wp8934, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648a4 word 0x52800081
  %c8935 = zext i32 4 to i64
  %wp8936 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8935, ptr %wp8936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648a8 word 0x2a1f03e3
  %t8937 = or i32 0, 0
  %c8938 = zext i32 %t8937 to i64
  %wp8939 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8938, ptr %wp8939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648ac word 0xbd4756e2
  %r8940.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8940 = load i64, ptr %r8940.p, align 8, !alias.scope !3, !noalias !4
  %t8941 = add i64 %r8940, 1876
  %gmp8942 = inttoptr i64 %t8941 to ptr
  %gml8943 = load i32, ptr %gmp8942, align 1, !alias.scope !4, !noalias !3
  %c8944 = zext i32 %gml8943 to i128
  %wp8945 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8944, ptr %wp8945, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648b0 word 0x2a1f03e4
  %t8946 = or i32 0, 0
  %c8947 = zext i32 %t8946 to i64
  %wp8948 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c8947, ptr %wp8948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648b4 word 0x1e210801
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 0, i32 1)
  ; @pc 0x8000648b8 word 0xbd475ae3
  %r8949.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8949 = load i64, ptr %r8949.p, align 8, !alias.scope !3, !noalias !4
  %t8950 = add i64 %r8949, 1880
  %gmp8951 = inttoptr i64 %t8950 to ptr
  %gml8952 = load i32, ptr %gmp8951, align 1, !alias.scope !4, !noalias !3
  %c8953 = zext i32 %gml8952 to i128
  %wp8954 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c8953, ptr %wp8954, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648bc word 0xbd475ee4
  %r8955.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8955 = load i64, ptr %r8955.p, align 8, !alias.scope !3, !noalias !4
  %t8956 = add i64 %r8955, 1884
  %gmp8957 = inttoptr i64 %t8956 to ptr
  %gml8958 = load i32, ptr %gmp8957, align 1, !alias.scope !4, !noalias !3
  %c8959 = zext i32 %gml8958 to i128
  %wp8960 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8959, ptr %wp8960, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648c0 word 0x1e220800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 2)
  ; @pc 0x8000648c4 word 0xbd4762e2
  %r8961.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8961 = load i64, ptr %r8961.p, align 8, !alias.scope !3, !noalias !4
  %t8962 = add i64 %r8961, 1888
  %gmp8963 = inttoptr i64 %t8962 to ptr
  %gml8964 = load i32, ptr %gmp8963, align 1, !alias.scope !4, !noalias !3
  %c8965 = zext i32 %gml8964 to i128
  %wp8966 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c8965, ptr %wp8966, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648c8 word 0x1e232821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 3)
  ; @pc 0x8000648cc word 0x1e242800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 4)
  ; @pc 0x8000648d0 word 0x2d0f03e1
  %r8967.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8967 = load i64, ptr %r8967.p, align 8, !alias.scope !3, !noalias !4
  %t8968 = add i64 %r8967, 120
  %t8969 = add i64 %t8968, 4
  %r8970.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8970 = load i128, ptr %r8970.p, align 16, !alias.scope !3, !noalias !4
  %r8971.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8971 = load i128, ptr %r8971.p, align 16, !alias.scope !3, !noalias !4
  %c8972 = trunc i128 %r8970 to i32
  %c8973 = trunc i128 %r8971 to i32
  %gmp8974 = inttoptr i64 %t8968 to ptr
  store i32 %c8972, ptr %gmp8974, align 1, !alias.scope !4, !noalias !3
  %gmp8975 = inttoptr i64 %t8969 to ptr
  store i32 %c8973, ptr %gmp8975, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000648d4 word 0xbd4766e0
  %r8976.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8976 = load i64, ptr %r8976.p, align 8, !alias.scope !3, !noalias !4
  %t8977 = add i64 %r8976, 1892
  %gmp8978 = inttoptr i64 %t8977 to ptr
  %gml8979 = load i32, ptr %gmp8978, align 1, !alias.scope !4, !noalias !3
  %c8980 = zext i32 %gml8979 to i128
  %wp8981 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8980, ptr %wp8981, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648d8 word 0x2d1003e2
  %r8982.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8982 = load i64, ptr %r8982.p, align 8, !alias.scope !3, !noalias !4
  %t8983 = add i64 %r8982, 128
  %t8984 = add i64 %t8983, 4
  %r8985.p = getelementptr inbounds i8, ptr %c, i64 544
  %r8985 = load i128, ptr %r8985.p, align 16, !alias.scope !3, !noalias !4
  %r8986.p = getelementptr inbounds i8, ptr %c, i64 512
  %r8986 = load i128, ptr %r8986.p, align 16, !alias.scope !3, !noalias !4
  %c8987 = trunc i128 %r8985 to i32
  %c8988 = trunc i128 %r8986 to i32
  %gmp8989 = inttoptr i64 %t8983 to ptr
  store i32 %c8987, ptr %gmp8989, align 1, !alias.scope !4, !noalias !3
  %gmp8990 = inttoptr i64 %t8984 to ptr
  store i32 %c8988, ptr %gmp8990, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000648dc word 0x9418af7b
  %wp8991 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150240, ptr %wp8991, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x8000648e0 word 0xbd481ae0
  %r8992.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8992 = load i64, ptr %r8992.p, align 8, !alias.scope !3, !noalias !4
  %t8993 = add i64 %r8992, 2072
  %gmp8994 = inttoptr i64 %t8993 to ptr
  %gml8995 = load i32, ptr %gmp8994, align 1, !alias.scope !4, !noalias !3
  %c8996 = zext i32 %gml8995 to i128
  %wp8997 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8996, ptr %wp8997, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648e4 word 0x528000a1
  %c8998 = zext i32 5 to i64
  %wp8999 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8998, ptr %wp8999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648e8 word 0x9101e3e2
  %r9000.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9000 = load i64, ptr %r9000.p, align 8, !alias.scope !3, !noalias !4
  %t9001 = add i64 %r9000, 120
  %wp9002 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9001, ptr %wp9002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648ec word 0xbd476ee1
  %r9003.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9003 = load i64, ptr %r9003.p, align 8, !alias.scope !3, !noalias !4
  %t9004 = add i64 %r9003, 1900
  %gmp9005 = inttoptr i64 %t9004 to ptr
  %gml9006 = load i32, ptr %gmp9005, align 1, !alias.scope !4, !noalias !3
  %c9007 = zext i32 %gml9006 to i128
  %wp9008 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9007, ptr %wp9008, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648f0 word 0xaa1a03e0
  %r9009.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9009 = load i64, ptr %r9009.p, align 8, !alias.scope !3, !noalias !4
  %t9010 = or i64 0, %r9009
  %wp9011 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9010, ptr %wp9011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648f4 word 0x2a1f03e3
  %t9012 = or i32 0, 0
  %c9013 = zext i32 %t9012 to i64
  %wp9014 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9013, ptr %wp9014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000648f8 word 0xbd4772e2
  %r9015.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9015 = load i64, ptr %r9015.p, align 8, !alias.scope !3, !noalias !4
  %t9016 = add i64 %r9015, 1904
  %gmp9017 = inttoptr i64 %t9016 to ptr
  %gml9018 = load i32, ptr %gmp9017, align 1, !alias.scope !4, !noalias !3
  %c9019 = zext i32 %gml9018 to i128
  %wp9020 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c9019, ptr %wp9020, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000648fc word 0x2a1f03e4
  %t9021 = or i32 0, 0
  %c9022 = zext i32 %t9021 to i64
  %wp9023 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9022, ptr %wp9023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064900 word 0x1e210801
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 0, i32 1)
  ; @pc 0x800064904 word 0xbd4776e3
  %r9024.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9024 = load i64, ptr %r9024.p, align 8, !alias.scope !3, !noalias !4
  %t9025 = add i64 %r9024, 1908
  %gmp9026 = inttoptr i64 %t9025 to ptr
  %gml9027 = load i32, ptr %gmp9026, align 1, !alias.scope !4, !noalias !3
  %c9028 = zext i32 %gml9027 to i128
  %wp9029 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c9028, ptr %wp9029, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064908 word 0xbd477ae4
  %r9030.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9030 = load i64, ptr %r9030.p, align 8, !alias.scope !3, !noalias !4
  %t9031 = add i64 %r9030, 1912
  %gmp9032 = inttoptr i64 %t9031 to ptr
  %gml9033 = load i32, ptr %gmp9032, align 1, !alias.scope !4, !noalias !3
  %c9034 = zext i32 %gml9033 to i128
  %wp9035 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c9034, ptr %wp9035, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006490c word 0x1e220800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 2)
  ; @pc 0x800064910 word 0xbd477ee2
  %r9036.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9036 = load i64, ptr %r9036.p, align 8, !alias.scope !3, !noalias !4
  %t9037 = add i64 %r9036, 1916
  %gmp9038 = inttoptr i64 %t9037 to ptr
  %gml9039 = load i32, ptr %gmp9038, align 1, !alias.scope !4, !noalias !3
  %c9040 = zext i32 %gml9039 to i128
  %wp9041 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c9040, ptr %wp9041, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064914 word 0x1e232821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 3)
  ; @pc 0x800064918 word 0x1e242800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 4)
  ; @pc 0x80006491c word 0x2d0f03e1
  %r9042.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9042 = load i64, ptr %r9042.p, align 8, !alias.scope !3, !noalias !4
  %t9043 = add i64 %r9042, 120
  %t9044 = add i64 %t9043, 4
  %r9045.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9045 = load i128, ptr %r9045.p, align 16, !alias.scope !3, !noalias !4
  %r9046.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9046 = load i128, ptr %r9046.p, align 16, !alias.scope !3, !noalias !4
  %c9047 = trunc i128 %r9045 to i32
  %c9048 = trunc i128 %r9046 to i32
  %gmp9049 = inttoptr i64 %t9043 to ptr
  store i32 %c9047, ptr %gmp9049, align 1, !alias.scope !4, !noalias !3
  %gmp9050 = inttoptr i64 %t9044 to ptr
  store i32 %c9048, ptr %gmp9050, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064920 word 0xbd4782e0
  %r9051.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9051 = load i64, ptr %r9051.p, align 8, !alias.scope !3, !noalias !4
  %t9052 = add i64 %r9051, 1920
  %gmp9053 = inttoptr i64 %t9052 to ptr
  %gml9054 = load i32, ptr %gmp9053, align 1, !alias.scope !4, !noalias !3
  %c9055 = zext i32 %gml9054 to i128
  %wp9056 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9055, ptr %wp9056, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064924 word 0x2d1003e2
  %r9057.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9057 = load i64, ptr %r9057.p, align 8, !alias.scope !3, !noalias !4
  %t9058 = add i64 %r9057, 128
  %t9059 = add i64 %t9058, 4
  %r9060.p = getelementptr inbounds i8, ptr %c, i64 544
  %r9060 = load i128, ptr %r9060.p, align 16, !alias.scope !3, !noalias !4
  %r9061.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9061 = load i128, ptr %r9061.p, align 16, !alias.scope !3, !noalias !4
  %c9062 = trunc i128 %r9060 to i32
  %c9063 = trunc i128 %r9061 to i32
  %gmp9064 = inttoptr i64 %t9058 to ptr
  store i32 %c9062, ptr %gmp9064, align 1, !alias.scope !4, !noalias !3
  %gmp9065 = inttoptr i64 %t9059 to ptr
  store i32 %c9063, ptr %gmp9065, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064928 word 0x9418af68
  %wp9066 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150316, ptr %wp9066, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x80006492c word 0xbd47daeb
  %r9067.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9067 = load i64, ptr %r9067.p, align 8, !alias.scope !3, !noalias !4
  %t9068 = add i64 %r9067, 2008
  %gmp9069 = inttoptr i64 %t9068 to ptr
  %gml9070 = load i32, ptr %gmp9069, align 1, !alias.scope !4, !noalias !3
  %c9071 = zext i32 %gml9070 to i128
  %wp9072 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c9071, ptr %wp9072, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064930 word 0x942b7e79
  %wp9073 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150324, ptr %wp9073, align 8, !alias.scope !3, !noalias !4
  call void @f_800b44314(ptr %c)
  ; @pc 0x800064934 word 0xb94baae8
  %r9074.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9074 = load i64, ptr %r9074.p, align 8, !alias.scope !3, !noalias !4
  %t9075 = add i64 %r9074, 2984
  %gmp9076 = inttoptr i64 %t9075 to ptr
  %gml9077 = load i32, ptr %gmp9076, align 1, !alias.scope !4, !noalias !3
  %c9078 = zext i32 %gml9077 to i64
  %wp9079 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9078, ptr %wp9079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064938 word 0x9101e3e2
  %r9080.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9080 = load i64, ptr %r9080.p, align 8, !alias.scope !3, !noalias !4
  %t9081 = add i64 %r9080, 120
  %wp9082 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9081, ptr %wp9082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006493c word 0x528000c1
  %c9083 = zext i32 6 to i64
  %wp9084 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9083, ptr %wp9084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064940 word 0xb9400009
  %r9085.p = getelementptr inbounds i8, ptr %c, i64 0
  %r9085 = load i64, ptr %r9085.p, align 8, !alias.scope !3, !noalias !4
  %gmp9086 = inttoptr i64 %r9085 to ptr
  %gml9087 = load i32, ptr %gmp9086, align 1, !alias.scope !4, !noalias !3
  %c9088 = zext i32 %gml9087 to i64
  %wp9089 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9088, ptr %wp9089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064944 word 0x2a1f03e3
  %t9090 = or i32 0, 0
  %c9091 = zext i32 %t9090 to i64
  %wp9092 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9091, ptr %wp9092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064948 word 0x2a1f03e4
  %t9093 = or i32 0, 0
  %c9094 = zext i32 %t9093 to i64
  %wp9095 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9094, ptr %wp9095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006494c word 0xf940040a
  %r9096.p = getelementptr inbounds i8, ptr %c, i64 0
  %r9096 = load i64, ptr %r9096.p, align 8, !alias.scope !3, !noalias !4
  %t9097 = add i64 %r9096, 8
  %gmp9098 = inttoptr i64 %t9097 to ptr
  %gml9099 = load i64, ptr %gmp9098, align 1, !alias.scope !4, !noalias !3
  %wp9100 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml9099, ptr %wp9100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064950 word 0xaa1a03e0
  %r9101.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9101 = load i64, ptr %r9101.p, align 8, !alias.scope !3, !noalias !4
  %t9102 = or i64 0, %r9101
  %wp9103 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9102, ptr %wp9103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064954 word 0x6b08013f
  %r9104.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9104 = load i64, ptr %r9104.p, align 8, !alias.scope !3, !noalias !4
  %c9105 = trunc i64 %r9104 to i32
  %r9106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9106 = load i64, ptr %r9106.p, align 8, !alias.scope !3, !noalias !4
  %c9107 = trunc i64 %r9106 to i32
  %t9108 = sub i32 %c9105, %c9107
  %fn9109 = icmp slt i32 %t9108, 0
  %fz9110 = icmp eq i32 %t9108, 0
  %fc9111 = icmp uge i32 %c9105, %c9107
  %fx19112 = xor i32 %c9105, %c9107
  %fx29113 = xor i32 %c9105, %t9108
  %fva9114 = and i32 %fx19112, %fx29113
  %fv9115 = icmp slt i32 %fva9114, 0
  %nz9116 = zext i1 %fn9109 to i64
  %zz9117 = zext i1 %fz9110 to i64
  %cz9118 = zext i1 %fc9111 to i64
  %vz9119 = zext i1 %fv9115 to i64
  %ns9120 = shl i64 %nz9116, 31
  %zs9121 = shl i64 %zz9117, 30
  %cs9122 = shl i64 %cz9118, 29
  %vs9123 = shl i64 %vz9119, 28
  %nzor9124 = or i64 %ns9120, %zs9121
  %cvor9125 = or i64 %cs9122, %vs9123
  %nzcv9126 = or i64 %nzor9124, %cvor9125
  %wp9127 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9126, ptr %wp9127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064958 word 0xbd479ee1
  %r9128.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9128 = load i64, ptr %r9128.p, align 8, !alias.scope !3, !noalias !4
  %t9129 = add i64 %r9128, 1948
  %gmp9130 = inttoptr i64 %t9129 to ptr
  %gml9131 = load i32, ptr %gmp9130, align 1, !alias.scope !4, !noalias !3
  %c9132 = zext i32 %gml9131 to i128
  %wp9133 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9132, ptr %wp9133, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006495c word 0x1a9f8108
  %r9134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9134 = load i64, ptr %r9134.p, align 8, !alias.scope !3, !noalias !4
  %c9135 = trunc i64 %r9134 to i32
  %r9136.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9136 = load i64, ptr %r9136.p, align 8, !alias.scope !3, !noalias !4
  %fsh9138 = lshr i64 %r9136, 29
  %ftr9139 = trunc i64 %fsh9138 to i1
  %fsh9140 = lshr i64 %r9136, 30
  %ftr9141 = trunc i64 %fsh9140 to i1
  %fnz9142 = xor i1 %ftr9141, true
  %cond9137 = and i1 %ftr9139, %fnz9142
  %sel9143 = select i1 %cond9137, i32 %c9135, i32 0
  %c9144 = zext i32 %sel9143 to i64
  %wp9145 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9144, ptr %wp9145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064960 word 0x1e210941
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 10, i32 1)
  ; @pc 0x800064964 word 0xbc68d940
  %r9146.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9146 = load i64, ptr %r9146.p, align 8, !alias.scope !3, !noalias !4
  %r9147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9147 = load i64, ptr %r9147.p, align 8, !alias.scope !3, !noalias !4
  %c9148 = trunc i64 %r9147 to i32
  %c9149 = sext i32 %c9148 to i64
  %t9150 = shl i64 %c9149, 2
  %t9151 = add i64 %r9146, %t9150
  %gmp9152 = inttoptr i64 %t9151 to ptr
  %gml9153 = load i32, ptr %gmp9152, align 1, !alias.scope !4, !noalias !3
  %c9154 = zext i32 %gml9153 to i128
  %wp9155 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9154, ptr %wp9155, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064968 word 0x2d0f2beb
  %r9156.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9156 = load i64, ptr %r9156.p, align 8, !alias.scope !3, !noalias !4
  %t9157 = add i64 %r9156, 120
  %t9158 = add i64 %t9157, 4
  %r9159.p = getelementptr inbounds i8, ptr %c, i64 688
  %r9159 = load i128, ptr %r9159.p, align 16, !alias.scope !3, !noalias !4
  %r9160.p = getelementptr inbounds i8, ptr %c, i64 672
  %r9160 = load i128, ptr %r9160.p, align 16, !alias.scope !3, !noalias !4
  %c9161 = trunc i128 %r9159 to i32
  %c9162 = trunc i128 %r9160 to i32
  %gmp9163 = inttoptr i64 %t9157 to ptr
  store i32 %c9161, ptr %gmp9163, align 1, !alias.scope !4, !noalias !3
  %gmp9164 = inttoptr i64 %t9158 to ptr
  store i32 %c9162, ptr %gmp9164, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006496c word 0x7e21d800
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0)
  ; @pc 0x800064970 word 0x2d1007e0
  %r9165.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9165 = load i64, ptr %r9165.p, align 8, !alias.scope !3, !noalias !4
  %t9166 = add i64 %r9165, 128
  %t9167 = add i64 %t9166, 4
  %r9168.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9168 = load i128, ptr %r9168.p, align 16, !alias.scope !3, !noalias !4
  %r9169.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9169 = load i128, ptr %r9169.p, align 16, !alias.scope !3, !noalias !4
  %c9170 = trunc i128 %r9168 to i32
  %c9171 = trunc i128 %r9169 to i32
  %gmp9172 = inttoptr i64 %t9166 to ptr
  store i32 %c9170, ptr %gmp9172, align 1, !alias.scope !4, !noalias !3
  %gmp9173 = inttoptr i64 %t9167 to ptr
  store i32 %c9171, ptr %gmp9173, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064974 word 0x9418af55
  %wp9174 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150392, ptr %wp9174, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064978 word 0xb94832e8
  %r9175.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9175 = load i64, ptr %r9175.p, align 8, !alias.scope !3, !noalias !4
  %t9176 = add i64 %r9175, 2096
  %gmp9177 = inttoptr i64 %t9176 to ptr
  %gml9178 = load i32, ptr %gmp9177, align 1, !alias.scope !4, !noalias !3
  %c9179 = zext i32 %gml9178 to i64
  %wp9180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9179, ptr %wp9180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006497c word 0x9101e3e2
  %r9181.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9181 = load i64, ptr %r9181.p, align 8, !alias.scope !3, !noalias !4
  %t9182 = add i64 %r9181, 120
  %wp9183 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9182, ptr %wp9183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064980 word 0xaa1a03e0
  %r9184.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9184 = load i64, ptr %r9184.p, align 8, !alias.scope !3, !noalias !4
  %t9185 = or i64 0, %r9184
  %wp9186 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9185, ptr %wp9186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064984 word 0xb9482ae9
  %r9187.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9187 = load i64, ptr %r9187.p, align 8, !alias.scope !3, !noalias !4
  %t9188 = add i64 %r9187, 2088
  %gmp9189 = inttoptr i64 %t9188 to ptr
  %gml9190 = load i32, ptr %gmp9189, align 1, !alias.scope !4, !noalias !3
  %c9191 = zext i32 %gml9190 to i64
  %wp9192 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9191, ptr %wp9192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064988 word 0x528000e1
  %c9193 = zext i32 7 to i64
  %wp9194 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9193, ptr %wp9194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006498c word 0x2a1f03e3
  %t9195 = or i32 0, 0
  %c9196 = zext i32 %t9195 to i64
  %wp9197 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9196, ptr %wp9197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064990 word 0xb94836ea
  %r9198.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9198 = load i64, ptr %r9198.p, align 8, !alias.scope !3, !noalias !4
  %t9199 = add i64 %r9198, 2100
  %gmp9200 = inttoptr i64 %t9199 to ptr
  %gml9201 = load i32, ptr %gmp9200, align 1, !alias.scope !4, !noalias !3
  %c9202 = zext i32 %gml9201 to i64
  %wp9203 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c9202, ptr %wp9203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064994 word 0x2a1f03e4
  %t9204 = or i32 0, 0
  %c9205 = zext i32 %t9204 to i64
  %wp9206 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9205, ptr %wp9206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064998 word 0xbd481ee4
  %r9207.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9207 = load i64, ptr %r9207.p, align 8, !alias.scope !3, !noalias !4
  %t9208 = add i64 %r9207, 2076
  %gmp9209 = inttoptr i64 %t9208 to ptr
  %gml9210 = load i32, ptr %gmp9209, align 1, !alias.scope !4, !noalias !3
  %c9211 = zext i32 %gml9210 to i128
  %wp9212 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c9211, ptr %wp9212, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006499c word 0x1e220100
  %r9213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9213 = load i64, ptr %r9213.p, align 8, !alias.scope !3, !noalias !4
  %c9214 = trunc i64 %r9213 to i32
  %c9215 = zext i32 %c9214 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 0, i64 %c9215, i32 32, i32 0, i32 0)
  ; @pc 0x8000649a0 word 0x4b090108
  %r9216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9216 = load i64, ptr %r9216.p, align 8, !alias.scope !3, !noalias !4
  %c9217 = trunc i64 %r9216 to i32
  %r9218.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9218 = load i64, ptr %r9218.p, align 8, !alias.scope !3, !noalias !4
  %c9219 = trunc i64 %r9218 to i32
  %t9220 = sub i32 %c9217, %c9219
  %c9221 = zext i32 %t9220 to i64
  %wp9222 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9221, ptr %wp9222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649a4 word 0x1e200880
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 4, i32 0)
  ; @pc 0x8000649a8 word 0xb9482ee9
  %r9223.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9223 = load i64, ptr %r9223.p, align 8, !alias.scope !3, !noalias !4
  %t9224 = add i64 %r9223, 2092
  %gmp9225 = inttoptr i64 %t9224 to ptr
  %gml9226 = load i32, ptr %gmp9225, align 1, !alias.scope !4, !noalias !3
  %c9227 = zext i32 %gml9226 to i64
  %wp9228 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9227, ptr %wp9228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649ac word 0x1e220102
  %r9229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9229 = load i64, ptr %r9229.p, align 8, !alias.scope !3, !noalias !4
  %c9230 = trunc i64 %r9229 to i32
  %c9231 = zext i32 %c9230 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 2, i64 %c9231, i32 32, i32 0, i32 0)
  ; @pc 0x8000649b0 word 0x4b090148
  %r9232.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9232 = load i64, ptr %r9232.p, align 8, !alias.scope !3, !noalias !4
  %c9233 = trunc i64 %r9232 to i32
  %r9234.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9234 = load i64, ptr %r9234.p, align 8, !alias.scope !3, !noalias !4
  %c9235 = trunc i64 %r9234 to i32
  %t9236 = sub i32 %c9233, %c9235
  %c9237 = zext i32 %t9236 to i64
  %wp9238 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9237, ptr %wp9238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649b4 word 0x1e220141
  %r9239.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9239 = load i64, ptr %r9239.p, align 8, !alias.scope !3, !noalias !4
  %c9240 = trunc i64 %r9239 to i32
  %c9241 = zext i32 %c9240 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 1, i64 %c9241, i32 32, i32 0, i32 0)
  ; @pc 0x8000649b8 word 0x1e210881
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 4, i32 1)
  ; @pc 0x8000649bc word 0x1e220103
  %r9242.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9242 = load i64, ptr %r9242.p, align 8, !alias.scope !3, !noalias !4
  %c9243 = trunc i64 %r9242 to i32
  %c9244 = zext i32 %c9243 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 3, i64 %c9244, i32 32, i32 0, i32 0)
  ; @pc 0x8000649c0 word 0x1e220882
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 4, i32 2)
  ; @pc 0x8000649c4 word 0x1e230883
  call void @rt_fp_op_s(ptr %c, i32 2, i32 3, i32 4, i32 3)
  ; @pc 0x8000649c8 word 0x2d1007e0
  %r9245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9245 = load i64, ptr %r9245.p, align 8, !alias.scope !3, !noalias !4
  %t9246 = add i64 %r9245, 128
  %t9247 = add i64 %t9246, 4
  %r9248.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9248 = load i128, ptr %r9248.p, align 16, !alias.scope !3, !noalias !4
  %r9249.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9249 = load i128, ptr %r9249.p, align 16, !alias.scope !3, !noalias !4
  %c9250 = trunc i128 %r9248 to i32
  %c9251 = trunc i128 %r9249 to i32
  %gmp9252 = inttoptr i64 %t9246 to ptr
  store i32 %c9250, ptr %gmp9252, align 1, !alias.scope !4, !noalias !3
  %gmp9253 = inttoptr i64 %t9247 to ptr
  store i32 %c9251, ptr %gmp9253, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000649cc word 0x2d0f0fe2
  %r9254.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9254 = load i64, ptr %r9254.p, align 8, !alias.scope !3, !noalias !4
  %t9255 = add i64 %r9254, 120
  %t9256 = add i64 %t9255, 4
  %r9257.p = getelementptr inbounds i8, ptr %c, i64 544
  %r9257 = load i128, ptr %r9257.p, align 16, !alias.scope !3, !noalias !4
  %r9258.p = getelementptr inbounds i8, ptr %c, i64 560
  %r9258 = load i128, ptr %r9258.p, align 16, !alias.scope !3, !noalias !4
  %c9259 = trunc i128 %r9257 to i32
  %c9260 = trunc i128 %r9258 to i32
  %gmp9261 = inttoptr i64 %t9255 to ptr
  store i32 %c9259, ptr %gmp9261, align 1, !alias.scope !4, !noalias !3
  %gmp9262 = inttoptr i64 %t9256 to ptr
  store i32 %c9260, ptr %gmp9262, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000649d0 word 0x9418af3e
  %wp9263 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150484, ptr %wp9263, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x8000649d4 word 0xbd4b9ae0
  %r9264.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9264 = load i64, ptr %r9264.p, align 8, !alias.scope !3, !noalias !4
  %t9265 = add i64 %r9264, 2968
  %gmp9266 = inttoptr i64 %t9265 to ptr
  %gml9267 = load i32, ptr %gmp9266, align 1, !alias.scope !4, !noalias !3
  %c9268 = zext i32 %gml9267 to i128
  %wp9269 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9268, ptr %wp9269, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000649d8 word 0x9101e3e2
  %r9270.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9270 = load i64, ptr %r9270.p, align 8, !alias.scope !3, !noalias !4
  %t9271 = add i64 %r9270, 120
  %wp9272 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9271, ptr %wp9272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649dc word 0xaa1a03e0
  %r9273.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9273 = load i64, ptr %r9273.p, align 8, !alias.scope !3, !noalias !4
  %t9274 = or i64 0, %r9273
  %wp9275 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9274, ptr %wp9275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649e0 word 0xbd4b9ee1
  %r9276.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9276 = load i64, ptr %r9276.p, align 8, !alias.scope !3, !noalias !4
  %t9277 = add i64 %r9276, 2972
  %gmp9278 = inttoptr i64 %t9277 to ptr
  %gml9279 = load i32, ptr %gmp9278, align 1, !alias.scope !4, !noalias !3
  %c9280 = zext i32 %gml9279 to i128
  %wp9281 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9280, ptr %wp9281, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000649e4 word 0x52800101
  %c9282 = zext i32 8 to i64
  %wp9283 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9282, ptr %wp9283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649e8 word 0x2a1f03e3
  %t9284 = or i32 0, 0
  %c9285 = zext i32 %t9284 to i64
  %wp9286 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9285, ptr %wp9286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649ec word 0xf945cae8
  %r9287.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9287 = load i64, ptr %r9287.p, align 8, !alias.scope !3, !noalias !4
  %t9288 = add i64 %r9287, 2960
  %gmp9289 = inttoptr i64 %t9288 to ptr
  %gml9290 = load i64, ptr %gmp9289, align 1, !alias.scope !4, !noalias !3
  %wp9291 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9290, ptr %wp9291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649f0 word 0x2a1f03e4
  %t9292 = or i32 0, 0
  %c9293 = zext i32 %t9292 to i64
  %wp9294 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9293, ptr %wp9294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000649f4 word 0xf9003fe8
  %r9295.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9295 = load i64, ptr %r9295.p, align 8, !alias.scope !3, !noalias !4
  %t9296 = add i64 %r9295, 120
  %r9297.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9297 = load i64, ptr %r9297.p, align 8, !alias.scope !3, !noalias !4
  %gmp9298 = inttoptr i64 %t9296 to ptr
  store i64 %r9297, ptr %gmp9298, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000649f8 word 0x2d1007e0
  %r9299.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9299 = load i64, ptr %r9299.p, align 8, !alias.scope !3, !noalias !4
  %t9300 = add i64 %r9299, 128
  %t9301 = add i64 %t9300, 4
  %r9302.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9302 = load i128, ptr %r9302.p, align 16, !alias.scope !3, !noalias !4
  %r9303.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9303 = load i128, ptr %r9303.p, align 16, !alias.scope !3, !noalias !4
  %c9304 = trunc i128 %r9302 to i32
  %c9305 = trunc i128 %r9303 to i32
  %gmp9306 = inttoptr i64 %t9300 to ptr
  store i32 %c9304, ptr %gmp9306, align 1, !alias.scope !4, !noalias !3
  %gmp9307 = inttoptr i64 %t9301 to ptr
  store i32 %c9305, ptr %gmp9307, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000649fc word 0x9418af33
  %wp9308 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150528, ptr %wp9308, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064a00 word 0xf94002d3
  %r9309.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9309 = load i64, ptr %r9309.p, align 8, !alias.scope !3, !noalias !4
  %gmp9310 = inttoptr i64 %r9309 to ptr
  %gml9311 = load i64, ptr %gmp9310, align 1, !alias.scope !4, !noalias !3
  %wp9312 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml9311, ptr %wp9312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a04 word 0xb4000693
  %r9313.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9313 = load i64, ptr %r9313.p, align 8, !alias.scope !3, !noalias !4
  %cmp9314 = icmp eq i64 %r9313, 0
  br i1 %cmp9314, label %L_800064ad4, label %L_800064a08_ft
L_800064ad4:
  ; @pc 0x800064ad4 word 0x395e66e8
  %r9475.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9475 = load i64, ptr %r9475.p, align 8, !alias.scope !3, !noalias !4
  %t9476 = add i64 %r9475, 1945
  %gmp9477 = inttoptr i64 %t9476 to ptr
  %gml9478 = load i8, ptr %gmp9477, align 1, !alias.scope !4, !noalias !3
  %c9479 = zext i8 %gml9478 to i64
  %wp9480 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9479, ptr %wp9480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ad8 word 0x1e2c1001
  %wp9481 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1056964608, ptr %wp9481, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064adc word 0x52800161
  %c9482 = zext i32 11 to i64
  %wp9483 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9482, ptr %wp9483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ae0 word 0x9101e3e2
  %r9484.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9484 = load i64, ptr %r9484.p, align 8, !alias.scope !3, !noalias !4
  %t9485 = add i64 %r9484, 120
  %wp9486 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9485, ptr %wp9486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ae4 word 0xaa1a03e0
  %r9487.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9487 = load i64, ptr %r9487.p, align 8, !alias.scope !3, !noalias !4
  %t9488 = or i64 0, %r9487
  %wp9489 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9488, ptr %wp9489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ae8 word 0x2a1f03e3
  %t9490 = or i32 0, 0
  %c9491 = zext i32 %t9490 to i64
  %wp9492 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9491, ptr %wp9492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064aec word 0x2a1f03e4
  %t9493 = or i32 0, 0
  %c9494 = zext i32 %t9493 to i64
  %wp9495 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9494, ptr %wp9495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064af0 word 0xf90043ff
  %r9496.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9496 = load i64, ptr %r9496.p, align 8, !alias.scope !3, !noalias !4
  %t9497 = add i64 %r9496, 128
  %gmp9498 = inttoptr i64 %t9497 to ptr
  store i64 0, ptr %gmp9498, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064af4 word 0x7100011f
  %r9499.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9499 = load i64, ptr %r9499.p, align 8, !alias.scope !3, !noalias !4
  %c9500 = trunc i64 %r9499 to i32
  %t9501 = sub i32 %c9500, 0
  %fn9502 = icmp slt i32 %t9501, 0
  %fz9503 = icmp eq i32 %t9501, 0
  %fc9504 = icmp uge i32 %c9500, 0
  %fx19505 = xor i32 %c9500, 0
  %fx29506 = xor i32 %c9500, %t9501
  %fva9507 = and i32 %fx19505, %fx29506
  %fv9508 = icmp slt i32 %fva9507, 0
  %nz9509 = zext i1 %fn9502 to i64
  %zz9510 = zext i1 %fz9503 to i64
  %cz9511 = zext i1 %fc9504 to i64
  %vz9512 = zext i1 %fv9508 to i64
  %ns9513 = shl i64 %nz9509, 31
  %zs9514 = shl i64 %zz9510, 30
  %cs9515 = shl i64 %cz9511, 29
  %vs9516 = shl i64 %vz9512, 28
  %nzor9517 = or i64 %ns9513, %zs9514
  %cvor9518 = or i64 %cs9515, %vs9516
  %nzcv9519 = or i64 %nzor9517, %cvor9518
  %wp9520 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9519, ptr %wp9520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064af8 word 0xd0016448
  %wp9521 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406850560, ptr %wp9521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064afc word 0xbd467d00
  %r9522.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9522 = load i64, ptr %r9522.p, align 8, !alias.scope !3, !noalias !4
  %t9523 = add i64 %r9522, 1660
  %gmp9524 = inttoptr i64 %t9523 to ptr
  %gml9525 = load i32, ptr %gmp9524, align 1, !alias.scope !4, !noalias !3
  %c9526 = zext i32 %gml9525 to i128
  %wp9527 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9526, ptr %wp9527, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b00 word 0x1e210c00
  %r9528.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9528 = load i128, ptr %r9528.p, align 16, !alias.scope !3, !noalias !4
  %c9529 = trunc i128 %r9528 to i32
  %r9530.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9530 = load i128, ptr %r9530.p, align 16, !alias.scope !3, !noalias !4
  %c9531 = trunc i128 %r9530 to i32
  %r9532.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9532 = load i64, ptr %r9532.p, align 8, !alias.scope !3, !noalias !4
  %fsh9534 = lshr i64 %r9532, 30
  %cond9533 = trunc i64 %fsh9534 to i1
  %sel9535 = select i1 %cond9533, i32 %c9529, i32 %c9531
  %c9536 = zext i32 %sel9535 to i128
  %wp9537 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9536, ptr %wp9537, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b04 word 0xbd47e2e1
  %r9538.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9538 = load i64, ptr %r9538.p, align 8, !alias.scope !3, !noalias !4
  %t9539 = add i64 %r9538, 2016
  %gmp9540 = inttoptr i64 %t9539 to ptr
  %gml9541 = load i32, ptr %gmp9540, align 1, !alias.scope !4, !noalias !3
  %c9542 = zext i32 %gml9541 to i128
  %wp9543 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9542, ptr %wp9543, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b08 word 0x2d0f07e0
  %r9544.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9544 = load i64, ptr %r9544.p, align 8, !alias.scope !3, !noalias !4
  %t9545 = add i64 %r9544, 120
  %t9546 = add i64 %t9545, 4
  %r9547.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9547 = load i128, ptr %r9547.p, align 16, !alias.scope !3, !noalias !4
  %r9548.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9548 = load i128, ptr %r9548.p, align 16, !alias.scope !3, !noalias !4
  %c9549 = trunc i128 %r9547 to i32
  %c9550 = trunc i128 %r9548 to i32
  %gmp9551 = inttoptr i64 %t9545 to ptr
  store i32 %c9549, ptr %gmp9551, align 1, !alias.scope !4, !noalias !3
  %gmp9552 = inttoptr i64 %t9546 to ptr
  store i32 %c9550, ptr %gmp9552, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064b0c word 0x9418aeef
  %wp9553 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150800, ptr %wp9553, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064b10 word 0xaa1a03e0
  %r9554.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9554 = load i64, ptr %r9554.p, align 8, !alias.scope !3, !noalias !4
  %t9555 = or i64 0, %r9554
  %wp9556 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9555, ptr %wp9556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b14 word 0x2a1f03e1
  %t9557 = or i32 0, 0
  %c9558 = zext i32 %t9557 to i64
  %wp9559 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9558, ptr %wp9559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b18 word 0x943029ba
  %wp9560 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150812, ptr %wp9560, align 8, !alias.scope !3, !noalias !4
  call void @f_800c6f200(ptr %c)
  ; @pc 0x800064b1c word 0xb94806e8
  %r9561.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9561 = load i64, ptr %r9561.p, align 8, !alias.scope !3, !noalias !4
  %t9562 = add i64 %r9561, 2052
  %gmp9563 = inttoptr i64 %t9562 to ptr
  %gml9564 = load i32, ptr %gmp9563, align 1, !alias.scope !4, !noalias !3
  %c9565 = zext i32 %gml9564 to i64
  %wp9566 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9565, ptr %wp9566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b20 word 0x5280ff8b
  %c9567 = zext i32 2044 to i64
  %wp9568 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c9567, ptr %wp9568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b24 word 0x911ff2e9
  %r9569.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9569 = load i64, ptr %r9569.p, align 8, !alias.scope !3, !noalias !4
  %t9570 = add i64 %r9569, 2044
  %wp9571 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t9570, ptr %wp9571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b28 word 0xbd4ba2e1
  %r9572.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9572 = load i64, ptr %r9572.p, align 8, !alias.scope !3, !noalias !4
  %t9573 = add i64 %r9572, 2976
  %gmp9574 = inttoptr i64 %t9573 to ptr
  %gml9575 = load i32, ptr %gmp9574, align 1, !alias.scope !4, !noalias !3
  %c9576 = zext i32 %gml9575 to i128
  %wp9577 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9576, ptr %wp9577, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b2c word 0x9120e2ea
  %r9578.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9578 = load i64, ptr %r9578.p, align 8, !alias.scope !3, !noalias !4
  %t9579 = add i64 %r9578, 2104
  %wp9580 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9579, ptr %wp9580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b30 word 0x9101e3e1
  %r9581.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9581 = load i64, ptr %r9581.p, align 8, !alias.scope !3, !noalias !4
  %t9582 = add i64 %r9581, 120
  %wp9583 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t9582, ptr %wp9583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b34 word 0xbd4ba6e2
  %r9584.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9584 = load i64, ptr %r9584.p, align 8, !alias.scope !3, !noalias !4
  %t9585 = add i64 %r9584, 2980
  %gmp9586 = inttoptr i64 %t9585 to ptr
  %gml9587 = load i32, ptr %gmp9586, align 1, !alias.scope !4, !noalias !3
  %c9588 = zext i32 %gml9587 to i128
  %wp9589 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c9588, ptr %wp9589, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b38 word 0xaa1403e0
  %r9590.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9590 = load i64, ptr %r9590.p, align 8, !alias.scope !3, !noalias !4
  %t9591 = or i64 0, %r9590
  %wp9592 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9591, ptr %wp9592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b3c word 0x721f011f
  %r9593.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9593 = load i64, ptr %r9593.p, align 8, !alias.scope !3, !noalias !4
  %c9594 = trunc i64 %r9593 to i32
  %t9595 = and i32 %c9594, 2
  %fn9596 = icmp slt i32 %t9595, 0
  %fz9597 = icmp eq i32 %t9595, 0
  %nz9598 = zext i1 %fn9596 to i64
  %zz9599 = zext i1 %fz9597 to i64
  %ns9600 = shl i64 %nz9598, 31
  %zs9601 = shl i64 %zz9599, 30
  %nzcv9602 = or i64 %ns9600, %zs9601
  %wp9603 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9602, ptr %wp9603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b40 word 0x52810708
  %c9604 = zext i32 2104 to i64
  %wp9605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9604, ptr %wp9605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b44 word 0x9a8b0108
  %r9606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9606 = load i64, ptr %r9606.p, align 8, !alias.scope !3, !noalias !4
  %r9607.p = getelementptr inbounds i8, ptr %c, i64 88
  %r9607 = load i64, ptr %r9607.p, align 8, !alias.scope !3, !noalias !4
  %r9608.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9608 = load i64, ptr %r9608.p, align 8, !alias.scope !3, !noalias !4
  %fsh9610 = lshr i64 %r9608, 30
  %cond9609 = trunc i64 %fsh9610 to i1
  %sel9611 = select i1 %cond9609, i64 %r9606, i64 %r9607
  %wp9612 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel9611, ptr %wp9612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b48 word 0xb94b7eeb
  %r9613.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9613 = load i64, ptr %r9613.p, align 8, !alias.scope !3, !noalias !4
  %t9614 = add i64 %r9613, 2940
  %gmp9615 = inttoptr i64 %t9614 to ptr
  %gml9616 = load i32, ptr %gmp9615, align 1, !alias.scope !4, !noalias !3
  %c9617 = zext i32 %gml9616 to i64
  %wp9618 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c9617, ptr %wp9618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b4c word 0x9a890149
  %r9619.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9619 = load i64, ptr %r9619.p, align 8, !alias.scope !3, !noalias !4
  %r9620.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9620 = load i64, ptr %r9620.p, align 8, !alias.scope !3, !noalias !4
  %r9621.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9621 = load i64, ptr %r9621.p, align 8, !alias.scope !3, !noalias !4
  %fsh9623 = lshr i64 %r9621, 30
  %cond9622 = trunc i64 %fsh9623 to i1
  %sel9624 = select i1 %cond9622, i64 %r9619, i64 %r9620
  %wp9625 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel9624, ptr %wp9625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b50 word 0xb94b82ea
  %r9626.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9626 = load i64, ptr %r9626.p, align 8, !alias.scope !3, !noalias !4
  %t9627 = add i64 %r9626, 2944
  %gmp9628 = inttoptr i64 %t9627 to ptr
  %gml9629 = load i32, ptr %gmp9628, align 1, !alias.scope !4, !noalias !3
  %c9630 = zext i32 %gml9629 to i64
  %wp9631 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c9630, ptr %wp9631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b54 word 0xbc686ae0
  %r9632.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9632 = load i64, ptr %r9632.p, align 8, !alias.scope !3, !noalias !4
  %r9633.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9633 = load i64, ptr %r9633.p, align 8, !alias.scope !3, !noalias !4
  %t9634 = add i64 %r9632, %r9633
  %gmp9635 = inttoptr i64 %t9634 to ptr
  %gml9636 = load i32, ptr %gmp9635, align 1, !alias.scope !4, !noalias !3
  %c9637 = zext i32 %gml9636 to i128
  %wp9638 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9637, ptr %wp9638, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b58 word 0xb947bae8
  %r9639.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9639 = load i64, ptr %r9639.p, align 8, !alias.scope !3, !noalias !4
  %t9640 = add i64 %r9639, 1976
  %gmp9641 = inttoptr i64 %t9640 to ptr
  %gml9642 = load i32, ptr %gmp9641, align 1, !alias.scope !4, !noalias !3
  %c9643 = zext i32 %gml9642 to i64
  %wp9644 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9643, ptr %wp9644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b5c word 0x4b0b02ab
  %r9645.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9645 = load i64, ptr %r9645.p, align 8, !alias.scope !3, !noalias !4
  %c9646 = trunc i64 %r9645 to i32
  %r9647.p = getelementptr inbounds i8, ptr %c, i64 88
  %r9647 = load i64, ptr %r9647.p, align 8, !alias.scope !3, !noalias !4
  %c9648 = trunc i64 %r9647 to i32
  %t9649 = sub i32 %c9646, %c9648
  %c9650 = zext i32 %t9649 to i64
  %wp9651 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c9650, ptr %wp9651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b60 word 0x4b0a030a
  %r9652.p = getelementptr inbounds i8, ptr %c, i64 192
  %r9652 = load i64, ptr %r9652.p, align 8, !alias.scope !3, !noalias !4
  %c9653 = trunc i64 %r9652 to i32
  %r9654.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9654 = load i64, ptr %r9654.p, align 8, !alias.scope !3, !noalias !4
  %c9655 = trunc i64 %r9654 to i32
  %t9656 = sub i32 %c9653, %c9655
  %c9657 = zext i32 %t9656 to i64
  %wp9658 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c9657, ptr %wp9658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b64 word 0x1ac80d6b
  %r9659.p = getelementptr inbounds i8, ptr %c, i64 88
  %r9659 = load i64, ptr %r9659.p, align 8, !alias.scope !3, !noalias !4
  %c9660 = trunc i64 %r9659 to i32
  %r9661.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9661 = load i64, ptr %r9661.p, align 8, !alias.scope !3, !noalias !4
  %c9662 = trunc i64 %r9661 to i32
  %cmp9663 = icmp eq i32 %c9662, 0
  %cmp9664 = icmp eq i32 %c9662, -1
  %cmp9665 = icmp eq i32 %c9660, -2147483648
  %t9666 = and i1 %cmp9665, %cmp9664
  %t9667 = or i1 %cmp9663, %t9666
  %sel9668 = select i1 %t9667, i32 1, i32 %c9662
  %t9669 = sdiv i32 %c9660, %sel9668
  %sel9670 = select i1 %t9666, i32 %c9660, i32 %t9669
  %sel9671 = select i1 %cmp9663, i32 0, i32 %sel9670
  %c9672 = zext i32 %sel9671 to i64
  %wp9673 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c9672, ptr %wp9673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b68 word 0x1f090400
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1)
  ; @pc 0x800064b6c word 0xbd400521
  %r9674.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9674 = load i64, ptr %r9674.p, align 8, !alias.scope !3, !noalias !4
  %t9675 = add i64 %r9674, 4
  %gmp9676 = inttoptr i64 %t9675 to ptr
  %gml9677 = load i32, ptr %gmp9676, align 1, !alias.scope !4, !noalias !3
  %c9678 = zext i32 %gml9677 to i128
  %wp9679 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9678, ptr %wp9679, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b70 word 0xb94b86e9
  %r9680.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9680 = load i64, ptr %r9680.p, align 8, !alias.scope !3, !noalias !4
  %t9681 = add i64 %r9680, 2948
  %gmp9682 = inttoptr i64 %t9681 to ptr
  %gml9683 = load i32, ptr %gmp9682, align 1, !alias.scope !4, !noalias !3
  %c9684 = zext i32 %gml9683 to i64
  %wp9685 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9684, ptr %wp9685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b74 word 0x4b090329
  %r9686.p = getelementptr inbounds i8, ptr %c, i64 200
  %r9686 = load i64, ptr %r9686.p, align 8, !alias.scope !3, !noalias !4
  %c9687 = trunc i64 %r9686 to i32
  %r9688.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9688 = load i64, ptr %r9688.p, align 8, !alias.scope !3, !noalias !4
  %c9689 = trunc i64 %r9688 to i32
  %t9690 = sub i32 %c9687, %c9689
  %c9691 = zext i32 %t9690 to i64
  %wp9692 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9691, ptr %wp9692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b78 word 0x1f090821
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 9, i32 2)
  ; @pc 0x800064b7c word 0x1e254002
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 2, i32 0)
  ; @pc 0x800064b80 word 0x1ac80d4a
  %r9693.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9693 = load i64, ptr %r9693.p, align 8, !alias.scope !3, !noalias !4
  %c9694 = trunc i64 %r9693 to i32
  %r9695.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9695 = load i64, ptr %r9695.p, align 8, !alias.scope !3, !noalias !4
  %c9696 = trunc i64 %r9695 to i32
  %cmp9697 = icmp eq i32 %c9696, 0
  %cmp9698 = icmp eq i32 %c9696, -1
  %cmp9699 = icmp eq i32 %c9694, -2147483648
  %t9700 = and i1 %cmp9699, %cmp9698
  %t9701 = or i1 %cmp9697, %t9700
  %sel9702 = select i1 %t9701, i32 1, i32 %c9696
  %t9703 = sdiv i32 %c9694, %sel9702
  %sel9704 = select i1 %t9700, i32 %c9694, i32 %t9703
  %sel9705 = select i1 %cmp9697, i32 0, i32 %sel9704
  %c9706 = zext i32 %sel9705 to i64
  %wp9707 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c9706, ptr %wp9707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064b84 word 0x1e223800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 2)
  ; @pc 0x800064b88 word 0x1e254022
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 2, i32 1)
  ; @pc 0x800064b8c word 0x1e223821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 2)
  ; @pc 0x800064b90 word 0xbd0ba2e0
  %r9708.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9708 = load i64, ptr %r9708.p, align 8, !alias.scope !3, !noalias !4
  %t9709 = add i64 %r9708, 2976
  %r9710.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9710 = load i128, ptr %r9710.p, align 16, !alias.scope !3, !noalias !4
  %c9711 = trunc i128 %r9710 to i32
  %gmp9712 = inttoptr i64 %t9709 to ptr
  store i32 %c9711, ptr %gmp9712, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064b94 word 0x1e204120
  %r9713.p = getelementptr inbounds i8, ptr %c, i64 656
  %r9713 = load i128, ptr %r9713.p, align 16, !alias.scope !3, !noalias !4
  %c9714 = trunc i128 %r9713 to i32
  %c9715 = zext i32 %c9714 to i128
  %wp9716 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9715, ptr %wp9716, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064b98 word 0xbd0ba6e1
  %r9717.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9717 = load i64, ptr %r9717.p, align 8, !alias.scope !3, !noalias !4
  %t9718 = add i64 %r9717, 2980
  %r9719.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9719 = load i128, ptr %r9719.p, align 16, !alias.scope !3, !noalias !4
  %c9720 = trunc i128 %r9719 to i32
  %gmp9721 = inttoptr i64 %t9718 to ptr
  store i32 %c9720, ptr %gmp9721, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064b9c word 0xaa0a816a
  %r9722.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9722 = load i64, ptr %r9722.p, align 8, !alias.scope !3, !noalias !4
  %t9723 = shl i64 %r9722, 32
  %r9724.p = getelementptr inbounds i8, ptr %c, i64 88
  %r9724 = load i64, ptr %r9724.p, align 8, !alias.scope !3, !noalias !4
  %t9725 = or i64 %r9724, %t9723
  %wp9726 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9725, ptr %wp9726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ba0 word 0xf9003fea
  %r9727.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9727 = load i64, ptr %r9727.p, align 8, !alias.scope !3, !noalias !4
  %t9728 = add i64 %r9727, 120
  %r9729.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9729 = load i64, ptr %r9729.p, align 8, !alias.scope !3, !noalias !4
  %gmp9730 = inttoptr i64 %t9728 to ptr
  store i64 %r9729, ptr %gmp9730, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ba4 word 0x1ac80d28
  %r9731.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9731 = load i64, ptr %r9731.p, align 8, !alias.scope !3, !noalias !4
  %c9732 = trunc i64 %r9731 to i32
  %r9733.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9733 = load i64, ptr %r9733.p, align 8, !alias.scope !3, !noalias !4
  %c9734 = trunc i64 %r9733 to i32
  %cmp9735 = icmp eq i32 %c9734, 0
  %cmp9736 = icmp eq i32 %c9734, -1
  %cmp9737 = icmp eq i32 %c9732, -2147483648
  %t9738 = and i1 %cmp9737, %cmp9736
  %t9739 = or i1 %cmp9735, %t9738
  %sel9740 = select i1 %t9739, i32 1, i32 %c9734
  %t9741 = sdiv i32 %c9732, %sel9740
  %sel9742 = select i1 %t9738, i32 %c9732, i32 %t9741
  %sel9743 = select i1 %cmp9735, i32 0, i32 %sel9742
  %c9744 = zext i32 %sel9743 to i64
  %wp9745 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9744, ptr %wp9745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ba8 word 0xb90083e8
  %r9746.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9746 = load i64, ptr %r9746.p, align 8, !alias.scope !3, !noalias !4
  %t9747 = add i64 %r9746, 128
  %r9748.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9748 = load i64, ptr %r9748.p, align 8, !alias.scope !3, !noalias !4
  %c9749 = trunc i64 %r9748 to i32
  %gmp9750 = inttoptr i64 %t9747 to ptr
  store i32 %c9749, ptr %gmp9750, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064bac word 0x947974b6
  %wp9751 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150960, ptr %wp9751, align 8, !alias.scope !3, !noalias !4
  call void @f_801ec1e84(ptr %c)
  ; @pc 0x800064bb0 word 0x1e204100
  %r9752.p = getelementptr inbounds i8, ptr %c, i64 640
  %r9752 = load i128, ptr %r9752.p, align 16, !alias.scope !3, !noalias !4
  %c9753 = trunc i128 %r9752 to i32
  %c9754 = zext i32 %c9753 to i128
  %wp9755 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9754, ptr %wp9755, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064bb4 word 0xaa1403e0
  %r9756.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9756 = load i64, ptr %r9756.p, align 8, !alias.scope !3, !noalias !4
  %t9757 = or i64 0, %r9756
  %wp9758 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9757, ptr %wp9758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bb8 word 0x947976ca
  %wp9759 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150972, ptr %wp9759, align 8, !alias.scope !3, !noalias !4
  call void @f_801ec26e0(ptr %c)
  ; @pc 0x800064bbc word 0xb9480ae8
  %r9760.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9760 = load i64, ptr %r9760.p, align 8, !alias.scope !3, !noalias !4
  %t9761 = add i64 %r9760, 2056
  %gmp9762 = inttoptr i64 %t9761 to ptr
  %gml9763 = load i32, ptr %gmp9762, align 1, !alias.scope !4, !noalias !3
  %c9764 = zext i32 %gml9763 to i64
  %wp9765 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9764, ptr %wp9765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bc0 word 0xb001c7b4
  %wp9766 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp9766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bc4 word 0x52800020
  %c9767 = zext i32 1 to i64
  %wp9768 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c9767, ptr %wp9768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bc8 word 0xa942f3f9
  %r9769.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9769 = load i64, ptr %r9769.p, align 8, !alias.scope !3, !noalias !4
  %t9770 = add i64 %r9769, 40
  %t9771 = add i64 %t9770, 8
  %gmp9772 = inttoptr i64 %t9770 to ptr
  %gml9773 = load i64, ptr %gmp9772, align 1, !alias.scope !4, !noalias !3
  %gmp9774 = inttoptr i64 %t9771 to ptr
  %gml9775 = load i64, ptr %gmp9774, align 1, !alias.scope !4, !noalias !3
  %wp9776 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml9773, ptr %wp9776, align 8, !alias.scope !3, !noalias !4
  %wp9777 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml9775, ptr %wp9777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bcc word 0xd000217a
  %wp9778 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34364530688, ptr %wp9778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bd0 word 0x9119235a
  %r9779.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9779 = load i64, ptr %r9779.p, align 8, !alias.scope !3, !noalias !4
  %t9780 = add i64 %r9779, 1608
  %wp9781 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t9780, ptr %wp9781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bd4 word 0xa943dbf8
  %r9782.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9782 = load i64, ptr %r9782.p, align 8, !alias.scope !3, !noalias !4
  %t9783 = add i64 %r9782, 56
  %t9784 = add i64 %t9783, 8
  %gmp9785 = inttoptr i64 %t9783 to ptr
  %gml9786 = load i64, ptr %gmp9785, align 1, !alias.scope !4, !noalias !3
  %gmp9787 = inttoptr i64 %t9784 to ptr
  %gml9788 = load i64, ptr %gmp9787, align 1, !alias.scope !4, !noalias !3
  %wp9789 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml9786, ptr %wp9789, align 8, !alias.scope !3, !noalias !4
  %wp9790 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml9788, ptr %wp9790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bd8 word 0x52800035
  %c9791 = zext i32 1 to i64
  %wp9792 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c9791, ptr %wp9792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bdc word 0x321d0108
  %r9793.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9793 = load i64, ptr %r9793.p, align 8, !alias.scope !3, !noalias !4
  %c9794 = trunc i64 %r9793 to i32
  %t9795 = or i32 %c9794, 8
  %c9796 = zext i32 %t9795 to i64
  %wp9797 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9796, ptr %wp9797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064be0 word 0xb9080ae8
  %r9798.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9798 = load i64, ptr %r9798.p, align 8, !alias.scope !3, !noalias !4
  %t9799 = add i64 %r9798, 2056
  %r9800.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9800 = load i64, ptr %r9800.p, align 8, !alias.scope !3, !noalias !4
  %c9801 = trunc i64 %r9800 to i32
  %gmp9802 = inttoptr i64 %t9799 to ptr
  store i32 %c9801, ptr %gmp9802, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064be4 word 0x17fffc64
  br label %L_800063d74
L_800064be8:
  ; @pc 0x800064be8 word 0xbd0112c0
  %r9803.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9803 = load i64, ptr %r9803.p, align 8, !alias.scope !3, !noalias !4
  %t9804 = add i64 %r9803, 272
  %r9805.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9805 = load i128, ptr %r9805.p, align 16, !alias.scope !3, !noalias !4
  %c9806 = trunc i128 %r9805 to i32
  %gmp9807 = inttoptr i64 %t9804 to ptr
  store i32 %c9806, ptr %gmp9807, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064bec word 0xbd4116c0
  %r9808.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9808 = load i64, ptr %r9808.p, align 8, !alias.scope !3, !noalias !4
  %t9809 = add i64 %r9808, 276
  %gmp9810 = inttoptr i64 %t9809 to ptr
  %gml9811 = load i32, ptr %gmp9810, align 1, !alias.scope !4, !noalias !3
  %c9812 = zext i32 %gml9811 to i128
  %wp9813 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9812, ptr %wp9813, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064bf0 word 0x1e202900
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 8, i32 0)
  br label %L_800064bf4
L_800064bf4:
  ; @pc 0x800064bf4 word 0x52a88908
  %c9814 = zext i32 1145569280 to i64
  %wp9815 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9814, ptr %wp9815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064bf8 word 0x1e270101
  %r9816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9816 = load i64, ptr %r9816.p, align 8, !alias.scope !3, !noalias !4
  %c9817 = trunc i64 %r9816 to i32
  %c9818 = zext i32 %c9817 to i128
  %wp9819 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9818, ptr %wp9819, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064bfc word 0x1e212000
  %fcmp9820 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp9821 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp9820, ptr %wp9821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c00 word 0x540000ab
  %r9822.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9822 = load i64, ptr %r9822.p, align 8, !alias.scope !3, !noalias !4
  %fsh9824 = lshr i64 %r9822, 31
  %ftr9825 = trunc i64 %fsh9824 to i1
  %fsh9826 = lshr i64 %r9822, 28
  %ftr9827 = trunc i64 %fsh9826 to i1
  %cond9823 = icmp ne i1 %ftr9825, %ftr9827
  br i1 %cond9823, label %L_800064c14, label %L_800064c04_ft
L_800064c14:
  ; @pc 0x800064c14 word 0xbd0116c0
  %r9834.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9834 = load i64, ptr %r9834.p, align 8, !alias.scope !3, !noalias !4
  %t9835 = add i64 %r9834, 276
  %r9836.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9836 = load i128, ptr %r9836.p, align 16, !alias.scope !3, !noalias !4
  %c9837 = trunc i128 %r9836 to i32
  %gmp9838 = inttoptr i64 %t9835 to ptr
  store i32 %c9837, ptr %gmp9838, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064c18 word 0xf001c728
  %wp9839 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp9839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c1c word 0xaa1603f4
  %r9840.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9840 = load i64, ptr %r9840.p, align 8, !alias.scope !3, !noalias !4
  %t9841 = or i64 0, %r9840
  %wp9842 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t9841, ptr %wp9842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c20 word 0xf9463d08
  %r9843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9843 = load i64, ptr %r9843.p, align 8, !alias.scope !3, !noalias !4
  %t9844 = add i64 %r9843, 3192
  %gmp9845 = inttoptr i64 %t9844 to ptr
  %gml9846 = load i64, ptr %gmp9845, align 1, !alias.scope !4, !noalias !3
  %wp9847 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9846, ptr %wp9847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c24 word 0xf9400113
  %r9848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9848 = load i64, ptr %r9848.p, align 8, !alias.scope !3, !noalias !4
  %gmp9849 = inttoptr i64 %r9848 to ptr
  %gml9850 = load i64, ptr %gmp9849, align 1, !alias.scope !4, !noalias !3
  %wp9851 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml9850, ptr %wp9851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c28 word 0xf940c268
  %r9852.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9852 = load i64, ptr %r9852.p, align 8, !alias.scope !3, !noalias !4
  %t9853 = add i64 %r9852, 384
  %gmp9854 = inttoptr i64 %t9853 to ptr
  %gml9855 = load i64, ptr %gmp9854, align 1, !alias.scope !4, !noalias !3
  %wp9856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9855, ptr %wp9856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c2c word 0xbd418a60
  %r9857.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9857 = load i64, ptr %r9857.p, align 8, !alias.scope !3, !noalias !4
  %t9858 = add i64 %r9857, 392
  %gmp9859 = inttoptr i64 %t9858 to ptr
  %gml9860 = load i32, ptr %gmp9859, align 1, !alias.scope !4, !noalias !3
  %c9861 = zext i32 %gml9860 to i128
  %wp9862 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9861, ptr %wp9862, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064c30 word 0xf8018e88
  %r9863.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9863 = load i64, ptr %r9863.p, align 8, !alias.scope !3, !noalias !4
  %t9864 = add i64 %r9863, 24
  %r9865.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9865 = load i64, ptr %r9865.p, align 8, !alias.scope !3, !noalias !4
  %gmp9866 = inttoptr i64 %t9864 to ptr
  store i64 %r9865, ptr %gmp9866, align 1, !alias.scope !4, !noalias !3
  %wp9867 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t9864, ptr %wp9867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c34 word 0x52a7f008
  %c9868 = zext i32 1065353216 to i64
  %wp9869 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9868, ptr %wp9869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c38 word 0xb9000e88
  %r9870.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9870 = load i64, ptr %r9870.p, align 8, !alias.scope !3, !noalias !4
  %t9871 = add i64 %r9870, 12
  %r9872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9872 = load i64, ptr %r9872.p, align 8, !alias.scope !3, !noalias !4
  %c9873 = trunc i64 %r9872 to i32
  %gmp9874 = inttoptr i64 %t9871 to ptr
  store i32 %c9873, ptr %gmp9874, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064c3c word 0x52a84188
  %c9875 = zext i32 1108082688 to i64
  %wp9876 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9875, ptr %wp9876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c40 word 0xbd000a80
  %r9877.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9877 = load i64, ptr %r9877.p, align 8, !alias.scope !3, !noalias !4
  %t9878 = add i64 %r9877, 8
  %r9879.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9879 = load i128, ptr %r9879.p, align 16, !alias.scope !3, !noalias !4
  %c9880 = trunc i128 %r9879 to i32
  %gmp9881 = inttoptr i64 %t9878 to ptr
  store i32 %c9880, ptr %gmp9881, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064c44 word 0xbd405680
  %r9882.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9882 = load i64, ptr %r9882.p, align 8, !alias.scope !3, !noalias !4
  %t9883 = add i64 %r9882, 84
  %gmp9884 = inttoptr i64 %t9883 to ptr
  %gml9885 = load i32, ptr %gmp9884, align 1, !alias.scope !4, !noalias !3
  %c9886 = zext i32 %gml9885 to i128
  %wp9887 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9886, ptr %wp9887, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064c48 word 0x1e270101
  %r9888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9888 = load i64, ptr %r9888.p, align 8, !alias.scope !3, !noalias !4
  %c9889 = trunc i64 %r9888 to i32
  %c9890 = zext i32 %c9889 to i128
  %wp9891 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9890, ptr %wp9891, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064c4c word 0x1e212000
  %fcmp9892 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp9893 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp9892, ptr %wp9893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c50 word 0x5400006a
  %r9894.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9894 = load i64, ptr %r9894.p, align 8, !alias.scope !3, !noalias !4
  %fsh9896 = lshr i64 %r9894, 31
  %ftr9897 = trunc i64 %fsh9896 to i1
  %fsh9898 = lshr i64 %r9894, 28
  %ftr9899 = trunc i64 %fsh9898 to i1
  %cond9895 = icmp eq i1 %ftr9897, %ftr9899
  br i1 %cond9895, label %L_800064c5c, label %L_800064c54_ft
L_800064c5c:
  ; @pc 0x800064c5c word 0x52b84188
  %c9906 = zext i32 -1039400960 to i64
  %wp9907 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9906, ptr %wp9907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c60 word 0x528aaac9
  %c9908 = zext i32 21846 to i64
  %wp9909 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9908, ptr %wp9909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c64 word 0x72aaaaa9
  %r9910.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9910 = load i64, ptr %r9910.p, align 8, !alias.scope !3, !noalias !4
  %t9911 = and i64 %r9910, -4294901761
  %t9912 = or i64 %t9911, 1431633920
  %c9913 = trunc i64 %t9912 to i32
  %c9914 = zext i32 %c9913 to i64
  %wp9915 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9914, ptr %wp9915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c68 word 0x1e270101
  %r9916.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9916 = load i64, ptr %r9916.p, align 8, !alias.scope !3, !noalias !4
  %c9917 = trunc i64 %r9916 to i32
  %c9918 = zext i32 %c9917 to i128
  %wp9919 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9918, ptr %wp9919, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064c6c word 0xb9406ac8
  %r9920.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9920 = load i64, ptr %r9920.p, align 8, !alias.scope !3, !noalias !4
  %t9921 = add i64 %r9920, 104
  %gmp9922 = inttoptr i64 %t9921 to ptr
  %gml9923 = load i32, ptr %gmp9922, align 1, !alias.scope !4, !noalias !3
  %c9924 = zext i32 %gml9923 to i64
  %wp9925 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9924, ptr %wp9925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c70 word 0x11000508
  %r9926.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9926 = load i64, ptr %r9926.p, align 8, !alias.scope !3, !noalias !4
  %c9927 = trunc i64 %r9926 to i32
  %t9928 = add i32 %c9927, 1
  %c9929 = zext i32 %t9928 to i64
  %wp9930 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9929, ptr %wp9930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c74 word 0x9b297d09
  %r9931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9931 = load i64, ptr %r9931.p, align 8, !alias.scope !3, !noalias !4
  %c9932 = trunc i64 %r9931 to i32
  %c9933 = sext i32 %c9932 to i64
  %r9934.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9934 = load i64, ptr %r9934.p, align 8, !alias.scope !3, !noalias !4
  %c9935 = trunc i64 %r9934 to i32
  %c9936 = sext i32 %c9935 to i64
  %t9937 = mul i64 %c9933, %c9936
  %t9938 = add i64 0, %t9937
  %wp9939 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t9938, ptr %wp9939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c78 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x800064c7c word 0xd37ffd2a
  %r9940.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9940 = load i64, ptr %r9940.p, align 8, !alias.scope !3, !noalias !4
  %ror9941 = call i64 @llvm.fshr.i64(i64 %r9940, i64 %r9940, i64 63)
  %t9942 = and i64 %ror9941, 1
  %wp9943 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9942, ptr %wp9943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c80 word 0xd360fd29
  %r9944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9944 = load i64, ptr %r9944.p, align 8, !alias.scope !3, !noalias !4
  %ror9945 = call i64 @llvm.fshr.i64(i64 %r9944, i64 %r9944, i64 32)
  %t9946 = and i64 %ror9945, 4294967295
  %wp9947 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t9946, ptr %wp9947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c84 word 0x0b0a0129
  %r9948.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9948 = load i64, ptr %r9948.p, align 8, !alias.scope !3, !noalias !4
  %c9949 = trunc i64 %r9948 to i32
  %r9950.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9950 = load i64, ptr %r9950.p, align 8, !alias.scope !3, !noalias !4
  %c9951 = trunc i64 %r9950 to i32
  %t9952 = add i32 %c9949, %c9951
  %c9953 = zext i32 %t9952 to i64
  %wp9954 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9953, ptr %wp9954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c88 word 0x0b090529
  %r9955.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9955 = load i64, ptr %r9955.p, align 8, !alias.scope !3, !noalias !4
  %c9956 = trunc i64 %r9955 to i32
  %r9957.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9957 = load i64, ptr %r9957.p, align 8, !alias.scope !3, !noalias !4
  %c9958 = trunc i64 %r9957 to i32
  %t9959 = shl i32 %c9958, 1
  %t9960 = add i32 %c9956, %t9959
  %c9961 = zext i32 %t9960 to i64
  %wp9962 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9961, ptr %wp9962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c8c word 0xbd006ec0
  %r9963.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9963 = load i64, ptr %r9963.p, align 8, !alias.scope !3, !noalias !4
  %t9964 = add i64 %r9963, 108
  %r9965.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9965 = load i128, ptr %r9965.p, align 16, !alias.scope !3, !noalias !4
  %c9966 = trunc i128 %r9965 to i32
  %gmp9967 = inttoptr i64 %t9964 to ptr
  store i32 %c9966, ptr %gmp9967, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064c90 word 0x4b090108
  %r9968.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9968 = load i64, ptr %r9968.p, align 8, !alias.scope !3, !noalias !4
  %c9969 = trunc i64 %r9968 to i32
  %r9970.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9970 = load i64, ptr %r9970.p, align 8, !alias.scope !3, !noalias !4
  %c9971 = trunc i64 %r9970 to i32
  %t9972 = sub i32 %c9969, %c9971
  %c9973 = zext i32 %t9972 to i64
  %wp9974 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9973, ptr %wp9974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c94 word 0xb9006ac8
  %r9975.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9975 = load i64, ptr %r9975.p, align 8, !alias.scope !3, !noalias !4
  %t9976 = add i64 %r9975, 104
  %r9977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9977 = load i64, ptr %r9977.p, align 8, !alias.scope !3, !noalias !4
  %c9978 = trunc i64 %r9977 to i32
  %gmp9979 = inttoptr i64 %t9976 to ptr
  store i32 %c9978, ptr %gmp9979, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064c98 word 0x8b28d2ca
  %r9980.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9980 = load i64, ptr %r9980.p, align 8, !alias.scope !3, !noalias !4
  %r9981.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9981 = load i64, ptr %r9981.p, align 8, !alias.scope !3, !noalias !4
  %c9982 = trunc i64 %r9981 to i32
  %c9983 = sext i32 %c9982 to i64
  %t9984 = shl i64 %c9983, 4
  %t9985 = add i64 %r9980, %t9984
  %wp9986 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9985, ptr %wp9986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c9c word 0x93407d08
  %r9987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9987 = load i64, ptr %r9987.p, align 8, !alias.scope !3, !noalias !4
  %t9988 = lshr i64 %r9987, 31
  %t9989 = and i64 %t9988, 1
  %t9990 = sub i64 0, %t9989
  %t9991 = and i64 %t9990, -4294967296
  %t9992 = and i64 %r9987, 4294967295
  %t9993 = or i64 %t9991, %t9992
  %wp9994 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9993, ptr %wp9994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ca0 word 0xf940c269
  %r9995.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9995 = load i64, ptr %r9995.p, align 8, !alias.scope !3, !noalias !4
  %t9996 = add i64 %r9995, 384
  %gmp9997 = inttoptr i64 %t9996 to ptr
  %gml9998 = load i64, ptr %gmp9997, align 1, !alias.scope !4, !noalias !3
  %wp9999 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml9998, ptr %wp9999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ca4 word 0xbd418a61
  %r10000.p = getelementptr inbounds i8, ptr %c, i64 152
  %r10000 = load i64, ptr %r10000.p, align 8, !alias.scope !3, !noalias !4
  %t10001 = add i64 %r10000, 392
  %gmp10002 = inttoptr i64 %t10001 to ptr
  %gml10003 = load i32, ptr %gmp10002, align 1, !alias.scope !4, !noalias !3
  %c10004 = zext i32 %gml10003 to i128
  %wp10005 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10004, ptr %wp10005, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064ca8 word 0xf9001d49
  %r10006.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10006 = load i64, ptr %r10006.p, align 8, !alias.scope !3, !noalias !4
  %t10007 = add i64 %r10006, 56
  %r10008.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10008 = load i64, ptr %r10008.p, align 8, !alias.scope !3, !noalias !4
  %gmp10009 = inttoptr i64 %t10007 to ptr
  store i64 %r10008, ptr %gmp10009, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064cac word 0x529ae149
  %c10010 = zext i32 55050 to i64
  %wp10011 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10010, ptr %wp10011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064cb0 word 0x72a78469
  %r10012.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10012 = load i64, ptr %r10012.p, align 8, !alias.scope !3, !noalias !4
  %t10013 = and i64 %r10012, -4294901761
  %t10014 = or i64 %t10013, 1008926720
  %c10015 = trunc i64 %t10014 to i32
  %c10016 = zext i32 %c10015 to i64
  %wp10017 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10016, ptr %wp10017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064cb4 word 0xbd004141
  %r10018.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10018 = load i64, ptr %r10018.p, align 8, !alias.scope !3, !noalias !4
  %t10019 = add i64 %r10018, 64
  %r10020.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10020 = load i128, ptr %r10020.p, align 16, !alias.scope !3, !noalias !4
  %c10021 = trunc i128 %r10020 to i32
  %gmp10022 = inttoptr i64 %t10019 to ptr
  store i32 %c10021, ptr %gmp10022, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064cb8 word 0xb9004549
  %r10023.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10023 = load i64, ptr %r10023.p, align 8, !alias.scope !3, !noalias !4
  %t10024 = add i64 %r10023, 68
  %r10025.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10025 = load i64, ptr %r10025.p, align 8, !alias.scope !3, !noalias !4
  %c10026 = trunc i64 %r10025 to i32
  %gmp10027 = inttoptr i64 %t10024 to ptr
  store i32 %c10026, ptr %gmp10027, align 1, !alias.scope !4, !noalias !3
  br label %L_800064cbc
L_800064cbc:
  ; @pc 0x800064cbc word 0xd0016449
  %wp10028 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406850560, ptr %wp10028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064cc0 word 0xbd4046c2
  %r10029.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10029 = load i64, ptr %r10029.p, align 8, !alias.scope !3, !noalias !4
  %t10030 = add i64 %r10029, 68
  %gmp10031 = inttoptr i64 %t10030 to ptr
  %gml10032 = load i32, ptr %gmp10031, align 1, !alias.scope !4, !noalias !3
  %c10033 = zext i32 %gml10032 to i128
  %wp10034 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10033, ptr %wp10034, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064cc4 word 0x1e202900
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 8, i32 0)
  ; @pc 0x800064cc8 word 0xbd4bc921
  %r10035.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10035 = load i64, ptr %r10035.p, align 8, !alias.scope !3, !noalias !4
  %t10036 = add i64 %r10035, 3016
  %gmp10037 = inttoptr i64 %t10036 to ptr
  %gml10038 = load i32, ptr %gmp10037, align 1, !alias.scope !4, !noalias !3
  %c10039 = zext i32 %gml10038 to i128
  %wp10040 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10039, ptr %wp10040, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064ccc word 0x52a84189
  %c10041 = zext i32 1108082688 to i64
  %wp10042 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10041, ptr %wp10042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064cd0 word 0x1e2e1009
  %wp10043 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 1065353216, ptr %wp10043, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064cd4 word 0x8b0812c8
  %r10044.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10044 = load i64, ptr %r10044.p, align 8, !alias.scope !3, !noalias !4
  %r10045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10045 = load i64, ptr %r10045.p, align 8, !alias.scope !3, !noalias !4
  %t10046 = shl i64 %r10045, 4
  %t10047 = add i64 %r10044, %t10046
  %wp10048 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t10047, ptr %wp10048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064cd8 word 0xaa1603f5
  %r10049.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10049 = load i64, ptr %r10049.p, align 8, !alias.scope !3, !noalias !4
  %t10050 = or i64 0, %r10049
  %wp10051 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t10050, ptr %wp10051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064cdc word 0xbd006ec0
  %r10052.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10052 = load i64, ptr %r10052.p, align 8, !alias.scope !3, !noalias !4
  %t10053 = add i64 %r10052, 108
  %r10054.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10054 = load i128, ptr %r10054.p, align 16, !alias.scope !3, !noalias !4
  %c10055 = trunc i128 %r10054 to i32
  %gmp10056 = inttoptr i64 %t10053 to ptr
  store i32 %c10055, ptr %gmp10056, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ce0 word 0x1e202800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 0)
  ; @pc 0x800064ce4 word 0x1e210901
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 8, i32 1)
  ; @pc 0x800064ce8 word 0x1e222822
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 1, i32 2)
  ; @pc 0x800064cec word 0xbd0046c2
  %r10057.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10057 = load i64, ptr %r10057.p, align 8, !alias.scope !3, !noalias !4
  %t10058 = add i64 %r10057, 68
  %r10059.p = getelementptr inbounds i8, ptr %c, i64 544
  %r10059 = load i128, ptr %r10059.p, align 16, !alias.scope !3, !noalias !4
  %c10060 = trunc i128 %r10059 to i32
  %gmp10061 = inttoptr i64 %t10058 to ptr
  store i32 %c10060, ptr %gmp10061, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064cf0 word 0xbd4056c2
  %r10062.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10062 = load i64, ptr %r10062.p, align 8, !alias.scope !3, !noalias !4
  %t10063 = add i64 %r10062, 84
  %gmp10064 = inttoptr i64 %t10063 to ptr
  %gml10065 = load i32, ptr %gmp10064, align 1, !alias.scope !4, !noalias !3
  %c10066 = zext i32 %gml10065 to i128
  %wp10067 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10066, ptr %wp10067, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064cf4 word 0x1e222822
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 1, i32 2)
  ; @pc 0x800064cf8 word 0xbd0056c2
  %r10068.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10068 = load i64, ptr %r10068.p, align 8, !alias.scope !3, !noalias !4
  %t10069 = add i64 %r10068, 84
  %r10070.p = getelementptr inbounds i8, ptr %c, i64 544
  %r10070 = load i128, ptr %r10070.p, align 16, !alias.scope !3, !noalias !4
  %c10071 = trunc i128 %r10070 to i32
  %gmp10072 = inttoptr i64 %t10069 to ptr
  store i32 %c10071, ptr %gmp10072, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064cfc word 0xbd4066c2
  %r10073.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10073 = load i64, ptr %r10073.p, align 8, !alias.scope !3, !noalias !4
  %t10074 = add i64 %r10073, 100
  %gmp10075 = inttoptr i64 %t10074 to ptr
  %gml10076 = load i32, ptr %gmp10075, align 1, !alias.scope !4, !noalias !3
  %c10077 = zext i32 %gml10076 to i128
  %wp10078 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10077, ptr %wp10078, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d00 word 0x1e222821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 2)
  ; @pc 0x800064d04 word 0xbd0066c1
  %r10079.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10079 = load i64, ptr %r10079.p, align 8, !alias.scope !3, !noalias !4
  %t10080 = add i64 %r10079, 100
  %r10081.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10081 = load i128, ptr %r10081.p, align 16, !alias.scope !3, !noalias !4
  %c10082 = trunc i128 %r10081 to i32
  %gmp10083 = inttoptr i64 %t10080 to ptr
  store i32 %c10082, ptr %gmp10083, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064d08 word 0x1e270121
  %r10084.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10084 = load i64, ptr %r10084.p, align 8, !alias.scope !3, !noalias !4
  %c10085 = trunc i64 %r10084 to i32
  %c10086 = zext i32 %c10085 to i128
  %wp10087 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10086, ptr %wp10087, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d0c word 0x1e211800
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 0, i32 1)
  ; @pc 0x800064d10 word 0x1e201001
  %wp10088 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1073741824, ptr %wp10088, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d14 word 0xf8438d09
  %r10089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10089 = load i64, ptr %r10089.p, align 8, !alias.scope !3, !noalias !4
  %t10090 = add i64 %r10089, 56
  %gmp10091 = inttoptr i64 %t10090 to ptr
  %gml10092 = load i64, ptr %gmp10091, align 1, !alias.scope !4, !noalias !3
  %wp10093 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t10090, ptr %wp10093, align 8, !alias.scope !3, !noalias !4
  %wp10094 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml10092, ptr %wp10094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d18 word 0xf9400508
  %r10095.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10095 = load i64, ptr %r10095.p, align 8, !alias.scope !3, !noalias !4
  %t10096 = add i64 %r10095, 8
  %gmp10097 = inttoptr i64 %t10096 to ptr
  %gml10098 = load i64, ptr %gmp10097, align 1, !alias.scope !4, !noalias !3
  %wp10099 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10098, ptr %wp10099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d1c word 0x1e203821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 0)
  ; @pc 0x800064d20 word 0x1e292000
  %fcmp10100 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 9, i32 0)
  %wp10101 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp10100, ptr %wp10101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d24 word 0xa982a2a9
  %r10102.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10102 = load i64, ptr %r10102.p, align 8, !alias.scope !3, !noalias !4
  %t10103 = add i64 %r10102, 40
  %t10104 = add i64 %t10103, 8
  %r10105.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10105 = load i64, ptr %r10105.p, align 8, !alias.scope !3, !noalias !4
  %gmp10106 = inttoptr i64 %t10103 to ptr
  store i64 %r10105, ptr %gmp10106, align 1, !alias.scope !4, !noalias !3
  %r10107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10107 = load i64, ptr %r10107.p, align 8, !alias.scope !3, !noalias !4
  %gmp10108 = inttoptr i64 %t10104 to ptr
  store i64 %r10107, ptr %gmp10108, align 1, !alias.scope !4, !noalias !3
  %wp10109 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t10103, ptr %wp10109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d28 word 0x1e21bc00
  %r10110.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10110 = load i128, ptr %r10110.p, align 16, !alias.scope !3, !noalias !4
  %c10111 = trunc i128 %r10110 to i32
  %r10112.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10112 = load i128, ptr %r10112.p, align 16, !alias.scope !3, !noalias !4
  %c10113 = trunc i128 %r10112 to i32
  %r10114.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10114 = load i64, ptr %r10114.p, align 8, !alias.scope !3, !noalias !4
  %fsh10116 = lshr i64 %r10114, 31
  %ftr10117 = trunc i64 %fsh10116 to i1
  %fsh10118 = lshr i64 %r10114, 28
  %ftr10119 = trunc i64 %fsh10118 to i1
  %cond10115 = icmp ne i1 %ftr10117, %ftr10119
  %sel10120 = select i1 %cond10115, i32 %c10111, i32 %c10113
  %c10121 = zext i32 %sel10120 to i128
  %wp10122 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10121, ptr %wp10122, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d2c word 0x1e292000
  %fcmp10123 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 9, i32 0)
  %wp10124 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp10123, ptr %wp10124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d30 word 0x1e20cd21
  %r10125.p = getelementptr inbounds i8, ptr %c, i64 656
  %r10125 = load i128, ptr %r10125.p, align 16, !alias.scope !3, !noalias !4
  %c10126 = trunc i128 %r10125 to i32
  %r10127.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10127 = load i128, ptr %r10127.p, align 16, !alias.scope !3, !noalias !4
  %c10128 = trunc i128 %r10127 to i32
  %r10129.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10129 = load i64, ptr %r10129.p, align 8, !alias.scope !3, !noalias !4
  %fsh10131 = lshr i64 %r10129, 30
  %ftr10132 = trunc i64 %fsh10131 to i1
  %fsh10133 = lshr i64 %r10129, 31
  %ftr10134 = trunc i64 %fsh10133 to i1
  %fsh10135 = lshr i64 %r10129, 28
  %ftr10136 = trunc i64 %fsh10135 to i1
  %fnz10137 = xor i1 %ftr10132, true
  %feq10138 = icmp eq i1 %ftr10134, %ftr10136
  %cond10130 = and i1 %fnz10137, %feq10138
  %sel10139 = select i1 %cond10130, i32 %c10126, i32 %c10128
  %c10140 = zext i32 %sel10139 to i128
  %wp10141 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10140, ptr %wp10141, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d34 word 0x1e202008
  %fcmp10142 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp10143 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp10142, ptr %wp10143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d38 word 0x2f00e400
  %wp10144 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp10144, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d3c word 0x1e214c00
  %r10145.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10145 = load i128, ptr %r10145.p, align 16, !alias.scope !3, !noalias !4
  %c10146 = trunc i128 %r10145 to i32
  %r10147.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10147 = load i128, ptr %r10147.p, align 16, !alias.scope !3, !noalias !4
  %c10148 = trunc i128 %r10147 to i32
  %r10149.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10149 = load i64, ptr %r10149.p, align 8, !alias.scope !3, !noalias !4
  %fsh10151 = lshr i64 %r10149, 31
  %cond10150 = trunc i64 %fsh10151 to i1
  %sel10152 = select i1 %cond10150, i32 %c10146, i32 %c10148
  %c10153 = zext i32 %sel10152 to i128
  %wp10154 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10153, ptr %wp10154, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d40 word 0xbd000ea0
  %r10155.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10155 = load i64, ptr %r10155.p, align 8, !alias.scope !3, !noalias !4
  %t10156 = add i64 %r10155, 12
  %r10157.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10157 = load i128, ptr %r10157.p, align 16, !alias.scope !3, !noalias !4
  %c10158 = trunc i128 %r10157 to i32
  %gmp10159 = inttoptr i64 %t10156 to ptr
  store i32 %c10158, ptr %gmp10159, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064d44 word 0xb85e42a8
  %r10160.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10160 = load i64, ptr %r10160.p, align 8, !alias.scope !3, !noalias !4
  %t10161 = add i64 %r10160, -28
  %gmp10162 = inttoptr i64 %t10161 to ptr
  %gml10163 = load i32, ptr %gmp10162, align 1, !alias.scope !4, !noalias !3
  %c10164 = zext i32 %gml10163 to i64
  %wp10165 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10164, ptr %wp10165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d48 word 0x36181628
  %r10166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10166 = load i64, ptr %r10166.p, align 8, !alias.scope !3, !noalias !4
  %t10167 = and i64 %r10166, 8
  %cmp10168 = icmp eq i64 %t10167, 0
  br i1 %cmp10168, label %L_80006500c, label %L_800064d4c_ft
L_800064e10:
  ; @pc 0x800064e10 word 0x2d518ac1
  %r10356.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10356 = load i64, ptr %r10356.p, align 8, !alias.scope !3, !noalias !4
  %t10357 = add i64 %r10356, 140
  %t10358 = add i64 %t10357, 4
  %gmp10359 = inttoptr i64 %t10357 to ptr
  %gml10360 = load i32, ptr %gmp10359, align 1, !alias.scope !4, !noalias !3
  %gmp10361 = inttoptr i64 %t10358 to ptr
  %gml10362 = load i32, ptr %gmp10361, align 1, !alias.scope !4, !noalias !3
  %c10363 = zext i32 %gml10360 to i128
  %wp10364 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10363, ptr %wp10364, align 16, !alias.scope !3, !noalias !4
  %c10365 = zext i32 %gml10362 to i128
  %wp10366 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10365, ptr %wp10366, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e14 word 0xbd4096c0
  %r10367.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10367 = load i64, ptr %r10367.p, align 8, !alias.scope !3, !noalias !4
  %t10368 = add i64 %r10367, 148
  %gmp10369 = inttoptr i64 %t10368 to ptr
  %gml10370 = load i32, ptr %gmp10369, align 1, !alias.scope !4, !noalias !3
  %c10371 = zext i32 %gml10370 to i128
  %wp10372 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10371, ptr %wp10372, align 16, !alias.scope !3, !noalias !4
  br label %L_800064e18
L_800064e18:
  ; @pc 0x800064e18 word 0xbd418263
  %r10373.p = getelementptr inbounds i8, ptr %c, i64 152
  %r10373 = load i64, ptr %r10373.p, align 8, !alias.scope !3, !noalias !4
  %t10374 = add i64 %r10373, 384
  %gmp10375 = inttoptr i64 %t10374 to ptr
  %gml10376 = load i32, ptr %gmp10375, align 1, !alias.scope !4, !noalias !3
  %c10377 = zext i32 %gml10376 to i128
  %wp10378 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10377, ptr %wp10378, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e1c word 0x9101e3e0
  %r10379.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10379 = load i64, ptr %r10379.p, align 8, !alias.scope !3, !noalias !4
  %t10380 = add i64 %r10379, 120
  %wp10381 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10380, ptr %wp10381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e20 word 0x1e233821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 3)
  ; @pc 0x800064e24 word 0xbd418664
  %r10382.p = getelementptr inbounds i8, ptr %c, i64 152
  %r10382 = load i64, ptr %r10382.p, align 8, !alias.scope !3, !noalias !4
  %t10383 = add i64 %r10382, 388
  %gmp10384 = inttoptr i64 %t10383 to ptr
  %gml10385 = load i32, ptr %gmp10384, align 1, !alias.scope !4, !noalias !3
  %c10386 = zext i32 %gml10385 to i128
  %wp10387 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10386, ptr %wp10387, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e28 word 0xbd418a65
  %r10388.p = getelementptr inbounds i8, ptr %c, i64 152
  %r10388 = load i64, ptr %r10388.p, align 8, !alias.scope !3, !noalias !4
  %t10389 = add i64 %r10388, 392
  %gmp10390 = inttoptr i64 %t10389 to ptr
  %gml10391 = load i32, ptr %gmp10390, align 1, !alias.scope !4, !noalias !3
  %c10392 = zext i32 %gml10391 to i128
  %wp10393 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c10392, ptr %wp10393, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e2c word 0x1e243842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 4)
  ; @pc 0x800064e30 word 0x1e253800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 5)
  ; @pc 0x800064e34 word 0x2d0f0be1
  %r10394.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10394 = load i64, ptr %r10394.p, align 8, !alias.scope !3, !noalias !4
  %t10395 = add i64 %r10394, 120
  %t10396 = add i64 %t10395, 4
  %r10397.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10397 = load i128, ptr %r10397.p, align 16, !alias.scope !3, !noalias !4
  %r10398.p = getelementptr inbounds i8, ptr %c, i64 544
  %r10398 = load i128, ptr %r10398.p, align 16, !alias.scope !3, !noalias !4
  %c10399 = trunc i128 %r10397 to i32
  %c10400 = trunc i128 %r10398 to i32
  %gmp10401 = inttoptr i64 %t10395 to ptr
  store i32 %c10399, ptr %gmp10401, align 1, !alias.scope !4, !noalias !3
  %gmp10402 = inttoptr i64 %t10396 to ptr
  store i32 %c10400, ptr %gmp10402, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064e38 word 0xbd0083e0
  %r10403.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10403 = load i64, ptr %r10403.p, align 8, !alias.scope !3, !noalias !4
  %t10404 = add i64 %r10403, 128
  %r10405.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10405 = load i128, ptr %r10405.p, align 16, !alias.scope !3, !noalias !4
  %c10406 = trunc i128 %r10405 to i32
  %gmp10407 = inttoptr i64 %t10404 to ptr
  store i32 %c10406, ptr %gmp10407, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064e3c word 0x9410a092
  %wp10408 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360151616, ptr %wp10408, align 8, !alias.scope !3, !noalias !4
  call void @f_80048d084(ptr %c)
  ; @pc 0x800064e40 word 0xb940eac9
  %r10409.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10409 = load i64, ptr %r10409.p, align 8, !alias.scope !3, !noalias !4
  %t10410 = add i64 %r10409, 232
  %gmp10411 = inttoptr i64 %t10410 to ptr
  %gml10412 = load i32, ptr %gmp10411, align 1, !alias.scope !4, !noalias !3
  %c10413 = zext i32 %gml10412 to i64
  %wp10414 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10413, ptr %wp10414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e44 word 0xaa1603e0
  %r10415.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10415 = load i64, ptr %r10415.p, align 8, !alias.scope !3, !noalias !4
  %t10416 = or i64 0, %r10415
  %wp10417 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10416, ptr %wp10417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e48 word 0xb940dac8
  %r10418.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10418 = load i64, ptr %r10418.p, align 8, !alias.scope !3, !noalias !4
  %t10419 = add i64 %r10418, 216
  %gmp10420 = inttoptr i64 %t10419 to ptr
  %gml10421 = load i32, ptr %gmp10420, align 1, !alias.scope !4, !noalias !3
  %c10422 = zext i32 %gml10421 to i64
  %wp10423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10422, ptr %wp10423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e4c word 0x6b09011f
  %r10424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10424 = load i64, ptr %r10424.p, align 8, !alias.scope !3, !noalias !4
  %c10425 = trunc i64 %r10424 to i32
  %r10426.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10426 = load i64, ptr %r10426.p, align 8, !alias.scope !3, !noalias !4
  %c10427 = trunc i64 %r10426 to i32
  %t10428 = sub i32 %c10425, %c10427
  %fn10429 = icmp slt i32 %t10428, 0
  %fz10430 = icmp eq i32 %t10428, 0
  %fc10431 = icmp uge i32 %c10425, %c10427
  %fx110432 = xor i32 %c10425, %c10427
  %fx210433 = xor i32 %c10425, %t10428
  %fva10434 = and i32 %fx110432, %fx210433
  %fv10435 = icmp slt i32 %fva10434, 0
  %nz10436 = zext i1 %fn10429 to i64
  %zz10437 = zext i1 %fz10430 to i64
  %cz10438 = zext i1 %fc10431 to i64
  %vz10439 = zext i1 %fv10435 to i64
  %ns10440 = shl i64 %nz10436, 31
  %zs10441 = shl i64 %zz10437, 30
  %cs10442 = shl i64 %cz10438, 29
  %vs10443 = shl i64 %vz10439, 28
  %nzor10444 = or i64 %ns10440, %zs10441
  %cvor10445 = or i64 %cs10442, %vs10443
  %nzcv10446 = or i64 %nzor10444, %cvor10445
  %wp10447 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10446, ptr %wp10447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e50 word 0xf94072ca
  %r10448.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10448 = load i64, ptr %r10448.p, align 8, !alias.scope !3, !noalias !4
  %t10449 = add i64 %r10448, 224
  %gmp10450 = inttoptr i64 %t10449 to ptr
  %gml10451 = load i64, ptr %gmp10450, align 1, !alias.scope !4, !noalias !3
  %wp10452 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml10451, ptr %wp10452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e54 word 0x52800308
  %c10453 = zext i32 24 to i64
  %wp10454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10453, ptr %wp10454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e58 word 0xf849c2cb
  %r10455.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10455 = load i64, ptr %r10455.p, align 8, !alias.scope !3, !noalias !4
  %t10456 = add i64 %r10455, 156
  %gmp10457 = inttoptr i64 %t10456 to ptr
  %gml10458 = load i64, ptr %gmp10457, align 1, !alias.scope !4, !noalias !3
  %wp10459 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml10458, ptr %wp10459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e5c word 0xf84942cc
  %r10460.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10460 = load i64, ptr %r10460.p, align 8, !alias.scope !3, !noalias !4
  %t10461 = add i64 %r10460, 148
  %gmp10462 = inttoptr i64 %t10461 to ptr
  %gml10463 = load i64, ptr %gmp10462, align 1, !alias.scope !4, !noalias !3
  %wp10464 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml10463, ptr %wp10464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e60 word 0x1a9f8129
  %r10465.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10465 = load i64, ptr %r10465.p, align 8, !alias.scope !3, !noalias !4
  %c10466 = trunc i64 %r10465 to i32
  %r10467.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10467 = load i64, ptr %r10467.p, align 8, !alias.scope !3, !noalias !4
  %fsh10469 = lshr i64 %r10467, 29
  %ftr10470 = trunc i64 %fsh10469 to i1
  %fsh10471 = lshr i64 %r10467, 30
  %ftr10472 = trunc i64 %fsh10471 to i1
  %fnz10473 = xor i1 %ftr10472, true
  %cond10468 = and i1 %ftr10470, %fnz10473
  %sel10474 = select i1 %cond10468, i32 %c10466, i32 0
  %c10475 = zext i32 %sel10474 to i64
  %wp10476 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10475, ptr %wp10476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e64 word 0x2d4f8be0
  %r10477.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10477 = load i64, ptr %r10477.p, align 8, !alias.scope !3, !noalias !4
  %t10478 = add i64 %r10477, 124
  %t10479 = add i64 %t10478, 4
  %gmp10480 = inttoptr i64 %t10478 to ptr
  %gml10481 = load i32, ptr %gmp10480, align 1, !alias.scope !4, !noalias !3
  %gmp10482 = inttoptr i64 %t10479 to ptr
  %gml10483 = load i32, ptr %gmp10482, align 1, !alias.scope !4, !noalias !3
  %c10484 = zext i32 %gml10481 to i128
  %wp10485 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10484, ptr %wp10485, align 16, !alias.scope !3, !noalias !4
  %c10486 = zext i32 %gml10483 to i128
  %wp10487 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10486, ptr %wp10487, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e68 word 0x9b282929
  %r10488.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10488 = load i64, ptr %r10488.p, align 8, !alias.scope !3, !noalias !4
  %c10489 = trunc i64 %r10488 to i32
  %c10490 = sext i32 %c10489 to i64
  %r10491.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10491 = load i64, ptr %r10491.p, align 8, !alias.scope !3, !noalias !4
  %c10492 = trunc i64 %r10491 to i32
  %c10493 = sext i32 %c10492 to i64
  %t10494 = mul i64 %c10490, %c10493
  %r10495.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10495 = load i64, ptr %r10495.p, align 8, !alias.scope !3, !noalias !4
  %t10496 = add i64 %r10495, %t10494
  %wp10497 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t10496, ptr %wp10497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e6c word 0xf848c2ca
  %r10498.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10498 = load i64, ptr %r10498.p, align 8, !alias.scope !3, !noalias !4
  %t10499 = add i64 %r10498, 140
  %gmp10500 = inttoptr i64 %t10499 to ptr
  %gml10501 = load i64, ptr %gmp10500, align 1, !alias.scope !4, !noalias !3
  %wp10502 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml10501, ptr %wp10502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e70 word 0xbd407be1
  %r10503.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10503 = load i64, ptr %r10503.p, align 8, !alias.scope !3, !noalias !4
  %t10504 = add i64 %r10503, 120
  %gmp10505 = inttoptr i64 %t10504 to ptr
  %gml10506 = load i32, ptr %gmp10505, align 1, !alias.scope !4, !noalias !3
  %c10507 = zext i32 %gml10506 to i128
  %wp10508 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10507, ptr %wp10508, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e74 word 0xf900092b
  %r10509.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10509 = load i64, ptr %r10509.p, align 8, !alias.scope !3, !noalias !4
  %t10510 = add i64 %r10509, 16
  %r10511.p = getelementptr inbounds i8, ptr %c, i64 88
  %r10511 = load i64, ptr %r10511.p, align 8, !alias.scope !3, !noalias !4
  %gmp10512 = inttoptr i64 %t10510 to ptr
  store i64 %r10511, ptr %gmp10512, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064e78 word 0xa900312a
  %r10513.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10513 = load i64, ptr %r10513.p, align 8, !alias.scope !3, !noalias !4
  %t10514 = add i64 %r10513, 8
  %r10515.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10515 = load i64, ptr %r10515.p, align 8, !alias.scope !3, !noalias !4
  %gmp10516 = inttoptr i64 %r10513 to ptr
  store i64 %r10515, ptr %gmp10516, align 1, !alias.scope !4, !noalias !3
  %r10517.p = getelementptr inbounds i8, ptr %c, i64 96
  %r10517 = load i64, ptr %r10517.p, align 8, !alias.scope !3, !noalias !4
  %gmp10518 = inttoptr i64 %t10514 to ptr
  store i64 %r10517, ptr %gmp10518, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064e7c word 0x5280006c
  %c10519 = zext i32 3 to i64
  %wp10520 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c10519, ptr %wp10520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e80 word 0x295d2ac9
  %r10521.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10521 = load i64, ptr %r10521.p, align 8, !alias.scope !3, !noalias !4
  %t10522 = add i64 %r10521, 232
  %t10523 = add i64 %t10522, 4
  %gmp10524 = inttoptr i64 %t10522 to ptr
  %gml10525 = load i32, ptr %gmp10524, align 1, !alias.scope !4, !noalias !3
  %c10526 = zext i32 %gml10525 to i64
  %gmp10527 = inttoptr i64 %t10523 to ptr
  %gml10528 = load i32, ptr %gmp10527, align 1, !alias.scope !4, !noalias !3
  %c10529 = zext i32 %gml10528 to i64
  %wp10530 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10526, ptr %wp10530, align 8, !alias.scope !3, !noalias !4
  %wp10531 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10529, ptr %wp10531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e84 word 0x11000529
  %r10532.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10532 = load i64, ptr %r10532.p, align 8, !alias.scope !3, !noalias !4
  %c10533 = trunc i64 %r10532 to i32
  %t10534 = add i32 %c10533, 1
  %c10535 = zext i32 %t10534 to i64
  %wp10536 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10535, ptr %wp10536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e88 word 0x2d4e92c3
  %r10537.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10537 = load i64, ptr %r10537.p, align 8, !alias.scope !3, !noalias !4
  %t10538 = add i64 %r10537, 116
  %t10539 = add i64 %t10538, 4
  %gmp10540 = inttoptr i64 %t10538 to ptr
  %gml10541 = load i32, ptr %gmp10540, align 1, !alias.scope !4, !noalias !3
  %gmp10542 = inttoptr i64 %t10539 to ptr
  %gml10543 = load i32, ptr %gmp10542, align 1, !alias.scope !4, !noalias !3
  %c10544 = zext i32 %gml10541 to i128
  %wp10545 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10544, ptr %wp10545, align 16, !alias.scope !3, !noalias !4
  %c10546 = zext i32 %gml10543 to i128
  %wp10547 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10546, ptr %wp10547, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e8c word 0x6b0903eb
  %r10548.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10548 = load i64, ptr %r10548.p, align 8, !alias.scope !3, !noalias !4
  %c10549 = trunc i64 %r10548 to i32
  %t10550 = sub i32 0, %c10549
  %fn10551 = icmp slt i32 %t10550, 0
  %fz10552 = icmp eq i32 %t10550, 0
  %fc10553 = icmp uge i32 0, %c10549
  %fx110554 = xor i32 0, %c10549
  %fx210555 = xor i32 0, %t10550
  %fva10556 = and i32 %fx110554, %fx210555
  %fv10557 = icmp slt i32 %fva10556, 0
  %nz10558 = zext i1 %fn10551 to i64
  %zz10559 = zext i1 %fz10552 to i64
  %cz10560 = zext i1 %fc10553 to i64
  %vz10561 = zext i1 %fv10557 to i64
  %ns10562 = shl i64 %nz10558, 31
  %zs10563 = shl i64 %zz10559, 30
  %cs10564 = shl i64 %cz10560, 29
  %vs10565 = shl i64 %vz10561, 28
  %nzor10566 = or i64 %ns10562, %zs10563
  %cvor10567 = or i64 %cs10564, %vs10565
  %nzcv10568 = or i64 %nzor10566, %cvor10567
  %wp10569 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10568, ptr %wp10569, align 8, !alias.scope !3, !noalias !4
  %c10570 = zext i32 %t10550 to i64
  %wp10571 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c10570, ptr %wp10571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e90 word 0x12000529
  %r10572.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10572 = load i64, ptr %r10572.p, align 8, !alias.scope !3, !noalias !4
  %c10573 = trunc i64 %r10572 to i32
  %t10574 = and i32 %c10573, 3
  %c10575 = zext i32 %t10574 to i64
  %wp10576 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10575, ptr %wp10576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064e94 word 0x2d519ac5
  %r10577.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10577 = load i64, ptr %r10577.p, align 8, !alias.scope !3, !noalias !4
  %t10578 = add i64 %r10577, 140
  %t10579 = add i64 %t10578, 4
  %gmp10580 = inttoptr i64 %t10578 to ptr
  %gml10581 = load i32, ptr %gmp10580, align 1, !alias.scope !4, !noalias !3
  %gmp10582 = inttoptr i64 %t10579 to ptr
  %gml10583 = load i32, ptr %gmp10582, align 1, !alias.scope !4, !noalias !3
  %c10584 = zext i32 %gml10581 to i128
  %wp10585 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c10584, ptr %wp10585, align 16, !alias.scope !3, !noalias !4
  %c10586 = zext i32 %gml10583 to i128
  %wp10587 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c10586, ptr %wp10587, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e98 word 0x2d4fced2
  %r10588.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10588 = load i64, ptr %r10588.p, align 8, !alias.scope !3, !noalias !4
  %t10589 = add i64 %r10588, 124
  %t10590 = add i64 %t10589, 4
  %gmp10591 = inttoptr i64 %t10589 to ptr
  %gml10592 = load i32, ptr %gmp10591, align 1, !alias.scope !4, !noalias !3
  %gmp10593 = inttoptr i64 %t10590 to ptr
  %gml10594 = load i32, ptr %gmp10593, align 1, !alias.scope !4, !noalias !3
  %c10595 = zext i32 %gml10592 to i128
  %wp10596 = getelementptr inbounds i8, ptr %c, i64 800
  store i128 %c10595, ptr %wp10596, align 16, !alias.scope !3, !noalias !4
  %c10597 = zext i32 %gml10594 to i128
  %wp10598 = getelementptr inbounds i8, ptr %c, i64 816
  store i128 %c10597, ptr %wp10598, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064e9c word 0x1e252867
  call void @rt_fp_op_s(ptr %c, i32 0, i32 7, i32 3, i32 5)
  ; @pc 0x800064ea0 word 0x2d52d6d4
  %r10599.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10599 = load i64, ptr %r10599.p, align 8, !alias.scope !3, !noalias !4
  %t10600 = add i64 %r10599, 148
  %t10601 = add i64 %t10600, 4
  %gmp10602 = inttoptr i64 %t10600 to ptr
  %gml10603 = load i32, ptr %gmp10602, align 1, !alias.scope !4, !noalias !3
  %gmp10604 = inttoptr i64 %t10601 to ptr
  %gml10605 = load i32, ptr %gmp10604, align 1, !alias.scope !4, !noalias !3
  %c10606 = zext i32 %gml10603 to i128
  %wp10607 = getelementptr inbounds i8, ptr %c, i64 832
  store i128 %c10606, ptr %wp10607, align 16, !alias.scope !3, !noalias !4
  %c10608 = zext i32 %gml10605 to i128
  %wp10609 = getelementptr inbounds i8, ptr %c, i64 848
  store i128 %c10608, ptr %wp10609, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064ea4 word 0x1e262890
  call void @rt_fp_op_s(ptr %c, i32 0, i32 16, i32 4, i32 6)
  ; @pc 0x800064ea8 word 0x2d50dac3
  %r10610.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10610 = load i64, ptr %r10610.p, align 8, !alias.scope !3, !noalias !4
  %t10611 = add i64 %r10610, 132
  %t10612 = add i64 %t10611, 4
  %gmp10613 = inttoptr i64 %t10611 to ptr
  %gml10614 = load i32, ptr %gmp10613, align 1, !alias.scope !4, !noalias !3
  %gmp10615 = inttoptr i64 %t10612 to ptr
  %gml10616 = load i32, ptr %gmp10615, align 1, !alias.scope !4, !noalias !3
  %c10617 = zext i32 %gml10614 to i128
  %wp10618 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10617, ptr %wp10618, align 16, !alias.scope !3, !noalias !4
  %c10619 = zext i32 %gml10616 to i128
  %wp10620 = getelementptr inbounds i8, ptr %c, i64 864
  store i128 %c10619, ptr %wp10620, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064eac word 0x1e342a46
  call void @rt_fp_op_s(ptr %c, i32 0, i32 6, i32 18, i32 20)
  ; @pc 0x800064eb0 word 0x2d53cac4
  %r10621.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10621 = load i64, ptr %r10621.p, align 8, !alias.scope !3, !noalias !4
  %t10622 = add i64 %r10621, 156
  %t10623 = add i64 %t10622, 4
  %gmp10624 = inttoptr i64 %t10622 to ptr
  %gml10625 = load i32, ptr %gmp10624, align 1, !alias.scope !4, !noalias !3
  %gmp10626 = inttoptr i64 %t10623 to ptr
  %gml10627 = load i32, ptr %gmp10626, align 1, !alias.scope !4, !noalias !3
  %c10628 = zext i32 %gml10625 to i128
  %wp10629 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10628, ptr %wp10629, align 16, !alias.scope !3, !noalias !4
  %c10630 = zext i32 %gml10627 to i128
  %wp10631 = getelementptr inbounds i8, ptr %c, i64 800
  store i128 %c10630, ptr %wp10631, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064eb4 word 0x1e352a65
  call void @rt_fp_op_s(ptr %c, i32 0, i32 5, i32 19, i32 21)
  ; @pc 0x800064eb8 word 0x1200056b
  %r10632.p = getelementptr inbounds i8, ptr %c, i64 88
  %r10632 = load i64, ptr %r10632.p, align 8, !alias.scope !3, !noalias !4
  %c10633 = trunc i64 %r10632 to i32
  %t10634 = and i32 %c10633, 3
  %c10635 = zext i32 %t10634 to i64
  %wp10636 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c10635, ptr %wp10636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ebc word 0x5a8b4529
  %r10637.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10637 = load i64, ptr %r10637.p, align 8, !alias.scope !3, !noalias !4
  %c10638 = trunc i64 %r10637 to i32
  %r10639.p = getelementptr inbounds i8, ptr %c, i64 88
  %r10639 = load i64, ptr %r10639.p, align 8, !alias.scope !3, !noalias !4
  %c10640 = trunc i64 %r10639 to i32
  %t10641 = sub i32 0, %c10640
  %r10642.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10642 = load i64, ptr %r10642.p, align 8, !alias.scope !3, !noalias !4
  %fsh10644 = lshr i64 %r10642, 31
  %cond10643 = trunc i64 %fsh10644 to i1
  %sel10645 = select i1 %cond10643, i32 %c10638, i32 %t10641
  %c10646 = zext i32 %sel10645 to i64
  %wp10647 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10646, ptr %wp10647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ec0 word 0x71000d5f
  %r10648.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10648 = load i64, ptr %r10648.p, align 8, !alias.scope !3, !noalias !4
  %c10649 = trunc i64 %r10648 to i32
  %t10650 = sub i32 %c10649, 3
  %fn10651 = icmp slt i32 %t10650, 0
  %fz10652 = icmp eq i32 %t10650, 0
  %fc10653 = icmp uge i32 %c10649, 3
  %fx110654 = xor i32 %c10649, 3
  %fx210655 = xor i32 %c10649, %t10650
  %fva10656 = and i32 %fx110654, %fx210655
  %fv10657 = icmp slt i32 %fva10656, 0
  %nz10658 = zext i1 %fn10651 to i64
  %zz10659 = zext i1 %fz10652 to i64
  %cz10660 = zext i1 %fc10653 to i64
  %vz10661 = zext i1 %fv10657 to i64
  %ns10662 = shl i64 %nz10658, 31
  %zs10663 = shl i64 %zz10659, 30
  %cs10664 = shl i64 %cz10660, 29
  %vs10665 = shl i64 %vz10661, 28
  %nzor10666 = or i64 %ns10662, %zs10663
  %cvor10667 = or i64 %cs10664, %vs10665
  %nzcv10668 = or i64 %nzor10666, %cvor10667
  %wp10669 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10668, ptr %wp10669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ec4 word 0x1a8cb14a
  %r10670.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10670 = load i64, ptr %r10670.p, align 8, !alias.scope !3, !noalias !4
  %c10671 = trunc i64 %r10670 to i32
  %r10672.p = getelementptr inbounds i8, ptr %c, i64 96
  %r10672 = load i64, ptr %r10672.p, align 8, !alias.scope !3, !noalias !4
  %c10673 = trunc i64 %r10672 to i32
  %r10674.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10674 = load i64, ptr %r10674.p, align 8, !alias.scope !3, !noalias !4
  %fsh10676 = lshr i64 %r10674, 31
  %ftr10677 = trunc i64 %fsh10676 to i1
  %fsh10678 = lshr i64 %r10674, 28
  %ftr10679 = trunc i64 %fsh10678 to i1
  %cond10675 = icmp ne i1 %ftr10677, %ftr10679
  %sel10680 = select i1 %cond10675, i32 %c10671, i32 %c10673
  %c10681 = zext i32 %sel10680 to i64
  %wp10682 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10681, ptr %wp10682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ec8 word 0x1100054b
  %r10683.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10683 = load i64, ptr %r10683.p, align 8, !alias.scope !3, !noalias !4
  %c10684 = trunc i64 %r10683 to i32
  %t10685 = add i32 %c10684, 1
  %c10686 = zext i32 %t10685 to i64
  %wp10687 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c10686, ptr %wp10687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ecc word 0x71000d5f
  %r10688.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10688 = load i64, ptr %r10688.p, align 8, !alias.scope !3, !noalias !4
  %c10689 = trunc i64 %r10688 to i32
  %t10690 = sub i32 %c10689, 3
  %fn10691 = icmp slt i32 %t10690, 0
  %fz10692 = icmp eq i32 %t10690, 0
  %fc10693 = icmp uge i32 %c10689, 3
  %fx110694 = xor i32 %c10689, 3
  %fx210695 = xor i32 %c10689, %t10690
  %fva10696 = and i32 %fx110694, %fx210695
  %fv10697 = icmp slt i32 %fva10696, 0
  %nz10698 = zext i1 %fn10691 to i64
  %zz10699 = zext i1 %fz10692 to i64
  %cz10700 = zext i1 %fc10693 to i64
  %vz10701 = zext i1 %fv10697 to i64
  %ns10702 = shl i64 %nz10698, 31
  %zs10703 = shl i64 %zz10699, 30
  %cs10704 = shl i64 %cz10700, 29
  %vs10705 = shl i64 %vz10701, 28
  %nzor10706 = or i64 %ns10702, %zs10703
  %cvor10707 = or i64 %cs10704, %vs10705
  %nzcv10708 = or i64 %nzor10706, %cvor10707
  %wp10709 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10708, ptr %wp10709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064ed0 word 0x1e220171
  %r10710.p = getelementptr inbounds i8, ptr %c, i64 88
  %r10710 = load i64, ptr %r10710.p, align 8, !alias.scope !3, !noalias !4
  %c10711 = trunc i64 %r10710 to i32
  %c10712 = zext i32 %c10711 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 17, i64 %c10712, i32 32, i32 0, i32 0)
  ; @pc 0x800064ed4 word 0x1e242864
  call void @rt_fp_op_s(ptr %c, i32 0, i32 4, i32 3, i32 4)
  ; @pc 0x800064ed8 word 0x1e322ac3
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 22, i32 18)
  ; @pc 0x800064edc word 0x2d0ec2c7
  %r10713.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10713 = load i64, ptr %r10713.p, align 8, !alias.scope !3, !noalias !4
  %t10714 = add i64 %r10713, 116
  %t10715 = add i64 %t10714, 4
  %r10716.p = getelementptr inbounds i8, ptr %c, i64 624
  %r10716 = load i128, ptr %r10716.p, align 16, !alias.scope !3, !noalias !4
  %r10717.p = getelementptr inbounds i8, ptr %c, i64 768
  %r10717 = load i128, ptr %r10717.p, align 16, !alias.scope !3, !noalias !4
  %c10718 = trunc i128 %r10716 to i32
  %c10719 = trunc i128 %r10717 to i32
  %gmp10720 = inttoptr i64 %t10714 to ptr
  store i32 %c10718, ptr %gmp10720, align 1, !alias.scope !4, !noalias !3
  %gmp10721 = inttoptr i64 %t10715 to ptr
  store i32 %c10719, ptr %gmp10721, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ee0 word 0x2d0f96c6
  %r10722.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10722 = load i64, ptr %r10722.p, align 8, !alias.scope !3, !noalias !4
  %t10723 = add i64 %r10722, 124
  %t10724 = add i64 %t10723, 4
  %r10725.p = getelementptr inbounds i8, ptr %c, i64 608
  %r10725 = load i128, ptr %r10725.p, align 16, !alias.scope !3, !noalias !4
  %r10726.p = getelementptr inbounds i8, ptr %c, i64 592
  %r10726 = load i128, ptr %r10726.p, align 16, !alias.scope !3, !noalias !4
  %c10727 = trunc i128 %r10725 to i32
  %c10728 = trunc i128 %r10726 to i32
  %gmp10729 = inttoptr i64 %t10723 to ptr
  store i32 %c10727, ptr %gmp10729, align 1, !alias.scope !4, !noalias !3
  %gmp10730 = inttoptr i64 %t10724 to ptr
  store i32 %c10728, ptr %gmp10730, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ee4 word 0x291d2ec9
  %r10731.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10731 = load i64, ptr %r10731.p, align 8, !alias.scope !3, !noalias !4
  %t10732 = add i64 %r10731, 232
  %t10733 = add i64 %t10732, 4
  %r10734.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10734 = load i64, ptr %r10734.p, align 8, !alias.scope !3, !noalias !4
  %c10735 = trunc i64 %r10734 to i32
  %gmp10736 = inttoptr i64 %t10732 to ptr
  store i32 %c10735, ptr %gmp10736, align 1, !alias.scope !4, !noalias !3
  %r10737.p = getelementptr inbounds i8, ptr %c, i64 88
  %r10737 = load i64, ptr %r10737.p, align 8, !alias.scope !3, !noalias !4
  %c10738 = trunc i64 %r10737 to i32
  %gmp10739 = inttoptr i64 %t10733 to ptr
  store i32 %c10738, ptr %gmp10739, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ee8 word 0x2d108ec4
  %r10740.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10740 = load i64, ptr %r10740.p, align 8, !alias.scope !3, !noalias !4
  %t10741 = add i64 %r10740, 132
  %t10742 = add i64 %t10741, 4
  %r10743.p = getelementptr inbounds i8, ptr %c, i64 576
  %r10743 = load i128, ptr %r10743.p, align 16, !alias.scope !3, !noalias !4
  %r10744.p = getelementptr inbounds i8, ptr %c, i64 560
  %r10744 = load i128, ptr %r10744.p, align 16, !alias.scope !3, !noalias !4
  %c10745 = trunc i128 %r10743 to i32
  %c10746 = trunc i128 %r10744 to i32
  %gmp10747 = inttoptr i64 %t10741 to ptr
  store i32 %c10745, ptr %gmp10747, align 1, !alias.scope !4, !noalias !3
  %gmp10748 = inttoptr i64 %t10742 to ptr
  store i32 %c10746, ptr %gmp10748, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064eec word 0x1e311931
  call void @rt_fp_op_s(ptr %c, i32 5, i32 17, i32 9, i32 17)
  ; @pc 0x800064ef0 word 0x1e3108b2
  call void @rt_fp_op_s(ptr %c, i32 2, i32 18, i32 5, i32 17)
  ; @pc 0x800064ef4 word 0x1e3108f3
  call void @rt_fp_op_s(ptr %c, i32 2, i32 19, i32 7, i32 17)
  ; @pc 0x800064ef8 word 0x1e310a14
  call void @rt_fp_op_s(ptr %c, i32 2, i32 20, i32 16, i32 17)
  ; @pc 0x800064efc word 0x1e310895
  call void @rt_fp_op_s(ptr %c, i32 2, i32 21, i32 4, i32 17)
  ; @pc 0x800064f00 word 0xbc0c8c12
  %r10749.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10749 = load i64, ptr %r10749.p, align 8, !alias.scope !3, !noalias !4
  %t10750 = add i64 %r10749, 200
  %r10751.p = getelementptr inbounds i8, ptr %c, i64 800
  %r10751 = load i128, ptr %r10751.p, align 16, !alias.scope !3, !noalias !4
  %c10752 = trunc i128 %r10751 to i32
  %gmp10753 = inttoptr i64 %t10750 to ptr
  store i32 %c10752, ptr %gmp10753, align 1, !alias.scope !4, !noalias !3
  %wp10754 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10750, ptr %wp10754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064f04 word 0x1e3108d2
  call void @rt_fp_op_s(ptr %c, i32 2, i32 18, i32 6, i32 17)
  ; @pc 0x800064f08 word 0x1e310871
  call void @rt_fp_op_s(ptr %c, i32 2, i32 17, i32 3, i32 17)
  ; @pc 0x800064f0c word 0x2d3ed013
  %r10755.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10755 = load i64, ptr %r10755.p, align 8, !alias.scope !3, !noalias !4
  %t10756 = add i64 %r10755, -12
  %t10757 = add i64 %t10756, 4
  %r10758.p = getelementptr inbounds i8, ptr %c, i64 816
  %r10758 = load i128, ptr %r10758.p, align 16, !alias.scope !3, !noalias !4
  %r10759.p = getelementptr inbounds i8, ptr %c, i64 832
  %r10759 = load i128, ptr %r10759.p, align 16, !alias.scope !3, !noalias !4
  %c10760 = trunc i128 %r10758 to i32
  %c10761 = trunc i128 %r10759 to i32
  %gmp10762 = inttoptr i64 %t10756 to ptr
  store i32 %c10760, ptr %gmp10762, align 1, !alias.scope !4, !noalias !3
  %gmp10763 = inttoptr i64 %t10757 to ptr
  store i32 %c10761, ptr %gmp10763, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f10 word 0xbc1fc012
  %r10764.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10764 = load i64, ptr %r10764.p, align 8, !alias.scope !3, !noalias !4
  %t10765 = add i64 %r10764, -4
  %r10766.p = getelementptr inbounds i8, ptr %c, i64 800
  %r10766 = load i128, ptr %r10766.p, align 16, !alias.scope !3, !noalias !4
  %c10767 = trunc i128 %r10766 to i32
  %gmp10768 = inttoptr i64 %t10765 to ptr
  store i32 %c10767, ptr %gmp10768, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f14 word 0x2d00c415
  %r10769.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10769 = load i64, ptr %r10769.p, align 8, !alias.scope !3, !noalias !4
  %t10770 = add i64 %r10769, 4
  %t10771 = add i64 %t10770, 4
  %r10772.p = getelementptr inbounds i8, ptr %c, i64 848
  %r10772 = load i128, ptr %r10772.p, align 16, !alias.scope !3, !noalias !4
  %r10773.p = getelementptr inbounds i8, ptr %c, i64 784
  %r10773 = load i128, ptr %r10773.p, align 16, !alias.scope !3, !noalias !4
  %c10774 = trunc i128 %r10772 to i32
  %c10775 = trunc i128 %r10773 to i32
  %gmp10776 = inttoptr i64 %t10770 to ptr
  store i32 %c10774, ptr %gmp10776, align 1, !alias.scope !4, !noalias !3
  %gmp10777 = inttoptr i64 %t10771 to ptr
  store i32 %c10775, ptr %gmp10777, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f18 word 0x5400030b
  %r10778.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10778 = load i64, ptr %r10778.p, align 8, !alias.scope !3, !noalias !4
  %fsh10780 = lshr i64 %r10778, 31
  %ftr10781 = trunc i64 %fsh10780 to i1
  %fsh10782 = lshr i64 %r10778, 28
  %ftr10783 = trunc i64 %fsh10782 to i1
  %cond10779 = icmp ne i1 %ftr10781, %ftr10783
  br i1 %cond10779, label %L_800064f78, label %L_800064f1c_ft
L_800064f78:
  ; @pc 0x800064f78 word 0x0f046403
  %wp10906 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 9223372039002259456, ptr %wp10906, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f7c word 0x1e230804
  call void @rt_fp_op_s(ptr %c, i32 2, i32 4, i32 0, i32 3)
  ; @pc 0x800064f80 word 0x1e242849
  call void @rt_fp_op_s(ptr %c, i32 0, i32 9, i32 2, i32 4)
  ; @pc 0x800064f84 word 0x1e230842
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 2, i32 3)
  ; @pc 0x800064f88 word 0x2f00e403
  %wp10907 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 0, ptr %wp10907, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f8c word 0x1f03082a
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 10, i32 1, i32 3, i32 2)
  ; @pc 0x800064f90 word 0x1f23840b
  call void @rt_fp_fma_s(ptr %c, i32 1, i32 0, i32 11, i32 0, i32 3, i32 1)
  ; @pc 0x800064f94 word 0x9410a03c
  %wp10908 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360151960, ptr %wp10908, align 8, !alias.scope !3, !noalias !4
  call void @f_80048d084(ptr %c)
  ; @pc 0x800064f98 word 0xbd40cac2
  %r10909.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10909 = load i64, ptr %r10909.p, align 8, !alias.scope !3, !noalias !4
  %t10910 = add i64 %r10909, 200
  %gmp10911 = inttoptr i64 %t10910 to ptr
  %gml10912 = load i32, ptr %gmp10911, align 1, !alias.scope !4, !noalias !3
  %c10913 = zext i32 %gml10912 to i128
  %wp10914 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10913, ptr %wp10914, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f9c word 0xaa1603f7
  %r10915.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10915 = load i64, ptr %r10915.p, align 8, !alias.scope !3, !noalias !4
  %t10916 = or i64 0, %r10915
  %wp10917 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t10916, ptr %wp10917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064fa0 word 0x1e2b8844
  call void @rt_fp_op_s(ptr %c, i32 4, i32 4, i32 2, i32 11)
  ; @pc 0x800064fa4 word 0x2d5982c1
  %r10918.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10918 = load i64, ptr %r10918.p, align 8, !alias.scope !3, !noalias !4
  %t10919 = add i64 %r10918, 204
  %t10920 = add i64 %t10919, 4
  %gmp10921 = inttoptr i64 %t10919 to ptr
  %gml10922 = load i32, ptr %gmp10921, align 1, !alias.scope !4, !noalias !3
  %gmp10923 = inttoptr i64 %t10920 to ptr
  %gml10924 = load i32, ptr %gmp10923, align 1, !alias.scope !4, !noalias !3
  %c10925 = zext i32 %gml10922 to i128
  %wp10926 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10925, ptr %wp10926, align 16, !alias.scope !3, !noalias !4
  %c10927 = zext i32 %gml10924 to i128
  %wp10928 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10927, ptr %wp10928, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064fa8 word 0x1e2a8803
  call void @rt_fp_op_s(ptr %c, i32 4, i32 3, i32 0, i32 10)
  ; @pc 0x800064fac word 0x1f091000
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 9, i32 4)
  ; @pc 0x800064fb0 word 0x1f0b0c23
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 3, i32 1, i32 11, i32 3)
  ; @pc 0x800064fb4 word 0x1e298824
  call void @rt_fp_op_s(ptr %c, i32 4, i32 4, i32 1, i32 9)
  ; @pc 0x800064fb8 word 0xbd0102c0
  %r10929.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10929 = load i64, ptr %r10929.p, align 8, !alias.scope !3, !noalias !4
  %t10930 = add i64 %r10929, 256
  %r10931.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10931 = load i128, ptr %r10931.p, align 16, !alias.scope !3, !noalias !4
  %c10932 = trunc i128 %r10931 to i32
  %gmp10933 = inttoptr i64 %t10930 to ptr
  store i32 %c10932, ptr %gmp10933, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064fbc word 0x1f0a1040
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 2, i32 10, i32 4)
  ; @pc 0x800064fc0 word 0xbd0106c0
  %r10934.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10934 = load i64, ptr %r10934.p, align 8, !alias.scope !3, !noalias !4
  %t10935 = add i64 %r10934, 260
  %r10936.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10936 = load i128, ptr %r10936.p, align 16, !alias.scope !3, !noalias !4
  %c10937 = trunc i128 %r10936 to i32
  %gmp10938 = inttoptr i64 %t10935 to ptr
  store i32 %c10937, ptr %gmp10938, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064fc4 word 0xbc0fcee3
  %r10939.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10939 = load i64, ptr %r10939.p, align 8, !alias.scope !3, !noalias !4
  %t10940 = add i64 %r10939, 252
  %r10941.p = getelementptr inbounds i8, ptr %c, i64 560
  %r10941 = load i128, ptr %r10941.p, align 16, !alias.scope !3, !noalias !4
  %c10942 = trunc i128 %r10941 to i32
  %gmp10943 = inttoptr i64 %t10940 to ptr
  store i32 %c10942, ptr %gmp10943, align 1, !alias.scope !4, !noalias !3
  %wp10944 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t10940, ptr %wp10944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064fc8 word 0xaa1703e0
  %r10945.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10945 = load i64, ptr %r10945.p, align 8, !alias.scope !3, !noalias !4
  %t10946 = or i64 0, %r10945
  %wp10947 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10946, ptr %wp10947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064fcc word 0x9410a02e
  %wp10948 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152016, ptr %wp10948, align 8, !alias.scope !3, !noalias !4
  call void @f_80048d084(ptr %c)
  ; @pc 0x800064fd0 word 0xbd4102c0
  %r10949.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10949 = load i64, ptr %r10949.p, align 8, !alias.scope !3, !noalias !4
  %t10950 = add i64 %r10949, 256
  %gmp10951 = inttoptr i64 %t10950 to ptr
  %gml10952 = load i32, ptr %gmp10951, align 1, !alias.scope !4, !noalias !3
  %c10953 = zext i32 %gml10952 to i128
  %wp10954 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10953, ptr %wp10954, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064fd4 word 0xaa1603e0
  %r10955.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10955 = load i64, ptr %r10955.p, align 8, !alias.scope !3, !noalias !4
  %t10956 = or i64 0, %r10955
  %wp10957 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10956, ptr %wp10957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064fd8 word 0xbd4106c2
  %r10958.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10958 = load i64, ptr %r10958.p, align 8, !alias.scope !3, !noalias !4
  %t10959 = add i64 %r10958, 260
  %gmp10960 = inttoptr i64 %t10959 to ptr
  %gml10961 = load i32, ptr %gmp10960, align 1, !alias.scope !4, !noalias !3
  %c10962 = zext i32 %gml10961 to i128
  %wp10963 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10962, ptr %wp10963, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064fdc word 0x2d5986c3
  %r10964.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10964 = load i64, ptr %r10964.p, align 8, !alias.scope !3, !noalias !4
  %t10965 = add i64 %r10964, 204
  %t10966 = add i64 %t10965, 4
  %gmp10967 = inttoptr i64 %t10965 to ptr
  %gml10968 = load i32, ptr %gmp10967, align 1, !alias.scope !4, !noalias !3
  %gmp10969 = inttoptr i64 %t10966 to ptr
  %gml10970 = load i32, ptr %gmp10969, align 1, !alias.scope !4, !noalias !3
  %c10971 = zext i32 %gml10968 to i128
  %wp10972 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10971, ptr %wp10972, align 16, !alias.scope !3, !noalias !4
  %c10973 = zext i32 %gml10970 to i128
  %wp10974 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10973, ptr %wp10974, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064fe0 word 0x1e238845
  call void @rt_fp_op_s(ptr %c, i32 4, i32 5, i32 2, i32 3)
  ; @pc 0x800064fe4 word 0xbd40cac4
  %r10975.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10975 = load i64, ptr %r10975.p, align 8, !alias.scope !3, !noalias !4
  %t10976 = add i64 %r10975, 200
  %gmp10977 = inttoptr i64 %t10976 to ptr
  %gml10978 = load i32, ptr %gmp10977, align 1, !alias.scope !4, !noalias !3
  %c10979 = zext i32 %gml10978 to i128
  %wp10980 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10979, ptr %wp10980, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064fe8 word 0xbd4002e6
  %r10981.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10981 = load i64, ptr %r10981.p, align 8, !alias.scope !3, !noalias !4
  %gmp10982 = inttoptr i64 %r10981 to ptr
  %gml10983 = load i32, ptr %gmp10982, align 1, !alias.scope !4, !noalias !3
  %c10984 = zext i32 %gml10983 to i128
  %wp10985 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c10984, ptr %wp10985, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064fec word 0x1f011405
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 5, i32 0, i32 1, i32 5)
  ; @pc 0x800064ff0 word 0x1e2188c1
  call void @rt_fp_op_s(ptr %c, i32 4, i32 1, i32 6, i32 1)
  ; @pc 0x800064ff4 word 0x1f040441
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 1, i32 2, i32 4, i32 1)
  ; @pc 0x800064ff8 word 0x1e248800
  call void @rt_fp_op_s(ptr %c, i32 4, i32 0, i32 0, i32 4)
  ; @pc 0x800064ffc word 0x1f0300c0
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 6, i32 3, i32 0)
  ; @pc 0x800065000 word 0x2d9e0405
  %r10986.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10986 = load i64, ptr %r10986.p, align 8, !alias.scope !3, !noalias !4
  %t10987 = add i64 %r10986, 240
  %t10988 = add i64 %t10987, 4
  %r10989.p = getelementptr inbounds i8, ptr %c, i64 592
  %r10989 = load i128, ptr %r10989.p, align 16, !alias.scope !3, !noalias !4
  %r10990.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10990 = load i128, ptr %r10990.p, align 16, !alias.scope !3, !noalias !4
  %c10991 = trunc i128 %r10989 to i32
  %c10992 = trunc i128 %r10990 to i32
  %gmp10993 = inttoptr i64 %t10987 to ptr
  store i32 %c10991, ptr %gmp10993, align 1, !alias.scope !4, !noalias !3
  %gmp10994 = inttoptr i64 %t10988 to ptr
  store i32 %c10992, ptr %gmp10994, align 1, !alias.scope !4, !noalias !3
  %wp10995 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10987, ptr %wp10995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065004 word 0xbd000800
  %r10996.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10996 = load i64, ptr %r10996.p, align 8, !alias.scope !3, !noalias !4
  %t10997 = add i64 %r10996, 8
  %r10998.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10998 = load i128, ptr %r10998.p, align 16, !alias.scope !3, !noalias !4
  %c10999 = trunc i128 %r10998 to i32
  %gmp11000 = inttoptr i64 %t10997 to ptr
  store i32 %c10999, ptr %gmp11000, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800065008 word 0x9410a01f
  %wp11001 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152076, ptr %wp11001, align 8, !alias.scope !3, !noalias !4
  call void @f_80048d084(ptr %c)
  br label %L_80006500c
L_80006500c:
  ; @pc 0x80006500c word 0xf940d2c0
  %r11002.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11002 = load i64, ptr %r11002.p, align 8, !alias.scope !3, !noalias !4
  %t11003 = add i64 %r11002, 416
  %gmp11004 = inttoptr i64 %t11003 to ptr
  %gml11005 = load i64, ptr %gmp11004, align 1, !alias.scope !4, !noalias !3
  %wp11006 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml11005, ptr %wp11006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065010 word 0xb4000060
  %r11007.p = getelementptr inbounds i8, ptr %c, i64 0
  %r11007 = load i64, ptr %r11007.p, align 8, !alias.scope !3, !noalias !4
  %cmp11008 = icmp eq i64 %r11007, 0
  br i1 %cmp11008, label %L_80006501c, label %L_800065014_ft
L_80006501c:
  ; @pc 0x80006501c word 0xf9400fe8
  %r11015.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11015 = load i64, ptr %r11015.p, align 8, !alias.scope !3, !noalias !4
  %t11016 = add i64 %r11015, 24
  %gmp11017 = inttoptr i64 %t11016 to ptr
  %gml11018 = load i64, ptr %gmp11017, align 1, !alias.scope !4, !noalias !3
  %wp11019 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11018, ptr %wp11019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065020 word 0xf001b209
  %wp11020 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34417049600, ptr %wp11020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065024 word 0x91030129
  %r11021.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11021 = load i64, ptr %r11021.p, align 8, !alias.scope !3, !noalias !4
  %t11022 = add i64 %r11021, 192
  %wp11023 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t11022, ptr %wp11023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065028 word 0x9101e3e1
  %r11024.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11024 = load i64, ptr %r11024.p, align 8, !alias.scope !3, !noalias !4
  %t11025 = add i64 %r11024, 120
  %wp11026 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t11025, ptr %wp11026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006502c word 0xf95a1917
  %r11027.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11027 = load i64, ptr %r11027.p, align 8, !alias.scope !3, !noalias !4
  %t11028 = add i64 %r11027, 13360
  %gmp11029 = inttoptr i64 %t11028 to ptr
  %gml11030 = load i64, ptr %gmp11029, align 1, !alias.scope !4, !noalias !3
  %wp11031 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml11030, ptr %wp11031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065030 word 0xb9400ac8
  %r11032.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11032 = load i64, ptr %r11032.p, align 8, !alias.scope !3, !noalias !4
  %t11033 = add i64 %r11032, 8
  %gmp11034 = inttoptr i64 %t11033 to ptr
  %gml11035 = load i32, ptr %gmp11034, align 1, !alias.scope !4, !noalias !3
  %c11036 = zext i32 %gml11035 to i64
  %wp11037 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11036, ptr %wp11037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065034 word 0xf8687928
  %r11038.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11038 = load i64, ptr %r11038.p, align 8, !alias.scope !3, !noalias !4
  %r11039.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11039 = load i64, ptr %r11039.p, align 8, !alias.scope !3, !noalias !4
  %t11040 = shl i64 %r11039, 3
  %t11041 = add i64 %r11038, %t11040
  %gmp11042 = inttoptr i64 %t11041 to ptr
  %gml11043 = load i64, ptr %gmp11042, align 1, !alias.scope !4, !noalias !3
  %wp11044 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11043, ptr %wp11044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065038 word 0xaa1703e0
  %r11045.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11045 = load i64, ptr %r11045.p, align 8, !alias.scope !3, !noalias !4
  %t11046 = or i64 0, %r11045
  %wp11047 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11046, ptr %wp11047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006503c word 0xf9003fe8
  %r11048.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11048 = load i64, ptr %r11048.p, align 8, !alias.scope !3, !noalias !4
  %t11049 = add i64 %r11048, 120
  %r11050.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11050 = load i64, ptr %r11050.p, align 8, !alias.scope !3, !noalias !4
  %gmp11051 = inttoptr i64 %t11049 to ptr
  store i64 %r11050, ptr %gmp11051, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800065040 word 0x942b862c
  %wp11052 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152132, ptr %wp11052, align 8, !alias.scope !3, !noalias !4
  call void @f_800b468f0(ptr %c)
  ; @pc 0x800065044 word 0x3100041f
  %r11053.p = getelementptr inbounds i8, ptr %c, i64 0
  %r11053 = load i64, ptr %r11053.p, align 8, !alias.scope !3, !noalias !4
  %c11054 = trunc i64 %r11053 to i32
  %t11055 = add i32 %c11054, 1
  %fn11056 = icmp slt i32 %t11055, 0
  %fz11057 = icmp eq i32 %t11055, 0
  %fc11058 = icmp ult i32 %t11055, %c11054
  %fx111059 = xor i32 %c11054, %t11055
  %fx211060 = xor i32 1, %t11055
  %fva11061 = and i32 %fx111059, %fx211060
  %fv11062 = icmp slt i32 %fva11061, 0
  %nz11063 = zext i1 %fn11056 to i64
  %zz11064 = zext i1 %fz11057 to i64
  %cz11065 = zext i1 %fc11058 to i64
  %vz11066 = zext i1 %fv11062 to i64
  %ns11067 = shl i64 %nz11063, 31
  %zs11068 = shl i64 %zz11064, 30
  %cs11069 = shl i64 %cz11065, 29
  %vs11070 = shl i64 %vz11066, 28
  %nzor11071 = or i64 %ns11067, %zs11068
  %cvor11072 = or i64 %cs11069, %vs11070
  %nzcv11073 = or i64 %nzor11071, %cvor11072
  %wp11074 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv11073, ptr %wp11074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065048 word 0x54000120
  %r11075.p = getelementptr inbounds i8, ptr %c, i64 272
  %r11075 = load i64, ptr %r11075.p, align 8, !alias.scope !3, !noalias !4
  %fsh11077 = lshr i64 %r11075, 30
  %cond11076 = trunc i64 %fsh11077 to i1
  br i1 %cond11076, label %L_80006506c, label %L_80006504c_ft
L_80006506c:
  ; @pc 0x80006506c word 0x39458ac8
  %r11113.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11113 = load i64, ptr %r11113.p, align 8, !alias.scope !3, !noalias !4
  %t11114 = add i64 %r11113, 354
  %gmp11115 = inttoptr i64 %t11114 to ptr
  %gml11116 = load i8, ptr %gmp11115, align 1, !alias.scope !4, !noalias !3
  %c11117 = zext i8 %gml11116 to i64
  %wp11118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11117, ptr %wp11118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065070 word 0x52800029
  %c11119 = zext i32 1 to i64
  %wp11120 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11119, ptr %wp11120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065074 word 0x910462d7
  %r11121.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11121 = load i64, ptr %r11121.p, align 8, !alias.scope !3, !noalias !4
  %t11122 = add i64 %r11121, 280
  %wp11123 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t11122, ptr %wp11123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065078 word 0xaa1703e0
  %r11124.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11124 = load i64, ptr %r11124.p, align 8, !alias.scope !3, !noalias !4
  %t11125 = or i64 0, %r11124
  %wp11126 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11125, ptr %wp11126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006507c word 0x4b481121
  %r11127.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11127 = load i64, ptr %r11127.p, align 8, !alias.scope !3, !noalias !4
  %c11128 = trunc i64 %r11127 to i32
  %r11129.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11129 = load i64, ptr %r11129.p, align 8, !alias.scope !3, !noalias !4
  %c11130 = trunc i64 %r11129 to i32
  %t11131 = lshr i32 %c11130, 4
  %t11132 = sub i32 %c11128, %t11131
  %c11133 = zext i32 %t11132 to i64
  %wp11134 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11133, ptr %wp11134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065080 word 0x94795a7b
  %wp11135 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152196, ptr %wp11135, align 8, !alias.scope !3, !noalias !4
  call void @f_801ebba6c(ptr %c)
  ; @pc 0x800065084 word 0xaa1703e0
  %r11136.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11136 = load i64, ptr %r11136.p, align 8, !alias.scope !3, !noalias !4
  %t11137 = or i64 0, %r11136
  %wp11138 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11137, ptr %wp11138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065088 word 0x2a1f03e1
  %t11139 = or i32 0, 0
  %c11140 = zext i32 %t11139 to i64
  %wp11141 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11140, ptr %wp11141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006508c word 0xaa1403e2
  %r11142.p = getelementptr inbounds i8, ptr %c, i64 160
  %r11142 = load i64, ptr %r11142.p, align 8, !alias.scope !3, !noalias !4
  %t11143 = or i64 0, %r11142
  %wp11144 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11143, ptr %wp11144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065090 word 0x2a1f03e3
  %t11145 = or i32 0, 0
  %c11146 = zext i32 %t11145 to i64
  %wp11147 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11146, ptr %wp11147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065094 word 0x2a1f03e4
  %t11148 = or i32 0, 0
  %c11149 = zext i32 %t11148 to i64
  %wp11150 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11149, ptr %wp11150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065098 word 0x9418ad8c
  %wp11151 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152220, ptr %wp11151, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x80006509c word 0xaa1703e0
  %r11152.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11152 = load i64, ptr %r11152.p, align 8, !alias.scope !3, !noalias !4
  %t11153 = or i64 0, %r11152
  %wp11154 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11153, ptr %wp11154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650a0 word 0x52800021
  %c11155 = zext i32 1 to i64
  %wp11156 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11155, ptr %wp11156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650a4 word 0xaa1503e2
  %r11157.p = getelementptr inbounds i8, ptr %c, i64 168
  %r11157 = load i64, ptr %r11157.p, align 8, !alias.scope !3, !noalias !4
  %t11158 = or i64 0, %r11157
  %wp11159 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11158, ptr %wp11159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650a8 word 0x2a1f03e3
  %t11160 = or i32 0, 0
  %c11161 = zext i32 %t11160 to i64
  %wp11162 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11161, ptr %wp11162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650ac word 0x2a1f03e4
  %t11163 = or i32 0, 0
  %c11164 = zext i32 %t11163 to i64
  %wp11165 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11164, ptr %wp11165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650b0 word 0x9418ad86
  %wp11166 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152244, ptr %wp11166, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x8000650b4 word 0xa943a2c9
  %r11167.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11167 = load i64, ptr %r11167.p, align 8, !alias.scope !3, !noalias !4
  %t11168 = add i64 %r11167, 56
  %t11169 = add i64 %t11168, 8
  %gmp11170 = inttoptr i64 %t11168 to ptr
  %gml11171 = load i64, ptr %gmp11170, align 1, !alias.scope !4, !noalias !3
  %gmp11172 = inttoptr i64 %t11169 to ptr
  %gml11173 = load i64, ptr %gmp11172, align 1, !alias.scope !4, !noalias !3
  %wp11174 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml11171, ptr %wp11174, align 8, !alias.scope !3, !noalias !4
  %wp11175 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11173, ptr %wp11175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650b8 word 0x1e269009
  %wp11176 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 1101004800, ptr %wp11176, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000650bc word 0x9101e3e2
  %r11177.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11177 = load i64, ptr %r11177.p, align 8, !alias.scope !3, !noalias !4
  %t11178 = add i64 %r11177, 120
  %wp11179 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11178, ptr %wp11179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650c0 word 0xaa1703e0
  %r11180.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11180 = load i64, ptr %r11180.p, align 8, !alias.scope !3, !noalias !4
  %t11181 = or i64 0, %r11180
  %wp11182 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11181, ptr %wp11182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650c4 word 0x52800041
  %c11183 = zext i32 2 to i64
  %wp11184 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11183, ptr %wp11184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650c8 word 0x2a1f03e3
  %t11185 = or i32 0, 0
  %c11186 = zext i32 %t11185 to i64
  %wp11187 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11186, ptr %wp11187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650cc word 0x2a1f03e4
  %t11188 = or i32 0, 0
  %c11189 = zext i32 %t11188 to i64
  %wp11190 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11189, ptr %wp11190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650d0 word 0xa907a3e9
  %r11191.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11191 = load i64, ptr %r11191.p, align 8, !alias.scope !3, !noalias !4
  %t11192 = add i64 %r11191, 120
  %t11193 = add i64 %t11192, 8
  %r11194.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11194 = load i64, ptr %r11194.p, align 8, !alias.scope !3, !noalias !4
  %gmp11195 = inttoptr i64 %t11192 to ptr
  store i64 %r11194, ptr %gmp11195, align 1, !alias.scope !4, !noalias !3
  %r11196.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11196 = load i64, ptr %r11196.p, align 8, !alias.scope !3, !noalias !4
  %gmp11197 = inttoptr i64 %t11193 to ptr
  store i64 %r11196, ptr %gmp11197, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000650d4 word 0x52a86908
  %c11198 = zext i32 1128792064 to i64
  %wp11199 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11198, ptr %wp11199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650d8 word 0xbd4087e0
  %r11200.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11200 = load i64, ptr %r11200.p, align 8, !alias.scope !3, !noalias !4
  %t11201 = add i64 %r11200, 132
  %gmp11202 = inttoptr i64 %t11201 to ptr
  %gml11203 = load i32, ptr %gmp11202, align 1, !alias.scope !4, !noalias !3
  %c11204 = zext i32 %gml11203 to i128
  %wp11205 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c11204, ptr %wp11205, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000650dc word 0x1e270108
  %r11206.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11206 = load i64, ptr %r11206.p, align 8, !alias.scope !3, !noalias !4
  %c11207 = trunc i64 %r11206 to i32
  %c11208 = zext i32 %c11207 to i128
  %wp11209 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c11208, ptr %wp11209, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000650e0 word 0x1e291801
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 0, i32 9)
  ; @pc 0x8000650e4 word 0x1e210822
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 1, i32 1)
  ; @pc 0x8000650e8 word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  ; @pc 0x8000650ec word 0x1f080020
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0)
  ; @pc 0x8000650f0 word 0xbd0087e0
  %r11210.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11210 = load i64, ptr %r11210.p, align 8, !alias.scope !3, !noalias !4
  %t11211 = add i64 %r11210, 132
  %r11212.p = getelementptr inbounds i8, ptr %c, i64 512
  %r11212 = load i128, ptr %r11212.p, align 16, !alias.scope !3, !noalias !4
  %c11213 = trunc i128 %r11212 to i32
  %gmp11214 = inttoptr i64 %t11211 to ptr
  store i32 %c11213, ptr %gmp11214, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000650f4 word 0x9418ad75
  %wp11215 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152312, ptr %wp11215, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x8000650f8 word 0xa944a2c9
  %r11216.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11216 = load i64, ptr %r11216.p, align 8, !alias.scope !3, !noalias !4
  %t11217 = add i64 %r11216, 72
  %t11218 = add i64 %t11217, 8
  %gmp11219 = inttoptr i64 %t11217 to ptr
  %gml11220 = load i64, ptr %gmp11219, align 1, !alias.scope !4, !noalias !3
  %gmp11221 = inttoptr i64 %t11218 to ptr
  %gml11222 = load i64, ptr %gmp11221, align 1, !alias.scope !4, !noalias !3
  %wp11223 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml11220, ptr %wp11223, align 8, !alias.scope !3, !noalias !4
  %wp11224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11222, ptr %wp11224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000650fc word 0x9101e3e2
  %r11225.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11225 = load i64, ptr %r11225.p, align 8, !alias.scope !3, !noalias !4
  %t11226 = add i64 %r11225, 120
  %wp11227 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11226, ptr %wp11227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065100 word 0xaa1703e0
  %r11228.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11228 = load i64, ptr %r11228.p, align 8, !alias.scope !3, !noalias !4
  %t11229 = or i64 0, %r11228
  %wp11230 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11229, ptr %wp11230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065104 word 0x52800041
  %c11231 = zext i32 2 to i64
  %wp11232 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11231, ptr %wp11232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065108 word 0x52800023
  %c11233 = zext i32 1 to i64
  %wp11234 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11233, ptr %wp11234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006510c word 0x2a1f03e4
  %t11235 = or i32 0, 0
  %c11236 = zext i32 %t11235 to i64
  %wp11237 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11236, ptr %wp11237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065110 word 0xa907a3e9
  %r11238.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11238 = load i64, ptr %r11238.p, align 8, !alias.scope !3, !noalias !4
  %t11239 = add i64 %r11238, 120
  %t11240 = add i64 %t11239, 8
  %r11241.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11241 = load i64, ptr %r11241.p, align 8, !alias.scope !3, !noalias !4
  %gmp11242 = inttoptr i64 %t11239 to ptr
  store i64 %r11241, ptr %gmp11242, align 1, !alias.scope !4, !noalias !3
  %r11243.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11243 = load i64, ptr %r11243.p, align 8, !alias.scope !3, !noalias !4
  %gmp11244 = inttoptr i64 %t11240 to ptr
  store i64 %r11243, ptr %gmp11244, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800065114 word 0xbd4087e0
  %r11245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11245 = load i64, ptr %r11245.p, align 8, !alias.scope !3, !noalias !4
  %t11246 = add i64 %r11245, 132
  %gmp11247 = inttoptr i64 %t11246 to ptr
  %gml11248 = load i32, ptr %gmp11247, align 1, !alias.scope !4, !noalias !3
  %c11249 = zext i32 %gml11248 to i128
  %wp11250 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c11249, ptr %wp11250, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800065118 word 0x1e291801
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 0, i32 9)
  ; @pc 0x80006511c word 0x1e210822
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 1, i32 1)
  ; @pc 0x800065120 word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  ; @pc 0x800065124 word 0x1f080023
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 3, i32 1, i32 8, i32 0)
  ; @pc 0x800065128 word 0xbd0087e3
  %r11251.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11251 = load i64, ptr %r11251.p, align 8, !alias.scope !3, !noalias !4
  %t11252 = add i64 %r11251, 132
  %r11253.p = getelementptr inbounds i8, ptr %c, i64 560
  %r11253 = load i128, ptr %r11253.p, align 16, !alias.scope !3, !noalias !4
  %c11254 = trunc i128 %r11253 to i32
  %gmp11255 = inttoptr i64 %t11252 to ptr
  store i32 %c11254, ptr %gmp11255, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006512c word 0x9418ad67
  %wp11256 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152368, ptr %wp11256, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800065130 word 0xa945a2c9
  %r11257.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11257 = load i64, ptr %r11257.p, align 8, !alias.scope !3, !noalias !4
  %t11258 = add i64 %r11257, 88
  %t11259 = add i64 %t11258, 8
  %gmp11260 = inttoptr i64 %t11258 to ptr
  %gml11261 = load i64, ptr %gmp11260, align 1, !alias.scope !4, !noalias !3
  %gmp11262 = inttoptr i64 %t11259 to ptr
  %gml11263 = load i64, ptr %gmp11262, align 1, !alias.scope !4, !noalias !3
  %wp11264 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml11261, ptr %wp11264, align 8, !alias.scope !3, !noalias !4
  %wp11265 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11263, ptr %wp11265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065134 word 0x9101e3e2
  %r11266.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11266 = load i64, ptr %r11266.p, align 8, !alias.scope !3, !noalias !4
  %t11267 = add i64 %r11266, 120
  %wp11268 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11267, ptr %wp11268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065138 word 0xaa1703e0
  %r11269.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11269 = load i64, ptr %r11269.p, align 8, !alias.scope !3, !noalias !4
  %t11270 = or i64 0, %r11269
  %wp11271 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11270, ptr %wp11271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006513c word 0x52800041
  %c11272 = zext i32 2 to i64
  %wp11273 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11272, ptr %wp11273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065140 word 0x52800043
  %c11274 = zext i32 2 to i64
  %wp11275 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11274, ptr %wp11275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065144 word 0x2a1f03e4
  %t11276 = or i32 0, 0
  %c11277 = zext i32 %t11276 to i64
  %wp11278 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11277, ptr %wp11278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065148 word 0xa907a3e9
  %r11279.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11279 = load i64, ptr %r11279.p, align 8, !alias.scope !3, !noalias !4
  %t11280 = add i64 %r11279, 120
  %t11281 = add i64 %t11280, 8
  %r11282.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11282 = load i64, ptr %r11282.p, align 8, !alias.scope !3, !noalias !4
  %gmp11283 = inttoptr i64 %t11280 to ptr
  store i64 %r11282, ptr %gmp11283, align 1, !alias.scope !4, !noalias !3
  %r11284.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11284 = load i64, ptr %r11284.p, align 8, !alias.scope !3, !noalias !4
  %gmp11285 = inttoptr i64 %t11281 to ptr
  store i64 %r11284, ptr %gmp11285, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006514c word 0xbd4087e0
  %r11286.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11286 = load i64, ptr %r11286.p, align 8, !alias.scope !3, !noalias !4
  %t11287 = add i64 %r11286, 132
  %gmp11288 = inttoptr i64 %t11287 to ptr
  %gml11289 = load i32, ptr %gmp11288, align 1, !alias.scope !4, !noalias !3
  %c11290 = zext i32 %gml11289 to i128
  %wp11291 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c11290, ptr %wp11291, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800065150 word 0x1e291801
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 0, i32 9)
  ; @pc 0x800065154 word 0x1e210822
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 1, i32 1)
  ; @pc 0x800065158 word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  ; @pc 0x80006515c word 0x1f080020
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0)
  ; @pc 0x800065160 word 0xbd0087e0
  %r11292.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11292 = load i64, ptr %r11292.p, align 8, !alias.scope !3, !noalias !4
  %t11293 = add i64 %r11292, 132
  %r11294.p = getelementptr inbounds i8, ptr %c, i64 512
  %r11294 = load i128, ptr %r11294.p, align 16, !alias.scope !3, !noalias !4
  %c11295 = trunc i128 %r11294 to i32
  %gmp11296 = inttoptr i64 %t11293 to ptr
  store i32 %c11295, ptr %gmp11296, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800065164 word 0x9418ad59
  %wp11297 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152424, ptr %wp11297, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800065168 word 0x9102f2c2
  %r11298.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11298 = load i64, ptr %r11298.p, align 8, !alias.scope !3, !noalias !4
  %t11299 = add i64 %r11298, 188
  %wp11300 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11299, ptr %wp11300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006516c word 0xaa1703e0
  %r11301.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11301 = load i64, ptr %r11301.p, align 8, !alias.scope !3, !noalias !4
  %t11302 = or i64 0, %r11301
  %wp11303 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11302, ptr %wp11303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065170 word 0x52800061
  %c11304 = zext i32 3 to i64
  %wp11305 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11304, ptr %wp11305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065174 word 0x2a1f03e3
  %t11306 = or i32 0, 0
  %c11307 = zext i32 %t11306 to i64
  %wp11308 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11307, ptr %wp11308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065178 word 0x2a1f03e4
  %t11309 = or i32 0, 0
  %c11310 = zext i32 %t11309 to i64
  %wp11311 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11310, ptr %wp11311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006517c word 0x947a03f6
  %wp11312 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152448, ptr %wp11312, align 8, !alias.scope !3, !noalias !4
  call void @f_801ee6154(ptr %c)
  ; @pc 0x800065180 word 0x9103c2c2
  %r11313.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11313 = load i64, ptr %r11313.p, align 8, !alias.scope !3, !noalias !4
  %t11314 = add i64 %r11313, 240
  %wp11315 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11314, ptr %wp11315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065184 word 0xaa1703e0
  %r11316.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11316 = load i64, ptr %r11316.p, align 8, !alias.scope !3, !noalias !4
  %t11317 = or i64 0, %r11316
  %wp11318 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11317, ptr %wp11318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065188 word 0x52800081
  %c11319 = zext i32 4 to i64
  %wp11320 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11319, ptr %wp11320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006518c word 0x2a1f03e3
  %t11321 = or i32 0, 0
  %c11322 = zext i32 %t11321 to i64
  %wp11323 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11322, ptr %wp11323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065190 word 0x2a1f03e4
  %t11324 = or i32 0, 0
  %c11325 = zext i32 %t11324 to i64
  %wp11326 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11325, ptr %wp11326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065194 word 0x947a03f0
  %wp11327 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152472, ptr %wp11327, align 8, !alias.scope !3, !noalias !4
  call void @f_801ee6154(ptr %c)
  ; @pc 0x800065198 word 0x9103f2c2
  %r11328.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11328 = load i64, ptr %r11328.p, align 8, !alias.scope !3, !noalias !4
  %t11329 = add i64 %r11328, 252
  %wp11330 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11329, ptr %wp11330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006519c word 0x528000a1
  %c11331 = zext i32 5 to i64
  %wp11332 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11331, ptr %wp11332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651a0 word 0xaa1703e0
  %r11333.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11333 = load i64, ptr %r11333.p, align 8, !alias.scope !3, !noalias !4
  %t11334 = or i64 0, %r11333
  %wp11335 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11334, ptr %wp11335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651a4 word 0x2a1f03e3
  %t11336 = or i32 0, 0
  %c11337 = zext i32 %t11336 to i64
  %wp11338 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11337, ptr %wp11338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651a8 word 0x2a1f03e4
  %t11339 = or i32 0, 0
  %c11340 = zext i32 %t11339 to i64
  %wp11341 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11340, ptr %wp11341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651ac word 0x947a03ea
  %wp11342 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152496, ptr %wp11342, align 8, !alias.scope !3, !noalias !4
  call void @f_801ee6154(ptr %c)
  ; @pc 0x8000651b0 word 0x52a85908
  %c11343 = zext i32 1120403456 to i64
  %wp11344 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11343, ptr %wp11344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651b4 word 0xbd410ac0
  %r11345.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11345 = load i64, ptr %r11345.p, align 8, !alias.scope !3, !noalias !4
  %t11346 = add i64 %r11345, 264
  %gmp11347 = inttoptr i64 %t11346 to ptr
  %gml11348 = load i32, ptr %gmp11347, align 1, !alias.scope !4, !noalias !3
  %c11349 = zext i32 %gml11348 to i128
  %wp11350 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c11349, ptr %wp11350, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651b8 word 0x9101e3e2
  %r11351.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11351 = load i64, ptr %r11351.p, align 8, !alias.scope !3, !noalias !4
  %t11352 = add i64 %r11351, 120
  %wp11353 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t11352, ptr %wp11353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651bc word 0x1e270101
  %r11354.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11354 = load i64, ptr %r11354.p, align 8, !alias.scope !3, !noalias !4
  %c11355 = trunc i64 %r11354 to i32
  %c11356 = zext i32 %c11355 to i128
  %wp11357 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c11356, ptr %wp11357, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651c0 word 0x52a872c8
  %c11358 = zext i32 1133903872 to i64
  %wp11359 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11358, ptr %wp11359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651c4 word 0xaa1703e0
  %r11360.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11360 = load i64, ptr %r11360.p, align 8, !alias.scope !3, !noalias !4
  %t11361 = or i64 0, %r11360
  %wp11362 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11361, ptr %wp11362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651c8 word 0x528000c1
  %c11363 = zext i32 6 to i64
  %wp11364 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11363, ptr %wp11364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651cc word 0x2a1f03e3
  %t11365 = or i32 0, 0
  %c11366 = zext i32 %t11365 to i64
  %wp11367 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c11366, ptr %wp11367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651d0 word 0x1e211800
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 0, i32 1)
  ; @pc 0x8000651d4 word 0xbd410ec1
  %r11368.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11368 = load i64, ptr %r11368.p, align 8, !alias.scope !3, !noalias !4
  %t11369 = add i64 %r11368, 268
  %gmp11370 = inttoptr i64 %t11369 to ptr
  %gml11371 = load i32, ptr %gmp11370, align 1, !alias.scope !4, !noalias !3
  %c11372 = zext i32 %gml11371 to i128
  %wp11373 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c11372, ptr %wp11373, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651d8 word 0x2a1f03e4
  %t11374 = or i32 0, 0
  %c11375 = zext i32 %t11374 to i64
  %wp11376 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c11375, ptr %wp11376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651dc word 0x1e281821
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 1, i32 8)
  ; @pc 0x8000651e0 word 0x2d0f07e0
  %r11377.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11377 = load i64, ptr %r11377.p, align 8, !alias.scope !3, !noalias !4
  %t11378 = add i64 %r11377, 120
  %t11379 = add i64 %t11378, 4
  %r11380.p = getelementptr inbounds i8, ptr %c, i64 512
  %r11380 = load i128, ptr %r11380.p, align 16, !alias.scope !3, !noalias !4
  %r11381.p = getelementptr inbounds i8, ptr %c, i64 528
  %r11381 = load i128, ptr %r11381.p, align 16, !alias.scope !3, !noalias !4
  %c11382 = trunc i128 %r11380 to i32
  %c11383 = trunc i128 %r11381 to i32
  %gmp11384 = inttoptr i64 %t11378 to ptr
  store i32 %c11382, ptr %gmp11384, align 1, !alias.scope !4, !noalias !3
  %gmp11385 = inttoptr i64 %t11379 to ptr
  store i32 %c11383, ptr %gmp11385, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000651e4 word 0xbd4112c0
  %r11386.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11386 = load i64, ptr %r11386.p, align 8, !alias.scope !3, !noalias !4
  %t11387 = add i64 %r11386, 272
  %gmp11388 = inttoptr i64 %t11387 to ptr
  %gml11389 = load i32, ptr %gmp11388, align 1, !alias.scope !4, !noalias !3
  %c11390 = zext i32 %gml11389 to i128
  %wp11391 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c11390, ptr %wp11391, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651e8 word 0x1e270101
  %r11392.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11392 = load i64, ptr %r11392.p, align 8, !alias.scope !3, !noalias !4
  %c11393 = trunc i64 %r11392 to i32
  %c11394 = zext i32 %c11393 to i128
  %wp11395 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c11394, ptr %wp11395, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651ec word 0x52a88908
  %c11396 = zext i32 1145569280 to i64
  %wp11397 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11396, ptr %wp11397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000651f0 word 0x1e270102
  %r11398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11398 = load i64, ptr %r11398.p, align 8, !alias.scope !3, !noalias !4
  %c11399 = trunc i64 %r11398 to i32
  %c11400 = zext i32 %c11399 to i128
  %wp11401 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c11400, ptr %wp11401, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651f4 word 0x1e211800
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 0, i32 1)
  ; @pc 0x8000651f8 word 0xbd4116c1
  %r11402.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11402 = load i64, ptr %r11402.p, align 8, !alias.scope !3, !noalias !4
  %t11403 = add i64 %r11402, 276
  %gmp11404 = inttoptr i64 %t11403 to ptr
  %gml11405 = load i32, ptr %gmp11404, align 1, !alias.scope !4, !noalias !3
  %c11406 = zext i32 %gml11405 to i128
  %wp11407 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c11406, ptr %wp11407, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000651fc word 0x1e221821
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 1, i32 2)
  ; @pc 0x800065200 word 0x2d1007e0
  %r11408.p = getelementptr inbounds i8, ptr %c, i64 256
  %r11408 = load i64, ptr %r11408.p, align 8, !alias.scope !3, !noalias !4
  %t11409 = add i64 %r11408, 128
  %t11410 = add i64 %t11409, 4
  %r11411.p = getelementptr inbounds i8, ptr %c, i64 512
  %r11411 = load i128, ptr %r11411.p, align 16, !alias.scope !3, !noalias !4
  %r11412.p = getelementptr inbounds i8, ptr %c, i64 528
  %r11412 = load i128, ptr %r11412.p, align 16, !alias.scope !3, !noalias !4
  %c11413 = trunc i128 %r11411 to i32
  %c11414 = trunc i128 %r11412 to i32
  %gmp11415 = inttoptr i64 %t11409 to ptr
  store i32 %c11413, ptr %gmp11415, align 1, !alias.scope !4, !noalias !3
  %gmp11416 = inttoptr i64 %t11410 to ptr
  store i32 %c11414, ptr %gmp11416, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800065204 word 0x9418ad31
  %wp11417 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152584, ptr %wp11417, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800065208 word 0xaa1703e0
  %r11418.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11418 = load i64, ptr %r11418.p, align 8, !alias.scope !3, !noalias !4
  %t11419 = or i64 0, %r11418
  %wp11420 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11419, ptr %wp11420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006520c word 0x2a1f03e1
  %t11421 = or i32 0, 0
  %c11422 = zext i32 %t11421 to i64
  %wp11423 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11422, ptr %wp11423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065210 word 0x943027fc
  %wp11424 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152596, ptr %wp11424, align 8, !alias.scope !3, !noalias !4
  call void @f_800c6f200(ptr %c)
  ; @pc 0x800065214 word 0x17fff78c
  br label %L_800063044
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34360143260, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_800062d9c
L_800062dec_ft:
  ; @pc 0x800062dec word 0xf9002ff4
  %r128.p = getelementptr inbounds i8, ptr %c, i64 256
  %r128 = load i64, ptr %r128.p, align 8, !alias.scope !3, !noalias !4
  %t129 = add i64 %r128, 88
  %r130.p = getelementptr inbounds i8, ptr %c, i64 160
  %r130 = load i64, ptr %r130.p, align 8, !alias.scope !3, !noalias !4
  %gmp131 = inttoptr i64 %t129 to ptr
  store i64 %r130, ptr %gmp131, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800062df0 word 0xb9801eb8
  %r132.p = getelementptr inbounds i8, ptr %c, i64 168
  %r132 = load i64, ptr %r132.p, align 8, !alias.scope !3, !noalias !4
  %t133 = add i64 %r132, 28
  %gmp134 = inttoptr i64 %t133 to ptr
  %gml135 = load i32, ptr %gmp134, align 1, !alias.scope !4, !noalias !3
  %c136 = sext i32 %gml135 to i64
  %wp137 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c136, ptr %wp137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062df4 word 0xf001c7b4
  %wp138 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062df8 word 0xf9424294
  %r139.p = getelementptr inbounds i8, ptr %c, i64 160
  %r139 = load i64, ptr %r139.p, align 8, !alias.scope !3, !noalias !4
  %t140 = add i64 %r139, 1152
  %gmp141 = inttoptr i64 %t140 to ptr
  %gml142 = load i64, ptr %gmp141, align 1, !alias.scope !4, !noalias !3
  %wp143 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml142, ptr %wp143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062dfc word 0x2a1f03fc
  %t144 = or i32 0, 0
  %c145 = zext i32 %t144 to i64
  %wp146 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c145, ptr %wp146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e00 word 0x2a1f03f9
  %t147 = or i32 0, 0
  %c148 = zext i32 %t147 to i64
  %wp149 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c148, ptr %wp149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e04 word 0x9000219a
  %wp150 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34364530688, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e08 word 0x9119235a
  %r151.p = getelementptr inbounds i8, ptr %c, i64 208
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %t152 = add i64 %r151, 1608
  %wp153 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e0c word 0x52800035
  %c154 = zext i32 1 to i64
  %wp155 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c154, ptr %wp155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e10 word 0xb000219b
  %wp156 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34364534784, ptr %wp156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e14 word 0x9101b37b
  %r157.p = getelementptr inbounds i8, ptr %c, i64 216
  %r157 = load i64, ptr %r157.p, align 8, !alias.scope !3, !noalias !4
  %t158 = add i64 %r157, 108
  %wp159 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t158, ptr %wp159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e18 word 0xcb1803f6
  %r160.p = getelementptr inbounds i8, ptr %c, i64 192
  %r160 = load i64, ptr %r160.p, align 8, !alias.scope !3, !noalias !4
  %t161 = sub i64 0, %r160
  %wp162 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t161, ptr %wp162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e1c word 0xcb180113
  %r163.p = getelementptr inbounds i8, ptr %c, i64 64
  %r163 = load i64, ptr %r163.p, align 8, !alias.scope !3, !noalias !4
  %r164.p = getelementptr inbounds i8, ptr %c, i64 192
  %r164 = load i64, ptr %r164.p, align 8, !alias.scope !3, !noalias !4
  %t165 = sub i64 %r163, %r164
  %wp166 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t165, ptr %wp166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e20 word 0xcb180137
  %r167.p = getelementptr inbounds i8, ptr %c, i64 72
  %r167 = load i64, ptr %r167.p, align 8, !alias.scope !3, !noalias !4
  %r168.p = getelementptr inbounds i8, ptr %c, i64 192
  %r168 = load i64, ptr %r168.p, align 8, !alias.scope !3, !noalias !4
  %t169 = sub i64 %r167, %r168
  %wp170 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t169, ptr %wp170, align 8, !alias.scope !3, !noalias !4
  br label %L_800062e24
L_800062e38_ft:
  ; @pc 0x800062e38 word 0xeb14011f
  %r209.p = getelementptr inbounds i8, ptr %c, i64 64
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %r210.p = getelementptr inbounds i8, ptr %c, i64 160
  %r210 = load i64, ptr %r210.p, align 8, !alias.scope !3, !noalias !4
  %t211 = sub i64 %r209, %r210
  %fn212 = icmp slt i64 %t211, 0
  %fz213 = icmp eq i64 %t211, 0
  %fc214 = icmp uge i64 %r209, %r210
  %fx1215 = xor i64 %r209, %r210
  %fx2216 = xor i64 %r209, %t211
  %fva217 = and i64 %fx1215, %fx2216
  %fv218 = icmp slt i64 %fva217, 0
  %nz219 = zext i1 %fn212 to i64
  %zz220 = zext i1 %fz213 to i64
  %cz221 = zext i1 %fc214 to i64
  %vz222 = zext i1 %fv218 to i64
  %ns223 = shl i64 %nz219, 31
  %zs224 = shl i64 %zz220, 30
  %cs225 = shl i64 %cz221, 29
  %vs226 = shl i64 %vz222, 28
  %nzor227 = or i64 %ns223, %zs224
  %cvor228 = or i64 %cs225, %vs226
  %nzcv229 = or i64 %nzor227, %cvor228
  %wp230 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv229, ptr %wp230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e3c word 0x540006e0
  %r231.p = getelementptr inbounds i8, ptr %c, i64 272
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %fsh233 = lshr i64 %r231, 30
  %cond232 = trunc i64 %fsh233 to i1
  br i1 %cond232, label %L_800062f18, label %L_800062e40
L_800062e6c_ft:
  ; @pc 0x800062e6c word 0xf9402ff4
  %r308.p = getelementptr inbounds i8, ptr %c, i64 256
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %t309 = add i64 %r308, 88
  %gmp310 = inttoptr i64 %t309 to ptr
  %gml311 = load i64, ptr %gmp310, align 1, !alias.scope !4, !noalias !3
  %wp312 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml311, ptr %wp312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062e70 word 0xd3607f93
  %r313.p = getelementptr inbounds i8, ptr %c, i64 224
  %r313 = load i64, ptr %r313.p, align 8, !alias.scope !3, !noalias !4
  %ror314 = call i64 @llvm.fshr.i64(i64 %r313, i64 %r313, i64 32)
  %t315 = and i64 %ror314, -4294967296
  %wp316 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t315, ptr %wp316, align 8, !alias.scope !3, !noalias !4
  br label %L_800062e74
L_800062ec0_ft:
  ; @pc 0x800062ec0 word 0xa941aee8
  %r427.p = getelementptr inbounds i8, ptr %c, i64 184
  %r427 = load i64, ptr %r427.p, align 8, !alias.scope !3, !noalias !4
  %t428 = add i64 %r427, 24
  %t429 = add i64 %t428, 8
  %gmp430 = inttoptr i64 %t428 to ptr
  %gml431 = load i64, ptr %gmp430, align 1, !alias.scope !4, !noalias !3
  %gmp432 = inttoptr i64 %t429 to ptr
  %gml433 = load i64, ptr %gmp432, align 1, !alias.scope !4, !noalias !3
  %wp434 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml431, ptr %wp434, align 8, !alias.scope !3, !noalias !4
  %wp435 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml433, ptr %wp435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ec4 word 0x9240016a
  %r436.p = getelementptr inbounds i8, ptr %c, i64 88
  %r436 = load i64, ptr %r436.p, align 8, !alias.scope !3, !noalias !4
  %t437 = and i64 %r436, 1
  %wp438 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t437, ptr %wp438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ec8 word 0xaa08014c
  %r439.p = getelementptr inbounds i8, ptr %c, i64 64
  %r439 = load i64, ptr %r439.p, align 8, !alias.scope !3, !noalias !4
  %r440.p = getelementptr inbounds i8, ptr %c, i64 80
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %t441 = or i64 %r440, %r439
  %wp442 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t441, ptr %wp442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ecc word 0xb400098c
  %r443.p = getelementptr inbounds i8, ptr %c, i64 96
  %r443 = load i64, ptr %r443.p, align 8, !alias.scope !3, !noalias !4
  %cmp444 = icmp eq i64 %r443, 0
  br i1 %cmp444, label %L_800062ffc, label %L_800062ed0_ft
L_800062ed0_ft:
  ; @pc 0x800062ed0 word 0x8b8b0520
  %r445.p = getelementptr inbounds i8, ptr %c, i64 72
  %r445 = load i64, ptr %r445.p, align 8, !alias.scope !3, !noalias !4
  %r446.p = getelementptr inbounds i8, ptr %c, i64 88
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %t447 = ashr i64 %r446, 1
  %t448 = add i64 %r445, %t447
  %wp449 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t448, ptr %wp449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ed4 word 0xb5000d8a
  %r450.p = getelementptr inbounds i8, ptr %c, i64 80
  %r450 = load i64, ptr %r450.p, align 8, !alias.scope !3, !noalias !4
  %cmp451 = icmp ne i64 %r450, 0
  br i1 %cmp451, label %L_800063084, label %L_800062ed8
L_800062ee8_ft:
  ; @pc 0x800062ee8 word 0xd000f3e9
  %wp481 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34392113152, ptr %wp481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062eec word 0x913d2129
  %r482.p = getelementptr inbounds i8, ptr %c, i64 72
  %r482 = load i64, ptr %r482.p, align 8, !alias.scope !3, !noalias !4
  %t483 = add i64 %r482, 3912
  %wp484 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t483, ptr %wp484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ef0 word 0xeb09011f
  %r485.p = getelementptr inbounds i8, ptr %c, i64 64
  %r485 = load i64, ptr %r485.p, align 8, !alias.scope !3, !noalias !4
  %r486.p = getelementptr inbounds i8, ptr %c, i64 72
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %t487 = sub i64 %r485, %r486
  %fn488 = icmp slt i64 %t487, 0
  %fz489 = icmp eq i64 %t487, 0
  %fc490 = icmp uge i64 %r485, %r486
  %fx1491 = xor i64 %r485, %r486
  %fx2492 = xor i64 %r485, %t487
  %fva493 = and i64 %fx1491, %fx2492
  %fv494 = icmp slt i64 %fva493, 0
  %nz495 = zext i1 %fn488 to i64
  %zz496 = zext i1 %fz489 to i64
  %cz497 = zext i1 %fc490 to i64
  %vz498 = zext i1 %fv494 to i64
  %ns499 = shl i64 %nz495, 31
  %zs500 = shl i64 %zz496, 30
  %cs501 = shl i64 %cz497, 29
  %vs502 = shl i64 %vz498, 28
  %nzor503 = or i64 %ns499, %zs500
  %cvor504 = or i64 %cs501, %vs502
  %nzcv505 = or i64 %nzor503, %cvor504
  %wp506 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv505, ptr %wp506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062ef4 word 0x54000b40
  %r507.p = getelementptr inbounds i8, ptr %c, i64 272
  %r507 = load i64, ptr %r507.p, align 8, !alias.scope !3, !noalias !4
  %fsh509 = lshr i64 %r507, 30
  %cond508 = trunc i64 %fsh509 to i1
  br i1 %cond508, label %L_80006305c, label %L_800062ef8_ft
L_800062ef8_ft:
  ; @pc 0x800062ef8 word 0xeb1b011f
  %r510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r510 = load i64, ptr %r510.p, align 8, !alias.scope !3, !noalias !4
  %r511.p = getelementptr inbounds i8, ptr %c, i64 216
  %r511 = load i64, ptr %r511.p, align 8, !alias.scope !3, !noalias !4
  %t512 = sub i64 %r510, %r511
  %fn513 = icmp slt i64 %t512, 0
  %fz514 = icmp eq i64 %t512, 0
  %fc515 = icmp uge i64 %r510, %r511
  %fx1516 = xor i64 %r510, %r511
  %fx2517 = xor i64 %r510, %t512
  %fva518 = and i64 %fx1516, %fx2517
  %fv519 = icmp slt i64 %fva518, 0
  %nz520 = zext i1 %fn513 to i64
  %zz521 = zext i1 %fz514 to i64
  %cz522 = zext i1 %fc515 to i64
  %vz523 = zext i1 %fv519 to i64
  %ns524 = shl i64 %nz520, 31
  %zs525 = shl i64 %zz521, 30
  %cs526 = shl i64 %cz522, 29
  %vs527 = shl i64 %vz523, 28
  %nzor528 = or i64 %ns524, %zs525
  %cvor529 = or i64 %cs526, %vs527
  %nzcv530 = or i64 %nzor528, %cvor529
  %wp531 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062efc word 0x54fffa21
  %r532.p = getelementptr inbounds i8, ptr %c, i64 272
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %fsh534 = lshr i64 %r532, 30
  %ftr535 = trunc i64 %fsh534 to i1
  %cond533 = xor i1 %ftr535, true
  br i1 %cond533, label %L_800062e40, label %L_800062f00_ft
L_800062f00_ft:
  ; @pc 0x800062f00 word 0xf94033e8
  %r536.p = getelementptr inbounds i8, ptr %c, i64 256
  %r536 = load i64, ptr %r536.p, align 8, !alias.scope !3, !noalias !4
  %t537 = add i64 %r536, 96
  %gmp538 = inttoptr i64 %t537 to ptr
  %gml539 = load i64, ptr %gmp538, align 1, !alias.scope !4, !noalias !3
  %wp540 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml539, ptr %wp540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f04 word 0xb9401d08
  %r541.p = getelementptr inbounds i8, ptr %c, i64 64
  %r541 = load i64, ptr %r541.p, align 8, !alias.scope !3, !noalias !4
  %t542 = add i64 %r541, 28
  %gmp543 = inttoptr i64 %t542 to ptr
  %gml544 = load i32, ptr %gmp543, align 1, !alias.scope !4, !noalias !3
  %c545 = zext i32 %gml544 to i64
  %wp546 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c545, ptr %wp546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f08 word 0x35001cc8
  %r547.p = getelementptr inbounds i8, ptr %c, i64 64
  %r547 = load i64, ptr %r547.p, align 8, !alias.scope !3, !noalias !4
  %c548 = trunc i64 %r547 to i32
  %cmp549 = icmp ne i32 %c548, 0
  br i1 %cmp549, label %L_8000632a0, label %L_800062f0c_ft
L_800062f0c_ft:
  ; @pc 0x800062f0c word 0xf94033e1
  %r550.p = getelementptr inbounds i8, ptr %c, i64 256
  %r550 = load i64, ptr %r550.p, align 8, !alias.scope !3, !noalias !4
  %t551 = add i64 %r550, 96
  %gmp552 = inttoptr i64 %t551 to ptr
  %gml553 = load i64, ptr %gmp552, align 1, !alias.scope !4, !noalias !3
  %wp554 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml553, ptr %wp554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f10 word 0x9410c5d1
  %wp555 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143636, ptr %wp555, align 8, !alias.scope !3, !noalias !4
  call void @f_800494654(ptr %c)
  ; @pc 0x800062f14 word 0x14000057
  br label %L_800063070
L_800062f2c_ft:
  ; @pc 0x800062f2c word 0xf9402bea
  %r577.p = getelementptr inbounds i8, ptr %c, i64 256
  %r577 = load i64, ptr %r577.p, align 8, !alias.scope !3, !noalias !4
  %t578 = add i64 %r577, 80
  %gmp579 = inttoptr i64 %t578 to ptr
  %gml580 = load i64, ptr %gmp579, align 1, !alias.scope !4, !noalias !3
  %wp581 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml580, ptr %wp581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f30 word 0xa941ad48
  %r582.p = getelementptr inbounds i8, ptr %c, i64 80
  %r582 = load i64, ptr %r582.p, align 8, !alias.scope !3, !noalias !4
  %t583 = add i64 %r582, 24
  %t584 = add i64 %t583, 8
  %gmp585 = inttoptr i64 %t583 to ptr
  %gml586 = load i64, ptr %gmp585, align 1, !alias.scope !4, !noalias !3
  %gmp587 = inttoptr i64 %t584 to ptr
  %gml588 = load i64, ptr %gmp587, align 1, !alias.scope !4, !noalias !3
  %wp589 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml586, ptr %wp589, align 8, !alias.scope !3, !noalias !4
  %wp590 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml588, ptr %wp590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f34 word 0x9240016a
  %r591.p = getelementptr inbounds i8, ptr %c, i64 88
  %r591 = load i64, ptr %r591.p, align 8, !alias.scope !3, !noalias !4
  %t592 = and i64 %r591, 1
  %wp593 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t592, ptr %wp593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f38 word 0xaa08014c
  %r594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r594 = load i64, ptr %r594.p, align 8, !alias.scope !3, !noalias !4
  %r595.p = getelementptr inbounds i8, ptr %c, i64 80
  %r595 = load i64, ptr %r595.p, align 8, !alias.scope !3, !noalias !4
  %t596 = or i64 %r595, %r594
  %wp597 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t596, ptr %wp597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f3c word 0xb4007bcc
  %r598.p = getelementptr inbounds i8, ptr %c, i64 96
  %r598 = load i64, ptr %r598.p, align 8, !alias.scope !3, !noalias !4
  %cmp599 = icmp eq i64 %r598, 0
  br i1 %cmp599, label %L_800063eb4, label %L_800062f40_ft
L_800062f40_ft:
  ; @pc 0x800062f40 word 0x8b8b0520
  %r600.p = getelementptr inbounds i8, ptr %c, i64 72
  %r600 = load i64, ptr %r600.p, align 8, !alias.scope !3, !noalias !4
  %r601.p = getelementptr inbounds i8, ptr %c, i64 88
  %r601 = load i64, ptr %r601.p, align 8, !alias.scope !3, !noalias !4
  %t602 = ashr i64 %r601, 1
  %t603 = add i64 %r600, %t602
  %wp604 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t603, ptr %wp604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f44 word 0xb5007bca
  %r605.p = getelementptr inbounds i8, ptr %c, i64 80
  %r605 = load i64, ptr %r605.p, align 8, !alias.scope !3, !noalias !4
  %cmp606 = icmp ne i64 %r605, 0
  br i1 %cmp606, label %L_800063ebc, label %L_800062f48
L_800062f58_ft:
  ; @pc 0x800062f58 word 0xd001c794
  %wp639 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419851264, ptr %wp639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f5c word 0xf9416694
  %r640.p = getelementptr inbounds i8, ptr %c, i64 160
  %r640 = load i64, ptr %r640.p, align 8, !alias.scope !3, !noalias !4
  %t641 = add i64 %r640, 712
  %gmp642 = inttoptr i64 %t641 to ptr
  %gml643 = load i64, ptr %gmp642, align 1, !alias.scope !4, !noalias !3
  %wp644 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml643, ptr %wp644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f60 word 0xf9400280
  %r645.p = getelementptr inbounds i8, ptr %c, i64 160
  %r645 = load i64, ptr %r645.p, align 8, !alias.scope !3, !noalias !4
  %gmp646 = inttoptr i64 %r645 to ptr
  %gml647 = load i64, ptr %gmp646, align 1, !alias.scope !4, !noalias !3
  %wp648 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml647, ptr %wp648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f64 word 0xb4007340
  %r649.p = getelementptr inbounds i8, ptr %c, i64 0
  %r649 = load i64, ptr %r649.p, align 8, !alias.scope !3, !noalias !4
  %cmp650 = icmp eq i64 %r649, 0
  br i1 %cmp650, label %L_800063dcc, label %L_800062f68
L_800062f70_ft:
  ; @pc 0x800062f70 word 0x9109e295
  %r658.p = getelementptr inbounds i8, ptr %c, i64 160
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %t659 = add i64 %r658, 632
  %wp660 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t659, ptr %wp660, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f74 word 0xaa1503e0
  %r661.p = getelementptr inbounds i8, ptr %c, i64 168
  %r661 = load i64, ptr %r661.p, align 8, !alias.scope !3, !noalias !4
  %t662 = or i64 0, %r661
  %wp663 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t662, ptr %wp663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f78 word 0x94ad043a
  %wp664 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143740, ptr %wp664, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x800062f7c word 0xf9412a88
  %r665.p = getelementptr inbounds i8, ptr %c, i64 160
  %r665 = load i64, ptr %r665.p, align 8, !alias.scope !3, !noalias !4
  %t666 = add i64 %r665, 592
  %gmp667 = inttoptr i64 %t666 to ptr
  %gml668 = load i64, ptr %gmp667, align 1, !alias.scope !4, !noalias !3
  %wp669 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml668, ptr %wp669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f80 word 0x91092289
  %r670.p = getelementptr inbounds i8, ptr %c, i64 160
  %r670 = load i64, ptr %r670.p, align 8, !alias.scope !3, !noalias !4
  %t671 = add i64 %r670, 584
  %wp672 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t671, ptr %wp672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f84 word 0xeb09011f
  %r673.p = getelementptr inbounds i8, ptr %c, i64 64
  %r673 = load i64, ptr %r673.p, align 8, !alias.scope !3, !noalias !4
  %r674.p = getelementptr inbounds i8, ptr %c, i64 72
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
  ; @pc 0x800062f88 word 0x54000160
  %r695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %fsh697 = lshr i64 %r695, 30
  %cond696 = trunc i64 %fsh697 to i1
  br i1 %cond696, label %L_800062fb4, label %L_800062f8c_ft
L_800062f8c_ft:
  ; @pc 0x800062f8c word 0x91046289
  %r698.p = getelementptr inbounds i8, ptr %c, i64 160
  %r698 = load i64, ptr %r698.p, align 8, !alias.scope !3, !noalias !4
  %t699 = add i64 %r698, 280
  %wp700 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t699, ptr %wp700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062f90 word 0xd104c10a
  %r701.p = getelementptr inbounds i8, ptr %c, i64 64
  %r701 = load i64, ptr %r701.p, align 8, !alias.scope !3, !noalias !4
  %t702 = sub i64 %r701, 304
  %wp703 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t702, ptr %wp703, align 8, !alias.scope !3, !noalias !4
  br label %L_800062f94
L_800062f9c_ft:
  ; @pc 0x800062f9c word 0xf940a94a
  %r711.p = getelementptr inbounds i8, ptr %c, i64 80
  %r711 = load i64, ptr %r711.p, align 8, !alias.scope !3, !noalias !4
  %t712 = add i64 %r711, 336
  %gmp713 = inttoptr i64 %t712 to ptr
  %gml714 = load i64, ptr %gmp713, align 1, !alias.scope !4, !noalias !3
  %wp715 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml714, ptr %wp715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fa0 word 0xb400786a
  %r716.p = getelementptr inbounds i8, ptr %c, i64 80
  %r716 = load i64, ptr %r716.p, align 8, !alias.scope !3, !noalias !4
  %cmp717 = icmp eq i64 %r716, 0
  br i1 %cmp717, label %L_800063eac, label %L_800062fa4_ft
L_800062fa4_ft:
  ; @pc 0x800062fa4 word 0xf9400508
  %r718.p = getelementptr inbounds i8, ptr %c, i64 64
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %t719 = add i64 %r718, 8
  %gmp720 = inttoptr i64 %t719 to ptr
  %gml721 = load i64, ptr %gmp720, align 1, !alias.scope !4, !noalias !3
  %wp722 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml721, ptr %wp722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fa8 word 0xd104c10a
  %r723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r723 = load i64, ptr %r723.p, align 8, !alias.scope !3, !noalias !4
  %t724 = sub i64 %r723, 304
  %wp725 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t724, ptr %wp725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fac word 0xeb09015f
  %r726.p = getelementptr inbounds i8, ptr %c, i64 80
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %r727.p = getelementptr inbounds i8, ptr %c, i64 72
  %r727 = load i64, ptr %r727.p, align 8, !alias.scope !3, !noalias !4
  %t728 = sub i64 %r726, %r727
  %fn729 = icmp slt i64 %t728, 0
  %fz730 = icmp eq i64 %t728, 0
  %fc731 = icmp uge i64 %r726, %r727
  %fx1732 = xor i64 %r726, %r727
  %fx2733 = xor i64 %r726, %t728
  %fva734 = and i64 %fx1732, %fx2733
  %fv735 = icmp slt i64 %fva734, 0
  %nz736 = zext i1 %fn729 to i64
  %zz737 = zext i1 %fz730 to i64
  %cz738 = zext i1 %fc731 to i64
  %vz739 = zext i1 %fv735 to i64
  %ns740 = shl i64 %nz736, 31
  %zs741 = shl i64 %zz737, 30
  %cs742 = shl i64 %cz738, 29
  %vs743 = shl i64 %vz739, 28
  %nzor744 = or i64 %ns740, %zs741
  %cvor745 = or i64 %cs742, %vs743
  %nzcv746 = or i64 %nzor744, %cvor745
  %wp747 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv746, ptr %wp747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800062fb0 word 0x54ffff21
  %r748.p = getelementptr inbounds i8, ptr %c, i64 272
  %r748 = load i64, ptr %r748.p, align 8, !alias.scope !3, !noalias !4
  %fsh750 = lshr i64 %r748, 30
  %ftr751 = trunc i64 %fsh750 to i1
  %cond749 = xor i1 %ftr751, true
  br i1 %cond749, label %L_800062f94, label %L_800062fb4
L_800063020_ft:
  ; @pc 0x800063020 word 0xf94033e8
  %r875.p = getelementptr inbounds i8, ptr %c, i64 256
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %t876 = add i64 %r875, 96
  %gmp877 = inttoptr i64 %t876 to ptr
  %gml878 = load i64, ptr %gmp877, align 1, !alias.scope !4, !noalias !3
  %wp879 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063024 word 0xb9400908
  %r880.p = getelementptr inbounds i8, ptr %c, i64 64
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %t881 = add i64 %r880, 8
  %gmp882 = inttoptr i64 %t881 to ptr
  %gml883 = load i32, ptr %gmp882, align 1, !alias.scope !4, !noalias !3
  %c884 = zext i32 %gml883 to i64
  %wp885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c884, ptr %wp885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063028 word 0x34000348
  %r886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r886 = load i64, ptr %r886.p, align 8, !alias.scope !3, !noalias !4
  %c887 = trunc i64 %r886 to i32
  %cmp888 = icmp eq i32 %c887, 0
  br i1 %cmp888, label %L_800063090, label %L_80006302c_ft
L_80006302c_ft:
  ; @pc 0x80006302c word 0x7100051f
  %r889.p = getelementptr inbounds i8, ptr %c, i64 64
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %c890 = trunc i64 %r889 to i32
  %t891 = sub i32 %c890, 1
  %fn892 = icmp slt i32 %t891, 0
  %fz893 = icmp eq i32 %t891, 0
  %fc894 = icmp uge i32 %c890, 1
  %fx1895 = xor i32 %c890, 1
  %fx2896 = xor i32 %c890, %t891
  %fva897 = and i32 %fx1895, %fx2896
  %fv898 = icmp slt i32 %fva897, 0
  %nz899 = zext i1 %fn892 to i64
  %zz900 = zext i1 %fz893 to i64
  %cz901 = zext i1 %fc894 to i64
  %vz902 = zext i1 %fv898 to i64
  %ns903 = shl i64 %nz899, 31
  %zs904 = shl i64 %zz900, 30
  %cs905 = shl i64 %cz901, 29
  %vs906 = shl i64 %vz902, 28
  %nzor907 = or i64 %ns903, %zs904
  %cvor908 = or i64 %cs905, %vs906
  %nzcv909 = or i64 %nzor907, %cvor908
  %wp910 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv909, ptr %wp910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063030 word 0x540000a1
  %r911.p = getelementptr inbounds i8, ptr %c, i64 272
  %r911 = load i64, ptr %r911.p, align 8, !alias.scope !3, !noalias !4
  %fsh913 = lshr i64 %r911, 30
  %ftr914 = trunc i64 %fsh913 to i1
  %cond912 = xor i1 %ftr914, true
  br i1 %cond912, label %L_800063044, label %L_800063034_ft
L_800063034_ft:
  ; @pc 0x800063034 word 0xf94033e8
  %r915.p = getelementptr inbounds i8, ptr %c, i64 256
  %r915 = load i64, ptr %r915.p, align 8, !alias.scope !3, !noalias !4
  %t916 = add i64 %r915, 96
  %gmp917 = inttoptr i64 %t916 to ptr
  %gml918 = load i64, ptr %gmp917, align 1, !alias.scope !4, !noalias !3
  %wp919 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml918, ptr %wp919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063038 word 0xb9401108
  %r920.p = getelementptr inbounds i8, ptr %c, i64 64
  %r920 = load i64, ptr %r920.p, align 8, !alias.scope !3, !noalias !4
  %t921 = add i64 %r920, 16
  %gmp922 = inttoptr i64 %t921 to ptr
  %gml923 = load i32, ptr %gmp922, align 1, !alias.scope !4, !noalias !3
  %c924 = zext i32 %gml923 to i64
  %wp925 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c924, ptr %wp925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006303c word 0x71000d1f
  %r926.p = getelementptr inbounds i8, ptr %c, i64 64
  %r926 = load i64, ptr %r926.p, align 8, !alias.scope !3, !noalias !4
  %c927 = trunc i64 %r926 to i32
  %t928 = sub i32 %c927, 3
  %fn929 = icmp slt i32 %t928, 0
  %fz930 = icmp eq i32 %t928, 0
  %fc931 = icmp uge i32 %c927, 3
  %fx1932 = xor i32 %c927, 3
  %fx2933 = xor i32 %c927, %t928
  %fva934 = and i32 %fx1932, %fx2933
  %fv935 = icmp slt i32 %fva934, 0
  %nz936 = zext i1 %fn929 to i64
  %zz937 = zext i1 %fz930 to i64
  %cz938 = zext i1 %fc931 to i64
  %vz939 = zext i1 %fv935 to i64
  %ns940 = shl i64 %nz936, 31
  %zs941 = shl i64 %zz937, 30
  %cs942 = shl i64 %cz938, 29
  %vs943 = shl i64 %vz939, 28
  %nzor944 = or i64 %ns940, %zs941
  %cvor945 = or i64 %cs942, %vs943
  %nzcv946 = or i64 %nzor944, %cvor945
  %wp947 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv946, ptr %wp947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063040 word 0x5400102d
  %r948.p = getelementptr inbounds i8, ptr %c, i64 272
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %fsh950 = lshr i64 %r948, 30
  %ftr951 = trunc i64 %fsh950 to i1
  %fsh952 = lshr i64 %r948, 31
  %ftr953 = trunc i64 %fsh952 to i1
  %fsh954 = lshr i64 %r948, 28
  %ftr955 = trunc i64 %fsh954 to i1
  %fnz956 = xor i1 %ftr951, true
  %feq957 = icmp eq i1 %ftr953, %ftr955
  %fgt958 = and i1 %fnz956, %feq957
  %cond949 = xor i1 %fgt958, true
  br i1 %cond949, label %L_800063244, label %L_800063044
L_800063068_ft:
  ; @pc 0x800063068 word 0xf94033e1
  %r993.p = getelementptr inbounds i8, ptr %c, i64 256
  %r993 = load i64, ptr %r993.p, align 8, !alias.scope !3, !noalias !4
  %t994 = add i64 %r993, 96
  %gmp995 = inttoptr i64 %t994 to ptr
  %gml996 = load i64, ptr %gmp995, align 1, !alias.scope !4, !noalias !3
  %wp997 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml996, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006306c word 0x9410c00c
  %wp998 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360143984, ptr %wp998, align 8, !alias.scope !3, !noalias !4
  call void @f_80049309c(ptr %c)
  br label %L_800063070
L_8000630a0_ft:
  ; @pc 0x8000630a0 word 0x51000508
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %c1061 = trunc i64 %r1060 to i32
  %t1062 = sub i32 %c1061, 1
  %c1063 = zext i32 %t1062 to i64
  %wp1064 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1063, ptr %wp1064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630a4 word 0x7100551f
  %r1065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1065 = load i64, ptr %r1065.p, align 8, !alias.scope !3, !noalias !4
  %c1066 = trunc i64 %r1065 to i32
  %t1067 = sub i32 %c1066, 21
  %fn1068 = icmp slt i32 %t1067, 0
  %fz1069 = icmp eq i32 %t1067, 0
  %fc1070 = icmp uge i32 %c1066, 21
  %fx11071 = xor i32 %c1066, 21
  %fx21072 = xor i32 %c1066, %t1067
  %fva1073 = and i32 %fx11071, %fx21072
  %fv1074 = icmp slt i32 %fva1073, 0
  %nz1075 = zext i1 %fn1068 to i64
  %zz1076 = zext i1 %fz1069 to i64
  %cz1077 = zext i1 %fc1070 to i64
  %vz1078 = zext i1 %fv1074 to i64
  %ns1079 = shl i64 %nz1075, 31
  %zs1080 = shl i64 %zz1076, 30
  %cs1081 = shl i64 %cz1077, 29
  %vs1082 = shl i64 %vz1078, 28
  %nzor1083 = or i64 %ns1079, %zs1080
  %cvor1084 = or i64 %cs1081, %vs1082
  %nzcv1085 = or i64 %nzor1083, %cvor1084
  %wp1086 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1085, ptr %wp1086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630a8 word 0x54fffce8
  %r1087.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1087 = load i64, ptr %r1087.p, align 8, !alias.scope !3, !noalias !4
  %fsh1089 = lshr i64 %r1087, 29
  %ftr1090 = trunc i64 %fsh1089 to i1
  %fsh1091 = lshr i64 %r1087, 30
  %ftr1092 = trunc i64 %fsh1091 to i1
  %fnz1093 = xor i1 %ftr1092, true
  %cond1088 = and i1 %ftr1090, %fnz1093
  br i1 %cond1088, label %L_800063044, label %L_8000630ac_ft
L_8000630ac_ft:
  ; @pc 0x8000630ac word 0xf94033e9
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %t1095 = add i64 %r1094, 96
  %gmp1096 = inttoptr i64 %t1095 to ptr
  %gml1097 = load i64, ptr %gmp1096, align 1, !alias.scope !4, !noalias !3
  %wp1098 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1097, ptr %wp1098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630b0 word 0xd001c7b4
  %wp1099 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419871744, ptr %wp1099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630b4 word 0x52800020
  %c1100 = zext i32 1 to i64
  %wp1101 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1100, ptr %wp1101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630b8 word 0xf000217a
  %wp1102 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34364530688, ptr %wp1102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630bc word 0x9119235a
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %t1104 = add i64 %r1103, 1608
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630c0 word 0xf9400129
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %gmp1107 = inttoptr i64 %r1106 to ptr
  %gml1108 = load i64, ptr %gmp1107, align 1, !alias.scope !4, !noalias !3
  %wp1109 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1108, ptr %wp1109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630c4 word 0x52800035
  %c1110 = zext i32 1 to i64
  %wp1111 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c1110, ptr %wp1111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630c8 word 0x9000219b
  %wp1112 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34364534784, ptr %wp1112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630cc word 0x9101b37b
  %r1113.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1113 = load i64, ptr %r1113.p, align 8, !alias.scope !3, !noalias !4
  %t1114 = add i64 %r1113, 108
  %wp1115 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1114, ptr %wp1115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630d0 word 0xf9000fe9
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %t1117 = add i64 %r1116, 24
  %r1118.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1118 = load i64, ptr %r1118.p, align 8, !alias.scope !3, !noalias !4
  %gmp1119 = inttoptr i64 %t1117 to ptr
  store i64 %r1118, ptr %gmp1119, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000630d4 word 0xf00164a9
  %wp1120 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406899712, ptr %wp1120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630d8 word 0x9111c129
  %r1121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1121 = load i64, ptr %r1121.p, align 8, !alias.scope !3, !noalias !4
  %t1122 = add i64 %r1121, 1136
  %wp1123 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1122, ptr %wp1123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630dc word 0x1000000a
  %wp1124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34360144092, ptr %wp1124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630e0 word 0xb8a8792b
  %r1125.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1125 = load i64, ptr %r1125.p, align 8, !alias.scope !3, !noalias !4
  %r1126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1126 = load i64, ptr %r1126.p, align 8, !alias.scope !3, !noalias !4
  %t1127 = shl i64 %r1126, 2
  %t1128 = add i64 %r1125, %t1127
  %gmp1129 = inttoptr i64 %t1128 to ptr
  %gml1130 = load i32, ptr %gmp1129, align 1, !alias.scope !4, !noalias !3
  %c1131 = sext i32 %gml1130 to i64
  %wp1132 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1131, ptr %wp1132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630e4 word 0x8b0b014a
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %r1134.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1134 = load i64, ptr %r1134.p, align 8, !alias.scope !3, !noalias !4
  %t1135 = add i64 %r1133, %r1134
  %wp1136 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1135, ptr %wp1136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630e8 word 0xa942f3f9
  %r1137.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1137 = load i64, ptr %r1137.p, align 8, !alias.scope !3, !noalias !4
  %t1138 = add i64 %r1137, 40
  %t1139 = add i64 %t1138, 8
  %gmp1140 = inttoptr i64 %t1138 to ptr
  %gml1141 = load i64, ptr %gmp1140, align 1, !alias.scope !4, !noalias !3
  %gmp1142 = inttoptr i64 %t1139 to ptr
  %gml1143 = load i64, ptr %gmp1142, align 1, !alias.scope !4, !noalias !3
  %wp1144 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1141, ptr %wp1144, align 8, !alias.scope !3, !noalias !4
  %wp1145 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1143, ptr %wp1145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630ec word 0xa943dbf8
  %r1146.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1146 = load i64, ptr %r1146.p, align 8, !alias.scope !3, !noalias !4
  %t1147 = add i64 %r1146, 56
  %t1148 = add i64 %t1147, 8
  %gmp1149 = inttoptr i64 %t1147 to ptr
  %gml1150 = load i64, ptr %gmp1149, align 1, !alias.scope !4, !noalias !3
  %gmp1151 = inttoptr i64 %t1148 to ptr
  %gml1152 = load i64, ptr %gmp1151, align 1, !alias.scope !4, !noalias !3
  %wp1153 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1150, ptr %wp1153, align 8, !alias.scope !3, !noalias !4
  %wp1154 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1152, ptr %wp1154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630f0 word 0xa944dff3
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %t1156 = add i64 %r1155, 72
  %t1157 = add i64 %t1156, 8
  %gmp1158 = inttoptr i64 %t1156 to ptr
  %gml1159 = load i64, ptr %gmp1158, align 1, !alias.scope !4, !noalias !3
  %gmp1160 = inttoptr i64 %t1157 to ptr
  %gml1161 = load i64, ptr %gmp1160, align 1, !alias.scope !4, !noalias !3
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1159, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  %wp1163 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1161, ptr %wp1163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630f4 word 0xf9424294
  %r1164.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1164 = load i64, ptr %r1164.p, align 8, !alias.scope !3, !noalias !4
  %t1165 = add i64 %r1164, 1152
  %gmp1166 = inttoptr i64 %t1165 to ptr
  %gml1167 = load i64, ptr %gmp1166, align 1, !alias.scope !4, !noalias !3
  %wp1168 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1167, ptr %wp1168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000630f8 word 0xd61f0140
  %r1169.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1169 = load i64, ptr %r1169.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r1169, label %L_8000630f8_jt_def [
    i64 34360143432, label %L_800062e48
    i64 34360144124, label %L_8000630fc
    i64 34360144564, label %L_8000632b4
    i64 34360144800, label %L_8000633a0
    i64 34360144816, label %L_8000633b0
    i64 34360144936, label %L_800063428
    i64 34360144952, label %L_800063438
    i64 34360144996, label %L_800063464
    i64 34360145296, label %L_800063590
    i64 34360145432, label %L_800063618
    i64 34360145528, label %L_800063678
    i64 34360145636, label %L_8000636e4
    i64 34360145652, label %L_8000636f4
    i64 34360145788, label %L_80006377c
    i64 34360145888, label %L_8000637e0
    i64 34360146424, label %L_8000639f8
    i64 34360146444, label %L_800063a0c
    i64 34360146740, label %L_800063b34
    i64 34360146772, label %L_800063b54
  ]
L_80006310c_ft:
  ; @pc 0x80006310c word 0xaa1f03e8
  %t1209 = or i64 0, 0
  %wp1210 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1209, ptr %wp1210, align 8, !alias.scope !3, !noalias !4
  br label %L_800063110
L_800063120_ft:
  ; @pc 0x800063120 word 0x2a1f03e9
  %t1230 = or i32 0, 0
  %c1231 = zext i32 %t1230 to i64
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1231, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  br label %L_800063124
L_800063234_ft:
  ; @pc 0x800063234 word 0x17ffff05
  br label %L_800062e48
L_80006324c_ft:
  ; @pc 0x80006324c word 0x35ffefc8
  %r1747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1747 = load i64, ptr %r1747.p, align 8, !alias.scope !3, !noalias !4
  %c1748 = trunc i64 %r1747 to i32
  %cmp1749 = icmp ne i32 %c1748, 0
  br i1 %cmp1749, label %L_800063044, label %L_800063250_ft
L_800063250_ft:
  ; @pc 0x800063250 word 0xf94013e8
  %r1750.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1750 = load i64, ptr %r1750.p, align 8, !alias.scope !3, !noalias !4
  %t1751 = add i64 %r1750, 32
  %gmp1752 = inttoptr i64 %t1751 to ptr
  %gml1753 = load i64, ptr %gmp1752, align 1, !alias.scope !4, !noalias !3
  %wp1754 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1753, ptr %wp1754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063254 word 0xf944d500
  %r1755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1755 = load i64, ptr %r1755.p, align 8, !alias.scope !3, !noalias !4
  %t1756 = add i64 %r1755, 2472
  %gmp1757 = inttoptr i64 %t1756 to ptr
  %gml1758 = load i64, ptr %gmp1757, align 1, !alias.scope !4, !noalias !3
  %wp1759 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1758, ptr %wp1759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063258 word 0x94023120
  %wp1760 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144476, ptr %wp1760, align 8, !alias.scope !3, !noalias !4
  call void @f_8000ef6d8(ptr %c)
  ; @pc 0x80006325c word 0x17ffff7a
  br label %L_800063044
L_800063268_ft:
  ; @pc 0x800063268 word 0xf94033e8
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %t1788 = add i64 %r1787, 96
  %gmp1789 = inttoptr i64 %t1788 to ptr
  %gml1790 = load i64, ptr %gmp1789, align 1, !alias.scope !4, !noalias !3
  %wp1791 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1790, ptr %wp1791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006326c word 0xb9401108
  %r1792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1792 = load i64, ptr %r1792.p, align 8, !alias.scope !3, !noalias !4
  %t1793 = add i64 %r1792, 16
  %gmp1794 = inttoptr i64 %t1793 to ptr
  %gml1795 = load i32, ptr %gmp1794, align 1, !alias.scope !4, !noalias !3
  %c1796 = zext i32 %gml1795 to i64
  %wp1797 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1796, ptr %wp1797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063270 word 0x35fff008
  %r1798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1798 = load i64, ptr %r1798.p, align 8, !alias.scope !3, !noalias !4
  %c1799 = trunc i64 %r1798 to i32
  %cmp1800 = icmp ne i32 %c1799, 0
  br i1 %cmp1800, label %L_800063070, label %L_800063274_ft
L_800063274_ft:
  ; @pc 0x800063274 word 0xf9459808
  %r1801.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1801 = load i64, ptr %r1801.p, align 8, !alias.scope !3, !noalias !4
  %t1802 = add i64 %r1801, 2864
  %gmp1803 = inttoptr i64 %t1802 to ptr
  %gml1804 = load i64, ptr %gmp1803, align 1, !alias.scope !4, !noalias !3
  %wp1805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1804, ptr %wp1805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063278 word 0x394c0109
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = add i64 %r1806, 768
  %gmp1808 = inttoptr i64 %t1807 to ptr
  %gml1809 = load i8, ptr %gmp1808, align 1, !alias.scope !4, !noalias !3
  %c1810 = zext i8 %gml1809 to i64
  %wp1811 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1810, ptr %wp1811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006327c word 0x360fefa9
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %t1813 = and i64 %r1812, 2
  %cmp1814 = icmp eq i64 %t1813, 0
  br i1 %cmp1814, label %L_800063070, label %L_800063280_ft
L_800063280_ft:
  ; @pc 0x800063280 word 0xf94033e9
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %t1816 = add i64 %r1815, 96
  %gmp1817 = inttoptr i64 %t1816 to ptr
  %gml1818 = load i64, ptr %gmp1817, align 1, !alias.scope !4, !noalias !3
  %wp1819 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1818, ptr %wp1819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063284 word 0x91002108
  %r1820.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1820 = load i64, ptr %r1820.p, align 8, !alias.scope !3, !noalias !4
  %t1821 = add i64 %r1820, 8
  %wp1822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1821, ptr %wp1822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063288 word 0xf9400529
  %r1823.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1823 = load i64, ptr %r1823.p, align 8, !alias.scope !3, !noalias !4
  %t1824 = add i64 %r1823, 8
  %gmp1825 = inttoptr i64 %t1824 to ptr
  %gml1826 = load i64, ptr %gmp1825, align 1, !alias.scope !4, !noalias !3
  %wp1827 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1826, ptr %wp1827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006328c word 0xf9008528
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %t1829 = add i64 %r1828, 264
  %r1830.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1830 = load i64, ptr %r1830.p, align 8, !alias.scope !3, !noalias !4
  %gmp1831 = inttoptr i64 %t1829 to ptr
  store i64 %r1830, ptr %gmp1831, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063290 word 0x394d6128
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %t1833 = add i64 %r1832, 856
  %gmp1834 = inttoptr i64 %t1833 to ptr
  %gml1835 = load i8, ptr %gmp1834, align 1, !alias.scope !4, !noalias !3
  %c1836 = zext i8 %gml1835 to i64
  %wp1837 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1836, ptr %wp1837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063294 word 0x121f1908
  %r1838.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1838 = load i64, ptr %r1838.p, align 8, !alias.scope !3, !noalias !4
  %c1839 = trunc i64 %r1838 to i32
  %t1840 = and i32 %c1839, 254
  %c1841 = zext i32 %t1840 to i64
  %wp1842 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1841, ptr %wp1842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063298 word 0x390d6128
  %r1843.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1843 = load i64, ptr %r1843.p, align 8, !alias.scope !3, !noalias !4
  %t1844 = add i64 %r1843, 856
  %r1845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1845 = load i64, ptr %r1845.p, align 8, !alias.scope !3, !noalias !4
  %c1846 = trunc i64 %r1845 to i32
  %c1847 = trunc i32 %c1846 to i8
  %gmp1848 = inttoptr i64 %t1844 to ptr
  store i8 %c1847, ptr %gmp1848, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006329c word 0x17ffff75
  br label %L_800063070
L_8000632a8_ft:
  ; @pc 0x8000632a8 word 0xf94033e1
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %t1876 = add i64 %r1875, 96
  %gmp1877 = inttoptr i64 %t1876 to ptr
  %gml1878 = load i64, ptr %gmp1877, align 1, !alias.scope !4, !noalias !3
  %wp1879 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1878, ptr %wp1879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000632ac word 0x941139bd
  %wp1880 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144560, ptr %wp1880, align 8, !alias.scope !3, !noalias !4
  call void @f_8004b19a0(ptr %c)
  ; @pc 0x8000632b0 word 0x17ffff70
  br label %L_800063070
L_800063394_ft:
  ; @pc 0x800063394 word 0xa940210a
  %r2096.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2096 = load i64, ptr %r2096.p, align 8, !alias.scope !3, !noalias !4
  %t2097 = add i64 %r2096, 8
  %gmp2098 = inttoptr i64 %r2096 to ptr
  %gml2099 = load i64, ptr %gmp2098, align 1, !alias.scope !4, !noalias !3
  %gmp2100 = inttoptr i64 %t2097 to ptr
  %gml2101 = load i64, ptr %gmp2100, align 1, !alias.scope !4, !noalias !3
  %wp2102 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2099, ptr %wp2102, align 8, !alias.scope !3, !noalias !4
  %wp2103 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2101, ptr %wp2103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063398 word 0xa900212a
  %r2104.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2104 = load i64, ptr %r2104.p, align 8, !alias.scope !3, !noalias !4
  %t2105 = add i64 %r2104, 8
  %r2106.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2106 = load i64, ptr %r2106.p, align 8, !alias.scope !3, !noalias !4
  %gmp2107 = inttoptr i64 %r2104 to ptr
  store i64 %r2106, ptr %gmp2107, align 1, !alias.scope !4, !noalias !3
  %r2108.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2108 = load i64, ptr %r2108.p, align 8, !alias.scope !3, !noalias !4
  %gmp2109 = inttoptr i64 %t2105 to ptr
  store i64 %r2108, ptr %gmp2109, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006339c word 0x140001e9
  br label %L_800063b40
L_8000633d0_ft:
  ; @pc 0x8000633d0 word 0x5286d308
  %c2173 = zext i32 13976 to i64
  %wp2174 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2173, ptr %wp2174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633d4 word 0x8b080274
  %r2175.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2175 = load i64, ptr %r2175.p, align 8, !alias.scope !3, !noalias !4
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %t2177 = add i64 %r2175, %r2176
  %wp2178 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t2177, ptr %wp2178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633d8 word 0x39400288
  %r2179.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2179 = load i64, ptr %r2179.p, align 8, !alias.scope !3, !noalias !4
  %gmp2180 = inttoptr i64 %r2179 to ptr
  %gml2181 = load i8, ptr %gmp2180, align 1, !alias.scope !4, !noalias !3
  %c2182 = zext i8 %gml2181 to i64
  %wp2183 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2182, ptr %wp2183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000633dc word 0x371859e8
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %t2185 = and i64 %r2184, 8
  %cmp2186 = icmp ne i64 %t2185, 0
  br i1 %cmp2186, label %L_800063f18, label %L_8000633e0
L_800063404_ft:
  ; @pc 0x800063404 word 0xaa1603e0
  %r2216.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2216 = load i64, ptr %r2216.p, align 8, !alias.scope !3, !noalias !4
  %t2217 = or i64 0, %r2216
  %wp2218 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2217, ptr %wp2218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063408 word 0x9403e8ed
  %wp2219 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360144908, ptr %wp2219, align 8, !alias.scope !3, !noalias !4
  call void @f_80015d7bc(ptr %c)
  ; @pc 0x80006340c word 0x39400288
  %r2220.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2220 = load i64, ptr %r2220.p, align 8, !alias.scope !3, !noalias !4
  %gmp2221 = inttoptr i64 %r2220 to ptr
  %gml2222 = load i8, ptr %gmp2221, align 1, !alias.scope !4, !noalias !3
  %c2223 = zext i8 %gml2222 to i64
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2223, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063410 word 0x371058e8
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %t2226 = and i64 %r2225, 4
  %cmp2227 = icmp ne i64 %t2226, 0
  br i1 %cmp2227, label %L_800063f2c, label %L_800063414_ft
L_800063414_ft:
  ; @pc 0x800063414 word 0x32000108
  %r2228.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2228 = load i64, ptr %r2228.p, align 8, !alias.scope !3, !noalias !4
  %c2229 = trunc i64 %r2228 to i32
  %t2230 = or i32 %c2229, 1
  %c2231 = zext i32 %t2230 to i64
  %wp2232 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2231, ptr %wp2232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063418 word 0x39000288
  %r2233.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2233 = load i64, ptr %r2233.p, align 8, !alias.scope !3, !noalias !4
  %r2234.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2234 = load i64, ptr %r2234.p, align 8, !alias.scope !3, !noalias !4
  %c2235 = trunc i64 %r2234 to i32
  %c2236 = trunc i32 %c2235 to i8
  %gmp2237 = inttoptr i64 %r2233 to ptr
  store i8 %c2236, ptr %gmp2237, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006341c word 0x528009e8
  %c2238 = zext i32 79 to i64
  %wp2239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2238, ptr %wp2239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063420 word 0xb9365a68
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %t2241 = add i64 %r2240, 13912
  %r2242.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2242 = load i64, ptr %r2242.p, align 8, !alias.scope !3, !noalias !4
  %c2243 = trunc i64 %r2242 to i32
  %gmp2244 = inttoptr i64 %t2241 to ptr
  store i32 %c2243, ptr %gmp2244, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063424 word 0x17ffff08
  br label %L_800063044
L_80006345c_ft:
  ; @pc 0x80006345c word 0x39000100
  %r2291.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2291 = load i64, ptr %r2291.p, align 8, !alias.scope !3, !noalias !4
  %r2292.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2292 = load i64, ptr %r2292.p, align 8, !alias.scope !3, !noalias !4
  %c2293 = trunc i64 %r2292 to i32
  %c2294 = trunc i32 %c2293 to i8
  %gmp2295 = inttoptr i64 %r2291 to ptr
  store i8 %c2294, ptr %gmp2295, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063460 word 0x140001b9
  br label %L_800063b44
L_80006349c_ft:
  ; @pc 0x80006349c word 0x79411108
  %r2359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2359 = load i64, ptr %r2359.p, align 8, !alias.scope !3, !noalias !4
  %t2360 = add i64 %r2359, 136
  %gmp2361 = inttoptr i64 %t2360 to ptr
  %gml2362 = load i16, ptr %gmp2361, align 1, !alias.scope !4, !noalias !3
  %c2363 = zext i16 %gml2362 to i64
  %wp2364 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2363, ptr %wp2364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634a0 word 0x52800069
  %c2365 = zext i32 3 to i64
  %wp2366 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2365, ptr %wp2366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634a4 word 0x6a28013f
  %r2367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2367 = load i64, ptr %r2367.p, align 8, !alias.scope !3, !noalias !4
  %c2368 = trunc i64 %r2367 to i32
  %t2369 = xor i32 %c2368, -1
  %r2370.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2370 = load i64, ptr %r2370.p, align 8, !alias.scope !3, !noalias !4
  %c2371 = trunc i64 %r2370 to i32
  %t2372 = and i32 %c2371, %t2369
  %fn2373 = icmp slt i32 %t2372, 0
  %fz2374 = icmp eq i32 %t2372, 0
  %nz2375 = zext i1 %fn2373 to i64
  %zz2376 = zext i1 %fz2374 to i64
  %ns2377 = shl i64 %nz2375, 31
  %zs2378 = shl i64 %zz2376, 30
  %nzcv2379 = or i64 %ns2377, %zs2378
  %wp2380 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2379, ptr %wp2380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634a8 word 0x54004300
  %r2381.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2381 = load i64, ptr %r2381.p, align 8, !alias.scope !3, !noalias !4
  %fsh2383 = lshr i64 %r2381, 30
  %cond2382 = trunc i64 %fsh2383 to i1
  br i1 %cond2382, label %L_800063d08, label %L_8000634ac
L_8000634bc_ft:
  ; @pc 0x8000634bc word 0xbd43bc08
  %r2403.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2403 = load i64, ptr %r2403.p, align 8, !alias.scope !3, !noalias !4
  %t2404 = add i64 %r2403, 956
  %gmp2405 = inttoptr i64 %t2404 to ptr
  %gml2406 = load i32, ptr %gmp2405, align 1, !alias.scope !4, !noalias !3
  %c2407 = zext i32 %gml2406 to i128
  %wp2408 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2407, ptr %wp2408, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634c0 word 0x1e2c1001
  %wp2409 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1056964608, ptr %wp2409, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634c4 word 0xbd43c009
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %t2411 = add i64 %r2410, 960
  %gmp2412 = inttoptr i64 %t2411 to ptr
  %gml2413 = load i32, ptr %gmp2412, align 1, !alias.scope !4, !noalias !3
  %c2414 = zext i32 %gml2413 to i128
  %wp2415 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c2414, ptr %wp2415, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634c8 word 0x1e283920
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 9, i32 8)
  ; @pc 0x8000634cc word 0x1e21080a
  call void @rt_fp_op_s(ptr %c, i32 2, i32 10, i32 0, i32 1)
  ; @pc 0x8000634d0 word 0x1e2e1000
  %wp2416 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1065353216, ptr %wp2416, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634d4 word 0x1e202140
  %fcmp2417 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 0, i32 0)
  %wp2418 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2417, ptr %wp2418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634d8 word 0x540003ad
  %r2419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2419 = load i64, ptr %r2419.p, align 8, !alias.scope !3, !noalias !4
  %fsh2421 = lshr i64 %r2419, 30
  %ftr2422 = trunc i64 %fsh2421 to i1
  %fsh2423 = lshr i64 %r2419, 31
  %ftr2424 = trunc i64 %fsh2423 to i1
  %fsh2425 = lshr i64 %r2419, 28
  %ftr2426 = trunc i64 %fsh2425 to i1
  %fnz2427 = xor i1 %ftr2422, true
  %feq2428 = icmp eq i1 %ftr2424, %ftr2426
  %fgt2429 = and i1 %fnz2427, %feq2428
  %cond2420 = xor i1 %fgt2429, true
  br i1 %cond2420, label %L_80006354c, label %L_8000634dc_ft
L_8000634dc_ft:
  ; @pc 0x8000634dc word 0xbd407fe1
  %r2430.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2430 = load i64, ptr %r2430.p, align 8, !alias.scope !3, !noalias !4
  %t2431 = add i64 %r2430, 124
  %gmp2432 = inttoptr i64 %t2431 to ptr
  %gml2433 = load i32, ptr %gmp2432, align 1, !alias.scope !4, !noalias !3
  %c2434 = zext i32 %gml2433 to i128
  %wp2435 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2434, ptr %wp2435, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634e0 word 0x52aff008
  %c2436 = zext i32 2139095040 to i64
  %wp2437 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2436, ptr %wp2437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634e4 word 0x1e214020
  %r2438.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2438 = load i128, ptr %r2438.p, align 16, !alias.scope !3, !noalias !4
  %c2439 = trunc i128 %r2438 to i32
  %t2440 = xor i32 %c2439, -2147483648
  %c2441 = zext i32 %t2440 to i128
  %wp2442 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2441, ptr %wp2442, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634e8 word 0x1e270103
  %r2443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2443 = load i64, ptr %r2443.p, align 8, !alias.scope !3, !noalias !4
  %c2444 = trunc i64 %r2443 to i32
  %c2445 = zext i32 %c2444 to i128
  %wp2446 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c2445, ptr %wp2446, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634ec word 0x1e202028
  %fcmp2447 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 1)
  %wp2448 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2447, ptr %wp2448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634f0 word 0x1e20c022
  %r2449.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2449 = load i128, ptr %r2449.p, align 16, !alias.scope !3, !noalias !4
  %c2450 = trunc i128 %r2449 to i32
  %t2451 = and i32 %c2450, 2147483647
  %c2452 = zext i32 %t2451 to i128
  %wp2453 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c2452, ptr %wp2453, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634f4 word 0x1e21bc00
  %r2454.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2454 = load i128, ptr %r2454.p, align 16, !alias.scope !3, !noalias !4
  %c2455 = trunc i128 %r2454 to i32
  %r2456.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2456 = load i128, ptr %r2456.p, align 16, !alias.scope !3, !noalias !4
  %c2457 = trunc i128 %r2456 to i32
  %r2458.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2458 = load i64, ptr %r2458.p, align 8, !alias.scope !3, !noalias !4
  %fsh2460 = lshr i64 %r2458, 31
  %ftr2461 = trunc i64 %fsh2460 to i1
  %fsh2462 = lshr i64 %r2458, 28
  %ftr2463 = trunc i64 %fsh2462 to i1
  %cond2459 = icmp ne i1 %ftr2461, %ftr2463
  %sel2464 = select i1 %cond2459, i32 %c2455, i32 %c2457
  %c2465 = zext i32 %sel2464 to i128
  %wp2466 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2465, ptr %wp2466, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000634f8 word 0x1e232040
  %fcmp2467 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 3, i32 0)
  %wp2468 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2467, ptr %wp2468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000634fc word 0x54000280
  %r2469.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2469 = load i64, ptr %r2469.p, align 8, !alias.scope !3, !noalias !4
  %fsh2471 = lshr i64 %r2469, 30
  %cond2470 = trunc i64 %fsh2471 to i1
  br i1 %cond2470, label %L_80006354c, label %L_800063500_ft
L_800063500_ft:
  ; @pc 0x800063500 word 0x1e212020
  %fcmp2472 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 1, i32 0)
  %wp2473 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2472, ptr %wp2473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063504 word 0x54000246
  %r2474.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2474 = load i64, ptr %r2474.p, align 8, !alias.scope !3, !noalias !4
  %fsh2476 = lshr i64 %r2474, 28
  %cond2475 = trunc i64 %fsh2476 to i1
  br i1 %cond2475, label %L_80006354c, label %L_800063508_ft
L_800063508_ft:
  ; @pc 0x800063508 word 0x52a8f008
  %c2477 = zext i32 1199570944 to i64
  %wp2478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2477, ptr %wp2478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006350c word 0x1e270101
  %r2479.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2479 = load i64, ptr %r2479.p, align 8, !alias.scope !3, !noalias !4
  %c2480 = trunc i64 %r2479 to i32
  %c2481 = zext i32 %c2480 to i128
  %wp2482 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2481, ptr %wp2482, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063510 word 0x1e212000
  %fcmp2483 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp2484 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2483, ptr %wp2484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063514 word 0x540001c5
  %r2485.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2485 = load i64, ptr %r2485.p, align 8, !alias.scope !3, !noalias !4
  %fsh2487 = lshr i64 %r2485, 31
  %ftr2488 = trunc i64 %fsh2487 to i1
  %cond2486 = xor i1 %ftr2488, true
  br i1 %cond2486, label %L_80006354c, label %L_800063518_ft
L_800063518_ft:
  ; @pc 0x800063518 word 0xf0016448
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406850560, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006351c word 0xbd4a7100
  %r2490.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2490 = load i64, ptr %r2490.p, align 8, !alias.scope !3, !noalias !4
  %t2491 = add i64 %r2490, 2672
  %gmp2492 = inttoptr i64 %t2491 to ptr
  %gml2493 = load i32, ptr %gmp2492, align 1, !alias.scope !4, !noalias !3
  %c2494 = zext i32 %gml2493 to i128
  %wp2495 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2494, ptr %wp2495, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063520 word 0x1e20094b
  call void @rt_fp_op_s(ptr %c, i32 2, i32 11, i32 10, i32 0)
  ; @pc 0x800063524 word 0x1e21416c
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 688
  %r2496 = load i128, ptr %r2496.p, align 16, !alias.scope !3, !noalias !4
  %c2497 = trunc i128 %r2496 to i32
  %t2498 = xor i32 %c2497, -2147483648
  %c2499 = zext i32 %t2498 to i128
  %wp2500 = getelementptr inbounds i8, ptr %c, i64 704
  store i128 %c2499, ptr %wp2500, align 16, !alias.scope !3, !noalias !4
  br label %L_800063528
L_800063544_ft:
  ; @pc 0x800063544 word 0x1e2b2000
  %fcmp2519 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 11, i32 0)
  %wp2520 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2519, ptr %wp2520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063548 word 0x5400576c
  %r2521.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2521 = load i64, ptr %r2521.p, align 8, !alias.scope !3, !noalias !4
  %fsh2523 = lshr i64 %r2521, 30
  %ftr2524 = trunc i64 %fsh2523 to i1
  %fsh2525 = lshr i64 %r2521, 31
  %ftr2526 = trunc i64 %fsh2525 to i1
  %fsh2527 = lshr i64 %r2521, 28
  %ftr2528 = trunc i64 %fsh2527 to i1
  %fnz2529 = xor i1 %ftr2524, true
  %feq2530 = icmp eq i1 %ftr2526, %ftr2528
  %cond2522 = and i1 %fnz2529, %feq2530
  br i1 %cond2522, label %L_800064034, label %L_80006354c
L_800063570_ft:
  ; @pc 0x800063570 word 0xf94013e9
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %t2580 = add i64 %r2579, 32
  %gmp2581 = inttoptr i64 %t2580 to ptr
  %gml2582 = load i64, ptr %gmp2581, align 1, !alias.scope !4, !noalias !3
  %wp2583 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2582, ptr %wp2583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063574 word 0xf9457129
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %t2585 = add i64 %r2584, 2784
  %gmp2586 = inttoptr i64 %t2585 to ptr
  %gml2587 = load i64, ptr %gmp2586, align 1, !alias.scope !4, !noalias !3
  %wp2588 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2587, ptr %wp2588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063578 word 0xb949052b
  %r2589.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2589 = load i64, ptr %r2589.p, align 8, !alias.scope !3, !noalias !4
  %t2590 = add i64 %r2589, 2308
  %gmp2591 = inttoptr i64 %t2590 to ptr
  %gml2592 = load i32, ptr %gmp2591, align 1, !alias.scope !4, !noalias !3
  %c2593 = zext i32 %gml2592 to i64
  %wp2594 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2593, ptr %wp2594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006357c word 0x374056ca
  %r2595.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2595 = load i64, ptr %r2595.p, align 8, !alias.scope !3, !noalias !4
  %t2596 = and i64 %r2595, 256
  %cmp2597 = icmp ne i64 %t2596, 0
  br i1 %cmp2597, label %L_800064054, label %L_800063580_ft
L_800063580_ft:
  ; @pc 0x800063580 word 0x360856cb
  %r2598.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2598 = load i64, ptr %r2598.p, align 8, !alias.scope !3, !noalias !4
  %t2599 = and i64 %r2598, 2
  %cmp2600 = icmp eq i64 %t2599, 0
  br i1 %cmp2600, label %L_800064058, label %L_800063584_ft
L_800063584_ft:
  ; @pc 0x800063584 word 0x91088129
  %r2601.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2601 = load i64, ptr %r2601.p, align 8, !alias.scope !3, !noalias !4
  %t2602 = add i64 %r2601, 544
  %wp2603 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2602, ptr %wp2603, align 8, !alias.scope !3, !noalias !4
  br label %L_800063588
L_8000635bc_ft:
  ; @pc 0x8000635bc word 0xa942f3f9
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %t2700 = add i64 %r2699, 40
  %t2701 = add i64 %t2700, 8
  %gmp2702 = inttoptr i64 %t2700 to ptr
  %gml2703 = load i64, ptr %gmp2702, align 1, !alias.scope !4, !noalias !3
  %gmp2704 = inttoptr i64 %t2701 to ptr
  %gml2705 = load i64, ptr %gmp2704, align 1, !alias.scope !4, !noalias !3
  %wp2706 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml2703, ptr %wp2706, align 8, !alias.scope !3, !noalias !4
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2705, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635c0 word 0xa943dbf8
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %t2709 = add i64 %r2708, 56
  %t2710 = add i64 %t2709, 8
  %gmp2711 = inttoptr i64 %t2709 to ptr
  %gml2712 = load i64, ptr %gmp2711, align 1, !alias.scope !4, !noalias !3
  %gmp2713 = inttoptr i64 %t2710 to ptr
  %gml2714 = load i64, ptr %gmp2713, align 1, !alias.scope !4, !noalias !3
  %wp2715 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2712, ptr %wp2715, align 8, !alias.scope !3, !noalias !4
  %wp2716 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2714, ptr %wp2716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000635c4 word 0xa944dff3
  %r2717.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2717 = load i64, ptr %r2717.p, align 8, !alias.scope !3, !noalias !4
  %t2718 = add i64 %r2717, 72
  %t2719 = add i64 %t2718, 8
  %gmp2720 = inttoptr i64 %t2718 to ptr
  %gml2721 = load i64, ptr %gmp2720, align 1, !alias.scope !4, !noalias !3
  %gmp2722 = inttoptr i64 %t2719 to ptr
  %gml2723 = load i64, ptr %gmp2722, align 1, !alias.scope !4, !noalias !3
  %wp2724 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2721, ptr %wp2724, align 8, !alias.scope !3, !noalias !4
  %wp2725 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2723, ptr %wp2725, align 8, !alias.scope !3, !noalias !4
  br label %L_8000635c8
L_800063614_ft:
  ; @pc 0x800063614 word 0x17ffffed
  br label %L_8000635c8
L_800063630_ft:
  ; @pc 0x800063630 word 0xbd4072c8
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %t2871 = add i64 %r2870, 112
  %gmp2872 = inttoptr i64 %t2871 to ptr
  %gml2873 = load i32, ptr %gmp2872, align 1, !alias.scope !4, !noalias !3
  %c2874 = zext i32 %gml2873 to i128
  %wp2875 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2874, ptr %wp2875, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063634 word 0x910032d9
  %r2876.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2876 = load i64, ptr %r2876.p, align 8, !alias.scope !3, !noalias !4
  %t2877 = add i64 %r2876, 12
  %wp2878 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2877, ptr %wp2878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063638 word 0xbd4016c1
  %r2879.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2879 = load i64, ptr %r2879.p, align 8, !alias.scope !3, !noalias !4
  %t2880 = add i64 %r2879, 20
  %gmp2881 = inttoptr i64 %t2880 to ptr
  %gml2882 = load i32, ptr %gmp2881, align 1, !alias.scope !4, !noalias !3
  %c2883 = zext i32 %gml2882 to i128
  %wp2884 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2883, ptr %wp2884, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006363c word 0xb9400ac8
  %r2885.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2885 = load i64, ptr %r2885.p, align 8, !alias.scope !3, !noalias !4
  %t2886 = add i64 %r2885, 8
  %gmp2887 = inttoptr i64 %t2886 to ptr
  %gml2888 = load i32, ptr %gmp2887, align 1, !alias.scope !4, !noalias !3
  %c2889 = zext i32 %gml2888 to i64
  %wp2890 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2889, ptr %wp2890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063640 word 0x35005508
  %r2891.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2891 = load i64, ptr %r2891.p, align 8, !alias.scope !3, !noalias !4
  %c2892 = trunc i64 %r2891 to i32
  %cmp2893 = icmp ne i32 %c2892, 0
  br i1 %cmp2893, label %L_8000640e0, label %L_800063644_ft
L_800063644_ft:
  ; @pc 0x800063644 word 0xf0016448
  %wp2894 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406850560, ptr %wp2894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063648 word 0xbd493900
  %r2895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2895 = load i64, ptr %r2895.p, align 8, !alias.scope !3, !noalias !4
  %t2896 = add i64 %r2895, 2360
  %gmp2897 = inttoptr i64 %t2896 to ptr
  %gml2898 = load i32, ptr %gmp2897, align 1, !alias.scope !4, !noalias !3
  %c2899 = zext i32 %gml2898 to i128
  %wp2900 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2899, ptr %wp2900, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006364c word 0x1f000500
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 8, i32 0, i32 1)
  ; @pc 0x800063650 word 0x1e202008
  %fcmp2901 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2902 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2901, ptr %wp2902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063654 word 0xbd0016c0
  %r2903.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2903 = load i64, ptr %r2903.p, align 8, !alias.scope !3, !noalias !4
  %t2904 = add i64 %r2903, 20
  %r2905.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2905 = load i128, ptr %r2905.p, align 16, !alias.scope !3, !noalias !4
  %c2906 = trunc i128 %r2905 to i32
  %gmp2907 = inttoptr i64 %t2904 to ptr
  store i32 %c2906, ptr %gmp2907, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063658 word 0x54005585
  %r2908.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2908 = load i64, ptr %r2908.p, align 8, !alias.scope !3, !noalias !4
  %fsh2910 = lshr i64 %r2908, 31
  %ftr2911 = trunc i64 %fsh2910 to i1
  %cond2909 = xor i1 %ftr2911, true
  br i1 %cond2909, label %L_800064108, label %L_80006365c_ft
L_80006365c_ft:
  ; @pc 0x80006365c word 0xb90016df
  %r2912.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2912 = load i64, ptr %r2912.p, align 8, !alias.scope !3, !noalias !4
  %t2913 = add i64 %r2912, 20
  %gmp2914 = inttoptr i64 %t2913 to ptr
  store i32 0, ptr %gmp2914, align 1, !alias.scope !4, !noalias !3
  br label %L_800063660
L_800063670_ft:
  ; @pc 0x800063670 word 0x2f00e400
  %wp2947 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp2947, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063674 word 0x140002a5
  br label %L_800064108
L_800063688_ft:
  ; @pc 0x800063688 word 0xf94013e8
  %r2972.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2972 = load i64, ptr %r2972.p, align 8, !alias.scope !3, !noalias !4
  %t2973 = add i64 %r2972, 32
  %gmp2974 = inttoptr i64 %t2973 to ptr
  %gml2975 = load i64, ptr %gmp2974, align 1, !alias.scope !4, !noalias !3
  %wp2976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2975, ptr %wp2976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006368c word 0xf9455513
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %t2978 = add i64 %r2977, 2728
  %gmp2979 = inttoptr i64 %t2978 to ptr
  %gml2980 = load i64, ptr %gmp2979, align 1, !alias.scope !4, !noalias !3
  %wp2981 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2980, ptr %wp2981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063690 word 0xb9400268
  %r2982.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2982 = load i64, ptr %r2982.p, align 8, !alias.scope !3, !noalias !4
  %gmp2983 = inttoptr i64 %r2982 to ptr
  %gml2984 = load i32, ptr %gmp2983, align 1, !alias.scope !4, !noalias !3
  %c2985 = zext i32 %gml2984 to i64
  %wp2986 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2985, ptr %wp2986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063694 word 0x34003448
  %r2987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2987 = load i64, ptr %r2987.p, align 8, !alias.scope !3, !noalias !4
  %c2988 = trunc i64 %r2987 to i32
  %cmp2989 = icmp eq i32 %c2988, 0
  br i1 %cmp2989, label %L_800063d1c, label %L_800063698_ft
L_800063698_ft:
  ; @pc 0x800063698 word 0x7100211f
  %r2990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2990 = load i64, ptr %r2990.p, align 8, !alias.scope !3, !noalias !4
  %c2991 = trunc i64 %r2990 to i32
  %t2992 = sub i32 %c2991, 8
  %fn2993 = icmp slt i32 %t2992, 0
  %fz2994 = icmp eq i32 %t2992, 0
  %fc2995 = icmp uge i32 %c2991, 8
  %fx12996 = xor i32 %c2991, 8
  %fx22997 = xor i32 %c2991, %t2992
  %fva2998 = and i32 %fx12996, %fx22997
  %fv2999 = icmp slt i32 %fva2998, 0
  %nz3000 = zext i1 %fn2993 to i64
  %zz3001 = zext i1 %fz2994 to i64
  %cz3002 = zext i1 %fc2995 to i64
  %vz3003 = zext i1 %fv2999 to i64
  %ns3004 = shl i64 %nz3000, 31
  %zs3005 = shl i64 %zz3001, 30
  %cs3006 = shl i64 %cz3002, 29
  %vs3007 = shl i64 %vz3003, 28
  %nzor3008 = or i64 %ns3004, %zs3005
  %cvor3009 = or i64 %cs3006, %vs3007
  %nzcv3010 = or i64 %nzor3008, %cvor3009
  %wp3011 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3010, ptr %wp3011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006369c word 0x54003520
  %r3012.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3012 = load i64, ptr %r3012.p, align 8, !alias.scope !3, !noalias !4
  %fsh3014 = lshr i64 %r3012, 30
  %cond3013 = trunc i64 %fsh3014 to i1
  br i1 %cond3013, label %L_800063d40, label %L_8000636a0
L_800063704_ft:
  ; @pc 0x800063704 word 0xf9449909
  %r3146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3146 = load i64, ptr %r3146.p, align 8, !alias.scope !3, !noalias !4
  %t3147 = add i64 %r3146, 2352
  %gmp3148 = inttoptr i64 %t3147 to ptr
  %gml3149 = load i64, ptr %gmp3148, align 1, !alias.scope !4, !noalias !3
  %wp3150 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3149, ptr %wp3150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063708 word 0x1e2c1003
  %wp3151 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 1056964608, ptr %wp3151, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006370c word 0xbd493900
  %r3152.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3152 = load i64, ptr %r3152.p, align 8, !alias.scope !3, !noalias !4
  %t3153 = add i64 %r3152, 2360
  %gmp3154 = inttoptr i64 %t3153 to ptr
  %gml3155 = load i32, ptr %gmp3154, align 1, !alias.scope !4, !noalias !3
  %c3156 = zext i32 %gml3155 to i128
  %wp3157 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3156, ptr %wp3157, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063710 word 0xbd493d01
  %r3158.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3158 = load i64, ptr %r3158.p, align 8, !alias.scope !3, !noalias !4
  %t3159 = add i64 %r3158, 2364
  %gmp3160 = inttoptr i64 %t3159 to ptr
  %gml3161 = load i32, ptr %gmp3160, align 1, !alias.scope !4, !noalias !3
  %c3162 = zext i32 %gml3161 to i128
  %wp3163 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3162, ptr %wp3163, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063714 word 0xbd48f102
  %r3164.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3164 = load i64, ptr %r3164.p, align 8, !alias.scope !3, !noalias !4
  %t3165 = add i64 %r3164, 2288
  %gmp3166 = inttoptr i64 %t3165 to ptr
  %gml3167 = load i32, ptr %gmp3166, align 1, !alias.scope !4, !noalias !3
  %c3168 = zext i32 %gml3167 to i128
  %wp3169 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c3168, ptr %wp3169, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063718 word 0x1e232040
  %fcmp3170 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 3, i32 0)
  %wp3171 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3170, ptr %wp3171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006371c word 0xf94013e8
  %r3172.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3172 = load i64, ptr %r3172.p, align 8, !alias.scope !3, !noalias !4
  %t3173 = add i64 %r3172, 32
  %gmp3174 = inttoptr i64 %t3173 to ptr
  %gml3175 = load i64, ptr %gmp3174, align 1, !alias.scope !4, !noalias !3
  %wp3176 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3175, ptr %wp3176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063720 word 0xf9457908
  %r3177.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3177 = load i64, ptr %r3177.p, align 8, !alias.scope !3, !noalias !4
  %t3178 = add i64 %r3177, 2800
  %gmp3179 = inttoptr i64 %t3178 to ptr
  %gml3180 = load i64, ptr %gmp3179, align 1, !alias.scope !4, !noalias !3
  %wp3181 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3180, ptr %wp3181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063724 word 0x2d078500
  %r3182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3182 = load i64, ptr %r3182.p, align 8, !alias.scope !3, !noalias !4
  %t3183 = add i64 %r3182, 60
  %t3184 = add i64 %t3183, 4
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3185 = load i128, ptr %r3185.p, align 16, !alias.scope !3, !noalias !4
  %r3186.p = getelementptr inbounds i8, ptr %c, i64 528
  %r3186 = load i128, ptr %r3186.p, align 16, !alias.scope !3, !noalias !4
  %c3187 = trunc i128 %r3185 to i32
  %c3188 = trunc i128 %r3186 to i32
  %gmp3189 = inttoptr i64 %t3183 to ptr
  store i32 %c3187, ptr %gmp3189, align 1, !alias.scope !4, !noalias !3
  %gmp3190 = inttoptr i64 %t3184 to ptr
  store i32 %c3188, ptr %gmp3190, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063728 word 0x1e224c60
  %r3191.p = getelementptr inbounds i8, ptr %c, i64 560
  %r3191 = load i128, ptr %r3191.p, align 16, !alias.scope !3, !noalias !4
  %c3192 = trunc i128 %r3191 to i32
  %r3193.p = getelementptr inbounds i8, ptr %c, i64 544
  %r3193 = load i128, ptr %r3193.p, align 16, !alias.scope !3, !noalias !4
  %c3194 = trunc i128 %r3193 to i32
  %r3195.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3195 = load i64, ptr %r3195.p, align 8, !alias.scope !3, !noalias !4
  %fsh3197 = lshr i64 %r3195, 31
  %cond3196 = trunc i64 %fsh3197 to i1
  %sel3198 = select i1 %cond3196, i32 %c3192, i32 %c3194
  %c3199 = zext i32 %sel3198 to i128
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3199, ptr %wp3200, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006372c word 0xf8034109
  %r3201.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3201 = load i64, ptr %r3201.p, align 8, !alias.scope !3, !noalias !4
  %t3202 = add i64 %r3201, 52
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %gmp3204 = inttoptr i64 %t3202 to ptr
  store i64 %r3203, ptr %gmp3204, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063730 word 0xbd003100
  %r3205.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3205 = load i64, ptr %r3205.p, align 8, !alias.scope !3, !noalias !4
  %t3206 = add i64 %r3205, 48
  %r3207.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3207 = load i128, ptr %r3207.p, align 16, !alias.scope !3, !noalias !4
  %c3208 = trunc i128 %r3207 to i32
  %gmp3209 = inttoptr i64 %t3206 to ptr
  store i32 %c3208, ptr %gmp3209, align 1, !alias.scope !4, !noalias !3
  br label %L_800063734
L_800063750_ft:
  ; @pc 0x800063750 word 0x9001c749
  %wp3256 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp3256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063754 word 0xf9463d29
  %r3257.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3257 = load i64, ptr %r3257.p, align 8, !alias.scope !3, !noalias !4
  %t3258 = add i64 %r3257, 3192
  %gmp3259 = inttoptr i64 %t3258 to ptr
  %gml3260 = load i64, ptr %gmp3259, align 1, !alias.scope !4, !noalias !3
  %wp3261 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3260, ptr %wp3261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063758 word 0xf9400129
  %r3262.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3262 = load i64, ptr %r3262.p, align 8, !alias.scope !3, !noalias !4
  %gmp3263 = inttoptr i64 %r3262 to ptr
  %gml3264 = load i64, ptr %gmp3263, align 1, !alias.scope !4, !noalias !3
  %wp3265 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3264, ptr %wp3265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006375c word 0xf940c12a
  %r3266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3266 = load i64, ptr %r3266.p, align 8, !alias.scope !3, !noalias !4
  %t3267 = add i64 %r3266, 384
  %gmp3268 = inttoptr i64 %t3267 to ptr
  %gml3269 = load i64, ptr %gmp3268, align 1, !alias.scope !4, !noalias !3
  %wp3270 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3269, ptr %wp3270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063760 word 0xb9418929
  %r3271.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3271 = load i64, ptr %r3271.p, align 8, !alias.scope !3, !noalias !4
  %t3272 = add i64 %r3271, 392
  %gmp3273 = inttoptr i64 %t3272 to ptr
  %gml3274 = load i32, ptr %gmp3273, align 1, !alias.scope !4, !noalias !3
  %c3275 = zext i32 %gml3274 to i64
  %wp3276 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3275, ptr %wp3276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063764 word 0xb9004d09
  %r3277.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3277 = load i64, ptr %r3277.p, align 8, !alias.scope !3, !noalias !4
  %t3278 = add i64 %r3277, 76
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %c3280 = trunc i64 %r3279 to i32
  %gmp3281 = inttoptr i64 %t3278 to ptr
  store i32 %c3280, ptr %gmp3281, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063768 word 0xb9406909
  %r3282.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3282 = load i64, ptr %r3282.p, align 8, !alias.scope !3, !noalias !4
  %t3283 = add i64 %r3282, 104
  %gmp3284 = inttoptr i64 %t3283 to ptr
  %gml3285 = load i32, ptr %gmp3284, align 1, !alias.scope !4, !noalias !3
  %c3286 = zext i32 %gml3285 to i64
  %wp3287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3286, ptr %wp3287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006376c word 0xf804410a
  %r3288.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3288 = load i64, ptr %r3288.p, align 8, !alias.scope !3, !noalias !4
  %t3289 = add i64 %r3288, 68
  %r3290.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3290 = load i64, ptr %r3290.p, align 8, !alias.scope !3, !noalias !4
  %gmp3291 = inttoptr i64 %t3289 to ptr
  store i64 %r3290, ptr %gmp3291, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063770 word 0x4b090009
  %r3292.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3292 = load i64, ptr %r3292.p, align 8, !alias.scope !3, !noalias !4
  %c3293 = trunc i64 %r3292 to i32
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %c3295 = trunc i64 %r3294 to i32
  %t3296 = sub i32 %c3293, %c3295
  %c3297 = zext i32 %t3296 to i64
  %wp3298 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3297, ptr %wp3298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063774 word 0xb9006909
  %r3299.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3299 = load i64, ptr %r3299.p, align 8, !alias.scope !3, !noalias !4
  %t3300 = add i64 %r3299, 104
  %r3301.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3301 = load i64, ptr %r3301.p, align 8, !alias.scope !3, !noalias !4
  %c3302 = trunc i64 %r3301 to i32
  %gmp3303 = inttoptr i64 %t3300 to ptr
  store i32 %c3302, ptr %gmp3303, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063778 word 0x17fffdb4
  br label %L_800062e48
L_8000637bc_ft:
  ; @pc 0x8000637bc word 0xf9400fea
  %r3384.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3384 = load i64, ptr %r3384.p, align 8, !alias.scope !3, !noalias !4
  %t3385 = add i64 %r3384, 24
  %gmp3386 = inttoptr i64 %t3385 to ptr
  %gml3387 = load i64, ptr %gmp3386, align 1, !alias.scope !4, !noalias !3
  %wp3388 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3387, ptr %wp3388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637c0 word 0xb973e54a
  %r3389.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3389 = load i64, ptr %r3389.p, align 8, !alias.scope !3, !noalias !4
  %t3390 = add i64 %r3389, 13284
  %gmp3391 = inttoptr i64 %t3390 to ptr
  %gml3392 = load i32, ptr %gmp3391, align 1, !alias.scope !4, !noalias !3
  %c3393 = zext i32 %gml3392 to i64
  %wp3394 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3393, ptr %wp3394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637c4 word 0x6b09015f
  %r3395.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3395 = load i64, ptr %r3395.p, align 8, !alias.scope !3, !noalias !4
  %c3396 = trunc i64 %r3395 to i32
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %c3398 = trunc i64 %r3397 to i32
  %t3399 = sub i32 %c3396, %c3398
  %fn3400 = icmp slt i32 %t3399, 0
  %fz3401 = icmp eq i32 %t3399, 0
  %fc3402 = icmp uge i32 %c3396, %c3398
  %fx13403 = xor i32 %c3396, %c3398
  %fx23404 = xor i32 %c3396, %t3399
  %fva3405 = and i32 %fx13403, %fx23404
  %fv3406 = icmp slt i32 %fva3405, 0
  %nz3407 = zext i1 %fn3400 to i64
  %zz3408 = zext i1 %fz3401 to i64
  %cz3409 = zext i1 %fc3402 to i64
  %vz3410 = zext i1 %fv3406 to i64
  %ns3411 = shl i64 %nz3407, 31
  %zs3412 = shl i64 %zz3408, 30
  %cs3413 = shl i64 %cz3409, 29
  %vs3414 = shl i64 %vz3410, 28
  %nzor3415 = or i64 %ns3411, %zs3412
  %cvor3416 = or i64 %cs3413, %vs3414
  %nzcv3417 = or i64 %nzor3415, %cvor3416
  %wp3418 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3417, ptr %wp3418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637c8 word 0x54ffc3ed
  %r3419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3419 = load i64, ptr %r3419.p, align 8, !alias.scope !3, !noalias !4
  %fsh3421 = lshr i64 %r3419, 30
  %ftr3422 = trunc i64 %fsh3421 to i1
  %fsh3423 = lshr i64 %r3419, 31
  %ftr3424 = trunc i64 %fsh3423 to i1
  %fsh3425 = lshr i64 %r3419, 28
  %ftr3426 = trunc i64 %fsh3425 to i1
  %fnz3427 = xor i1 %ftr3422, true
  %feq3428 = icmp eq i1 %ftr3424, %ftr3426
  %fgt3429 = and i1 %fnz3427, %feq3428
  %cond3420 = xor i1 %fgt3429, true
  br i1 %cond3420, label %L_800063044, label %L_8000637cc_ft
L_8000637cc_ft:
  ; @pc 0x8000637cc word 0xf9400fea
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %t3431 = add i64 %r3430, 24
  %gmp3432 = inttoptr i64 %t3431 to ptr
  %gml3433 = load i64, ptr %gmp3432, align 1, !alias.scope !4, !noalias !3
  %wp3434 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3433, ptr %wp3434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637d0 word 0x937d7d29
  %r3435.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3435 = load i64, ptr %r3435.p, align 8, !alias.scope !3, !noalias !4
  %ror3436 = call i64 @llvm.fshr.i64(i64 %r3435, i64 %r3435, i64 61)
  %t3437 = lshr i64 %r3435, 31
  %t3438 = and i64 %t3437, 1
  %t3439 = sub i64 0, %t3438
  %t3440 = and i64 %t3439, -34359738368
  %t3441 = and i64 %ror3436, 34359738360
  %t3442 = or i64 %t3440, %t3441
  %wp3443 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3442, ptr %wp3443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637d4 word 0xf959f54a
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %t3445 = add i64 %r3444, 13288
  %gmp3446 = inttoptr i64 %t3445 to ptr
  %gml3447 = load i64, ptr %gmp3446, align 1, !alias.scope !4, !noalias !3
  %wp3448 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3447, ptr %wp3448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000637d8 word 0xf8296948
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %r3450.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3450 = load i64, ptr %r3450.p, align 8, !alias.scope !3, !noalias !4
  %t3451 = add i64 %r3449, %r3450
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %gmp3453 = inttoptr i64 %t3451 to ptr
  store i64 %r3452, ptr %gmp3453, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000637dc word 0x17fffe1a
  br label %L_800063044
L_80006382c_ft:
  ; @pc 0x80006382c word 0xf94092c8
  %r3553.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3553 = load i64, ptr %r3553.p, align 8, !alias.scope !3, !noalias !4
  %t3554 = add i64 %r3553, 288
  %gmp3555 = inttoptr i64 %t3554 to ptr
  %gml3556 = load i64, ptr %gmp3555, align 1, !alias.scope !4, !noalias !3
  %wp3557 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3556, ptr %wp3557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063830 word 0x93797eea
  %r3558.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3558 = load i64, ptr %r3558.p, align 8, !alias.scope !3, !noalias !4
  %ror3559 = call i64 @llvm.fshr.i64(i64 %r3558, i64 %r3558, i64 57)
  %t3560 = lshr i64 %r3558, 31
  %t3561 = and i64 %t3560, 1
  %t3562 = sub i64 0, %t3561
  %t3563 = and i64 %t3562, -549755813888
  %t3564 = and i64 %ror3559, 549755813760
  %t3565 = or i64 %t3563, %t3564
  %wp3566 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3565, ptr %wp3566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063834 word 0xf86a6908
  %r3567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3567 = load i64, ptr %r3567.p, align 8, !alias.scope !3, !noalias !4
  %r3568.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3568 = load i64, ptr %r3568.p, align 8, !alias.scope !3, !noalias !4
  %t3569 = add i64 %r3567, %r3568
  %gmp3570 = inttoptr i64 %t3569 to ptr
  %gml3571 = load i64, ptr %gmp3570, align 1, !alias.scope !4, !noalias !3
  %wp3572 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3571, ptr %wp3572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063838 word 0xf9404508
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %t3574 = add i64 %r3573, 136
  %gmp3575 = inttoptr i64 %t3574 to ptr
  %gml3576 = load i64, ptr %gmp3575, align 1, !alias.scope !4, !noalias !3
  %wp3577 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3576, ptr %wp3577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006383c word 0xf9400d08
  %r3578.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3578 = load i64, ptr %r3578.p, align 8, !alias.scope !3, !noalias !4
  %t3579 = add i64 %r3578, 24
  %gmp3580 = inttoptr i64 %t3579 to ptr
  %gml3581 = load i64, ptr %gmp3580, align 1, !alias.scope !4, !noalias !3
  %wp3582 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3581, ptr %wp3582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063840 word 0xf9400908
  %r3583.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3583 = load i64, ptr %r3583.p, align 8, !alias.scope !3, !noalias !4
  %t3584 = add i64 %r3583, 16
  %gmp3585 = inttoptr i64 %t3584 to ptr
  %gml3586 = load i64, ptr %gmp3585, align 1, !alias.scope !4, !noalias !3
  %wp3587 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3586, ptr %wp3587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063844 word 0xb4000d48
  %r3588.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3588 = load i64, ptr %r3588.p, align 8, !alias.scope !3, !noalias !4
  %cmp3589 = icmp eq i64 %r3588, 0
  br i1 %cmp3589, label %L_8000639ec, label %L_800063848_ft
L_800063848_ft:
  ; @pc 0x800063848 word 0xf9400108
  %r3590.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3590 = load i64, ptr %r3590.p, align 8, !alias.scope !3, !noalias !4
  %gmp3591 = inttoptr i64 %r3590 to ptr
  %gml3592 = load i64, ptr %gmp3591, align 1, !alias.scope !4, !noalias !3
  %wp3593 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3592, ptr %wp3593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006384c word 0xb4000d08
  %r3594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3594 = load i64, ptr %r3594.p, align 8, !alias.scope !3, !noalias !4
  %cmp3595 = icmp eq i64 %r3594, 0
  br i1 %cmp3595, label %L_8000639ec, label %L_800063850_ft
L_800063850_ft:
  ; @pc 0x800063850 word 0xf940150a
  %r3596.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3596 = load i64, ptr %r3596.p, align 8, !alias.scope !3, !noalias !4
  %t3597 = add i64 %r3596, 40
  %gmp3598 = inttoptr i64 %t3597 to ptr
  %gml3599 = load i64, ptr %gmp3598, align 1, !alias.scope !4, !noalias !3
  %wp3600 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3599, ptr %wp3600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063854 word 0xb4000cca
  %r3601.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3601 = load i64, ptr %r3601.p, align 8, !alias.scope !3, !noalias !4
  %cmp3602 = icmp eq i64 %r3601, 0
  br i1 %cmp3602, label %L_8000639ec, label %L_800063858_ft
L_800063858_ft:
  ; @pc 0x800063858 word 0xaa0a03eb
  %r3603.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3603 = load i64, ptr %r3603.p, align 8, !alias.scope !3, !noalias !4
  %t3604 = or i64 0, %r3603
  %wp3605 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3604, ptr %wp3605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006385c word 0xb8408d6c
  %r3606.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3606 = load i64, ptr %r3606.p, align 8, !alias.scope !3, !noalias !4
  %t3607 = add i64 %r3606, 8
  %gmp3608 = inttoptr i64 %t3607 to ptr
  %gml3609 = load i32, ptr %gmp3608, align 1, !alias.scope !4, !noalias !3
  %c3610 = zext i32 %gml3609 to i64
  %wp3611 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3607, ptr %wp3611, align 8, !alias.scope !3, !noalias !4
  %wp3612 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3610, ptr %wp3612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063860 word 0x79400968
  %r3613.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3613 = load i64, ptr %r3613.p, align 8, !alias.scope !3, !noalias !4
  %t3614 = add i64 %r3613, 4
  %gmp3615 = inttoptr i64 %t3614 to ptr
  %gml3616 = load i16, ptr %gmp3615, align 1, !alias.scope !4, !noalias !3
  %c3617 = zext i16 %gml3616 to i64
  %wp3618 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3617, ptr %wp3618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063864 word 0xd37c7d0d
  %r3619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3619 = load i64, ptr %r3619.p, align 8, !alias.scope !3, !noalias !4
  %ror3620 = call i64 @llvm.fshr.i64(i64 %r3619, i64 %r3619, i64 60)
  %t3621 = and i64 %ror3620, 68719476720
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063868 word 0xb86d696b
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %r3624.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3624 = load i64, ptr %r3624.p, align 8, !alias.scope !3, !noalias !4
  %t3625 = add i64 %r3623, %r3624
  %gmp3626 = inttoptr i64 %t3625 to ptr
  %gml3627 = load i32, ptr %gmp3626, align 1, !alias.scope !4, !noalias !3
  %c3628 = zext i32 %gml3627 to i64
  %wp3629 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3628, ptr %wp3629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006386c word 0x6b0b019f
  %r3630.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3630 = load i64, ptr %r3630.p, align 8, !alias.scope !3, !noalias !4
  %c3631 = trunc i64 %r3630 to i32
  %r3632.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3632 = load i64, ptr %r3632.p, align 8, !alias.scope !3, !noalias !4
  %c3633 = trunc i64 %r3632 to i32
  %t3634 = sub i32 %c3631, %c3633
  %fn3635 = icmp slt i32 %t3634, 0
  %fz3636 = icmp eq i32 %t3634, 0
  %fc3637 = icmp uge i32 %c3631, %c3633
  %fx13638 = xor i32 %c3631, %c3633
  %fx23639 = xor i32 %c3631, %t3634
  %fva3640 = and i32 %fx13638, %fx23639
  %fv3641 = icmp slt i32 %fva3640, 0
  %nz3642 = zext i1 %fn3635 to i64
  %zz3643 = zext i1 %fz3636 to i64
  %cz3644 = zext i1 %fc3637 to i64
  %vz3645 = zext i1 %fv3641 to i64
  %ns3646 = shl i64 %nz3642, 31
  %zs3647 = shl i64 %zz3643, 30
  %cs3648 = shl i64 %cz3644, 29
  %vs3649 = shl i64 %vz3645, 28
  %nzor3650 = or i64 %ns3646, %zs3647
  %cvor3651 = or i64 %cs3648, %vs3649
  %nzcv3652 = or i64 %nzor3650, %cvor3651
  %wp3653 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3652, ptr %wp3653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063870 word 0x5400024a
  %r3654.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3654 = load i64, ptr %r3654.p, align 8, !alias.scope !3, !noalias !4
  %fsh3656 = lshr i64 %r3654, 31
  %ftr3657 = trunc i64 %fsh3656 to i1
  %fsh3658 = lshr i64 %r3654, 28
  %ftr3659 = trunc i64 %fsh3658 to i1
  %cond3655 = icmp eq i1 %ftr3657, %ftr3659
  br i1 %cond3655, label %L_8000638b8, label %L_800063874
L_80006387c_ft:
  ; @pc 0x80006387c word 0x53037d6c
  %r3689.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3689 = load i64, ptr %r3689.p, align 8, !alias.scope !3, !noalias !4
  %c3690 = trunc i64 %r3689 to i32
  %ror3691 = call i32 @llvm.fshr.i32(i32 %c3690, i32 %c3690, i32 3)
  %t3692 = and i32 %ror3691, 536870911
  %c3693 = zext i32 %t3692 to i64
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3693, ptr %wp3694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063880 word 0x9240096d
  %r3695.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3695 = load i64, ptr %r3695.p, align 8, !alias.scope !3, !noalias !4
  %t3696 = and i64 %r3695, 7
  %wp3697 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3696, ptr %wp3697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063884 word 0xcb0c012c
  %r3698.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3698 = load i64, ptr %r3698.p, align 8, !alias.scope !3, !noalias !4
  %r3699.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3699 = load i64, ptr %r3699.p, align 8, !alias.scope !3, !noalias !4
  %t3700 = sub i64 %r3698, %r3699
  %wp3701 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3700, ptr %wp3701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063888 word 0x3940658c
  %r3702.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3702 = load i64, ptr %r3702.p, align 8, !alias.scope !3, !noalias !4
  %t3703 = add i64 %r3702, 25
  %gmp3704 = inttoptr i64 %t3703 to ptr
  %gml3705 = load i8, ptr %gmp3704, align 1, !alias.scope !4, !noalias !3
  %c3706 = zext i8 %gml3705 to i64
  %wp3707 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3706, ptr %wp3707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006388c word 0x9acd258c
  %r3708.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3708 = load i64, ptr %r3708.p, align 8, !alias.scope !3, !noalias !4
  %r3709.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3709 = load i64, ptr %r3709.p, align 8, !alias.scope !3, !noalias !4
  %t3710 = and i64 %r3709, 63
  %t3711 = lshr i64 %r3708, %t3710
  %wp3712 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3711, ptr %wp3712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063890 word 0x9240018c
  %r3713.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3713 = load i64, ptr %r3713.p, align 8, !alias.scope !3, !noalias !4
  %t3714 = and i64 %r3713, 1
  %wp3715 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3714, ptr %wp3715, align 8, !alias.scope !3, !noalias !4
  br label %L_800063894
L_8000638cc_ft:
  ; @pc 0x8000638cc word 0xf840212a
  %r3822.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3822 = load i64, ptr %r3822.p, align 8, !alias.scope !3, !noalias !4
  %t3823 = add i64 %r3822, 2
  %gmp3824 = inttoptr i64 %t3823 to ptr
  %gml3825 = load i64, ptr %gmp3824, align 1, !alias.scope !4, !noalias !3
  %wp3826 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3825, ptr %wp3826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638d0 word 0xd28bee0d
  %wp3827 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 24432, ptr %wp3827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638d4 word 0xf2af2c8d
  %r3828.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3828 = load i64, ptr %r3828.p, align 8, !alias.scope !3, !noalias !4
  %t3829 = and i64 %r3828, -4294901761
  %t3830 = or i64 %t3829, 2036596736
  %wp3831 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3830, ptr %wp3831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638d8 word 0xf840a12b
  %r3832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3832 = load i64, ptr %r3832.p, align 8, !alias.scope !3, !noalias !4
  %t3833 = add i64 %r3832, 10
  %gmp3834 = inttoptr i64 %t3833 to ptr
  %gml3835 = load i64, ptr %gmp3834, align 1, !alias.scope !4, !noalias !3
  %wp3836 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3835, ptr %wp3836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638dc word 0xf2cc2dcd
  %r3837.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3837 = load i64, ptr %r3837.p, align 8, !alias.scope !3, !noalias !4
  %t3838 = and i64 %r3837, -281470681743361
  %t3839 = or i64 %t3838, 107125074296832
  %wp3840 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3839, ptr %wp3840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638e0 word 0xf2ed2dad
  %r3841.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3841 = load i64, ptr %r3841.p, align 8, !alias.scope !3, !noalias !4
  %t3842 = and i64 %r3841, 281474976710655
  %t3843 = or i64 %t3842, 7596728146443894784
  %wp3844 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3843, ptr %wp3844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638e4 word 0xf841212c
  %r3845.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3845 = load i64, ptr %r3845.p, align 8, !alias.scope !3, !noalias !4
  %t3846 = add i64 %r3845, 18
  %gmp3847 = inttoptr i64 %t3846 to ptr
  %gml3848 = load i64, ptr %gmp3847, align 1, !alias.scope !4, !noalias !3
  %wp3849 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3848, ptr %wp3849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638e8 word 0xeb0d015f
  %r3850.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3850 = load i64, ptr %r3850.p, align 8, !alias.scope !3, !noalias !4
  %r3851.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3851 = load i64, ptr %r3851.p, align 8, !alias.scope !3, !noalias !4
  %t3852 = sub i64 %r3850, %r3851
  %fn3853 = icmp slt i64 %t3852, 0
  %fz3854 = icmp eq i64 %t3852, 0
  %fc3855 = icmp uge i64 %r3850, %r3851
  %fx13856 = xor i64 %r3850, %r3851
  %fx23857 = xor i64 %r3850, %t3852
  %fva3858 = and i64 %fx13856, %fx23857
  %fv3859 = icmp slt i64 %fva3858, 0
  %nz3860 = zext i1 %fn3853 to i64
  %zz3861 = zext i1 %fz3854 to i64
  %cz3862 = zext i1 %fc3855 to i64
  %vz3863 = zext i1 %fv3859 to i64
  %ns3864 = shl i64 %nz3860, 31
  %zs3865 = shl i64 %zz3861, 30
  %cs3866 = shl i64 %cz3862, 29
  %vs3867 = shl i64 %vz3863, 28
  %nzor3868 = or i64 %ns3864, %zs3865
  %cvor3869 = or i64 %cs3866, %vs3867
  %nzcv3870 = or i64 %nzor3868, %cvor3869
  %wp3871 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3870, ptr %wp3871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638ec word 0xd28bec6a
  %wp3872 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 24419, ptr %wp3872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638f0 word 0xf2acae4a
  %r3873.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3873 = load i64, ptr %r3873.p, align 8, !alias.scope !3, !noalias !4
  %t3874 = and i64 %r3873, -4294901761
  %t3875 = or i64 %t3874, 1701969920
  %wp3876 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3875, ptr %wp3876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638f4 word 0x79403529
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %t3878 = add i64 %r3877, 26
  %gmp3879 = inttoptr i64 %t3878 to ptr
  %gml3880 = load i16, ptr %gmp3879, align 1, !alias.scope !4, !noalias !3
  %c3881 = zext i16 %gml3880 to i64
  %wp3882 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3881, ptr %wp3882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638f8 word 0xf2cdee6a
  %r3883.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3883 = load i64, ptr %r3883.p, align 8, !alias.scope !3, !noalias !4
  %t3884 = and i64 %r3883, -281470681743361
  %t3885 = or i64 %t3884, 122539711922176
  %wp3886 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3885, ptr %wp3886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000638fc word 0xf2eead8a
  %r3887.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3887 = load i64, ptr %r3887.p, align 8, !alias.scope !3, !noalias !4
  %t3888 = and i64 %r3887, 281474976710655
  %t3889 = or i64 %t3888, 8461137799922319360
  %wp3890 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3889, ptr %wp3890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063900 word 0xfa4a0160
  %r3891.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3891 = load i64, ptr %r3891.p, align 8, !alias.scope !3, !noalias !4
  %fsh3893 = lshr i64 %r3891, 30
  %cond3892 = trunc i64 %fsh3893 to i1
  %r3894.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3894 = load i64, ptr %r3894.p, align 8, !alias.scope !3, !noalias !4
  %r3895.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3895 = load i64, ptr %r3895.p, align 8, !alias.scope !3, !noalias !4
  %t3896 = sub i64 %r3894, %r3895
  %cmp3897 = icmp slt i64 %t3896, 0
  %cmp3898 = icmp eq i64 %t3896, 0
  %cmp3899 = icmp uge i64 %r3894, %r3895
  %t3900 = xor i64 %r3894, %r3895
  %t3901 = xor i64 %r3894, %t3896
  %t3902 = and i64 %t3900, %t3901
  %cmp3903 = icmp slt i64 %t3902, 0
  %c3904 = zext i1 %cmp3897 to i64
  %t3905 = shl i64 %c3904, 31
  %c3906 = zext i1 %cmp3898 to i64
  %t3907 = shl i64 %c3906, 30
  %c3908 = zext i1 %cmp3899 to i64
  %t3909 = shl i64 %c3908, 29
  %c3910 = zext i1 %cmp3903 to i64
  %t3911 = shl i64 %c3910, 28
  %t3912 = or i64 %t3909, %t3911
  %t3913 = or i64 %t3905, %t3907
  %t3914 = or i64 %t3913, %t3912
  %sel3915 = select i1 %cond3892, i64 %t3914, i64 0
  %wp3916 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel3915, ptr %wp3916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063904 word 0xd28d2e8a
  %wp3917 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 26996, ptr %wp3917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063908 word 0xf2adcdea
  %r3918.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3918 = load i64, ptr %r3918.p, align 8, !alias.scope !3, !noalias !4
  %t3919 = and i64 %r3918, -4294901761
  %t3920 = or i64 %t3919, 1852768256
  %wp3921 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3920, ptr %wp3921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006390c word 0xf2ce4bea
  %r3922.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3922 = load i64, ptr %r3922.p, align 8, !alias.scope !3, !noalias !4
  %t3923 = and i64 %r3922, -281470681743361
  %t3924 = or i64 %t3923, 125752347459584
  %wp3925 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3924, ptr %wp3925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063910 word 0xf2ee8c2a
  %r3926.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3926 = load i64, ptr %r3926.p, align 8, !alias.scope !3, !noalias !4
  %t3927 = and i64 %r3926, 281474976710655
  %t3928 = or i64 %t3927, 8385983981140574208
  %wp3929 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3928, ptr %wp3929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063914 word 0xfa4a0180
  %r3930.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3930 = load i64, ptr %r3930.p, align 8, !alias.scope !3, !noalias !4
  %fsh3932 = lshr i64 %r3930, 30
  %cond3931 = trunc i64 %fsh3932 to i1
  %r3933.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3933 = load i64, ptr %r3933.p, align 8, !alias.scope !3, !noalias !4
  %r3934.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3934 = load i64, ptr %r3934.p, align 8, !alias.scope !3, !noalias !4
  %t3935 = sub i64 %r3933, %r3934
  %cmp3936 = icmp slt i64 %t3935, 0
  %cmp3937 = icmp eq i64 %t3935, 0
  %cmp3938 = icmp uge i64 %r3933, %r3934
  %t3939 = xor i64 %r3933, %r3934
  %t3940 = xor i64 %r3933, %t3935
  %t3941 = and i64 %t3939, %t3940
  %cmp3942 = icmp slt i64 %t3941, 0
  %c3943 = zext i1 %cmp3936 to i64
  %t3944 = shl i64 %c3943, 31
  %c3945 = zext i1 %cmp3937 to i64
  %t3946 = shl i64 %c3945, 30
  %c3947 = zext i1 %cmp3938 to i64
  %t3948 = shl i64 %c3947, 29
  %c3949 = zext i1 %cmp3942 to i64
  %t3950 = shl i64 %c3949, 28
  %t3951 = or i64 %t3948, %t3950
  %t3952 = or i64 %t3944, %t3946
  %t3953 = or i64 %t3952, %t3951
  %sel3954 = select i1 %cond3931, i64 %t3953, i64 0
  %wp3955 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel3954, ptr %wp3955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063918 word 0x528ded2a
  %c3956 = zext i32 28521 to i64
  %wp3957 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3956, ptr %wp3957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006391c word 0x7a4a0120
  %r3958.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3958 = load i64, ptr %r3958.p, align 8, !alias.scope !3, !noalias !4
  %fsh3960 = lshr i64 %r3958, 30
  %cond3959 = trunc i64 %fsh3960 to i1
  %r3961.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3961 = load i64, ptr %r3961.p, align 8, !alias.scope !3, !noalias !4
  %c3962 = trunc i64 %r3961 to i32
  %r3963.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3963 = load i64, ptr %r3963.p, align 8, !alias.scope !3, !noalias !4
  %c3964 = trunc i64 %r3963 to i32
  %t3965 = sub i32 %c3962, %c3964
  %cmp3966 = icmp slt i32 %t3965, 0
  %cmp3967 = icmp eq i32 %t3965, 0
  %cmp3968 = icmp uge i32 %c3962, %c3964
  %t3969 = xor i32 %c3962, %c3964
  %t3970 = xor i32 %c3962, %t3965
  %t3971 = and i32 %t3969, %t3970
  %cmp3972 = icmp slt i32 %t3971, 0
  %c3973 = zext i1 %cmp3966 to i64
  %t3974 = shl i64 %c3973, 31
  %c3975 = zext i1 %cmp3967 to i64
  %t3976 = shl i64 %c3975, 30
  %c3977 = zext i1 %cmp3968 to i64
  %t3978 = shl i64 %c3977, 29
  %c3979 = zext i1 %cmp3972 to i64
  %t3980 = shl i64 %c3979, 28
  %t3981 = or i64 %t3978, %t3980
  %t3982 = or i64 %t3974, %t3976
  %t3983 = or i64 %t3982, %t3981
  %sel3984 = select i1 %cond3959, i64 %t3983, i64 0
  %wp3985 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel3984, ptr %wp3985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063920 word 0x54000661
  %r3986.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3986 = load i64, ptr %r3986.p, align 8, !alias.scope !3, !noalias !4
  %fsh3988 = lshr i64 %r3986, 30
  %ftr3989 = trunc i64 %fsh3988 to i1
  %cond3987 = xor i1 %ftr3989, true
  br i1 %cond3987, label %L_8000639ec, label %L_800063924_ft
L_800063924_ft:
  ; @pc 0x800063924 word 0x51000502
  %r3990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3990 = load i64, ptr %r3990.p, align 8, !alias.scope !3, !noalias !4
  %c3991 = trunc i64 %r3990 to i32
  %t3992 = sub i32 %c3991, 1
  %c3993 = zext i32 %t3992 to i64
  %wp3994 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3993, ptr %wp3994, align 8, !alias.scope !3, !noalias !4
  br label %L_800063928
L_800063930_ft:
  ; @pc 0x800063930 word 0x52a88c28
  %c4020 = zext i32 1147207680 to i64
  %wp4021 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4020, ptr %wp4021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063934 word 0x1e293900
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 8, i32 9)
  ; @pc 0x800063938 word 0xb001c749
  %wp4022 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp4022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006393c word 0x1e270101
  %r4023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4023 = load i64, ptr %r4023.p, align 8, !alias.scope !3, !noalias !4
  %c4024 = trunc i64 %r4023 to i32
  %c4025 = zext i32 %c4024 to i128
  %wp4026 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c4025, ptr %wp4026, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063940 word 0xf94002c8
  %r4027.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4027 = load i64, ptr %r4027.p, align 8, !alias.scope !3, !noalias !4
  %gmp4028 = inttoptr i64 %r4027 to ptr
  %gml4029 = load i64, ptr %gmp4028, align 1, !alias.scope !4, !noalias !3
  %wp4030 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4029, ptr %wp4030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063944 word 0x1e211802
  call void @rt_fp_op_s(ptr %c, i32 5, i32 2, i32 0, i32 1)
  ; @pc 0x800063948 word 0x1e212000
  %fcmp4031 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp4032 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp4031, ptr %wp4032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006394c word 0x1e2e1000
  %wp4033 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1065353216, ptr %wp4033, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063950 word 0xf9409508
  %r4034.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4034 = load i64, ptr %r4034.p, align 8, !alias.scope !3, !noalias !4
  %t4035 = add i64 %r4034, 296
  %gmp4036 = inttoptr i64 %t4035 to ptr
  %gml4037 = load i64, ptr %gmp4036, align 1, !alias.scope !4, !noalias !3
  %wp4038 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4037, ptr %wp4038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063954 word 0xf946f929
  %r4039.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4039 = load i64, ptr %r4039.p, align 8, !alias.scope !3, !noalias !4
  %t4040 = add i64 %r4039, 3568
  %gmp4041 = inttoptr i64 %t4040 to ptr
  %gml4042 = load i64, ptr %gmp4041, align 1, !alias.scope !4, !noalias !3
  %wp4043 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4042, ptr %wp4043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063958 word 0x1e20cc40
  %r4044.p = getelementptr inbounds i8, ptr %c, i64 544
  %r4044 = load i128, ptr %r4044.p, align 16, !alias.scope !3, !noalias !4
  %c4045 = trunc i128 %r4044 to i32
  %r4046.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4046 = load i128, ptr %r4046.p, align 16, !alias.scope !3, !noalias !4
  %c4047 = trunc i128 %r4046 to i32
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %fsh4050 = lshr i64 %r4048, 30
  %ftr4051 = trunc i64 %fsh4050 to i1
  %fsh4052 = lshr i64 %r4048, 31
  %ftr4053 = trunc i64 %fsh4052 to i1
  %fsh4054 = lshr i64 %r4048, 28
  %ftr4055 = trunc i64 %fsh4054 to i1
  %fnz4056 = xor i1 %ftr4051, true
  %feq4057 = icmp eq i1 %ftr4053, %ftr4055
  %cond4049 = and i1 %fnz4056, %feq4057
  %sel4058 = select i1 %cond4049, i32 %c4045, i32 %c4047
  %c4059 = zext i32 %sel4058 to i128
  %wp4060 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4059, ptr %wp4060, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006395c word 0xeb09011f
  %r4061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4061 = load i64, ptr %r4061.p, align 8, !alias.scope !3, !noalias !4
  %r4062.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4062 = load i64, ptr %r4062.p, align 8, !alias.scope !3, !noalias !4
  %t4063 = sub i64 %r4061, %r4062
  %fn4064 = icmp slt i64 %t4063, 0
  %fz4065 = icmp eq i64 %t4063, 0
  %fc4066 = icmp uge i64 %r4061, %r4062
  %fx14067 = xor i64 %r4061, %r4062
  %fx24068 = xor i64 %r4061, %t4063
  %fva4069 = and i64 %fx14067, %fx24068
  %fv4070 = icmp slt i64 %fva4069, 0
  %nz4071 = zext i1 %fn4064 to i64
  %zz4072 = zext i1 %fz4065 to i64
  %cz4073 = zext i1 %fc4066 to i64
  %vz4074 = zext i1 %fv4070 to i64
  %ns4075 = shl i64 %nz4071, 31
  %zs4076 = shl i64 %zz4072, 30
  %cs4077 = shl i64 %cz4073, 29
  %vs4078 = shl i64 %vz4074, 28
  %nzor4079 = or i64 %ns4075, %zs4076
  %cvor4080 = or i64 %cs4077, %vs4078
  %nzcv4081 = or i64 %nzor4079, %cvor4080
  %wp4082 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4081, ptr %wp4082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063960 word 0x540041c1
  %r4083.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4083 = load i64, ptr %r4083.p, align 8, !alias.scope !3, !noalias !4
  %fsh4085 = lshr i64 %r4083, 30
  %ftr4086 = trunc i64 %fsh4085 to i1
  %cond4084 = xor i1 %ftr4086, true
  br i1 %cond4084, label %L_800064198, label %L_800063964_ft
L_800063964_ft:
  ; @pc 0x800063964 word 0x394052c8
  %r4087.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4087 = load i64, ptr %r4087.p, align 8, !alias.scope !3, !noalias !4
  %t4088 = add i64 %r4087, 20
  %gmp4089 = inttoptr i64 %t4088 to ptr
  %gml4090 = load i8, ptr %gmp4089, align 1, !alias.scope !4, !noalias !3
  %c4091 = zext i8 %gml4090 to i64
  %wp4092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4091, ptr %wp4092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063968 word 0x1280000b
  %c4093 = zext i32 -1 to i64
  %wp4094 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4093, ptr %wp4094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006396c word 0x93407ee9
  %r4095.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4095 = load i64, ptr %r4095.p, align 8, !alias.scope !3, !noalias !4
  %t4096 = lshr i64 %r4095, 31
  %t4097 = and i64 %t4096, 1
  %t4098 = sub i64 0, %t4097
  %t4099 = and i64 %t4098, -4294967296
  %t4100 = and i64 %r4095, 4294967295
  %t4101 = or i64 %t4099, %t4100
  %wp4102 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4101, ptr %wp4102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063970 word 0xd3420d0a
  %r4103.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4103 = load i64, ptr %r4103.p, align 8, !alias.scope !3, !noalias !4
  %ror4104 = call i64 @llvm.fshr.i64(i64 %r4103, i64 %r4103, i64 2)
  %t4105 = and i64 %ror4104, 3
  %wp4106 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4105, ptr %wp4106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063974 word 0x1aca216a
  %r4107.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4107 = load i64, ptr %r4107.p, align 8, !alias.scope !3, !noalias !4
  %c4108 = trunc i64 %r4107 to i32
  %r4109.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4109 = load i64, ptr %r4109.p, align 8, !alias.scope !3, !noalias !4
  %c4110 = trunc i64 %r4109 to i32
  %t4111 = and i32 %c4110, 31
  %t4112 = shl i32 %c4108, %t4111
  %c4113 = zext i32 %t4112 to i64
  %wp4114 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4113, ptr %wp4114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063978 word 0x2a2a03ea
  %r4115.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4115 = load i64, ptr %r4115.p, align 8, !alias.scope !3, !noalias !4
  %c4116 = trunc i64 %r4115 to i32
  %t4117 = xor i32 %c4116, -1
  %t4118 = or i32 0, %t4117
  %c4119 = zext i32 %t4118 to i64
  %wp4120 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4119, ptr %wp4120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006397c word 0x331a0948
  %r4121.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4121 = load i64, ptr %r4121.p, align 8, !alias.scope !3, !noalias !4
  %c4122 = trunc i64 %r4121 to i32
  %ror4123 = call i32 @llvm.fshr.i32(i32 %c4122, i32 %c4122, i32 26)
  %r4124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4124 = load i64, ptr %r4124.p, align 8, !alias.scope !3, !noalias !4
  %c4125 = trunc i64 %r4124 to i32
  %t4126 = and i32 %ror4123, 448
  %t4127 = and i32 %c4125, -449
  %t4128 = or i32 %t4127, %t4126
  %t4129 = and i32 %t4128, 511
  %t4130 = and i32 %c4125, -512
  %t4131 = or i32 %t4130, %t4129
  %c4132 = zext i32 %t4131 to i64
  %wp4133 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4132, ptr %wp4133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063980 word 0xf94092ca
  %r4134.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4134 = load i64, ptr %r4134.p, align 8, !alias.scope !3, !noalias !4
  %t4135 = add i64 %r4134, 288
  %gmp4136 = inttoptr i64 %t4135 to ptr
  %gml4137 = load i64, ptr %gmp4136, align 1, !alias.scope !4, !noalias !3
  %wp4138 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4137, ptr %wp4138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063984 word 0x390052c8
  %r4139.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4139 = load i64, ptr %r4139.p, align 8, !alias.scope !3, !noalias !4
  %t4140 = add i64 %r4139, 20
  %r4141.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4141 = load i64, ptr %r4141.p, align 8, !alias.scope !3, !noalias !4
  %c4142 = trunc i64 %r4141 to i32
  %c4143 = trunc i32 %c4142 to i8
  %gmp4144 = inttoptr i64 %t4140 to ptr
  store i8 %c4143, ptr %gmp4144, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063988 word 0xd379e128
  %r4145.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4145 = load i64, ptr %r4145.p, align 8, !alias.scope !3, !noalias !4
  %ror4146 = call i64 @llvm.fshr.i64(i64 %r4145, i64 %r4145, i64 57)
  %t4147 = and i64 %ror4146, -128
  %wp4148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4147, ptr %wp4148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006398c word 0xf868694b
  %r4149.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4149 = load i64, ptr %r4149.p, align 8, !alias.scope !3, !noalias !4
  %r4150.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4150 = load i64, ptr %r4150.p, align 8, !alias.scope !3, !noalias !4
  %t4151 = add i64 %r4149, %r4150
  %gmp4152 = inttoptr i64 %t4151 to ptr
  %gml4153 = load i64, ptr %gmp4152, align 1, !alias.scope !4, !noalias !3
  %wp4154 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4153, ptr %wp4154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063990 word 0x8b091d49
  %r4155.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4155 = load i64, ptr %r4155.p, align 8, !alias.scope !3, !noalias !4
  %r4156.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4156 = load i64, ptr %r4156.p, align 8, !alias.scope !3, !noalias !4
  %t4157 = shl i64 %r4156, 7
  %t4158 = add i64 %r4155, %t4157
  %wp4159 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4158, ptr %wp4159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063994 word 0xf9400968
  %r4160.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4160 = load i64, ptr %r4160.p, align 8, !alias.scope !3, !noalias !4
  %t4161 = add i64 %r4160, 16
  %gmp4162 = inttoptr i64 %t4161 to ptr
  %gml4163 = load i64, ptr %gmp4162, align 1, !alias.scope !4, !noalias !3
  %wp4164 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4163, ptr %wp4164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063998 word 0xf940316b
  %r4165.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4165 = load i64, ptr %r4165.p, align 8, !alias.scope !3, !noalias !4
  %t4166 = add i64 %r4165, 96
  %gmp4167 = inttoptr i64 %t4166 to ptr
  %gml4168 = load i64, ptr %gmp4167, align 1, !alias.scope !4, !noalias !3
  %wp4169 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4168, ptr %wp4169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006399c word 0xf9400108
  %r4170.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4170 = load i64, ptr %r4170.p, align 8, !alias.scope !3, !noalias !4
  %gmp4171 = inttoptr i64 %r4170 to ptr
  %gml4172 = load i64, ptr %gmp4171, align 1, !alias.scope !4, !noalias !3
  %wp4173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4172, ptr %wp4173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639a0 word 0xb862d96b
  %r4174.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4174 = load i64, ptr %r4174.p, align 8, !alias.scope !3, !noalias !4
  %r4175.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4175 = load i64, ptr %r4175.p, align 8, !alias.scope !3, !noalias !4
  %c4176 = trunc i64 %r4175 to i32
  %c4177 = sext i32 %c4176 to i64
  %t4178 = shl i64 %c4177, 2
  %t4179 = add i64 %r4174, %t4178
  %gmp4180 = inttoptr i64 %t4179 to ptr
  %gml4181 = load i32, ptr %gmp4180, align 1, !alias.scope !4, !noalias !3
  %c4182 = zext i32 %gml4181 to i64
  %wp4183 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4182, ptr %wp4183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639a4 word 0xf9401108
  %r4184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4184 = load i64, ptr %r4184.p, align 8, !alias.scope !3, !noalias !4
  %t4185 = add i64 %r4184, 32
  %gmp4186 = inttoptr i64 %t4185 to ptr
  %gml4187 = load i64, ptr %gmp4186, align 1, !alias.scope !4, !noalias !3
  %wp4188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4187, ptr %wp4188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639a8 word 0x37f8016b
  %r4189.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4189 = load i64, ptr %r4189.p, align 8, !alias.scope !3, !noalias !4
  %t4190 = and i64 %r4189, 2147483648
  %cmp4191 = icmp ne i64 %t4190, 0
  br i1 %cmp4191, label %L_8000639d4, label %L_8000639ac_ft
L_8000639ac_ft:
  ; @pc 0x8000639ac word 0xf940092b
  %r4192.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4192 = load i64, ptr %r4192.p, align 8, !alias.scope !3, !noalias !4
  %t4193 = add i64 %r4192, 16
  %gmp4194 = inttoptr i64 %t4193 to ptr
  %gml4195 = load i64, ptr %gmp4194, align 1, !alias.scope !4, !noalias !3
  %wp4196 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4195, ptr %wp4196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639b0 word 0x13057c4c
  %r4197.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4197 = load i64, ptr %r4197.p, align 8, !alias.scope !3, !noalias !4
  %c4198 = trunc i64 %r4197 to i32
  %ror4199 = call i32 @llvm.fshr.i32(i32 %c4198, i32 %c4198, i32 5)
  %t4200 = lshr i32 %c4198, 31
  %t4201 = and i32 %t4200, 1
  %t4202 = sub i32 0, %t4201
  %t4203 = and i32 %t4202, -134217728
  %t4204 = and i32 %ror4199, 134217727
  %t4205 = or i32 %t4203, %t4204
  %c4206 = zext i32 %t4205 to i64
  %wp4207 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4206, ptr %wp4207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639b4 word 0x5280002a
  %c4208 = zext i32 1 to i64
  %wp4209 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4208, ptr %wp4209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639b8 word 0x1ac2214a
  %r4210.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4210 = load i64, ptr %r4210.p, align 8, !alias.scope !3, !noalias !4
  %c4211 = trunc i64 %r4210 to i32
  %r4212.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4212 = load i64, ptr %r4212.p, align 8, !alias.scope !3, !noalias !4
  %c4213 = trunc i64 %r4212 to i32
  %t4214 = and i32 %c4213, 31
  %t4215 = shl i32 %c4211, %t4214
  %c4216 = zext i32 %t4215 to i64
  %wp4217 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4216, ptr %wp4217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639bc word 0xb86cd96d
  %r4218.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4218 = load i64, ptr %r4218.p, align 8, !alias.scope !3, !noalias !4
  %r4219.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4219 = load i64, ptr %r4219.p, align 8, !alias.scope !3, !noalias !4
  %c4220 = trunc i64 %r4219 to i32
  %c4221 = sext i32 %c4220 to i64
  %t4222 = shl i64 %c4221, 2
  %t4223 = add i64 %r4218, %t4222
  %gmp4224 = inttoptr i64 %t4223 to ptr
  %gml4225 = load i32, ptr %gmp4224, align 1, !alias.scope !4, !noalias !3
  %c4226 = zext i32 %gml4225 to i64
  %wp4227 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4226, ptr %wp4227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639c0 word 0x2a0a01aa
  %r4228.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4228 = load i64, ptr %r4228.p, align 8, !alias.scope !3, !noalias !4
  %c4229 = trunc i64 %r4228 to i32
  %r4230.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4230 = load i64, ptr %r4230.p, align 8, !alias.scope !3, !noalias !4
  %c4231 = trunc i64 %r4230 to i32
  %t4232 = or i32 %c4231, %c4229
  %c4233 = zext i32 %t4232 to i64
  %wp4234 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4233, ptr %wp4234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639c4 word 0xb82cd96a
  %r4235.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4235 = load i64, ptr %r4235.p, align 8, !alias.scope !3, !noalias !4
  %r4236.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4236 = load i64, ptr %r4236.p, align 8, !alias.scope !3, !noalias !4
  %c4237 = trunc i64 %r4236 to i32
  %c4238 = sext i32 %c4237 to i64
  %t4239 = shl i64 %c4238, 2
  %t4240 = add i64 %r4235, %t4239
  %r4241.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4241 = load i64, ptr %r4241.p, align 8, !alias.scope !3, !noalias !4
  %c4242 = trunc i64 %r4241 to i32
  %gmp4243 = inttoptr i64 %t4240 to ptr
  store i32 %c4242, ptr %gmp4243, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000639c8 word 0x3940b12a
  %r4244.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4244 = load i64, ptr %r4244.p, align 8, !alias.scope !3, !noalias !4
  %t4245 = add i64 %r4244, 44
  %gmp4246 = inttoptr i64 %t4245 to ptr
  %gml4247 = load i8, ptr %gmp4246, align 1, !alias.scope !4, !noalias !3
  %c4248 = zext i8 %gml4247 to i64
  %wp4249 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4248, ptr %wp4249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639cc word 0x3200014a
  %r4250.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4250 = load i64, ptr %r4250.p, align 8, !alias.scope !3, !noalias !4
  %c4251 = trunc i64 %r4250 to i32
  %t4252 = or i32 %c4251, 1
  %c4253 = zext i32 %t4252 to i64
  %wp4254 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4253, ptr %wp4254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000639d0 word 0x3900b12a
  %r4255.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4255 = load i64, ptr %r4255.p, align 8, !alias.scope !3, !noalias !4
  %t4256 = add i64 %r4255, 44
  %r4257.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4257 = load i64, ptr %r4257.p, align 8, !alias.scope !3, !noalias !4
  %c4258 = trunc i64 %r4257 to i32
  %c4259 = trunc i32 %c4258 to i8
  %gmp4260 = inttoptr i64 %t4256 to ptr
  store i8 %c4259, ptr %gmp4260, align 1, !alias.scope !4, !noalias !3
  br label %L_8000639d4
L_800063acc_ft:
  ; @pc 0x800063acc word 0xb940d2ea
  %r4627.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4627 = load i64, ptr %r4627.p, align 8, !alias.scope !3, !noalias !4
  %t4628 = add i64 %r4627, 208
  %gmp4629 = inttoptr i64 %t4628 to ptr
  %gml4630 = load i32, ptr %gmp4629, align 1, !alias.scope !4, !noalias !3
  %c4631 = zext i32 %gml4630 to i64
  %wp4632 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4631, ptr %wp4632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ad0 word 0x5100054a
  %r4633.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4633 = load i64, ptr %r4633.p, align 8, !alias.scope !3, !noalias !4
  %c4634 = trunc i64 %r4633 to i32
  %t4635 = sub i32 %c4634, 1
  %c4636 = zext i32 %t4635 to i64
  %wp4637 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4636, ptr %wp4637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ad4 word 0xf9406eeb
  %r4638.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4638 = load i64, ptr %r4638.p, align 8, !alias.scope !3, !noalias !4
  %t4639 = add i64 %r4638, 216
  %gmp4640 = inttoptr i64 %t4639 to ptr
  %gml4641 = load i64, ptr %gmp4640, align 1, !alias.scope !4, !noalias !3
  %wp4642 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4641, ptr %wp4642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ad8 word 0x0a09014c
  %r4643.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4643 = load i64, ptr %r4643.p, align 8, !alias.scope !3, !noalias !4
  %c4644 = trunc i64 %r4643 to i32
  %r4645.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4645 = load i64, ptr %r4645.p, align 8, !alias.scope !3, !noalias !4
  %c4646 = trunc i64 %r4645 to i32
  %t4647 = and i32 %c4646, %c4644
  %c4648 = zext i32 %t4647 to i64
  %wp4649 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4648, ptr %wp4649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063adc word 0xf86c596a
  %r4650.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4650 = load i64, ptr %r4650.p, align 8, !alias.scope !3, !noalias !4
  %r4651.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4651 = load i64, ptr %r4651.p, align 8, !alias.scope !3, !noalias !4
  %c4652 = trunc i64 %r4651 to i32
  %c4653 = zext i32 %c4652 to i64
  %t4654 = shl i64 %c4653, 3
  %t4655 = add i64 %r4650, %t4654
  %gmp4656 = inttoptr i64 %t4655 to ptr
  %gml4657 = load i64, ptr %gmp4656, align 1, !alias.scope !4, !noalias !3
  %wp4658 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4657, ptr %wp4658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ae0 word 0xb4000c4a
  %r4659.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4659 = load i64, ptr %r4659.p, align 8, !alias.scope !3, !noalias !4
  %cmp4660 = icmp eq i64 %r4659, 0
  br i1 %cmp4660, label %L_800063c68, label %L_800063ae4_ft
L_800063ae4_ft:
  ; @pc 0x800063ae4 word 0xf82c797f
  %r4661.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4661 = load i64, ptr %r4661.p, align 8, !alias.scope !3, !noalias !4
  %r4662.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4662 = load i64, ptr %r4662.p, align 8, !alias.scope !3, !noalias !4
  %t4663 = shl i64 %r4662, 3
  %t4664 = add i64 %r4661, %t4663
  %gmp4665 = inttoptr i64 %t4664 to ptr
  store i64 0, ptr %gmp4665, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063ae8 word 0x11000529
  %r4666.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4666 = load i64, ptr %r4666.p, align 8, !alias.scope !3, !noalias !4
  %c4667 = trunc i64 %r4666 to i32
  %t4668 = add i32 %c4667, 1
  %c4669 = zext i32 %t4668 to i64
  %wp4670 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4669, ptr %wp4670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063aec word 0xd5033bbf
  fence seq_cst
  ; @pc 0x800063af0 word 0xb100055f
  %r4671.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4671 = load i64, ptr %r4671.p, align 8, !alias.scope !3, !noalias !4
  %t4672 = add i64 %r4671, 1
  %fn4673 = icmp slt i64 %t4672, 0
  %fz4674 = icmp eq i64 %t4672, 0
  %fc4675 = icmp ult i64 %t4672, %r4671
  %fx14676 = xor i64 %r4671, %t4672
  %fx24677 = xor i64 1, %t4672
  %fva4678 = and i64 %fx14676, %fx24677
  %fv4679 = icmp slt i64 %fva4678, 0
  %nz4680 = zext i1 %fn4673 to i64
  %zz4681 = zext i1 %fz4674 to i64
  %cz4682 = zext i1 %fc4675 to i64
  %vz4683 = zext i1 %fv4679 to i64
  %ns4684 = shl i64 %nz4680, 31
  %zs4685 = shl i64 %zz4681, 30
  %cs4686 = shl i64 %cz4682, 29
  %vs4687 = shl i64 %vz4683, 28
  %nzor4688 = or i64 %ns4684, %zs4685
  %cvor4689 = or i64 %cs4686, %vs4687
  %nzcv4690 = or i64 %nzor4688, %cvor4689
  %wp4691 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4690, ptr %wp4691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063af4 word 0xb900e6e9
  %r4692.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4692 = load i64, ptr %r4692.p, align 8, !alias.scope !3, !noalias !4
  %t4693 = add i64 %r4692, 228
  %r4694.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4694 = load i64, ptr %r4694.p, align 8, !alias.scope !3, !noalias !4
  %c4695 = trunc i64 %r4694 to i32
  %gmp4696 = inttoptr i64 %t4693 to ptr
  store i32 %c4695, ptr %gmp4696, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063af8 word 0x540051a0
  %r4697.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4697 = load i64, ptr %r4697.p, align 8, !alias.scope !3, !noalias !4
  %fsh4699 = lshr i64 %r4697, 30
  %cond4698 = trunc i64 %fsh4699 to i1
  br i1 %cond4698, label %L_80006452c, label %L_800063afc_ft
L_800063afc_ft:
  ; @pc 0x800063afc word 0xb9406949
  %r4700.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4700 = load i64, ptr %r4700.p, align 8, !alias.scope !3, !noalias !4
  %t4701 = add i64 %r4700, 104
  %gmp4702 = inttoptr i64 %t4701 to ptr
  %gml4703 = load i32, ptr %gmp4702, align 1, !alias.scope !4, !noalias !3
  %c4704 = zext i32 %gml4703 to i64
  %wp4705 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4704, ptr %wp4705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b00 word 0x372051a9
  %r4706.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4706 = load i64, ptr %r4706.p, align 8, !alias.scope !3, !noalias !4
  %t4707 = and i64 %r4706, 16
  %cmp4708 = icmp ne i64 %t4707, 0
  br i1 %cmp4708, label %L_800064534, label %L_800063b04_ft
L_800063b04_ft:
  ; @pc 0x800063b04 word 0x295d2ee9
  %r4709.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4709 = load i64, ptr %r4709.p, align 8, !alias.scope !3, !noalias !4
  %t4710 = add i64 %r4709, 232
  %t4711 = add i64 %t4710, 4
  %gmp4712 = inttoptr i64 %t4710 to ptr
  %gml4713 = load i32, ptr %gmp4712, align 1, !alias.scope !4, !noalias !3
  %c4714 = zext i32 %gml4713 to i64
  %gmp4715 = inttoptr i64 %t4711 to ptr
  %gml4716 = load i32, ptr %gmp4715, align 1, !alias.scope !4, !noalias !3
  %c4717 = zext i32 %gml4716 to i64
  %wp4718 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4714, ptr %wp4718, align 8, !alias.scope !3, !noalias !4
  %wp4719 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4717, ptr %wp4719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b08 word 0x93407d29
  %r4720.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4720 = load i64, ptr %r4720.p, align 8, !alias.scope !3, !noalias !4
  %t4721 = lshr i64 %r4720, 31
  %t4722 = and i64 %t4721, 1
  %t4723 = sub i64 0, %t4722
  %t4724 = and i64 %t4723, -4294967296
  %t4725 = and i64 %r4720, 4294967295
  %t4726 = or i64 %t4724, %t4725
  %wp4727 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4726, ptr %wp4727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b0c word 0x6b0b013f
  %r4728.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4728 = load i64, ptr %r4728.p, align 8, !alias.scope !3, !noalias !4
  %c4729 = trunc i64 %r4728 to i32
  %r4730.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4730 = load i64, ptr %r4730.p, align 8, !alias.scope !3, !noalias !4
  %c4731 = trunc i64 %r4730 to i32
  %t4732 = sub i32 %c4729, %c4731
  %fn4733 = icmp slt i32 %t4732, 0
  %fz4734 = icmp eq i32 %t4732, 0
  %fc4735 = icmp uge i32 %c4729, %c4731
  %fx14736 = xor i32 %c4729, %c4731
  %fx24737 = xor i32 %c4729, %t4732
  %fva4738 = and i32 %fx14736, %fx24737
  %fv4739 = icmp slt i32 %fva4738, 0
  %nz4740 = zext i1 %fn4733 to i64
  %zz4741 = zext i1 %fz4734 to i64
  %cz4742 = zext i1 %fc4735 to i64
  %vz4743 = zext i1 %fv4739 to i64
  %ns4744 = shl i64 %nz4740, 31
  %zs4745 = shl i64 %zz4741, 30
  %cs4746 = shl i64 %cz4742, 29
  %vs4747 = shl i64 %vz4743, 28
  %nzor4748 = or i64 %ns4744, %zs4745
  %cvor4749 = or i64 %cs4746, %vs4747
  %nzcv4750 = or i64 %nzor4748, %cvor4749
  %wp4751 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4750, ptr %wp4751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b10 word 0x540000ca
  %r4752.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4752 = load i64, ptr %r4752.p, align 8, !alias.scope !3, !noalias !4
  %fsh4754 = lshr i64 %r4752, 31
  %ftr4755 = trunc i64 %fsh4754 to i1
  %fsh4756 = lshr i64 %r4752, 28
  %ftr4757 = trunc i64 %fsh4756 to i1
  %cond4753 = icmp eq i1 %ftr4755, %ftr4757
  br i1 %cond4753, label %L_800063b28, label %L_800063b14_ft
L_800063b14_ft:
  ; @pc 0x800063b14 word 0xf9407aeb
  %r4758.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4758 = load i64, ptr %r4758.p, align 8, !alias.scope !3, !noalias !4
  %t4759 = add i64 %r4758, 240
  %gmp4760 = inttoptr i64 %t4759 to ptr
  %gml4761 = load i64, ptr %gmp4760, align 1, !alias.scope !4, !noalias !3
  %wp4762 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4761, ptr %wp4762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b18 word 0xf829796a
  %r4763.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4763 = load i64, ptr %r4763.p, align 8, !alias.scope !3, !noalias !4
  %r4764.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4764 = load i64, ptr %r4764.p, align 8, !alias.scope !3, !noalias !4
  %t4765 = shl i64 %r4764, 3
  %t4766 = add i64 %r4763, %t4765
  %r4767.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4767 = load i64, ptr %r4767.p, align 8, !alias.scope !3, !noalias !4
  %gmp4768 = inttoptr i64 %t4766 to ptr
  store i64 %r4767, ptr %gmp4768, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063b1c word 0xb940eae9
  %r4769.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4769 = load i64, ptr %r4769.p, align 8, !alias.scope !3, !noalias !4
  %t4770 = add i64 %r4769, 232
  %gmp4771 = inttoptr i64 %t4770 to ptr
  %gml4772 = load i32, ptr %gmp4771, align 1, !alias.scope !4, !noalias !3
  %c4773 = zext i32 %gml4772 to i64
  %wp4774 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4773, ptr %wp4774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b20 word 0x11000529
  %r4775.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4775 = load i64, ptr %r4775.p, align 8, !alias.scope !3, !noalias !4
  %c4776 = trunc i64 %r4775 to i32
  %t4777 = add i32 %c4776, 1
  %c4778 = zext i32 %t4777 to i64
  %wp4779 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4778, ptr %wp4779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b24 word 0xb900eae9
  %r4780.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4780 = load i64, ptr %r4780.p, align 8, !alias.scope !3, !noalias !4
  %t4781 = add i64 %r4780, 232
  %r4782.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4782 = load i64, ptr %r4782.p, align 8, !alias.scope !3, !noalias !4
  %c4783 = trunc i64 %r4782 to i32
  %gmp4784 = inttoptr i64 %t4781 to ptr
  store i32 %c4783, ptr %gmp4784, align 1, !alias.scope !4, !noalias !3
  br label %L_800063b28
L_800063b64_ft:
  ; @pc 0x800063b64 word 0xf94013e8
  %r4854.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4854 = load i64, ptr %r4854.p, align 8, !alias.scope !3, !noalias !4
  %t4855 = add i64 %r4854, 32
  %gmp4856 = inttoptr i64 %t4855 to ptr
  %gml4857 = load i64, ptr %gmp4856, align 1, !alias.scope !4, !noalias !3
  %wp4858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4857, ptr %wp4858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b68 word 0xf9403908
  %r4859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4859 = load i64, ptr %r4859.p, align 8, !alias.scope !3, !noalias !4
  %t4860 = add i64 %r4859, 112
  %gmp4861 = inttoptr i64 %t4860 to ptr
  %gml4862 = load i64, ptr %gmp4861, align 1, !alias.scope !4, !noalias !3
  %wp4863 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4862, ptr %wp4863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b6c word 0xb40017e8
  %r4864.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4864 = load i64, ptr %r4864.p, align 8, !alias.scope !3, !noalias !4
  %cmp4865 = icmp eq i64 %r4864, 0
  br i1 %cmp4865, label %L_800063e68, label %L_800063b70_ft
L_800063b70_ft:
  ; @pc 0x800063b70 word 0xf9400d08
  %r4866.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4866 = load i64, ptr %r4866.p, align 8, !alias.scope !3, !noalias !4
  %t4867 = add i64 %r4866, 24
  %gmp4868 = inttoptr i64 %t4867 to ptr
  %gml4869 = load i64, ptr %gmp4868, align 1, !alias.scope !4, !noalias !3
  %wp4870 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4869, ptr %wp4870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063b74 word 0xf9000be8
  %r4871.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4871 = load i64, ptr %r4871.p, align 8, !alias.scope !3, !noalias !4
  %t4872 = add i64 %r4871, 16
  %r4873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4873 = load i64, ptr %r4873.p, align 8, !alias.scope !3, !noalias !4
  %gmp4874 = inttoptr i64 %t4872 to ptr
  store i64 %r4873, ptr %gmp4874, align 1, !alias.scope !4, !noalias !3
  br label %L_800063b78
L_800063ba8_ft:
  ; @pc 0x800063ba8 word 0xf94013e8
  %r4948.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4948 = load i64, ptr %r4948.p, align 8, !alias.scope !3, !noalias !4
  %t4949 = add i64 %r4948, 32
  %gmp4950 = inttoptr i64 %t4949 to ptr
  %gml4951 = load i64, ptr %gmp4950, align 1, !alias.scope !4, !noalias !3
  %wp4952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4951, ptr %wp4952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bac word 0x79421100
  %r4953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4953 = load i64, ptr %r4953.p, align 8, !alias.scope !3, !noalias !4
  %t4954 = add i64 %r4953, 264
  %gmp4955 = inttoptr i64 %t4954 to ptr
  %gml4956 = load i16, ptr %gmp4955, align 1, !alias.scope !4, !noalias !3
  %c4957 = zext i16 %gml4956 to i64
  %wp4958 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c4957, ptr %wp4958, align 8, !alias.scope !3, !noalias !4
  br label %L_800063bb0
L_800063bb8_ft:
  ; @pc 0x800063bb8 word 0x1b137e88
  %r4987.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4987 = load i64, ptr %r4987.p, align 8, !alias.scope !3, !noalias !4
  %c4988 = trunc i64 %r4987 to i32
  %r4989.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4989 = load i64, ptr %r4989.p, align 8, !alias.scope !3, !noalias !4
  %c4990 = trunc i64 %r4989 to i32
  %t4991 = mul i32 %c4990, %c4988
  %t4992 = add i32 0, %t4991
  %c4993 = zext i32 %t4992 to i64
  %wp4994 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4993, ptr %wp4994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bbc word 0xf9000fff
  %r4995.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4995 = load i64, ptr %r4995.p, align 8, !alias.scope !3, !noalias !4
  %t4996 = add i64 %r4995, 24
  %gmp4997 = inttoptr i64 %t4996 to ptr
  store i64 0, ptr %gmp4997, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063bc0 word 0xb9000fe8
  %r4998.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4998 = load i64, ptr %r4998.p, align 8, !alias.scope !3, !noalias !4
  %t4999 = add i64 %r4998, 12
  %r5000.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5000 = load i64, ptr %r5000.p, align 8, !alias.scope !3, !noalias !4
  %c5001 = trunc i64 %r5000 to i32
  %gmp5002 = inttoptr i64 %t4999 to ptr
  store i32 %c5001, ptr %gmp5002, align 1, !alias.scope !4, !noalias !3
  br label %L_800063bc4
L_800063bd4_ft:
  ; @pc 0x800063bd4 word 0xf9400beb
  %r5026.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5026 = load i64, ptr %r5026.p, align 8, !alias.scope !3, !noalias !4
  %t5027 = add i64 %r5026, 16
  %gmp5028 = inttoptr i64 %t5027 to ptr
  %gml5029 = load i64, ptr %gmp5028, align 1, !alias.scope !4, !noalias !3
  %wp5030 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5029, ptr %wp5030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bd8 word 0x79403109
  %r5031.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5031 = load i64, ptr %r5031.p, align 8, !alias.scope !3, !noalias !4
  %t5032 = add i64 %r5031, 24
  %gmp5033 = inttoptr i64 %t5032 to ptr
  %gml5034 = load i16, ptr %gmp5033, align 1, !alias.scope !4, !noalias !3
  %c5035 = zext i16 %gml5034 to i64
  %wp5036 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5035, ptr %wp5036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bdc word 0xb940196a
  %r5037.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5037 = load i64, ptr %r5037.p, align 8, !alias.scope !3, !noalias !4
  %t5038 = add i64 %r5037, 24
  %gmp5039 = inttoptr i64 %t5038 to ptr
  %gml5040 = load i32, ptr %gmp5039, align 1, !alias.scope !4, !noalias !3
  %c5041 = zext i32 %gml5040 to i64
  %wp5042 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5041, ptr %wp5042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063be0 word 0xf940116b
  %r5043.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5043 = load i64, ptr %r5043.p, align 8, !alias.scope !3, !noalias !4
  %t5044 = add i64 %r5043, 32
  %gmp5045 = inttoptr i64 %t5044 to ptr
  %gml5046 = load i64, ptr %gmp5045, align 1, !alias.scope !4, !noalias !3
  %wp5047 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5046, ptr %wp5047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063be4 word 0x6b09015f
  %r5048.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5048 = load i64, ptr %r5048.p, align 8, !alias.scope !3, !noalias !4
  %c5049 = trunc i64 %r5048 to i32
  %r5050.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5050 = load i64, ptr %r5050.p, align 8, !alias.scope !3, !noalias !4
  %c5051 = trunc i64 %r5050 to i32
  %t5052 = sub i32 %c5049, %c5051
  %fn5053 = icmp slt i32 %t5052, 0
  %fz5054 = icmp eq i32 %t5052, 0
  %fc5055 = icmp uge i32 %c5049, %c5051
  %fx15056 = xor i32 %c5049, %c5051
  %fx25057 = xor i32 %c5049, %t5052
  %fva5058 = and i32 %fx15056, %fx25057
  %fv5059 = icmp slt i32 %fva5058, 0
  %nz5060 = zext i1 %fn5053 to i64
  %zz5061 = zext i1 %fz5054 to i64
  %cz5062 = zext i1 %fc5055 to i64
  %vz5063 = zext i1 %fv5059 to i64
  %ns5064 = shl i64 %nz5060, 31
  %zs5065 = shl i64 %zz5061, 30
  %cs5066 = shl i64 %cz5062, 29
  %vs5067 = shl i64 %vz5063, 28
  %nzor5068 = or i64 %ns5064, %zs5065
  %cvor5069 = or i64 %cs5066, %vs5067
  %nzcv5070 = or i64 %nzor5068, %cvor5069
  %wp5071 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5070, ptr %wp5071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063be8 word 0x9a9f8129
  %r5072.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5072 = load i64, ptr %r5072.p, align 8, !alias.scope !3, !noalias !4
  %r5073.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5073 = load i64, ptr %r5073.p, align 8, !alias.scope !3, !noalias !4
  %fsh5075 = lshr i64 %r5073, 29
  %ftr5076 = trunc i64 %fsh5075 to i1
  %fsh5077 = lshr i64 %r5073, 30
  %ftr5078 = trunc i64 %fsh5077 to i1
  %fnz5079 = xor i1 %ftr5078, true
  %cond5074 = and i1 %ftr5076, %fnz5079
  %sel5080 = select i1 %cond5074, i64 %r5072, i64 0
  %wp5081 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel5080, ptr %wp5081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bec word 0x78697969
  %r5082.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5082 = load i64, ptr %r5082.p, align 8, !alias.scope !3, !noalias !4
  %r5083.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5083 = load i64, ptr %r5083.p, align 8, !alias.scope !3, !noalias !4
  %t5084 = shl i64 %r5083, 1
  %t5085 = add i64 %r5082, %t5084
  %gmp5086 = inttoptr i64 %t5085 to ptr
  %gml5087 = load i16, ptr %gmp5086, align 1, !alias.scope !4, !noalias !3
  %c5088 = zext i16 %gml5087 to i64
  %wp5089 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5088, ptr %wp5089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bf0 word 0x7217013f
  %r5090.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5090 = load i64, ptr %r5090.p, align 8, !alias.scope !3, !noalias !4
  %c5091 = trunc i64 %r5090 to i32
  %t5092 = and i32 %c5091, 512
  %fn5093 = icmp slt i32 %t5092, 0
  %fz5094 = icmp eq i32 %t5092, 0
  %nz5095 = zext i1 %fn5093 to i64
  %zz5096 = zext i1 %fz5094 to i64
  %ns5097 = shl i64 %nz5095, 31
  %zs5098 = shl i64 %zz5096, 30
  %nzcv5099 = or i64 %ns5097, %zs5098
  %wp5100 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5099, ptr %wp5100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bf4 word 0xb9400fe9
  %r5101.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5101 = load i64, ptr %r5101.p, align 8, !alias.scope !3, !noalias !4
  %t5102 = add i64 %r5101, 12
  %gmp5103 = inttoptr i64 %t5102 to ptr
  %gml5104 = load i32, ptr %gmp5103, align 1, !alias.scope !4, !noalias !3
  %c5105 = zext i32 %gml5104 to i64
  %wp5106 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5105, ptr %wp5106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bf8 word 0x1a9f1529
  %r5107.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5107 = load i64, ptr %r5107.p, align 8, !alias.scope !3, !noalias !4
  %c5108 = trunc i64 %r5107 to i32
  %t5109 = add i32 0, 1
  %r5110.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5110 = load i64, ptr %r5110.p, align 8, !alias.scope !3, !noalias !4
  %fsh5112 = lshr i64 %r5110, 30
  %ftr5113 = trunc i64 %fsh5112 to i1
  %cond5111 = xor i1 %ftr5113, true
  %sel5114 = select i1 %cond5111, i32 %c5108, i32 %t5109
  %c5115 = zext i32 %sel5114 to i64
  %wp5116 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5115, ptr %wp5116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063bfc word 0x79009509
  %r5117.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5117 = load i64, ptr %r5117.p, align 8, !alias.scope !3, !noalias !4
  %t5118 = add i64 %r5117, 74
  %r5119.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5119 = load i64, ptr %r5119.p, align 8, !alias.scope !3, !noalias !4
  %c5120 = trunc i64 %r5119 to i32
  %c5121 = trunc i32 %c5120 to i16
  %gmp5122 = inttoptr i64 %t5118 to ptr
  store i16 %c5121, ptr %gmp5122, align 1, !alias.scope !4, !noalias !3
  br label %L_800063c00
L_800063c1c_ft:
  ; @pc 0x800063c1c word 0xf94013e8
  %r5169.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5169 = load i64, ptr %r5169.p, align 8, !alias.scope !3, !noalias !4
  %t5170 = add i64 %r5169, 32
  %gmp5171 = inttoptr i64 %t5170 to ptr
  %gml5172 = load i64, ptr %gmp5171, align 1, !alias.scope !4, !noalias !3
  %wp5173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5172, ptr %wp5173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c20 word 0x79421108
  %r5174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5174 = load i64, ptr %r5174.p, align 8, !alias.scope !3, !noalias !4
  %t5175 = add i64 %r5174, 264
  %gmp5176 = inttoptr i64 %t5175 to ptr
  %gml5177 = load i16, ptr %gmp5176, align 1, !alias.scope !4, !noalias !3
  %c5178 = zext i16 %gml5177 to i64
  %wp5179 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5178, ptr %wp5179, align 8, !alias.scope !3, !noalias !4
  br label %L_800063c24
L_800063c64_ft:
  ; @pc 0x800063c64 word 0x17fffc79
  br label %L_800062e48
L_800063c70_ft:
  ; @pc 0x800063c70 word 0xf9407ae9
  %r5276.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5276 = load i64, ptr %r5276.p, align 8, !alias.scope !3, !noalias !4
  %t5277 = add i64 %r5276, 240
  %gmp5278 = inttoptr i64 %t5277 to ptr
  %gml5279 = load i64, ptr %gmp5278, align 1, !alias.scope !4, !noalias !3
  %wp5280 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5279, ptr %wp5280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c74 word 0x8b0a0d2a
  %r5281.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5281 = load i64, ptr %r5281.p, align 8, !alias.scope !3, !noalias !4
  %r5282.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5282 = load i64, ptr %r5282.p, align 8, !alias.scope !3, !noalias !4
  %t5283 = shl i64 %r5282, 3
  %t5284 = add i64 %r5281, %t5283
  %wp5285 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5284, ptr %wp5285, align 8, !alias.scope !3, !noalias !4
  br label %L_800063c78
L_800063c80_ft:
  ; @pc 0x800063c80 word 0xb940e2ec
  %r5292.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5292 = load i64, ptr %r5292.p, align 8, !alias.scope !3, !noalias !4
  %t5293 = add i64 %r5292, 224
  %gmp5294 = inttoptr i64 %t5293 to ptr
  %gml5295 = load i32, ptr %gmp5294, align 1, !alias.scope !4, !noalias !3
  %c5296 = zext i32 %gml5295 to i64
  %wp5297 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c5296, ptr %wp5297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c84 word 0xb940e6ed
  %r5298.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5298 = load i64, ptr %r5298.p, align 8, !alias.scope !3, !noalias !4
  %t5299 = add i64 %r5298, 228
  %gmp5300 = inttoptr i64 %t5299 to ptr
  %gml5301 = load i32, ptr %gmp5300, align 1, !alias.scope !4, !noalias !3
  %c5302 = zext i32 %gml5301 to i64
  %wp5303 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5302, ptr %wp5303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c88 word 0x4b0d018d
  %r5304.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5304 = load i64, ptr %r5304.p, align 8, !alias.scope !3, !noalias !4
  %c5305 = trunc i64 %r5304 to i32
  %r5306.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5306 = load i64, ptr %r5306.p, align 8, !alias.scope !3, !noalias !4
  %c5307 = trunc i64 %r5306 to i32
  %t5308 = sub i32 %c5305, %c5307
  %c5309 = zext i32 %t5308 to i64
  %wp5310 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5309, ptr %wp5310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c8c word 0xb940d2ee
  %r5311.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5311 = load i64, ptr %r5311.p, align 8, !alias.scope !3, !noalias !4
  %t5312 = add i64 %r5311, 208
  %gmp5313 = inttoptr i64 %t5312 to ptr
  %gml5314 = load i32, ptr %gmp5313, align 1, !alias.scope !4, !noalias !3
  %c5315 = zext i32 %gml5314 to i64
  %wp5316 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c5315, ptr %wp5316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c90 word 0x6b0e01bf
  %r5317.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5317 = load i64, ptr %r5317.p, align 8, !alias.scope !3, !noalias !4
  %c5318 = trunc i64 %r5317 to i32
  %r5319.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5319 = load i64, ptr %r5319.p, align 8, !alias.scope !3, !noalias !4
  %c5320 = trunc i64 %r5319 to i32
  %t5321 = sub i32 %c5318, %c5320
  %fn5322 = icmp slt i32 %t5321, 0
  %fz5323 = icmp eq i32 %t5321, 0
  %fc5324 = icmp uge i32 %c5318, %c5320
  %fx15325 = xor i32 %c5318, %c5320
  %fx25326 = xor i32 %c5318, %t5321
  %fva5327 = and i32 %fx15325, %fx25326
  %fv5328 = icmp slt i32 %fva5327, 0
  %nz5329 = zext i1 %fn5322 to i64
  %zz5330 = zext i1 %fz5323 to i64
  %cz5331 = zext i1 %fc5324 to i64
  %vz5332 = zext i1 %fv5328 to i64
  %ns5333 = shl i64 %nz5329, 31
  %zs5334 = shl i64 %zz5330, 30
  %cs5335 = shl i64 %cz5331, 29
  %vs5336 = shl i64 %vz5332, 28
  %nzor5337 = or i64 %ns5333, %zs5334
  %cvor5338 = or i64 %cs5335, %vs5336
  %nzcv5339 = or i64 %nzor5337, %cvor5338
  %wp5340 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5339, ptr %wp5340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063c94 word 0x540001aa
  %r5341.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5341 = load i64, ptr %r5341.p, align 8, !alias.scope !3, !noalias !4
  %fsh5343 = lshr i64 %r5341, 31
  %ftr5344 = trunc i64 %fsh5343 to i1
  %fsh5345 = lshr i64 %r5341, 28
  %ftr5346 = trunc i64 %fsh5345 to i1
  %cond5342 = icmp eq i1 %ftr5344, %ftr5346
  br i1 %cond5342, label %L_800063cc8, label %L_800063c98
L_800063ca4_ft:
  ; @pc 0x800063ca4 word 0x1100058d
  %r5382.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5382 = load i64, ptr %r5382.p, align 8, !alias.scope !3, !noalias !4
  %c5383 = trunc i64 %r5382 to i32
  %t5384 = add i32 %c5383, 1
  %c5385 = zext i32 %t5384 to i64
  %wp5386 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5385, ptr %wp5386, align 8, !alias.scope !3, !noalias !4
  br label %L_800063ca8
L_800063cb0_ft:
  ; @pc 0x800063cb0 word 0xd5033bbf
  fence seq_cst
  ; @pc 0x800063cb4 word 0xb940d2ee
  %r5407.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5407 = load i64, ptr %r5407.p, align 8, !alias.scope !3, !noalias !4
  %t5408 = add i64 %r5407, 208
  %gmp5409 = inttoptr i64 %t5408 to ptr
  %gml5410 = load i32, ptr %gmp5409, align 1, !alias.scope !4, !noalias !3
  %c5411 = zext i32 %gml5410 to i64
  %wp5412 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c5411, ptr %wp5412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cb8 word 0xf9406eed
  %r5413.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5413 = load i64, ptr %r5413.p, align 8, !alias.scope !3, !noalias !4
  %t5414 = add i64 %r5413, 216
  %gmp5415 = inttoptr i64 %t5414 to ptr
  %gml5416 = load i64, ptr %gmp5415, align 1, !alias.scope !4, !noalias !3
  %wp5417 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5416, ptr %wp5417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cbc word 0x510005ce
  %r5418.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5418 = load i64, ptr %r5418.p, align 8, !alias.scope !3, !noalias !4
  %c5419 = trunc i64 %r5418 to i32
  %t5420 = sub i32 %c5419, 1
  %c5421 = zext i32 %t5420 to i64
  %wp5422 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c5421, ptr %wp5422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cc0 word 0x0a0c01cc
  %r5423.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5423 = load i64, ptr %r5423.p, align 8, !alias.scope !3, !noalias !4
  %c5424 = trunc i64 %r5423 to i32
  %r5425.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5425 = load i64, ptr %r5425.p, align 8, !alias.scope !3, !noalias !4
  %c5426 = trunc i64 %r5425 to i32
  %t5427 = and i32 %c5426, %c5424
  %c5428 = zext i32 %t5427 to i64
  %wp5429 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c5428, ptr %wp5429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cc4 word 0xf82c59ab
  %r5430.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5430 = load i64, ptr %r5430.p, align 8, !alias.scope !3, !noalias !4
  %r5431.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5431 = load i64, ptr %r5431.p, align 8, !alias.scope !3, !noalias !4
  %c5432 = trunc i64 %r5431 to i32
  %c5433 = zext i32 %c5432 to i64
  %t5434 = shl i64 %c5433, 3
  %t5435 = add i64 %r5430, %t5434
  %r5436.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5436 = load i64, ptr %r5436.p, align 8, !alias.scope !3, !noalias !4
  %gmp5437 = inttoptr i64 %t5435 to ptr
  store i64 %r5436, ptr %gmp5437, align 1, !alias.scope !4, !noalias !3
  br label %L_800063cc8
L_800063ce4_ft:
  ; @pc 0x800063ce4 word 0xb94032e8
  %r5485.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5485 = load i64, ptr %r5485.p, align 8, !alias.scope !3, !noalias !4
  %t5486 = add i64 %r5485, 48
  %gmp5487 = inttoptr i64 %t5486 to ptr
  %gml5488 = load i32, ptr %gmp5487, align 1, !alias.scope !4, !noalias !3
  %c5489 = zext i32 %gml5488 to i64
  %wp5490 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5489, ptr %wp5490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063ce8 word 0x390296ff
  %r5491.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5491 = load i64, ptr %r5491.p, align 8, !alias.scope !3, !noalias !4
  %t5492 = add i64 %r5491, 165
  %c5493 = trunc i32 0 to i8
  %gmp5494 = inttoptr i64 %t5492 to ptr
  store i8 %c5493, ptr %gmp5494, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063cec word 0x121f7908
  %r5495.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5495 = load i64, ptr %r5495.p, align 8, !alias.scope !3, !noalias !4
  %c5496 = trunc i64 %r5495 to i32
  %t5497 = and i32 %c5496, -2
  %c5498 = zext i32 %t5497 to i64
  %wp5499 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5498, ptr %wp5499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063cf0 word 0xb90032e8
  %r5500.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5500 = load i64, ptr %r5500.p, align 8, !alias.scope !3, !noalias !4
  %t5501 = add i64 %r5500, 48
  %r5502.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5502 = load i64, ptr %r5502.p, align 8, !alias.scope !3, !noalias !4
  %c5503 = trunc i64 %r5502 to i32
  %gmp5504 = inttoptr i64 %t5501 to ptr
  store i32 %c5503, ptr %gmp5504, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063cf4 word 0x17fffcd4
  br label %L_800063044
L_800063d38_ft:
  ; @pc 0x800063d38 word 0x94024ee3
  %wp5559 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147260, ptr %wp5559, align 8, !alias.scope !3, !noalias !4
  call void @f_8000f78c4(ptr %c)
  ; @pc 0x800063d3c word 0x17fffe59
  br label %L_8000636a0
L_800063da4_ft:
  ; @pc 0x800063da4 word 0xf94002a8
  %r5663.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5663 = load i64, ptr %r5663.p, align 8, !alias.scope !3, !noalias !4
  %gmp5664 = inttoptr i64 %r5663 to ptr
  %gml5665 = load i64, ptr %gmp5664, align 1, !alias.scope !4, !noalias !3
  %wp5666 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5665, ptr %wp5666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063da8 word 0xaa0003e1
  %r5667.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5667 = load i64, ptr %r5667.p, align 8, !alias.scope !3, !noalias !4
  %t5668 = or i64 0, %r5667
  %wp5669 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5668, ptr %wp5669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063dac word 0xaa1503e0
  %r5670.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5670 = load i64, ptr %r5670.p, align 8, !alias.scope !3, !noalias !4
  %t5671 = or i64 0, %r5670
  %wp5672 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5671, ptr %wp5672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063db0 word 0xf9400108
  %r5673.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5673 = load i64, ptr %r5673.p, align 8, !alias.scope !3, !noalias !4
  %gmp5674 = inttoptr i64 %r5673 to ptr
  %gml5675 = load i64, ptr %gmp5674, align 1, !alias.scope !4, !noalias !3
  %wp5676 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5675, ptr %wp5676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063db4 word 0xd63f0100
  %r5677.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5677 = load i64, ptr %r5677.p, align 8, !alias.scope !3, !noalias !4
  %fp5678 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5677, ptr %fp5678, align 8, !alias.scope !3, !noalias !4
  %wp5679 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147384, ptr %wp5679, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800063db8 word 0xb4003fa0
  %r5680.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5680 = load i64, ptr %r5680.p, align 8, !alias.scope !3, !noalias !4
  %cmp5681 = icmp eq i64 %r5680, 0
  br i1 %cmp5681, label %L_8000645ac, label %L_800063dbc_ft
L_800063dbc_ft:
  ; @pc 0x800063dbc word 0xf9000280
  %r5682.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5682 = load i64, ptr %r5682.p, align 8, !alias.scope !3, !noalias !4
  %r5683.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5683 = load i64, ptr %r5683.p, align 8, !alias.scope !3, !noalias !4
  %gmp5684 = inttoptr i64 %r5682 to ptr
  store i64 %r5683, ptr %gmp5684, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063dc0 word 0x17fffc83
  br label %L_800062fcc
L_800063dfc_ft:
  ; @pc 0x800063dfc word 0xf94002a8
  %r5732.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5732 = load i64, ptr %r5732.p, align 8, !alias.scope !3, !noalias !4
  %gmp5733 = inttoptr i64 %r5732 to ptr
  %gml5734 = load i64, ptr %gmp5733, align 1, !alias.scope !4, !noalias !3
  %wp5735 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5734, ptr %wp5735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e00 word 0xb001c781
  %wp5736 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419851264, ptr %wp5736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e04 word 0xaa1503e0
  %r5737.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5737 = load i64, ptr %r5737.p, align 8, !alias.scope !3, !noalias !4
  %t5738 = or i64 0, %r5737
  %wp5739 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5738, ptr %wp5739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e08 word 0xf9400108
  %r5740.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5740 = load i64, ptr %r5740.p, align 8, !alias.scope !3, !noalias !4
  %gmp5741 = inttoptr i64 %r5740 to ptr
  %gml5742 = load i64, ptr %gmp5741, align 1, !alias.scope !4, !noalias !3
  %wp5743 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5742, ptr %wp5743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e0c word 0xf9416821
  %r5744.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5744 = load i64, ptr %r5744.p, align 8, !alias.scope !3, !noalias !4
  %t5745 = add i64 %r5744, 720
  %gmp5746 = inttoptr i64 %t5745 to ptr
  %gml5747 = load i64, ptr %gmp5746, align 1, !alias.scope !4, !noalias !3
  %wp5748 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5747, ptr %wp5748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e10 word 0xd63f0100
  %r5749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5749 = load i64, ptr %r5749.p, align 8, !alias.scope !3, !noalias !4
  %fp5750 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5749, ptr %fp5750, align 8, !alias.scope !3, !noalias !4
  %wp5751 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147476, ptr %wp5751, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800063e14 word 0xb5000260
  %r5752.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5752 = load i64, ptr %r5752.p, align 8, !alias.scope !3, !noalias !4
  %cmp5753 = icmp ne i64 %r5752, 0
  br i1 %cmp5753, label %L_800063e60, label %L_800063e18
L_800063e24_ft:
  ; @pc 0x800063e24 word 0x14000030
  br label %L_800063ee4
L_800063e38_ft:
  ; @pc 0x800063e38 word 0xb001c788
  %wp5793 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419851264, ptr %wp5793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e3c word 0xb001c749
  %wp5794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp5794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e40 word 0xf9416908
  %r5795.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5795 = load i64, ptr %r5795.p, align 8, !alias.scope !3, !noalias !4
  %t5796 = add i64 %r5795, 720
  %gmp5797 = inttoptr i64 %t5796 to ptr
  %gml5798 = load i64, ptr %gmp5797, align 1, !alias.scope !4, !noalias !3
  %wp5799 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5798, ptr %wp5799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e44 word 0xf945e929
  %r5800.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5800 = load i64, ptr %r5800.p, align 8, !alias.scope !3, !noalias !4
  %t5801 = add i64 %r5800, 3024
  %gmp5802 = inttoptr i64 %t5801 to ptr
  %gml5803 = load i64, ptr %gmp5802, align 1, !alias.scope !4, !noalias !3
  %wp5804 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5803, ptr %wp5804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e48 word 0xb001c780
  %wp5805 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419851264, ptr %wp5805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e4c word 0x91004129
  %r5806.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5806 = load i64, ptr %r5806.p, align 8, !alias.scope !3, !noalias !4
  %t5807 = add i64 %r5806, 16
  %wp5808 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5807, ptr %wp5808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e50 word 0xf9000109
  %r5809.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5809 = load i64, ptr %r5809.p, align 8, !alias.scope !3, !noalias !4
  %r5810.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5810 = load i64, ptr %r5810.p, align 8, !alias.scope !3, !noalias !4
  %gmp5811 = inttoptr i64 %r5809 to ptr
  store i64 %r5810, ptr %gmp5811, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063e54 word 0xf9416c00
  %r5812.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5812 = load i64, ptr %r5812.p, align 8, !alias.scope !3, !noalias !4
  %t5813 = add i64 %r5812, 728
  %gmp5814 = inttoptr i64 %t5813 to ptr
  %gml5815 = load i64, ptr %gmp5814, align 1, !alias.scope !4, !noalias !3
  %wp5816 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5815, ptr %wp5816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063e58 word 0x94acfed6
  %wp5817 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147548, ptr %wp5817, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800063e5c word 0x17ffffe7
  br label %L_800063df8
L_800063ea8_ft:
  ; @pc 0x800063ea8 word 0x17fffda9
  br label %L_80006354c
L_800063f7c_ft:
  ; @pc 0x800063f7c word 0xf94002c8
  %r6134.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6134 = load i64, ptr %r6134.p, align 8, !alias.scope !3, !noalias !4
  %gmp6135 = inttoptr i64 %r6134 to ptr
  %gml6136 = load i64, ptr %gmp6135, align 1, !alias.scope !4, !noalias !3
  %wp6137 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6136, ptr %wp6137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f80 word 0x52806709
  %c6138 = zext i32 824 to i64
  %wp6139 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6138, ptr %wp6139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f84 word 0x52807f0a
  %c6140 = zext i32 1016 to i64
  %wp6141 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6140, ptr %wp6141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f88 word 0xbd4b7ae1
  %r6142.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6142 = load i64, ptr %r6142.p, align 8, !alias.scope !3, !noalias !4
  %t6143 = add i64 %r6142, 2936
  %gmp6144 = inttoptr i64 %t6143 to ptr
  %gml6145 = load i32, ptr %gmp6144, align 1, !alias.scope !4, !noalias !3
  %c6146 = zext i32 %gml6145 to i128
  %wp6147 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6146, ptr %wp6147, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063f8c word 0xaa1403e0
  %r6148.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6148 = load i64, ptr %r6148.p, align 8, !alias.scope !3, !noalias !4
  %t6149 = or i64 0, %r6148
  %wp6150 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6149, ptr %wp6150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f90 word 0x910fe10b
  %r6151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6151 = load i64, ptr %r6151.p, align 8, !alias.scope !3, !noalias !4
  %t6152 = add i64 %r6151, 1016
  %wp6153 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6152, ptr %wp6153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f94 word 0xbd43f900
  %r6154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6154 = load i64, ptr %r6154.p, align 8, !alias.scope !3, !noalias !4
  %t6155 = add i64 %r6154, 1016
  %gmp6156 = inttoptr i64 %t6155 to ptr
  %gml6157 = load i32, ptr %gmp6156, align 1, !alias.scope !4, !noalias !3
  %c6158 = zext i32 %gml6157 to i128
  %wp6159 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6158, ptr %wp6159, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063f98 word 0x910ce10c
  %r6160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6160 = load i64, ptr %r6160.p, align 8, !alias.scope !3, !noalias !4
  %t6161 = add i64 %r6160, 824
  %wp6162 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6161, ptr %wp6162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063f9c word 0x1e202000
  %fcmp6163 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 0)
  %wp6164 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6163, ptr %wp6164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fa0 word 0xbd4b72e0
  %r6165.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6165 = load i64, ptr %r6165.p, align 8, !alias.scope !3, !noalias !4
  %t6166 = add i64 %r6165, 2928
  %gmp6167 = inttoptr i64 %t6166 to ptr
  %gml6168 = load i32, ptr %gmp6167, align 1, !alias.scope !4, !noalias !3
  %c6169 = zext i32 %gml6168 to i128
  %wp6170 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6169, ptr %wp6170, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063fa4 word 0x9a897149
  %r6171.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6171 = load i64, ptr %r6171.p, align 8, !alias.scope !3, !noalias !4
  %r6172.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6172 = load i64, ptr %r6172.p, align 8, !alias.scope !3, !noalias !4
  %r6173.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6173 = load i64, ptr %r6173.p, align 8, !alias.scope !3, !noalias !4
  %fsh6175 = lshr i64 %r6173, 28
  %ftr6176 = trunc i64 %fsh6175 to i1
  %cond6174 = xor i1 %ftr6176, true
  %sel6177 = select i1 %cond6174, i64 %r6171, i64 %r6172
  %wp6178 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel6177, ptr %wp6178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fa8 word 0x9a8c716a
  %r6179.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6179 = load i64, ptr %r6179.p, align 8, !alias.scope !3, !noalias !4
  %r6180.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6180 = load i64, ptr %r6180.p, align 8, !alias.scope !3, !noalias !4
  %r6181.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6181 = load i64, ptr %r6181.p, align 8, !alias.scope !3, !noalias !4
  %fsh6183 = lshr i64 %r6181, 28
  %ftr6184 = trunc i64 %fsh6183 to i1
  %cond6182 = xor i1 %ftr6184, true
  %sel6185 = select i1 %cond6182, i64 %r6179, i64 %r6180
  %wp6186 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel6185, ptr %wp6186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800063fac word 0xbc696902
  %r6187.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6187 = load i64, ptr %r6187.p, align 8, !alias.scope !3, !noalias !4
  %r6188.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6188 = load i64, ptr %r6188.p, align 8, !alias.scope !3, !noalias !4
  %t6189 = add i64 %r6187, %r6188
  %gmp6190 = inttoptr i64 %t6189 to ptr
  %gml6191 = load i32, ptr %gmp6190, align 1, !alias.scope !4, !noalias !3
  %c6192 = zext i32 %gml6191 to i128
  %wp6193 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6192, ptr %wp6193, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063fb0 word 0x2d408d44
  %r6194.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6194 = load i64, ptr %r6194.p, align 8, !alias.scope !3, !noalias !4
  %t6195 = add i64 %r6194, 4
  %t6196 = add i64 %t6195, 4
  %gmp6197 = inttoptr i64 %t6195 to ptr
  %gml6198 = load i32, ptr %gmp6197, align 1, !alias.scope !4, !noalias !3
  %gmp6199 = inttoptr i64 %t6196 to ptr
  %gml6200 = load i32, ptr %gmp6199, align 1, !alias.scope !4, !noalias !3
  %c6201 = zext i32 %gml6198 to i128
  %wp6202 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c6201, ptr %wp6202, align 16, !alias.scope !3, !noalias !4
  %c6203 = zext i32 %gml6200 to i128
  %wp6204 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c6203, ptr %wp6204, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800063fb4 word 0xbd0b7ae3
  %r6205.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6205 = load i64, ptr %r6205.p, align 8, !alias.scope !3, !noalias !4
  %t6206 = add i64 %r6205, 2936
  %r6207.p = getelementptr inbounds i8, ptr %c, i64 560
  %r6207 = load i128, ptr %r6207.p, align 16, !alias.scope !3, !noalias !4
  %c6208 = trunc i128 %r6207 to i32
  %gmp6209 = inttoptr i64 %t6206 to ptr
  store i32 %c6208, ptr %gmp6209, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063fb8 word 0x1e203840
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 2, i32 0)
  ; @pc 0x800063fbc word 0xbd0b72e2
  %r6210.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6210 = load i64, ptr %r6210.p, align 8, !alias.scope !3, !noalias !4
  %t6211 = add i64 %r6210, 2928
  %r6212.p = getelementptr inbounds i8, ptr %c, i64 544
  %r6212 = load i128, ptr %r6212.p, align 16, !alias.scope !3, !noalias !4
  %c6213 = trunc i128 %r6212 to i32
  %gmp6214 = inttoptr i64 %t6211 to ptr
  store i32 %c6213, ptr %gmp6214, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063fc0 word 0xbd0b76e4
  %r6215.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6215 = load i64, ptr %r6215.p, align 8, !alias.scope !3, !noalias !4
  %t6216 = add i64 %r6215, 2932
  %r6217.p = getelementptr inbounds i8, ptr %c, i64 576
  %r6217 = load i128, ptr %r6217.p, align 16, !alias.scope !3, !noalias !4
  %c6218 = trunc i128 %r6217 to i32
  %gmp6219 = inttoptr i64 %t6216 to ptr
  store i32 %c6218, ptr %gmp6219, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063fc4 word 0xbd0b8ae0
  %r6220.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6220 = load i64, ptr %r6220.p, align 8, !alias.scope !3, !noalias !4
  %t6221 = add i64 %r6220, 2952
  %r6222.p = getelementptr inbounds i8, ptr %c, i64 512
  %r6222 = load i128, ptr %r6222.p, align 16, !alias.scope !3, !noalias !4
  %c6223 = trunc i128 %r6222 to i32
  %gmp6224 = inttoptr i64 %t6221 to ptr
  store i32 %c6223, ptr %gmp6224, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063fc8 word 0x1e213860
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 3, i32 1)
  ; @pc 0x800063fcc word 0xbd0b8ee0
  %r6225.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6225 = load i64, ptr %r6225.p, align 8, !alias.scope !3, !noalias !4
  %t6226 = add i64 %r6225, 2956
  %r6227.p = getelementptr inbounds i8, ptr %c, i64 512
  %r6227 = load i128, ptr %r6227.p, align 16, !alias.scope !3, !noalias !4
  %c6228 = trunc i128 %r6227 to i32
  %gmp6229 = inttoptr i64 %t6226 to ptr
  store i32 %c6228, ptr %gmp6229, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800063fd0 word 0x9479777a
  %wp6230 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360147924, ptr %wp6230, align 8, !alias.scope !3, !noalias !4
  call void @f_801ec1db8(ptr %c)
  br label %L_800063fd4
L_800064014_ft:
  ; @pc 0x800064014 word 0xf0016449
  %wp6304 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406854656, ptr %wp6304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064018 word 0xbd432524
  %r6305.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6305 = load i64, ptr %r6305.p, align 8, !alias.scope !3, !noalias !4
  %t6306 = add i64 %r6305, 804
  %gmp6307 = inttoptr i64 %t6306 to ptr
  %gml6308 = load i32, ptr %gmp6307, align 1, !alias.scope !4, !noalias !3
  %c6309 = zext i32 %gml6308 to i128
  %wp6310 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c6309, ptr %wp6310, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006401c word 0x1e242040
  %fcmp6311 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 4, i32 0)
  %wp6312 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6311, ptr %wp6312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064020 word 0x54002d09
  %r6313.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6313 = load i64, ptr %r6313.p, align 8, !alias.scope !3, !noalias !4
  %fsh6315 = lshr i64 %r6313, 29
  %ftr6316 = trunc i64 %fsh6315 to i1
  %fsh6317 = lshr i64 %r6313, 30
  %ftr6318 = trunc i64 %fsh6317 to i1
  %fnz6319 = xor i1 %ftr6318, true
  %fhi6320 = and i1 %ftr6316, %fnz6319
  %cond6314 = xor i1 %fhi6320, true
  br i1 %cond6314, label %L_8000645c0, label %L_800064024
L_800064028_ft:
  ; @pc 0x800064028 word 0x1e2f1002
  %wp6324 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 1069547520, ptr %wp6324, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006402c word 0x1e22192a
  call void @rt_fp_op_s(ptr %c, i32 5, i32 10, i32 9, i32 2)
  ; @pc 0x800064030 word 0x14000167
  br label %L_8000645cc
L_8000640b4_ft:
  ; @pc 0x8000640b4 word 0xf94013f3
  %r6416.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6416 = load i64, ptr %r6416.p, align 8, !alias.scope !3, !noalias !4
  %t6417 = add i64 %r6416, 32
  %gmp6418 = inttoptr i64 %t6417 to ptr
  %gml6419 = load i64, ptr %gmp6418, align 1, !alias.scope !4, !noalias !3
  %wp6420 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml6419, ptr %wp6420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640b8 word 0xaa0003e1
  %r6421.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6421 = load i64, ptr %r6421.p, align 8, !alias.scope !3, !noalias !4
  %t6422 = or i64 0, %r6421
  %wp6423 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6422, ptr %wp6423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640bc word 0xf9454668
  %r6424.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6424 = load i64, ptr %r6424.p, align 8, !alias.scope !3, !noalias !4
  %t6425 = add i64 %r6424, 2696
  %gmp6426 = inttoptr i64 %t6425 to ptr
  %gml6427 = load i64, ptr %gmp6426, align 1, !alias.scope !4, !noalias !3
  %wp6428 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6427, ptr %wp6428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640c0 word 0x911a8117
  %r6429.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6429 = load i64, ptr %r6429.p, align 8, !alias.scope !3, !noalias !4
  %t6430 = add i64 %r6429, 1696
  %wp6431 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t6430, ptr %wp6431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640c4 word 0xaa1703e0
  %r6432.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6432 = load i64, ptr %r6432.p, align 8, !alias.scope !3, !noalias !4
  %t6433 = or i64 0, %r6432
  %wp6434 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6433, ptr %wp6434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640c8 word 0x94028ace
  %wp6435 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148172, ptr %wp6435, align 8, !alias.scope !3, !noalias !4
  call void @f_800106c00(ptr %c)
  ; @pc 0x8000640cc word 0xf9454668
  %r6436.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6436 = load i64, ptr %r6436.p, align 8, !alias.scope !3, !noalias !4
  %t6437 = add i64 %r6436, 2696
  %gmp6438 = inttoptr i64 %t6437 to ptr
  %gml6439 = load i64, ptr %gmp6438, align 1, !alias.scope !4, !noalias !3
  %wp6440 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6439, ptr %wp6440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640d0 word 0xaa1703e1
  %r6441.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6441 = load i64, ptr %r6441.p, align 8, !alias.scope !3, !noalias !4
  %t6442 = or i64 0, %r6441
  %wp6443 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6442, ptr %wp6443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640d4 word 0x91166100
  %r6444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6444 = load i64, ptr %r6444.p, align 8, !alias.scope !3, !noalias !4
  %t6445 = add i64 %r6444, 1432
  %wp6446 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6445, ptr %wp6446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000640d8 word 0x942b79dd
  %wp6447 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148188, ptr %wp6447, align 8, !alias.scope !3, !noalias !4
  call void @f_800b4284c(ptr %c)
  ; @pc 0x8000640dc word 0x17fffd34
  br label %L_8000635ac
L_8000640fc_ft:
  ; @pc 0x8000640fc word 0x1e204040
  %r6474.p = getelementptr inbounds i8, ptr %c, i64 544
  %r6474 = load i128, ptr %r6474.p, align 16, !alias.scope !3, !noalias !4
  %c6475 = trunc i128 %r6474 to i32
  %c6476 = zext i32 %c6475 to i128
  %wp6477 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6476, ptr %wp6477, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064100 word 0x52a7f008
  %c6478 = zext i32 1065353216 to i64
  %wp6479 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6478, ptr %wp6479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064104 word 0xb90016c8
  %r6480.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6480 = load i64, ptr %r6480.p, align 8, !alias.scope !3, !noalias !4
  %t6481 = add i64 %r6480, 20
  %r6482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6482 = load i64, ptr %r6482.p, align 8, !alias.scope !3, !noalias !4
  %c6483 = trunc i64 %r6482 to i32
  %gmp6484 = inttoptr i64 %t6481 to ptr
  store i32 %c6483, ptr %gmp6484, align 1, !alias.scope !4, !noalias !3
  br label %L_800064108
L_800064110_ft:
  ; @pc 0x800064110 word 0xf001c728
  %wp6490 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp6490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064114 word 0xf9463d08
  %r6491.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6491 = load i64, ptr %r6491.p, align 8, !alias.scope !3, !noalias !4
  %t6492 = add i64 %r6491, 3192
  %gmp6493 = inttoptr i64 %t6492 to ptr
  %gml6494 = load i64, ptr %gmp6493, align 1, !alias.scope !4, !noalias !3
  %wp6495 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6494, ptr %wp6495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064118 word 0xf9400108
  %r6496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6496 = load i64, ptr %r6496.p, align 8, !alias.scope !3, !noalias !4
  %gmp6497 = inttoptr i64 %r6496 to ptr
  %gml6498 = load i64, ptr %gmp6497, align 1, !alias.scope !4, !noalias !3
  %wp6499 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6498, ptr %wp6499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006411c word 0xf9409500
  %r6500.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6500 = load i64, ptr %r6500.p, align 8, !alias.scope !3, !noalias !4
  %t6501 = add i64 %r6500, 296
  %gmp6502 = inttoptr i64 %t6501 to ptr
  %gml6503 = load i64, ptr %gmp6502, align 1, !alias.scope !4, !noalias !3
  %wp6504 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6503, ptr %wp6504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064120 word 0xb4000100
  %r6505.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6505 = load i64, ptr %r6505.p, align 8, !alias.scope !3, !noalias !4
  %cmp6506 = icmp eq i64 %r6505, 0
  br i1 %cmp6506, label %L_800064140, label %L_800064124_ft
L_800064124_ft:
  ; @pc 0x800064124 word 0xf0015e68
  %wp6507 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406084608, ptr %wp6507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064128 word 0x9117dd08
  %r6508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6508 = load i64, ptr %r6508.p, align 8, !alias.scope !3, !noalias !4
  %t6509 = add i64 %r6508, 1527
  %wp6510 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6509, ptr %wp6510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006412c word 0xf9003fe8
  %r6511.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6511 = load i64, ptr %r6511.p, align 8, !alias.scope !3, !noalias !4
  %t6512 = add i64 %r6511, 120
  %r6513.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6513 = load i64, ptr %r6513.p, align 8, !alias.scope !3, !noalias !4
  %gmp6514 = inttoptr i64 %t6512 to ptr
  store i64 %r6513, ptr %gmp6514, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064130 word 0x9101e3e1
  %r6515.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6515 = load i64, ptr %r6515.p, align 8, !alias.scope !3, !noalias !4
  %t6516 = add i64 %r6515, 120
  %wp6517 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6516, ptr %wp6517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064134 word 0xaa1f03e2
  %t6518 = or i64 0, 0
  %wp6519 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6518, ptr %wp6519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064138 word 0x943814c8
  %wp6520 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148284, ptr %wp6520, align 8, !alias.scope !3, !noalias !4
  call void @f_800e69458(ptr %c)
  ; @pc 0x80006413c word 0xbd4016c0
  %r6521.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6521 = load i64, ptr %r6521.p, align 8, !alias.scope !3, !noalias !4
  %t6522 = add i64 %r6521, 20
  %gmp6523 = inttoptr i64 %t6522 to ptr
  %gml6524 = load i32, ptr %gmp6523, align 1, !alias.scope !4, !noalias !3
  %c6525 = zext i32 %gml6524 to i128
  %wp6526 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6525, ptr %wp6526, align 16, !alias.scope !3, !noalias !4
  br label %L_800064140
L_800064148_ft:
  ; @pc 0x800064148 word 0xf9400fe2
  %r6536.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6536 = load i64, ptr %r6536.p, align 8, !alias.scope !3, !noalias !4
  %t6537 = add i64 %r6536, 24
  %gmp6538 = inttoptr i64 %t6537 to ptr
  %gml6539 = load i64, ptr %gmp6538, align 1, !alias.scope !4, !noalias !3
  %wp6540 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml6539, ptr %wp6540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006414c word 0xaa1603e0
  %r6541.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6541 = load i64, ptr %r6541.p, align 8, !alias.scope !3, !noalias !4
  %t6542 = or i64 0, %r6541
  %wp6543 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6542, ptr %wp6543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064150 word 0x2a1f03e1
  %t6544 = or i32 0, 0
  %c6545 = zext i32 %t6544 to i64
  %wp6546 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6545, ptr %wp6546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064154 word 0x942b88b2
  %wp6547 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360148312, ptr %wp6547, align 8, !alias.scope !3, !noalias !4
  call void @f_800b4641c(ptr %c)
  br label %L_800064158
L_800064170_ft:
  ; @pc 0x800064170 word 0x52b85908
  %c6568 = zext i32 -1027080192 to i64
  %wp6569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6568, ptr %wp6569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064174 word 0x1e270101
  %r6570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6570 = load i64, ptr %r6570.p, align 8, !alias.scope !3, !noalias !4
  %c6571 = trunc i64 %r6570 to i32
  %c6572 = zext i32 %c6571 to i128
  %wp6573 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6572, ptr %wp6573, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064178 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x80006417c word 0x17fffff9
  br label %L_800064160
L_8000641dc_ft:
  ; @pc 0x8000641dc word 0xf82c797f
  %r6657.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6657 = load i64, ptr %r6657.p, align 8, !alias.scope !3, !noalias !4
  %r6658.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6658 = load i64, ptr %r6658.p, align 8, !alias.scope !3, !noalias !4
  %t6659 = shl i64 %r6658, 3
  %t6660 = add i64 %r6657, %t6659
  %gmp6661 = inttoptr i64 %t6660 to ptr
  store i64 0, ptr %gmp6661, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000641e0 word 0x1100054a
  %r6662.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6662 = load i64, ptr %r6662.p, align 8, !alias.scope !3, !noalias !4
  %c6663 = trunc i64 %r6662 to i32
  %t6664 = add i32 %c6663, 1
  %c6665 = zext i32 %t6664 to i64
  %wp6666 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6665, ptr %wp6666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641e4 word 0xd5033bbf
  fence seq_cst
  ; @pc 0x8000641e8 word 0xb100053f
  %r6667.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6667 = load i64, ptr %r6667.p, align 8, !alias.scope !3, !noalias !4
  %t6668 = add i64 %r6667, 1
  %fn6669 = icmp slt i64 %t6668, 0
  %fz6670 = icmp eq i64 %t6668, 0
  %fc6671 = icmp ult i64 %t6668, %r6667
  %fx16672 = xor i64 %r6667, %t6668
  %fx26673 = xor i64 1, %t6668
  %fva6674 = and i64 %fx16672, %fx26673
  %fv6675 = icmp slt i64 %fva6674, 0
  %nz6676 = zext i1 %fn6669 to i64
  %zz6677 = zext i1 %fz6670 to i64
  %cz6678 = zext i1 %fc6671 to i64
  %vz6679 = zext i1 %fv6675 to i64
  %ns6680 = shl i64 %nz6676, 31
  %zs6681 = shl i64 %zz6677, 30
  %cs6682 = shl i64 %cz6678, 29
  %vs6683 = shl i64 %vz6679, 28
  %nzor6684 = or i64 %ns6680, %zs6681
  %cvor6685 = or i64 %cs6682, %vs6683
  %nzcv6686 = or i64 %nzor6684, %cvor6685
  %wp6687 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6686, ptr %wp6687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641ec word 0xb9001eea
  %r6688.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6688 = load i64, ptr %r6688.p, align 8, !alias.scope !3, !noalias !4
  %t6689 = add i64 %r6688, 28
  %r6690.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6690 = load i64, ptr %r6690.p, align 8, !alias.scope !3, !noalias !4
  %c6691 = trunc i64 %r6690 to i32
  %gmp6692 = inttoptr i64 %t6689 to ptr
  store i32 %c6691, ptr %gmp6692, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000641f0 word 0x540001e0
  %r6693.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6693 = load i64, ptr %r6693.p, align 8, !alias.scope !3, !noalias !4
  %fsh6695 = lshr i64 %r6693, 30
  %cond6694 = trunc i64 %fsh6695 to i1
  br i1 %cond6694, label %L_80006422c, label %L_8000641f4_ft
L_8000641f4_ft:
  ; @pc 0x8000641f4 word 0x3941212a
  %r6696.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6696 = load i64, ptr %r6696.p, align 8, !alias.scope !3, !noalias !4
  %t6697 = add i64 %r6696, 72
  %gmp6698 = inttoptr i64 %t6697 to ptr
  %gml6699 = load i8, ptr %gmp6698, align 1, !alias.scope !4, !noalias !3
  %c6700 = zext i8 %gml6699 to i64
  %wp6701 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6700, ptr %wp6701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000641f8 word 0xb9004128
  %r6702.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6702 = load i64, ptr %r6702.p, align 8, !alias.scope !3, !noalias !4
  %t6703 = add i64 %r6702, 64
  %r6704.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6704 = load i64, ptr %r6704.p, align 8, !alias.scope !3, !noalias !4
  %c6705 = trunc i64 %r6704 to i32
  %gmp6706 = inttoptr i64 %t6703 to ptr
  store i32 %c6705, ptr %gmp6706, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000641fc word 0x3710022a
  %r6707.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6707 = load i64, ptr %r6707.p, align 8, !alias.scope !3, !noalias !4
  %t6708 = and i64 %r6707, 4
  %cmp6709 = icmp ne i64 %t6708, 0
  br i1 %cmp6709, label %L_800064240, label %L_800064200_ft
L_800064200_ft:
  ; @pc 0x800064200 word 0x3608054a
  %r6710.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6710 = load i64, ptr %r6710.p, align 8, !alias.scope !3, !noalias !4
  %t6711 = and i64 %r6710, 2
  %cmp6712 = icmp eq i64 %t6711, 0
  br i1 %cmp6712, label %L_8000642a8, label %L_800064204_ft
L_800064204_ft:
  ; @pc 0x800064204 word 0xbd404522
  %r6713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6713 = load i64, ptr %r6713.p, align 8, !alias.scope !3, !noalias !4
  %t6714 = add i64 %r6713, 68
  %gmp6715 = inttoptr i64 %t6714 to ptr
  %gml6716 = load i32, ptr %gmp6715, align 1, !alias.scope !4, !noalias !3
  %c6717 = zext i32 %gml6716 to i128
  %wp6718 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6717, ptr %wp6718, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064208 word 0x1e2e1003
  %wp6719 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 1065353216, ptr %wp6719, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006420c word 0x1e232040
  %fcmp6720 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 3, i32 0)
  %wp6721 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6720, ptr %wp6721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064210 word 0x540002a5
  %r6722.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6722 = load i64, ptr %r6722.p, align 8, !alias.scope !3, !noalias !4
  %fsh6724 = lshr i64 %r6722, 31
  %ftr6725 = trunc i64 %fsh6724 to i1
  %cond6723 = xor i1 %ftr6725, true
  br i1 %cond6723, label %L_800064264, label %L_800064214_ft
L_800064214_ft:
  ; @pc 0x800064214 word 0x1e222824
  call void @rt_fp_op_s(ptr %c, i32 0, i32 4, i32 1, i32 2)
  ; @pc 0x800064218 word 0x1e232080
  %fcmp6726 = call i64 @rt_fp_cmp_s(ptr %c, i32 4, i32 3, i32 0)
  %wp6727 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6726, ptr %wp6727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006421c word 0x1e22b488
  %r6728.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6728 = load i64, ptr %r6728.p, align 8, !alias.scope !3, !noalias !4
  %fsh6730 = lshr i64 %r6728, 31
  %ftr6731 = trunc i64 %fsh6730 to i1
  %fsh6732 = lshr i64 %r6728, 28
  %ftr6733 = trunc i64 %fsh6732 to i1
  %cond6729 = icmp ne i1 %ftr6731, %ftr6733
  %fccmp6734 = call i64 @rt_fp_cmp_s(ptr %c, i32 4, i32 2, i32 0)
  %sel6735 = select i1 %cond6729, i64 %fccmp6734, i64 2147483648
  %wp6736 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel6735, ptr %wp6736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064220 word 0x540002c4
  %r6737.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6737 = load i64, ptr %r6737.p, align 8, !alias.scope !3, !noalias !4
  %fsh6739 = lshr i64 %r6737, 31
  %cond6738 = trunc i64 %fsh6739 to i1
  br i1 %cond6738, label %L_800064278, label %L_800064224
L_80006423c_ft:
  ; @pc 0x80006423c word 0x17ffffe2
  br label %L_8000641c4
L_80006424c_ft:
  ; @pc 0x80006424c word 0x1e222803
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 0, i32 2)
  ; @pc 0x800064250 word 0x1e202068
  %fcmp6798 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 0, i32 1)
  %wp6799 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6798, ptr %wp6799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064254 word 0x1e22b468
  %r6800.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6800 = load i64, ptr %r6800.p, align 8, !alias.scope !3, !noalias !4
  %fsh6802 = lshr i64 %r6800, 31
  %ftr6803 = trunc i64 %fsh6802 to i1
  %fsh6804 = lshr i64 %r6800, 28
  %ftr6805 = trunc i64 %fsh6804 to i1
  %cond6801 = icmp ne i1 %ftr6803, %ftr6805
  %fccmp6806 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 2, i32 0)
  %sel6807 = select i1 %cond6801, i64 %fccmp6806, i64 2147483648
  %wp6808 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel6807, ptr %wp6808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064258 word 0x54000224
  %r6809.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6809 = load i64, ptr %r6809.p, align 8, !alias.scope !3, !noalias !4
  %fsh6811 = lshr i64 %r6809, 31
  %cond6810 = trunc i64 %fsh6811 to i1
  br i1 %cond6810, label %L_80006429c, label %L_80006425c
L_800064268_ft:
  ; @pc 0x800064268 word 0x1e213844
  call void @rt_fp_op_s(ptr %c, i32 1, i32 4, i32 2, i32 1)
  ; @pc 0x80006426c word 0x1e232080
  %fcmp6828 = call i64 @rt_fp_cmp_s(ptr %c, i32 4, i32 3, i32 0)
  %wp6829 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6828, ptr %wp6829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064270 word 0x1e248448
  %r6830.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6830 = load i64, ptr %r6830.p, align 8, !alias.scope !3, !noalias !4
  %fsh6832 = lshr i64 %r6830, 29
  %ftr6833 = trunc i64 %fsh6832 to i1
  %fsh6834 = lshr i64 %r6830, 30
  %ftr6835 = trunc i64 %fsh6834 to i1
  %fnz6836 = xor i1 %ftr6835, true
  %cond6831 = and i1 %ftr6833, %fnz6836
  %fccmp6837 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 4, i32 0)
  %sel6838 = select i1 %cond6831, i64 %fccmp6837, i64 2147483648
  %wp6839 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel6838, ptr %wp6839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064274 word 0x54fffd85
  %r6840.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6840 = load i64, ptr %r6840.p, align 8, !alias.scope !3, !noalias !4
  %fsh6842 = lshr i64 %r6840, 31
  %ftr6843 = trunc i64 %fsh6842 to i1
  %cond6841 = xor i1 %ftr6843, true
  br i1 %cond6841, label %L_800064224, label %L_800064278
L_80006428c_ft:
  ; @pc 0x80006428c word 0x1e203843
  call void @rt_fp_op_s(ptr %c, i32 1, i32 3, i32 2, i32 0)
  ; @pc 0x800064290 word 0x1e202068
  %fcmp6867 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 0, i32 1)
  %wp6868 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6867, ptr %wp6868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064294 word 0x1e238448
  %r6869.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6869 = load i64, ptr %r6869.p, align 8, !alias.scope !3, !noalias !4
  %fsh6871 = lshr i64 %r6869, 29
  %ftr6872 = trunc i64 %fsh6871 to i1
  %fsh6873 = lshr i64 %r6869, 30
  %ftr6874 = trunc i64 %fsh6873 to i1
  %fnz6875 = xor i1 %ftr6874, true
  %cond6870 = and i1 %ftr6872, %fnz6875
  %fccmp6876 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 3, i32 0)
  %sel6877 = select i1 %cond6870, i64 %fccmp6876, i64 2147483648
  %wp6878 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel6877, ptr %wp6878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064298 word 0x54fffe25
  %r6879.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6879 = load i64, ptr %r6879.p, align 8, !alias.scope !3, !noalias !4
  %fsh6881 = lshr i64 %r6879, 31
  %ftr6882 = trunc i64 %fsh6881 to i1
  %cond6880 = xor i1 %ftr6882, true
  br i1 %cond6880, label %L_80006425c, label %L_80006429c
L_8000642ac_ft:
  ; @pc 0x8000642ac word 0x3718028a
  %r6900.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6900 = load i64, ptr %r6900.p, align 8, !alias.scope !3, !noalias !4
  %t6901 = and i64 %r6900, 8
  %cmp6902 = icmp ne i64 %t6901, 0
  br i1 %cmp6902, label %L_8000642fc, label %L_8000642b0_ft
L_8000642b0_ft:
  ; @pc 0x8000642b0 word 0x294f2fea
  %r6903.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6903 = load i64, ptr %r6903.p, align 8, !alias.scope !3, !noalias !4
  %t6904 = add i64 %r6903, 120
  %t6905 = add i64 %t6904, 4
  %gmp6906 = inttoptr i64 %t6904 to ptr
  %gml6907 = load i32, ptr %gmp6906, align 1, !alias.scope !4, !noalias !3
  %c6908 = zext i32 %gml6907 to i64
  %gmp6909 = inttoptr i64 %t6905 to ptr
  %gml6910 = load i32, ptr %gmp6909, align 1, !alias.scope !4, !noalias !3
  %c6911 = zext i32 %gml6910 to i64
  %wp6912 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6908, ptr %wp6912, align 8, !alias.scope !3, !noalias !4
  %wp6913 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6911, ptr %wp6913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642b4 word 0x93407d4a
  %r6914.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6914 = load i64, ptr %r6914.p, align 8, !alias.scope !3, !noalias !4
  %t6915 = lshr i64 %r6914, 31
  %t6916 = and i64 %t6915, 1
  %t6917 = sub i64 0, %t6916
  %t6918 = and i64 %t6917, -4294967296
  %t6919 = and i64 %r6914, 4294967295
  %t6920 = or i64 %t6918, %t6919
  %wp6921 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6920, ptr %wp6921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642b8 word 0x6b0b015f
  %r6922.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6922 = load i64, ptr %r6922.p, align 8, !alias.scope !3, !noalias !4
  %c6923 = trunc i64 %r6922 to i32
  %r6924.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6924 = load i64, ptr %r6924.p, align 8, !alias.scope !3, !noalias !4
  %c6925 = trunc i64 %r6924 to i32
  %t6926 = sub i32 %c6923, %c6925
  %fn6927 = icmp slt i32 %t6926, 0
  %fz6928 = icmp eq i32 %t6926, 0
  %fc6929 = icmp uge i32 %c6923, %c6925
  %fx16930 = xor i32 %c6923, %c6925
  %fx26931 = xor i32 %c6923, %t6926
  %fva6932 = and i32 %fx16930, %fx26931
  %fv6933 = icmp slt i32 %fva6932, 0
  %nz6934 = zext i1 %fn6927 to i64
  %zz6935 = zext i1 %fz6928 to i64
  %cz6936 = zext i1 %fc6929 to i64
  %vz6937 = zext i1 %fv6933 to i64
  %ns6938 = shl i64 %nz6934, 31
  %zs6939 = shl i64 %zz6935, 30
  %cs6940 = shl i64 %cz6936, 29
  %vs6941 = shl i64 %vz6937, 28
  %nzor6942 = or i64 %ns6938, %zs6939
  %cvor6943 = or i64 %cs6940, %vs6941
  %nzcv6944 = or i64 %nzor6942, %cvor6943
  %wp6945 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6944, ptr %wp6945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642bc word 0x5400020a
  %r6946.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6946 = load i64, ptr %r6946.p, align 8, !alias.scope !3, !noalias !4
  %fsh6948 = lshr i64 %r6946, 31
  %ftr6949 = trunc i64 %fsh6948 to i1
  %fsh6950 = lshr i64 %r6946, 28
  %ftr6951 = trunc i64 %fsh6950 to i1
  %cond6947 = icmp eq i1 %ftr6949, %ftr6951
  br i1 %cond6947, label %L_8000642fc, label %L_8000642c0_ft
L_8000642c0_ft:
  ; @pc 0x8000642c0 word 0xf94043eb
  %r6952.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6952 = load i64, ptr %r6952.p, align 8, !alias.scope !3, !noalias !4
  %t6953 = add i64 %r6952, 128
  %gmp6954 = inttoptr i64 %t6953 to ptr
  %gml6955 = load i64, ptr %gmp6954, align 1, !alias.scope !4, !noalias !3
  %wp6956 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6955, ptr %wp6956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642c4 word 0xf82a7969
  %r6957.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6957 = load i64, ptr %r6957.p, align 8, !alias.scope !3, !noalias !4
  %r6958.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6958 = load i64, ptr %r6958.p, align 8, !alias.scope !3, !noalias !4
  %t6959 = shl i64 %r6958, 3
  %t6960 = add i64 %r6957, %t6959
  %r6961.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6961 = load i64, ptr %r6961.p, align 8, !alias.scope !3, !noalias !4
  %gmp6962 = inttoptr i64 %t6960 to ptr
  store i64 %r6961, ptr %gmp6962, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000642c8 word 0xb9407be9
  %r6963.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6963 = load i64, ptr %r6963.p, align 8, !alias.scope !3, !noalias !4
  %t6964 = add i64 %r6963, 120
  %gmp6965 = inttoptr i64 %t6964 to ptr
  %gml6966 = load i32, ptr %gmp6965, align 1, !alias.scope !4, !noalias !3
  %c6967 = zext i32 %gml6966 to i64
  %wp6968 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6967, ptr %wp6968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642cc word 0x11000529
  %r6969.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6969 = load i64, ptr %r6969.p, align 8, !alias.scope !3, !noalias !4
  %c6970 = trunc i64 %r6969 to i32
  %t6971 = add i32 %c6970, 1
  %c6972 = zext i32 %t6971 to i64
  %wp6973 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6972, ptr %wp6973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642d0 word 0xb9007be9
  %r6974.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6974 = load i64, ptr %r6974.p, align 8, !alias.scope !3, !noalias !4
  %t6975 = add i64 %r6974, 120
  %r6976.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6976 = load i64, ptr %r6976.p, align 8, !alias.scope !3, !noalias !4
  %c6977 = trunc i64 %r6976 to i32
  %gmp6978 = inttoptr i64 %t6975 to ptr
  store i32 %c6977, ptr %gmp6978, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000642d4 word 0x1400000a
  br label %L_8000642fc
L_8000642e8_ft:
  ; @pc 0x8000642e8 word 0xf94016eb
  %r7028.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7028 = load i64, ptr %r7028.p, align 8, !alias.scope !3, !noalias !4
  %t7029 = add i64 %r7028, 40
  %gmp7030 = inttoptr i64 %t7029 to ptr
  %gml7031 = load i64, ptr %gmp7030, align 1, !alias.scope !4, !noalias !3
  %wp7032 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml7031, ptr %wp7032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642ec word 0xf82a7969
  %r7033.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7033 = load i64, ptr %r7033.p, align 8, !alias.scope !3, !noalias !4
  %r7034.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7034 = load i64, ptr %r7034.p, align 8, !alias.scope !3, !noalias !4
  %t7035 = shl i64 %r7034, 3
  %t7036 = add i64 %r7033, %t7035
  %r7037.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7037 = load i64, ptr %r7037.p, align 8, !alias.scope !3, !noalias !4
  %gmp7038 = inttoptr i64 %t7036 to ptr
  store i64 %r7037, ptr %gmp7038, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000642f0 word 0xb94022e9
  %r7039.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7039 = load i64, ptr %r7039.p, align 8, !alias.scope !3, !noalias !4
  %t7040 = add i64 %r7039, 32
  %gmp7041 = inttoptr i64 %t7040 to ptr
  %gml7042 = load i32, ptr %gmp7041, align 1, !alias.scope !4, !noalias !3
  %c7043 = zext i32 %gml7042 to i64
  %wp7044 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7043, ptr %wp7044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642f4 word 0x11000529
  %r7045.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7045 = load i64, ptr %r7045.p, align 8, !alias.scope !3, !noalias !4
  %c7046 = trunc i64 %r7045 to i32
  %t7047 = add i32 %c7046, 1
  %c7048 = zext i32 %t7047 to i64
  %wp7049 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7048, ptr %wp7049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000642f8 word 0xb90022e9
  %r7050.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7050 = load i64, ptr %r7050.p, align 8, !alias.scope !3, !noalias !4
  %t7051 = add i64 %r7050, 32
  %r7052.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7052 = load i64, ptr %r7052.p, align 8, !alias.scope !3, !noalias !4
  %c7053 = trunc i64 %r7052 to i32
  %gmp7054 = inttoptr i64 %t7051 to ptr
  store i32 %c7053, ptr %gmp7054, align 1, !alias.scope !4, !noalias !3
  br label %L_8000642fc
L_800064310_ft:
  ; @pc 0x800064310 word 0x17ffffad
  br label %L_8000641c4
L_80006432c_ft:
  ; @pc 0x80006432c word 0x2a0903ed
  %r7164.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7164 = load i64, ptr %r7164.p, align 8, !alias.scope !3, !noalias !4
  %c7165 = trunc i64 %r7164 to i32
  %t7166 = or i32 0, %c7165
  %c7167 = zext i32 %t7166 to i64
  %wp7168 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7167, ptr %wp7168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064330 word 0x1400001b
  br label %L_80006439c
L_800064340_ft:
  ; @pc 0x800064340 word 0x8b2ecead
  %r7204.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7204 = load i64, ptr %r7204.p, align 8, !alias.scope !3, !noalias !4
  %r7205.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7205 = load i64, ptr %r7205.p, align 8, !alias.scope !3, !noalias !4
  %c7206 = trunc i64 %r7205 to i32
  %c7207 = sext i32 %c7206 to i64
  %t7208 = shl i64 %c7207, 3
  %t7209 = add i64 %r7204, %t7208
  %wp7210 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t7209, ptr %wp7210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064344 word 0xa97fb5af
  %r7211.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7211 = load i64, ptr %r7211.p, align 8, !alias.scope !3, !noalias !4
  %t7212 = add i64 %r7211, -8
  %t7213 = add i64 %t7212, 8
  %gmp7214 = inttoptr i64 %t7212 to ptr
  %gml7215 = load i64, ptr %gmp7214, align 1, !alias.scope !4, !noalias !3
  %gmp7216 = inttoptr i64 %t7213 to ptr
  %gml7217 = load i64, ptr %gmp7216, align 1, !alias.scope !4, !noalias !3
  %wp7218 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml7215, ptr %wp7218, align 8, !alias.scope !3, !noalias !4
  %wp7219 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml7217, ptr %wp7219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064348 word 0xb9403def
  %r7220.p = getelementptr inbounds i8, ptr %c, i64 120
  %r7220 = load i64, ptr %r7220.p, align 8, !alias.scope !3, !noalias !4
  %t7221 = add i64 %r7220, 60
  %gmp7222 = inttoptr i64 %t7221 to ptr
  %gml7223 = load i32, ptr %gmp7222, align 1, !alias.scope !4, !noalias !3
  %c7224 = zext i32 %gml7223 to i64
  %wp7225 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c7224, ptr %wp7225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006434c word 0xb9403dad
  %r7226.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7226 = load i64, ptr %r7226.p, align 8, !alias.scope !3, !noalias !4
  %t7227 = add i64 %r7226, 60
  %gmp7228 = inttoptr i64 %t7227 to ptr
  %gml7229 = load i32, ptr %gmp7228, align 1, !alias.scope !4, !noalias !3
  %c7230 = zext i32 %gml7229 to i64
  %wp7231 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7230, ptr %wp7231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064350 word 0x6b0d01ff
  %r7232.p = getelementptr inbounds i8, ptr %c, i64 120
  %r7232 = load i64, ptr %r7232.p, align 8, !alias.scope !3, !noalias !4
  %c7233 = trunc i64 %r7232 to i32
  %r7234.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7234 = load i64, ptr %r7234.p, align 8, !alias.scope !3, !noalias !4
  %c7235 = trunc i64 %r7234 to i32
  %t7236 = sub i32 %c7233, %c7235
  %fn7237 = icmp slt i32 %t7236, 0
  %fz7238 = icmp eq i32 %t7236, 0
  %fc7239 = icmp uge i32 %c7233, %c7235
  %fx17240 = xor i32 %c7233, %c7235
  %fx27241 = xor i32 %c7233, %t7236
  %fva7242 = and i32 %fx17240, %fx27241
  %fv7243 = icmp slt i32 %fva7242, 0
  %nz7244 = zext i1 %fn7237 to i64
  %zz7245 = zext i1 %fz7238 to i64
  %cz7246 = zext i1 %fc7239 to i64
  %vz7247 = zext i1 %fv7243 to i64
  %ns7248 = shl i64 %nz7244, 31
  %zs7249 = shl i64 %zz7245, 30
  %cs7250 = shl i64 %cz7246, 29
  %vs7251 = shl i64 %vz7247, 28
  %nzor7252 = or i64 %ns7248, %zs7249
  %cvor7253 = or i64 %cs7250, %vs7251
  %nzcv7254 = or i64 %nzor7252, %cvor7253
  %wp7255 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7254, ptr %wp7255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064354 word 0x1a9fa7ed
  %t7256 = add i32 0, 1
  %r7257.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7257 = load i64, ptr %r7257.p, align 8, !alias.scope !3, !noalias !4
  %fsh7259 = lshr i64 %r7257, 31
  %ftr7260 = trunc i64 %fsh7259 to i1
  %fsh7261 = lshr i64 %r7257, 28
  %ftr7262 = trunc i64 %fsh7261 to i1
  %cond7258 = icmp eq i1 %ftr7260, %ftr7262
  %sel7263 = select i1 %cond7258, i32 0, i32 %t7256
  %c7264 = zext i32 %sel7263 to i64
  %wp7265 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7264, ptr %wp7265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064358 word 0x2a0d01cd
  %r7266.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7266 = load i64, ptr %r7266.p, align 8, !alias.scope !3, !noalias !4
  %c7267 = trunc i64 %r7266 to i32
  %r7268.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7268 = load i64, ptr %r7268.p, align 8, !alias.scope !3, !noalias !4
  %c7269 = trunc i64 %r7268 to i32
  %t7270 = or i32 %c7269, %c7267
  %c7271 = zext i32 %t7270 to i64
  %wp7272 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7271, ptr %wp7272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006435c word 0x14000002
  br label %L_800064364
L_80006437c_ft:
  ; @pc 0x80006437c word 0x5100058c
  %r7334.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7334 = load i64, ptr %r7334.p, align 8, !alias.scope !3, !noalias !4
  %c7335 = trunc i64 %r7334 to i32
  %t7336 = sub i32 %c7335, 1
  %c7337 = zext i32 %t7336 to i64
  %wp7338 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7337, ptr %wp7338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064380 word 0xf82cdaae
  %r7339.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7339 = load i64, ptr %r7339.p, align 8, !alias.scope !3, !noalias !4
  %r7340.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7340 = load i64, ptr %r7340.p, align 8, !alias.scope !3, !noalias !4
  %c7341 = trunc i64 %r7340 to i32
  %c7342 = sext i32 %c7341 to i64
  %t7343 = shl i64 %c7342, 3
  %t7344 = add i64 %r7339, %t7343
  %r7345.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7345 = load i64, ptr %r7345.p, align 8, !alias.scope !3, !noalias !4
  %gmp7346 = inttoptr i64 %t7344 to ptr
  store i64 %r7345, ptr %gmp7346, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064384 word 0x531f79ae
  %r7347.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7347 = load i64, ptr %r7347.p, align 8, !alias.scope !3, !noalias !4
  %c7348 = trunc i64 %r7347 to i32
  %ror7349 = call i32 @llvm.fshr.i32(i32 %c7348, i32 %c7348, i32 31)
  %t7350 = and i32 %ror7349, -2
  %c7351 = zext i32 %t7350 to i64
  %wp7352 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7351, ptr %wp7352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064388 word 0x2a0d03ec
  %r7353.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7353 = load i64, ptr %r7353.p, align 8, !alias.scope !3, !noalias !4
  %c7354 = trunc i64 %r7353 to i32
  %t7355 = or i32 0, %c7354
  %c7356 = zext i32 %t7355 to i64
  %wp7357 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7356, ptr %wp7357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006438c word 0x6b0801df
  %r7358.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7358 = load i64, ptr %r7358.p, align 8, !alias.scope !3, !noalias !4
  %c7359 = trunc i64 %r7358 to i32
  %r7360.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7360 = load i64, ptr %r7360.p, align 8, !alias.scope !3, !noalias !4
  %c7361 = trunc i64 %r7360 to i32
  %t7362 = sub i32 %c7359, %c7361
  %fn7363 = icmp slt i32 %t7362, 0
  %fz7364 = icmp eq i32 %t7362, 0
  %fc7365 = icmp uge i32 %c7359, %c7361
  %fx17366 = xor i32 %c7359, %c7361
  %fx27367 = xor i32 %c7359, %t7362
  %fva7368 = and i32 %fx17366, %fx27367
  %fv7369 = icmp slt i32 %fva7368, 0
  %nz7370 = zext i1 %fn7363 to i64
  %zz7371 = zext i1 %fz7364 to i64
  %cz7372 = zext i1 %fc7365 to i64
  %vz7373 = zext i1 %fv7369 to i64
  %ns7374 = shl i64 %nz7370, 31
  %zs7375 = shl i64 %zz7371, 30
  %cs7376 = shl i64 %cz7372, 29
  %vs7377 = shl i64 %vz7373, 28
  %nzor7378 = or i64 %ns7374, %zs7375
  %cvor7379 = or i64 %cs7376, %vs7377
  %nzcv7380 = or i64 %nzor7378, %cvor7379
  %wp7381 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7380, ptr %wp7381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064390 word 0x54fffd4d
  %r7382.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7382 = load i64, ptr %r7382.p, align 8, !alias.scope !3, !noalias !4
  %fsh7384 = lshr i64 %r7382, 30
  %ftr7385 = trunc i64 %fsh7384 to i1
  %fsh7386 = lshr i64 %r7382, 31
  %ftr7387 = trunc i64 %fsh7386 to i1
  %fsh7388 = lshr i64 %r7382, 28
  %ftr7389 = trunc i64 %fsh7388 to i1
  %fnz7390 = xor i1 %ftr7385, true
  %feq7391 = icmp eq i1 %ftr7387, %ftr7389
  %fgt7392 = and i1 %fnz7390, %feq7391
  %cond7383 = xor i1 %fgt7392, true
  br i1 %cond7383, label %L_800064338, label %L_800064394_ft
L_800064394_ft:
  ; @pc 0x800064394 word 0x14000002
  br label %L_80006439c
L_8000643b0_ft:
  ; @pc 0x8000643b0 word 0xd100050b
  %r7445.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7445 = load i64, ptr %r7445.p, align 8, !alias.scope !3, !noalias !4
  %t7446 = sub i64 %r7445, 1
  %wp7447 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t7446, ptr %wp7447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643b4 word 0xf94002aa
  %r7448.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7448 = load i64, ptr %r7448.p, align 8, !alias.scope !3, !noalias !4
  %gmp7449 = inttoptr i64 %r7448 to ptr
  %gml7450 = load i64, ptr %gmp7449, align 1, !alias.scope !4, !noalias !3
  %wp7451 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml7450, ptr %wp7451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643b8 word 0x71000d1f
  %r7452.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7452 = load i64, ptr %r7452.p, align 8, !alias.scope !3, !noalias !4
  %c7453 = trunc i64 %r7452 to i32
  %t7454 = sub i32 %c7453, 3
  %fn7455 = icmp slt i32 %t7454, 0
  %fz7456 = icmp eq i32 %t7454, 0
  %fc7457 = icmp uge i32 %c7453, 3
  %fx17458 = xor i32 %c7453, 3
  %fx27459 = xor i32 %c7453, %t7454
  %fva7460 = and i32 %fx17458, %fx27459
  %fv7461 = icmp slt i32 %fva7460, 0
  %nz7462 = zext i1 %fn7455 to i64
  %zz7463 = zext i1 %fz7456 to i64
  %cz7464 = zext i1 %fc7457 to i64
  %vz7465 = zext i1 %fv7461 to i64
  %ns7466 = shl i64 %nz7462, 31
  %zs7467 = shl i64 %zz7463, 30
  %cs7468 = shl i64 %cz7464, 29
  %vs7469 = shl i64 %vz7465, 28
  %nzor7470 = or i64 %ns7466, %zs7467
  %cvor7471 = or i64 %cs7468, %vs7469
  %nzcv7472 = or i64 %nzor7470, %cvor7471
  %wp7473 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7472, ptr %wp7473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643bc word 0xf86b5aa9
  %r7474.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7474 = load i64, ptr %r7474.p, align 8, !alias.scope !3, !noalias !4
  %r7475.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7475 = load i64, ptr %r7475.p, align 8, !alias.scope !3, !noalias !4
  %c7476 = trunc i64 %r7475 to i32
  %c7477 = zext i32 %c7476 to i64
  %t7478 = shl i64 %c7477, 3
  %t7479 = add i64 %r7474, %t7478
  %gmp7480 = inttoptr i64 %t7479 to ptr
  %gml7481 = load i64, ptr %gmp7480, align 1, !alias.scope !4, !noalias !3
  %wp7482 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7481, ptr %wp7482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643c0 word 0xf82b5aaa
  %r7483.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7483 = load i64, ptr %r7483.p, align 8, !alias.scope !3, !noalias !4
  %r7484.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7484 = load i64, ptr %r7484.p, align 8, !alias.scope !3, !noalias !4
  %c7485 = trunc i64 %r7484 to i32
  %c7486 = zext i32 %c7485 to i64
  %t7487 = shl i64 %c7486, 3
  %t7488 = add i64 %r7483, %t7487
  %r7489.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7489 = load i64, ptr %r7489.p, align 8, !alias.scope !3, !noalias !4
  %gmp7490 = inttoptr i64 %t7488 to ptr
  store i64 %r7489, ptr %gmp7490, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000643c4 word 0x540004a3
  %r7491.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7491 = load i64, ptr %r7491.p, align 8, !alias.scope !3, !noalias !4
  %fsh7493 = lshr i64 %r7491, 29
  %ftr7494 = trunc i64 %fsh7493 to i1
  %cond7492 = xor i1 %ftr7494, true
  br i1 %cond7492, label %L_800064458, label %L_8000643c8
L_8000643e0_ft:
  ; @pc 0x8000643e0 word 0x8b2ccead
  %r7535.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7535 = load i64, ptr %r7535.p, align 8, !alias.scope !3, !noalias !4
  %r7536.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7536 = load i64, ptr %r7536.p, align 8, !alias.scope !3, !noalias !4
  %c7537 = trunc i64 %r7536 to i32
  %c7538 = sext i32 %c7537 to i64
  %t7539 = shl i64 %c7538, 3
  %t7540 = add i64 %r7535, %t7539
  %wp7541 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t7540, ptr %wp7541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643e4 word 0xa97fb5ae
  %r7542.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7542 = load i64, ptr %r7542.p, align 8, !alias.scope !3, !noalias !4
  %t7543 = add i64 %r7542, -8
  %t7544 = add i64 %t7543, 8
  %gmp7545 = inttoptr i64 %t7543 to ptr
  %gml7546 = load i64, ptr %gmp7545, align 1, !alias.scope !4, !noalias !3
  %gmp7547 = inttoptr i64 %t7544 to ptr
  %gml7548 = load i64, ptr %gmp7547, align 1, !alias.scope !4, !noalias !3
  %wp7549 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml7546, ptr %wp7549, align 8, !alias.scope !3, !noalias !4
  %wp7550 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml7548, ptr %wp7550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643e8 word 0xb9403dce
  %r7551.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7551 = load i64, ptr %r7551.p, align 8, !alias.scope !3, !noalias !4
  %t7552 = add i64 %r7551, 60
  %gmp7553 = inttoptr i64 %t7552 to ptr
  %gml7554 = load i32, ptr %gmp7553, align 1, !alias.scope !4, !noalias !3
  %c7555 = zext i32 %gml7554 to i64
  %wp7556 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7555, ptr %wp7556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643ec word 0xb9403dad
  %r7557.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7557 = load i64, ptr %r7557.p, align 8, !alias.scope !3, !noalias !4
  %t7558 = add i64 %r7557, 60
  %gmp7559 = inttoptr i64 %t7558 to ptr
  %gml7560 = load i32, ptr %gmp7559, align 1, !alias.scope !4, !noalias !3
  %c7561 = zext i32 %gml7560 to i64
  %wp7562 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7561, ptr %wp7562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643f0 word 0x6b0d01df
  %r7563.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7563 = load i64, ptr %r7563.p, align 8, !alias.scope !3, !noalias !4
  %c7564 = trunc i64 %r7563 to i32
  %r7565.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7565 = load i64, ptr %r7565.p, align 8, !alias.scope !3, !noalias !4
  %c7566 = trunc i64 %r7565 to i32
  %t7567 = sub i32 %c7564, %c7566
  %fn7568 = icmp slt i32 %t7567, 0
  %fz7569 = icmp eq i32 %t7567, 0
  %fc7570 = icmp uge i32 %c7564, %c7566
  %fx17571 = xor i32 %c7564, %c7566
  %fx27572 = xor i32 %c7564, %t7567
  %fva7573 = and i32 %fx17571, %fx27572
  %fv7574 = icmp slt i32 %fva7573, 0
  %nz7575 = zext i1 %fn7568 to i64
  %zz7576 = zext i1 %fz7569 to i64
  %cz7577 = zext i1 %fc7570 to i64
  %vz7578 = zext i1 %fv7574 to i64
  %ns7579 = shl i64 %nz7575, 31
  %zs7580 = shl i64 %zz7576, 30
  %cs7581 = shl i64 %cz7577, 29
  %vs7582 = shl i64 %vz7578, 28
  %nzor7583 = or i64 %ns7579, %zs7580
  %cvor7584 = or i64 %cs7581, %vs7582
  %nzcv7585 = or i64 %nzor7583, %cvor7584
  %wp7586 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7585, ptr %wp7586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643f4 word 0x1a9fa7ed
  %t7587 = add i32 0, 1
  %r7588.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7588 = load i64, ptr %r7588.p, align 8, !alias.scope !3, !noalias !4
  %fsh7590 = lshr i64 %r7588, 31
  %ftr7591 = trunc i64 %fsh7590 to i1
  %fsh7592 = lshr i64 %r7588, 28
  %ftr7593 = trunc i64 %fsh7592 to i1
  %cond7589 = icmp eq i1 %ftr7591, %ftr7593
  %sel7594 = select i1 %cond7589, i32 0, i32 %t7587
  %c7595 = zext i32 %sel7594 to i64
  %wp7596 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7595, ptr %wp7596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643f8 word 0x2a0d018d
  %r7597.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7597 = load i64, ptr %r7597.p, align 8, !alias.scope !3, !noalias !4
  %c7598 = trunc i64 %r7597 to i32
  %r7599.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7599 = load i64, ptr %r7599.p, align 8, !alias.scope !3, !noalias !4
  %c7600 = trunc i64 %r7599 to i32
  %t7601 = or i32 %c7600, %c7598
  %c7602 = zext i32 %t7601 to i64
  %wp7603 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7602, ptr %wp7603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000643fc word 0x14000002
  br label %L_800064404
L_800064424_ft:
  ; @pc 0x800064424 word 0xf82b7aac
  %r7678.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7678 = load i64, ptr %r7678.p, align 8, !alias.scope !3, !noalias !4
  %r7679.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7679 = load i64, ptr %r7679.p, align 8, !alias.scope !3, !noalias !4
  %t7680 = shl i64 %r7679, 3
  %t7681 = add i64 %r7678, %t7680
  %r7682.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7682 = load i64, ptr %r7682.p, align 8, !alias.scope !3, !noalias !4
  %gmp7683 = inttoptr i64 %t7681 to ptr
  store i64 %r7682, ptr %gmp7683, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064428 word 0x531f79ac
  %r7684.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7684 = load i64, ptr %r7684.p, align 8, !alias.scope !3, !noalias !4
  %c7685 = trunc i64 %r7684 to i32
  %ror7686 = call i32 @llvm.fshr.i32(i32 %c7685, i32 %c7685, i32 31)
  %t7687 = and i32 %ror7686, -2
  %c7688 = zext i32 %t7687 to i64
  %wp7689 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7688, ptr %wp7689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006442c word 0xeb2cc15f
  %r7690.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7690 = load i64, ptr %r7690.p, align 8, !alias.scope !3, !noalias !4
  %r7691.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7691 = load i64, ptr %r7691.p, align 8, !alias.scope !3, !noalias !4
  %c7692 = trunc i64 %r7691 to i32
  %c7693 = sext i32 %c7692 to i64
  %t7694 = sub i64 %r7690, %c7693
  %fn7695 = icmp slt i64 %t7694, 0
  %fz7696 = icmp eq i64 %t7694, 0
  %fc7697 = icmp uge i64 %r7690, %c7693
  %fx17698 = xor i64 %r7690, %c7693
  %fx27699 = xor i64 %r7690, %t7694
  %fva7700 = and i64 %fx17698, %fx27699
  %fv7701 = icmp slt i64 %fva7700, 0
  %nz7702 = zext i1 %fn7695 to i64
  %zz7703 = zext i1 %fz7696 to i64
  %cz7704 = zext i1 %fc7697 to i64
  %vz7705 = zext i1 %fv7701 to i64
  %ns7706 = shl i64 %nz7702, 31
  %zs7707 = shl i64 %zz7703, 30
  %cs7708 = shl i64 %cz7704, 29
  %vs7709 = shl i64 %vz7705, 28
  %nzor7710 = or i64 %ns7706, %zs7707
  %cvor7711 = or i64 %cs7708, %vs7709
  %nzcv7712 = or i64 %nzor7710, %cvor7711
  %wp7713 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7712, ptr %wp7713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064430 word 0x2a0d03eb
  %r7714.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7714 = load i64, ptr %r7714.p, align 8, !alias.scope !3, !noalias !4
  %c7715 = trunc i64 %r7714 to i32
  %t7716 = or i32 0, %c7715
  %c7717 = zext i32 %t7716 to i64
  %wp7718 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7717, ptr %wp7718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064434 word 0x54fffd2c
  %r7719.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7719 = load i64, ptr %r7719.p, align 8, !alias.scope !3, !noalias !4
  %fsh7721 = lshr i64 %r7719, 30
  %ftr7722 = trunc i64 %fsh7721 to i1
  %fsh7723 = lshr i64 %r7719, 31
  %ftr7724 = trunc i64 %fsh7723 to i1
  %fsh7725 = lshr i64 %r7719, 28
  %ftr7726 = trunc i64 %fsh7725 to i1
  %fnz7727 = xor i1 %ftr7722, true
  %feq7728 = icmp eq i1 %ftr7724, %ftr7726
  %cond7720 = and i1 %fnz7727, %feq7728
  br i1 %cond7720, label %L_8000643d8, label %L_800064438_ft
L_800064438_ft:
  ; @pc 0x800064438 word 0x93407dcb
  %r7729.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7729 = load i64, ptr %r7729.p, align 8, !alias.scope !3, !noalias !4
  %t7730 = lshr i64 %r7729, 31
  %t7731 = and i64 %t7730, 1
  %t7732 = sub i64 0, %t7731
  %t7733 = and i64 %t7732, -4294967296
  %t7734 = and i64 %r7729, 4294967295
  %t7735 = or i64 %t7733, %t7734
  %wp7736 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t7735, ptr %wp7736, align 8, !alias.scope !3, !noalias !4
  br label %L_80006443c
L_800064484_ft:
  ; @pc 0x800064484 word 0x17fffffb
  br label %L_800064470
L_8000644a4_ft:
  ; @pc 0x8000644a4 word 0x17fffffb
  br label %L_800064490
L_8000644c0_ft:
  ; @pc 0x8000644c0 word 0xf82b795f
  %r7934.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7934 = load i64, ptr %r7934.p, align 8, !alias.scope !3, !noalias !4
  %r7935.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7935 = load i64, ptr %r7935.p, align 8, !alias.scope !3, !noalias !4
  %t7936 = shl i64 %r7935, 3
  %t7937 = add i64 %r7934, %t7936
  %gmp7938 = inttoptr i64 %t7937 to ptr
  store i64 0, ptr %gmp7938, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000644c4 word 0x11000508
  %r7939.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7939 = load i64, ptr %r7939.p, align 8, !alias.scope !3, !noalias !4
  %c7940 = trunc i64 %r7939 to i32
  %t7941 = add i32 %c7940, 1
  %c7942 = zext i32 %t7941 to i64
  %wp7943 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7942, ptr %wp7943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644c8 word 0xd5033bbf
  fence seq_cst
  ; @pc 0x8000644cc word 0xb100053f
  %r7944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7944 = load i64, ptr %r7944.p, align 8, !alias.scope !3, !noalias !4
  %t7945 = add i64 %r7944, 1
  %fn7946 = icmp slt i64 %t7945, 0
  %fz7947 = icmp eq i64 %t7945, 0
  %fc7948 = icmp ult i64 %t7945, %r7944
  %fx17949 = xor i64 %r7944, %t7945
  %fx27950 = xor i64 1, %t7945
  %fva7951 = and i64 %fx17949, %fx27950
  %fv7952 = icmp slt i64 %fva7951, 0
  %nz7953 = zext i1 %fn7946 to i64
  %zz7954 = zext i1 %fz7947 to i64
  %cz7955 = zext i1 %fc7948 to i64
  %vz7956 = zext i1 %fv7952 to i64
  %ns7957 = shl i64 %nz7953, 31
  %zs7958 = shl i64 %zz7954, 30
  %cs7959 = shl i64 %cz7955, 29
  %vs7960 = shl i64 %vz7956, 28
  %nzor7961 = or i64 %ns7957, %zs7958
  %cvor7962 = or i64 %cs7959, %vs7960
  %nzcv7963 = or i64 %nzor7961, %cvor7962
  %wp7964 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7963, ptr %wp7964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644d0 word 0xb900bee8
  %r7965.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7965 = load i64, ptr %r7965.p, align 8, !alias.scope !3, !noalias !4
  %t7966 = add i64 %r7965, 188
  %r7967.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7967 = load i64, ptr %r7967.p, align 8, !alias.scope !3, !noalias !4
  %c7968 = trunc i64 %r7967 to i32
  %gmp7969 = inttoptr i64 %t7966 to ptr
  store i32 %c7968, ptr %gmp7969, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000644d4 word 0x54ffae20
  %r7970.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7970 = load i64, ptr %r7970.p, align 8, !alias.scope !3, !noalias !4
  %fsh7972 = lshr i64 %r7970, 30
  %cond7971 = trunc i64 %fsh7972 to i1
  br i1 %cond7971, label %L_800063a98, label %L_8000644d8_ft
L_8000644d8_ft:
  ; @pc 0x8000644d8 word 0xb9403528
  %r7973.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7973 = load i64, ptr %r7973.p, align 8, !alias.scope !3, !noalias !4
  %t7974 = add i64 %r7973, 52
  %gmp7975 = inttoptr i64 %t7974 to ptr
  %gml7976 = load i32, ptr %gmp7975, align 1, !alias.scope !4, !noalias !3
  %c7977 = zext i32 %gml7976 to i64
  %wp7978 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7977, ptr %wp7978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644dc word 0x37080cc8
  %r7979.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7979 = load i64, ptr %r7979.p, align 8, !alias.scope !3, !noalias !4
  %t7980 = and i64 %r7979, 2
  %cmp7981 = icmp ne i64 %t7980, 0
  br i1 %cmp7981, label %L_800064674, label %L_8000644e0_ft
L_8000644e0_ft:
  ; @pc 0x8000644e0 word 0x29582ae8
  %r7982.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7982 = load i64, ptr %r7982.p, align 8, !alias.scope !3, !noalias !4
  %t7983 = add i64 %r7982, 192
  %t7984 = add i64 %t7983, 4
  %gmp7985 = inttoptr i64 %t7983 to ptr
  %gml7986 = load i32, ptr %gmp7985, align 1, !alias.scope !4, !noalias !3
  %c7987 = zext i32 %gml7986 to i64
  %gmp7988 = inttoptr i64 %t7984 to ptr
  %gml7989 = load i32, ptr %gmp7988, align 1, !alias.scope !4, !noalias !3
  %c7990 = zext i32 %gml7989 to i64
  %wp7991 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7987, ptr %wp7991, align 8, !alias.scope !3, !noalias !4
  %wp7992 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7990, ptr %wp7992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644e4 word 0x93407d08
  %r7993.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7993 = load i64, ptr %r7993.p, align 8, !alias.scope !3, !noalias !4
  %t7994 = lshr i64 %r7993, 31
  %t7995 = and i64 %t7994, 1
  %t7996 = sub i64 0, %t7995
  %t7997 = and i64 %t7996, -4294967296
  %t7998 = and i64 %r7993, 4294967295
  %t7999 = or i64 %t7997, %t7998
  %wp8000 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7999, ptr %wp8000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644e8 word 0x6b0a011f
  %r8001.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8001 = load i64, ptr %r8001.p, align 8, !alias.scope !3, !noalias !4
  %c8002 = trunc i64 %r8001 to i32
  %r8003.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8003 = load i64, ptr %r8003.p, align 8, !alias.scope !3, !noalias !4
  %c8004 = trunc i64 %r8003 to i32
  %t8005 = sub i32 %c8002, %c8004
  %fn8006 = icmp slt i32 %t8005, 0
  %fz8007 = icmp eq i32 %t8005, 0
  %fc8008 = icmp uge i32 %c8002, %c8004
  %fx18009 = xor i32 %c8002, %c8004
  %fx28010 = xor i32 %c8002, %t8005
  %fva8011 = and i32 %fx18009, %fx28010
  %fv8012 = icmp slt i32 %fva8011, 0
  %nz8013 = zext i1 %fn8006 to i64
  %zz8014 = zext i1 %fz8007 to i64
  %cz8015 = zext i1 %fc8008 to i64
  %vz8016 = zext i1 %fv8012 to i64
  %ns8017 = shl i64 %nz8013, 31
  %zs8018 = shl i64 %zz8014, 30
  %cs8019 = shl i64 %cz8015, 29
  %vs8020 = shl i64 %vz8016, 28
  %nzor8021 = or i64 %ns8017, %zs8018
  %cvor8022 = or i64 %cs8019, %vs8020
  %nzcv8023 = or i64 %nzor8021, %cvor8022
  %wp8024 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8023, ptr %wp8024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644ec word 0x54ffad4a
  %r8025.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8025 = load i64, ptr %r8025.p, align 8, !alias.scope !3, !noalias !4
  %fsh8027 = lshr i64 %r8025, 31
  %ftr8028 = trunc i64 %fsh8027 to i1
  %fsh8029 = lshr i64 %r8025, 28
  %ftr8030 = trunc i64 %fsh8029 to i1
  %cond8026 = icmp eq i1 %ftr8028, %ftr8030
  br i1 %cond8026, label %L_800063a94, label %L_8000644f0_ft
L_8000644f0_ft:
  ; @pc 0x8000644f0 word 0xf94066ea
  %r8031.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8031 = load i64, ptr %r8031.p, align 8, !alias.scope !3, !noalias !4
  %t8032 = add i64 %r8031, 200
  %gmp8033 = inttoptr i64 %t8032 to ptr
  %gml8034 = load i64, ptr %gmp8033, align 1, !alias.scope !4, !noalias !3
  %wp8035 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml8034, ptr %wp8035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644f4 word 0xf8287949
  %r8036.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8036 = load i64, ptr %r8036.p, align 8, !alias.scope !3, !noalias !4
  %r8037.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8037 = load i64, ptr %r8037.p, align 8, !alias.scope !3, !noalias !4
  %t8038 = shl i64 %r8037, 3
  %t8039 = add i64 %r8036, %t8038
  %r8040.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8040 = load i64, ptr %r8040.p, align 8, !alias.scope !3, !noalias !4
  %gmp8041 = inttoptr i64 %t8039 to ptr
  store i64 %r8040, ptr %gmp8041, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000644f8 word 0xb940c2e8
  %r8042.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8042 = load i64, ptr %r8042.p, align 8, !alias.scope !3, !noalias !4
  %t8043 = add i64 %r8042, 192
  %gmp8044 = inttoptr i64 %t8043 to ptr
  %gml8045 = load i32, ptr %gmp8044, align 1, !alias.scope !4, !noalias !3
  %c8046 = zext i32 %gml8045 to i64
  %wp8047 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8046, ptr %wp8047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000644fc word 0x11000508
  %r8048.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8048 = load i64, ptr %r8048.p, align 8, !alias.scope !3, !noalias !4
  %c8049 = trunc i64 %r8048 to i32
  %t8050 = add i32 %c8049, 1
  %c8051 = zext i32 %t8050 to i64
  %wp8052 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8051, ptr %wp8052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064500 word 0xb900c2e8
  %r8053.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8053 = load i64, ptr %r8053.p, align 8, !alias.scope !3, !noalias !4
  %t8054 = add i64 %r8053, 192
  %r8055.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8055 = load i64, ptr %r8055.p, align 8, !alias.scope !3, !noalias !4
  %c8056 = trunc i64 %r8055 to i32
  %gmp8057 = inttoptr i64 %t8054 to ptr
  store i32 %c8056, ptr %gmp8057, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064504 word 0x17fffd64
  br label %L_800063a94
L_800064528_ft:
  ; @pc 0x800064528 word 0x17fffffb
  br label %L_800064514
L_800064548_ft:
  ; @pc 0x800064548 word 0x17fffd78
  br label %L_800063b28
L_800064594_ft:
  ; @pc 0x800064594 word 0x17fffdcd
  br label %L_800063cc8
L_8000645b8_ft:
  ; @pc 0x8000645b8 word 0xf9400280
  %r8304.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8304 = load i64, ptr %r8304.p, align 8, !alias.scope !3, !noalias !4
  %gmp8305 = inttoptr i64 %r8304 to ptr
  %gml8306 = load i64, ptr %gmp8305, align 1, !alias.scope !4, !noalias !3
  %wp8307 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml8306, ptr %wp8307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000645bc word 0x17fffa84
  br label %L_800062fcc
L_800064624_ft:
  ; @pc 0x800064624 word 0xbd4b92e5
  %r8381.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8381 = load i64, ptr %r8381.p, align 8, !alias.scope !3, !noalias !4
  %t8382 = add i64 %r8381, 2960
  %gmp8383 = inttoptr i64 %t8382 to ptr
  %gml8384 = load i32, ptr %gmp8383, align 1, !alias.scope !4, !noalias !3
  %c8385 = zext i32 %gml8384 to i128
  %wp8386 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c8385, ptr %wp8386, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064628 word 0xbd47aae6
  %r8387.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8387 = load i64, ptr %r8387.p, align 8, !alias.scope !3, !noalias !4
  %t8388 = add i64 %r8387, 1960
  %gmp8389 = inttoptr i64 %t8388 to ptr
  %gml8390 = load i32, ptr %gmp8389, align 1, !alias.scope !4, !noalias !3
  %c8391 = zext i32 %gml8390 to i128
  %wp8392 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c8391, ptr %wp8392, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006462c word 0x1e2628a5
  call void @rt_fp_op_s(ptr %c, i32 0, i32 5, i32 5, i32 6)
  ; @pc 0x800064630 word 0x1e2540a6
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 6, i32 5)
  ; @pc 0x800064634 word 0x1e2638a5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 5, i32 6)
  ; @pc 0x800064638 word 0xbd0b92e5
  %r8393.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8393 = load i64, ptr %r8393.p, align 8, !alias.scope !3, !noalias !4
  %t8394 = add i64 %r8393, 2960
  %r8395.p = getelementptr inbounds i8, ptr %c, i64 592
  %r8395 = load i128, ptr %r8395.p, align 16, !alias.scope !3, !noalias !4
  %c8396 = trunc i128 %r8395 to i32
  %gmp8397 = inttoptr i64 %t8394 to ptr
  store i32 %c8396, ptr %gmp8397, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80006463c word 0x1400001f
  br label %L_8000646b8
L_800064664_ft:
  ; @pc 0x800064664 word 0x52b86908
  %c8426 = zext i32 -1018691584 to i64
  %wp8427 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8426, ptr %wp8427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064668 word 0x1e270101
  %r8428.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8428 = load i64, ptr %r8428.p, align 8, !alias.scope !3, !noalias !4
  %c8429 = trunc i64 %r8428 to i32
  %c8430 = zext i32 %c8429 to i128
  %wp8431 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8430, ptr %wp8431, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006466c word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x800064670 word 0x17fffff9
  br label %L_800064654
L_800064688_ft:
  ; @pc 0x800064688 word 0x17fffd03
  br label %L_800063a94
L_800064698_ft:
  ; @pc 0x800064698 word 0x1e262060
  %fcmp8477 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 6, i32 0)
  %wp8478 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8477, ptr %wp8478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80006469c word 0x540000ed
  %r8479.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8479 = load i64, ptr %r8479.p, align 8, !alias.scope !3, !noalias !4
  %fsh8481 = lshr i64 %r8479, 30
  %ftr8482 = trunc i64 %fsh8481 to i1
  %fsh8483 = lshr i64 %r8479, 31
  %ftr8484 = trunc i64 %fsh8483 to i1
  %fsh8485 = lshr i64 %r8479, 28
  %ftr8486 = trunc i64 %fsh8485 to i1
  %fnz8487 = xor i1 %ftr8482, true
  %feq8488 = icmp eq i1 %ftr8484, %ftr8486
  %fgt8489 = and i1 %fnz8487, %feq8488
  %cond8480 = xor i1 %fgt8489, true
  br i1 %cond8480, label %L_8000646b8, label %L_8000646a0_ft
L_8000646a0_ft:
  ; @pc 0x8000646a0 word 0xbd4b96e5
  %r8490.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8490 = load i64, ptr %r8490.p, align 8, !alias.scope !3, !noalias !4
  %t8491 = add i64 %r8490, 2964
  %gmp8492 = inttoptr i64 %t8491 to ptr
  %gml8493 = load i32, ptr %gmp8492, align 1, !alias.scope !4, !noalias !3
  %c8494 = zext i32 %gml8493 to i128
  %wp8495 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c8494, ptr %wp8495, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000646a4 word 0xbd47aae6
  %r8496.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8496 = load i64, ptr %r8496.p, align 8, !alias.scope !3, !noalias !4
  %t8497 = add i64 %r8496, 1960
  %gmp8498 = inttoptr i64 %t8497 to ptr
  %gml8499 = load i32, ptr %gmp8498, align 1, !alias.scope !4, !noalias !3
  %c8500 = zext i32 %gml8499 to i128
  %wp8501 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c8500, ptr %wp8501, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000646a8 word 0x1e2628a5
  call void @rt_fp_op_s(ptr %c, i32 0, i32 5, i32 5, i32 6)
  ; @pc 0x8000646ac word 0x1e2540a6
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 6, i32 5)
  ; @pc 0x8000646b0 word 0x1e2638a5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 5, i32 6)
  ; @pc 0x8000646b4 word 0xbd0b96e5
  %r8502.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8502 = load i64, ptr %r8502.p, align 8, !alias.scope !3, !noalias !4
  %t8503 = add i64 %r8502, 2964
  %r8504.p = getelementptr inbounds i8, ptr %c, i64 592
  %r8504 = load i128, ptr %r8504.p, align 16, !alias.scope !3, !noalias !4
  %c8505 = trunc i128 %r8504 to i32
  %gmp8506 = inttoptr i64 %t8503 to ptr
  store i32 %c8505, ptr %gmp8506, align 1, !alias.scope !4, !noalias !3
  br label %L_8000646b8
L_8000646d8_ft:
  ; @pc 0x8000646d8 word 0xbd4b9ae1
  %r8513.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8513 = load i64, ptr %r8513.p, align 8, !alias.scope !3, !noalias !4
  %t8514 = add i64 %r8513, 2968
  %gmp8515 = inttoptr i64 %t8514 to ptr
  %gml8516 = load i32, ptr %gmp8515, align 1, !alias.scope !4, !noalias !3
  %c8517 = zext i32 %gml8516 to i128
  %wp8518 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8517, ptr %wp8518, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000646dc word 0xbd47b6e4
  %r8519.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8519 = load i64, ptr %r8519.p, align 8, !alias.scope !3, !noalias !4
  %t8520 = add i64 %r8519, 1972
  %gmp8521 = inttoptr i64 %t8520 to ptr
  %gml8522 = load i32, ptr %gmp8521, align 1, !alias.scope !4, !noalias !3
  %c8523 = zext i32 %gml8522 to i128
  %wp8524 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8523, ptr %wp8524, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000646e0 word 0x1e242821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 4)
  ; @pc 0x8000646e4 word 0x1e254024
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 4, i32 1)
  ; @pc 0x8000646e8 word 0x1e243821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 4)
  ; @pc 0x8000646ec word 0xbd0b9ae1
  %r8525.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8525 = load i64, ptr %r8525.p, align 8, !alias.scope !3, !noalias !4
  %t8526 = add i64 %r8525, 2968
  %r8527.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8527 = load i128, ptr %r8527.p, align 16, !alias.scope !3, !noalias !4
  %c8528 = trunc i128 %r8527 to i32
  %gmp8529 = inttoptr i64 %t8526 to ptr
  store i32 %c8528, ptr %gmp8529, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000646f0 word 0x14000017
  br label %L_80006474c
L_800064710_ft:
  ; @pc 0x800064710 word 0x52b872c8
  %c8555 = zext i32 -1013579776 to i64
  %wp8556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8555, ptr %wp8556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064714 word 0x1e270101
  %r8557.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8557 = load i64, ptr %r8557.p, align 8, !alias.scope !3, !noalias !4
  %c8558 = trunc i64 %r8557 to i32
  %c8559 = zext i32 %c8558 to i128
  %wp8560 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8559, ptr %wp8560, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064718 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x80006471c word 0x17fffff9
  br label %L_800064700
L_80006472c_ft:
  ; @pc 0x80006472c word 0x1e242000
  %fcmp8571 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 4, i32 0)
  %wp8572 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8571, ptr %wp8572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064730 word 0x540000ed
  %r8573.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8573 = load i64, ptr %r8573.p, align 8, !alias.scope !3, !noalias !4
  %fsh8575 = lshr i64 %r8573, 30
  %ftr8576 = trunc i64 %fsh8575 to i1
  %fsh8577 = lshr i64 %r8573, 31
  %ftr8578 = trunc i64 %fsh8577 to i1
  %fsh8579 = lshr i64 %r8573, 28
  %ftr8580 = trunc i64 %fsh8579 to i1
  %fnz8581 = xor i1 %ftr8576, true
  %feq8582 = icmp eq i1 %ftr8578, %ftr8580
  %fgt8583 = and i1 %fnz8581, %feq8582
  %cond8574 = xor i1 %fgt8583, true
  br i1 %cond8574, label %L_80006474c, label %L_800064734_ft
L_800064734_ft:
  ; @pc 0x800064734 word 0xbd4b9ee1
  %r8584.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8584 = load i64, ptr %r8584.p, align 8, !alias.scope !3, !noalias !4
  %t8585 = add i64 %r8584, 2972
  %gmp8586 = inttoptr i64 %t8585 to ptr
  %gml8587 = load i32, ptr %gmp8586, align 1, !alias.scope !4, !noalias !3
  %c8588 = zext i32 %gml8587 to i128
  %wp8589 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8588, ptr %wp8589, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064738 word 0xbd47b6e4
  %r8590.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8590 = load i64, ptr %r8590.p, align 8, !alias.scope !3, !noalias !4
  %t8591 = add i64 %r8590, 1972
  %gmp8592 = inttoptr i64 %t8591 to ptr
  %gml8593 = load i32, ptr %gmp8592, align 1, !alias.scope !4, !noalias !3
  %c8594 = zext i32 %gml8593 to i128
  %wp8595 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c8594, ptr %wp8595, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80006473c word 0x1e242821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 4)
  ; @pc 0x800064740 word 0x1e254024
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 4, i32 1)
  ; @pc 0x800064744 word 0x1e243821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 4)
  ; @pc 0x800064748 word 0xbd0b9ee1
  %r8596.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8596 = load i64, ptr %r8596.p, align 8, !alias.scope !3, !noalias !4
  %t8597 = add i64 %r8596, 2972
  %r8598.p = getelementptr inbounds i8, ptr %c, i64 528
  %r8598 = load i128, ptr %r8598.p, align 16, !alias.scope !3, !noalias !4
  %c8599 = trunc i128 %r8598 to i32
  %gmp8600 = inttoptr i64 %t8597 to ptr
  store i32 %c8599, ptr %gmp8600, align 1, !alias.scope !4, !noalias !3
  br label %L_80006474c
L_800064a08_ft:
  ; @pc 0x800064a08 word 0xbd446e60
  %r9315.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9315 = load i64, ptr %r9315.p, align 8, !alias.scope !3, !noalias !4
  %t9316 = add i64 %r9315, 1132
  %gmp9317 = inttoptr i64 %t9316 to ptr
  %gml9318 = load i32, ptr %gmp9317, align 1, !alias.scope !4, !noalias !3
  %c9319 = zext i32 %gml9318 to i128
  %wp9320 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9319, ptr %wp9320, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a0c word 0x52800121
  %c9321 = zext i32 9 to i64
  %wp9322 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9321, ptr %wp9322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a10 word 0x9101e3e2
  %r9323.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9323 = load i64, ptr %r9323.p, align 8, !alias.scope !3, !noalias !4
  %t9324 = add i64 %r9323, 120
  %wp9325 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9324, ptr %wp9325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a14 word 0xbd447661
  %r9326.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9326 = load i64, ptr %r9326.p, align 8, !alias.scope !3, !noalias !4
  %t9327 = add i64 %r9326, 1140
  %gmp9328 = inttoptr i64 %t9327 to ptr
  %gml9329 = load i32, ptr %gmp9328, align 1, !alias.scope !4, !noalias !3
  %c9330 = zext i32 %gml9329 to i128
  %wp9331 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9330, ptr %wp9331, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a18 word 0xaa1a03e0
  %r9332.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9332 = load i64, ptr %r9332.p, align 8, !alias.scope !3, !noalias !4
  %t9333 = or i64 0, %r9332
  %wp9334 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9333, ptr %wp9334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a1c word 0x2a1f03e3
  %t9335 = or i32 0, 0
  %c9336 = zext i32 %t9335 to i64
  %wp9337 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9336, ptr %wp9337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a20 word 0xbd47cae2
  %r9338.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9338 = load i64, ptr %r9338.p, align 8, !alias.scope !3, !noalias !4
  %t9339 = add i64 %r9338, 1992
  %gmp9340 = inttoptr i64 %t9339 to ptr
  %gml9341 = load i32, ptr %gmp9340, align 1, !alias.scope !4, !noalias !3
  %c9342 = zext i32 %gml9341 to i128
  %wp9343 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c9342, ptr %wp9343, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a24 word 0x2a1f03e4
  %t9344 = or i32 0, 0
  %c9345 = zext i32 %t9344 to i64
  %wp9346 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9345, ptr %wp9346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a28 word 0x1e200900
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 8, i32 0)
  ; @pc 0x800064a2c word 0xbd4822e3
  %r9347.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9347 = load i64, ptr %r9347.p, align 8, !alias.scope !3, !noalias !4
  %t9348 = add i64 %r9347, 2080
  %gmp9349 = inttoptr i64 %t9348 to ptr
  %gml9350 = load i32, ptr %gmp9349, align 1, !alias.scope !4, !noalias !3
  %c9351 = zext i32 %gml9350 to i128
  %wp9352 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c9351, ptr %wp9352, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a30 word 0xbd4826e4
  %r9353.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9353 = load i64, ptr %r9353.p, align 8, !alias.scope !3, !noalias !4
  %t9354 = add i64 %r9353, 2084
  %gmp9355 = inttoptr i64 %t9354 to ptr
  %gml9356 = load i32, ptr %gmp9355, align 1, !alias.scope !4, !noalias !3
  %c9357 = zext i32 %gml9356 to i128
  %wp9358 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c9357, ptr %wp9358, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a34 word 0x1e210901
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 8, i32 1)
  ; @pc 0x800064a38 word 0x1f020c03
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 3, i32 0, i32 2, i32 3)
  ; @pc 0x800064a3c word 0x1f021022
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 2, i32 1, i32 2, i32 4)
  ; @pc 0x800064a40 word 0x1e254064
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 4, i32 3)
  ; @pc 0x800064a44 word 0x1e243863
  call void @rt_fp_op_s(ptr %c, i32 1, i32 3, i32 3, i32 4)
  ; @pc 0x800064a48 word 0x1e254044
  call void @rt_fp_dp1(ptr %c, i32 0, i32 10, i32 4, i32 2)
  ; @pc 0x800064a4c word 0x1e243842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 4)
  ; @pc 0x800064a50 word 0xbd47c6e4
  %r9359.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9359 = load i64, ptr %r9359.p, align 8, !alias.scope !3, !noalias !4
  %t9360 = add i64 %r9359, 1988
  %gmp9361 = inttoptr i64 %t9360 to ptr
  %gml9362 = load i32, ptr %gmp9361, align 1, !alias.scope !4, !noalias !3
  %c9363 = zext i32 %gml9362 to i128
  %wp9364 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c9363, ptr %wp9364, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a54 word 0xbd0822e3
  %r9365.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9365 = load i64, ptr %r9365.p, align 8, !alias.scope !3, !noalias !4
  %t9366 = add i64 %r9365, 2080
  %r9367.p = getelementptr inbounds i8, ptr %c, i64 560
  %r9367 = load i128, ptr %r9367.p, align 16, !alias.scope !3, !noalias !4
  %c9368 = trunc i128 %r9367 to i32
  %gmp9369 = inttoptr i64 %t9366 to ptr
  store i32 %c9368, ptr %gmp9369, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064a58 word 0x1e240800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 4)
  ; @pc 0x800064a5c word 0x1e240821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 4)
  ; @pc 0x800064a60 word 0xbd0826e2
  %r9370.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9370 = load i64, ptr %r9370.p, align 8, !alias.scope !3, !noalias !4
  %t9371 = add i64 %r9370, 2084
  %r9372.p = getelementptr inbounds i8, ptr %c, i64 544
  %r9372 = load i128, ptr %r9372.p, align 16, !alias.scope !3, !noalias !4
  %c9373 = trunc i128 %r9372 to i32
  %gmp9374 = inttoptr i64 %t9371 to ptr
  store i32 %c9373, ptr %gmp9374, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064a64 word 0x2d100be3
  %r9375.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9375 = load i64, ptr %r9375.p, align 8, !alias.scope !3, !noalias !4
  %t9376 = add i64 %r9375, 128
  %t9377 = add i64 %t9376, 4
  %r9378.p = getelementptr inbounds i8, ptr %c, i64 560
  %r9378 = load i128, ptr %r9378.p, align 16, !alias.scope !3, !noalias !4
  %r9379.p = getelementptr inbounds i8, ptr %c, i64 544
  %r9379 = load i128, ptr %r9379.p, align 16, !alias.scope !3, !noalias !4
  %c9380 = trunc i128 %r9378 to i32
  %c9381 = trunc i128 %r9379 to i32
  %gmp9382 = inttoptr i64 %t9376 to ptr
  store i32 %c9380, ptr %gmp9382, align 1, !alias.scope !4, !noalias !3
  %gmp9383 = inttoptr i64 %t9377 to ptr
  store i32 %c9381, ptr %gmp9383, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064a68 word 0x2d0f07e0
  %r9384.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9384 = load i64, ptr %r9384.p, align 8, !alias.scope !3, !noalias !4
  %t9385 = add i64 %r9384, 120
  %t9386 = add i64 %t9385, 4
  %r9387.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9387 = load i128, ptr %r9387.p, align 16, !alias.scope !3, !noalias !4
  %r9388.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9388 = load i128, ptr %r9388.p, align 16, !alias.scope !3, !noalias !4
  %c9389 = trunc i128 %r9387 to i32
  %c9390 = trunc i128 %r9388 to i32
  %gmp9391 = inttoptr i64 %t9385 to ptr
  store i32 %c9389, ptr %gmp9391, align 1, !alias.scope !4, !noalias !3
  %gmp9392 = inttoptr i64 %t9386 to ptr
  store i32 %c9390, ptr %gmp9392, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064a6c word 0x9418af17
  %wp9393 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150640, ptr %wp9393, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  ; @pc 0x800064a70 word 0xbd4832e0
  %r9394.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9394 = load i64, ptr %r9394.p, align 8, !alias.scope !3, !noalias !4
  %t9395 = add i64 %r9394, 2096
  %gmp9396 = inttoptr i64 %t9395 to ptr
  %gml9397 = load i32, ptr %gmp9396, align 1, !alias.scope !4, !noalias !3
  %c9398 = zext i32 %gml9397 to i128
  %wp9399 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9398, ptr %wp9399, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a74 word 0x52800141
  %c9400 = zext i32 10 to i64
  %wp9401 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9400, ptr %wp9401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a78 word 0x9101e3e2
  %r9402.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9402 = load i64, ptr %r9402.p, align 8, !alias.scope !3, !noalias !4
  %t9403 = add i64 %r9402, 120
  %wp9404 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t9403, ptr %wp9404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a7c word 0xbd4b82e2
  %r9405.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9405 = load i64, ptr %r9405.p, align 8, !alias.scope !3, !noalias !4
  %t9406 = add i64 %r9405, 2944
  %gmp9407 = inttoptr i64 %t9406 to ptr
  %gml9408 = load i32, ptr %gmp9407, align 1, !alias.scope !4, !noalias !3
  %c9409 = zext i32 %gml9408 to i128
  %wp9410 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c9409, ptr %wp9410, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a80 word 0xaa1a03e0
  %r9411.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9411 = load i64, ptr %r9411.p, align 8, !alias.scope !3, !noalias !4
  %t9412 = or i64 0, %r9411
  %wp9413 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9412, ptr %wp9413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a84 word 0x2a1f03e3
  %t9414 = or i32 0, 0
  %c9415 = zext i32 %t9414 to i64
  %wp9416 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9415, ptr %wp9416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a88 word 0xbd4836e1
  %r9417.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9417 = load i64, ptr %r9417.p, align 8, !alias.scope !3, !noalias !4
  %t9418 = add i64 %r9417, 2100
  %gmp9419 = inttoptr i64 %t9418 to ptr
  %gml9420 = load i32, ptr %gmp9419, align 1, !alias.scope !4, !noalias !3
  %c9421 = zext i32 %gml9420 to i128
  %wp9422 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9421, ptr %wp9422, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a8c word 0x2a1f03e4
  %t9423 = or i32 0, 0
  %c9424 = zext i32 %t9423 to i64
  %wp9425 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c9424, ptr %wp9425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064a90 word 0xbd438a63
  %r9426.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9426 = load i64, ptr %r9426.p, align 8, !alias.scope !3, !noalias !4
  %t9427 = add i64 %r9426, 904
  %gmp9428 = inttoptr i64 %t9427 to ptr
  %gml9429 = load i32, ptr %gmp9428, align 1, !alias.scope !4, !noalias !3
  %c9430 = zext i32 %gml9429 to i128
  %wp9431 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c9430, ptr %wp9431, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a94 word 0xbd439264
  %r9432.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9432 = load i64, ptr %r9432.p, align 8, !alias.scope !3, !noalias !4
  %t9433 = add i64 %r9432, 912
  %gmp9434 = inttoptr i64 %t9433 to ptr
  %gml9435 = load i32, ptr %gmp9434, align 1, !alias.scope !4, !noalias !3
  %c9436 = zext i32 %gml9435 to i128
  %wp9437 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c9436, ptr %wp9437, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064a98 word 0x5e21d800
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0)
  ; @pc 0x800064a9c word 0x1e203860
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 3, i32 0)
  ; @pc 0x800064aa0 word 0x5e21d842
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2)
  ; @pc 0x800064aa4 word 0x5e21d821
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1)
  ; @pc 0x800064aa8 word 0xbd438e63
  %r9438.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9438 = load i64, ptr %r9438.p, align 8, !alias.scope !3, !noalias !4
  %t9439 = add i64 %r9438, 908
  %gmp9440 = inttoptr i64 %t9439 to ptr
  %gml9441 = load i32, ptr %gmp9440, align 1, !alias.scope !4, !noalias !3
  %c9442 = zext i32 %gml9441 to i128
  %wp9443 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c9442, ptr %wp9443, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064aac word 0x1e213881
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 4, i32 1)
  ; @pc 0x800064ab0 word 0xbd4786e4
  %r9444.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9444 = load i64, ptr %r9444.p, align 8, !alias.scope !3, !noalias !4
  %t9445 = add i64 %r9444, 1924
  %gmp9446 = inttoptr i64 %t9445 to ptr
  %gml9447 = load i32, ptr %gmp9446, align 1, !alias.scope !4, !noalias !3
  %c9448 = zext i32 %gml9447 to i128
  %wp9449 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c9448, ptr %wp9449, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064ab4 word 0x1e223862
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 3, i32 2)
  ; @pc 0x800064ab8 word 0xbd481ee3
  %r9450.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9450 = load i64, ptr %r9450.p, align 8, !alias.scope !3, !noalias !4
  %t9451 = add i64 %r9450, 2076
  %gmp9452 = inttoptr i64 %t9451 to ptr
  %gml9453 = load i32, ptr %gmp9452, align 1, !alias.scope !4, !noalias !3
  %c9454 = zext i32 %gml9453 to i128
  %wp9455 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c9454, ptr %wp9455, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064abc word 0x1e200860
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 3, i32 0)
  ; @pc 0x800064ac0 word 0x1e210861
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 3, i32 1)
  ; @pc 0x800064ac4 word 0x2d0f0be0
  %r9456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9456 = load i64, ptr %r9456.p, align 8, !alias.scope !3, !noalias !4
  %t9457 = add i64 %r9456, 120
  %t9458 = add i64 %t9457, 4
  %r9459.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9459 = load i128, ptr %r9459.p, align 16, !alias.scope !3, !noalias !4
  %r9460.p = getelementptr inbounds i8, ptr %c, i64 544
  %r9460 = load i128, ptr %r9460.p, align 16, !alias.scope !3, !noalias !4
  %c9461 = trunc i128 %r9459 to i32
  %c9462 = trunc i128 %r9460 to i32
  %gmp9463 = inttoptr i64 %t9457 to ptr
  store i32 %c9461, ptr %gmp9463, align 1, !alias.scope !4, !noalias !3
  %gmp9464 = inttoptr i64 %t9458 to ptr
  store i32 %c9462, ptr %gmp9464, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ac8 word 0x1e240860
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 3, i32 4)
  ; @pc 0x800064acc word 0x2d1003e1
  %r9465.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9465 = load i64, ptr %r9465.p, align 8, !alias.scope !3, !noalias !4
  %t9466 = add i64 %r9465, 128
  %t9467 = add i64 %t9466, 4
  %r9468.p = getelementptr inbounds i8, ptr %c, i64 528
  %r9468 = load i128, ptr %r9468.p, align 16, !alias.scope !3, !noalias !4
  %r9469.p = getelementptr inbounds i8, ptr %c, i64 512
  %r9469 = load i128, ptr %r9469.p, align 16, !alias.scope !3, !noalias !4
  %c9470 = trunc i128 %r9468 to i32
  %c9471 = trunc i128 %r9469 to i32
  %gmp9472 = inttoptr i64 %t9466 to ptr
  store i32 %c9470, ptr %gmp9472, align 1, !alias.scope !4, !noalias !3
  %gmp9473 = inttoptr i64 %t9467 to ptr
  store i32 %c9471, ptr %gmp9473, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ad0 word 0x9418aefe
  %wp9474 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360150740, ptr %wp9474, align 8, !alias.scope !3, !noalias !4
  call void @f_8006906c8(ptr %c)
  br label %L_800064ad4
L_800064c04_ft:
  ; @pc 0x800064c04 word 0x52b88908
  %c9828 = zext i32 -1001914368 to i64
  %wp9829 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9828, ptr %wp9829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c08 word 0x1e270101
  %r9830.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9830 = load i64, ptr %r9830.p, align 8, !alias.scope !3, !noalias !4
  %c9831 = trunc i64 %r9830 to i32
  %c9832 = zext i32 %c9831 to i128
  %wp9833 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9832, ptr %wp9833, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064c0c word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x800064c10 word 0x17fffff9
  br label %L_800064bf4
L_800064c54_ft:
  ; @pc 0x800064c54 word 0xb9806ac8
  %r9900.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9900 = load i64, ptr %r9900.p, align 8, !alias.scope !3, !noalias !4
  %t9901 = add i64 %r9900, 104
  %gmp9902 = inttoptr i64 %t9901 to ptr
  %gml9903 = load i32, ptr %gmp9902, align 1, !alias.scope !4, !noalias !3
  %c9904 = sext i32 %gml9903 to i64
  %wp9905 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9904, ptr %wp9905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064c58 word 0x14000019
  br label %L_800064cbc
L_800064d4c_ft:
  ; @pc 0x800064d4c word 0xb9400328
  %r10169.p = getelementptr inbounds i8, ptr %c, i64 200
  %r10169 = load i64, ptr %r10169.p, align 8, !alias.scope !3, !noalias !4
  %gmp10170 = inttoptr i64 %r10169 to ptr
  %gml10171 = load i32, ptr %gmp10170, align 1, !alias.scope !4, !noalias !3
  %c10172 = zext i32 %gml10171 to i64
  %wp10173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10172, ptr %wp10173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d50 word 0xb4000617
  %r10174.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10174 = load i64, ptr %r10174.p, align 8, !alias.scope !3, !noalias !4
  %cmp10175 = icmp eq i64 %r10174, 0
  br i1 %cmp10175, label %L_800064e10, label %L_800064d54_ft
L_800064d54_ft:
  ; @pc 0x800064d54 word 0x362005e8
  %r10176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10176 = load i64, ptr %r10176.p, align 8, !alias.scope !3, !noalias !4
  %t10177 = and i64 %r10176, 16
  %cmp10178 = icmp eq i64 %t10177, 0
  br i1 %cmp10178, label %L_800064e10, label %L_800064d58_ft
L_800064d58_ft:
  ; @pc 0x800064d58 word 0x9101e3e1
  %r10179.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10179 = load i64, ptr %r10179.p, align 8, !alias.scope !3, !noalias !4
  %t10180 = add i64 %r10179, 120
  %wp10181 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10180, ptr %wp10181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d5c word 0xaa1703e0
  %r10182.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10182 = load i64, ptr %r10182.p, align 8, !alias.scope !3, !noalias !4
  %t10183 = or i64 0, %r10182
  %wp10184 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10183, ptr %wp10184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d60 word 0x949d7a7a
  %wp10185 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360151396, ptr %wp10185, align 8, !alias.scope !3, !noalias !4
  call void @f_8027c3748(ptr %c)
  ; @pc 0x800064d64 word 0x2d5486c0
  %r10186.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10186 = load i64, ptr %r10186.p, align 8, !alias.scope !3, !noalias !4
  %t10187 = add i64 %r10186, 164
  %t10188 = add i64 %t10187, 4
  %gmp10189 = inttoptr i64 %t10187 to ptr
  %gml10190 = load i32, ptr %gmp10189, align 1, !alias.scope !4, !noalias !3
  %gmp10191 = inttoptr i64 %t10188 to ptr
  %gml10192 = load i32, ptr %gmp10191, align 1, !alias.scope !4, !noalias !3
  %c10193 = zext i32 %gml10190 to i128
  %wp10194 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10193, ptr %wp10194, align 16, !alias.scope !3, !noalias !4
  %c10195 = zext i32 %gml10192 to i128
  %wp10196 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10195, ptr %wp10196, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d68 word 0x9101a3e0
  %r10197.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10197 = load i64, ptr %r10197.p, align 8, !alias.scope !3, !noalias !4
  %t10198 = add i64 %r10197, 104
  %wp10199 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10198, ptr %wp10199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064d6c word 0x2d518ec2
  %r10200.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10200 = load i64, ptr %r10200.p, align 8, !alias.scope !3, !noalias !4
  %t10201 = add i64 %r10200, 140
  %t10202 = add i64 %t10201, 4
  %gmp10203 = inttoptr i64 %t10201 to ptr
  %gml10204 = load i32, ptr %gmp10203, align 1, !alias.scope !4, !noalias !3
  %gmp10205 = inttoptr i64 %t10202 to ptr
  %gml10206 = load i32, ptr %gmp10205, align 1, !alias.scope !4, !noalias !3
  %c10207 = zext i32 %gml10204 to i128
  %wp10208 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10207, ptr %wp10208, align 16, !alias.scope !3, !noalias !4
  %c10209 = zext i32 %gml10206 to i128
  %wp10210 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10209, ptr %wp10210, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d70 word 0x1e233821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 3)
  ; @pc 0x800064d74 word 0x2d569ac5
  %r10211.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10211 = load i64, ptr %r10211.p, align 8, !alias.scope !3, !noalias !4
  %t10212 = add i64 %r10211, 180
  %t10213 = add i64 %t10212, 4
  %gmp10214 = inttoptr i64 %t10212 to ptr
  %gml10215 = load i32, ptr %gmp10214, align 1, !alias.scope !4, !noalias !3
  %gmp10216 = inttoptr i64 %t10213 to ptr
  %gml10217 = load i32, ptr %gmp10216, align 1, !alias.scope !4, !noalias !3
  %c10218 = zext i32 %gml10215 to i128
  %wp10219 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c10218, ptr %wp10219, align 16, !alias.scope !3, !noalias !4
  %c10220 = zext i32 %gml10217 to i128
  %wp10221 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c10220, ptr %wp10221, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d78 word 0xbd4096c4
  %r10222.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10222 = load i64, ptr %r10222.p, align 8, !alias.scope !3, !noalias !4
  %t10223 = add i64 %r10222, 148
  %gmp10224 = inttoptr i64 %t10223 to ptr
  %gml10225 = load i32, ptr %gmp10224, align 1, !alias.scope !4, !noalias !3
  %c10226 = zext i32 %gml10225 to i128
  %wp10227 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10226, ptr %wp10227, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d7c word 0x1e223800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 2)
  ; @pc 0x800064d80 word 0x1e250830
  call void @rt_fp_op_s(ptr %c, i32 2, i32 16, i32 1, i32 5)
  ; @pc 0x800064d84 word 0x2d559ec5
  %r10228.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10228 = load i64, ptr %r10228.p, align 8, !alias.scope !3, !noalias !4
  %t10229 = add i64 %r10228, 172
  %t10230 = add i64 %t10229, 4
  %gmp10231 = inttoptr i64 %t10229 to ptr
  %gml10232 = load i32, ptr %gmp10231, align 1, !alias.scope !4, !noalias !3
  %gmp10233 = inttoptr i64 %t10230 to ptr
  %gml10234 = load i32, ptr %gmp10233, align 1, !alias.scope !4, !noalias !3
  %c10235 = zext i32 %gml10232 to i128
  %wp10236 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c10235, ptr %wp10236, align 16, !alias.scope !3, !noalias !4
  %c10237 = zext i32 %gml10234 to i128
  %wp10238 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c10237, ptr %wp10238, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d88 word 0x1f074000
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 7, i32 16)
  ; @pc 0x800064d8c word 0x1e2438a5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 5, i32 4)
  ; @pc 0x800064d90 word 0x1f0600aa
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 10, i32 5, i32 6, i32 0)
  ; @pc 0x800064d94 word 0x2d4f07e0
  %r10239.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10239 = load i64, ptr %r10239.p, align 8, !alias.scope !3, !noalias !4
  %t10240 = add i64 %r10239, 120
  %t10241 = add i64 %t10240, 4
  %gmp10242 = inttoptr i64 %t10240 to ptr
  %gml10243 = load i32, ptr %gmp10242, align 1, !alias.scope !4, !noalias !3
  %gmp10244 = inttoptr i64 %t10241 to ptr
  %gml10245 = load i32, ptr %gmp10244, align 1, !alias.scope !4, !noalias !3
  %c10246 = zext i32 %gml10243 to i128
  %wp10247 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10246, ptr %wp10247, align 16, !alias.scope !3, !noalias !4
  %c10248 = zext i32 %gml10245 to i128
  %wp10249 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10248, ptr %wp10249, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064d98 word 0x1e233821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 3)
  ; @pc 0x800064d9c word 0x1e223800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 2)
  ; @pc 0x800064da0 word 0xbd4083e2
  %r10250.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10250 = load i64, ptr %r10250.p, align 8, !alias.scope !3, !noalias !4
  %t10251 = add i64 %r10250, 128
  %gmp10252 = inttoptr i64 %t10251 to ptr
  %gml10253 = load i32, ptr %gmp10252, align 1, !alias.scope !4, !noalias !3
  %c10254 = zext i32 %gml10253 to i128
  %wp10255 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10254, ptr %wp10255, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064da4 word 0x2d0d07e0
  %r10256.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10256 = load i64, ptr %r10256.p, align 8, !alias.scope !3, !noalias !4
  %t10257 = add i64 %r10256, 104
  %t10258 = add i64 %t10257, 4
  %r10259.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10259 = load i128, ptr %r10259.p, align 16, !alias.scope !3, !noalias !4
  %r10260.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10260 = load i128, ptr %r10260.p, align 16, !alias.scope !3, !noalias !4
  %c10261 = trunc i128 %r10259 to i32
  %c10262 = trunc i128 %r10260 to i32
  %gmp10263 = inttoptr i64 %t10257 to ptr
  store i32 %c10261, ptr %gmp10263, align 1, !alias.scope !4, !noalias !3
  %gmp10264 = inttoptr i64 %t10258 to ptr
  store i32 %c10262, ptr %gmp10264, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064da8 word 0x1e243840
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 2, i32 4)
  ; @pc 0x800064dac word 0xbd0073e0
  %r10265.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10265 = load i64, ptr %r10265.p, align 8, !alias.scope !3, !noalias !4
  %t10266 = add i64 %r10265, 112
  %r10267.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10267 = load i128, ptr %r10267.p, align 16, !alias.scope !3, !noalias !4
  %c10268 = trunc i128 %r10267 to i32
  %gmp10269 = inttoptr i64 %t10266 to ptr
  store i32 %c10268, ptr %gmp10269, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064db0 word 0x9410a0b5
  %wp10270 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360151476, ptr %wp10270, align 8, !alias.scope !3, !noalias !4
  call void @f_80048d084(ptr %c)
  ; @pc 0x800064db4 word 0x2d560ec0
  %r10271.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10271 = load i64, ptr %r10271.p, align 8, !alias.scope !3, !noalias !4
  %t10272 = add i64 %r10271, 176
  %t10273 = add i64 %t10272, 4
  %gmp10274 = inttoptr i64 %t10272 to ptr
  %gml10275 = load i32, ptr %gmp10274, align 1, !alias.scope !4, !noalias !3
  %gmp10276 = inttoptr i64 %t10273 to ptr
  %gml10277 = load i32, ptr %gmp10276, align 1, !alias.scope !4, !noalias !3
  %c10278 = zext i32 %gml10275 to i128
  %wp10279 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c10278, ptr %wp10279, align 16, !alias.scope !3, !noalias !4
  %c10280 = zext i32 %gml10277 to i128
  %wp10281 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10280, ptr %wp10281, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064db8 word 0xbd40bac4
  %r10282.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10282 = load i64, ptr %r10282.p, align 8, !alias.scope !3, !noalias !4
  %t10283 = add i64 %r10282, 184
  %gmp10284 = inttoptr i64 %t10283 to ptr
  %gml10285 = load i32, ptr %gmp10284, align 1, !alias.scope !4, !noalias !3
  %c10286 = zext i32 %gml10285 to i128
  %wp10287 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10286, ptr %wp10287, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064dbc word 0x2d4d0be1
  %r10288.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10288 = load i64, ptr %r10288.p, align 8, !alias.scope !3, !noalias !4
  %t10289 = add i64 %r10288, 104
  %t10290 = add i64 %t10289, 4
  %gmp10291 = inttoptr i64 %t10289 to ptr
  %gml10292 = load i32, ptr %gmp10291, align 1, !alias.scope !4, !noalias !3
  %gmp10293 = inttoptr i64 %t10290 to ptr
  %gml10294 = load i32, ptr %gmp10293, align 1, !alias.scope !4, !noalias !3
  %c10295 = zext i32 %gml10292 to i128
  %wp10296 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c10295, ptr %wp10296, align 16, !alias.scope !3, !noalias !4
  %c10297 = zext i32 %gml10294 to i128
  %wp10298 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c10297, ptr %wp10298, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064dc0 word 0x1e230846
  call void @rt_fp_op_s(ptr %c, i32 2, i32 6, i32 2, i32 3)
  ; @pc 0x800064dc4 word 0xbd4073e3
  %r10299.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10299 = load i64, ptr %r10299.p, align 8, !alias.scope !3, !noalias !4
  %t10300 = add i64 %r10299, 112
  %gmp10301 = inttoptr i64 %t10300 to ptr
  %gml10302 = load i32, ptr %gmp10301, align 1, !alias.scope !4, !noalias !3
  %c10303 = zext i32 %gml10302 to i128
  %wp10304 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10303, ptr %wp10304, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064dc8 word 0xf9405ac8
  %r10305.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10305 = load i64, ptr %r10305.p, align 8, !alias.scope !3, !noalias !4
  %t10306 = add i64 %r10305, 176
  %gmp10307 = inttoptr i64 %t10306 to ptr
  %gml10308 = load i64, ptr %gmp10307, align 1, !alias.scope !4, !noalias !3
  %wp10309 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10308, ptr %wp10309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064dcc word 0xf9004ec8
  %r10310.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10310 = load i64, ptr %r10310.p, align 8, !alias.scope !3, !noalias !4
  %t10311 = add i64 %r10310, 152
  %r10312.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10312 = load i64, ptr %r10312.p, align 8, !alias.scope !3, !noalias !4
  %gmp10313 = inttoptr i64 %t10311 to ptr
  store i64 %r10312, ptr %gmp10313, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064dd0 word 0x1f001820
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 1, i32 0, i32 6)
  ; @pc 0x800064dd4 word 0xb940bac8
  %r10314.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10314 = load i64, ptr %r10314.p, align 8, !alias.scope !3, !noalias !4
  %t10315 = add i64 %r10314, 184
  %gmp10316 = inttoptr i64 %t10315 to ptr
  %gml10317 = load i32, ptr %gmp10316, align 1, !alias.scope !4, !noalias !3
  %c10318 = zext i32 %gml10317 to i64
  %wp10319 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10318, ptr %wp10319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064dd8 word 0xb900a2c8
  %r10320.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10320 = load i64, ptr %r10320.p, align 8, !alias.scope !3, !noalias !4
  %t10321 = add i64 %r10320, 160
  %r10322.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10322 = load i64, ptr %r10322.p, align 8, !alias.scope !3, !noalias !4
  %c10323 = trunc i64 %r10322 to i32
  %gmp10324 = inttoptr i64 %t10321 to ptr
  store i32 %c10323, ptr %gmp10324, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064ddc word 0x1f040060
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 3, i32 4, i32 0)
  ; @pc 0x800064de0 word 0x2d5196c4
  %r10325.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10325 = load i64, ptr %r10325.p, align 8, !alias.scope !3, !noalias !4
  %t10326 = add i64 %r10325, 140
  %t10327 = add i64 %t10326, 4
  %gmp10328 = inttoptr i64 %t10326 to ptr
  %gml10329 = load i32, ptr %gmp10328, align 1, !alias.scope !4, !noalias !3
  %gmp10330 = inttoptr i64 %t10327 to ptr
  %gml10331 = load i32, ptr %gmp10330, align 1, !alias.scope !4, !noalias !3
  %c10332 = zext i32 %gml10329 to i128
  %wp10333 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10332, ptr %wp10333, align 16, !alias.scope !3, !noalias !4
  %c10334 = zext i32 %gml10331 to i128
  %wp10335 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c10334, ptr %wp10335, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064de4 word 0x1e201940
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 10, i32 0)
  ; @pc 0x800064de8 word 0x1e200821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 0)
  ; @pc 0x800064dec word 0x1e200842
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 2, i32 0)
  ; @pc 0x800064df0 word 0x1e200860
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 3, i32 0)
  ; @pc 0x800064df4 word 0xbd4096c3
  %r10336.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10336 = load i64, ptr %r10336.p, align 8, !alias.scope !3, !noalias !4
  %t10337 = add i64 %r10336, 148
  %gmp10338 = inttoptr i64 %t10337 to ptr
  %gml10339 = load i32, ptr %gmp10338, align 1, !alias.scope !4, !noalias !3
  %c10340 = zext i32 %gml10339 to i128
  %wp10341 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c10340, ptr %wp10341, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064df8 word 0x1e212881
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 4, i32 1)
  ; @pc 0x800064dfc word 0x1e2228a2
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 5, i32 2)
  ; @pc 0x800064e00 word 0x1e232800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 3)
  ; @pc 0x800064e04 word 0x2d118ac1
  %r10342.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10342 = load i64, ptr %r10342.p, align 8, !alias.scope !3, !noalias !4
  %t10343 = add i64 %r10342, 140
  %t10344 = add i64 %t10343, 4
  %r10345.p = getelementptr inbounds i8, ptr %c, i64 528
  %r10345 = load i128, ptr %r10345.p, align 16, !alias.scope !3, !noalias !4
  %r10346.p = getelementptr inbounds i8, ptr %c, i64 544
  %r10346 = load i128, ptr %r10346.p, align 16, !alias.scope !3, !noalias !4
  %c10347 = trunc i128 %r10345 to i32
  %c10348 = trunc i128 %r10346 to i32
  %gmp10349 = inttoptr i64 %t10343 to ptr
  store i32 %c10347, ptr %gmp10349, align 1, !alias.scope !4, !noalias !3
  %gmp10350 = inttoptr i64 %t10344 to ptr
  store i32 %c10348, ptr %gmp10350, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064e08 word 0xbd0096c0
  %r10351.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10351 = load i64, ptr %r10351.p, align 8, !alias.scope !3, !noalias !4
  %t10352 = add i64 %r10351, 148
  %r10353.p = getelementptr inbounds i8, ptr %c, i64 512
  %r10353 = load i128, ptr %r10353.p, align 16, !alias.scope !3, !noalias !4
  %c10354 = trunc i128 %r10353 to i32
  %gmp10355 = inttoptr i64 %t10352 to ptr
  store i32 %c10354, ptr %gmp10355, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064e0c word 0x14000003
  br label %L_800064e18
L_800064f1c_ft:
  ; @pc 0x800064f1c word 0xb940daca
  %r10784.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10784 = load i64, ptr %r10784.p, align 8, !alias.scope !3, !noalias !4
  %t10785 = add i64 %r10784, 216
  %gmp10786 = inttoptr i64 %t10785 to ptr
  %gml10787 = load i32, ptr %gmp10786, align 1, !alias.scope !4, !noalias !3
  %c10788 = zext i32 %gml10787 to i64
  %wp10789 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10788, ptr %wp10789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064f20 word 0x6b09015f
  %r10790.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10790 = load i64, ptr %r10790.p, align 8, !alias.scope !3, !noalias !4
  %c10791 = trunc i64 %r10790 to i32
  %r10792.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10792 = load i64, ptr %r10792.p, align 8, !alias.scope !3, !noalias !4
  %c10793 = trunc i64 %r10792 to i32
  %t10794 = sub i32 %c10791, %c10793
  %fn10795 = icmp slt i32 %t10794, 0
  %fz10796 = icmp eq i32 %t10794, 0
  %fc10797 = icmp uge i32 %c10791, %c10793
  %fx110798 = xor i32 %c10791, %c10793
  %fx210799 = xor i32 %c10791, %t10794
  %fva10800 = and i32 %fx110798, %fx210799
  %fv10801 = icmp slt i32 %fva10800, 0
  %nz10802 = zext i1 %fn10795 to i64
  %zz10803 = zext i1 %fz10796 to i64
  %cz10804 = zext i1 %fc10797 to i64
  %vz10805 = zext i1 %fv10801 to i64
  %ns10806 = shl i64 %nz10802, 31
  %zs10807 = shl i64 %zz10803, 30
  %cs10808 = shl i64 %cz10804, 29
  %vs10809 = shl i64 %vz10805, 28
  %nzor10810 = or i64 %ns10806, %zs10807
  %cvor10811 = or i64 %cs10808, %vs10809
  %nzcv10812 = or i64 %nzor10810, %cvor10811
  %wp10813 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10812, ptr %wp10813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064f24 word 0xf94072cb
  %r10814.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10814 = load i64, ptr %r10814.p, align 8, !alias.scope !3, !noalias !4
  %t10815 = add i64 %r10814, 224
  %gmp10816 = inttoptr i64 %t10815 to ptr
  %gml10817 = load i64, ptr %gmp10816, align 1, !alias.scope !4, !noalias !3
  %wp10818 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml10817, ptr %wp10818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064f28 word 0x1a9f8129
  %r10819.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10819 = load i64, ptr %r10819.p, align 8, !alias.scope !3, !noalias !4
  %c10820 = trunc i64 %r10819 to i32
  %r10821.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10821 = load i64, ptr %r10821.p, align 8, !alias.scope !3, !noalias !4
  %fsh10823 = lshr i64 %r10821, 29
  %ftr10824 = trunc i64 %fsh10823 to i1
  %fsh10825 = lshr i64 %r10821, 30
  %ftr10826 = trunc i64 %fsh10825 to i1
  %fnz10827 = xor i1 %ftr10826, true
  %cond10822 = and i1 %ftr10824, %fnz10827
  %sel10828 = select i1 %cond10822, i32 %c10820, i32 0
  %c10829 = zext i32 %sel10828 to i64
  %wp10830 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10829, ptr %wp10830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064f2c word 0x9b282d28
  %r10831.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10831 = load i64, ptr %r10831.p, align 8, !alias.scope !3, !noalias !4
  %c10832 = trunc i64 %r10831 to i32
  %c10833 = sext i32 %c10832 to i64
  %r10834.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10834 = load i64, ptr %r10834.p, align 8, !alias.scope !3, !noalias !4
  %c10835 = trunc i64 %r10834 to i32
  %c10836 = sext i32 %c10835 to i64
  %t10837 = mul i64 %c10833, %c10836
  %r10838.p = getelementptr inbounds i8, ptr %c, i64 88
  %r10838 = load i64, ptr %r10838.p, align 8, !alias.scope !3, !noalias !4
  %t10839 = add i64 %r10838, %t10837
  %wp10840 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t10839, ptr %wp10840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800064f30 word 0xbd400111
  %r10841.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10841 = load i64, ptr %r10841.p, align 8, !alias.scope !3, !noalias !4
  %gmp10842 = inttoptr i64 %r10841 to ptr
  %gml10843 = load i32, ptr %gmp10842, align 1, !alias.scope !4, !noalias !3
  %c10844 = zext i32 %gml10843 to i128
  %wp10845 = getelementptr inbounds i8, ptr %c, i64 784
  store i128 %c10844, ptr %wp10845, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f34 word 0x1e3138e7
  call void @rt_fp_op_s(ptr %c, i32 1, i32 7, i32 7, i32 17)
  ; @pc 0x800064f38 word 0xbd0076c7
  %r10846.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10846 = load i64, ptr %r10846.p, align 8, !alias.scope !3, !noalias !4
  %t10847 = add i64 %r10846, 116
  %r10848.p = getelementptr inbounds i8, ptr %c, i64 624
  %r10848 = load i128, ptr %r10848.p, align 16, !alias.scope !3, !noalias !4
  %c10849 = trunc i128 %r10848 to i32
  %gmp10850 = inttoptr i64 %t10847 to ptr
  store i32 %c10849, ptr %gmp10850, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f3c word 0xbd400507
  %r10851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10851 = load i64, ptr %r10851.p, align 8, !alias.scope !3, !noalias !4
  %t10852 = add i64 %r10851, 4
  %gmp10853 = inttoptr i64 %t10852 to ptr
  %gml10854 = load i32, ptr %gmp10853, align 1, !alias.scope !4, !noalias !3
  %c10855 = zext i32 %gml10854 to i128
  %wp10856 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c10855, ptr %wp10856, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f40 word 0x1e273a07
  call void @rt_fp_op_s(ptr %c, i32 1, i32 7, i32 16, i32 7)
  ; @pc 0x800064f44 word 0xbd007ac7
  %r10857.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10857 = load i64, ptr %r10857.p, align 8, !alias.scope !3, !noalias !4
  %t10858 = add i64 %r10857, 120
  %r10859.p = getelementptr inbounds i8, ptr %c, i64 624
  %r10859 = load i128, ptr %r10859.p, align 16, !alias.scope !3, !noalias !4
  %c10860 = trunc i128 %r10859 to i32
  %gmp10861 = inttoptr i64 %t10858 to ptr
  store i32 %c10860, ptr %gmp10861, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f48 word 0xbd400907
  %r10862.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10862 = load i64, ptr %r10862.p, align 8, !alias.scope !3, !noalias !4
  %t10863 = add i64 %r10862, 8
  %gmp10864 = inttoptr i64 %t10863 to ptr
  %gml10865 = load i32, ptr %gmp10864, align 1, !alias.scope !4, !noalias !3
  %c10866 = zext i32 %gml10865 to i128
  %wp10867 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c10866, ptr %wp10867, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f4c word 0x1e2738c6
  call void @rt_fp_op_s(ptr %c, i32 1, i32 6, i32 6, i32 7)
  ; @pc 0x800064f50 word 0xbd007ec6
  %r10868.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10868 = load i64, ptr %r10868.p, align 8, !alias.scope !3, !noalias !4
  %t10869 = add i64 %r10868, 124
  %r10870.p = getelementptr inbounds i8, ptr %c, i64 608
  %r10870 = load i128, ptr %r10870.p, align 16, !alias.scope !3, !noalias !4
  %c10871 = trunc i128 %r10870 to i32
  %gmp10872 = inttoptr i64 %t10869 to ptr
  store i32 %c10871, ptr %gmp10872, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f54 word 0xbd400d06
  %r10873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10873 = load i64, ptr %r10873.p, align 8, !alias.scope !3, !noalias !4
  %t10874 = add i64 %r10873, 12
  %gmp10875 = inttoptr i64 %t10874 to ptr
  %gml10876 = load i32, ptr %gmp10875, align 1, !alias.scope !4, !noalias !3
  %c10877 = zext i32 %gml10876 to i128
  %wp10878 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c10877, ptr %wp10878, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f58 word 0x1e2638a5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 5, i32 6)
  ; @pc 0x800064f5c word 0xbd0082c5
  %r10879.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10879 = load i64, ptr %r10879.p, align 8, !alias.scope !3, !noalias !4
  %t10880 = add i64 %r10879, 128
  %r10881.p = getelementptr inbounds i8, ptr %c, i64 592
  %r10881 = load i128, ptr %r10881.p, align 16, !alias.scope !3, !noalias !4
  %c10882 = trunc i128 %r10881 to i32
  %gmp10883 = inttoptr i64 %t10880 to ptr
  store i32 %c10882, ptr %gmp10883, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f60 word 0xbd401105
  %r10884.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10884 = load i64, ptr %r10884.p, align 8, !alias.scope !3, !noalias !4
  %t10885 = add i64 %r10884, 16
  %gmp10886 = inttoptr i64 %t10885 to ptr
  %gml10887 = load i32, ptr %gmp10886, align 1, !alias.scope !4, !noalias !3
  %c10888 = zext i32 %gml10887 to i128
  %wp10889 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c10888, ptr %wp10889, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f64 word 0x1e253884
  call void @rt_fp_op_s(ptr %c, i32 1, i32 4, i32 4, i32 5)
  ; @pc 0x800064f68 word 0xbd0086c4
  %r10890.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10890 = load i64, ptr %r10890.p, align 8, !alias.scope !3, !noalias !4
  %t10891 = add i64 %r10890, 132
  %r10892.p = getelementptr inbounds i8, ptr %c, i64 576
  %r10892 = load i128, ptr %r10892.p, align 16, !alias.scope !3, !noalias !4
  %c10893 = trunc i128 %r10892 to i32
  %gmp10894 = inttoptr i64 %t10891 to ptr
  store i32 %c10893, ptr %gmp10894, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800064f6c word 0xbd401504
  %r10895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10895 = load i64, ptr %r10895.p, align 8, !alias.scope !3, !noalias !4
  %t10896 = add i64 %r10895, 20
  %gmp10897 = inttoptr i64 %t10896 to ptr
  %gml10898 = load i32, ptr %gmp10897, align 1, !alias.scope !4, !noalias !3
  %c10899 = zext i32 %gml10898 to i128
  %wp10900 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c10899, ptr %wp10900, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800064f70 word 0x1e243863
  call void @rt_fp_op_s(ptr %c, i32 1, i32 3, i32 3, i32 4)
  ; @pc 0x800064f74 word 0xbd008ac3
  %r10901.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10901 = load i64, ptr %r10901.p, align 8, !alias.scope !3, !noalias !4
  %t10902 = add i64 %r10901, 136
  %r10903.p = getelementptr inbounds i8, ptr %c, i64 560
  %r10903 = load i128, ptr %r10903.p, align 16, !alias.scope !3, !noalias !4
  %c10904 = trunc i128 %r10903 to i32
  %gmp10905 = inttoptr i64 %t10902 to ptr
  store i32 %c10904, ptr %gmp10905, align 1, !alias.scope !4, !noalias !3
  br label %L_800064f78
L_800065014_ft:
  ; @pc 0x800065014 word 0xbd01d008
  %r11009.p = getelementptr inbounds i8, ptr %c, i64 0
  %r11009 = load i64, ptr %r11009.p, align 8, !alias.scope !3, !noalias !4
  %t11010 = add i64 %r11009, 464
  %r11011.p = getelementptr inbounds i8, ptr %c, i64 640
  %r11011 = load i128, ptr %r11011.p, align 16, !alias.scope !3, !noalias !4
  %c11012 = trunc i128 %r11011 to i32
  %gmp11013 = inttoptr i64 %t11010 to ptr
  store i32 %c11012, ptr %gmp11013, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800065018 word 0x94aacb3d
  %wp11014 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152092, ptr %wp11014, align 8, !alias.scope !3, !noalias !4
  call void @f_802b17d0c(ptr %c)
  br label %L_80006501c
L_80006504c_ft:
  ; @pc 0x80006504c word 0xf94016e8
  %r11078.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11078 = load i64, ptr %r11078.p, align 8, !alias.scope !3, !noalias !4
  %t11079 = add i64 %r11078, 40
  %gmp11080 = inttoptr i64 %t11079 to ptr
  %gml11081 = load i64, ptr %gmp11080, align 1, !alias.scope !4, !noalias !3
  %wp11082 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11081, ptr %wp11082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065050 word 0xf860d908
  %r11083.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11083 = load i64, ptr %r11083.p, align 8, !alias.scope !3, !noalias !4
  %r11084.p = getelementptr inbounds i8, ptr %c, i64 0
  %r11084 = load i64, ptr %r11084.p, align 8, !alias.scope !3, !noalias !4
  %c11085 = trunc i64 %r11084 to i32
  %c11086 = sext i32 %c11085 to i64
  %t11087 = shl i64 %c11086, 3
  %t11088 = add i64 %r11083, %t11087
  %gmp11089 = inttoptr i64 %t11088 to ptr
  %gml11090 = load i64, ptr %gmp11089, align 1, !alias.scope !4, !noalias !3
  %wp11091 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11090, ptr %wp11091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065054 word 0xf9400108
  %r11092.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11092 = load i64, ptr %r11092.p, align 8, !alias.scope !3, !noalias !4
  %gmp11093 = inttoptr i64 %r11092 to ptr
  %gml11094 = load i64, ptr %gmp11093, align 1, !alias.scope !4, !noalias !3
  %wp11095 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11094, ptr %wp11095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065058 word 0xb40000a8
  %r11096.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11096 = load i64, ptr %r11096.p, align 8, !alias.scope !3, !noalias !4
  %cmp11097 = icmp eq i64 %r11096, 0
  br i1 %cmp11097, label %L_80006506c, label %L_80006505c_ft
L_80006505c_ft:
  ; @pc 0x80006505c word 0x39405108
  %r11098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11098 = load i64, ptr %r11098.p, align 8, !alias.scope !3, !noalias !4
  %t11099 = add i64 %r11098, 20
  %gmp11100 = inttoptr i64 %t11099 to ptr
  %gml11101 = load i8, ptr %gmp11100, align 1, !alias.scope !4, !noalias !3
  %c11102 = zext i8 %gml11101 to i64
  %wp11103 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c11102, ptr %wp11103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065060 word 0x910462c0
  %r11104.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11104 = load i64, ptr %r11104.p, align 8, !alias.scope !3, !noalias !4
  %t11105 = add i64 %r11104, 280
  %wp11106 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11105, ptr %wp11106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065064 word 0x12000501
  %r11107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11107 = load i64, ptr %r11107.p, align 8, !alias.scope !3, !noalias !4
  %c11108 = trunc i64 %r11107 to i32
  %t11109 = and i32 %c11108, 3
  %c11110 = zext i32 %t11109 to i64
  %wp11111 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11110, ptr %wp11111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800065068 word 0x94795a81
  %wp11112 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360152172, ptr %wp11112, align 8, !alias.scope !3, !noalias !4
  call void @f_801ebba6c(ptr %c)
  br label %L_80006506c
L_800065218_unreach:
  ; @pc 0x800065218 word 0x00000000
  call void @rt_udf(ptr %c, i64 34360152600)
  unreachable
L_80006521c_unreach:
  ; @pc 0x80006521c word 0x00000000
  call void @rt_udf(ptr %c, i64 34360152604)
  unreachable
L_8000630f8_jt_def:
  %fp11425 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1169, ptr %fp11425, align 8, !alias.scope !3, !noalias !4
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
