; UltraTears chunk main_107_buddysplit: 1 functions [0x8001a6094..0x8001a6c10)
; ModuleID = 'main_107_buddysplit_raw'
source_filename = "main_107_buddysplit_raw"
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

define dso_local void @f_8001a6094(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001a6094:
  ; @pc 0x8001a6094 word 0x7100043f
  %r5.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %c6 = trunc i64 %r5 to i32
  %t7 = sub i32 %c6, 1
  %fn8 = icmp slt i32 %t7, 0
  %fz9 = icmp eq i32 %t7, 0
  %fc10 = icmp uge i32 %c6, 1
  %fx111 = xor i32 %c6, 1
  %fx212 = xor i32 %c6, %t7
  %fva13 = and i32 %fx111, %fx212
  %fv14 = icmp slt i32 %fva13, 0
  %nz15 = zext i1 %fn8 to i64
  %zz16 = zext i1 %fz9 to i64
  %cz17 = zext i1 %fc10 to i64
  %vz18 = zext i1 %fv14 to i64
  %ns19 = shl i64 %nz15, 31
  %zs20 = shl i64 %zz16, 30
  %cs21 = shl i64 %cz17, 29
  %vs22 = shl i64 %vz18, 28
  %nzor23 = or i64 %ns19, %zs20
  %cvor24 = or i64 %cs21, %vs22
  %nzcv25 = or i64 %nzor23, %cvor24
  %wp26 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv25, ptr %wp26, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6098 word 0x5400082b
  %r27.p = getelementptr inbounds i8, ptr %c, i64 272
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %fsh29 = lshr i64 %r27, 31
  %ftr30 = trunc i64 %fsh29 to i1
  %fsh31 = lshr i64 %r27, 28
  %ftr32 = trunc i64 %fsh31 to i1
  %cond28 = icmp ne i1 %ftr30, %ftr32
  br i1 %cond28, label %L_8001a619c, label %L_8001a609c_ft
L_8001a60e8:
  ; @pc 0x8001a60e8 word 0xf94002a8
  %r125.p = getelementptr inbounds i8, ptr %c, i64 168
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %gmp126 = inttoptr i64 %r125 to ptr
  %gml127 = load i64, ptr %gmp126, align 1, !alias.scope !4, !noalias !3
  %wp128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60ec word 0xf001bda9
  %wp129 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60f0 word 0xf9401908
  %r130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r130 = load i64, ptr %r130.p, align 8, !alias.scope !3, !noalias !4
  %t131 = add i64 %r130, 48
  %gmp132 = inttoptr i64 %t131 to ptr
  %gml133 = load i64, ptr %gmp132, align 1, !alias.scope !4, !noalias !3
  %wp134 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml133, ptr %wp134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60f4 word 0xf944a529
  %r135.p = getelementptr inbounds i8, ptr %c, i64 72
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %t136 = add i64 %r135, 2376
  %gmp137 = inttoptr i64 %t136 to ptr
  %gml138 = load i64, ptr %gmp137, align 1, !alias.scope !4, !noalias !3
  %wp139 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml138, ptr %wp139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60f8 word 0xeb09011f
  %r140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %r141.p = getelementptr inbounds i8, ptr %c, i64 72
  %r141 = load i64, ptr %r141.p, align 8, !alias.scope !3, !noalias !4
  %t142 = sub i64 %r140, %r141
  %fn143 = icmp slt i64 %t142, 0
  %fz144 = icmp eq i64 %t142, 0
  %fc145 = icmp uge i64 %r140, %r141
  %fx1146 = xor i64 %r140, %r141
  %fx2147 = xor i64 %r140, %t142
  %fva148 = and i64 %fx1146, %fx2147
  %fv149 = icmp slt i64 %fva148, 0
  %nz150 = zext i1 %fn143 to i64
  %zz151 = zext i1 %fz144 to i64
  %cz152 = zext i1 %fc145 to i64
  %vz153 = zext i1 %fv149 to i64
  %ns154 = shl i64 %nz150, 31
  %zs155 = shl i64 %zz151, 30
  %cs156 = shl i64 %cz152, 29
  %vs157 = shl i64 %vz153, 28
  %nzor158 = or i64 %ns154, %zs155
  %cvor159 = or i64 %cs156, %vs157
  %nzcv160 = or i64 %nzor158, %cvor159
  %wp161 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv160, ptr %wp161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60fc word 0x54000521
  %r162.p = getelementptr inbounds i8, ptr %c, i64 272
  %r162 = load i64, ptr %r162.p, align 8, !alias.scope !3, !noalias !4
  %fsh164 = lshr i64 %r162, 30
  %ftr165 = trunc i64 %fsh164 to i1
  %cond163 = xor i1 %ftr165, true
  br i1 %cond163, label %L_8001a61a0, label %L_8001a6100_ft
L_8001a6110:
  ; @pc 0x8001a6110 word 0xf10022ff
  %r180.p = getelementptr inbounds i8, ptr %c, i64 184
  %r180 = load i64, ptr %r180.p, align 8, !alias.scope !3, !noalias !4
  %t181 = sub i64 %r180, 8
  %fn182 = icmp slt i64 %t181, 0
  %fz183 = icmp eq i64 %t181, 0
  %fc184 = icmp uge i64 %r180, 8
  %fx1185 = xor i64 %r180, 8
  %fx2186 = xor i64 %r180, %t181
  %fva187 = and i64 %fx1185, %fx2186
  %fv188 = icmp slt i64 %fva187, 0
  %nz189 = zext i1 %fn182 to i64
  %zz190 = zext i1 %fz183 to i64
  %cz191 = zext i1 %fc184 to i64
  %vz192 = zext i1 %fv188 to i64
  %ns193 = shl i64 %nz189, 31
  %zs194 = shl i64 %zz190, 30
  %cs195 = shl i64 %cz191, 29
  %vs196 = shl i64 %vz192, 28
  %nzor197 = or i64 %ns193, %zs194
  %cvor198 = or i64 %cs195, %vs196
  %nzcv199 = or i64 %nzor197, %cvor198
  %wp200 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv199, ptr %wp200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6114 word 0x52800108
  %c201 = zext i32 8 to i64
  %wp202 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c201, ptr %wp202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6118 word 0xf9400349
  %r203.p = getelementptr inbounds i8, ptr %c, i64 208
  %r203 = load i64, ptr %r203.p, align 8, !alias.scope !3, !noalias !4
  %gmp204 = inttoptr i64 %r203 to ptr
  %gml205 = load i64, ptr %gmp204, align 1, !alias.scope !4, !noalias !3
  %wp206 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml205, ptr %wp206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a611c word 0x9a8882fb
  %r207.p = getelementptr inbounds i8, ptr %c, i64 184
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %r208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %r209.p = getelementptr inbounds i8, ptr %c, i64 272
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %fsh211 = lshr i64 %r209, 29
  %ftr212 = trunc i64 %fsh211 to i1
  %fsh213 = lshr i64 %r209, 30
  %ftr214 = trunc i64 %fsh213 to i1
  %fnz215 = xor i1 %ftr214, true
  %cond210 = and i1 %ftr212, %fnz215
  %sel216 = select i1 %cond210, i64 %r207, i64 %r208
  %wp217 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %sel216, ptr %wp217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6120 word 0x710002df
  %r218.p = getelementptr inbounds i8, ptr %c, i64 176
  %r218 = load i64, ptr %r218.p, align 8, !alias.scope !3, !noalias !4
  %c219 = trunc i64 %r218 to i32
  %t220 = sub i32 %c219, 0
  %fn221 = icmp slt i32 %t220, 0
  %fz222 = icmp eq i32 %t220, 0
  %fc223 = icmp uge i32 %c219, 0
  %fx1224 = xor i32 %c219, 0
  %fx2225 = xor i32 %c219, %t220
  %fva226 = and i32 %fx1224, %fx2225
  %fv227 = icmp slt i32 %fva226, 0
  %nz228 = zext i1 %fn221 to i64
  %zz229 = zext i1 %fz222 to i64
  %cz230 = zext i1 %fc223 to i64
  %vz231 = zext i1 %fv227 to i64
  %ns232 = shl i64 %nz228, 31
  %zs233 = shl i64 %zz229, 30
  %cs234 = shl i64 %cz230, 29
  %vs235 = shl i64 %vz231, 28
  %nzor236 = or i64 %ns232, %zs233
  %cvor237 = or i64 %cs234, %vs235
  %nzcv238 = or i64 %nzor236, %cvor237
  %wp239 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv238, ptr %wp239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6124 word 0x5a9656c8
  %r240.p = getelementptr inbounds i8, ptr %c, i64 176
  %r240 = load i64, ptr %r240.p, align 8, !alias.scope !3, !noalias !4
  %c241 = trunc i64 %r240 to i32
  %r242.p = getelementptr inbounds i8, ptr %c, i64 176
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %c243 = trunc i64 %r242 to i32
  %t244 = sub i32 0, %c243
  %r245.p = getelementptr inbounds i8, ptr %c, i64 272
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %fsh247 = lshr i64 %r245, 31
  %ftr248 = trunc i64 %fsh247 to i1
  %cond246 = xor i1 %ftr248, true
  %sel249 = select i1 %cond246, i32 %c241, i32 %t244
  %c250 = zext i32 %sel249 to i64
  %wp251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c250, ptr %wp251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6128 word 0x5100050a
  %r252.p = getelementptr inbounds i8, ptr %c, i64 64
  %r252 = load i64, ptr %r252.p, align 8, !alias.scope !3, !noalias !4
  %c253 = trunc i64 %r252 to i32
  %t254 = sub i32 %c253, 1
  %c255 = zext i32 %t254 to i64
  %wp256 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c255, ptr %wp256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a612c word 0x6a0a011f
  %r257.p = getelementptr inbounds i8, ptr %c, i64 80
  %r257 = load i64, ptr %r257.p, align 8, !alias.scope !3, !noalias !4
  %c258 = trunc i64 %r257 to i32
  %r259.p = getelementptr inbounds i8, ptr %c, i64 64
  %r259 = load i64, ptr %r259.p, align 8, !alias.scope !3, !noalias !4
  %c260 = trunc i64 %r259 to i32
  %t261 = and i32 %c260, %c258
  %fn262 = icmp slt i32 %t261, 0
  %fz263 = icmp eq i32 %t261, 0
  %nz264 = zext i1 %fn262 to i64
  %zz265 = zext i1 %fz263 to i64
  %ns266 = shl i64 %nz264, 31
  %zs267 = shl i64 %zz265, 30
  %nzcv268 = or i64 %ns266, %zs267
  %wp269 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv268, ptr %wp269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6130 word 0x54001a41
  %r270.p = getelementptr inbounds i8, ptr %c, i64 272
  %r270 = load i64, ptr %r270.p, align 8, !alias.scope !3, !noalias !4
  %fsh272 = lshr i64 %r270, 30
  %ftr273 = trunc i64 %fsh272 to i1
  %cond271 = xor i1 %ftr273, true
  br i1 %cond271, label %L_8001a6478, label %L_8001a6134_ft
L_8001a616c:
  ; @pc 0x8001a616c word 0xb4000eba
  %r375.p = getelementptr inbounds i8, ptr %c, i64 208
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %cmp376 = icmp eq i64 %r375, 0
  br i1 %cmp376, label %L_8001a6340, label %L_8001a6170
L_8001a6170:
  ; @pc 0x8001a6170 word 0xb5003c58
  %r377.p = getelementptr inbounds i8, ptr %c, i64 192
  %r377 = load i64, ptr %r377.p, align 8, !alias.scope !3, !noalias !4
  %cmp378 = icmp ne i64 %r377, 0
  br i1 %cmp378, label %L_8001a68f8, label %L_8001a6174
L_8001a6174:
  ; @pc 0x8001a6174 word 0xb400007a
  %r379.p = getelementptr inbounds i8, ptr %c, i64 208
  %r379 = load i64, ptr %r379.p, align 8, !alias.scope !3, !noalias !4
  %cmp380 = icmp eq i64 %r379, 0
  br i1 %cmp380, label %L_8001a6180, label %L_8001a6178_ft
L_8001a6180:
  ; @pc 0x8001a6180 word 0xa9494ff4
  %r391.p = getelementptr inbounds i8, ptr %c, i64 256
  %r391 = load i64, ptr %r391.p, align 8, !alias.scope !3, !noalias !4
  %t392 = add i64 %r391, 144
  %t393 = add i64 %t392, 8
  %gmp394 = inttoptr i64 %t392 to ptr
  %gml395 = load i64, ptr %gmp394, align 1, !alias.scope !4, !noalias !3
  %gmp396 = inttoptr i64 %t393 to ptr
  %gml397 = load i64, ptr %gmp396, align 1, !alias.scope !4, !noalias !3
  %wp398 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml395, ptr %wp398, align 8, !alias.scope !3, !noalias !4
  %wp399 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml397, ptr %wp399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6184 word 0xa94857f6
  %r400.p = getelementptr inbounds i8, ptr %c, i64 256
  %r400 = load i64, ptr %r400.p, align 8, !alias.scope !3, !noalias !4
  %t401 = add i64 %r400, 128
  %t402 = add i64 %t401, 8
  %gmp403 = inttoptr i64 %t401 to ptr
  %gml404 = load i64, ptr %gmp403, align 1, !alias.scope !4, !noalias !3
  %gmp405 = inttoptr i64 %t402 to ptr
  %gml406 = load i64, ptr %gmp405, align 1, !alias.scope !4, !noalias !3
  %wp407 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml404, ptr %wp407, align 8, !alias.scope !3, !noalias !4
  %wp408 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml406, ptr %wp408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6188 word 0xa9475ff8
  %r409.p = getelementptr inbounds i8, ptr %c, i64 256
  %r409 = load i64, ptr %r409.p, align 8, !alias.scope !3, !noalias !4
  %t410 = add i64 %r409, 112
  %t411 = add i64 %t410, 8
  %gmp412 = inttoptr i64 %t410 to ptr
  %gml413 = load i64, ptr %gmp412, align 1, !alias.scope !4, !noalias !3
  %gmp414 = inttoptr i64 %t411 to ptr
  %gml415 = load i64, ptr %gmp414, align 1, !alias.scope !4, !noalias !3
  %wp416 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml413, ptr %wp416, align 8, !alias.scope !3, !noalias !4
  %wp417 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml415, ptr %wp417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a618c word 0xa94667fa
  %r418.p = getelementptr inbounds i8, ptr %c, i64 256
  %r418 = load i64, ptr %r418.p, align 8, !alias.scope !3, !noalias !4
  %t419 = add i64 %r418, 96
  %t420 = add i64 %t419, 8
  %gmp421 = inttoptr i64 %t419 to ptr
  %gml422 = load i64, ptr %gmp421, align 1, !alias.scope !4, !noalias !3
  %gmp423 = inttoptr i64 %t420 to ptr
  %gml424 = load i64, ptr %gmp423, align 1, !alias.scope !4, !noalias !3
  %wp425 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml422, ptr %wp425, align 8, !alias.scope !3, !noalias !4
  %wp426 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml424, ptr %wp426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6190 word 0xa9456ffc
  %r427.p = getelementptr inbounds i8, ptr %c, i64 256
  %r427 = load i64, ptr %r427.p, align 8, !alias.scope !3, !noalias !4
  %t428 = add i64 %r427, 80
  %t429 = add i64 %t428, 8
  %gmp430 = inttoptr i64 %t428 to ptr
  %gml431 = load i64, ptr %gmp430, align 1, !alias.scope !4, !noalias !3
  %gmp432 = inttoptr i64 %t429 to ptr
  %gml433 = load i64, ptr %gmp432, align 1, !alias.scope !4, !noalias !3
  %wp434 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml431, ptr %wp434, align 8, !alias.scope !3, !noalias !4
  %wp435 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml433, ptr %wp435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6194 word 0xa9447bfd
  %r436.p = getelementptr inbounds i8, ptr %c, i64 256
  %r436 = load i64, ptr %r436.p, align 8, !alias.scope !3, !noalias !4
  %t437 = add i64 %r436, 64
  %t438 = add i64 %t437, 8
  %gmp439 = inttoptr i64 %t437 to ptr
  %gml440 = load i64, ptr %gmp439, align 1, !alias.scope !4, !noalias !3
  %gmp441 = inttoptr i64 %t438 to ptr
  %gml442 = load i64, ptr %gmp441, align 1, !alias.scope !4, !noalias !3
  %wp443 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml440, ptr %wp443, align 8, !alias.scope !3, !noalias !4
  %wp444 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml442, ptr %wp444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6198 word 0x910283ff
  %r445.p = getelementptr inbounds i8, ptr %c, i64 256
  %r445 = load i64, ptr %r445.p, align 8, !alias.scope !3, !noalias !4
  %t446 = add i64 %r445, 160
  %wp447 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t446, ptr %wp447, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a619c
L_8001a619c:
  ; @pc 0x8001a619c word 0xd65f03c0
  ret void
L_8001a61a0:
  ; @pc 0x8001a61a0 word 0xd503201f
  ; @pc 0x8001a61a4 word 0x10346549
  %wp448 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34361896524, ptr %wp448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61a8 word 0xeb09011f
  %r449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r449 = load i64, ptr %r449.p, align 8, !alias.scope !3, !noalias !4
  %r450.p = getelementptr inbounds i8, ptr %c, i64 72
  %r450 = load i64, ptr %r450.p, align 8, !alias.scope !3, !noalias !4
  %t451 = sub i64 %r449, %r450
  %fn452 = icmp slt i64 %t451, 0
  %fz453 = icmp eq i64 %t451, 0
  %fc454 = icmp uge i64 %r449, %r450
  %fx1455 = xor i64 %r449, %r450
  %fx2456 = xor i64 %r449, %t451
  %fva457 = and i64 %fx1455, %fx2456
  %fv458 = icmp slt i64 %fva457, 0
  %nz459 = zext i1 %fn452 to i64
  %zz460 = zext i1 %fz453 to i64
  %cz461 = zext i1 %fc454 to i64
  %vz462 = zext i1 %fv458 to i64
  %ns463 = shl i64 %nz459, 31
  %zs464 = shl i64 %zz460, 30
  %cs465 = shl i64 %cz461, 29
  %vs466 = shl i64 %vz462, 28
  %nzor467 = or i64 %ns463, %zs464
  %cvor468 = or i64 %cs465, %vs466
  %nzcv469 = or i64 %nzor467, %cvor468
  %wp470 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv469, ptr %wp470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61ac word 0x540003a1
  %r471.p = getelementptr inbounds i8, ptr %c, i64 272
  %r471 = load i64, ptr %r471.p, align 8, !alias.scope !3, !noalias !4
  %fsh473 = lshr i64 %r471, 30
  %ftr474 = trunc i64 %fsh473 to i1
  %cond472 = xor i1 %ftr474, true
  br i1 %cond472, label %L_8001a6220, label %L_8001a61b0_ft
L_8001a61e0:
  ; @pc 0x8001a61e0 word 0xb94082a8
  %r580.p = getelementptr inbounds i8, ptr %c, i64 168
  %r580 = load i64, ptr %r580.p, align 8, !alias.scope !3, !noalias !4
  %t581 = add i64 %r580, 128
  %gmp582 = inttoptr i64 %t581 to ptr
  %gml583 = load i32, ptr %gmp582, align 1, !alias.scope !4, !noalias !3
  %c584 = zext i32 %gml583 to i64
  %wp585 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c584, ptr %wp585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61e4 word 0x1b167d08
  %r586.p = getelementptr inbounds i8, ptr %c, i64 176
  %r586 = load i64, ptr %r586.p, align 8, !alias.scope !3, !noalias !4
  %c587 = trunc i64 %r586 to i32
  %r588.p = getelementptr inbounds i8, ptr %c, i64 64
  %r588 = load i64, ptr %r588.p, align 8, !alias.scope !3, !noalias !4
  %c589 = trunc i64 %r588 to i32
  %t590 = mul i32 %c589, %c587
  %t591 = add i32 0, %t590
  %c592 = zext i32 %t591 to i64
  %wp593 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c592, ptr %wp593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61e8 word 0x37f81268
  %r594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r594 = load i64, ptr %r594.p, align 8, !alias.scope !3, !noalias !4
  %t595 = and i64 %r594, 2147483648
  %cmp596 = icmp ne i64 %t595, 0
  br i1 %cmp596, label %L_8001a6434, label %L_8001a61ec_ft
L_8001a6220:
  ; @pc 0x8001a6220 word 0xd503201f
  ; @pc 0x8001a6224 word 0x10eb0969
  %wp683 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34361295696, ptr %wp683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6228 word 0xeb09011f
  %r684.p = getelementptr inbounds i8, ptr %c, i64 64
  %r684 = load i64, ptr %r684.p, align 8, !alias.scope !3, !noalias !4
  %r685.p = getelementptr inbounds i8, ptr %c, i64 72
  %r685 = load i64, ptr %r685.p, align 8, !alias.scope !3, !noalias !4
  %t686 = sub i64 %r684, %r685
  %fn687 = icmp slt i64 %t686, 0
  %fz688 = icmp eq i64 %t686, 0
  %fc689 = icmp uge i64 %r684, %r685
  %fx1690 = xor i64 %r684, %r685
  %fx2691 = xor i64 %r684, %t686
  %fva692 = and i64 %fx1690, %fx2691
  %fv693 = icmp slt i64 %fva692, 0
  %nz694 = zext i1 %fn687 to i64
  %zz695 = zext i1 %fz688 to i64
  %cz696 = zext i1 %fc689 to i64
  %vz697 = zext i1 %fv693 to i64
  %ns698 = shl i64 %nz694, 31
  %zs699 = shl i64 %zz695, 30
  %cs700 = shl i64 %cz696, 29
  %vs701 = shl i64 %vz697, 28
  %nzor702 = or i64 %ns698, %zs699
  %cvor703 = or i64 %cs700, %vs701
  %nzcv704 = or i64 %nzor702, %cvor703
  %wp705 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv704, ptr %wp705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a622c word 0x54000601
  %r706.p = getelementptr inbounds i8, ptr %c, i64 272
  %r706 = load i64, ptr %r706.p, align 8, !alias.scope !3, !noalias !4
  %fsh708 = lshr i64 %r706, 30
  %ftr709 = trunc i64 %fsh708 to i1
  %cond707 = xor i1 %ftr709, true
  br i1 %cond707, label %L_8001a62ec, label %L_8001a6230_ft
L_8001a6268:
  ; @pc 0x8001a6268 word 0xb94082a8
  %r820.p = getelementptr inbounds i8, ptr %c, i64 168
  %r820 = load i64, ptr %r820.p, align 8, !alias.scope !3, !noalias !4
  %t821 = add i64 %r820, 128
  %gmp822 = inttoptr i64 %t821 to ptr
  %gml823 = load i32, ptr %gmp822, align 1, !alias.scope !4, !noalias !3
  %c824 = zext i32 %gml823 to i64
  %wp825 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c824, ptr %wp825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a626c word 0x1b167d0c
  %r826.p = getelementptr inbounds i8, ptr %c, i64 176
  %r826 = load i64, ptr %r826.p, align 8, !alias.scope !3, !noalias !4
  %c827 = trunc i64 %r826 to i32
  %r828.p = getelementptr inbounds i8, ptr %c, i64 64
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %c829 = trunc i64 %r828 to i32
  %t830 = mul i32 %c829, %c827
  %t831 = add i32 0, %t830
  %c832 = zext i32 %t831 to i64
  %wp833 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c832, ptr %wp833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6270 word 0x37f81b0c
  %r834.p = getelementptr inbounds i8, ptr %c, i64 96
  %r834 = load i64, ptr %r834.p, align 8, !alias.scope !3, !noalias !4
  %t835 = and i64 %r834, 2147483648
  %cmp836 = icmp ne i64 %t835, 0
  br i1 %cmp836, label %L_8001a65d0, label %L_8001a6274_ft
L_8001a62ac:
  ; @pc 0x8001a62ac word 0xf9400d9c
  %r933.p = getelementptr inbounds i8, ptr %c, i64 96
  %r933 = load i64, ptr %r933.p, align 8, !alias.scope !3, !noalias !4
  %t934 = add i64 %r933, 24
  %gmp935 = inttoptr i64 %t934 to ptr
  %gml936 = load i64, ptr %gmp935, align 1, !alias.scope !4, !noalias !3
  %wp937 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml936, ptr %wp937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62b0 word 0xeb19039f
  %r938.p = getelementptr inbounds i8, ptr %c, i64 224
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %r939.p = getelementptr inbounds i8, ptr %c, i64 200
  %r939 = load i64, ptr %r939.p, align 8, !alias.scope !3, !noalias !4
  %t940 = sub i64 %r938, %r939
  %fn941 = icmp slt i64 %t940, 0
  %fz942 = icmp eq i64 %t940, 0
  %fc943 = icmp uge i64 %r938, %r939
  %fx1944 = xor i64 %r938, %r939
  %fx2945 = xor i64 %r938, %t940
  %fva946 = and i64 %fx1944, %fx2945
  %fv947 = icmp slt i64 %fva946, 0
  %nz948 = zext i1 %fn941 to i64
  %zz949 = zext i1 %fz942 to i64
  %cz950 = zext i1 %fc943 to i64
  %vz951 = zext i1 %fv947 to i64
  %ns952 = shl i64 %nz948, 31
  %zs953 = shl i64 %zz949, 30
  %cs954 = shl i64 %cz950, 29
  %vs955 = shl i64 %vz951, 28
  %nzor956 = or i64 %ns952, %zs953
  %cvor957 = or i64 %cs954, %vs955
  %nzcv958 = or i64 %nzor956, %cvor957
  %wp959 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv958, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62b4 word 0x54002a62
  %r960.p = getelementptr inbounds i8, ptr %c, i64 272
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %fsh962 = lshr i64 %r960, 29
  %cond961 = trunc i64 %fsh962 to i1
  br i1 %cond961, label %L_8001a6800, label %L_8001a62b8_ft
L_8001a62cc:
  ; @pc 0x8001a62cc word 0xb9000bed
  %r1002.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1002 = load i64, ptr %r1002.p, align 8, !alias.scope !3, !noalias !4
  %t1003 = add i64 %r1002, 8
  %r1004.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1004 = load i64, ptr %r1004.p, align 8, !alias.scope !3, !noalias !4
  %c1005 = trunc i64 %r1004 to i32
  %gmp1006 = inttoptr i64 %t1003 to ptr
  store i32 %c1005, ptr %gmp1006, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a62d0
L_8001a62d0:
  ; @pc 0x8001a62d0 word 0xb400007b
  %r1007.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1007 = load i64, ptr %r1007.p, align 8, !alias.scope !3, !noalias !4
  %cmp1008 = icmp eq i64 %r1007, 0
  br i1 %cmp1008, label %L_8001a62dc, label %L_8001a62d4_ft
L_8001a62dc:
  ; @pc 0x8001a62dc word 0xaa1f03fa
  %t1016 = or i64 0, 0
  %wp1017 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1016, ptr %wp1017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62e0 word 0x14000185
  br label %L_8001a68f4
L_8001a62e4:
  ; @pc 0x8001a62e4 word 0xaa1f03f8
  %t1018 = or i64 0, 0
  %wp1019 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1018, ptr %wp1019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62e8 word 0x17ffffe0
  br label %L_8001a6268
L_8001a62ec:
  ; @pc 0x8001a62ec word 0xaa1503e0
  %r1020.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1020 = load i64, ptr %r1020.p, align 8, !alias.scope !3, !noalias !4
  %t1021 = or i64 0, %r1020
  %wp1022 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1021, ptr %wp1022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62f0 word 0xaa1703e1
  %r1023.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1023 = load i64, ptr %r1023.p, align 8, !alias.scope !3, !noalias !4
  %t1024 = or i64 0, %r1023
  %wp1025 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1024, ptr %wp1025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62f4 word 0x2a1603e2
  %r1026.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1026 = load i64, ptr %r1026.p, align 8, !alias.scope !3, !noalias !4
  %c1027 = trunc i64 %r1026 to i32
  %t1028 = or i32 0, %c1027
  %c1029 = zext i32 %t1028 to i64
  %wp1030 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1029, ptr %wp1030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62f8 word 0xd63f0100
  %r1031.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1031 = load i64, ptr %r1031.p, align 8, !alias.scope !3, !noalias !4
  %fp1032 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1031, ptr %fp1032, align 8, !alias.scope !3, !noalias !4
  %wp1033 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467644, ptr %wp1033, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a62fc
L_8001a62fc:
  ; @pc 0x8001a62fc word 0xaa0003fa
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %t1035 = or i64 0, %r1034
  %wp1036 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1035, ptr %wp1036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6300 word 0x17ffff9d
  br label %L_8001a6174
L_8001a6304:
  ; @pc 0x8001a6304 word 0x9001c8a8
  %wp1037 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp1037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6308 word 0x91368108
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = add i64 %r1038, 3488
  %wp1040 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1039, ptr %wp1040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a630c word 0xf9400108
  %r1041.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1041 = load i64, ptr %r1041.p, align 8, !alias.scope !3, !noalias !4
  %gmp1042 = inttoptr i64 %r1041 to ptr
  %gml1043 = load i64, ptr %gmp1042, align 1, !alias.scope !4, !noalias !3
  %wp1044 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1043, ptr %wp1044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6310 word 0xb9404900
  %r1045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1045 = load i64, ptr %r1045.p, align 8, !alias.scope !3, !noalias !4
  %t1046 = add i64 %r1045, 72
  %gmp1047 = inttoptr i64 %t1046 to ptr
  %gml1048 = load i32, ptr %gmp1047, align 1, !alias.scope !4, !noalias !3
  %c1049 = zext i32 %gml1048 to i64
  %wp1050 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1049, ptr %wp1050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6314 word 0x94a7f5eb
  %wp1051 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467672, ptr %wp1051, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x8001a6318 word 0x91002308
  %r1052.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1052 = load i64, ptr %r1052.p, align 8, !alias.scope !3, !noalias !4
  %t1053 = add i64 %r1052, 8
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1053, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a631c word 0x91022009
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %t1056 = add i64 %r1055, 136
  %wp1057 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1056, ptr %wp1057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6320 word 0xf100001f
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %t1059 = sub i64 %r1058, 0
  %fn1060 = icmp slt i64 %t1059, 0
  %fz1061 = icmp eq i64 %t1059, 0
  %fc1062 = icmp uge i64 %r1058, 0
  %fx11063 = xor i64 %r1058, 0
  %fx21064 = xor i64 %r1058, %t1059
  %fva1065 = and i64 %fx11063, %fx21064
  %fv1066 = icmp slt i64 %fva1065, 0
  %nz1067 = zext i1 %fn1060 to i64
  %zz1068 = zext i1 %fz1061 to i64
  %cz1069 = zext i1 %fc1062 to i64
  %vz1070 = zext i1 %fv1066 to i64
  %ns1071 = shl i64 %nz1067, 31
  %zs1072 = shl i64 %zz1068, 30
  %cs1073 = shl i64 %cz1069, 29
  %vs1074 = shl i64 %vz1070, 28
  %nzor1075 = or i64 %ns1071, %zs1072
  %cvor1076 = or i64 %cs1073, %vs1074
  %nzcv1077 = or i64 %nzor1075, %cvor1076
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6324 word 0x9a890108
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %r1080.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1080 = load i64, ptr %r1080.p, align 8, !alias.scope !3, !noalias !4
  %r1081.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1081 = load i64, ptr %r1081.p, align 8, !alias.scope !3, !noalias !4
  %fsh1083 = lshr i64 %r1081, 30
  %cond1082 = trunc i64 %fsh1083 to i1
  %sel1084 = select i1 %cond1082, i64 %r1079, i64 %r1080
  %wp1085 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1084, ptr %wp1085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6328 word 0xf9400115
  %r1086.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1086 = load i64, ptr %r1086.p, align 8, !alias.scope !3, !noalias !4
  %gmp1087 = inttoptr i64 %r1086 to ptr
  %gml1088 = load i64, ptr %gmp1087, align 1, !alias.scope !4, !noalias !3
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1088, ptr %wp1089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a632c word 0xb5ffedf5
  %r1090.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1090 = load i64, ptr %r1090.p, align 8, !alias.scope !3, !noalias !4
  %cmp1091 = icmp ne i64 %r1090, 0
  br i1 %cmp1091, label %L_8001a60e8, label %L_8001a6330_ft
L_8001a6334:
  ; @pc 0x8001a6334 word 0xb4000069
  %r1092.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1092 = load i64, ptr %r1092.p, align 8, !alias.scope !3, !noalias !4
  %cmp1093 = icmp eq i64 %r1092, 0
  br i1 %cmp1093, label %L_8001a6340, label %L_8001a6338_ft
L_8001a6340:
  ; @pc 0x8001a6340 word 0xf9401ea0
  %r1101.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1101 = load i64, ptr %r1101.p, align 8, !alias.scope !3, !noalias !4
  %t1102 = add i64 %r1101, 56
  %gmp1103 = inttoptr i64 %t1102 to ptr
  %gml1104 = load i64, ptr %gmp1103, align 1, !alias.scope !4, !noalias !3
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6344 word 0xb4000b00
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %cmp1107 = icmp eq i64 %r1106, 0
  br i1 %cmp1107, label %L_8001a64a4, label %L_8001a6348_ft
L_8001a6368:
  ; @pc 0x8001a6368 word 0xf94002a8
  %r1163.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1163 = load i64, ptr %r1163.p, align 8, !alias.scope !3, !noalias !4
  %gmp1164 = inttoptr i64 %r1163 to ptr
  %gml1165 = load i64, ptr %gmp1164, align 1, !alias.scope !4, !noalias !3
  %wp1166 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1165, ptr %wp1166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a636c word 0xaa1503e0
  %r1167.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1167 = load i64, ptr %r1167.p, align 8, !alias.scope !3, !noalias !4
  %t1168 = or i64 0, %r1167
  %wp1169 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1168, ptr %wp1169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6370 word 0xf9401508
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %t1171 = add i64 %r1170, 40
  %gmp1172 = inttoptr i64 %t1171 to ptr
  %gml1173 = load i64, ptr %gmp1172, align 1, !alias.scope !4, !noalias !3
  %wp1174 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1173, ptr %wp1174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6374 word 0xd63f0100
  %r1175.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1175 = load i64, ptr %r1175.p, align 8, !alias.scope !3, !noalias !4
  %fp1176 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1175, ptr %fp1176, align 8, !alias.scope !3, !noalias !4
  %wp1177 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467768, ptr %wp1177, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a6378 word 0xf9401ea0
  %r1178.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1178 = load i64, ptr %r1178.p, align 8, !alias.scope !3, !noalias !4
  %t1179 = add i64 %r1178, 56
  %gmp1180 = inttoptr i64 %t1179 to ptr
  %gml1181 = load i64, ptr %gmp1180, align 1, !alias.scope !4, !noalias !3
  %wp1182 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1181, ptr %wp1182, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a637c
L_8001a637c:
  ; @pc 0x8001a637c word 0x8b3a4368
  %r1183.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1183 = load i64, ptr %r1183.p, align 8, !alias.scope !3, !noalias !4
  %r1184.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1184 = load i64, ptr %r1184.p, align 8, !alias.scope !3, !noalias !4
  %c1185 = trunc i64 %r1184 to i32
  %c1186 = zext i32 %c1185 to i64
  %t1187 = add i64 %r1183, %c1186
  %wp1188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1187, ptr %wp1188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6380 word 0x9100411c
  %r1189.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1189 = load i64, ptr %r1189.p, align 8, !alias.scope !3, !noalias !4
  %t1190 = add i64 %r1189, 16
  %wp1191 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t1190, ptr %wp1191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6384 word 0x29590aa8
  %r1192.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1192 = load i64, ptr %r1192.p, align 8, !alias.scope !3, !noalias !4
  %t1193 = add i64 %r1192, 200
  %t1194 = add i64 %t1193, 4
  %gmp1195 = inttoptr i64 %t1193 to ptr
  %gml1196 = load i32, ptr %gmp1195, align 1, !alias.scope !4, !noalias !3
  %c1197 = zext i32 %gml1196 to i64
  %gmp1198 = inttoptr i64 %t1194 to ptr
  %gml1199 = load i32, ptr %gmp1198, align 1, !alias.scope !4, !noalias !3
  %c1200 = zext i32 %gml1199 to i64
  %wp1201 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1197, ptr %wp1201, align 8, !alias.scope !3, !noalias !4
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1200, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6388 word 0xd37ef51b
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %ror1204 = call i64 @llvm.fshr.i64(i64 %r1203, i64 %r1203, i64 62)
  %t1205 = and i64 %ror1204, -4
  %wp1206 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1205, ptr %wp1206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a638c word 0xf9400008
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1207 = load i64, ptr %r1207.p, align 8, !alias.scope !3, !noalias !4
  %gmp1208 = inttoptr i64 %r1207 to ptr
  %gml1209 = load i64, ptr %gmp1208, align 1, !alias.scope !4, !noalias !3
  %wp1210 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1209, ptr %wp1210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6390 word 0xeb1c037f
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %r1212.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1212 = load i64, ptr %r1212.p, align 8, !alias.scope !3, !noalias !4
  %t1213 = sub i64 %r1211, %r1212
  %fn1214 = icmp slt i64 %t1213, 0
  %fz1215 = icmp eq i64 %t1213, 0
  %fc1216 = icmp uge i64 %r1211, %r1212
  %fx11217 = xor i64 %r1211, %r1212
  %fx21218 = xor i64 %r1211, %t1213
  %fva1219 = and i64 %fx11217, %fx21218
  %fv1220 = icmp slt i64 %fva1219, 0
  %nz1221 = zext i1 %fn1214 to i64
  %zz1222 = zext i1 %fz1215 to i64
  %cz1223 = zext i1 %fc1216 to i64
  %vz1224 = zext i1 %fv1220 to i64
  %ns1225 = shl i64 %nz1221, 31
  %zs1226 = shl i64 %zz1222, 30
  %cs1227 = shl i64 %cz1223, 29
  %vs1228 = shl i64 %vz1224, 28
  %nzor1229 = or i64 %ns1225, %zs1226
  %cvor1230 = or i64 %cs1227, %vs1228
  %nzcv1231 = or i64 %nzor1229, %cvor1230
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1231, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6394 word 0x9a9c8361
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %r1235.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1235 = load i64, ptr %r1235.p, align 8, !alias.scope !3, !noalias !4
  %fsh1237 = lshr i64 %r1235, 29
  %ftr1238 = trunc i64 %fsh1237 to i1
  %fsh1239 = lshr i64 %r1235, 30
  %ftr1240 = trunc i64 %fsh1239 to i1
  %fnz1241 = xor i1 %ftr1240, true
  %cond1236 = and i1 %ftr1238, %fnz1241
  %sel1242 = select i1 %cond1236, i64 %r1233, i64 %r1234
  %wp1243 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %sel1242, ptr %wp1243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6398 word 0xf90007e1
  %r1244.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1244 = load i64, ptr %r1244.p, align 8, !alias.scope !3, !noalias !4
  %t1245 = add i64 %r1244, 8
  %r1246.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1246 = load i64, ptr %r1246.p, align 8, !alias.scope !3, !noalias !4
  %gmp1247 = inttoptr i64 %t1245 to ptr
  store i64 %r1246, ptr %gmp1247, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a639c word 0xf9401908
  %r1248.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1248 = load i64, ptr %r1248.p, align 8, !alias.scope !3, !noalias !4
  %t1249 = add i64 %r1248, 48
  %gmp1250 = inttoptr i64 %t1249 to ptr
  %gml1251 = load i64, ptr %gmp1250, align 1, !alias.scope !4, !noalias !3
  %wp1252 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1251, ptr %wp1252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63a0 word 0xd63f0100
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1253 = load i64, ptr %r1253.p, align 8, !alias.scope !3, !noalias !4
  %fp1254 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1253, ptr %fp1254, align 8, !alias.scope !3, !noalias !4
  %wp1255 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467812, ptr %wp1255, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a63a4 word 0xb4003200
  %r1256.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1256 = load i64, ptr %r1256.p, align 8, !alias.scope !3, !noalias !4
  %cmp1257 = icmp eq i64 %r1256, 0
  br i1 %cmp1257, label %L_8001a69e4, label %L_8001a63a8_ft
L_8001a63ac:
  ; @pc 0x8001a63ac word 0xb940aaa8
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = add i64 %r1261, 168
  %gmp1263 = inttoptr i64 %t1262 to ptr
  %gml1264 = load i32, ptr %gmp1263, align 1, !alias.scope !4, !noalias !3
  %c1265 = zext i32 %gml1264 to i64
  %wp1266 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1265, ptr %wp1266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63b0 word 0x37003408
  %r1267.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1267 = load i64, ptr %r1267.p, align 8, !alias.scope !3, !noalias !4
  %t1268 = and i64 %r1267, 1
  %cmp1269 = icmp ne i64 %t1268, 0
  br i1 %cmp1269, label %L_8001a6a30, label %L_8001a63b4_ft
L_8001a63bc:
  ; @pc 0x8001a63bc word 0xa940b3eb
  %r1274.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1274 = load i64, ptr %r1274.p, align 8, !alias.scope !3, !noalias !4
  %t1275 = add i64 %r1274, 8
  %t1276 = add i64 %t1275, 8
  %gmp1277 = inttoptr i64 %t1275 to ptr
  %gml1278 = load i64, ptr %gmp1277, align 1, !alias.scope !4, !noalias !3
  %gmp1279 = inttoptr i64 %t1276 to ptr
  %gml1280 = load i64, ptr %gmp1279, align 1, !alias.scope !4, !noalias !3
  %wp1281 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1278, ptr %wp1281, align 8, !alias.scope !3, !noalias !4
  %wp1282 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1280, ptr %wp1282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63c0 word 0x8b1a0168
  %r1283.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1283 = load i64, ptr %r1283.p, align 8, !alias.scope !3, !noalias !4
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %t1285 = add i64 %r1283, %r1284
  %wp1286 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1285, ptr %wp1286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63c4 word 0xb94082aa
  %r1287.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1287 = load i64, ptr %r1287.p, align 8, !alias.scope !3, !noalias !4
  %t1288 = add i64 %r1287, 128
  %gmp1289 = inttoptr i64 %t1288 to ptr
  %gml1290 = load i32, ptr %gmp1289, align 1, !alias.scope !4, !noalias !3
  %c1291 = zext i32 %gml1290 to i64
  %wp1292 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1291, ptr %wp1292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63c8 word 0x7100055f
  %r1293.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1293 = load i64, ptr %r1293.p, align 8, !alias.scope !3, !noalias !4
  %c1294 = trunc i64 %r1293 to i32
  %t1295 = sub i32 %c1294, 1
  %fn1296 = icmp slt i32 %t1295, 0
  %fz1297 = icmp eq i32 %t1295, 0
  %fc1298 = icmp uge i32 %c1294, 1
  %fx11299 = xor i32 %c1294, 1
  %fx21300 = xor i32 %c1294, %t1295
  %fva1301 = and i32 %fx11299, %fx21300
  %fv1302 = icmp slt i32 %fva1301, 0
  %nz1303 = zext i1 %fn1296 to i64
  %zz1304 = zext i1 %fz1297 to i64
  %cz1305 = zext i1 %fc1298 to i64
  %vz1306 = zext i1 %fv1302 to i64
  %ns1307 = shl i64 %nz1303, 31
  %zs1308 = shl i64 %zz1304, 30
  %cs1309 = shl i64 %cz1305, 29
  %vs1310 = shl i64 %vz1306, 28
  %nzor1311 = or i64 %ns1307, %zs1308
  %cvor1312 = or i64 %cs1309, %vs1310
  %nzcv1313 = or i64 %nzor1311, %cvor1312
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1313, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63cc word 0xd1004109
  %r1315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1315 = load i64, ptr %r1315.p, align 8, !alias.scope !3, !noalias !4
  %t1316 = sub i64 %r1315, 16
  %wp1317 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1316, ptr %wp1317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63d0 word 0x9a89034a
  %r1318.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1318 = load i64, ptr %r1318.p, align 8, !alias.scope !3, !noalias !4
  %r1319.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1319 = load i64, ptr %r1319.p, align 8, !alias.scope !3, !noalias !4
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %fsh1322 = lshr i64 %r1320, 30
  %cond1321 = trunc i64 %fsh1322 to i1
  %sel1323 = select i1 %cond1321, i64 %r1318, i64 %r1319
  %wp1324 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel1323, ptr %wp1324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63d4 word 0xa9007d4b
  %r1325.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1325 = load i64, ptr %r1325.p, align 8, !alias.scope !3, !noalias !4
  %t1326 = add i64 %r1325, 8
  %r1327.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1327 = load i64, ptr %r1327.p, align 8, !alias.scope !3, !noalias !4
  %gmp1328 = inttoptr i64 %r1325 to ptr
  store i64 %r1327, ptr %gmp1328, align 1, !alias.scope !4, !noalias !3
  %gmp1329 = inttoptr i64 %t1326 to ptr
  store i64 0, ptr %gmp1329, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a63d8 word 0xf94062ab
  %r1330.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1330 = load i64, ptr %r1330.p, align 8, !alias.scope !3, !noalias !4
  %t1331 = add i64 %r1330, 192
  %gmp1332 = inttoptr i64 %t1331 to ptr
  %gml1333 = load i64, ptr %gmp1332, align 1, !alias.scope !4, !noalias !3
  %wp1334 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1333, ptr %wp1334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63dc word 0xb500022b
  %r1335.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1335 = load i64, ptr %r1335.p, align 8, !alias.scope !3, !noalias !4
  %cmp1336 = icmp ne i64 %r1335, 0
  br i1 %cmp1336, label %L_8001a6420, label %L_8001a63e0
L_8001a63e0:
  ; @pc 0x8001a63e0 word 0xf900018a
  %r1337.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1337 = load i64, ptr %r1337.p, align 8, !alias.scope !3, !noalias !4
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %gmp1339 = inttoptr i64 %r1337 to ptr
  store i64 %r1338, ptr %gmp1339, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a63e4 word 0x9100434b
  %r1340.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1340 = load i64, ptr %r1340.p, align 8, !alias.scope !3, !noalias !4
  %t1341 = add i64 %r1340, 16
  %wp1342 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1341, ptr %wp1342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63e8 word 0xaa1503e0
  %r1343.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1343 = load i64, ptr %r1343.p, align 8, !alias.scope !3, !noalias !4
  %t1344 = or i64 0, %r1343
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1344, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63ec word 0xb94082aa
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %t1347 = add i64 %r1346, 128
  %gmp1348 = inttoptr i64 %t1347 to ptr
  %gml1349 = load i32, ptr %gmp1348, align 1, !alias.scope !4, !noalias !3
  %c1350 = zext i32 %gml1349 to i64
  %wp1351 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1350, ptr %wp1351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63f0 word 0xaa1703e1
  %r1352.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1352 = load i64, ptr %r1352.p, align 8, !alias.scope !3, !noalias !4
  %t1353 = or i64 0, %r1352
  %wp1354 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1353, ptr %wp1354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63f4 word 0x2a1603e2
  %r1355.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1355 = load i64, ptr %r1355.p, align 8, !alias.scope !3, !noalias !4
  %c1356 = trunc i64 %r1355 to i32
  %t1357 = or i32 0, %c1356
  %c1358 = zext i32 %t1357 to i64
  %wp1359 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1358, ptr %wp1359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63f8 word 0x7100055f
  %r1360.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1360 = load i64, ptr %r1360.p, align 8, !alias.scope !3, !noalias !4
  %c1361 = trunc i64 %r1360 to i32
  %t1362 = sub i32 %c1361, 1
  %fn1363 = icmp slt i32 %t1362, 0
  %fz1364 = icmp eq i32 %t1362, 0
  %fc1365 = icmp uge i32 %c1361, 1
  %fx11366 = xor i32 %c1361, 1
  %fx21367 = xor i32 %c1361, %t1362
  %fva1368 = and i32 %fx11366, %fx21367
  %fv1369 = icmp slt i32 %fva1368, 0
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
  ; @pc 0x8001a63fc word 0x9a9a016a
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %r1383.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1383 = load i64, ptr %r1383.p, align 8, !alias.scope !3, !noalias !4
  %r1384.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1384 = load i64, ptr %r1384.p, align 8, !alias.scope !3, !noalias !4
  %fsh1386 = lshr i64 %r1384, 30
  %cond1385 = trunc i64 %fsh1386 to i1
  %sel1387 = select i1 %cond1385, i64 %r1382, i64 %r1383
  %wp1388 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel1387, ptr %wp1388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6400 word 0x9a890108
  %r1389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1389 = load i64, ptr %r1389.p, align 8, !alias.scope !3, !noalias !4
  %r1390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1390 = load i64, ptr %r1390.p, align 8, !alias.scope !3, !noalias !4
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %fsh1393 = lshr i64 %r1391, 30
  %cond1392 = trunc i64 %fsh1393 to i1
  %sel1394 = select i1 %cond1392, i64 %r1389, i64 %r1390
  %wp1395 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1394, ptr %wp1395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6404 word 0xa90b22aa
  %r1396.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1396 = load i64, ptr %r1396.p, align 8, !alias.scope !3, !noalias !4
  %t1397 = add i64 %r1396, 176
  %t1398 = add i64 %t1397, 8
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %gmp1400 = inttoptr i64 %t1397 to ptr
  store i64 %r1399, ptr %gmp1400, align 1, !alias.scope !4, !noalias !3
  %r1401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1401 = load i64, ptr %r1401.p, align 8, !alias.scope !3, !noalias !4
  %gmp1402 = inttoptr i64 %t1398 to ptr
  store i64 %r1401, ptr %gmp1402, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6408 word 0x97fb510c
  %wp1403 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467916, ptr %wp1403, align 8, !alias.scope !3, !noalias !4
  call void @f_80007a838(ptr %c)
  ; @pc 0x8001a640c word 0xaa0003fa
  %r1404.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1404 = load i64, ptr %r1404.p, align 8, !alias.scope !3, !noalias !4
  %t1405 = or i64 0, %r1404
  %wp1406 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1405, ptr %wp1406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6410 word 0xb4ffeb19
  %r1407.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1407 = load i64, ptr %r1407.p, align 8, !alias.scope !3, !noalias !4
  %cmp1408 = icmp eq i64 %r1407, 0
  br i1 %cmp1408, label %L_8001a6170, label %L_8001a6414_ft
L_8001a6420:
  ; @pc 0x8001a6420 word 0xaa0b03ec
  %r1413.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1413 = load i64, ptr %r1413.p, align 8, !alias.scope !3, !noalias !4
  %t1414 = or i64 0, %r1413
  %wp1415 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1414, ptr %wp1415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6424 word 0xf940056b
  %r1416.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1416 = load i64, ptr %r1416.p, align 8, !alias.scope !3, !noalias !4
  %t1417 = add i64 %r1416, 8
  %gmp1418 = inttoptr i64 %t1417 to ptr
  %gml1419 = load i64, ptr %gmp1418, align 1, !alias.scope !4, !noalias !3
  %wp1420 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1419, ptr %wp1420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6428 word 0xb5ffffcb
  %r1421.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1421 = load i64, ptr %r1421.p, align 8, !alias.scope !3, !noalias !4
  %cmp1422 = icmp ne i64 %r1421, 0
  br i1 %cmp1422, label %L_8001a6420, label %L_8001a642c_ft
L_8001a6434:
  ; @pc 0x8001a6434 word 0xf9405eab
  %r1426.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1426 = load i64, ptr %r1426.p, align 8, !alias.scope !3, !noalias !4
  %t1427 = add i64 %r1426, 184
  %gmp1428 = inttoptr i64 %t1427 to ptr
  %gml1429 = load i64, ptr %gmp1428, align 1, !alias.scope !4, !noalias !3
  %wp1430 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1429, ptr %wp1430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6438 word 0x4b0803e9
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %c1432 = trunc i64 %r1431 to i32
  %t1433 = sub i32 0, %c1432
  %c1434 = zext i32 %t1433 to i64
  %wp1435 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1434, ptr %wp1435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a643c word 0xcb19016a
  %r1436.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1436 = load i64, ptr %r1436.p, align 8, !alias.scope !3, !noalias !4
  %r1437.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1437 = load i64, ptr %r1437.p, align 8, !alias.scope !3, !noalias !4
  %t1438 = sub i64 %r1436, %r1437
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6440 word 0xeb0a017f
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %t1442 = sub i64 %r1440, %r1441
  %fn1443 = icmp slt i64 %t1442, 0
  %fz1444 = icmp eq i64 %t1442, 0
  %fc1445 = icmp uge i64 %r1440, %r1441
  %fx11446 = xor i64 %r1440, %r1441
  %fx21447 = xor i64 %r1440, %t1442
  %fva1448 = and i64 %fx11446, %fx21447
  %fv1449 = icmp slt i64 %fva1448, 0
  %nz1450 = zext i1 %fn1443 to i64
  %zz1451 = zext i1 %fz1444 to i64
  %cz1452 = zext i1 %fc1445 to i64
  %vz1453 = zext i1 %fv1449 to i64
  %ns1454 = shl i64 %nz1450, 31
  %zs1455 = shl i64 %zz1451, 30
  %cs1456 = shl i64 %cz1452, 29
  %vs1457 = shl i64 %vz1453, 28
  %nzor1458 = or i64 %ns1454, %zs1455
  %cvor1459 = or i64 %cs1456, %vs1457
  %nzcv1460 = or i64 %nzor1458, %cvor1459
  %wp1461 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1460, ptr %wp1461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6444 word 0x54002fa3
  %r1462.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1462 = load i64, ptr %r1462.p, align 8, !alias.scope !3, !noalias !4
  %fsh1464 = lshr i64 %r1462, 29
  %ftr1465 = trunc i64 %fsh1464 to i1
  %cond1463 = xor i1 %ftr1465, true
  br i1 %cond1463, label %L_8001a6a38, label %L_8001a6448_ft
L_8001a6468:
  ; @pc 0x8001a6468 word 0x93407ec0
  %r1513.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1513 = load i64, ptr %r1513.p, align 8, !alias.scope !3, !noalias !4
  %t1514 = lshr i64 %r1513, 31
  %t1515 = and i64 %t1514, 1
  %t1516 = sub i64 0, %t1515
  %t1517 = and i64 %t1516, -4294967296
  %t1518 = and i64 %r1513, 4294967295
  %t1519 = or i64 %t1517, %t1518
  %wp1520 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1519, ptr %wp1520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a646c word 0xaa1703e1
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %t1522 = or i64 0, %r1521
  %wp1523 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1522, ptr %wp1523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6470 word 0x97fbce1c
  %wp1524 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468020, ptr %wp1524, align 8, !alias.scope !3, !noalias !4
  call void @f_800099ce0(ptr %c)
  ; @pc 0x8001a6474 word 0x17ffffa2
  br label %L_8001a62fc
L_8001a6478:
  ; @pc 0x8001a6478 word 0xb4000169
  %r1525.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1525 = load i64, ptr %r1525.p, align 8, !alias.scope !3, !noalias !4
  %cmp1526 = icmp eq i64 %r1525, 0
  br i1 %cmp1526, label %L_8001a64a4, label %L_8001a647c_ft
L_8001a64a4:
  ; @pc 0x8001a64a4 word 0xaa1f03fa
  %t1569 = or i64 0, 0
  %wp1570 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1569, ptr %wp1570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64a8 word 0x17ffff32
  br label %L_8001a6170
L_8001a64ac:
  ; @pc 0x8001a64ac word 0xaa1903e0
  %r1571.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1571 = load i64, ptr %r1571.p, align 8, !alias.scope !3, !noalias !4
  %t1572 = or i64 0, %r1571
  %wp1573 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1572, ptr %wp1573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64b0 word 0x94a7f6ec
  %wp1574 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468084, ptr %wp1574, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a64b4 word 0xaa1903f8
  %r1575.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1575 = load i64, ptr %r1575.p, align 8, !alias.scope !3, !noalias !4
  %t1576 = or i64 0, %r1575
  %wp1577 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1576, ptr %wp1577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64b8 word 0x17ffff16
  br label %L_8001a6110
L_8001a64bc:
  ; @pc 0x8001a64bc word 0xf9405eac
  %r1578.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1578 = load i64, ptr %r1578.p, align 8, !alias.scope !3, !noalias !4
  %t1579 = add i64 %r1578, 184
  %gmp1580 = inttoptr i64 %t1579 to ptr
  %gml1581 = load i64, ptr %gmp1580, align 1, !alias.scope !4, !noalias !3
  %wp1582 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1581, ptr %wp1582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64c0 word 0x2a0803fc
  %r1583.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1583 = load i64, ptr %r1583.p, align 8, !alias.scope !3, !noalias !4
  %c1584 = trunc i64 %r1583 to i32
  %t1585 = or i32 0, %c1584
  %c1586 = zext i32 %t1585 to i64
  %wp1587 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1586, ptr %wp1587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64c4 word 0x4b0a03eb
  %r1588.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1588 = load i64, ptr %r1588.p, align 8, !alias.scope !3, !noalias !4
  %c1589 = trunc i64 %r1588 to i32
  %t1590 = sub i32 0, %c1589
  %c1591 = zext i32 %t1590 to i64
  %wp1592 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1591, ptr %wp1592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64c8 word 0xcb1b0188
  %r1593.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1593 = load i64, ptr %r1593.p, align 8, !alias.scope !3, !noalias !4
  %r1594.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1594 = load i64, ptr %r1594.p, align 8, !alias.scope !3, !noalias !4
  %t1595 = sub i64 %r1593, %r1594
  %wp1596 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1595, ptr %wp1596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64cc word 0xeb08019f
  %r1597.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1597 = load i64, ptr %r1597.p, align 8, !alias.scope !3, !noalias !4
  %r1598.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1598 = load i64, ptr %r1598.p, align 8, !alias.scope !3, !noalias !4
  %t1599 = sub i64 %r1597, %r1598
  %fn1600 = icmp slt i64 %t1599, 0
  %fz1601 = icmp eq i64 %t1599, 0
  %fc1602 = icmp uge i64 %r1597, %r1598
  %fx11603 = xor i64 %r1597, %r1598
  %fx21604 = xor i64 %r1597, %t1599
  %fva1605 = and i64 %fx11603, %fx21604
  %fv1606 = icmp slt i64 %fva1605, 0
  %nz1607 = zext i1 %fn1600 to i64
  %zz1608 = zext i1 %fz1601 to i64
  %cz1609 = zext i1 %fc1602 to i64
  %vz1610 = zext i1 %fv1606 to i64
  %ns1611 = shl i64 %nz1607, 31
  %zs1612 = shl i64 %zz1608, 30
  %cs1613 = shl i64 %cz1609, 29
  %vs1614 = shl i64 %vz1610, 28
  %nzor1615 = or i64 %ns1611, %zs1612
  %cvor1616 = or i64 %cs1613, %vs1614
  %nzcv1617 = or i64 %nzor1615, %cvor1616
  %wp1618 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1617, ptr %wp1618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64d0 word 0x540000c3
  %r1619.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1619 = load i64, ptr %r1619.p, align 8, !alias.scope !3, !noalias !4
  %fsh1621 = lshr i64 %r1619, 29
  %ftr1622 = trunc i64 %fsh1621 to i1
  %cond1620 = xor i1 %ftr1622, true
  br i1 %cond1620, label %L_8001a64e8, label %L_8001a64d4_ft
L_8001a64e8:
  ; @pc 0x8001a64e8 word 0x2a1c03e8
  %r1665.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1665 = load i64, ptr %r1665.p, align 8, !alias.scope !3, !noalias !4
  %c1666 = trunc i64 %r1665 to i32
  %t1667 = or i32 0, %c1666
  %c1668 = zext i32 %t1667 to i64
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64ec word 0xb4fff2a9
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %cmp1671 = icmp eq i64 %r1670, 0
  br i1 %cmp1671, label %L_8001a6340, label %L_8001a64f0_ft
L_8001a6520:
  ; @pc 0x8001a6520 word 0xa901dff5
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %t1720 = add i64 %r1719, 24
  %t1721 = add i64 %t1720, 8
  %r1722.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1722 = load i64, ptr %r1722.p, align 8, !alias.scope !3, !noalias !4
  %gmp1723 = inttoptr i64 %t1720 to ptr
  store i64 %r1722, ptr %gmp1723, align 1, !alias.scope !4, !noalias !3
  %r1724.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1724 = load i64, ptr %r1724.p, align 8, !alias.scope !3, !noalias !4
  %gmp1725 = inttoptr i64 %t1721 to ptr
  store i64 %r1724, ptr %gmp1725, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6524 word 0x910063e1
  %r1726.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1726 = load i64, ptr %r1726.p, align 8, !alias.scope !3, !noalias !4
  %t1727 = add i64 %r1726, 24
  %wp1728 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1727, ptr %wp1728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6528 word 0x2a0803fa
  %r1729.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1729 = load i64, ptr %r1729.p, align 8, !alias.scope !3, !noalias !4
  %c1730 = trunc i64 %r1729 to i32
  %t1731 = or i32 0, %c1730
  %c1732 = zext i32 %t1731 to i64
  %wp1733 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1732, ptr %wp1733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a652c word 0xb9002bf6
  %r1734.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1734 = load i64, ptr %r1734.p, align 8, !alias.scope !3, !noalias !4
  %t1735 = add i64 %r1734, 40
  %r1736.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1736 = load i64, ptr %r1736.p, align 8, !alias.scope !3, !noalias !4
  %c1737 = trunc i64 %r1736 to i32
  %gmp1738 = inttoptr i64 %t1735 to ptr
  store i32 %c1737, ptr %gmp1738, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6530 word 0xf9001bfb
  %r1739.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1739 = load i64, ptr %r1739.p, align 8, !alias.scope !3, !noalias !4
  %t1740 = add i64 %r1739, 48
  %r1741.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1741 = load i64, ptr %r1741.p, align 8, !alias.scope !3, !noalias !4
  %gmp1742 = inttoptr i64 %t1740 to ptr
  store i64 %r1741, ptr %gmp1742, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6534 word 0xb9003bea
  %r1743.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1743 = load i64, ptr %r1743.p, align 8, !alias.scope !3, !noalias !4
  %t1744 = add i64 %r1743, 56
  %r1745.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1745 = load i64, ptr %r1745.p, align 8, !alias.scope !3, !noalias !4
  %c1746 = trunc i64 %r1745 to i32
  %gmp1747 = inttoptr i64 %t1744 to ptr
  store i32 %c1746, ptr %gmp1747, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6538 word 0xf9400009
  %r1748.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1748 = load i64, ptr %r1748.p, align 8, !alias.scope !3, !noalias !4
  %gmp1749 = inttoptr i64 %r1748 to ptr
  %gml1750 = load i64, ptr %gmp1749, align 1, !alias.scope !4, !noalias !3
  %wp1751 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1750, ptr %wp1751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a653c word 0xf9400129
  %r1752.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1752 = load i64, ptr %r1752.p, align 8, !alias.scope !3, !noalias !4
  %gmp1753 = inttoptr i64 %r1752 to ptr
  %gml1754 = load i64, ptr %gmp1753, align 1, !alias.scope !4, !noalias !3
  %wp1755 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1754, ptr %wp1755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6540 word 0xd63f0120
  %r1756.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1756 = load i64, ptr %r1756.p, align 8, !alias.scope !3, !noalias !4
  %fp1757 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1756, ptr %fp1757, align 8, !alias.scope !3, !noalias !4
  %wp1758 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468228, ptr %wp1758, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a6544 word 0x2a1a03e8
  %r1759.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1759 = load i64, ptr %r1759.p, align 8, !alias.scope !3, !noalias !4
  %c1760 = trunc i64 %r1759 to i32
  %t1761 = or i32 0, %c1760
  %c1762 = zext i32 %t1761 to i64
  %wp1763 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1762, ptr %wp1763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6548 word 0x17ffff7e
  br label %L_8001a6340
L_8001a654c:
  ; @pc 0x8001a654c word 0xb400017b
  %r1764.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1764 = load i64, ptr %r1764.p, align 8, !alias.scope !3, !noalias !4
  %cmp1765 = icmp eq i64 %r1764, 0
  br i1 %cmp1765, label %L_8001a6578, label %L_8001a6550_ft
L_8001a6568:
  ; @pc 0x8001a6568 word 0xf9400008
  %r1794.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1794 = load i64, ptr %r1794.p, align 8, !alias.scope !3, !noalias !4
  %gmp1795 = inttoptr i64 %r1794 to ptr
  %gml1796 = load i64, ptr %gmp1795, align 1, !alias.scope !4, !noalias !3
  %wp1797 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1796, ptr %wp1797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a656c word 0x910063e1
  %r1798.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1798 = load i64, ptr %r1798.p, align 8, !alias.scope !3, !noalias !4
  %t1799 = add i64 %r1798, 24
  %wp1800 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1799, ptr %wp1800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6570 word 0xf9400108
  %r1801.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1801 = load i64, ptr %r1801.p, align 8, !alias.scope !3, !noalias !4
  %gmp1802 = inttoptr i64 %r1801 to ptr
  %gml1803 = load i64, ptr %gmp1802, align 1, !alias.scope !4, !noalias !3
  %wp1804 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1803, ptr %wp1804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6574 word 0xd63f0100
  %r1805.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1805 = load i64, ptr %r1805.p, align 8, !alias.scope !3, !noalias !4
  %fp1806 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1805, ptr %fp1806, align 8, !alias.scope !3, !noalias !4
  %wp1807 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468280, ptr %wp1807, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a6578
L_8001a6578:
  ; @pc 0x8001a6578 word 0xaa1f03fa
  %t1808 = or i64 0, 0
  %wp1809 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1808, ptr %wp1809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a657c word 0xb4ffdfd8
  %r1810.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1810 = load i64, ptr %r1810.p, align 8, !alias.scope !3, !noalias !4
  %cmp1811 = icmp eq i64 %r1810, 0
  br i1 %cmp1811, label %L_8001a6174, label %L_8001a6580_ft
L_8001a6584:
  ; @pc 0x8001a6584 word 0x2a1c03e8
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %c1813 = trunc i64 %r1812 to i32
  %t1814 = or i32 0, %c1813
  %c1815 = zext i32 %t1814 to i64
  %wp1816 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1815, ptr %wp1816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6588 word 0xf9005eba
  %r1817.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1817 = load i64, ptr %r1817.p, align 8, !alias.scope !3, !noalias !4
  %t1818 = add i64 %r1817, 184
  %r1819.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1819 = load i64, ptr %r1819.p, align 8, !alias.scope !3, !noalias !4
  %gmp1820 = inttoptr i64 %t1818 to ptr
  store i64 %r1819, ptr %gmp1820, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a658c word 0x17fffef8
  br label %L_8001a616c
L_8001a6590:
  ; @pc 0x8001a6590 word 0xb4ffdf9b
  %r1821.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1821 = load i64, ptr %r1821.p, align 8, !alias.scope !3, !noalias !4
  %cmp1822 = icmp eq i64 %r1821, 0
  br i1 %cmp1822, label %L_8001a6180, label %L_8001a6594_ft
L_8001a65c0:
  ; @pc 0x8001a65c0 word 0x910222b8
  %r1865.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1865 = load i64, ptr %r1865.p, align 8, !alias.scope !3, !noalias !4
  %t1866 = add i64 %r1865, 136
  %wp1867 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1866, ptr %wp1867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65c4 word 0xaa1803e0
  %r1868.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1868 = load i64, ptr %r1868.p, align 8, !alias.scope !3, !noalias !4
  %t1869 = or i64 0, %r1868
  %wp1870 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1869, ptr %wp1870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65c8 word 0x94a7f6a6
  %wp1871 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468364, ptr %wp1871, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a65cc word 0x17ffff05
  br label %L_8001a61e0
L_8001a65d0:
  ; @pc 0x8001a65d0 word 0x4b0c03e8
  %r1872.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1872 = load i64, ptr %r1872.p, align 8, !alias.scope !3, !noalias !4
  %c1873 = trunc i64 %r1872 to i32
  %t1874 = sub i32 0, %c1873
  %c1875 = zext i32 %t1874 to i64
  %wp1876 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1875, ptr %wp1876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65d4 word 0xaa1503e0
  %r1877.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1877 = load i64, ptr %r1877.p, align 8, !alias.scope !3, !noalias !4
  %t1878 = or i64 0, %r1877
  %wp1879 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1878, ptr %wp1879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65d8 word 0xb9000be8
  %r1880.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1880 = load i64, ptr %r1880.p, align 8, !alias.scope !3, !noalias !4
  %t1881 = add i64 %r1880, 8
  %r1882.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1882 = load i64, ptr %r1882.p, align 8, !alias.scope !3, !noalias !4
  %c1883 = trunc i64 %r1882 to i32
  %gmp1884 = inttoptr i64 %t1881 to ptr
  store i32 %c1883, ptr %gmp1884, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a65dc word 0xaa1903e1
  %r1885.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1885 = load i64, ptr %r1885.p, align 8, !alias.scope !3, !noalias !4
  %t1886 = or i64 0, %r1885
  %wp1887 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1886, ptr %wp1887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65e0 word 0x3100219f
  %r1888.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1888 = load i64, ptr %r1888.p, align 8, !alias.scope !3, !noalias !4
  %c1889 = trunc i64 %r1888 to i32
  %t1890 = add i32 %c1889, 8
  %fn1891 = icmp slt i32 %t1890, 0
  %fz1892 = icmp eq i32 %t1890, 0
  %fc1893 = icmp ult i32 %t1890, %c1889
  %fx11894 = xor i32 %c1889, %t1890
  %fx21895 = xor i32 8, %t1890
  %fva1896 = and i32 %fx11894, %fx21895
  %fv1897 = icmp slt i32 %fva1896, 0
  %nz1898 = zext i1 %fn1891 to i64
  %zz1899 = zext i1 %fz1892 to i64
  %cz1900 = zext i1 %fc1893 to i64
  %vz1901 = zext i1 %fv1897 to i64
  %ns1902 = shl i64 %nz1898, 31
  %zs1903 = shl i64 %zz1899, 30
  %cs1904 = shl i64 %cz1900, 29
  %vs1905 = shl i64 %vz1901, 28
  %nzor1906 = or i64 %ns1902, %zs1903
  %cvor1907 = or i64 %cs1904, %vs1905
  %nzcv1908 = or i64 %nzor1906, %cvor1907
  %wp1909 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1908, ptr %wp1909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65e4 word 0x540023a3
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %fsh1912 = lshr i64 %r1910, 29
  %ftr1913 = trunc i64 %fsh1912 to i1
  %cond1911 = xor i1 %ftr1913, true
  br i1 %cond1911, label %L_8001a6a58, label %L_8001a65e8_ft
L_8001a65ec:
  ; @pc 0x8001a65ec word 0xaa0003ec
  %r1915.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1915 = load i64, ptr %r1915.p, align 8, !alias.scope !3, !noalias !4
  %t1916 = or i64 0, %r1915
  %wp1917 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1916, ptr %wp1917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65f0 word 0xb5001760
  %r1918.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1918 = load i64, ptr %r1918.p, align 8, !alias.scope !3, !noalias !4
  %cmp1919 = icmp ne i64 %r1918, 0
  br i1 %cmp1919, label %L_8001a68dc, label %L_8001a65f4_ft
L_8001a65f8:
  ; @pc 0x8001a65f8 word 0xeb0a017f
  %r1920.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1920 = load i64, ptr %r1920.p, align 8, !alias.scope !3, !noalias !4
  %r1921.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1921 = load i64, ptr %r1921.p, align 8, !alias.scope !3, !noalias !4
  %t1922 = sub i64 %r1920, %r1921
  %fn1923 = icmp slt i64 %t1922, 0
  %fz1924 = icmp eq i64 %t1922, 0
  %fc1925 = icmp uge i64 %r1920, %r1921
  %fx11926 = xor i64 %r1920, %r1921
  %fx21927 = xor i64 %r1920, %t1922
  %fva1928 = and i64 %fx11926, %fx21927
  %fv1929 = icmp slt i64 %fva1928, 0
  %nz1930 = zext i1 %fn1923 to i64
  %zz1931 = zext i1 %fz1924 to i64
  %cz1932 = zext i1 %fc1925 to i64
  %vz1933 = zext i1 %fv1929 to i64
  %ns1934 = shl i64 %nz1930, 31
  %zs1935 = shl i64 %zz1931, 30
  %cs1936 = shl i64 %cz1932, 29
  %vs1937 = shl i64 %vz1933, 28
  %nzor1938 = or i64 %ns1934, %zs1935
  %cvor1939 = or i64 %cs1936, %vs1937
  %nzcv1940 = or i64 %nzor1938, %cvor1939
  %wp1941 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1940, ptr %wp1941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65fc word 0xb9000bed
  %r1942.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1942 = load i64, ptr %r1942.p, align 8, !alias.scope !3, !noalias !4
  %t1943 = add i64 %r1942, 8
  %r1944.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1944 = load i64, ptr %r1944.p, align 8, !alias.scope !3, !noalias !4
  %c1945 = trunc i64 %r1944 to i32
  %gmp1946 = inttoptr i64 %t1943 to ptr
  store i32 %c1945, ptr %gmp1946, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6600 word 0x54ffe680
  %r1947.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1947 = load i64, ptr %r1947.p, align 8, !alias.scope !3, !noalias !4
  %fsh1949 = lshr i64 %r1947, 30
  %cond1948 = trunc i64 %fsh1949 to i1
  br i1 %cond1948, label %L_8001a62d0, label %L_8001a6604_ft
L_8001a6618:
  ; @pc 0x8001a6618 word 0xf9400beb
  %r1972.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1972 = load i64, ptr %r1972.p, align 8, !alias.scope !3, !noalias !4
  %t1973 = add i64 %r1972, 16
  %gmp1974 = inttoptr i64 %t1973 to ptr
  %gml1975 = load i64, ptr %gmp1974, align 1, !alias.scope !4, !noalias !3
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a661c word 0xf9400d7c
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %t1978 = add i64 %r1977, 24
  %gmp1979 = inttoptr i64 %t1978 to ptr
  %gml1980 = load i64, ptr %gmp1979, align 1, !alias.scope !4, !noalias !3
  %wp1981 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1980, ptr %wp1981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6620 word 0xeb19039f
  %r1982.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1982 = load i64, ptr %r1982.p, align 8, !alias.scope !3, !noalias !4
  %r1983.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1983 = load i64, ptr %r1983.p, align 8, !alias.scope !3, !noalias !4
  %t1984 = sub i64 %r1982, %r1983
  %fn1985 = icmp slt i64 %t1984, 0
  %fz1986 = icmp eq i64 %t1984, 0
  %fc1987 = icmp uge i64 %r1982, %r1983
  %fx11988 = xor i64 %r1982, %r1983
  %fx21989 = xor i64 %r1982, %t1984
  %fva1990 = and i64 %fx11988, %fx21989
  %fv1991 = icmp slt i64 %fva1990, 0
  %nz1992 = zext i1 %fn1985 to i64
  %zz1993 = zext i1 %fz1986 to i64
  %cz1994 = zext i1 %fc1987 to i64
  %vz1995 = zext i1 %fv1991 to i64
  %ns1996 = shl i64 %nz1992, 31
  %zs1997 = shl i64 %zz1993, 30
  %cs1998 = shl i64 %cz1994, 29
  %vs1999 = shl i64 %vz1995, 28
  %nzor2000 = or i64 %ns1996, %zs1997
  %cvor2001 = or i64 %cs1998, %vs1999
  %nzcv2002 = or i64 %nzor2000, %cvor2001
  %wp2003 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2002, ptr %wp2003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6624 word 0x54000122
  %r2004.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2004 = load i64, ptr %r2004.p, align 8, !alias.scope !3, !noalias !4
  %fsh2006 = lshr i64 %r2004, 29
  %cond2005 = trunc i64 %fsh2006 to i1
  br i1 %cond2005, label %L_8001a6648, label %L_8001a6628
L_8001a6628:
  ; @pc 0x8001a6628 word 0xf9400beb
  %r2007.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2007 = load i64, ptr %r2007.p, align 8, !alias.scope !3, !noalias !4
  %t2008 = add i64 %r2007, 16
  %gmp2009 = inttoptr i64 %t2008 to ptr
  %gml2010 = load i64, ptr %gmp2009, align 1, !alias.scope !4, !noalias !3
  %wp2011 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2010, ptr %wp2011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a662c word 0x8b09016b
  %r2012.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2012 = load i64, ptr %r2012.p, align 8, !alias.scope !3, !noalias !4
  %r2013.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2013 = load i64, ptr %r2013.p, align 8, !alias.scope !3, !noalias !4
  %t2014 = add i64 %r2012, %r2013
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2014, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6630 word 0xf940056b
  %r2016.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2016 = load i64, ptr %r2016.p, align 8, !alias.scope !3, !noalias !4
  %t2017 = add i64 %r2016, 8
  %gmp2018 = inttoptr i64 %t2017 to ptr
  %gml2019 = load i64, ptr %gmp2018, align 1, !alias.scope !4, !noalias !3
  %wp2020 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2019, ptr %wp2020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6634 word 0x8b08016b
  %r2021.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2021 = load i64, ptr %r2021.p, align 8, !alias.scope !3, !noalias !4
  %r2022.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2022 = load i64, ptr %r2022.p, align 8, !alias.scope !3, !noalias !4
  %t2023 = add i64 %r2021, %r2022
  %wp2024 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2023, ptr %wp2024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6638 word 0xeb0a017f
  %r2025.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2025 = load i64, ptr %r2025.p, align 8, !alias.scope !3, !noalias !4
  %r2026.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2026 = load i64, ptr %r2026.p, align 8, !alias.scope !3, !noalias !4
  %t2027 = sub i64 %r2025, %r2026
  %fn2028 = icmp slt i64 %t2027, 0
  %fz2029 = icmp eq i64 %t2027, 0
  %fc2030 = icmp uge i64 %r2025, %r2026
  %fx12031 = xor i64 %r2025, %r2026
  %fx22032 = xor i64 %r2025, %t2027
  %fva2033 = and i64 %fx12031, %fx22032
  %fv2034 = icmp slt i64 %fva2033, 0
  %nz2035 = zext i1 %fn2028 to i64
  %zz2036 = zext i1 %fz2029 to i64
  %cz2037 = zext i1 %fc2030 to i64
  %vz2038 = zext i1 %fv2034 to i64
  %ns2039 = shl i64 %nz2035, 31
  %zs2040 = shl i64 %zz2036, 30
  %cs2041 = shl i64 %cz2037, 29
  %vs2042 = shl i64 %vz2038, 28
  %nzor2043 = or i64 %ns2039, %zs2040
  %cvor2044 = or i64 %cs2041, %vs2042
  %nzcv2045 = or i64 %nzor2043, %cvor2044
  %wp2046 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2045, ptr %wp2046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a663c word 0xf9000beb
  %r2047.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2047 = load i64, ptr %r2047.p, align 8, !alias.scope !3, !noalias !4
  %t2048 = add i64 %r2047, 16
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2049 = load i64, ptr %r2049.p, align 8, !alias.scope !3, !noalias !4
  %gmp2050 = inttoptr i64 %t2048 to ptr
  store i64 %r2049, ptr %gmp2050, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6640 word 0x54fffec1
  %r2051.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2051 = load i64, ptr %r2051.p, align 8, !alias.scope !3, !noalias !4
  %fsh2053 = lshr i64 %r2051, 30
  %ftr2054 = trunc i64 %fsh2053 to i1
  %cond2052 = xor i1 %ftr2054, true
  br i1 %cond2052, label %L_8001a6618, label %L_8001a6644_ft
L_8001a6648:
  ; @pc 0x8001a6648 word 0xf9400bee
  %r2055.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2055 = load i64, ptr %r2055.p, align 8, !alias.scope !3, !noalias !4
  %t2056 = add i64 %r2055, 16
  %gmp2057 = inttoptr i64 %t2056 to ptr
  %gml2058 = load i64, ptr %gmp2057, align 1, !alias.scope !4, !noalias !3
  %wp2059 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2058, ptr %wp2059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a664c word 0x794025cb
  %r2060.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2060 = load i64, ptr %r2060.p, align 8, !alias.scope !3, !noalias !4
  %t2061 = add i64 %r2060, 18
  %gmp2062 = inttoptr i64 %t2061 to ptr
  %gml2063 = load i16, ptr %gmp2062, align 1, !alias.scope !4, !noalias !3
  %c2064 = zext i16 %gml2063 to i64
  %wp2065 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2064, ptr %wp2065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6650 word 0x8b0b01ce
  %r2066.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2066 = load i64, ptr %r2066.p, align 8, !alias.scope !3, !noalias !4
  %r2067.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2067 = load i64, ptr %r2067.p, align 8, !alias.scope !3, !noalias !4
  %t2068 = add i64 %r2066, %r2067
  %wp2069 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2068, ptr %wp2069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6654 word 0x910081ce
  %r2070.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2070 = load i64, ptr %r2070.p, align 8, !alias.scope !3, !noalias !4
  %t2071 = add i64 %r2070, 32
  %wp2072 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2071, ptr %wp2072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6658 word 0x8b0c01cf
  %r2073.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2073 = load i64, ptr %r2073.p, align 8, !alias.scope !3, !noalias !4
  %r2074.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2074 = load i64, ptr %r2074.p, align 8, !alias.scope !3, !noalias !4
  %t2075 = add i64 %r2073, %r2074
  %wp2076 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2075, ptr %wp2076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a665c word 0xcb0e032e
  %r2077.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2077 = load i64, ptr %r2077.p, align 8, !alias.scope !3, !noalias !4
  %r2078.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2078 = load i64, ptr %r2078.p, align 8, !alias.scope !3, !noalias !4
  %t2079 = sub i64 %r2077, %r2078
  %wp2080 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2079, ptr %wp2080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6660 word 0x8a0d01ef
  %r2081.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2081 = load i64, ptr %r2081.p, align 8, !alias.scope !3, !noalias !4
  %r2082.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2082 = load i64, ptr %r2082.p, align 8, !alias.scope !3, !noalias !4
  %t2083 = and i64 %r2082, %r2081
  %wp2084 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2083, ptr %wp2084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6664 word 0x8b0f01ce
  %r2085.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2085 = load i64, ptr %r2085.p, align 8, !alias.scope !3, !noalias !4
  %r2086.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2086 = load i64, ptr %r2086.p, align 8, !alias.scope !3, !noalias !4
  %t2087 = add i64 %r2085, %r2086
  %wp2088 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2087, ptr %wp2088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6668 word 0xeb0e039f
  %r2089.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2089 = load i64, ptr %r2089.p, align 8, !alias.scope !3, !noalias !4
  %r2090.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2090 = load i64, ptr %r2090.p, align 8, !alias.scope !3, !noalias !4
  %t2091 = sub i64 %r2089, %r2090
  %fn2092 = icmp slt i64 %t2091, 0
  %fz2093 = icmp eq i64 %t2091, 0
  %fc2094 = icmp uge i64 %r2089, %r2090
  %fx12095 = xor i64 %r2089, %r2090
  %fx22096 = xor i64 %r2089, %t2091
  %fva2097 = and i64 %fx12095, %fx22096
  %fv2098 = icmp slt i64 %fva2097, 0
  %nz2099 = zext i1 %fn2092 to i64
  %zz2100 = zext i1 %fz2093 to i64
  %cz2101 = zext i1 %fc2094 to i64
  %vz2102 = zext i1 %fv2098 to i64
  %ns2103 = shl i64 %nz2099, 31
  %zs2104 = shl i64 %zz2100, 30
  %cs2105 = shl i64 %cz2101, 29
  %vs2106 = shl i64 %vz2102, 28
  %nzor2107 = or i64 %ns2103, %zs2104
  %cvor2108 = or i64 %cs2105, %vs2106
  %nzcv2109 = or i64 %nzor2107, %cvor2108
  %wp2110 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2109, ptr %wp2110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a666c word 0x54fffde3
  %r2111.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2111 = load i64, ptr %r2111.p, align 8, !alias.scope !3, !noalias !4
  %fsh2113 = lshr i64 %r2111, 29
  %ftr2114 = trunc i64 %fsh2113 to i1
  %cond2112 = xor i1 %ftr2114, true
  br i1 %cond2112, label %L_8001a6628, label %L_8001a6670
L_8001a6670:
  ; @pc 0x8001a6670 word 0xf9400bea
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %t2116 = add i64 %r2115, 16
  %gmp2117 = inttoptr i64 %t2116 to ptr
  %gml2118 = load i64, ptr %gmp2117, align 1, !alias.scope !4, !noalias !3
  %wp2119 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2118, ptr %wp2119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6674 word 0x8b09014e
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %r2121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2121 = load i64, ptr %r2121.p, align 8, !alias.scope !3, !noalias !4
  %t2122 = add i64 %r2120, %r2121
  %wp2123 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2122, ptr %wp2123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6678 word 0x91008149
  %r2124.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2124 = load i64, ptr %r2124.p, align 8, !alias.scope !3, !noalias !4
  %t2125 = add i64 %r2124, 32
  %wp2126 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2125, ptr %wp2126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a667c word 0xf94005ca
  %r2127.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2127 = load i64, ptr %r2127.p, align 8, !alias.scope !3, !noalias !4
  %t2128 = add i64 %r2127, 8
  %gmp2129 = inttoptr i64 %t2128 to ptr
  %gml2130 = load i64, ptr %gmp2129, align 1, !alias.scope !4, !noalias !3
  %wp2131 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2130, ptr %wp2131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6680 word 0x8b080148
  %r2132.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2132 = load i64, ptr %r2132.p, align 8, !alias.scope !3, !noalias !4
  %r2133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2133 = load i64, ptr %r2133.p, align 8, !alias.scope !3, !noalias !4
  %t2134 = add i64 %r2132, %r2133
  %wp2135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2134, ptr %wp2135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6684 word 0xeb1a015f
  %r2136.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2136 = load i64, ptr %r2136.p, align 8, !alias.scope !3, !noalias !4
  %r2137.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2137 = load i64, ptr %r2137.p, align 8, !alias.scope !3, !noalias !4
  %t2138 = sub i64 %r2136, %r2137
  %fn2139 = icmp slt i64 %t2138, 0
  %fz2140 = icmp eq i64 %t2138, 0
  %fc2141 = icmp uge i64 %r2136, %r2137
  %fx12142 = xor i64 %r2136, %r2137
  %fx22143 = xor i64 %r2136, %t2138
  %fva2144 = and i64 %fx12142, %fx22143
  %fv2145 = icmp slt i64 %fva2144, 0
  %nz2146 = zext i1 %fn2139 to i64
  %zz2147 = zext i1 %fz2140 to i64
  %cz2148 = zext i1 %fc2141 to i64
  %vz2149 = zext i1 %fv2145 to i64
  %ns2150 = shl i64 %nz2146, 31
  %zs2151 = shl i64 %zz2147, 30
  %cs2152 = shl i64 %cz2148, 29
  %vs2153 = shl i64 %vz2149, 28
  %nzor2154 = or i64 %ns2150, %zs2151
  %cvor2155 = or i64 %cs2152, %vs2153
  %nzcv2156 = or i64 %nzor2154, %cvor2155
  %wp2157 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2156, ptr %wp2157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6688 word 0x9a8803f6
  %r2158.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2158 = load i64, ptr %r2158.p, align 8, !alias.scope !3, !noalias !4
  %r2159.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2159 = load i64, ptr %r2159.p, align 8, !alias.scope !3, !noalias !4
  %fsh2161 = lshr i64 %r2159, 30
  %cond2160 = trunc i64 %fsh2161 to i1
  %sel2162 = select i1 %cond2160, i64 0, i64 %r2158
  %wp2163 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %sel2162, ptr %wp2163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a668c word 0x8b0b0128
  %r2164.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2164 = load i64, ptr %r2164.p, align 8, !alias.scope !3, !noalias !4
  %r2165.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2165 = load i64, ptr %r2165.p, align 8, !alias.scope !3, !noalias !4
  %t2166 = add i64 %r2164, %r2165
  %wp2167 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2166, ptr %wp2167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6690 word 0x8b0c010a
  %r2168.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2168 = load i64, ptr %r2168.p, align 8, !alias.scope !3, !noalias !4
  %r2169.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2169 = load i64, ptr %r2169.p, align 8, !alias.scope !3, !noalias !4
  %t2170 = add i64 %r2168, %r2169
  %wp2171 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2170, ptr %wp2171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6694 word 0x8a0d014a
  %r2172.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2172 = load i64, ptr %r2172.p, align 8, !alias.scope !3, !noalias !4
  %r2173.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2173 = load i64, ptr %r2173.p, align 8, !alias.scope !3, !noalias !4
  %t2174 = and i64 %r2173, %r2172
  %wp2175 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2174, ptr %wp2175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6698 word 0xcb080148
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %r2177.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2177 = load i64, ptr %r2177.p, align 8, !alias.scope !3, !noalias !4
  %t2178 = sub i64 %r2176, %r2177
  %wp2179 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2178, ptr %wp2179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a669c word 0x8b190117
  %r2180.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2180 = load i64, ptr %r2180.p, align 8, !alias.scope !3, !noalias !4
  %r2181.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2181 = load i64, ptr %r2181.p, align 8, !alias.scope !3, !noalias !4
  %t2182 = add i64 %r2180, %r2181
  %wp2183 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2182, ptr %wp2183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66a0 word 0xf140411f
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %t2185 = sub i64 %r2184, 65536
  %fn2186 = icmp slt i64 %t2185, 0
  %fz2187 = icmp eq i64 %t2185, 0
  %fc2188 = icmp uge i64 %r2184, 65536
  %fx12189 = xor i64 %r2184, 65536
  %fx22190 = xor i64 %r2184, %t2185
  %fva2191 = and i64 %fx12189, %fx22190
  %fv2192 = icmp slt i64 %fva2191, 0
  %nz2193 = zext i1 %fn2186 to i64
  %zz2194 = zext i1 %fz2187 to i64
  %cz2195 = zext i1 %fc2188 to i64
  %vz2196 = zext i1 %fv2192 to i64
  %ns2197 = shl i64 %nz2193, 31
  %zs2198 = shl i64 %zz2194, 30
  %cs2199 = shl i64 %cz2195, 29
  %vs2200 = shl i64 %vz2196, 28
  %nzor2201 = or i64 %ns2197, %zs2198
  %cvor2202 = or i64 %cs2199, %vs2200
  %nzcv2203 = or i64 %nzor2201, %cvor2202
  %wp2204 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2203, ptr %wp2204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66a4 word 0x54001e02
  %r2205.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2205 = load i64, ptr %r2205.p, align 8, !alias.scope !3, !noalias !4
  %fsh2207 = lshr i64 %r2205, 29
  %cond2206 = trunc i64 %fsh2207 to i1
  br i1 %cond2206, label %L_8001a6a64, label %L_8001a66a8_ft
L_8001a66c8:
  ; @pc 0x8001a66c8 word 0xf9400be8
  %r2249.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2249 = load i64, ptr %r2249.p, align 8, !alias.scope !3, !noalias !4
  %t2250 = add i64 %r2249, 16
  %gmp2251 = inttoptr i64 %t2250 to ptr
  %gml2252 = load i64, ptr %gmp2251, align 1, !alias.scope !4, !noalias !3
  %wp2253 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2252, ptr %wp2253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66cc word 0xf9000d19
  %r2254.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2254 = load i64, ptr %r2254.p, align 8, !alias.scope !3, !noalias !4
  %t2255 = add i64 %r2254, 24
  %r2256.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2256 = load i64, ptr %r2256.p, align 8, !alias.scope !3, !noalias !4
  %gmp2257 = inttoptr i64 %t2255 to ptr
  store i64 %r2256, ptr %gmp2257, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a66d0 word 0xb980c6a9
  %r2258.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2258 = load i64, ptr %r2258.p, align 8, !alias.scope !3, !noalias !4
  %t2259 = add i64 %r2258, 196
  %gmp2260 = inttoptr i64 %t2259 to ptr
  %gml2261 = load i32, ptr %gmp2260, align 1, !alias.scope !4, !noalias !3
  %c2262 = sext i32 %gml2261 to i64
  %wp2263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2262, ptr %wp2263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66d4 word 0x8b080128
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %r2265.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2265 = load i64, ptr %r2265.p, align 8, !alias.scope !3, !noalias !4
  %t2266 = add i64 %r2264, %r2265
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2266, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66d8 word 0xf9400109
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %gmp2269 = inttoptr i64 %r2268 to ptr
  %gml2270 = load i64, ptr %gmp2269, align 1, !alias.scope !4, !noalias !3
  %wp2271 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2270, ptr %wp2271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66dc word 0xb4000069
  %r2272.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2272 = load i64, ptr %r2272.p, align 8, !alias.scope !3, !noalias !4
  %cmp2273 = icmp eq i64 %r2272, 0
  br i1 %cmp2273, label %L_8001a66e8, label %L_8001a66e0_ft
L_8001a66e8:
  ; @pc 0x8001a66e8 word 0xf9400509
  %r2283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2283 = load i64, ptr %r2283.p, align 8, !alias.scope !3, !noalias !4
  %t2284 = add i64 %r2283, 8
  %gmp2285 = inttoptr i64 %t2284 to ptr
  %gml2286 = load i64, ptr %gmp2285, align 1, !alias.scope !4, !noalias !3
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2286, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66ec word 0xb4000069
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %cmp2289 = icmp eq i64 %r2288, 0
  br i1 %cmp2289, label %L_8001a66f8, label %L_8001a66f0_ft
L_8001a66f8:
  ; @pc 0x8001a66f8 word 0xa9007d1f
  %r2297.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2297 = load i64, ptr %r2297.p, align 8, !alias.scope !3, !noalias !4
  %t2298 = add i64 %r2297, 8
  %gmp2299 = inttoptr i64 %r2297 to ptr
  store i64 0, ptr %gmp2299, align 1, !alias.scope !4, !noalias !3
  %gmp2300 = inttoptr i64 %t2298 to ptr
  store i64 0, ptr %gmp2300, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a66fc word 0xb940c2a8
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %t2302 = add i64 %r2301, 192
  %gmp2303 = inttoptr i64 %t2302 to ptr
  %gml2304 = load i32, ptr %gmp2303, align 1, !alias.scope !4, !noalias !3
  %c2305 = zext i32 %gml2304 to i64
  %wp2306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2305, ptr %wp2306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6700 word 0x51000508
  %r2307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2307 = load i64, ptr %r2307.p, align 8, !alias.scope !3, !noalias !4
  %c2308 = trunc i64 %r2307 to i32
  %t2309 = sub i32 %c2308, 1
  %c2310 = zext i32 %t2309 to i64
  %wp2311 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2310, ptr %wp2311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6704 word 0xb900c2a8
  %r2312.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2312 = load i64, ptr %r2312.p, align 8, !alias.scope !3, !noalias !4
  %t2313 = add i64 %r2312, 192
  %r2314.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2314 = load i64, ptr %r2314.p, align 8, !alias.scope !3, !noalias !4
  %c2315 = trunc i64 %r2314 to i32
  %gmp2316 = inttoptr i64 %t2313 to ptr
  store i32 %c2315, ptr %gmp2316, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6708
L_8001a6708:
  ; @pc 0x8001a6708 word 0xb94082a9
  %r2317.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2317 = load i64, ptr %r2317.p, align 8, !alias.scope !3, !noalias !4
  %t2318 = add i64 %r2317, 128
  %gmp2319 = inttoptr i64 %t2318 to ptr
  %gml2320 = load i32, ptr %gmp2319, align 1, !alias.scope !4, !noalias !3
  %c2321 = zext i32 %gml2320 to i64
  %wp2322 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2321, ptr %wp2322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a670c word 0xcb17039b
  %r2323.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2323 = load i64, ptr %r2323.p, align 8, !alias.scope !3, !noalias !4
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %t2325 = sub i64 %r2323, %r2324
  %wp2326 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2325, ptr %wp2326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6710 word 0x910322a0
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %t2328 = add i64 %r2327, 200
  %wp2329 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2328, ptr %wp2329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6714 word 0xb980deaa
  %r2330.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2330 = load i64, ptr %r2330.p, align 8, !alias.scope !3, !noalias !4
  %t2331 = add i64 %r2330, 220
  %gmp2332 = inttoptr i64 %t2331 to ptr
  %gml2333 = load i32, ptr %gmp2332, align 1, !alias.scope !4, !noalias !3
  %c2334 = sext i32 %gml2333 to i64
  %wp2335 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2334, ptr %wp2335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6718 word 0x7100053f
  %r2336.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2336 = load i64, ptr %r2336.p, align 8, !alias.scope !3, !noalias !4
  %c2337 = trunc i64 %r2336 to i32
  %t2338 = sub i32 %c2337, 1
  %fn2339 = icmp slt i32 %t2338, 0
  %fz2340 = icmp eq i32 %t2338, 0
  %fc2341 = icmp uge i32 %c2337, 1
  %fx12342 = xor i32 %c2337, 1
  %fx22343 = xor i32 %c2337, %t2338
  %fva2344 = and i32 %fx12342, %fx22343
  %fv2345 = icmp slt i32 %fva2344, 0
  %nz2346 = zext i1 %fn2339 to i64
  %zz2347 = zext i1 %fz2340 to i64
  %cz2348 = zext i1 %fc2341 to i64
  %vz2349 = zext i1 %fv2345 to i64
  %ns2350 = shl i64 %nz2346, 31
  %zs2351 = shl i64 %zz2347, 30
  %cs2352 = shl i64 %cz2348, 29
  %vs2353 = shl i64 %vz2349, 28
  %nzor2354 = or i64 %ns2350, %zs2351
  %cvor2355 = or i64 %cs2352, %vs2353
  %nzcv2356 = or i64 %nzor2354, %cvor2355
  %wp2357 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2356, ptr %wp2357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a671c word 0xf9400be8
  %r2358.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2358 = load i64, ptr %r2358.p, align 8, !alias.scope !3, !noalias !4
  %t2359 = add i64 %r2358, 16
  %gmp2360 = inttoptr i64 %t2359 to ptr
  %gml2361 = load i64, ptr %gmp2360, align 1, !alias.scope !4, !noalias !3
  %wp2362 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2361, ptr %wp2362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6720 word 0x8b0a0101
  %r2363.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2363 = load i64, ptr %r2363.p, align 8, !alias.scope !3, !noalias !4
  %r2364.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2364 = load i64, ptr %r2364.p, align 8, !alias.scope !3, !noalias !4
  %t2365 = add i64 %r2363, %r2364
  %wp2366 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2365, ptr %wp2366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6724 word 0x54002021
  %r2367.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2367 = load i64, ptr %r2367.p, align 8, !alias.scope !3, !noalias !4
  %fsh2369 = lshr i64 %r2367, 30
  %ftr2370 = trunc i64 %fsh2369 to i1
  %cond2368 = xor i1 %ftr2370, true
  br i1 %cond2368, label %L_8001a6b28, label %L_8001a6728_ft
L_8001a673c:
  ; @pc 0x8001a673c word 0xb940daa8
  %r2390.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2390 = load i64, ptr %r2390.p, align 8, !alias.scope !3, !noalias !4
  %t2391 = add i64 %r2390, 216
  %gmp2392 = inttoptr i64 %t2391 to ptr
  %gml2393 = load i32, ptr %gmp2392, align 1, !alias.scope !4, !noalias !3
  %c2394 = zext i32 %gml2393 to i64
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2394, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6740 word 0xf100877f
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %t2397 = sub i64 %r2396, 33
  %fn2398 = icmp slt i64 %t2397, 0
  %fz2399 = icmp eq i64 %t2397, 0
  %fc2400 = icmp uge i64 %r2396, 33
  %fx12401 = xor i64 %r2396, 33
  %fx22402 = xor i64 %r2396, %t2397
  %fva2403 = and i64 %fx12401, %fx22402
  %fv2404 = icmp slt i64 %fva2403, 0
  %nz2405 = zext i1 %fn2398 to i64
  %zz2406 = zext i1 %fz2399 to i64
  %cz2407 = zext i1 %fc2400 to i64
  %vz2408 = zext i1 %fv2404 to i64
  %ns2409 = shl i64 %nz2405, 31
  %zs2410 = shl i64 %zz2406, 30
  %cs2411 = shl i64 %cz2407, 29
  %vs2412 = shl i64 %vz2408, 28
  %nzor2413 = or i64 %ns2409, %zs2410
  %cvor2414 = or i64 %cs2411, %vs2412
  %nzcv2415 = or i64 %nzor2413, %cvor2414
  %wp2416 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2415, ptr %wp2416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6744 word 0x11000508
  %r2417.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2417 = load i64, ptr %r2417.p, align 8, !alias.scope !3, !noalias !4
  %c2418 = trunc i64 %r2417 to i32
  %t2419 = add i32 %c2418, 1
  %c2420 = zext i32 %t2419 to i64
  %wp2421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2420, ptr %wp2421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6748 word 0xb900daa8
  %r2422.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2422 = load i64, ptr %r2422.p, align 8, !alias.scope !3, !noalias !4
  %t2423 = add i64 %r2422, 216
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %c2425 = trunc i64 %r2424 to i32
  %gmp2426 = inttoptr i64 %t2423 to ptr
  store i32 %c2425, ptr %gmp2426, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a674c word 0x54001403
  %r2427.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2427 = load i64, ptr %r2427.p, align 8, !alias.scope !3, !noalias !4
  %fsh2429 = lshr i64 %r2427, 29
  %ftr2430 = trunc i64 %fsh2429 to i1
  %cond2428 = xor i1 %ftr2430, true
  br i1 %cond2428, label %L_8001a69cc, label %L_8001a6750_ft
L_8001a679c:
  ; @pc 0x8001a679c word 0xf9000528
  %r2506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2506 = load i64, ptr %r2506.p, align 8, !alias.scope !3, !noalias !4
  %t2507 = add i64 %r2506, 8
  %r2508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2508 = load i64, ptr %r2508.p, align 8, !alias.scope !3, !noalias !4
  %gmp2509 = inttoptr i64 %t2507 to ptr
  store i64 %r2508, ptr %gmp2509, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a67a0
L_8001a67a0:
  ; @pc 0x8001a67a0 word 0xb940c2a8
  %r2510.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2510 = load i64, ptr %r2510.p, align 8, !alias.scope !3, !noalias !4
  %t2511 = add i64 %r2510, 192
  %gmp2512 = inttoptr i64 %t2511 to ptr
  %gml2513 = load i32, ptr %gmp2512, align 1, !alias.scope !4, !noalias !3
  %c2514 = zext i32 %gml2513 to i64
  %wp2515 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2514, ptr %wp2515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67a4 word 0x11000508
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %c2517 = trunc i64 %r2516 to i32
  %t2518 = add i32 %c2517, 1
  %c2519 = zext i32 %t2518 to i64
  %wp2520 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2519, ptr %wp2520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67a8 word 0xb900c2a8
  %r2521.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2521 = load i64, ptr %r2521.p, align 8, !alias.scope !3, !noalias !4
  %t2522 = add i64 %r2521, 192
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %c2524 = trunc i64 %r2523 to i32
  %gmp2525 = inttoptr i64 %t2522 to ptr
  store i32 %c2524, ptr %gmp2525, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a67ac
L_8001a67ac:
  ; @pc 0x8001a67ac word 0xf9400bec
  %r2526.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2526 = load i64, ptr %r2526.p, align 8, !alias.scope !3, !noalias !4
  %t2527 = add i64 %r2526, 16
  %gmp2528 = inttoptr i64 %t2527 to ptr
  %gml2529 = load i64, ptr %gmp2528, align 1, !alias.scope !4, !noalias !3
  %wp2530 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2529, ptr %wp2530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67b0 word 0x1400004b
  br label %L_8001a68dc
L_8001a67b4:
  ; @pc 0x8001a67b4 word 0x7100059f
  %r2531.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2531 = load i64, ptr %r2531.p, align 8, !alias.scope !3, !noalias !4
  %c2532 = trunc i64 %r2531 to i32
  %t2533 = sub i32 %c2532, 1
  %fn2534 = icmp slt i32 %t2533, 0
  %fz2535 = icmp eq i32 %t2533, 0
  %fc2536 = icmp uge i32 %c2532, 1
  %fx12537 = xor i32 %c2532, 1
  %fx22538 = xor i32 %c2532, %t2533
  %fva2539 = and i32 %fx12537, %fx22538
  %fv2540 = icmp slt i32 %fva2539, 0
  %nz2541 = zext i1 %fn2534 to i64
  %zz2542 = zext i1 %fz2535 to i64
  %cz2543 = zext i1 %fc2536 to i64
  %vz2544 = zext i1 %fv2540 to i64
  %ns2545 = shl i64 %nz2541, 31
  %zs2546 = shl i64 %zz2542, 30
  %cs2547 = shl i64 %cz2543, 29
  %vs2548 = shl i64 %vz2544, 28
  %nzor2549 = or i64 %ns2545, %zs2546
  %cvor2550 = or i64 %cs2547, %vs2548
  %nzcv2551 = or i64 %nzor2549, %cvor2550
  %wp2552 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2551, ptr %wp2552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67b8 word 0xb9000bed
  %r2553.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2553 = load i64, ptr %r2553.p, align 8, !alias.scope !3, !noalias !4
  %t2554 = add i64 %r2553, 8
  %r2555.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2555 = load i64, ptr %r2555.p, align 8, !alias.scope !3, !noalias !4
  %c2556 = trunc i64 %r2555 to i32
  %gmp2557 = inttoptr i64 %t2554 to ptr
  store i32 %c2556, ptr %gmp2557, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a67bc word 0x54000c21
  %r2558.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2558 = load i64, ptr %r2558.p, align 8, !alias.scope !3, !noalias !4
  %fsh2560 = lshr i64 %r2558, 30
  %ftr2561 = trunc i64 %fsh2560 to i1
  %cond2559 = xor i1 %ftr2561, true
  br i1 %cond2559, label %L_8001a6940, label %L_8001a67c0_ft
L_8001a67c4:
  ; @pc 0x8001a67c4 word 0xf9400d6d
  %r2564.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2564 = load i64, ptr %r2564.p, align 8, !alias.scope !3, !noalias !4
  %t2565 = add i64 %r2564, 24
  %gmp2566 = inttoptr i64 %t2565 to ptr
  %gml2567 = load i64, ptr %gmp2566, align 1, !alias.scope !4, !noalias !3
  %wp2568 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2567, ptr %wp2568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67c8 word 0xeb1901bf
  %r2569.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2569 = load i64, ptr %r2569.p, align 8, !alias.scope !3, !noalias !4
  %r2570.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2570 = load i64, ptr %r2570.p, align 8, !alias.scope !3, !noalias !4
  %t2571 = sub i64 %r2569, %r2570
  %fn2572 = icmp slt i64 %t2571, 0
  %fz2573 = icmp eq i64 %t2571, 0
  %fc2574 = icmp uge i64 %r2569, %r2570
  %fx12575 = xor i64 %r2569, %r2570
  %fx22576 = xor i64 %r2569, %t2571
  %fva2577 = and i64 %fx12575, %fx22576
  %fv2578 = icmp slt i64 %fva2577, 0
  %nz2579 = zext i1 %fn2572 to i64
  %zz2580 = zext i1 %fz2573 to i64
  %cz2581 = zext i1 %fc2574 to i64
  %vz2582 = zext i1 %fv2578 to i64
  %ns2583 = shl i64 %nz2579, 31
  %zs2584 = shl i64 %zz2580, 30
  %cs2585 = shl i64 %cz2581, 29
  %vs2586 = shl i64 %vz2582, 28
  %nzor2587 = or i64 %ns2583, %zs2584
  %cvor2588 = or i64 %cs2585, %vs2586
  %nzcv2589 = or i64 %nzor2587, %cvor2588
  %wp2590 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2589, ptr %wp2590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67cc word 0x540000c3
  %r2591.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2591 = load i64, ptr %r2591.p, align 8, !alias.scope !3, !noalias !4
  %fsh2593 = lshr i64 %r2591, 29
  %ftr2594 = trunc i64 %fsh2593 to i1
  %cond2592 = xor i1 %ftr2594, true
  br i1 %cond2592, label %L_8001a67e4, label %L_8001a67d0_ft
L_8001a67e0:
  ; @pc 0x8001a67e0 word 0xaa0b03ec
  %r2632.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2632 = load i64, ptr %r2632.p, align 8, !alias.scope !3, !noalias !4
  %t2633 = or i64 0, %r2632
  %wp2634 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2633, ptr %wp2634, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a67e4
L_8001a67e4:
  ; @pc 0x8001a67e4 word 0x8b09016b
  %r2635.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2635 = load i64, ptr %r2635.p, align 8, !alias.scope !3, !noalias !4
  %r2636.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2636 = load i64, ptr %r2636.p, align 8, !alias.scope !3, !noalias !4
  %t2637 = add i64 %r2635, %r2636
  %wp2638 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2637, ptr %wp2638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67e8 word 0xf940056b
  %r2639.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2639 = load i64, ptr %r2639.p, align 8, !alias.scope !3, !noalias !4
  %t2640 = add i64 %r2639, 8
  %gmp2641 = inttoptr i64 %t2640 to ptr
  %gml2642 = load i64, ptr %gmp2641, align 1, !alias.scope !4, !noalias !3
  %wp2643 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2642, ptr %wp2643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67ec word 0x8b08016b
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %r2645.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2645 = load i64, ptr %r2645.p, align 8, !alias.scope !3, !noalias !4
  %t2646 = add i64 %r2644, %r2645
  %wp2647 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2646, ptr %wp2647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67f0 word 0xeb0a017f
  %r2648.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2648 = load i64, ptr %r2648.p, align 8, !alias.scope !3, !noalias !4
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %t2650 = sub i64 %r2648, %r2649
  %fn2651 = icmp slt i64 %t2650, 0
  %fz2652 = icmp eq i64 %t2650, 0
  %fc2653 = icmp uge i64 %r2648, %r2649
  %fx12654 = xor i64 %r2648, %r2649
  %fx22655 = xor i64 %r2648, %t2650
  %fva2656 = and i64 %fx12654, %fx22655
  %fv2657 = icmp slt i64 %fva2656, 0
  %nz2658 = zext i1 %fn2651 to i64
  %zz2659 = zext i1 %fz2652 to i64
  %cz2660 = zext i1 %fc2653 to i64
  %vz2661 = zext i1 %fv2657 to i64
  %ns2662 = shl i64 %nz2658, 31
  %zs2663 = shl i64 %zz2659, 30
  %cs2664 = shl i64 %cz2660, 29
  %vs2665 = shl i64 %vz2661, 28
  %nzor2666 = or i64 %ns2662, %zs2663
  %cvor2667 = or i64 %cs2664, %vs2665
  %nzcv2668 = or i64 %nzor2666, %cvor2667
  %wp2669 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2668, ptr %wp2669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67f4 word 0x54fffe81
  %r2670.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2670 = load i64, ptr %r2670.p, align 8, !alias.scope !3, !noalias !4
  %fsh2672 = lshr i64 %r2670, 30
  %ftr2673 = trunc i64 %fsh2672 to i1
  %cond2671 = xor i1 %ftr2673, true
  br i1 %cond2671, label %L_8001a67c4, label %L_8001a67f8
L_8001a67f8:
  ; @pc 0x8001a67f8 word 0xb4ffd6cc
  %r2674.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2674 = load i64, ptr %r2674.p, align 8, !alias.scope !3, !noalias !4
  %cmp2675 = icmp eq i64 %r2674, 0
  br i1 %cmp2675, label %L_8001a62d0, label %L_8001a67fc_ft
L_8001a6800:
  ; @pc 0x8001a6800 word 0xf9000d99
  %r2681.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2681 = load i64, ptr %r2681.p, align 8, !alias.scope !3, !noalias !4
  %t2682 = add i64 %r2681, 24
  %r2683.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2683 = load i64, ptr %r2683.p, align 8, !alias.scope !3, !noalias !4
  %gmp2684 = inttoptr i64 %t2682 to ptr
  store i64 %r2683, ptr %gmp2684, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6804 word 0x79402597
  %r2685.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2685 = load i64, ptr %r2685.p, align 8, !alias.scope !3, !noalias !4
  %t2686 = add i64 %r2685, 18
  %gmp2687 = inttoptr i64 %t2686 to ptr
  %gml2688 = load i16, ptr %gmp2687, align 1, !alias.scope !4, !noalias !3
  %c2689 = zext i16 %gml2688 to i64
  %wp2690 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2689, ptr %wp2690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6808 word 0xb980c6ab
  %r2691.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2691 = load i64, ptr %r2691.p, align 8, !alias.scope !3, !noalias !4
  %t2692 = add i64 %r2691, 196
  %gmp2693 = inttoptr i64 %t2692 to ptr
  %gml2694 = load i32, ptr %gmp2693, align 1, !alias.scope !4, !noalias !3
  %c2695 = sext i32 %gml2694 to i64
  %wp2696 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2695, ptr %wp2696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a680c word 0x8b0c0168
  %r2697.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2697 = load i64, ptr %r2697.p, align 8, !alias.scope !3, !noalias !4
  %r2698.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2698 = load i64, ptr %r2698.p, align 8, !alias.scope !3, !noalias !4
  %t2699 = add i64 %r2697, %r2698
  %wp2700 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2699, ptr %wp2700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6810 word 0xa940250a
  %r2701.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2701 = load i64, ptr %r2701.p, align 8, !alias.scope !3, !noalias !4
  %t2702 = add i64 %r2701, 8
  %gmp2703 = inttoptr i64 %r2701 to ptr
  %gml2704 = load i64, ptr %gmp2703, align 1, !alias.scope !4, !noalias !3
  %gmp2705 = inttoptr i64 %t2702 to ptr
  %gml2706 = load i64, ptr %gmp2705, align 1, !alias.scope !4, !noalias !3
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2704, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  %wp2708 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2706, ptr %wp2708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6814 word 0xcb0b012b
  %r2709.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2709 = load i64, ptr %r2709.p, align 8, !alias.scope !3, !noalias !4
  %r2710.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2710 = load i64, ptr %r2710.p, align 8, !alias.scope !3, !noalias !4
  %t2711 = sub i64 %r2709, %r2710
  %wp2712 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2711, ptr %wp2712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6818 word 0xeb1a013f
  %r2713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2713 = load i64, ptr %r2713.p, align 8, !alias.scope !3, !noalias !4
  %r2714.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2714 = load i64, ptr %r2714.p, align 8, !alias.scope !3, !noalias !4
  %t2715 = sub i64 %r2713, %r2714
  %fn2716 = icmp slt i64 %t2715, 0
  %fz2717 = icmp eq i64 %t2715, 0
  %fc2718 = icmp uge i64 %r2713, %r2714
  %fx12719 = xor i64 %r2713, %r2714
  %fx22720 = xor i64 %r2713, %t2715
  %fva2721 = and i64 %fx12719, %fx22720
  %fv2722 = icmp slt i64 %fva2721, 0
  %nz2723 = zext i1 %fn2716 to i64
  %zz2724 = zext i1 %fz2717 to i64
  %cz2725 = zext i1 %fc2718 to i64
  %vz2726 = zext i1 %fv2722 to i64
  %ns2727 = shl i64 %nz2723, 31
  %zs2728 = shl i64 %zz2724, 30
  %cs2729 = shl i64 %cz2725, 29
  %vs2730 = shl i64 %vz2726, 28
  %nzor2731 = or i64 %ns2727, %zs2728
  %cvor2732 = or i64 %cs2729, %vs2730
  %nzcv2733 = or i64 %nzor2731, %cvor2732
  %wp2734 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2733, ptr %wp2734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a681c word 0x9a8b03f6
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %r2736.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2736 = load i64, ptr %r2736.p, align 8, !alias.scope !3, !noalias !4
  %fsh2738 = lshr i64 %r2736, 30
  %cond2737 = trunc i64 %fsh2738 to i1
  %sel2739 = select i1 %cond2737, i64 0, i64 %r2735
  %wp2740 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %sel2739, ptr %wp2740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6820 word 0xb400006a
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %cmp2742 = icmp eq i64 %r2741, 0
  br i1 %cmp2742, label %L_8001a682c, label %L_8001a6824_ft
L_8001a682c:
  ; @pc 0x8001a682c word 0xb4000069
  %r2752.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2752 = load i64, ptr %r2752.p, align 8, !alias.scope !3, !noalias !4
  %cmp2753 = icmp eq i64 %r2752, 0
  br i1 %cmp2753, label %L_8001a6838, label %L_8001a6830_ft
L_8001a6838:
  ; @pc 0x8001a6838 word 0xa9007d1f
  %r2761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2761 = load i64, ptr %r2761.p, align 8, !alias.scope !3, !noalias !4
  %t2762 = add i64 %r2761, 8
  %gmp2763 = inttoptr i64 %r2761 to ptr
  store i64 0, ptr %gmp2763, align 1, !alias.scope !4, !noalias !3
  %gmp2764 = inttoptr i64 %t2762 to ptr
  store i64 0, ptr %gmp2764, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a683c word 0xcb19039b
  %r2765.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2765 = load i64, ptr %r2765.p, align 8, !alias.scope !3, !noalias !4
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %t2767 = sub i64 %r2765, %r2766
  %wp2768 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2767, ptr %wp2768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6840 word 0xb940c2a8
  %r2769.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2769 = load i64, ptr %r2769.p, align 8, !alias.scope !3, !noalias !4
  %t2770 = add i64 %r2769, 192
  %gmp2771 = inttoptr i64 %t2770 to ptr
  %gml2772 = load i32, ptr %gmp2771, align 1, !alias.scope !4, !noalias !3
  %c2773 = zext i32 %gml2772 to i64
  %wp2774 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2773, ptr %wp2774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6844 word 0xb94082a9
  %r2775.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2775 = load i64, ptr %r2775.p, align 8, !alias.scope !3, !noalias !4
  %t2776 = add i64 %r2775, 128
  %gmp2777 = inttoptr i64 %t2776 to ptr
  %gml2778 = load i32, ptr %gmp2777, align 1, !alias.scope !4, !noalias !3
  %c2779 = zext i32 %gml2778 to i64
  %wp2780 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2779, ptr %wp2780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6848 word 0x910322a0
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %t2782 = add i64 %r2781, 200
  %wp2783 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2782, ptr %wp2783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a684c word 0x51000508
  %r2784.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2784 = load i64, ptr %r2784.p, align 8, !alias.scope !3, !noalias !4
  %c2785 = trunc i64 %r2784 to i32
  %t2786 = sub i32 %c2785, 1
  %c2787 = zext i32 %t2786 to i64
  %wp2788 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2787, ptr %wp2788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6850 word 0x7100053f
  %r2789.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2789 = load i64, ptr %r2789.p, align 8, !alias.scope !3, !noalias !4
  %c2790 = trunc i64 %r2789 to i32
  %t2791 = sub i32 %c2790, 1
  %fn2792 = icmp slt i32 %t2791, 0
  %fz2793 = icmp eq i32 %t2791, 0
  %fc2794 = icmp uge i32 %c2790, 1
  %fx12795 = xor i32 %c2790, 1
  %fx22796 = xor i32 %c2790, %t2791
  %fva2797 = and i32 %fx12795, %fx22796
  %fv2798 = icmp slt i32 %fva2797, 0
  %nz2799 = zext i1 %fn2792 to i64
  %zz2800 = zext i1 %fz2793 to i64
  %cz2801 = zext i1 %fc2794 to i64
  %vz2802 = zext i1 %fv2798 to i64
  %ns2803 = shl i64 %nz2799, 31
  %zs2804 = shl i64 %zz2800, 30
  %cs2805 = shl i64 %cz2801, 29
  %vs2806 = shl i64 %vz2802, 28
  %nzor2807 = or i64 %ns2803, %zs2804
  %cvor2808 = or i64 %cs2805, %vs2806
  %nzcv2809 = or i64 %nzor2807, %cvor2808
  %wp2810 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2809, ptr %wp2810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6854 word 0xb900c2a8
  %r2811.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2811 = load i64, ptr %r2811.p, align 8, !alias.scope !3, !noalias !4
  %t2812 = add i64 %r2811, 192
  %r2813.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2813 = load i64, ptr %r2813.p, align 8, !alias.scope !3, !noalias !4
  %c2814 = trunc i64 %r2813 to i32
  %gmp2815 = inttoptr i64 %t2812 to ptr
  store i32 %c2814, ptr %gmp2815, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6858 word 0xb980dea8
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %t2817 = add i64 %r2816, 220
  %gmp2818 = inttoptr i64 %t2817 to ptr
  %gml2819 = load i32, ptr %gmp2818, align 1, !alias.scope !4, !noalias !3
  %c2820 = sext i32 %gml2819 to i64
  %wp2821 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2820, ptr %wp2821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a685c word 0x8b0c0101
  %r2822.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2822 = load i64, ptr %r2822.p, align 8, !alias.scope !3, !noalias !4
  %r2823.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2823 = load i64, ptr %r2823.p, align 8, !alias.scope !3, !noalias !4
  %t2824 = add i64 %r2822, %r2823
  %wp2825 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2824, ptr %wp2825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6860 word 0x54000681
  %r2826.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2826 = load i64, ptr %r2826.p, align 8, !alias.scope !3, !noalias !4
  %fsh2828 = lshr i64 %r2826, 30
  %ftr2829 = trunc i64 %fsh2828 to i1
  %cond2827 = xor i1 %ftr2829, true
  br i1 %cond2827, label %L_8001a6930, label %L_8001a6864_ft
L_8001a6878:
  ; @pc 0x8001a6878 word 0xb940daa8
  %r2849.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2849 = load i64, ptr %r2849.p, align 8, !alias.scope !3, !noalias !4
  %t2850 = add i64 %r2849, 216
  %gmp2851 = inttoptr i64 %t2850 to ptr
  %gml2852 = load i32, ptr %gmp2851, align 1, !alias.scope !4, !noalias !3
  %c2853 = zext i32 %gml2852 to i64
  %wp2854 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2853, ptr %wp2854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a687c word 0xf100877f
  %r2855.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2855 = load i64, ptr %r2855.p, align 8, !alias.scope !3, !noalias !4
  %t2856 = sub i64 %r2855, 33
  %fn2857 = icmp slt i64 %t2856, 0
  %fz2858 = icmp eq i64 %t2856, 0
  %fc2859 = icmp uge i64 %r2855, 33
  %fx12860 = xor i64 %r2855, 33
  %fx22861 = xor i64 %r2855, %t2856
  %fva2862 = and i64 %fx12860, %fx22861
  %fv2863 = icmp slt i64 %fva2862, 0
  %nz2864 = zext i1 %fn2857 to i64
  %zz2865 = zext i1 %fz2858 to i64
  %cz2866 = zext i1 %fc2859 to i64
  %vz2867 = zext i1 %fv2863 to i64
  %ns2868 = shl i64 %nz2864, 31
  %zs2869 = shl i64 %zz2865, 30
  %cs2870 = shl i64 %cz2866, 29
  %vs2871 = shl i64 %vz2867, 28
  %nzor2872 = or i64 %ns2868, %zs2869
  %cvor2873 = or i64 %cs2870, %vs2871
  %nzcv2874 = or i64 %nzor2872, %cvor2873
  %wp2875 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2874, ptr %wp2875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6880 word 0x11000508
  %r2876.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2876 = load i64, ptr %r2876.p, align 8, !alias.scope !3, !noalias !4
  %c2877 = trunc i64 %r2876 to i32
  %t2878 = add i32 %c2877, 1
  %c2879 = zext i32 %t2878 to i64
  %wp2880 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2879, ptr %wp2880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6884 word 0xb900daa8
  %r2881.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2881 = load i64, ptr %r2881.p, align 8, !alias.scope !3, !noalias !4
  %t2882 = add i64 %r2881, 216
  %r2883.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2883 = load i64, ptr %r2883.p, align 8, !alias.scope !3, !noalias !4
  %c2884 = trunc i64 %r2883 to i32
  %gmp2885 = inttoptr i64 %t2882 to ptr
  store i32 %c2884, ptr %gmp2885, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6888 word 0x540003e3
  %r2886.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2886 = load i64, ptr %r2886.p, align 8, !alias.scope !3, !noalias !4
  %fsh2888 = lshr i64 %r2886, 29
  %ftr2889 = trunc i64 %fsh2888 to i1
  %cond2887 = xor i1 %ftr2889, true
  br i1 %cond2887, label %L_8001a6904, label %L_8001a688c_ft
L_8001a68cc:
  ; @pc 0x8001a68cc word 0xf9000528
  %r2950.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2950 = load i64, ptr %r2950.p, align 8, !alias.scope !3, !noalias !4
  %t2951 = add i64 %r2950, 8
  %r2952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2952 = load i64, ptr %r2952.p, align 8, !alias.scope !3, !noalias !4
  %gmp2953 = inttoptr i64 %t2951 to ptr
  store i64 %r2952, ptr %gmp2953, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a68d0
L_8001a68d0:
  ; @pc 0x8001a68d0 word 0xb940c2a8
  %r2954.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2954 = load i64, ptr %r2954.p, align 8, !alias.scope !3, !noalias !4
  %t2955 = add i64 %r2954, 192
  %gmp2956 = inttoptr i64 %t2955 to ptr
  %gml2957 = load i32, ptr %gmp2956, align 1, !alias.scope !4, !noalias !3
  %c2958 = zext i32 %gml2957 to i64
  %wp2959 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2958, ptr %wp2959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68d4 word 0x11000508
  %r2960.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2960 = load i64, ptr %r2960.p, align 8, !alias.scope !3, !noalias !4
  %c2961 = trunc i64 %r2960 to i32
  %t2962 = add i32 %c2961, 1
  %c2963 = zext i32 %t2962 to i64
  %wp2964 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2963, ptr %wp2964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68d8 word 0xb900c2a8
  %r2965.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2965 = load i64, ptr %r2965.p, align 8, !alias.scope !3, !noalias !4
  %t2966 = add i64 %r2965, 192
  %r2967.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2967 = load i64, ptr %r2967.p, align 8, !alias.scope !3, !noalias !4
  %c2968 = trunc i64 %r2967 to i32
  %gmp2969 = inttoptr i64 %t2966 to ptr
  store i32 %c2968, ptr %gmp2969, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a68dc
L_8001a68dc:
  ; @pc 0x8001a68dc word 0xb940aaa8
  %r2970.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2970 = load i64, ptr %r2970.p, align 8, !alias.scope !3, !noalias !4
  %t2971 = add i64 %r2970, 168
  %gmp2972 = inttoptr i64 %t2971 to ptr
  %gml2973 = load i32, ptr %gmp2972, align 1, !alias.scope !4, !noalias !3
  %c2974 = zext i32 %gml2973 to i64
  %wp2975 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2974, ptr %wp2975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68e0 word 0x53107d08
  %r2976.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2976 = load i64, ptr %r2976.p, align 8, !alias.scope !3, !noalias !4
  %c2977 = trunc i64 %r2976 to i32
  %ror2978 = call i32 @llvm.fshr.i32(i32 %c2977, i32 %c2977, i32 16)
  %t2979 = and i32 %ror2978, 65535
  %c2980 = zext i32 %t2979 to i64
  %wp2981 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2980, ptr %wp2981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68e4 word 0x79002188
  %r2982.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2982 = load i64, ptr %r2982.p, align 8, !alias.scope !3, !noalias !4
  %t2983 = add i64 %r2982, 16
  %r2984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2984 = load i64, ptr %r2984.p, align 8, !alias.scope !3, !noalias !4
  %c2985 = trunc i64 %r2984 to i32
  %c2986 = trunc i32 %c2985 to i16
  %gmp2987 = inttoptr i64 %t2983 to ptr
  store i16 %c2986, ptr %gmp2987, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68e8 word 0x79402588
  %r2988.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2988 = load i64, ptr %r2988.p, align 8, !alias.scope !3, !noalias !4
  %t2989 = add i64 %r2988, 18
  %gmp2990 = inttoptr i64 %t2989 to ptr
  %gml2991 = load i16, ptr %gmp2990, align 1, !alias.scope !4, !noalias !3
  %c2992 = zext i16 %gml2991 to i64
  %wp2993 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2992, ptr %wp2993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68ec word 0x8b080188
  %r2994.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2994 = load i64, ptr %r2994.p, align 8, !alias.scope !3, !noalias !4
  %r2995.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2995 = load i64, ptr %r2995.p, align 8, !alias.scope !3, !noalias !4
  %t2996 = add i64 %r2994, %r2995
  %wp2997 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2996, ptr %wp2997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68f0 word 0x9100811a
  %r2998.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2998 = load i64, ptr %r2998.p, align 8, !alias.scope !3, !noalias !4
  %t2999 = add i64 %r2998, 32
  %wp3000 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2999, ptr %wp3000, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a68f4
L_8001a68f4:
  ; @pc 0x8001a68f4 word 0xb4ffc418
  %r3001.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3001 = load i64, ptr %r3001.p, align 8, !alias.scope !3, !noalias !4
  %cmp3002 = icmp eq i64 %r3001, 0
  br i1 %cmp3002, label %L_8001a6174, label %L_8001a68f8
L_8001a68f8:
  ; @pc 0x8001a68f8 word 0xaa1803e0
  %r3003.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3003 = load i64, ptr %r3003.p, align 8, !alias.scope !3, !noalias !4
  %t3004 = or i64 0, %r3003
  %wp3005 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3004, ptr %wp3005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68fc word 0x94a7f5dd
  %wp3006 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469184, ptr %wp3006, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001a6900 word 0x17fffe1d
  br label %L_8001a6174
L_8001a6904:
  ; @pc 0x8001a6904 word 0xeb19039f
  %r3007.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3007 = load i64, ptr %r3007.p, align 8, !alias.scope !3, !noalias !4
  %r3008.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3008 = load i64, ptr %r3008.p, align 8, !alias.scope !3, !noalias !4
  %t3009 = sub i64 %r3007, %r3008
  %fn3010 = icmp slt i64 %t3009, 0
  %fz3011 = icmp eq i64 %t3009, 0
  %fc3012 = icmp uge i64 %r3007, %r3008
  %fx13013 = xor i64 %r3007, %r3008
  %fx23014 = xor i64 %r3007, %t3009
  %fva3015 = and i64 %fx13013, %fx23014
  %fv3016 = icmp slt i64 %fva3015, 0
  %nz3017 = zext i1 %fn3010 to i64
  %zz3018 = zext i1 %fz3011 to i64
  %cz3019 = zext i1 %fc3012 to i64
  %vz3020 = zext i1 %fv3016 to i64
  %ns3021 = shl i64 %nz3017, 31
  %zs3022 = shl i64 %zz3018, 30
  %cs3023 = shl i64 %cz3019, 29
  %vs3024 = shl i64 %vz3020, 28
  %nzor3025 = or i64 %ns3021, %zs3022
  %cvor3026 = or i64 %cs3023, %vs3024
  %nzcv3027 = or i64 %nzor3025, %cvor3026
  %wp3028 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3027, ptr %wp3028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6908 word 0x54fffea0
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %fsh3031 = lshr i64 %r3029, 30
  %cond3030 = trunc i64 %fsh3031 to i1
  br i1 %cond3030, label %L_8001a68dc, label %L_8001a690c_ft
L_8001a6914:
  ; @pc 0x8001a6914 word 0x8b16012a
  %r3036.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3036 = load i64, ptr %r3036.p, align 8, !alias.scope !3, !noalias !4
  %r3037.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3037 = load i64, ptr %r3037.p, align 8, !alias.scope !3, !noalias !4
  %t3038 = add i64 %r3036, %r3037
  %wp3039 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3038, ptr %wp3039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6918 word 0x8b090108
  %r3040.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3040 = load i64, ptr %r3040.p, align 8, !alias.scope !3, !noalias !4
  %r3041.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3041 = load i64, ptr %r3041.p, align 8, !alias.scope !3, !noalias !4
  %t3042 = add i64 %r3040, %r3041
  %wp3043 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3042, ptr %wp3043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a691c word 0xf9400149
  %r3044.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3044 = load i64, ptr %r3044.p, align 8, !alias.scope !3, !noalias !4
  %gmp3045 = inttoptr i64 %r3044 to ptr
  %gml3046 = load i64, ptr %gmp3045, align 1, !alias.scope !4, !noalias !3
  %wp3047 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3046, ptr %wp3047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6920 word 0xf9000148
  %r3048.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3048 = load i64, ptr %r3048.p, align 8, !alias.scope !3, !noalias !4
  %r3049.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3049 = load i64, ptr %r3049.p, align 8, !alias.scope !3, !noalias !4
  %gmp3050 = inttoptr i64 %r3048 to ptr
  store i64 %r3049, ptr %gmp3050, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6924 word 0xa9002909
  %r3051.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3051 = load i64, ptr %r3051.p, align 8, !alias.scope !3, !noalias !4
  %t3052 = add i64 %r3051, 8
  %r3053.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3053 = load i64, ptr %r3053.p, align 8, !alias.scope !3, !noalias !4
  %gmp3054 = inttoptr i64 %r3051 to ptr
  store i64 %r3053, ptr %gmp3054, align 1, !alias.scope !4, !noalias !3
  %r3055.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3055 = load i64, ptr %r3055.p, align 8, !alias.scope !3, !noalias !4
  %gmp3056 = inttoptr i64 %t3052 to ptr
  store i64 %r3055, ptr %gmp3056, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6928 word 0xb5fffd29
  %r3057.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3057 = load i64, ptr %r3057.p, align 8, !alias.scope !3, !noalias !4
  %cmp3058 = icmp ne i64 %r3057, 0
  br i1 %cmp3058, label %L_8001a68cc, label %L_8001a692c_ft
L_8001a6930:
  ; @pc 0x8001a6930 word 0xf9000bec
  %r3059.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3059 = load i64, ptr %r3059.p, align 8, !alias.scope !3, !noalias !4
  %t3060 = add i64 %r3059, 16
  %r3061.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3061 = load i64, ptr %r3061.p, align 8, !alias.scope !3, !noalias !4
  %gmp3062 = inttoptr i64 %t3060 to ptr
  store i64 %r3061, ptr %gmp3062, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6934 word 0x94980cd5
  %wp3063 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469240, ptr %wp3063, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x8001a6938 word 0xf9400bec
  %r3064.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3064 = load i64, ptr %r3064.p, align 8, !alias.scope !3, !noalias !4
  %t3065 = add i64 %r3064, 16
  %gmp3066 = inttoptr i64 %t3065 to ptr
  %gml3067 = load i64, ptr %gmp3066, align 1, !alias.scope !4, !noalias !3
  %wp3068 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3067, ptr %wp3068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a693c word 0x17ffffcf
  br label %L_8001a6878
L_8001a6940:
  ; @pc 0x8001a6940 word 0x7100099f
  %r3069.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3069 = load i64, ptr %r3069.p, align 8, !alias.scope !3, !noalias !4
  %c3070 = trunc i64 %r3069 to i32
  %t3071 = sub i32 %c3070, 2
  %fn3072 = icmp slt i32 %t3071, 0
  %fz3073 = icmp eq i32 %t3071, 0
  %fc3074 = icmp uge i32 %c3070, 2
  %fx13075 = xor i32 %c3070, 2
  %fx23076 = xor i32 %c3070, %t3071
  %fva3077 = and i32 %fx13075, %fx23076
  %fv3078 = icmp slt i32 %fva3077, 0
  %nz3079 = zext i1 %fn3072 to i64
  %zz3080 = zext i1 %fz3073 to i64
  %cz3081 = zext i1 %fc3074 to i64
  %vz3082 = zext i1 %fv3078 to i64
  %ns3083 = shl i64 %nz3079, 31
  %zs3084 = shl i64 %zz3080, 30
  %cs3085 = shl i64 %cz3081, 29
  %vs3086 = shl i64 %vz3082, 28
  %nzor3087 = or i64 %ns3083, %zs3084
  %cvor3088 = or i64 %cs3085, %vs3086
  %nzcv3089 = or i64 %nzor3087, %cvor3088
  %wp3090 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3089, ptr %wp3090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6944 word 0x540002c1
  %r3091.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3091 = load i64, ptr %r3091.p, align 8, !alias.scope !3, !noalias !4
  %fsh3093 = lshr i64 %r3091, 30
  %ftr3094 = trunc i64 %fsh3093 to i1
  %cond3092 = xor i1 %ftr3094, true
  br i1 %cond3092, label %L_8001a699c, label %L_8001a6948_ft
L_8001a694c:
  ; @pc 0x8001a694c word 0xf9400d6d
  %r3097.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3097 = load i64, ptr %r3097.p, align 8, !alias.scope !3, !noalias !4
  %t3098 = add i64 %r3097, 24
  %gmp3099 = inttoptr i64 %t3098 to ptr
  %gml3100 = load i64, ptr %gmp3099, align 1, !alias.scope !4, !noalias !3
  %wp3101 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3100, ptr %wp3101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6950 word 0xeb1901bf
  %r3102.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3102 = load i64, ptr %r3102.p, align 8, !alias.scope !3, !noalias !4
  %r3103.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3103 = load i64, ptr %r3103.p, align 8, !alias.scope !3, !noalias !4
  %t3104 = sub i64 %r3102, %r3103
  %fn3105 = icmp slt i64 %t3104, 0
  %fz3106 = icmp eq i64 %t3104, 0
  %fc3107 = icmp uge i64 %r3102, %r3103
  %fx13108 = xor i64 %r3102, %r3103
  %fx23109 = xor i64 %r3102, %t3104
  %fva3110 = and i64 %fx13108, %fx23109
  %fv3111 = icmp slt i64 %fva3110, 0
  %nz3112 = zext i1 %fn3105 to i64
  %zz3113 = zext i1 %fz3106 to i64
  %cz3114 = zext i1 %fc3107 to i64
  %vz3115 = zext i1 %fv3111 to i64
  %ns3116 = shl i64 %nz3112, 31
  %zs3117 = shl i64 %zz3113, 30
  %cs3118 = shl i64 %cz3114, 29
  %vs3119 = shl i64 %vz3115, 28
  %nzor3120 = or i64 %ns3116, %zs3117
  %cvor3121 = or i64 %cs3118, %vs3119
  %nzcv3122 = or i64 %nzor3120, %cvor3121
  %wp3123 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3122, ptr %wp3123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6954 word 0x540000c3
  %r3124.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3124 = load i64, ptr %r3124.p, align 8, !alias.scope !3, !noalias !4
  %fsh3126 = lshr i64 %r3124, 29
  %ftr3127 = trunc i64 %fsh3126 to i1
  %cond3125 = xor i1 %ftr3127, true
  br i1 %cond3125, label %L_8001a696c, label %L_8001a6958_ft
L_8001a6968:
  ; @pc 0x8001a6968 word 0xaa0b03ec
  %r3160.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3160 = load i64, ptr %r3160.p, align 8, !alias.scope !3, !noalias !4
  %t3161 = or i64 0, %r3160
  %wp3162 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3161, ptr %wp3162, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a696c
L_8001a696c:
  ; @pc 0x8001a696c word 0x8b09016b
  %r3163.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3163 = load i64, ptr %r3163.p, align 8, !alias.scope !3, !noalias !4
  %r3164.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3164 = load i64, ptr %r3164.p, align 8, !alias.scope !3, !noalias !4
  %t3165 = add i64 %r3163, %r3164
  %wp3166 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3165, ptr %wp3166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6970 word 0xf940056b
  %r3167.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3167 = load i64, ptr %r3167.p, align 8, !alias.scope !3, !noalias !4
  %t3168 = add i64 %r3167, 8
  %gmp3169 = inttoptr i64 %t3168 to ptr
  %gml3170 = load i64, ptr %gmp3169, align 1, !alias.scope !4, !noalias !3
  %wp3171 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3170, ptr %wp3171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6974 word 0x8b08016b
  %r3172.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3172 = load i64, ptr %r3172.p, align 8, !alias.scope !3, !noalias !4
  %r3173.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3173 = load i64, ptr %r3173.p, align 8, !alias.scope !3, !noalias !4
  %t3174 = add i64 %r3172, %r3173
  %wp3175 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3174, ptr %wp3175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6978 word 0xeb0a017f
  %r3176.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3176 = load i64, ptr %r3176.p, align 8, !alias.scope !3, !noalias !4
  %r3177.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3177 = load i64, ptr %r3177.p, align 8, !alias.scope !3, !noalias !4
  %t3178 = sub i64 %r3176, %r3177
  %fn3179 = icmp slt i64 %t3178, 0
  %fz3180 = icmp eq i64 %t3178, 0
  %fc3181 = icmp uge i64 %r3176, %r3177
  %fx13182 = xor i64 %r3176, %r3177
  %fx23183 = xor i64 %r3176, %t3178
  %fva3184 = and i64 %fx13182, %fx23183
  %fv3185 = icmp slt i64 %fva3184, 0
  %nz3186 = zext i1 %fn3179 to i64
  %zz3187 = zext i1 %fz3180 to i64
  %cz3188 = zext i1 %fc3181 to i64
  %vz3189 = zext i1 %fv3185 to i64
  %ns3190 = shl i64 %nz3186, 31
  %zs3191 = shl i64 %zz3187, 30
  %cs3192 = shl i64 %cz3188, 29
  %vs3193 = shl i64 %vz3189, 28
  %nzor3194 = or i64 %ns3190, %zs3191
  %cvor3195 = or i64 %cs3192, %vs3193
  %nzcv3196 = or i64 %nzor3194, %cvor3195
  %wp3197 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3196, ptr %wp3197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a697c word 0x54fffe81
  %r3198.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3198 = load i64, ptr %r3198.p, align 8, !alias.scope !3, !noalias !4
  %fsh3200 = lshr i64 %r3198, 30
  %ftr3201 = trunc i64 %fsh3200 to i1
  %cond3199 = xor i1 %ftr3201, true
  br i1 %cond3199, label %L_8001a694c, label %L_8001a6980_ft
L_8001a6984:
  ; @pc 0x8001a6984 word 0x8b090108
  %r3202.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3202 = load i64, ptr %r3202.p, align 8, !alias.scope !3, !noalias !4
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %t3204 = add i64 %r3202, %r3203
  %wp3205 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3204, ptr %wp3205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6988 word 0xf9400349
  %r3206.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3206 = load i64, ptr %r3206.p, align 8, !alias.scope !3, !noalias !4
  %gmp3207 = inttoptr i64 %r3206 to ptr
  %gml3208 = load i64, ptr %gmp3207, align 1, !alias.scope !4, !noalias !3
  %wp3209 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3208, ptr %wp3209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a698c word 0xf9000348
  %r3210.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3210 = load i64, ptr %r3210.p, align 8, !alias.scope !3, !noalias !4
  %r3211.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3211 = load i64, ptr %r3211.p, align 8, !alias.scope !3, !noalias !4
  %gmp3212 = inttoptr i64 %r3210 to ptr
  store i64 %r3211, ptr %gmp3212, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6990 word 0xa9006909
  %r3213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3213 = load i64, ptr %r3213.p, align 8, !alias.scope !3, !noalias !4
  %t3214 = add i64 %r3213, 8
  %r3215.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3215 = load i64, ptr %r3215.p, align 8, !alias.scope !3, !noalias !4
  %gmp3216 = inttoptr i64 %r3213 to ptr
  store i64 %r3215, ptr %gmp3216, align 1, !alias.scope !4, !noalias !3
  %r3217.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3217 = load i64, ptr %r3217.p, align 8, !alias.scope !3, !noalias !4
  %gmp3218 = inttoptr i64 %t3214 to ptr
  store i64 %r3217, ptr %gmp3218, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6994 word 0xb5fff049
  %r3219.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3219 = load i64, ptr %r3219.p, align 8, !alias.scope !3, !noalias !4
  %cmp3220 = icmp ne i64 %r3219, 0
  br i1 %cmp3220, label %L_8001a679c, label %L_8001a6998_ft
L_8001a699c:
  ; @pc 0x8001a699c word 0xaa1f03ec
  %t3221 = or i64 0, 0
  %wp3222 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3221, ptr %wp3222, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a69a0
L_8001a69a0:
  ; @pc 0x8001a69a0 word 0xf100019f
  %r3223.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3223 = load i64, ptr %r3223.p, align 8, !alias.scope !3, !noalias !4
  %t3224 = sub i64 %r3223, 0
  %fn3225 = icmp slt i64 %t3224, 0
  %fz3226 = icmp eq i64 %t3224, 0
  %fc3227 = icmp uge i64 %r3223, 0
  %fx13228 = xor i64 %r3223, 0
  %fx23229 = xor i64 %r3223, %t3224
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
  ; @pc 0x8001a69a4 word 0xf9400d6d
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %t3245 = add i64 %r3244, 24
  %gmp3246 = inttoptr i64 %t3245 to ptr
  %gml3247 = load i64, ptr %gmp3246, align 1, !alias.scope !4, !noalias !3
  %wp3248 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3247, ptr %wp3248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69a8 word 0x9a8c016e
  %r3249.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3249 = load i64, ptr %r3249.p, align 8, !alias.scope !3, !noalias !4
  %r3250.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3250 = load i64, ptr %r3250.p, align 8, !alias.scope !3, !noalias !4
  %r3251.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3251 = load i64, ptr %r3251.p, align 8, !alias.scope !3, !noalias !4
  %fsh3253 = lshr i64 %r3251, 30
  %cond3252 = trunc i64 %fsh3253 to i1
  %sel3254 = select i1 %cond3252, i64 %r3249, i64 %r3250
  %wp3255 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %sel3254, ptr %wp3255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69ac word 0x8b09016b
  %r3256.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3256 = load i64, ptr %r3256.p, align 8, !alias.scope !3, !noalias !4
  %r3257.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3257 = load i64, ptr %r3257.p, align 8, !alias.scope !3, !noalias !4
  %t3258 = add i64 %r3256, %r3257
  %wp3259 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3258, ptr %wp3259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69b0 word 0xf940056b
  %r3260.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3260 = load i64, ptr %r3260.p, align 8, !alias.scope !3, !noalias !4
  %t3261 = add i64 %r3260, 8
  %gmp3262 = inttoptr i64 %t3261 to ptr
  %gml3263 = load i64, ptr %gmp3262, align 1, !alias.scope !4, !noalias !3
  %wp3264 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3263, ptr %wp3264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69b4 word 0xeb1901bf
  %r3265.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3265 = load i64, ptr %r3265.p, align 8, !alias.scope !3, !noalias !4
  %r3266.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3266 = load i64, ptr %r3266.p, align 8, !alias.scope !3, !noalias !4
  %t3267 = sub i64 %r3265, %r3266
  %fn3268 = icmp slt i64 %t3267, 0
  %fz3269 = icmp eq i64 %t3267, 0
  %fc3270 = icmp uge i64 %r3265, %r3266
  %fx13271 = xor i64 %r3265, %r3266
  %fx23272 = xor i64 %r3265, %t3267
  %fva3273 = and i64 %fx13271, %fx23272
  %fv3274 = icmp slt i64 %fva3273, 0
  %nz3275 = zext i1 %fn3268 to i64
  %zz3276 = zext i1 %fz3269 to i64
  %cz3277 = zext i1 %fc3270 to i64
  %vz3278 = zext i1 %fv3274 to i64
  %ns3279 = shl i64 %nz3275, 31
  %zs3280 = shl i64 %zz3276, 30
  %cs3281 = shl i64 %cz3277, 29
  %vs3282 = shl i64 %vz3278, 28
  %nzor3283 = or i64 %ns3279, %zs3280
  %cvor3284 = or i64 %cs3281, %vs3282
  %nzcv3285 = or i64 %nzor3283, %cvor3284
  %wp3286 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3285, ptr %wp3286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69b8 word 0x9a8e318c
  %r3287.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3287 = load i64, ptr %r3287.p, align 8, !alias.scope !3, !noalias !4
  %r3288.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3288 = load i64, ptr %r3288.p, align 8, !alias.scope !3, !noalias !4
  %r3289.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3289 = load i64, ptr %r3289.p, align 8, !alias.scope !3, !noalias !4
  %fsh3291 = lshr i64 %r3289, 29
  %ftr3292 = trunc i64 %fsh3291 to i1
  %cond3290 = xor i1 %ftr3292, true
  %sel3293 = select i1 %cond3290, i64 %r3287, i64 %r3288
  %wp3294 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %sel3293, ptr %wp3294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69bc word 0x8b08016b
  %r3295.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3295 = load i64, ptr %r3295.p, align 8, !alias.scope !3, !noalias !4
  %r3296.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3296 = load i64, ptr %r3296.p, align 8, !alias.scope !3, !noalias !4
  %t3297 = add i64 %r3295, %r3296
  %wp3298 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3297, ptr %wp3298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69c0 word 0xeb0a017f
  %r3299.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3299 = load i64, ptr %r3299.p, align 8, !alias.scope !3, !noalias !4
  %r3300.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3300 = load i64, ptr %r3300.p, align 8, !alias.scope !3, !noalias !4
  %t3301 = sub i64 %r3299, %r3300
  %fn3302 = icmp slt i64 %t3301, 0
  %fz3303 = icmp eq i64 %t3301, 0
  %fc3304 = icmp uge i64 %r3299, %r3300
  %fx13305 = xor i64 %r3299, %r3300
  %fx23306 = xor i64 %r3299, %t3301
  %fva3307 = and i64 %fx13305, %fx23306
  %fv3308 = icmp slt i64 %fva3307, 0
  %nz3309 = zext i1 %fn3302 to i64
  %zz3310 = zext i1 %fz3303 to i64
  %cz3311 = zext i1 %fc3304 to i64
  %vz3312 = zext i1 %fv3308 to i64
  %ns3313 = shl i64 %nz3309, 31
  %zs3314 = shl i64 %zz3310, 30
  %cs3315 = shl i64 %cz3311, 29
  %vs3316 = shl i64 %vz3312, 28
  %nzor3317 = or i64 %ns3313, %zs3314
  %cvor3318 = or i64 %cs3315, %vs3316
  %nzcv3319 = or i64 %nzor3317, %cvor3318
  %wp3320 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3319, ptr %wp3320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69c4 word 0x54fffee1
  %r3321.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3321 = load i64, ptr %r3321.p, align 8, !alias.scope !3, !noalias !4
  %fsh3323 = lshr i64 %r3321, 30
  %ftr3324 = trunc i64 %fsh3323 to i1
  %cond3322 = xor i1 %ftr3324, true
  br i1 %cond3322, label %L_8001a69a0, label %L_8001a69c8_ft
L_8001a69cc:
  ; @pc 0x8001a69cc word 0xeb17039f
  %r3325.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3325 = load i64, ptr %r3325.p, align 8, !alias.scope !3, !noalias !4
  %r3326.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3326 = load i64, ptr %r3326.p, align 8, !alias.scope !3, !noalias !4
  %t3327 = sub i64 %r3325, %r3326
  %fn3328 = icmp slt i64 %t3327, 0
  %fz3329 = icmp eq i64 %t3327, 0
  %fc3330 = icmp uge i64 %r3325, %r3326
  %fx13331 = xor i64 %r3325, %r3326
  %fx23332 = xor i64 %r3325, %t3327
  %fva3333 = and i64 %fx13331, %fx23332
  %fv3334 = icmp slt i64 %fva3333, 0
  %nz3335 = zext i1 %fn3328 to i64
  %zz3336 = zext i1 %fz3329 to i64
  %cz3337 = zext i1 %fc3330 to i64
  %vz3338 = zext i1 %fv3334 to i64
  %ns3339 = shl i64 %nz3335, 31
  %zs3340 = shl i64 %zz3336, 30
  %cs3341 = shl i64 %cz3337, 29
  %vs3342 = shl i64 %vz3338, 28
  %nzor3343 = or i64 %ns3339, %zs3340
  %cvor3344 = or i64 %cs3341, %vs3342
  %nzcv3345 = or i64 %nzor3343, %cvor3344
  %wp3346 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3345, ptr %wp3346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69d0 word 0x54ffeee0
  %r3347.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3347 = load i64, ptr %r3347.p, align 8, !alias.scope !3, !noalias !4
  %fsh3349 = lshr i64 %r3347, 30
  %cond3348 = trunc i64 %fsh3349 to i1
  br i1 %cond3348, label %L_8001a67ac, label %L_8001a69d4_ft
L_8001a69e4:
  ; @pc 0x8001a69e4 word 0xeb1b039f
  %r3363.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3363 = load i64, ptr %r3363.p, align 8, !alias.scope !3, !noalias !4
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %t3365 = sub i64 %r3363, %r3364
  %fn3366 = icmp slt i64 %t3365, 0
  %fz3367 = icmp eq i64 %t3365, 0
  %fc3368 = icmp uge i64 %r3363, %r3364
  %fx13369 = xor i64 %r3363, %r3364
  %fx23370 = xor i64 %r3363, %t3365
  %fva3371 = and i64 %fx13369, %fx23370
  %fv3372 = icmp slt i64 %fva3371, 0
  %nz3373 = zext i1 %fn3366 to i64
  %zz3374 = zext i1 %fz3367 to i64
  %cz3375 = zext i1 %fc3368 to i64
  %vz3376 = zext i1 %fv3372 to i64
  %ns3377 = shl i64 %nz3373, 31
  %zs3378 = shl i64 %zz3374, 30
  %cs3379 = shl i64 %cz3375, 29
  %vs3380 = shl i64 %vz3376, 28
  %nzor3381 = or i64 %ns3377, %zs3378
  %cvor3382 = or i64 %cs3379, %vs3380
  %nzcv3383 = or i64 %nzor3381, %cvor3382
  %wp3384 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3383, ptr %wp3384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69e8 word 0x54ffd5e2
  %r3385.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3385 = load i64, ptr %r3385.p, align 8, !alias.scope !3, !noalias !4
  %fsh3387 = lshr i64 %r3385, 29
  %cond3386 = trunc i64 %fsh3387 to i1
  br i1 %cond3386, label %L_8001a64a4, label %L_8001a69ec_ft
L_8001a6a30:
  ; @pc 0x8001a6a30 word 0xaa1f03f9
  %t3477 = or i64 0, 0
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3477, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a34 word 0x17fffe62
  br label %L_8001a63bc
L_8001a6a38:
  ; @pc 0x8001a6a38 word 0xb4ffda1b
  %r3479.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3479 = load i64, ptr %r3479.p, align 8, !alias.scope !3, !noalias !4
  %cmp3480 = icmp eq i64 %r3479, 0
  br i1 %cmp3480, label %L_8001a6578, label %L_8001a6a3c_ft
L_8001a6a58:
  ; @pc 0x8001a6a58 word 0xb9400be2
  %r3509.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3509 = load i64, ptr %r3509.p, align 8, !alias.scope !3, !noalias !4
  %t3510 = add i64 %r3509, 8
  %gmp3511 = inttoptr i64 %t3510 to ptr
  %gml3512 = load i32, ptr %gmp3511, align 1, !alias.scope !4, !noalias !3
  %c3513 = zext i32 %gml3512 to i64
  %wp3514 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3513, ptr %wp3514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a5c word 0x97ff5861
  %wp3515 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469536, ptr %wp3515, align 8, !alias.scope !3, !noalias !4
  call void @f_80017cbe0(ptr %c)
  ; @pc 0x8001a6a60 word 0x17fffee3
  br label %L_8001a65ec
L_8001a6a64:
  ; @pc 0x8001a6a64 word 0xf9400be9
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %t3517 = add i64 %r3516, 16
  %gmp3518 = inttoptr i64 %t3517 to ptr
  %gml3519 = load i64, ptr %gmp3518, align 1, !alias.scope !4, !noalias !3
  %wp3520 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3519, ptr %wp3520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a68 word 0xd100810a
  %r3521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3521 = load i64, ptr %r3521.p, align 8, !alias.scope !3, !noalias !4
  %t3522 = sub i64 %r3521, 32
  %wp3523 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3522, ptr %wp3523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a6c word 0x7900253f
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %t3525 = add i64 %r3524, 18
  %c3526 = trunc i32 0 to i16
  %gmp3527 = inttoptr i64 %t3525 to ptr
  store i16 %c3526, ptr %gmp3527, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a70 word 0xf9000d2a
  %r3528.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3528 = load i64, ptr %r3528.p, align 8, !alias.scope !3, !noalias !4
  %t3529 = add i64 %r3528, 24
  %r3530.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3530 = load i64, ptr %r3530.p, align 8, !alias.scope !3, !noalias !4
  %gmp3531 = inttoptr i64 %t3529 to ptr
  store i64 %r3530, ptr %gmp3531, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a74 word 0x8b090109
  %r3532.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3532 = load i64, ptr %r3532.p, align 8, !alias.scope !3, !noalias !4
  %r3533.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3533 = load i64, ptr %r3533.p, align 8, !alias.scope !3, !noalias !4
  %t3534 = add i64 %r3532, %r3533
  %wp3535 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3534, ptr %wp3535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a78 word 0xb900113f
  %r3536.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3536 = load i64, ptr %r3536.p, align 8, !alias.scope !3, !noalias !4
  %t3537 = add i64 %r3536, 16
  %gmp3538 = inttoptr i64 %t3537 to ptr
  store i32 0, ptr %gmp3538, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a7c word 0xa9007d3f
  %r3539.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3539 = load i64, ptr %r3539.p, align 8, !alias.scope !3, !noalias !4
  %t3540 = add i64 %r3539, 8
  %gmp3541 = inttoptr i64 %r3539 to ptr
  store i64 0, ptr %gmp3541, align 1, !alias.scope !4, !noalias !3
  %gmp3542 = inttoptr i64 %t3540 to ptr
  store i64 0, ptr %gmp3542, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a80 word 0xf9000be9
  %r3543.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3543 = load i64, ptr %r3543.p, align 8, !alias.scope !3, !noalias !4
  %t3544 = add i64 %r3543, 16
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %gmp3546 = inttoptr i64 %t3544 to ptr
  store i64 %r3545, ptr %gmp3546, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a84 word 0xf9000d39
  %r3547.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3547 = load i64, ptr %r3547.p, align 8, !alias.scope !3, !noalias !4
  %t3548 = add i64 %r3547, 24
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %gmp3550 = inttoptr i64 %t3548 to ptr
  store i64 %r3549, ptr %gmp3550, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a88 word 0x17ffff20
  br label %L_8001a6708
L_8001a6a8c:
  ; @pc 0x8001a6a8c word 0xb9400be8
  %r3551.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3551 = load i64, ptr %r3551.p, align 8, !alias.scope !3, !noalias !4
  %t3552 = add i64 %r3551, 8
  %gmp3553 = inttoptr i64 %t3552 to ptr
  %gml3554 = load i32, ptr %gmp3553, align 1, !alias.scope !4, !noalias !3
  %c3555 = zext i32 %gml3554 to i64
  %wp3556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3555, ptr %wp3556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a90 word 0xa901dff5
  %r3557.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3557 = load i64, ptr %r3557.p, align 8, !alias.scope !3, !noalias !4
  %t3558 = add i64 %r3557, 24
  %t3559 = add i64 %t3558, 8
  %r3560.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3560 = load i64, ptr %r3560.p, align 8, !alias.scope !3, !noalias !4
  %gmp3561 = inttoptr i64 %t3558 to ptr
  store i64 %r3560, ptr %gmp3561, align 1, !alias.scope !4, !noalias !3
  %r3562.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3562 = load i64, ptr %r3562.p, align 8, !alias.scope !3, !noalias !4
  %gmp3563 = inttoptr i64 %t3559 to ptr
  store i64 %r3562, ptr %gmp3563, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a94 word 0x910063e1
  %r3564.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3564 = load i64, ptr %r3564.p, align 8, !alias.scope !3, !noalias !4
  %t3565 = add i64 %r3564, 24
  %wp3566 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3565, ptr %wp3566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a98 word 0xb9002bf6
  %r3567.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3567 = load i64, ptr %r3567.p, align 8, !alias.scope !3, !noalias !4
  %t3568 = add i64 %r3567, 40
  %r3569.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3569 = load i64, ptr %r3569.p, align 8, !alias.scope !3, !noalias !4
  %c3570 = trunc i64 %r3569 to i32
  %gmp3571 = inttoptr i64 %t3568 to ptr
  store i32 %c3570, ptr %gmp3571, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a9c word 0xf9001bf9
  %r3572.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3572 = load i64, ptr %r3572.p, align 8, !alias.scope !3, !noalias !4
  %t3573 = add i64 %r3572, 48
  %r3574.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3574 = load i64, ptr %r3574.p, align 8, !alias.scope !3, !noalias !4
  %gmp3575 = inttoptr i64 %t3573 to ptr
  store i64 %r3574, ptr %gmp3575, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6aa0 word 0xb9003be8
  %r3576.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3576 = load i64, ptr %r3576.p, align 8, !alias.scope !3, !noalias !4
  %t3577 = add i64 %r3576, 56
  %r3578.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3578 = load i64, ptr %r3578.p, align 8, !alias.scope !3, !noalias !4
  %c3579 = trunc i64 %r3578 to i32
  %gmp3580 = inttoptr i64 %t3577 to ptr
  store i32 %c3579, ptr %gmp3580, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6aa4 word 0xf9400008
  %r3581.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3581 = load i64, ptr %r3581.p, align 8, !alias.scope !3, !noalias !4
  %gmp3582 = inttoptr i64 %r3581 to ptr
  %gml3583 = load i64, ptr %gmp3582, align 1, !alias.scope !4, !noalias !3
  %wp3584 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3583, ptr %wp3584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6aa8 word 0xf9400108
  %r3585.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3585 = load i64, ptr %r3585.p, align 8, !alias.scope !3, !noalias !4
  %gmp3586 = inttoptr i64 %r3585 to ptr
  %gml3587 = load i64, ptr %gmp3586, align 1, !alias.scope !4, !noalias !3
  %wp3588 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3587, ptr %wp3588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6aac word 0xd63f0100
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %fp3590 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3589, ptr %fp3590, align 8, !alias.scope !3, !noalias !4
  %wp3591 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469616, ptr %wp3591, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a6ab0 word 0x17fffe0b
  br label %L_8001a62dc
L_8001a6ab4:
  ; @pc 0x8001a6ab4 word 0x710005df
  %r3592.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3592 = load i64, ptr %r3592.p, align 8, !alias.scope !3, !noalias !4
  %c3593 = trunc i64 %r3592 to i32
  %t3594 = sub i32 %c3593, 1
  %fn3595 = icmp slt i32 %t3594, 0
  %fz3596 = icmp eq i32 %t3594, 0
  %fc3597 = icmp uge i32 %c3593, 1
  %fx13598 = xor i32 %c3593, 1
  %fx23599 = xor i32 %c3593, %t3594
  %fva3600 = and i32 %fx13598, %fx23599
  %fv3601 = icmp slt i32 %fva3600, 0
  %nz3602 = zext i1 %fn3595 to i64
  %zz3603 = zext i1 %fz3596 to i64
  %cz3604 = zext i1 %fc3597 to i64
  %vz3605 = zext i1 %fv3601 to i64
  %ns3606 = shl i64 %nz3602, 31
  %zs3607 = shl i64 %zz3603, 30
  %cs3608 = shl i64 %cz3604, 29
  %vs3609 = shl i64 %vz3605, 28
  %nzor3610 = or i64 %ns3606, %zs3607
  %cvor3611 = or i64 %cs3608, %vs3609
  %nzcv3612 = or i64 %nzor3610, %cvor3611
  %wp3613 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3612, ptr %wp3613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ab8 word 0x540003c1
  %r3614.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3614 = load i64, ptr %r3614.p, align 8, !alias.scope !3, !noalias !4
  %fsh3616 = lshr i64 %r3614, 30
  %ftr3617 = trunc i64 %fsh3616 to i1
  %cond3615 = xor i1 %ftr3617, true
  br i1 %cond3615, label %L_8001a6b30, label %L_8001a6abc_ft
L_8001a6ac0:
  ; @pc 0x8001a6ac0 word 0xf9400d6e
  %r3621.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3621 = load i64, ptr %r3621.p, align 8, !alias.scope !3, !noalias !4
  %t3622 = add i64 %r3621, 24
  %gmp3623 = inttoptr i64 %t3622 to ptr
  %gml3624 = load i64, ptr %gmp3623, align 1, !alias.scope !4, !noalias !3
  %wp3625 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3624, ptr %wp3625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ac4 word 0xeb1901df
  %r3626.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3626 = load i64, ptr %r3626.p, align 8, !alias.scope !3, !noalias !4
  %r3627.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3627 = load i64, ptr %r3627.p, align 8, !alias.scope !3, !noalias !4
  %t3628 = sub i64 %r3626, %r3627
  %fn3629 = icmp slt i64 %t3628, 0
  %fz3630 = icmp eq i64 %t3628, 0
  %fc3631 = icmp uge i64 %r3626, %r3627
  %fx13632 = xor i64 %r3626, %r3627
  %fx23633 = xor i64 %r3626, %t3628
  %fva3634 = and i64 %fx13632, %fx23633
  %fv3635 = icmp slt i64 %fva3634, 0
  %nz3636 = zext i1 %fn3629 to i64
  %zz3637 = zext i1 %fz3630 to i64
  %cz3638 = zext i1 %fc3631 to i64
  %vz3639 = zext i1 %fv3635 to i64
  %ns3640 = shl i64 %nz3636, 31
  %zs3641 = shl i64 %zz3637, 30
  %cs3642 = shl i64 %cz3638, 29
  %vs3643 = shl i64 %vz3639, 28
  %nzor3644 = or i64 %ns3640, %zs3641
  %cvor3645 = or i64 %cs3642, %vs3643
  %nzcv3646 = or i64 %nzor3644, %cvor3645
  %wp3647 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3646, ptr %wp3647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ac8 word 0x540000e2
  %r3648.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3648 = load i64, ptr %r3648.p, align 8, !alias.scope !3, !noalias !4
  %fsh3650 = lshr i64 %r3648, 29
  %cond3649 = trunc i64 %fsh3650 to i1
  br i1 %cond3649, label %L_8001a6ae4, label %L_8001a6acc
L_8001a6acc:
  ; @pc 0x8001a6acc word 0x8b09016b
  %r3651.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3651 = load i64, ptr %r3651.p, align 8, !alias.scope !3, !noalias !4
  %r3652.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3652 = load i64, ptr %r3652.p, align 8, !alias.scope !3, !noalias !4
  %t3653 = add i64 %r3651, %r3652
  %wp3654 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3653, ptr %wp3654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ad0 word 0xf940056b
  %r3655.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3655 = load i64, ptr %r3655.p, align 8, !alias.scope !3, !noalias !4
  %t3656 = add i64 %r3655, 8
  %gmp3657 = inttoptr i64 %t3656 to ptr
  %gml3658 = load i64, ptr %gmp3657, align 1, !alias.scope !4, !noalias !3
  %wp3659 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3658, ptr %wp3659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ad4 word 0x8b08016b
  %r3660.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3660 = load i64, ptr %r3660.p, align 8, !alias.scope !3, !noalias !4
  %r3661.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3661 = load i64, ptr %r3661.p, align 8, !alias.scope !3, !noalias !4
  %t3662 = add i64 %r3660, %r3661
  %wp3663 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3662, ptr %wp3663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ad8 word 0xeb0a017f
  %r3664.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3664 = load i64, ptr %r3664.p, align 8, !alias.scope !3, !noalias !4
  %r3665.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3665 = load i64, ptr %r3665.p, align 8, !alias.scope !3, !noalias !4
  %t3666 = sub i64 %r3664, %r3665
  %fn3667 = icmp slt i64 %t3666, 0
  %fz3668 = icmp eq i64 %t3666, 0
  %fc3669 = icmp uge i64 %r3664, %r3665
  %fx13670 = xor i64 %r3664, %r3665
  %fx23671 = xor i64 %r3664, %t3666
  %fva3672 = and i64 %fx13670, %fx23671
  %fv3673 = icmp slt i64 %fva3672, 0
  %nz3674 = zext i1 %fn3667 to i64
  %zz3675 = zext i1 %fz3668 to i64
  %cz3676 = zext i1 %fc3669 to i64
  %vz3677 = zext i1 %fv3673 to i64
  %ns3678 = shl i64 %nz3674, 31
  %zs3679 = shl i64 %zz3675, 30
  %cs3680 = shl i64 %cz3676, 29
  %vs3681 = shl i64 %vz3677, 28
  %nzor3682 = or i64 %ns3678, %zs3679
  %cvor3683 = or i64 %cs3680, %vs3681
  %nzcv3684 = or i64 %nzor3682, %cvor3683
  %wp3685 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3684, ptr %wp3685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6adc word 0x54ffff21
  %r3686.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3686 = load i64, ptr %r3686.p, align 8, !alias.scope !3, !noalias !4
  %fsh3688 = lshr i64 %r3686, 30
  %ftr3689 = trunc i64 %fsh3688 to i1
  %cond3687 = xor i1 %ftr3689, true
  br i1 %cond3687, label %L_8001a6ac0, label %L_8001a6ae0_ft
L_8001a6ae4:
  ; @pc 0x8001a6ae4 word 0x7940256f
  %r3690.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3690 = load i64, ptr %r3690.p, align 8, !alias.scope !3, !noalias !4
  %t3691 = add i64 %r3690, 18
  %gmp3692 = inttoptr i64 %t3691 to ptr
  %gml3693 = load i16, ptr %gmp3692, align 1, !alias.scope !4, !noalias !3
  %c3694 = zext i16 %gml3693 to i64
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3694, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ae8 word 0x8b0f016f
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %r3697.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3697 = load i64, ptr %r3697.p, align 8, !alias.scope !3, !noalias !4
  %t3698 = add i64 %r3696, %r3697
  %wp3699 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3698, ptr %wp3699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6aec word 0x910081ef
  %r3700.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3700 = load i64, ptr %r3700.p, align 8, !alias.scope !3, !noalias !4
  %t3701 = add i64 %r3700, 32
  %wp3702 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3701, ptr %wp3702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6af0 word 0x8b0c01f0
  %r3703.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3703 = load i64, ptr %r3703.p, align 8, !alias.scope !3, !noalias !4
  %r3704.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3704 = load i64, ptr %r3704.p, align 8, !alias.scope !3, !noalias !4
  %t3705 = add i64 %r3703, %r3704
  %wp3706 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3705, ptr %wp3706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6af4 word 0xcb0f032f
  %r3707.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3707 = load i64, ptr %r3707.p, align 8, !alias.scope !3, !noalias !4
  %r3708.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3708 = load i64, ptr %r3708.p, align 8, !alias.scope !3, !noalias !4
  %t3709 = sub i64 %r3707, %r3708
  %wp3710 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3709, ptr %wp3710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6af8 word 0x8a0d0210
  %r3711.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3711 = load i64, ptr %r3711.p, align 8, !alias.scope !3, !noalias !4
  %r3712.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3712 = load i64, ptr %r3712.p, align 8, !alias.scope !3, !noalias !4
  %t3713 = and i64 %r3712, %r3711
  %wp3714 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3713, ptr %wp3714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6afc word 0x8b1001ef
  %r3715.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3715 = load i64, ptr %r3715.p, align 8, !alias.scope !3, !noalias !4
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = add i64 %r3715, %r3716
  %wp3718 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3717, ptr %wp3718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b00 word 0xeb0f01df
  %r3719.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3719 = load i64, ptr %r3719.p, align 8, !alias.scope !3, !noalias !4
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3720 = load i64, ptr %r3720.p, align 8, !alias.scope !3, !noalias !4
  %t3721 = sub i64 %r3719, %r3720
  %fn3722 = icmp slt i64 %t3721, 0
  %fz3723 = icmp eq i64 %t3721, 0
  %fc3724 = icmp uge i64 %r3719, %r3720
  %fx13725 = xor i64 %r3719, %r3720
  %fx23726 = xor i64 %r3719, %t3721
  %fva3727 = and i64 %fx13725, %fx23726
  %fv3728 = icmp slt i64 %fva3727, 0
  %nz3729 = zext i1 %fn3722 to i64
  %zz3730 = zext i1 %fz3723 to i64
  %cz3731 = zext i1 %fc3724 to i64
  %vz3732 = zext i1 %fv3728 to i64
  %ns3733 = shl i64 %nz3729, 31
  %zs3734 = shl i64 %zz3730, 30
  %cs3735 = shl i64 %cz3731, 29
  %vs3736 = shl i64 %vz3732, 28
  %nzor3737 = or i64 %ns3733, %zs3734
  %cvor3738 = or i64 %cs3735, %vs3736
  %nzcv3739 = or i64 %nzor3737, %cvor3738
  %wp3740 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3739, ptr %wp3740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b04 word 0x54fffe43
  %r3741.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3741 = load i64, ptr %r3741.p, align 8, !alias.scope !3, !noalias !4
  %fsh3743 = lshr i64 %r3741, 29
  %ftr3744 = trunc i64 %fsh3743 to i1
  %cond3742 = xor i1 %ftr3744, true
  br i1 %cond3742, label %L_8001a6acc, label %L_8001a6b08_ft
L_8001a6b20:
  ; @pc 0x8001a6b20 word 0xf9000beb
  %r3792.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3792 = load i64, ptr %r3792.p, align 8, !alias.scope !3, !noalias !4
  %t3793 = add i64 %r3792, 16
  %r3794.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3794 = load i64, ptr %r3794.p, align 8, !alias.scope !3, !noalias !4
  %gmp3795 = inttoptr i64 %t3793 to ptr
  store i64 %r3794, ptr %gmp3795, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6b24 word 0x17ffffea
  br label %L_8001a6acc
L_8001a6b28:
  ; @pc 0x8001a6b28 word 0x94980c58
  %wp3796 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469740, ptr %wp3796, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x8001a6b2c word 0x17ffff04
  br label %L_8001a673c
L_8001a6b30:
  ; @pc 0x8001a6b30 word 0x710009df
  %r3797.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3797 = load i64, ptr %r3797.p, align 8, !alias.scope !3, !noalias !4
  %c3798 = trunc i64 %r3797 to i32
  %t3799 = sub i32 %c3798, 2
  %fn3800 = icmp slt i32 %t3799, 0
  %fz3801 = icmp eq i32 %t3799, 0
  %fc3802 = icmp uge i32 %c3798, 2
  %fx13803 = xor i32 %c3798, 2
  %fx23804 = xor i32 %c3798, %t3799
  %fva3805 = and i32 %fx13803, %fx23804
  %fv3806 = icmp slt i32 %fva3805, 0
  %nz3807 = zext i1 %fn3800 to i64
  %zz3808 = zext i1 %fz3801 to i64
  %cz3809 = zext i1 %fc3802 to i64
  %vz3810 = zext i1 %fv3806 to i64
  %ns3811 = shl i64 %nz3807, 31
  %zs3812 = shl i64 %zz3808, 30
  %cs3813 = shl i64 %cz3809, 29
  %vs3814 = shl i64 %vz3810, 28
  %nzor3815 = or i64 %ns3811, %zs3812
  %cvor3816 = or i64 %cs3813, %vs3814
  %nzcv3817 = or i64 %nzor3815, %cvor3816
  %wp3818 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3817, ptr %wp3818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b34 word 0x54000381
  %r3819.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3819 = load i64, ptr %r3819.p, align 8, !alias.scope !3, !noalias !4
  %fsh3821 = lshr i64 %r3819, 30
  %ftr3822 = trunc i64 %fsh3821 to i1
  %cond3820 = xor i1 %ftr3822, true
  br i1 %cond3820, label %L_8001a6ba4, label %L_8001a6b38_ft
L_8001a6b3c:
  ; @pc 0x8001a6b3c word 0xf9400d6e
  %r3826.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3826 = load i64, ptr %r3826.p, align 8, !alias.scope !3, !noalias !4
  %t3827 = add i64 %r3826, 24
  %gmp3828 = inttoptr i64 %t3827 to ptr
  %gml3829 = load i64, ptr %gmp3828, align 1, !alias.scope !4, !noalias !3
  %wp3830 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3829, ptr %wp3830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b40 word 0xeb1901df
  %r3831.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3831 = load i64, ptr %r3831.p, align 8, !alias.scope !3, !noalias !4
  %r3832.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3832 = load i64, ptr %r3832.p, align 8, !alias.scope !3, !noalias !4
  %t3833 = sub i64 %r3831, %r3832
  %fn3834 = icmp slt i64 %t3833, 0
  %fz3835 = icmp eq i64 %t3833, 0
  %fc3836 = icmp uge i64 %r3831, %r3832
  %fx13837 = xor i64 %r3831, %r3832
  %fx23838 = xor i64 %r3831, %t3833
  %fva3839 = and i64 %fx13837, %fx23838
  %fv3840 = icmp slt i64 %fva3839, 0
  %nz3841 = zext i1 %fn3834 to i64
  %zz3842 = zext i1 %fz3835 to i64
  %cz3843 = zext i1 %fc3836 to i64
  %vz3844 = zext i1 %fv3840 to i64
  %ns3845 = shl i64 %nz3841, 31
  %zs3846 = shl i64 %zz3842, 30
  %cs3847 = shl i64 %cz3843, 29
  %vs3848 = shl i64 %vz3844, 28
  %nzor3849 = or i64 %ns3845, %zs3846
  %cvor3850 = or i64 %cs3847, %vs3848
  %nzcv3851 = or i64 %nzor3849, %cvor3850
  %wp3852 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3851, ptr %wp3852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b44 word 0x540000e2
  %r3853.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3853 = load i64, ptr %r3853.p, align 8, !alias.scope !3, !noalias !4
  %fsh3855 = lshr i64 %r3853, 29
  %cond3854 = trunc i64 %fsh3855 to i1
  br i1 %cond3854, label %L_8001a6b60, label %L_8001a6b48
L_8001a6b48:
  ; @pc 0x8001a6b48 word 0x8b09016b
  %r3856.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3856 = load i64, ptr %r3856.p, align 8, !alias.scope !3, !noalias !4
  %r3857.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3857 = load i64, ptr %r3857.p, align 8, !alias.scope !3, !noalias !4
  %t3858 = add i64 %r3856, %r3857
  %wp3859 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3858, ptr %wp3859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b4c word 0xf940056b
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %t3861 = add i64 %r3860, 8
  %gmp3862 = inttoptr i64 %t3861 to ptr
  %gml3863 = load i64, ptr %gmp3862, align 1, !alias.scope !4, !noalias !3
  %wp3864 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3863, ptr %wp3864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b50 word 0x8b08016b
  %r3865.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3865 = load i64, ptr %r3865.p, align 8, !alias.scope !3, !noalias !4
  %r3866.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3866 = load i64, ptr %r3866.p, align 8, !alias.scope !3, !noalias !4
  %t3867 = add i64 %r3865, %r3866
  %wp3868 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3867, ptr %wp3868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b54 word 0xeb0a017f
  %r3869.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3869 = load i64, ptr %r3869.p, align 8, !alias.scope !3, !noalias !4
  %r3870.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3870 = load i64, ptr %r3870.p, align 8, !alias.scope !3, !noalias !4
  %t3871 = sub i64 %r3869, %r3870
  %fn3872 = icmp slt i64 %t3871, 0
  %fz3873 = icmp eq i64 %t3871, 0
  %fc3874 = icmp uge i64 %r3869, %r3870
  %fx13875 = xor i64 %r3869, %r3870
  %fx23876 = xor i64 %r3869, %t3871
  %fva3877 = and i64 %fx13875, %fx23876
  %fv3878 = icmp slt i64 %fva3877, 0
  %nz3879 = zext i1 %fn3872 to i64
  %zz3880 = zext i1 %fz3873 to i64
  %cz3881 = zext i1 %fc3874 to i64
  %vz3882 = zext i1 %fv3878 to i64
  %ns3883 = shl i64 %nz3879, 31
  %zs3884 = shl i64 %zz3880, 30
  %cs3885 = shl i64 %cz3881, 29
  %vs3886 = shl i64 %vz3882, 28
  %nzor3887 = or i64 %ns3883, %zs3884
  %cvor3888 = or i64 %cs3885, %vs3886
  %nzcv3889 = or i64 %nzor3887, %cvor3888
  %wp3890 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3889, ptr %wp3890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b58 word 0x54ffff21
  %r3891.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3891 = load i64, ptr %r3891.p, align 8, !alias.scope !3, !noalias !4
  %fsh3893 = lshr i64 %r3891, 30
  %ftr3894 = trunc i64 %fsh3893 to i1
  %cond3892 = xor i1 %ftr3894, true
  br i1 %cond3892, label %L_8001a6b3c, label %L_8001a6b5c_ft
L_8001a6b60:
  ; @pc 0x8001a6b60 word 0x7940256f
  %r3895.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3895 = load i64, ptr %r3895.p, align 8, !alias.scope !3, !noalias !4
  %t3896 = add i64 %r3895, 18
  %gmp3897 = inttoptr i64 %t3896 to ptr
  %gml3898 = load i16, ptr %gmp3897, align 1, !alias.scope !4, !noalias !3
  %c3899 = zext i16 %gml3898 to i64
  %wp3900 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3899, ptr %wp3900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b64 word 0x8b0f016f
  %r3901.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3901 = load i64, ptr %r3901.p, align 8, !alias.scope !3, !noalias !4
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %t3903 = add i64 %r3901, %r3902
  %wp3904 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3903, ptr %wp3904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b68 word 0x910081ef
  %r3905.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3905 = load i64, ptr %r3905.p, align 8, !alias.scope !3, !noalias !4
  %t3906 = add i64 %r3905, 32
  %wp3907 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3906, ptr %wp3907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b6c word 0x8b0c01f0
  %r3908.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3908 = load i64, ptr %r3908.p, align 8, !alias.scope !3, !noalias !4
  %r3909.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3909 = load i64, ptr %r3909.p, align 8, !alias.scope !3, !noalias !4
  %t3910 = add i64 %r3908, %r3909
  %wp3911 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3910, ptr %wp3911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b70 word 0xcb0f032f
  %r3912.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3912 = load i64, ptr %r3912.p, align 8, !alias.scope !3, !noalias !4
  %r3913.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3913 = load i64, ptr %r3913.p, align 8, !alias.scope !3, !noalias !4
  %t3914 = sub i64 %r3912, %r3913
  %wp3915 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3914, ptr %wp3915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b74 word 0x8a0d0210
  %r3916.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3916 = load i64, ptr %r3916.p, align 8, !alias.scope !3, !noalias !4
  %r3917.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3917 = load i64, ptr %r3917.p, align 8, !alias.scope !3, !noalias !4
  %t3918 = and i64 %r3917, %r3916
  %wp3919 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3918, ptr %wp3919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b78 word 0x8b1001ef
  %r3920.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3920 = load i64, ptr %r3920.p, align 8, !alias.scope !3, !noalias !4
  %r3921.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3921 = load i64, ptr %r3921.p, align 8, !alias.scope !3, !noalias !4
  %t3922 = add i64 %r3920, %r3921
  %wp3923 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3922, ptr %wp3923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b7c word 0xeb0f01df
  %r3924.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3924 = load i64, ptr %r3924.p, align 8, !alias.scope !3, !noalias !4
  %r3925.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3925 = load i64, ptr %r3925.p, align 8, !alias.scope !3, !noalias !4
  %t3926 = sub i64 %r3924, %r3925
  %fn3927 = icmp slt i64 %t3926, 0
  %fz3928 = icmp eq i64 %t3926, 0
  %fc3929 = icmp uge i64 %r3924, %r3925
  %fx13930 = xor i64 %r3924, %r3925
  %fx23931 = xor i64 %r3924, %t3926
  %fva3932 = and i64 %fx13930, %fx23931
  %fv3933 = icmp slt i64 %fva3932, 0
  %nz3934 = zext i1 %fn3927 to i64
  %zz3935 = zext i1 %fz3928 to i64
  %cz3936 = zext i1 %fc3929 to i64
  %vz3937 = zext i1 %fv3933 to i64
  %ns3938 = shl i64 %nz3934, 31
  %zs3939 = shl i64 %zz3935, 30
  %cs3940 = shl i64 %cz3936, 29
  %vs3941 = shl i64 %vz3937, 28
  %nzor3942 = or i64 %ns3938, %zs3939
  %cvor3943 = or i64 %cs3940, %vs3941
  %nzcv3944 = or i64 %nzor3942, %cvor3943
  %wp3945 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3944, ptr %wp3945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b80 word 0x54fffe43
  %r3946.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3946 = load i64, ptr %r3946.p, align 8, !alias.scope !3, !noalias !4
  %fsh3948 = lshr i64 %r3946, 29
  %ftr3949 = trunc i64 %fsh3948 to i1
  %cond3947 = xor i1 %ftr3949, true
  br i1 %cond3947, label %L_8001a6b48, label %L_8001a6b84_ft
L_8001a6b9c:
  ; @pc 0x8001a6b9c word 0xf9000beb
  %r3992.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3992 = load i64, ptr %r3992.p, align 8, !alias.scope !3, !noalias !4
  %t3993 = add i64 %r3992, 16
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %gmp3995 = inttoptr i64 %t3993 to ptr
  store i64 %r3994, ptr %gmp3995, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6ba0 word 0x17ffffea
  br label %L_8001a6b48
L_8001a6ba4:
  ; @pc 0x8001a6ba4 word 0xf9000bff
  %r3996.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3996 = load i64, ptr %r3996.p, align 8, !alias.scope !3, !noalias !4
  %t3997 = add i64 %r3996, 16
  %gmp3998 = inttoptr i64 %t3997 to ptr
  store i64 0, ptr %gmp3998, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6ba8
L_8001a6ba8:
  ; @pc 0x8001a6ba8 word 0xf9400d6e
  %r3999.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3999 = load i64, ptr %r3999.p, align 8, !alias.scope !3, !noalias !4
  %t4000 = add i64 %r3999, 24
  %gmp4001 = inttoptr i64 %t4000 to ptr
  %gml4002 = load i64, ptr %gmp4001, align 1, !alias.scope !4, !noalias !3
  %wp4003 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4002, ptr %wp4003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bac word 0xeb1901df
  %r4004.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4004 = load i64, ptr %r4004.p, align 8, !alias.scope !3, !noalias !4
  %r4005.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4005 = load i64, ptr %r4005.p, align 8, !alias.scope !3, !noalias !4
  %t4006 = sub i64 %r4004, %r4005
  %fn4007 = icmp slt i64 %t4006, 0
  %fz4008 = icmp eq i64 %t4006, 0
  %fc4009 = icmp uge i64 %r4004, %r4005
  %fx14010 = xor i64 %r4004, %r4005
  %fx24011 = xor i64 %r4004, %t4006
  %fva4012 = and i64 %fx14010, %fx24011
  %fv4013 = icmp slt i64 %fva4012, 0
  %nz4014 = zext i1 %fn4007 to i64
  %zz4015 = zext i1 %fz4008 to i64
  %cz4016 = zext i1 %fc4009 to i64
  %vz4017 = zext i1 %fv4013 to i64
  %ns4018 = shl i64 %nz4014, 31
  %zs4019 = shl i64 %zz4015, 30
  %cs4020 = shl i64 %cz4016, 29
  %vs4021 = shl i64 %vz4017, 28
  %nzor4022 = or i64 %ns4018, %zs4019
  %cvor4023 = or i64 %cs4020, %vs4021
  %nzcv4024 = or i64 %nzor4022, %cvor4023
  %wp4025 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4024, ptr %wp4025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bb0 word 0x540001c3
  %r4026.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4026 = load i64, ptr %r4026.p, align 8, !alias.scope !3, !noalias !4
  %fsh4028 = lshr i64 %r4026, 29
  %ftr4029 = trunc i64 %fsh4028 to i1
  %cond4027 = xor i1 %ftr4029, true
  br i1 %cond4027, label %L_8001a6be8, label %L_8001a6bb4_ft
L_8001a6be8:
  ; @pc 0x8001a6be8 word 0x8b09016b
  %r4126.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4126 = load i64, ptr %r4126.p, align 8, !alias.scope !3, !noalias !4
  %r4127.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4127 = load i64, ptr %r4127.p, align 8, !alias.scope !3, !noalias !4
  %t4128 = add i64 %r4126, %r4127
  %wp4129 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4128, ptr %wp4129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bec word 0xf940056b
  %r4130.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4130 = load i64, ptr %r4130.p, align 8, !alias.scope !3, !noalias !4
  %t4131 = add i64 %r4130, 8
  %gmp4132 = inttoptr i64 %t4131 to ptr
  %gml4133 = load i64, ptr %gmp4132, align 1, !alias.scope !4, !noalias !3
  %wp4134 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4133, ptr %wp4134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bf0 word 0x8b08016b
  %r4135.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4135 = load i64, ptr %r4135.p, align 8, !alias.scope !3, !noalias !4
  %r4136.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4136 = load i64, ptr %r4136.p, align 8, !alias.scope !3, !noalias !4
  %t4137 = add i64 %r4135, %r4136
  %wp4138 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4137, ptr %wp4138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bf4 word 0xeb0a017f
  %r4139.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4139 = load i64, ptr %r4139.p, align 8, !alias.scope !3, !noalias !4
  %r4140.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4140 = load i64, ptr %r4140.p, align 8, !alias.scope !3, !noalias !4
  %t4141 = sub i64 %r4139, %r4140
  %fn4142 = icmp slt i64 %t4141, 0
  %fz4143 = icmp eq i64 %t4141, 0
  %fc4144 = icmp uge i64 %r4139, %r4140
  %fx14145 = xor i64 %r4139, %r4140
  %fx24146 = xor i64 %r4139, %t4141
  %fva4147 = and i64 %fx14145, %fx24146
  %fv4148 = icmp slt i64 %fva4147, 0
  %nz4149 = zext i1 %fn4142 to i64
  %zz4150 = zext i1 %fz4143 to i64
  %cz4151 = zext i1 %fc4144 to i64
  %vz4152 = zext i1 %fv4148 to i64
  %ns4153 = shl i64 %nz4149, 31
  %zs4154 = shl i64 %zz4150, 30
  %cs4155 = shl i64 %cz4151, 29
  %vs4156 = shl i64 %vz4152, 28
  %nzor4157 = or i64 %ns4153, %zs4154
  %cvor4158 = or i64 %cs4155, %vs4156
  %nzcv4159 = or i64 %nzor4157, %cvor4158
  %wp4160 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4159, ptr %wp4160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bf8 word 0x54fffd81
  %r4161.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4161 = load i64, ptr %r4161.p, align 8, !alias.scope !3, !noalias !4
  %fsh4163 = lshr i64 %r4161, 30
  %ftr4164 = trunc i64 %fsh4163 to i1
  %cond4162 = xor i1 %ftr4164, true
  br i1 %cond4162, label %L_8001a6ba8, label %L_8001a6bfc
L_8001a6bfc:
  ; @pc 0x8001a6bfc word 0xf9400bea
  %r4165.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4165 = load i64, ptr %r4165.p, align 8, !alias.scope !3, !noalias !4
  %t4166 = add i64 %r4165, 16
  %gmp4167 = inttoptr i64 %t4166 to ptr
  %gml4168 = load i64, ptr %gmp4167, align 1, !alias.scope !4, !noalias !3
  %wp4169 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4168, ptr %wp4169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c00 word 0xb4ffb68a
  %r4170.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4170 = load i64, ptr %r4170.p, align 8, !alias.scope !3, !noalias !4
  %cmp4171 = icmp eq i64 %r4170, 0
  br i1 %cmp4171, label %L_8001a62d0, label %L_8001a6c04_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361467028, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001a6094
L_8001a609c_ft:
  ; @pc 0x8001a609c word 0xd10283ff
  %r33.p = getelementptr inbounds i8, ptr %c, i64 256
  %r33 = load i64, ptr %r33.p, align 8, !alias.scope !3, !noalias !4
  %t34 = sub i64 %r33, 160
  %wp35 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t34, ptr %wp35, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60a0 word 0xa9047bfd
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 64
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 232
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 240
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a60a4 word 0xa9056ffc
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 80
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 224
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 216
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a60a8 word 0xa90667fa
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 96
  %t52 = add i64 %t51, 8
  %r53.p = getelementptr inbounds i8, ptr %c, i64 208
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %gmp54 = inttoptr i64 %t51 to ptr
  store i64 %r53, ptr %gmp54, align 1, !alias.scope !4, !noalias !3
  %r55.p = getelementptr inbounds i8, ptr %c, i64 200
  %r55 = load i64, ptr %r55.p, align 8, !alias.scope !3, !noalias !4
  %gmp56 = inttoptr i64 %t52 to ptr
  store i64 %r55, ptr %gmp56, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a60ac word 0xa9075ff8
  %r57.p = getelementptr inbounds i8, ptr %c, i64 256
  %r57 = load i64, ptr %r57.p, align 8, !alias.scope !3, !noalias !4
  %t58 = add i64 %r57, 112
  %t59 = add i64 %t58, 8
  %r60.p = getelementptr inbounds i8, ptr %c, i64 192
  %r60 = load i64, ptr %r60.p, align 8, !alias.scope !3, !noalias !4
  %gmp61 = inttoptr i64 %t58 to ptr
  store i64 %r60, ptr %gmp61, align 1, !alias.scope !4, !noalias !3
  %r62.p = getelementptr inbounds i8, ptr %c, i64 184
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %gmp63 = inttoptr i64 %t59 to ptr
  store i64 %r62, ptr %gmp63, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a60b0 word 0xa90857f6
  %r64.p = getelementptr inbounds i8, ptr %c, i64 256
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = add i64 %r64, 128
  %t66 = add i64 %t65, 8
  %r67.p = getelementptr inbounds i8, ptr %c, i64 176
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %gmp68 = inttoptr i64 %t65 to ptr
  store i64 %r67, ptr %gmp68, align 1, !alias.scope !4, !noalias !3
  %r69.p = getelementptr inbounds i8, ptr %c, i64 168
  %r69 = load i64, ptr %r69.p, align 8, !alias.scope !3, !noalias !4
  %gmp70 = inttoptr i64 %t66 to ptr
  store i64 %r69, ptr %gmp70, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a60b4 word 0xa9094ff4
  %r71.p = getelementptr inbounds i8, ptr %c, i64 256
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %t72 = add i64 %r71, 144
  %t73 = add i64 %t72, 8
  %r74.p = getelementptr inbounds i8, ptr %c, i64 160
  %r74 = load i64, ptr %r74.p, align 8, !alias.scope !3, !noalias !4
  %gmp75 = inttoptr i64 %t72 to ptr
  store i64 %r74, ptr %gmp75, align 1, !alias.scope !4, !noalias !3
  %r76.p = getelementptr inbounds i8, ptr %c, i64 152
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %gmp77 = inttoptr i64 %t73 to ptr
  store i64 %r76, ptr %gmp77, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a60b8 word 0x910103fd
  %r78.p = getelementptr inbounds i8, ptr %c, i64 256
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %t79 = add i64 %r78, 64
  %wp80 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60bc word 0xb001bd3a
  %wp81 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34419814400, ptr %wp81, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60c0 word 0x531d7028
  %r82.p = getelementptr inbounds i8, ptr %c, i64 8
  %r82 = load i64, ptr %r82.p, align 8, !alias.scope !3, !noalias !4
  %c83 = trunc i64 %r82 to i32
  %ror84 = call i32 @llvm.fshr.i32(i32 %c83, i32 %c83, i32 29)
  %t85 = and i32 %ror84, -8
  %c86 = zext i32 %t85 to i64
  %wp87 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c86, ptr %wp87, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60c4 word 0xf945435a
  %r88.p = getelementptr inbounds i8, ptr %c, i64 208
  %r88 = load i64, ptr %r88.p, align 8, !alias.scope !3, !noalias !4
  %t89 = add i64 %r88, 2688
  %gmp90 = inttoptr i64 %t89 to ptr
  %gml91 = load i64, ptr %gmp90, align 1, !alias.scope !4, !noalias !3
  %wp92 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml91, ptr %wp92, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60c8 word 0x2a0303f6
  %r93.p = getelementptr inbounds i8, ptr %c, i64 24
  %r93 = load i64, ptr %r93.p, align 8, !alias.scope !3, !noalias !4
  %c94 = trunc i64 %r93 to i32
  %t95 = or i32 0, %c94
  %c96 = zext i32 %t95 to i64
  %wp97 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c96, ptr %wp97, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60cc word 0x2a0103f3
  %r98.p = getelementptr inbounds i8, ptr %c, i64 8
  %r98 = load i64, ptr %r98.p, align 8, !alias.scope !3, !noalias !4
  %c99 = trunc i64 %r98 to i32
  %t100 = or i32 0, %c99
  %c101 = zext i32 %t100 to i64
  %wp102 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c101, ptr %wp102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60d0 word 0xf9400358
  %r103.p = getelementptr inbounds i8, ptr %c, i64 208
  %r103 = load i64, ptr %r103.p, align 8, !alias.scope !3, !noalias !4
  %gmp104 = inttoptr i64 %r103 to ptr
  %gml105 = load i64, ptr %gmp104, align 1, !alias.scope !4, !noalias !3
  %wp106 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml105, ptr %wp106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60d4 word 0xaa0003f4
  %r107.p = getelementptr inbounds i8, ptr %c, i64 0
  %r107 = load i64, ptr %r107.p, align 8, !alias.scope !3, !noalias !4
  %t108 = or i64 0, %r107
  %wp109 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t108, ptr %wp109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60d8 word 0x93407d17
  %r110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %t111 = lshr i64 %r110, 31
  %t112 = and i64 %t111, 1
  %t113 = sub i64 0, %t112
  %t114 = and i64 %t113, -4294967296
  %t115 = and i64 %r110, 4294967295
  %t116 = or i64 %t114, %t115
  %wp117 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60dc word 0xb4001c78
  %r118.p = getelementptr inbounds i8, ptr %c, i64 192
  %r118 = load i64, ptr %r118.p, align 8, !alias.scope !3, !noalias !4
  %cmp119 = icmp eq i64 %r118, 0
  br i1 %cmp119, label %L_8001a6468, label %L_8001a60e0_ft
L_8001a60e0_ft:
  ; @pc 0x8001a60e0 word 0xaa0203f5
  %r120.p = getelementptr inbounds i8, ptr %c, i64 16
  %r120 = load i64, ptr %r120.p, align 8, !alias.scope !3, !noalias !4
  %t121 = or i64 0, %r120
  %wp122 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a60e4 word 0xb4001102
  %r123.p = getelementptr inbounds i8, ptr %c, i64 16
  %r123 = load i64, ptr %r123.p, align 8, !alias.scope !3, !noalias !4
  %cmp124 = icmp eq i64 %r123, 0
  br i1 %cmp124, label %L_8001a6304, label %L_8001a60e8
L_8001a6100_ft:
  ; @pc 0x8001a6100 word 0xb940aaa8
  %r166.p = getelementptr inbounds i8, ptr %c, i64 168
  %r166 = load i64, ptr %r166.p, align 8, !alias.scope !3, !noalias !4
  %t167 = add i64 %r166, 168
  %gmp168 = inttoptr i64 %t167 to ptr
  %gml169 = load i32, ptr %gmp168, align 1, !alias.scope !4, !noalias !3
  %c170 = zext i32 %gml169 to i64
  %wp171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c170, ptr %wp171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6104 word 0x910222b9
  %r172.p = getelementptr inbounds i8, ptr %c, i64 168
  %r172 = load i64, ptr %r172.p, align 8, !alias.scope !3, !noalias !4
  %t173 = add i64 %r172, 136
  %wp174 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t173, ptr %wp174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6108 word 0x37001d28
  %r175.p = getelementptr inbounds i8, ptr %c, i64 64
  %r175 = load i64, ptr %r175.p, align 8, !alias.scope !3, !noalias !4
  %t176 = and i64 %r175, 1
  %cmp177 = icmp ne i64 %t176, 0
  br i1 %cmp177, label %L_8001a64ac, label %L_8001a610c_ft
L_8001a610c_ft:
  ; @pc 0x8001a610c word 0xaa1f03f8
  %t178 = or i64 0, 0
  %wp179 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t178, ptr %wp179, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6110
L_8001a6134_ft:
  ; @pc 0x8001a6134 word 0xb94082aa
  %r274.p = getelementptr inbounds i8, ptr %c, i64 168
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %t275 = add i64 %r274, 128
  %gmp276 = inttoptr i64 %t275 to ptr
  %gml277 = load i32, ptr %gmp276, align 1, !alias.scope !4, !noalias !3
  %c278 = zext i32 %gml277 to i64
  %wp279 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c278, ptr %wp279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6138 word 0x1b167d4a
  %r280.p = getelementptr inbounds i8, ptr %c, i64 176
  %r280 = load i64, ptr %r280.p, align 8, !alias.scope !3, !noalias !4
  %c281 = trunc i64 %r280 to i32
  %r282.p = getelementptr inbounds i8, ptr %c, i64 80
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %c283 = trunc i64 %r282 to i32
  %t284 = mul i32 %c283, %c281
  %t285 = add i32 0, %t284
  %c286 = zext i32 %t285 to i64
  %wp287 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c286, ptr %wp287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a613c word 0x37f81c0a
  %r288.p = getelementptr inbounds i8, ptr %c, i64 80
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %t289 = and i64 %r288, 2147483648
  %cmp290 = icmp ne i64 %t289, 0
  br i1 %cmp290, label %L_8001a64bc, label %L_8001a6140_ft
L_8001a6140_ft:
  ; @pc 0x8001a6140 word 0xf9405aab
  %r291.p = getelementptr inbounds i8, ptr %c, i64 168
  %r291 = load i64, ptr %r291.p, align 8, !alias.scope !3, !noalias !4
  %t292 = add i64 %r291, 176
  %gmp293 = inttoptr i64 %t292 to ptr
  %gml294 = load i64, ptr %gmp293, align 1, !alias.scope !4, !noalias !3
  %wp295 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml294, ptr %wp295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6144 word 0x5100054c
  %r296.p = getelementptr inbounds i8, ptr %c, i64 80
  %r296 = load i64, ptr %r296.p, align 8, !alias.scope !3, !noalias !4
  %c297 = trunc i64 %r296 to i32
  %t298 = sub i32 %c297, 1
  %c299 = zext i32 %t298 to i64
  %wp300 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c299, ptr %wp300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6148 word 0x8b0c016b
  %r301.p = getelementptr inbounds i8, ptr %c, i64 88
  %r301 = load i64, ptr %r301.p, align 8, !alias.scope !3, !noalias !4
  %r302.p = getelementptr inbounds i8, ptr %c, i64 96
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %t303 = add i64 %r301, %r302
  %wp304 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t303, ptr %wp304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a614c word 0x8a2c017a
  %r305.p = getelementptr inbounds i8, ptr %c, i64 96
  %r305 = load i64, ptr %r305.p, align 8, !alias.scope !3, !noalias !4
  %t306 = xor i64 %r305, -1
  %r307.p = getelementptr inbounds i8, ptr %c, i64 88
  %r307 = load i64, ptr %r307.p, align 8, !alias.scope !3, !noalias !4
  %t308 = and i64 %r307, %t306
  %wp309 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t308, ptr %wp309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6150 word 0x8b1b034b
  %r310.p = getelementptr inbounds i8, ptr %c, i64 208
  %r310 = load i64, ptr %r310.p, align 8, !alias.scope !3, !noalias !4
  %r311.p = getelementptr inbounds i8, ptr %c, i64 216
  %r311 = load i64, ptr %r311.p, align 8, !alias.scope !3, !noalias !4
  %t312 = add i64 %r310, %r311
  %wp313 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t312, ptr %wp313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6154 word 0xeb1a017f
  %r314.p = getelementptr inbounds i8, ptr %c, i64 88
  %r314 = load i64, ptr %r314.p, align 8, !alias.scope !3, !noalias !4
  %r315.p = getelementptr inbounds i8, ptr %c, i64 208
  %r315 = load i64, ptr %r315.p, align 8, !alias.scope !3, !noalias !4
  %t316 = sub i64 %r314, %r315
  %fn317 = icmp slt i64 %t316, 0
  %fz318 = icmp eq i64 %t316, 0
  %fc319 = icmp uge i64 %r314, %r315
  %fx1320 = xor i64 %r314, %r315
  %fx2321 = xor i64 %r314, %t316
  %fva322 = and i64 %fx1320, %fx2321
  %fv323 = icmp slt i64 %fva322, 0
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
  ; @pc 0x8001a6158 word 0x54000ee3
  %r336.p = getelementptr inbounds i8, ptr %c, i64 272
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %fsh338 = lshr i64 %r336, 29
  %ftr339 = trunc i64 %fsh338 to i1
  %cond337 = xor i1 %ftr339, true
  br i1 %cond337, label %L_8001a6334, label %L_8001a615c_ft
L_8001a615c_ft:
  ; @pc 0x8001a615c word 0xf9405eac
  %r340.p = getelementptr inbounds i8, ptr %c, i64 168
  %r340 = load i64, ptr %r340.p, align 8, !alias.scope !3, !noalias !4
  %t341 = add i64 %r340, 184
  %gmp342 = inttoptr i64 %t341 to ptr
  %gml343 = load i64, ptr %gmp342, align 1, !alias.scope !4, !noalias !3
  %wp344 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml343, ptr %wp344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6160 word 0xeb0b019f
  %r345.p = getelementptr inbounds i8, ptr %c, i64 96
  %r345 = load i64, ptr %r345.p, align 8, !alias.scope !3, !noalias !4
  %r346.p = getelementptr inbounds i8, ptr %c, i64 88
  %r346 = load i64, ptr %r346.p, align 8, !alias.scope !3, !noalias !4
  %t347 = sub i64 %r345, %r346
  %fn348 = icmp slt i64 %t347, 0
  %fz349 = icmp eq i64 %t347, 0
  %fc350 = icmp uge i64 %r345, %r346
  %fx1351 = xor i64 %r345, %r346
  %fx2352 = xor i64 %r345, %t347
  %fva353 = and i64 %fx1351, %fx2352
  %fv354 = icmp slt i64 %fva353, 0
  %nz355 = zext i1 %fn348 to i64
  %zz356 = zext i1 %fz349 to i64
  %cz357 = zext i1 %fc350 to i64
  %vz358 = zext i1 %fv354 to i64
  %ns359 = shl i64 %nz355, 31
  %zs360 = shl i64 %zz356, 30
  %cs361 = shl i64 %cz357, 29
  %vs362 = shl i64 %vz358, 28
  %nzor363 = or i64 %ns359, %zs360
  %cvor364 = or i64 %cs361, %vs362
  %nzcv365 = or i64 %nzor363, %cvor364
  %wp366 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv365, ptr %wp366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6164 word 0x54000e83
  %r367.p = getelementptr inbounds i8, ptr %c, i64 272
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %fsh369 = lshr i64 %r367, 29
  %ftr370 = trunc i64 %fsh369 to i1
  %cond368 = xor i1 %ftr370, true
  br i1 %cond368, label %L_8001a6334, label %L_8001a6168_ft
L_8001a6168_ft:
  ; @pc 0x8001a6168 word 0xf9005aab
  %r371.p = getelementptr inbounds i8, ptr %c, i64 168
  %r371 = load i64, ptr %r371.p, align 8, !alias.scope !3, !noalias !4
  %t372 = add i64 %r371, 176
  %r373.p = getelementptr inbounds i8, ptr %c, i64 88
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %gmp374 = inttoptr i64 %t372 to ptr
  store i64 %r373, ptr %gmp374, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a616c
L_8001a6178_ft:
  ; @pc 0x8001a6178 word 0xf900069a
  %r381.p = getelementptr inbounds i8, ptr %c, i64 160
  %r381 = load i64, ptr %r381.p, align 8, !alias.scope !3, !noalias !4
  %t382 = add i64 %r381, 8
  %r383.p = getelementptr inbounds i8, ptr %c, i64 208
  %r383 = load i64, ptr %r383.p, align 8, !alias.scope !3, !noalias !4
  %gmp384 = inttoptr i64 %t382 to ptr
  store i64 %r383, ptr %gmp384, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a617c word 0x29004e9f
  %r385.p = getelementptr inbounds i8, ptr %c, i64 160
  %r385 = load i64, ptr %r385.p, align 8, !alias.scope !3, !noalias !4
  %t386 = add i64 %r385, 4
  %gmp387 = inttoptr i64 %r385 to ptr
  store i32 0, ptr %gmp387, align 1, !alias.scope !4, !noalias !3
  %r388.p = getelementptr inbounds i8, ptr %c, i64 152
  %r388 = load i64, ptr %r388.p, align 8, !alias.scope !3, !noalias !4
  %c389 = trunc i64 %r388 to i32
  %gmp390 = inttoptr i64 %t386 to ptr
  store i32 %c389, ptr %gmp390, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6180
L_8001a61b0_ft:
  ; @pc 0x8001a61b0 word 0xf10022ff
  %r475.p = getelementptr inbounds i8, ptr %c, i64 184
  %r475 = load i64, ptr %r475.p, align 8, !alias.scope !3, !noalias !4
  %t476 = sub i64 %r475, 8
  %fn477 = icmp slt i64 %t476, 0
  %fz478 = icmp eq i64 %t476, 0
  %fc479 = icmp uge i64 %r475, 8
  %fx1480 = xor i64 %r475, 8
  %fx2481 = xor i64 %r475, %t476
  %fva482 = and i64 %fx1480, %fx2481
  %fv483 = icmp slt i64 %fva482, 0
  %nz484 = zext i1 %fn477 to i64
  %zz485 = zext i1 %fz478 to i64
  %cz486 = zext i1 %fc479 to i64
  %vz487 = zext i1 %fv483 to i64
  %ns488 = shl i64 %nz484, 31
  %zs489 = shl i64 %zz485, 30
  %cs490 = shl i64 %cz486, 29
  %vs491 = shl i64 %vz487, 28
  %nzor492 = or i64 %ns488, %zs489
  %cvor493 = or i64 %cs490, %vs491
  %nzcv494 = or i64 %nzor492, %cvor493
  %wp495 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv494, ptr %wp495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61b4 word 0x52800108
  %c496 = zext i32 8 to i64
  %wp497 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c496, ptr %wp497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61b8 word 0xf940035b
  %r498.p = getelementptr inbounds i8, ptr %c, i64 208
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %gmp499 = inttoptr i64 %r498 to ptr
  %gml500 = load i64, ptr %gmp499, align 1, !alias.scope !4, !noalias !3
  %wp501 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml500, ptr %wp501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61bc word 0x9a8882f9
  %r502.p = getelementptr inbounds i8, ptr %c, i64 184
  %r502 = load i64, ptr %r502.p, align 8, !alias.scope !3, !noalias !4
  %r503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r503 = load i64, ptr %r503.p, align 8, !alias.scope !3, !noalias !4
  %r504.p = getelementptr inbounds i8, ptr %c, i64 272
  %r504 = load i64, ptr %r504.p, align 8, !alias.scope !3, !noalias !4
  %fsh506 = lshr i64 %r504, 29
  %ftr507 = trunc i64 %fsh506 to i1
  %fsh508 = lshr i64 %r504, 30
  %ftr509 = trunc i64 %fsh508 to i1
  %fnz510 = xor i1 %ftr509, true
  %cond505 = and i1 %ftr507, %fnz510
  %sel511 = select i1 %cond505, i64 %r502, i64 %r503
  %wp512 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %sel511, ptr %wp512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61c0 word 0x710002df
  %r513.p = getelementptr inbounds i8, ptr %c, i64 176
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %c514 = trunc i64 %r513 to i32
  %t515 = sub i32 %c514, 0
  %fn516 = icmp slt i32 %t515, 0
  %fz517 = icmp eq i32 %t515, 0
  %fc518 = icmp uge i32 %c514, 0
  %fx1519 = xor i32 %c514, 0
  %fx2520 = xor i32 %c514, %t515
  %fva521 = and i32 %fx1519, %fx2520
  %fv522 = icmp slt i32 %fva521, 0
  %nz523 = zext i1 %fn516 to i64
  %zz524 = zext i1 %fz517 to i64
  %cz525 = zext i1 %fc518 to i64
  %vz526 = zext i1 %fv522 to i64
  %ns527 = shl i64 %nz523, 31
  %zs528 = shl i64 %zz524, 30
  %cs529 = shl i64 %cz525, 29
  %vs530 = shl i64 %vz526, 28
  %nzor531 = or i64 %ns527, %zs528
  %cvor532 = or i64 %cs529, %vs530
  %nzcv533 = or i64 %nzor531, %cvor532
  %wp534 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv533, ptr %wp534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61c4 word 0x5a9656c8
  %r535.p = getelementptr inbounds i8, ptr %c, i64 176
  %r535 = load i64, ptr %r535.p, align 8, !alias.scope !3, !noalias !4
  %c536 = trunc i64 %r535 to i32
  %r537.p = getelementptr inbounds i8, ptr %c, i64 176
  %r537 = load i64, ptr %r537.p, align 8, !alias.scope !3, !noalias !4
  %c538 = trunc i64 %r537 to i32
  %t539 = sub i32 0, %c538
  %r540.p = getelementptr inbounds i8, ptr %c, i64 272
  %r540 = load i64, ptr %r540.p, align 8, !alias.scope !3, !noalias !4
  %fsh542 = lshr i64 %r540, 31
  %ftr543 = trunc i64 %fsh542 to i1
  %cond541 = xor i1 %ftr543, true
  %sel544 = select i1 %cond541, i32 %c536, i32 %t539
  %c545 = zext i32 %sel544 to i64
  %wp546 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c545, ptr %wp546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61c8 word 0x51000509
  %r547.p = getelementptr inbounds i8, ptr %c, i64 64
  %r547 = load i64, ptr %r547.p, align 8, !alias.scope !3, !noalias !4
  %c548 = trunc i64 %r547 to i32
  %t549 = sub i32 %c548, 1
  %c550 = zext i32 %t549 to i64
  %wp551 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c550, ptr %wp551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61cc word 0x6a09011f
  %r552.p = getelementptr inbounds i8, ptr %c, i64 72
  %r552 = load i64, ptr %r552.p, align 8, !alias.scope !3, !noalias !4
  %c553 = trunc i64 %r552 to i32
  %r554.p = getelementptr inbounds i8, ptr %c, i64 64
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %c555 = trunc i64 %r554 to i32
  %t556 = and i32 %c555, %c553
  %fn557 = icmp slt i32 %t556, 0
  %fz558 = icmp eq i32 %t556, 0
  %nz559 = zext i1 %fn557 to i64
  %zz560 = zext i1 %fz558 to i64
  %ns561 = shl i64 %nz559, 31
  %zs562 = shl i64 %zz560, 30
  %nzcv563 = or i64 %ns561, %zs562
  %wp564 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv563, ptr %wp564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61d0 word 0x54001e01
  %r565.p = getelementptr inbounds i8, ptr %c, i64 272
  %r565 = load i64, ptr %r565.p, align 8, !alias.scope !3, !noalias !4
  %fsh567 = lshr i64 %r565, 30
  %ftr568 = trunc i64 %fsh567 to i1
  %cond566 = xor i1 %ftr568, true
  br i1 %cond566, label %L_8001a6590, label %L_8001a61d4_ft
L_8001a61d4_ft:
  ; @pc 0x8001a61d4 word 0xb940aaa8
  %r569.p = getelementptr inbounds i8, ptr %c, i64 168
  %r569 = load i64, ptr %r569.p, align 8, !alias.scope !3, !noalias !4
  %t570 = add i64 %r569, 168
  %gmp571 = inttoptr i64 %t570 to ptr
  %gml572 = load i32, ptr %gmp571, align 1, !alias.scope !4, !noalias !3
  %c573 = zext i32 %gml572 to i64
  %wp574 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c573, ptr %wp574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61d8 word 0x37001f48
  %r575.p = getelementptr inbounds i8, ptr %c, i64 64
  %r575 = load i64, ptr %r575.p, align 8, !alias.scope !3, !noalias !4
  %t576 = and i64 %r575, 1
  %cmp577 = icmp ne i64 %t576, 0
  br i1 %cmp577, label %L_8001a65c0, label %L_8001a61dc_ft
L_8001a61dc_ft:
  ; @pc 0x8001a61dc word 0xaa1f03f8
  %t578 = or i64 0, 0
  %wp579 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t578, ptr %wp579, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a61e0
L_8001a61ec_ft:
  ; @pc 0x8001a61ec word 0xf9405aa9
  %r597.p = getelementptr inbounds i8, ptr %c, i64 168
  %r597 = load i64, ptr %r597.p, align 8, !alias.scope !3, !noalias !4
  %t598 = add i64 %r597, 176
  %gmp599 = inttoptr i64 %t598 to ptr
  %gml600 = load i64, ptr %gmp599, align 1, !alias.scope !4, !noalias !3
  %wp601 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml600, ptr %wp601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61f0 word 0x5100050a
  %r602.p = getelementptr inbounds i8, ptr %c, i64 64
  %r602 = load i64, ptr %r602.p, align 8, !alias.scope !3, !noalias !4
  %c603 = trunc i64 %r602 to i32
  %t604 = sub i32 %c603, 1
  %c605 = zext i32 %t604 to i64
  %wp606 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c605, ptr %wp606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61f4 word 0x8b0a0129
  %r607.p = getelementptr inbounds i8, ptr %c, i64 72
  %r607 = load i64, ptr %r607.p, align 8, !alias.scope !3, !noalias !4
  %r608.p = getelementptr inbounds i8, ptr %c, i64 80
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %t609 = add i64 %r607, %r608
  %wp610 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t609, ptr %wp610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61f8 word 0x8a2a013a
  %r611.p = getelementptr inbounds i8, ptr %c, i64 80
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %t612 = xor i64 %r611, -1
  %r613.p = getelementptr inbounds i8, ptr %c, i64 72
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %t614 = and i64 %r613, %t612
  %wp615 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t614, ptr %wp615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a61fc word 0x8b190349
  %r616.p = getelementptr inbounds i8, ptr %c, i64 208
  %r616 = load i64, ptr %r616.p, align 8, !alias.scope !3, !noalias !4
  %r617.p = getelementptr inbounds i8, ptr %c, i64 200
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %t618 = add i64 %r616, %r617
  %wp619 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t618, ptr %wp619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6200 word 0xeb1a013f
  %r620.p = getelementptr inbounds i8, ptr %c, i64 72
  %r620 = load i64, ptr %r620.p, align 8, !alias.scope !3, !noalias !4
  %r621.p = getelementptr inbounds i8, ptr %c, i64 208
  %r621 = load i64, ptr %r621.p, align 8, !alias.scope !3, !noalias !4
  %t622 = sub i64 %r620, %r621
  %fn623 = icmp slt i64 %t622, 0
  %fz624 = icmp eq i64 %t622, 0
  %fc625 = icmp uge i64 %r620, %r621
  %fx1626 = xor i64 %r620, %r621
  %fx2627 = xor i64 %r620, %t622
  %fva628 = and i64 %fx1626, %fx2627
  %fv629 = icmp slt i64 %fva628, 0
  %nz630 = zext i1 %fn623 to i64
  %zz631 = zext i1 %fz624 to i64
  %cz632 = zext i1 %fc625 to i64
  %vz633 = zext i1 %fv629 to i64
  %ns634 = shl i64 %nz630, 31
  %zs635 = shl i64 %zz631, 30
  %cs636 = shl i64 %cz632, 29
  %vs637 = shl i64 %vz633, 28
  %nzor638 = or i64 %ns634, %zs635
  %cvor639 = or i64 %cs636, %vs637
  %nzcv640 = or i64 %nzor638, %cvor639
  %wp641 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv640, ptr %wp641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6204 word 0x54001a43
  %r642.p = getelementptr inbounds i8, ptr %c, i64 272
  %r642 = load i64, ptr %r642.p, align 8, !alias.scope !3, !noalias !4
  %fsh644 = lshr i64 %r642, 29
  %ftr645 = trunc i64 %fsh644 to i1
  %cond643 = xor i1 %ftr645, true
  br i1 %cond643, label %L_8001a654c, label %L_8001a6208_ft
L_8001a6208_ft:
  ; @pc 0x8001a6208 word 0xf9405eaa
  %r646.p = getelementptr inbounds i8, ptr %c, i64 168
  %r646 = load i64, ptr %r646.p, align 8, !alias.scope !3, !noalias !4
  %t647 = add i64 %r646, 184
  %gmp648 = inttoptr i64 %t647 to ptr
  %gml649 = load i64, ptr %gmp648, align 1, !alias.scope !4, !noalias !3
  %wp650 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml649, ptr %wp650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a620c word 0xeb09015f
  %r651.p = getelementptr inbounds i8, ptr %c, i64 80
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %r652.p = getelementptr inbounds i8, ptr %c, i64 72
  %r652 = load i64, ptr %r652.p, align 8, !alias.scope !3, !noalias !4
  %t653 = sub i64 %r651, %r652
  %fn654 = icmp slt i64 %t653, 0
  %fz655 = icmp eq i64 %t653, 0
  %fc656 = icmp uge i64 %r651, %r652
  %fx1657 = xor i64 %r651, %r652
  %fx2658 = xor i64 %r651, %t653
  %fva659 = and i64 %fx1657, %fx2658
  %fv660 = icmp slt i64 %fva659, 0
  %nz661 = zext i1 %fn654 to i64
  %zz662 = zext i1 %fz655 to i64
  %cz663 = zext i1 %fc656 to i64
  %vz664 = zext i1 %fv660 to i64
  %ns665 = shl i64 %nz661, 31
  %zs666 = shl i64 %zz662, 30
  %cs667 = shl i64 %cz663, 29
  %vs668 = shl i64 %vz664, 28
  %nzor669 = or i64 %ns665, %zs666
  %cvor670 = or i64 %cs667, %vs668
  %nzcv671 = or i64 %nzor669, %cvor670
  %wp672 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv671, ptr %wp672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6210 word 0x540019e3
  %r673.p = getelementptr inbounds i8, ptr %c, i64 272
  %r673 = load i64, ptr %r673.p, align 8, !alias.scope !3, !noalias !4
  %fsh675 = lshr i64 %r673, 29
  %ftr676 = trunc i64 %fsh675 to i1
  %cond674 = xor i1 %ftr676, true
  br i1 %cond674, label %L_8001a654c, label %L_8001a6214_ft
L_8001a6214_ft:
  ; @pc 0x8001a6214 word 0xf9005aa9
  %r677.p = getelementptr inbounds i8, ptr %c, i64 168
  %r677 = load i64, ptr %r677.p, align 8, !alias.scope !3, !noalias !4
  %t678 = add i64 %r677, 176
  %r679.p = getelementptr inbounds i8, ptr %c, i64 72
  %r679 = load i64, ptr %r679.p, align 8, !alias.scope !3, !noalias !4
  %gmp680 = inttoptr i64 %t678 to ptr
  store i64 %r679, ptr %gmp680, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6218 word 0xb4fffaf8
  %r681.p = getelementptr inbounds i8, ptr %c, i64 192
  %r681 = load i64, ptr %r681.p, align 8, !alias.scope !3, !noalias !4
  %cmp682 = icmp eq i64 %r681, 0
  br i1 %cmp682, label %L_8001a6174, label %L_8001a621c_ft
L_8001a621c_ft:
  ; @pc 0x8001a621c word 0x140001b7
  br label %L_8001a68f8
L_8001a6230_ft:
  ; @pc 0x8001a6230 word 0xf10022ff
  %r710.p = getelementptr inbounds i8, ptr %c, i64 184
  %r710 = load i64, ptr %r710.p, align 8, !alias.scope !3, !noalias !4
  %t711 = sub i64 %r710, 8
  %fn712 = icmp slt i64 %t711, 0
  %fz713 = icmp eq i64 %t711, 0
  %fc714 = icmp uge i64 %r710, 8
  %fx1715 = xor i64 %r710, 8
  %fx2716 = xor i64 %r710, %t711
  %fva717 = and i64 %fx1715, %fx2716
  %fv718 = icmp slt i64 %fva717, 0
  %nz719 = zext i1 %fn712 to i64
  %zz720 = zext i1 %fz713 to i64
  %cz721 = zext i1 %fc714 to i64
  %vz722 = zext i1 %fv718 to i64
  %ns723 = shl i64 %nz719, 31
  %zs724 = shl i64 %zz720, 30
  %cs725 = shl i64 %cz721, 29
  %vs726 = shl i64 %vz722, 28
  %nzor727 = or i64 %ns723, %zs724
  %cvor728 = or i64 %cs725, %vs726
  %nzcv729 = or i64 %nzor727, %cvor728
  %wp730 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv729, ptr %wp730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6234 word 0x52800108
  %c731 = zext i32 8 to i64
  %wp732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c731, ptr %wp732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6238 word 0xf940035b
  %r733.p = getelementptr inbounds i8, ptr %c, i64 208
  %r733 = load i64, ptr %r733.p, align 8, !alias.scope !3, !noalias !4
  %gmp734 = inttoptr i64 %r733 to ptr
  %gml735 = load i64, ptr %gmp734, align 1, !alias.scope !4, !noalias !3
  %wp736 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml735, ptr %wp736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a623c word 0x9a8882f9
  %r737.p = getelementptr inbounds i8, ptr %c, i64 184
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %r738.p = getelementptr inbounds i8, ptr %c, i64 64
  %r738 = load i64, ptr %r738.p, align 8, !alias.scope !3, !noalias !4
  %r739.p = getelementptr inbounds i8, ptr %c, i64 272
  %r739 = load i64, ptr %r739.p, align 8, !alias.scope !3, !noalias !4
  %fsh741 = lshr i64 %r739, 29
  %ftr742 = trunc i64 %fsh741 to i1
  %fsh743 = lshr i64 %r739, 30
  %ftr744 = trunc i64 %fsh743 to i1
  %fnz745 = xor i1 %ftr744, true
  %cond740 = and i1 %ftr742, %fnz745
  %sel746 = select i1 %cond740, i64 %r737, i64 %r738
  %wp747 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %sel746, ptr %wp747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6240 word 0x710002df
  %r748.p = getelementptr inbounds i8, ptr %c, i64 176
  %r748 = load i64, ptr %r748.p, align 8, !alias.scope !3, !noalias !4
  %c749 = trunc i64 %r748 to i32
  %t750 = sub i32 %c749, 0
  %fn751 = icmp slt i32 %t750, 0
  %fz752 = icmp eq i32 %t750, 0
  %fc753 = icmp uge i32 %c749, 0
  %fx1754 = xor i32 %c749, 0
  %fx2755 = xor i32 %c749, %t750
  %fva756 = and i32 %fx1754, %fx2755
  %fv757 = icmp slt i32 %fva756, 0
  %nz758 = zext i1 %fn751 to i64
  %zz759 = zext i1 %fz752 to i64
  %cz760 = zext i1 %fc753 to i64
  %vz761 = zext i1 %fv757 to i64
  %ns762 = shl i64 %nz758, 31
  %zs763 = shl i64 %zz759, 30
  %cs764 = shl i64 %cz760, 29
  %vs765 = shl i64 %vz761, 28
  %nzor766 = or i64 %ns762, %zs763
  %cvor767 = or i64 %cs764, %vs765
  %nzcv768 = or i64 %nzor766, %cvor767
  %wp769 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv768, ptr %wp769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6244 word 0x5a9656c8
  %r770.p = getelementptr inbounds i8, ptr %c, i64 176
  %r770 = load i64, ptr %r770.p, align 8, !alias.scope !3, !noalias !4
  %c771 = trunc i64 %r770 to i32
  %r772.p = getelementptr inbounds i8, ptr %c, i64 176
  %r772 = load i64, ptr %r772.p, align 8, !alias.scope !3, !noalias !4
  %c773 = trunc i64 %r772 to i32
  %t774 = sub i32 0, %c773
  %r775.p = getelementptr inbounds i8, ptr %c, i64 272
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %fsh777 = lshr i64 %r775, 31
  %ftr778 = trunc i64 %fsh777 to i1
  %cond776 = xor i1 %ftr778, true
  %sel779 = select i1 %cond776, i32 %c771, i32 %t774
  %c780 = zext i32 %sel779 to i64
  %wp781 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c780, ptr %wp781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6248 word 0x51000509
  %r782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r782 = load i64, ptr %r782.p, align 8, !alias.scope !3, !noalias !4
  %c783 = trunc i64 %r782 to i32
  %t784 = sub i32 %c783, 1
  %c785 = zext i32 %t784 to i64
  %wp786 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c785, ptr %wp786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a624c word 0x6a09011f
  %r787.p = getelementptr inbounds i8, ptr %c, i64 72
  %r787 = load i64, ptr %r787.p, align 8, !alias.scope !3, !noalias !4
  %c788 = trunc i64 %r787 to i32
  %r789.p = getelementptr inbounds i8, ptr %c, i64 64
  %r789 = load i64, ptr %r789.p, align 8, !alias.scope !3, !noalias !4
  %c790 = trunc i64 %r789 to i32
  %t791 = and i32 %c790, %c788
  %fn792 = icmp slt i32 %t791, 0
  %fz793 = icmp eq i32 %t791, 0
  %nz794 = zext i1 %fn792 to i64
  %zz795 = zext i1 %fz793 to i64
  %ns796 = shl i64 %nz794, 31
  %zs797 = shl i64 %zz795, 30
  %nzcv798 = or i64 %ns796, %zs797
  %wp799 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv798, ptr %wp799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6250 word 0x54001a01
  %r800.p = getelementptr inbounds i8, ptr %c, i64 272
  %r800 = load i64, ptr %r800.p, align 8, !alias.scope !3, !noalias !4
  %fsh802 = lshr i64 %r800, 30
  %ftr803 = trunc i64 %fsh802 to i1
  %cond801 = xor i1 %ftr803, true
  br i1 %cond801, label %L_8001a6590, label %L_8001a6254_ft
L_8001a6254_ft:
  ; @pc 0x8001a6254 word 0xb940aaa8
  %r804.p = getelementptr inbounds i8, ptr %c, i64 168
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %t805 = add i64 %r804, 168
  %gmp806 = inttoptr i64 %t805 to ptr
  %gml807 = load i32, ptr %gmp806, align 1, !alias.scope !4, !noalias !3
  %c808 = zext i32 %gml807 to i64
  %wp809 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c808, ptr %wp809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6258 word 0x36000468
  %r810.p = getelementptr inbounds i8, ptr %c, i64 64
  %r810 = load i64, ptr %r810.p, align 8, !alias.scope !3, !noalias !4
  %t811 = and i64 %r810, 1
  %cmp812 = icmp eq i64 %t811, 0
  br i1 %cmp812, label %L_8001a62e4, label %L_8001a625c_ft
L_8001a625c_ft:
  ; @pc 0x8001a625c word 0x910222b8
  %r813.p = getelementptr inbounds i8, ptr %c, i64 168
  %r813 = load i64, ptr %r813.p, align 8, !alias.scope !3, !noalias !4
  %t814 = add i64 %r813, 136
  %wp815 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t814, ptr %wp815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6260 word 0xaa1803e0
  %r816.p = getelementptr inbounds i8, ptr %c, i64 192
  %r816 = load i64, ptr %r816.p, align 8, !alias.scope !3, !noalias !4
  %t817 = or i64 0, %r816
  %wp818 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t817, ptr %wp818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6264 word 0x94a7f77f
  %wp819 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467496, ptr %wp819, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_8001a6268
L_8001a6274_ft:
  ; @pc 0x8001a6274 word 0xb980c6a9
  %r837.p = getelementptr inbounds i8, ptr %c, i64 168
  %r837 = load i64, ptr %r837.p, align 8, !alias.scope !3, !noalias !4
  %t838 = add i64 %r837, 196
  %gmp839 = inttoptr i64 %t838 to ptr
  %gml840 = load i32, ptr %gmp839, align 1, !alias.scope !4, !noalias !3
  %c841 = sext i32 %gml840 to i64
  %wp842 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c841, ptr %wp842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6278 word 0x9102c2ba
  %r843.p = getelementptr inbounds i8, ptr %c, i64 168
  %r843 = load i64, ptr %r843.p, align 8, !alias.scope !3, !noalias !4
  %t844 = add i64 %r843, 176
  %wp845 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t844, ptr %wp845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a627c word 0x2a0c03ed
  %r846.p = getelementptr inbounds i8, ptr %c, i64 96
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %c847 = trunc i64 %r846 to i32
  %t848 = or i32 0, %c847
  %c849 = zext i32 %t848 to i64
  %wp850 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c849, ptr %wp850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6280 word 0xf9405eab
  %r851.p = getelementptr inbounds i8, ptr %c, i64 168
  %r851 = load i64, ptr %r851.p, align 8, !alias.scope !3, !noalias !4
  %t852 = add i64 %r851, 184
  %gmp853 = inttoptr i64 %t852 to ptr
  %gml854 = load i64, ptr %gmp853, align 1, !alias.scope !4, !noalias !3
  %wp855 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml854, ptr %wp855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6284 word 0x7100219f
  %r856.p = getelementptr inbounds i8, ptr %c, i64 96
  %r856 = load i64, ptr %r856.p, align 8, !alias.scope !3, !noalias !4
  %c857 = trunc i64 %r856 to i32
  %t858 = sub i32 %c857, 8
  %fn859 = icmp slt i32 %t858, 0
  %fz860 = icmp eq i32 %t858, 0
  %fc861 = icmp uge i32 %c857, 8
  %fx1862 = xor i32 %c857, 8
  %fx2863 = xor i32 %c857, %t858
  %fva864 = and i32 %fx1862, %fx2863
  %fv865 = icmp slt i32 %fva864, 0
  %nz866 = zext i1 %fn859 to i64
  %zz867 = zext i1 %fz860 to i64
  %cz868 = zext i1 %fc861 to i64
  %vz869 = zext i1 %fv865 to i64
  %ns870 = shl i64 %nz866, 31
  %zs871 = shl i64 %zz867, 30
  %cs872 = shl i64 %cz868, 29
  %vs873 = shl i64 %vz869, 28
  %nzor874 = or i64 %ns870, %zs871
  %cvor875 = or i64 %cs872, %vs873
  %nzcv876 = or i64 %nzor874, %cvor875
  %wp877 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv876, ptr %wp877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6288 word 0xcb0903e8
  %r878.p = getelementptr inbounds i8, ptr %c, i64 72
  %r878 = load i64, ptr %r878.p, align 8, !alias.scope !3, !noalias !4
  %t879 = sub i64 0, %r878
  %wp880 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a628c word 0xcb09034a
  %r881.p = getelementptr inbounds i8, ptr %c, i64 208
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %r882.p = getelementptr inbounds i8, ptr %c, i64 72
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %t883 = sub i64 %r881, %r882
  %wp884 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6290 word 0xcb09016b
  %r885.p = getelementptr inbounds i8, ptr %c, i64 88
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %r886.p = getelementptr inbounds i8, ptr %c, i64 72
  %r886 = load i64, ptr %r886.p, align 8, !alias.scope !3, !noalias !4
  %t887 = sub i64 %r885, %r886
  %wp888 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t887, ptr %wp888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6294 word 0x54001b28
  %r889.p = getelementptr inbounds i8, ptr %c, i64 272
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %fsh891 = lshr i64 %r889, 29
  %ftr892 = trunc i64 %fsh891 to i1
  %fsh893 = lshr i64 %r889, 30
  %ftr894 = trunc i64 %fsh893 to i1
  %fnz895 = xor i1 %ftr894, true
  %cond890 = and i1 %ftr892, %fnz895
  br i1 %cond890, label %L_8001a65f8, label %L_8001a6298_ft
L_8001a6298_ft:
  ; @pc 0x8001a6298 word 0xeb0a017f
  %r896.p = getelementptr inbounds i8, ptr %c, i64 88
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %r897.p = getelementptr inbounds i8, ptr %c, i64 80
  %r897 = load i64, ptr %r897.p, align 8, !alias.scope !3, !noalias !4
  %t898 = sub i64 %r896, %r897
  %fn899 = icmp slt i64 %t898, 0
  %fz900 = icmp eq i64 %t898, 0
  %fc901 = icmp uge i64 %r896, %r897
  %fx1902 = xor i64 %r896, %r897
  %fx2903 = xor i64 %r896, %t898
  %fva904 = and i64 %fx1902, %fx2903
  %fv905 = icmp slt i64 %fva904, 0
  %nz906 = zext i1 %fn899 to i64
  %zz907 = zext i1 %fz900 to i64
  %cz908 = zext i1 %fc901 to i64
  %vz909 = zext i1 %fv905 to i64
  %ns910 = shl i64 %nz906, 31
  %zs911 = shl i64 %zz907, 30
  %cs912 = shl i64 %cz908, 29
  %vs913 = shl i64 %vz909, 28
  %nzor914 = or i64 %ns910, %zs911
  %cvor915 = or i64 %cs912, %vs913
  %nzcv916 = or i64 %nzor914, %cvor915
  %wp917 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv916, ptr %wp917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a629c word 0x54000180
  %r918.p = getelementptr inbounds i8, ptr %c, i64 272
  %r918 = load i64, ptr %r918.p, align 8, !alias.scope !3, !noalias !4
  %fsh920 = lshr i64 %r918, 30
  %cond919 = trunc i64 %fsh920 to i1
  br i1 %cond919, label %L_8001a62cc, label %L_8001a62a0_ft
L_8001a62a0_ft:
  ; @pc 0x8001a62a0 word 0x3942b2ac
  %r921.p = getelementptr inbounds i8, ptr %c, i64 168
  %r921 = load i64, ptr %r921.p, align 8, !alias.scope !3, !noalias !4
  %t922 = add i64 %r921, 172
  %gmp923 = inttoptr i64 %t922 to ptr
  %gml924 = load i8, ptr %gmp923, align 1, !alias.scope !4, !noalias !3
  %c925 = zext i8 %gml924 to i64
  %wp926 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c925, ptr %wp926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62a4 word 0x3500288c
  %r927.p = getelementptr inbounds i8, ptr %c, i64 96
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %c928 = trunc i64 %r927 to i32
  %cmp929 = icmp ne i32 %c928, 0
  br i1 %cmp929, label %L_8001a67b4, label %L_8001a62a8_ft
L_8001a62a8_ft:
  ; @pc 0x8001a62a8 word 0xaa0b03ec
  %r930.p = getelementptr inbounds i8, ptr %c, i64 88
  %r930 = load i64, ptr %r930.p, align 8, !alias.scope !3, !noalias !4
  %t931 = or i64 0, %r930
  %wp932 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t931, ptr %wp932, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a62ac
L_8001a62b8_ft:
  ; @pc 0x8001a62b8 word 0x8b09018b
  %r963.p = getelementptr inbounds i8, ptr %c, i64 96
  %r963 = load i64, ptr %r963.p, align 8, !alias.scope !3, !noalias !4
  %r964.p = getelementptr inbounds i8, ptr %c, i64 72
  %r964 = load i64, ptr %r964.p, align 8, !alias.scope !3, !noalias !4
  %t965 = add i64 %r963, %r964
  %wp966 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t965, ptr %wp966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62bc word 0xf940056b
  %r967.p = getelementptr inbounds i8, ptr %c, i64 88
  %r967 = load i64, ptr %r967.p, align 8, !alias.scope !3, !noalias !4
  %t968 = add i64 %r967, 8
  %gmp969 = inttoptr i64 %t968 to ptr
  %gml970 = load i64, ptr %gmp969, align 1, !alias.scope !4, !noalias !3
  %wp971 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml970, ptr %wp971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62c0 word 0x8b08016c
  %r972.p = getelementptr inbounds i8, ptr %c, i64 88
  %r972 = load i64, ptr %r972.p, align 8, !alias.scope !3, !noalias !4
  %r973.p = getelementptr inbounds i8, ptr %c, i64 64
  %r973 = load i64, ptr %r973.p, align 8, !alias.scope !3, !noalias !4
  %t974 = add i64 %r972, %r973
  %wp975 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t974, ptr %wp975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62c4 word 0xeb0a019f
  %r976.p = getelementptr inbounds i8, ptr %c, i64 96
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %r977.p = getelementptr inbounds i8, ptr %c, i64 80
  %r977 = load i64, ptr %r977.p, align 8, !alias.scope !3, !noalias !4
  %t978 = sub i64 %r976, %r977
  %fn979 = icmp slt i64 %t978, 0
  %fz980 = icmp eq i64 %t978, 0
  %fc981 = icmp uge i64 %r976, %r977
  %fx1982 = xor i64 %r976, %r977
  %fx2983 = xor i64 %r976, %t978
  %fva984 = and i64 %fx1982, %fx2983
  %fv985 = icmp slt i64 %fva984, 0
  %nz986 = zext i1 %fn979 to i64
  %zz987 = zext i1 %fz980 to i64
  %cz988 = zext i1 %fc981 to i64
  %vz989 = zext i1 %fv985 to i64
  %ns990 = shl i64 %nz986, 31
  %zs991 = shl i64 %zz987, 30
  %cs992 = shl i64 %cz988, 29
  %vs993 = shl i64 %vz989, 28
  %nzor994 = or i64 %ns990, %zs991
  %cvor995 = or i64 %cs992, %vs993
  %nzcv996 = or i64 %nzor994, %cvor995
  %wp997 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv996, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62c8 word 0x54ffff21
  %r998.p = getelementptr inbounds i8, ptr %c, i64 272
  %r998 = load i64, ptr %r998.p, align 8, !alias.scope !3, !noalias !4
  %fsh1000 = lshr i64 %r998, 30
  %ftr1001 = trunc i64 %fsh1000 to i1
  %cond999 = xor i1 %ftr1001, true
  br i1 %cond999, label %L_8001a62ac, label %L_8001a62cc
L_8001a62d4_ft:
  ; @pc 0x8001a62d4 word 0xf9400b60
  %r1009.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1009 = load i64, ptr %r1009.p, align 8, !alias.scope !3, !noalias !4
  %t1010 = add i64 %r1009, 16
  %gmp1011 = inttoptr i64 %t1010 to ptr
  %gml1012 = load i64, ptr %gmp1011, align 1, !alias.scope !4, !noalias !3
  %wp1013 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1012, ptr %wp1013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a62d8 word 0xb5003da0
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %cmp1015 = icmp ne i64 %r1014, 0
  br i1 %cmp1015, label %L_8001a6a8c, label %L_8001a62dc
L_8001a6330_ft:
  ; @pc 0x8001a6330 word 0x17ffff94
  br label %L_8001a6180
L_8001a6338_ft:
  ; @pc 0x8001a6338 word 0xf9400920
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %t1095 = add i64 %r1094, 16
  %gmp1096 = inttoptr i64 %t1095 to ptr
  %gml1097 = load i64, ptr %gmp1096, align 1, !alias.scope !4, !noalias !3
  %wp1098 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1097, ptr %wp1098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a633c word 0xb5000f20
  %r1099.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1099 = load i64, ptr %r1099.p, align 8, !alias.scope !3, !noalias !4
  %cmp1100 = icmp ne i64 %r1099, 0
  br i1 %cmp1100, label %L_8001a6520, label %L_8001a6340
L_8001a6348_ft:
  ; @pc 0x8001a6348 word 0x7100251f
  %r1108.p = getelementptr inbounds i8, ptr %c, i64 64
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
  ; @pc 0x8001a634c word 0xaa1503e9
  %r1130.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1130 = load i64, ptr %r1130.p, align 8, !alias.scope !3, !noalias !4
  %t1131 = or i64 0, %r1130
  %wp1132 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1131, ptr %wp1132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6350 word 0x1a8833fa
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %c1134 = trunc i64 %r1133 to i32
  %r1135.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1135 = load i64, ptr %r1135.p, align 8, !alias.scope !3, !noalias !4
  %fsh1137 = lshr i64 %r1135, 29
  %ftr1138 = trunc i64 %fsh1137 to i1
  %cond1136 = xor i1 %ftr1138, true
  %sel1139 = select i1 %cond1136, i32 0, i32 %c1134
  %c1140 = zext i32 %sel1139 to i64
  %wp1141 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1140, ptr %wp1141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6354 word 0xf84c0d28
  %r1142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1142 = load i64, ptr %r1142.p, align 8, !alias.scope !3, !noalias !4
  %t1143 = add i64 %r1142, 192
  %gmp1144 = inttoptr i64 %t1143 to ptr
  %gml1145 = load i64, ptr %gmp1144, align 1, !alias.scope !4, !noalias !3
  %wp1146 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1143, ptr %wp1146, align 8, !alias.scope !3, !noalias !4
  %wp1147 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1145, ptr %wp1147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6358 word 0xf9000be9
  %r1148.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1148 = load i64, ptr %r1148.p, align 8, !alias.scope !3, !noalias !4
  %t1149 = add i64 %r1148, 16
  %r1150.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1150 = load i64, ptr %r1150.p, align 8, !alias.scope !3, !noalias !4
  %gmp1151 = inttoptr i64 %t1149 to ptr
  store i64 %r1150, ptr %gmp1151, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a635c word 0xb85e8129
  %r1152.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1152 = load i64, ptr %r1152.p, align 8, !alias.scope !3, !noalias !4
  %t1153 = add i64 %r1152, -24
  %gmp1154 = inttoptr i64 %t1153 to ptr
  %gml1155 = load i32, ptr %gmp1154, align 1, !alias.scope !4, !noalias !3
  %c1156 = zext i32 %gml1155 to i64
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6360 word 0x37180049
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %t1159 = and i64 %r1158, 8
  %cmp1160 = icmp ne i64 %t1159, 0
  br i1 %cmp1160, label %L_8001a6368, label %L_8001a6364_ft
L_8001a6364_ft:
  ; @pc 0x8001a6364 word 0xb40000c8
  %r1161.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1161 = load i64, ptr %r1161.p, align 8, !alias.scope !3, !noalias !4
  %cmp1162 = icmp eq i64 %r1161, 0
  br i1 %cmp1162, label %L_8001a637c, label %L_8001a6368
L_8001a63a8_ft:
  ; @pc 0x8001a63a8 word 0xaa0003fa
  %r1258.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1258 = load i64, ptr %r1258.p, align 8, !alias.scope !3, !noalias !4
  %t1259 = or i64 0, %r1258
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1259, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a63ac
L_8001a63b4_ft:
  ; @pc 0x8001a63b4 word 0xaa1903e0
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %t1271 = or i64 0, %r1270
  %wp1272 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1271, ptr %wp1272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a63b8 word 0x94a7f72a
  %wp1273 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467836, ptr %wp1273, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_8001a63bc
L_8001a6414_ft:
  ; @pc 0x8001a6414 word 0xaa1903e0
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %t1410 = or i64 0, %r1409
  %wp1411 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1410, ptr %wp1411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6418 word 0x94a7f716
  %wp1412 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361467932, ptr %wp1412, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001a641c word 0x17ffff55
  br label %L_8001a6170
L_8001a642c_ft:
  ; @pc 0x8001a642c word 0x9100218c
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %t1424 = add i64 %r1423, 8
  %wp1425 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1424, ptr %wp1425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6430 word 0x17ffffec
  br label %L_8001a63e0
L_8001a6448_ft:
  ; @pc 0x8001a6448 word 0xb2607d08
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %t1467 = or i64 %r1466, -4294967296
  %wp1468 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1467, ptr %wp1468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a644c word 0x8a08015a
  %r1469.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1469 = load i64, ptr %r1469.p, align 8, !alias.scope !3, !noalias !4
  %r1470.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1470 = load i64, ptr %r1470.p, align 8, !alias.scope !3, !noalias !4
  %t1471 = and i64 %r1470, %r1469
  %wp1472 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1471, ptr %wp1472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6450 word 0xf9405aa8
  %r1473.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1473 = load i64, ptr %r1473.p, align 8, !alias.scope !3, !noalias !4
  %t1474 = add i64 %r1473, 176
  %gmp1475 = inttoptr i64 %t1474 to ptr
  %gml1476 = load i64, ptr %gmp1475, align 1, !alias.scope !4, !noalias !3
  %wp1477 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1476, ptr %wp1477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6454 word 0xeb1a011f
  %r1478.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1478 = load i64, ptr %r1478.p, align 8, !alias.scope !3, !noalias !4
  %r1479.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1479 = load i64, ptr %r1479.p, align 8, !alias.scope !3, !noalias !4
  %t1480 = sub i64 %r1478, %r1479
  %fn1481 = icmp slt i64 %t1480, 0
  %fz1482 = icmp eq i64 %t1480, 0
  %fc1483 = icmp uge i64 %r1478, %r1479
  %fx11484 = xor i64 %r1478, %r1479
  %fx21485 = xor i64 %r1478, %t1480
  %fva1486 = and i64 %fx11484, %fx21485
  %fv1487 = icmp slt i64 %fva1486, 0
  %nz1488 = zext i1 %fn1481 to i64
  %zz1489 = zext i1 %fz1482 to i64
  %cz1490 = zext i1 %fc1483 to i64
  %vz1491 = zext i1 %fv1487 to i64
  %ns1492 = shl i64 %nz1488, 31
  %zs1493 = shl i64 %zz1489, 30
  %cs1494 = shl i64 %cz1490, 29
  %vs1495 = shl i64 %vz1491, 28
  %nzor1496 = or i64 %ns1492, %zs1493
  %cvor1497 = or i64 %cs1494, %vs1495
  %nzcv1498 = or i64 %nzor1496, %cvor1497
  %wp1499 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1498, ptr %wp1499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6458 word 0x54002f08
  %r1500.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1500 = load i64, ptr %r1500.p, align 8, !alias.scope !3, !noalias !4
  %fsh1502 = lshr i64 %r1500, 29
  %ftr1503 = trunc i64 %fsh1502 to i1
  %fsh1504 = lshr i64 %r1500, 30
  %ftr1505 = trunc i64 %fsh1504 to i1
  %fnz1506 = xor i1 %ftr1505, true
  %cond1501 = and i1 %ftr1503, %fnz1506
  br i1 %cond1501, label %L_8001a6a38, label %L_8001a645c_ft
L_8001a645c_ft:
  ; @pc 0x8001a645c word 0xf9005eba
  %r1507.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1507 = load i64, ptr %r1507.p, align 8, !alias.scope !3, !noalias !4
  %t1508 = add i64 %r1507, 184
  %r1509.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1509 = load i64, ptr %r1509.p, align 8, !alias.scope !3, !noalias !4
  %gmp1510 = inttoptr i64 %t1508 to ptr
  store i64 %r1509, ptr %gmp1510, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6460 word 0xb4ffe8b8
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %cmp1512 = icmp eq i64 %r1511, 0
  br i1 %cmp1512, label %L_8001a6174, label %L_8001a6464_ft
L_8001a6464_ft:
  ; @pc 0x8001a6464 word 0x14000125
  br label %L_8001a68f8
L_8001a647c_ft:
  ; @pc 0x8001a647c word 0xf9400920
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %t1528 = add i64 %r1527, 16
  %gmp1529 = inttoptr i64 %t1528 to ptr
  %gml1530 = load i64, ptr %gmp1529, align 1, !alias.scope !4, !noalias !3
  %wp1531 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1530, ptr %wp1531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6480 word 0xb4000120
  %r1532.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1532 = load i64, ptr %r1532.p, align 8, !alias.scope !3, !noalias !4
  %cmp1533 = icmp eq i64 %r1532, 0
  br i1 %cmp1533, label %L_8001a64a4, label %L_8001a6484_ft
L_8001a6484_ft:
  ; @pc 0x8001a6484 word 0xa901dff5
  %r1534.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1534 = load i64, ptr %r1534.p, align 8, !alias.scope !3, !noalias !4
  %t1535 = add i64 %r1534, 24
  %t1536 = add i64 %t1535, 8
  %r1537.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1537 = load i64, ptr %r1537.p, align 8, !alias.scope !3, !noalias !4
  %gmp1538 = inttoptr i64 %t1535 to ptr
  store i64 %r1537, ptr %gmp1538, align 1, !alias.scope !4, !noalias !3
  %r1539.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1539 = load i64, ptr %r1539.p, align 8, !alias.scope !3, !noalias !4
  %gmp1540 = inttoptr i64 %t1536 to ptr
  store i64 %r1539, ptr %gmp1540, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6488 word 0x910063e1
  %r1541.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1541 = load i64, ptr %r1541.p, align 8, !alias.scope !3, !noalias !4
  %t1542 = add i64 %r1541, 24
  %wp1543 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1542, ptr %wp1543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a648c word 0xb9002bf6
  %r1544.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1544 = load i64, ptr %r1544.p, align 8, !alias.scope !3, !noalias !4
  %t1545 = add i64 %r1544, 40
  %r1546.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1546 = load i64, ptr %r1546.p, align 8, !alias.scope !3, !noalias !4
  %c1547 = trunc i64 %r1546 to i32
  %gmp1548 = inttoptr i64 %t1545 to ptr
  store i32 %c1547, ptr %gmp1548, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6490 word 0xf9001bfb
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %t1550 = add i64 %r1549, 48
  %r1551.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1551 = load i64, ptr %r1551.p, align 8, !alias.scope !3, !noalias !4
  %gmp1552 = inttoptr i64 %t1550 to ptr
  store i64 %r1551, ptr %gmp1552, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6494 word 0xb9003bf6
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %t1554 = add i64 %r1553, 56
  %r1555.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1555 = load i64, ptr %r1555.p, align 8, !alias.scope !3, !noalias !4
  %c1556 = trunc i64 %r1555 to i32
  %gmp1557 = inttoptr i64 %t1554 to ptr
  store i32 %c1556, ptr %gmp1557, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6498 word 0xf9400008
  %r1558.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1558 = load i64, ptr %r1558.p, align 8, !alias.scope !3, !noalias !4
  %gmp1559 = inttoptr i64 %r1558 to ptr
  %gml1560 = load i64, ptr %gmp1559, align 1, !alias.scope !4, !noalias !3
  %wp1561 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1560, ptr %wp1561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a649c word 0xf9400108
  %r1562.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1562 = load i64, ptr %r1562.p, align 8, !alias.scope !3, !noalias !4
  %gmp1563 = inttoptr i64 %r1562 to ptr
  %gml1564 = load i64, ptr %gmp1563, align 1, !alias.scope !4, !noalias !3
  %wp1565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1564, ptr %wp1565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64a0 word 0xd63f0100
  %r1566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1566 = load i64, ptr %r1566.p, align 8, !alias.scope !3, !noalias !4
  %fp1567 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1566, ptr %fp1567, align 8, !alias.scope !3, !noalias !4
  %wp1568 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468068, ptr %wp1568, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a64a4
L_8001a64d4_ft:
  ; @pc 0x8001a64d4 word 0xb2607d4a
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %t1624 = or i64 %r1623, -4294967296
  %wp1625 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1624, ptr %wp1625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64d8 word 0x8a0a011a
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %r1627.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1627 = load i64, ptr %r1627.p, align 8, !alias.scope !3, !noalias !4
  %t1628 = and i64 %r1627, %r1626
  %wp1629 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1628, ptr %wp1629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64dc word 0xf9405aa8
  %r1630.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1630 = load i64, ptr %r1630.p, align 8, !alias.scope !3, !noalias !4
  %t1631 = add i64 %r1630, 176
  %gmp1632 = inttoptr i64 %t1631 to ptr
  %gml1633 = load i64, ptr %gmp1632, align 1, !alias.scope !4, !noalias !3
  %wp1634 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1633, ptr %wp1634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64e0 word 0xeb1a011f
  %r1635.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1635 = load i64, ptr %r1635.p, align 8, !alias.scope !3, !noalias !4
  %r1636.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1636 = load i64, ptr %r1636.p, align 8, !alias.scope !3, !noalias !4
  %t1637 = sub i64 %r1635, %r1636
  %fn1638 = icmp slt i64 %t1637, 0
  %fz1639 = icmp eq i64 %t1637, 0
  %fc1640 = icmp uge i64 %r1635, %r1636
  %fx11641 = xor i64 %r1635, %r1636
  %fx21642 = xor i64 %r1635, %t1637
  %fva1643 = and i64 %fx11641, %fx21642
  %fv1644 = icmp slt i64 %fva1643, 0
  %nz1645 = zext i1 %fn1638 to i64
  %zz1646 = zext i1 %fz1639 to i64
  %cz1647 = zext i1 %fc1640 to i64
  %vz1648 = zext i1 %fv1644 to i64
  %ns1649 = shl i64 %nz1645, 31
  %zs1650 = shl i64 %zz1646, 30
  %cs1651 = shl i64 %cz1647, 29
  %vs1652 = shl i64 %vz1648, 28
  %nzor1653 = or i64 %ns1649, %zs1650
  %cvor1654 = or i64 %cs1651, %vs1652
  %nzcv1655 = or i64 %nzor1653, %cvor1654
  %wp1656 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1655, ptr %wp1656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64e4 word 0x54000509
  %r1657.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1657 = load i64, ptr %r1657.p, align 8, !alias.scope !3, !noalias !4
  %fsh1659 = lshr i64 %r1657, 29
  %ftr1660 = trunc i64 %fsh1659 to i1
  %fsh1661 = lshr i64 %r1657, 30
  %ftr1662 = trunc i64 %fsh1661 to i1
  %fnz1663 = xor i1 %ftr1662, true
  %fhi1664 = and i1 %ftr1660, %fnz1663
  %cond1658 = xor i1 %fhi1664, true
  br i1 %cond1658, label %L_8001a6584, label %L_8001a64e8
L_8001a64f0_ft:
  ; @pc 0x8001a64f0 word 0xf9400920
  %r1672.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1672 = load i64, ptr %r1672.p, align 8, !alias.scope !3, !noalias !4
  %t1673 = add i64 %r1672, 16
  %gmp1674 = inttoptr i64 %t1673 to ptr
  %gml1675 = load i64, ptr %gmp1674, align 1, !alias.scope !4, !noalias !3
  %wp1676 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1675, ptr %wp1676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a64f4 word 0xb4fff260
  %r1677.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1677 = load i64, ptr %r1677.p, align 8, !alias.scope !3, !noalias !4
  %cmp1678 = icmp eq i64 %r1677, 0
  br i1 %cmp1678, label %L_8001a6340, label %L_8001a64f8_ft
L_8001a64f8_ft:
  ; @pc 0x8001a64f8 word 0xa901dff5
  %r1679.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1679 = load i64, ptr %r1679.p, align 8, !alias.scope !3, !noalias !4
  %t1680 = add i64 %r1679, 24
  %t1681 = add i64 %t1680, 8
  %r1682.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1682 = load i64, ptr %r1682.p, align 8, !alias.scope !3, !noalias !4
  %gmp1683 = inttoptr i64 %t1680 to ptr
  store i64 %r1682, ptr %gmp1683, align 1, !alias.scope !4, !noalias !3
  %r1684.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1684 = load i64, ptr %r1684.p, align 8, !alias.scope !3, !noalias !4
  %gmp1685 = inttoptr i64 %t1681 to ptr
  store i64 %r1684, ptr %gmp1685, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a64fc word 0x910063e1
  %r1686.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1686 = load i64, ptr %r1686.p, align 8, !alias.scope !3, !noalias !4
  %t1687 = add i64 %r1686, 24
  %wp1688 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1687, ptr %wp1688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6500 word 0xb9002bf6
  %r1689.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1689 = load i64, ptr %r1689.p, align 8, !alias.scope !3, !noalias !4
  %t1690 = add i64 %r1689, 40
  %r1691.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1691 = load i64, ptr %r1691.p, align 8, !alias.scope !3, !noalias !4
  %c1692 = trunc i64 %r1691 to i32
  %gmp1693 = inttoptr i64 %t1690 to ptr
  store i32 %c1692, ptr %gmp1693, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6504 word 0xf9001bfb
  %r1694.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1694 = load i64, ptr %r1694.p, align 8, !alias.scope !3, !noalias !4
  %t1695 = add i64 %r1694, 48
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %gmp1697 = inttoptr i64 %t1695 to ptr
  store i64 %r1696, ptr %gmp1697, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6508 word 0xb9003beb
  %r1698.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1698 = load i64, ptr %r1698.p, align 8, !alias.scope !3, !noalias !4
  %t1699 = add i64 %r1698, 56
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %c1701 = trunc i64 %r1700 to i32
  %gmp1702 = inttoptr i64 %t1699 to ptr
  store i32 %c1701, ptr %gmp1702, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a650c word 0xf9400008
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %gmp1704 = inttoptr i64 %r1703 to ptr
  %gml1705 = load i64, ptr %gmp1704, align 1, !alias.scope !4, !noalias !3
  %wp1706 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1705, ptr %wp1706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6510 word 0xf9400108
  %r1707.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1707 = load i64, ptr %r1707.p, align 8, !alias.scope !3, !noalias !4
  %gmp1708 = inttoptr i64 %r1707 to ptr
  %gml1709 = load i64, ptr %gmp1708, align 1, !alias.scope !4, !noalias !3
  %wp1710 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1709, ptr %wp1710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6514 word 0xd63f0100
  %r1711.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1711 = load i64, ptr %r1711.p, align 8, !alias.scope !3, !noalias !4
  %fp1712 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1711, ptr %fp1712, align 8, !alias.scope !3, !noalias !4
  %wp1713 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468184, ptr %wp1713, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a6518 word 0x2a1c03e8
  %r1714.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1714 = load i64, ptr %r1714.p, align 8, !alias.scope !3, !noalias !4
  %c1715 = trunc i64 %r1714 to i32
  %t1716 = or i32 0, %c1715
  %c1717 = zext i32 %t1716 to i64
  %wp1718 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1717, ptr %wp1718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a651c word 0x17ffff89
  br label %L_8001a6340
L_8001a6550_ft:
  ; @pc 0x8001a6550 word 0xf9400b60
  %r1766.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1766 = load i64, ptr %r1766.p, align 8, !alias.scope !3, !noalias !4
  %t1767 = add i64 %r1766, 16
  %gmp1768 = inttoptr i64 %t1767 to ptr
  %gml1769 = load i64, ptr %gmp1768, align 1, !alias.scope !4, !noalias !3
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1769, ptr %wp1770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6554 word 0xb4000120
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %cmp1772 = icmp eq i64 %r1771, 0
  br i1 %cmp1772, label %L_8001a6578, label %L_8001a6558_ft
L_8001a6558_ft:
  ; @pc 0x8001a6558 word 0xa901dff5
  %r1773.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1773 = load i64, ptr %r1773.p, align 8, !alias.scope !3, !noalias !4
  %t1774 = add i64 %r1773, 24
  %t1775 = add i64 %t1774, 8
  %r1776.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1776 = load i64, ptr %r1776.p, align 8, !alias.scope !3, !noalias !4
  %gmp1777 = inttoptr i64 %t1774 to ptr
  store i64 %r1776, ptr %gmp1777, align 1, !alias.scope !4, !noalias !3
  %r1778.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1778 = load i64, ptr %r1778.p, align 8, !alias.scope !3, !noalias !4
  %gmp1779 = inttoptr i64 %t1775 to ptr
  store i64 %r1778, ptr %gmp1779, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a655c word 0xb9002bf6
  %r1780.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1780 = load i64, ptr %r1780.p, align 8, !alias.scope !3, !noalias !4
  %t1781 = add i64 %r1780, 40
  %r1782.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1782 = load i64, ptr %r1782.p, align 8, !alias.scope !3, !noalias !4
  %c1783 = trunc i64 %r1782 to i32
  %gmp1784 = inttoptr i64 %t1781 to ptr
  store i32 %c1783, ptr %gmp1784, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6560 word 0xf9001bf9
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %t1786 = add i64 %r1785, 48
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %gmp1788 = inttoptr i64 %t1786 to ptr
  store i64 %r1787, ptr %gmp1788, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6564 word 0xb9003be8
  %r1789.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1789 = load i64, ptr %r1789.p, align 8, !alias.scope !3, !noalias !4
  %t1790 = add i64 %r1789, 56
  %r1791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1791 = load i64, ptr %r1791.p, align 8, !alias.scope !3, !noalias !4
  %c1792 = trunc i64 %r1791 to i32
  %gmp1793 = inttoptr i64 %t1790 to ptr
  store i32 %c1792, ptr %gmp1793, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6568
L_8001a6580_ft:
  ; @pc 0x8001a6580 word 0x140000de
  br label %L_8001a68f8
L_8001a6594_ft:
  ; @pc 0x8001a6594 word 0xf9400b60
  %r1823.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1823 = load i64, ptr %r1823.p, align 8, !alias.scope !3, !noalias !4
  %t1824 = add i64 %r1823, 16
  %gmp1825 = inttoptr i64 %t1824 to ptr
  %gml1826 = load i64, ptr %gmp1825, align 1, !alias.scope !4, !noalias !3
  %wp1827 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1826, ptr %wp1827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6598 word 0xb4ffdf40
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %cmp1829 = icmp eq i64 %r1828, 0
  br i1 %cmp1829, label %L_8001a6180, label %L_8001a659c_ft
L_8001a659c_ft:
  ; @pc 0x8001a659c word 0xa901dff5
  %r1830.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1830 = load i64, ptr %r1830.p, align 8, !alias.scope !3, !noalias !4
  %t1831 = add i64 %r1830, 24
  %t1832 = add i64 %t1831, 8
  %r1833.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1833 = load i64, ptr %r1833.p, align 8, !alias.scope !3, !noalias !4
  %gmp1834 = inttoptr i64 %t1831 to ptr
  store i64 %r1833, ptr %gmp1834, align 1, !alias.scope !4, !noalias !3
  %r1835.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1835 = load i64, ptr %r1835.p, align 8, !alias.scope !3, !noalias !4
  %gmp1836 = inttoptr i64 %t1832 to ptr
  store i64 %r1835, ptr %gmp1836, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a65a0 word 0x910063e1
  %r1837.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1837 = load i64, ptr %r1837.p, align 8, !alias.scope !3, !noalias !4
  %t1838 = add i64 %r1837, 24
  %wp1839 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1838, ptr %wp1839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65a4 word 0xb9002bf6
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %t1841 = add i64 %r1840, 40
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %c1843 = trunc i64 %r1842 to i32
  %gmp1844 = inttoptr i64 %t1841 to ptr
  store i32 %c1843, ptr %gmp1844, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a65a8 word 0xf9001bf9
  %r1845.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1845 = load i64, ptr %r1845.p, align 8, !alias.scope !3, !noalias !4
  %t1846 = add i64 %r1845, 48
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %gmp1848 = inttoptr i64 %t1846 to ptr
  store i64 %r1847, ptr %gmp1848, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a65ac word 0xb9003bf6
  %r1849.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1849 = load i64, ptr %r1849.p, align 8, !alias.scope !3, !noalias !4
  %t1850 = add i64 %r1849, 56
  %r1851.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1851 = load i64, ptr %r1851.p, align 8, !alias.scope !3, !noalias !4
  %c1852 = trunc i64 %r1851 to i32
  %gmp1853 = inttoptr i64 %t1850 to ptr
  store i32 %c1852, ptr %gmp1853, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a65b0 word 0xf9400008
  %r1854.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1854 = load i64, ptr %r1854.p, align 8, !alias.scope !3, !noalias !4
  %gmp1855 = inttoptr i64 %r1854 to ptr
  %gml1856 = load i64, ptr %gmp1855, align 1, !alias.scope !4, !noalias !3
  %wp1857 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1856, ptr %wp1857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65b4 word 0xf9400108
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %gmp1859 = inttoptr i64 %r1858 to ptr
  %gml1860 = load i64, ptr %gmp1859, align 1, !alias.scope !4, !noalias !3
  %wp1861 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1860, ptr %wp1861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a65b8 word 0xd63f0100
  %r1862.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1862 = load i64, ptr %r1862.p, align 8, !alias.scope !3, !noalias !4
  %fp1863 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1862, ptr %fp1863, align 8, !alias.scope !3, !noalias !4
  %wp1864 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468348, ptr %wp1864, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a65bc word 0x17fffef1
  br label %L_8001a6180
L_8001a65e8_ft:
  ; @pc 0x8001a65e8 word 0x97ff58f8
  %wp1914 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361468396, ptr %wp1914, align 8, !alias.scope !3, !noalias !4
  call void @f_80017c9c8(ptr %c)
  br label %L_8001a65ec
L_8001a65f4_ft:
  ; @pc 0x8001a65f4 word 0x17ffff37
  br label %L_8001a62d0
L_8001a6604_ft:
  ; @pc 0x8001a6604 word 0x3942b2ae
  %r1950.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1950 = load i64, ptr %r1950.p, align 8, !alias.scope !3, !noalias !4
  %t1951 = add i64 %r1950, 172
  %gmp1952 = inttoptr i64 %t1951 to ptr
  %gml1953 = load i8, ptr %gmp1952, align 1, !alias.scope !4, !noalias !3
  %c1954 = zext i8 %gml1953 to i64
  %wp1955 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1954, ptr %wp1955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6608 word 0x5100058c
  %r1956.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1956 = load i64, ptr %r1956.p, align 8, !alias.scope !3, !noalias !4
  %c1957 = trunc i64 %r1956 to i32
  %t1958 = sub i32 %c1957, 1
  %c1959 = zext i32 %t1958 to i64
  %wp1960 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1959, ptr %wp1960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a660c word 0xaa2c03ed
  %r1961.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1961 = load i64, ptr %r1961.p, align 8, !alias.scope !3, !noalias !4
  %t1962 = xor i64 %r1961, -1
  %t1963 = or i64 0, %t1962
  %wp1964 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1963, ptr %wp1964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6610 word 0x3500252e
  %r1965.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1965 = load i64, ptr %r1965.p, align 8, !alias.scope !3, !noalias !4
  %c1966 = trunc i64 %r1965 to i32
  %cmp1967 = icmp ne i32 %c1966, 0
  br i1 %cmp1967, label %L_8001a6ab4, label %L_8001a6614_ft
L_8001a6614_ft:
  ; @pc 0x8001a6614 word 0xf9000beb
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %t1969 = add i64 %r1968, 16
  %r1970.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1970 = load i64, ptr %r1970.p, align 8, !alias.scope !3, !noalias !4
  %gmp1971 = inttoptr i64 %t1969 to ptr
  store i64 %r1970, ptr %gmp1971, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6618
L_8001a6644_ft:
  ; @pc 0x8001a6644 word 0x17ffff23
  br label %L_8001a62d0
L_8001a66a8_ft:
  ; @pc 0x8001a66a8 word 0xf9400bea
  %r2208.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2208 = load i64, ptr %r2208.p, align 8, !alias.scope !3, !noalias !4
  %t2209 = add i64 %r2208, 16
  %gmp2210 = inttoptr i64 %t2209 to ptr
  %gml2211 = load i64, ptr %gmp2210, align 1, !alias.scope !4, !noalias !3
  %wp2212 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2211, ptr %wp2212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66ac word 0x72003d1f
  %r2213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2213 = load i64, ptr %r2213.p, align 8, !alias.scope !3, !noalias !4
  %c2214 = trunc i64 %r2213 to i32
  %t2215 = and i32 %c2214, 65535
  %fn2216 = icmp slt i32 %t2215, 0
  %fz2217 = icmp eq i32 %t2215, 0
  %nz2218 = zext i1 %fn2216 to i64
  %zz2219 = zext i1 %fz2217 to i64
  %ns2220 = shl i64 %nz2218, 31
  %zs2221 = shl i64 %zz2219, 30
  %nzcv2222 = or i64 %ns2220, %zs2221
  %wp2223 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2222, ptr %wp2223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66b0 word 0x79002548
  %r2224.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2224 = load i64, ptr %r2224.p, align 8, !alias.scope !3, !noalias !4
  %t2225 = add i64 %r2224, 18
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %c2227 = trunc i64 %r2226 to i32
  %c2228 = trunc i32 %c2227 to i16
  %gmp2229 = inttoptr i64 %t2225 to ptr
  store i16 %c2228, ptr %gmp2229, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a66b4 word 0x540000a0
  %r2230.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2230 = load i64, ptr %r2230.p, align 8, !alias.scope !3, !noalias !4
  %fsh2232 = lshr i64 %r2230, 30
  %cond2231 = trunc i64 %fsh2232 to i1
  br i1 %cond2231, label %L_8001a66c8, label %L_8001a66b8_ft
L_8001a66b8_ft:
  ; @pc 0x8001a66b8 word 0x8b090109
  %r2233.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2233 = load i64, ptr %r2233.p, align 8, !alias.scope !3, !noalias !4
  %r2234.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2234 = load i64, ptr %r2234.p, align 8, !alias.scope !3, !noalias !4
  %t2235 = add i64 %r2233, %r2234
  %wp2236 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2235, ptr %wp2236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66bc word 0xf9400be8
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %t2238 = add i64 %r2237, 16
  %gmp2239 = inttoptr i64 %t2238 to ptr
  %gml2240 = load i64, ptr %gmp2239, align 1, !alias.scope !4, !noalias !3
  %wp2241 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2240, ptr %wp2241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66c0 word 0xb2400108
  %r2242.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2242 = load i64, ptr %r2242.p, align 8, !alias.scope !3, !noalias !4
  %t2243 = or i64 %r2242, 1
  %wp2244 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2243, ptr %wp2244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66c4 word 0xf81f8128
  %r2245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2245 = load i64, ptr %r2245.p, align 8, !alias.scope !3, !noalias !4
  %t2246 = add i64 %r2245, -8
  %r2247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2247 = load i64, ptr %r2247.p, align 8, !alias.scope !3, !noalias !4
  %gmp2248 = inttoptr i64 %t2246 to ptr
  store i64 %r2247, ptr %gmp2248, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a66c8
L_8001a66e0_ft:
  ; @pc 0x8001a66e0 word 0xf940050a
  %r2274.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2274 = load i64, ptr %r2274.p, align 8, !alias.scope !3, !noalias !4
  %t2275 = add i64 %r2274, 8
  %gmp2276 = inttoptr i64 %t2275 to ptr
  %gml2277 = load i64, ptr %gmp2276, align 1, !alias.scope !4, !noalias !3
  %wp2278 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2277, ptr %wp2278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66e4 word 0xf900052a
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %t2280 = add i64 %r2279, 8
  %r2281.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2281 = load i64, ptr %r2281.p, align 8, !alias.scope !3, !noalias !4
  %gmp2282 = inttoptr i64 %t2280 to ptr
  store i64 %r2281, ptr %gmp2282, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a66e8
L_8001a66f0_ft:
  ; @pc 0x8001a66f0 word 0xf940010a
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %gmp2291 = inttoptr i64 %r2290 to ptr
  %gml2292 = load i64, ptr %gmp2291, align 1, !alias.scope !4, !noalias !3
  %wp2293 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2292, ptr %wp2293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a66f4 word 0xf900012a
  %r2294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2294 = load i64, ptr %r2294.p, align 8, !alias.scope !3, !noalias !4
  %r2295.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2295 = load i64, ptr %r2295.p, align 8, !alias.scope !3, !noalias !4
  %gmp2296 = inttoptr i64 %r2294 to ptr
  store i64 %r2295, ptr %gmp2296, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a66f8
L_8001a6728_ft:
  ; @pc 0x8001a6728 word 0xf9400008
  %r2371.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2371 = load i64, ptr %r2371.p, align 8, !alias.scope !3, !noalias !4
  %gmp2372 = inttoptr i64 %r2371 to ptr
  %gml2373 = load i64, ptr %gmp2372, align 1, !alias.scope !4, !noalias !3
  %wp2374 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2373, ptr %wp2374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a672c word 0xf9000001
  %r2375.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2375 = load i64, ptr %r2375.p, align 8, !alias.scope !3, !noalias !4
  %r2376.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2376 = load i64, ptr %r2376.p, align 8, !alias.scope !3, !noalias !4
  %gmp2377 = inttoptr i64 %r2375 to ptr
  store i64 %r2376, ptr %gmp2377, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6730 word 0xa9000028
  %r2378.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2378 = load i64, ptr %r2378.p, align 8, !alias.scope !3, !noalias !4
  %t2379 = add i64 %r2378, 8
  %r2380.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2380 = load i64, ptr %r2380.p, align 8, !alias.scope !3, !noalias !4
  %gmp2381 = inttoptr i64 %r2378 to ptr
  store i64 %r2380, ptr %gmp2381, align 1, !alias.scope !4, !noalias !3
  %r2382.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2382 = load i64, ptr %r2382.p, align 8, !alias.scope !3, !noalias !4
  %gmp2383 = inttoptr i64 %t2379 to ptr
  store i64 %r2382, ptr %gmp2383, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6734 word 0xb4000048
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %cmp2385 = icmp eq i64 %r2384, 0
  br i1 %cmp2385, label %L_8001a673c, label %L_8001a6738_ft
L_8001a6738_ft:
  ; @pc 0x8001a6738 word 0xf9000501
  %r2386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2386 = load i64, ptr %r2386.p, align 8, !alias.scope !3, !noalias !4
  %t2387 = add i64 %r2386, 8
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %gmp2389 = inttoptr i64 %t2387 to ptr
  store i64 %r2388, ptr %gmp2389, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a673c
L_8001a6750_ft:
  ; @pc 0x8001a6750 word 0xf9400be8
  %r2431.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2431 = load i64, ptr %r2431.p, align 8, !alias.scope !3, !noalias !4
  %t2432 = add i64 %r2431, 16
  %gmp2433 = inttoptr i64 %t2432 to ptr
  %gml2434 = load i64, ptr %gmp2433, align 1, !alias.scope !4, !noalias !3
  %wp2435 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2434, ptr %wp2435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6754 word 0x79402509
  %r2436.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2436 = load i64, ptr %r2436.p, align 8, !alias.scope !3, !noalias !4
  %t2437 = add i64 %r2436, 18
  %gmp2438 = inttoptr i64 %t2437 to ptr
  %gml2439 = load i16, ptr %gmp2438, align 1, !alias.scope !4, !noalias !3
  %c2440 = zext i16 %gml2439 to i64
  %wp2441 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2440, ptr %wp2441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6758 word 0x8b080328
  %r2442.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2442 = load i64, ptr %r2442.p, align 8, !alias.scope !3, !noalias !4
  %r2443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2443 = load i64, ptr %r2443.p, align 8, !alias.scope !3, !noalias !4
  %t2444 = add i64 %r2442, %r2443
  %wp2445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2444, ptr %wp2445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a675c word 0x8b090108
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %r2447.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2447 = load i64, ptr %r2447.p, align 8, !alias.scope !3, !noalias !4
  %t2448 = add i64 %r2446, %r2447
  %wp2449 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2448, ptr %wp2449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6760 word 0xd1008369
  %r2450.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2450 = load i64, ptr %r2450.p, align 8, !alias.scope !3, !noalias !4
  %t2451 = sub i64 %r2450, 32
  %wp2452 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2451, ptr %wp2452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6764 word 0xf8020d1f
  %r2453.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2453 = load i64, ptr %r2453.p, align 8, !alias.scope !3, !noalias !4
  %t2454 = add i64 %r2453, 32
  %gmp2455 = inttoptr i64 %t2454 to ptr
  store i64 0, ptr %gmp2455, align 1, !alias.scope !4, !noalias !3
  %wp2456 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2454, ptr %wp2456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6768 word 0xf9000d09
  %r2457.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2457 = load i64, ptr %r2457.p, align 8, !alias.scope !3, !noalias !4
  %t2458 = add i64 %r2457, 24
  %r2459.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2459 = load i64, ptr %r2459.p, align 8, !alias.scope !3, !noalias !4
  %gmp2460 = inttoptr i64 %t2458 to ptr
  store i64 %r2459, ptr %gmp2460, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a676c word 0x529fffe9
  %c2461 = zext i32 65535 to i64
  %wp2462 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2461, ptr %wp2462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6770 word 0xb900111f
  %r2463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2463 = load i64, ptr %r2463.p, align 8, !alias.scope !3, !noalias !4
  %t2464 = add i64 %r2463, 16
  %gmp2465 = inttoptr i64 %t2464 to ptr
  store i32 0, ptr %gmp2465, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6774 word 0xf900051f
  %r2466.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2466 = load i64, ptr %r2466.p, align 8, !alias.scope !3, !noalias !4
  %t2467 = add i64 %r2466, 8
  %gmp2468 = inttoptr i64 %t2467 to ptr
  store i64 0, ptr %gmp2468, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6778 word 0x79002109
  %r2469.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2469 = load i64, ptr %r2469.p, align 8, !alias.scope !3, !noalias !4
  %t2470 = add i64 %r2469, 16
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %c2472 = trunc i64 %r2471 to i32
  %c2473 = trunc i32 %c2472 to i16
  %gmp2474 = inttoptr i64 %t2470 to ptr
  store i16 %c2473, ptr %gmp2474, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a677c word 0xb980c6a9
  %r2475.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2475 = load i64, ptr %r2475.p, align 8, !alias.scope !3, !noalias !4
  %t2476 = add i64 %r2475, 196
  %gmp2477 = inttoptr i64 %t2476 to ptr
  %gml2478 = load i32, ptr %gmp2477, align 1, !alias.scope !4, !noalias !3
  %c2479 = sext i32 %gml2478 to i64
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2479, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6780 word 0xb4001036
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %cmp2482 = icmp eq i64 %r2481, 0
  br i1 %cmp2482, label %L_8001a6984, label %L_8001a6784_ft
L_8001a6784_ft:
  ; @pc 0x8001a6784 word 0x8b16012a
  %r2483.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2483 = load i64, ptr %r2483.p, align 8, !alias.scope !3, !noalias !4
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %t2485 = add i64 %r2483, %r2484
  %wp2486 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2485, ptr %wp2486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6788 word 0x8b090108
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %r2488.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2488 = load i64, ptr %r2488.p, align 8, !alias.scope !3, !noalias !4
  %t2489 = add i64 %r2487, %r2488
  %wp2490 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2489, ptr %wp2490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a678c word 0xf9400149
  %r2491.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2491 = load i64, ptr %r2491.p, align 8, !alias.scope !3, !noalias !4
  %gmp2492 = inttoptr i64 %r2491 to ptr
  %gml2493 = load i64, ptr %gmp2492, align 1, !alias.scope !4, !noalias !3
  %wp2494 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2493, ptr %wp2494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6790 word 0xf9000148
  %r2495.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2495 = load i64, ptr %r2495.p, align 8, !alias.scope !3, !noalias !4
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2496 = load i64, ptr %r2496.p, align 8, !alias.scope !3, !noalias !4
  %gmp2497 = inttoptr i64 %r2495 to ptr
  store i64 %r2496, ptr %gmp2497, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6794 word 0xa9002909
  %r2498.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2498 = load i64, ptr %r2498.p, align 8, !alias.scope !3, !noalias !4
  %t2499 = add i64 %r2498, 8
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %gmp2501 = inttoptr i64 %r2498 to ptr
  store i64 %r2500, ptr %gmp2501, align 1, !alias.scope !4, !noalias !3
  %r2502.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2502 = load i64, ptr %r2502.p, align 8, !alias.scope !3, !noalias !4
  %gmp2503 = inttoptr i64 %t2499 to ptr
  store i64 %r2502, ptr %gmp2503, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6798 word 0xb4000049
  %r2504.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2504 = load i64, ptr %r2504.p, align 8, !alias.scope !3, !noalias !4
  %cmp2505 = icmp eq i64 %r2504, 0
  br i1 %cmp2505, label %L_8001a67a0, label %L_8001a679c
L_8001a67c0_ft:
  ; @pc 0x8001a67c0 word 0xaa1f03ec
  %t2562 = or i64 0, 0
  %wp2563 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2562, ptr %wp2563, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a67c4
L_8001a67d0_ft:
  ; @pc 0x8001a67d0 word 0xb400008c
  %r2595.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2595 = load i64, ptr %r2595.p, align 8, !alias.scope !3, !noalias !4
  %cmp2596 = icmp eq i64 %r2595, 0
  br i1 %cmp2596, label %L_8001a67e0, label %L_8001a67d4_ft
L_8001a67d4_ft:
  ; @pc 0x8001a67d4 word 0xf9400d8e
  %r2597.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2597 = load i64, ptr %r2597.p, align 8, !alias.scope !3, !noalias !4
  %t2598 = add i64 %r2597, 24
  %gmp2599 = inttoptr i64 %t2598 to ptr
  %gml2600 = load i64, ptr %gmp2599, align 1, !alias.scope !4, !noalias !3
  %wp2601 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2600, ptr %wp2601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67d8 word 0xeb0d01df
  %r2602.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2602 = load i64, ptr %r2602.p, align 8, !alias.scope !3, !noalias !4
  %r2603.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2603 = load i64, ptr %r2603.p, align 8, !alias.scope !3, !noalias !4
  %t2604 = sub i64 %r2602, %r2603
  %fn2605 = icmp slt i64 %t2604, 0
  %fz2606 = icmp eq i64 %t2604, 0
  %fc2607 = icmp uge i64 %r2602, %r2603
  %fx12608 = xor i64 %r2602, %r2603
  %fx22609 = xor i64 %r2602, %t2604
  %fva2610 = and i64 %fx12608, %fx22609
  %fv2611 = icmp slt i64 %fva2610, 0
  %nz2612 = zext i1 %fn2605 to i64
  %zz2613 = zext i1 %fz2606 to i64
  %cz2614 = zext i1 %fc2607 to i64
  %vz2615 = zext i1 %fv2611 to i64
  %ns2616 = shl i64 %nz2612, 31
  %zs2617 = shl i64 %zz2613, 30
  %cs2618 = shl i64 %cz2614, 29
  %vs2619 = shl i64 %vz2615, 28
  %nzor2620 = or i64 %ns2616, %zs2617
  %cvor2621 = or i64 %cs2618, %vs2619
  %nzcv2622 = or i64 %nzor2620, %cvor2621
  %wp2623 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2622, ptr %wp2623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a67dc word 0x54000049
  %r2624.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2624 = load i64, ptr %r2624.p, align 8, !alias.scope !3, !noalias !4
  %fsh2626 = lshr i64 %r2624, 29
  %ftr2627 = trunc i64 %fsh2626 to i1
  %fsh2628 = lshr i64 %r2624, 30
  %ftr2629 = trunc i64 %fsh2628 to i1
  %fnz2630 = xor i1 %ftr2629, true
  %fhi2631 = and i1 %ftr2627, %fnz2630
  %cond2625 = xor i1 %fhi2631, true
  br i1 %cond2625, label %L_8001a67e4, label %L_8001a67e0
L_8001a67fc_ft:
  ; @pc 0x8001a67fc word 0xf9400d9c
  %r2676.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2676 = load i64, ptr %r2676.p, align 8, !alias.scope !3, !noalias !4
  %t2677 = add i64 %r2676, 24
  %gmp2678 = inttoptr i64 %t2677 to ptr
  %gml2679 = load i64, ptr %gmp2678, align 1, !alias.scope !4, !noalias !3
  %wp2680 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2679, ptr %wp2680, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6800
L_8001a6824_ft:
  ; @pc 0x8001a6824 word 0xf9000549
  %r2743.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2743 = load i64, ptr %r2743.p, align 8, !alias.scope !3, !noalias !4
  %t2744 = add i64 %r2743, 8
  %r2745.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2745 = load i64, ptr %r2745.p, align 8, !alias.scope !3, !noalias !4
  %gmp2746 = inttoptr i64 %t2744 to ptr
  store i64 %r2745, ptr %gmp2746, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6828 word 0xf9400509
  %r2747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2747 = load i64, ptr %r2747.p, align 8, !alias.scope !3, !noalias !4
  %t2748 = add i64 %r2747, 8
  %gmp2749 = inttoptr i64 %t2748 to ptr
  %gml2750 = load i64, ptr %gmp2749, align 1, !alias.scope !4, !noalias !3
  %wp2751 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2750, ptr %wp2751, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a682c
L_8001a6830_ft:
  ; @pc 0x8001a6830 word 0xf940010a
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %gmp2755 = inttoptr i64 %r2754 to ptr
  %gml2756 = load i64, ptr %gmp2755, align 1, !alias.scope !4, !noalias !3
  %wp2757 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2756, ptr %wp2757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6834 word 0xf900012a
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %r2759.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2759 = load i64, ptr %r2759.p, align 8, !alias.scope !3, !noalias !4
  %gmp2760 = inttoptr i64 %r2758 to ptr
  store i64 %r2759, ptr %gmp2760, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6838
L_8001a6864_ft:
  ; @pc 0x8001a6864 word 0xf9400008
  %r2830.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2830 = load i64, ptr %r2830.p, align 8, !alias.scope !3, !noalias !4
  %gmp2831 = inttoptr i64 %r2830 to ptr
  %gml2832 = load i64, ptr %gmp2831, align 1, !alias.scope !4, !noalias !3
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6868 word 0xf9000001
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %gmp2836 = inttoptr i64 %r2834 to ptr
  store i64 %r2835, ptr %gmp2836, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a686c word 0xa9000028
  %r2837.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2837 = load i64, ptr %r2837.p, align 8, !alias.scope !3, !noalias !4
  %t2838 = add i64 %r2837, 8
  %r2839.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2839 = load i64, ptr %r2839.p, align 8, !alias.scope !3, !noalias !4
  %gmp2840 = inttoptr i64 %r2837 to ptr
  store i64 %r2839, ptr %gmp2840, align 1, !alias.scope !4, !noalias !3
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %gmp2842 = inttoptr i64 %t2838 to ptr
  store i64 %r2841, ptr %gmp2842, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6870 word 0xb4000048
  %r2843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2843 = load i64, ptr %r2843.p, align 8, !alias.scope !3, !noalias !4
  %cmp2844 = icmp eq i64 %r2843, 0
  br i1 %cmp2844, label %L_8001a6878, label %L_8001a6874_ft
L_8001a6874_ft:
  ; @pc 0x8001a6874 word 0xf9000501
  %r2845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2845 = load i64, ptr %r2845.p, align 8, !alias.scope !3, !noalias !4
  %t2846 = add i64 %r2845, 8
  %r2847.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2847 = load i64, ptr %r2847.p, align 8, !alias.scope !3, !noalias !4
  %gmp2848 = inttoptr i64 %t2846 to ptr
  store i64 %r2847, ptr %gmp2848, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6878
L_8001a688c_ft:
  ; @pc 0x8001a688c word 0x8b0c0328
  %r2890.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2890 = load i64, ptr %r2890.p, align 8, !alias.scope !3, !noalias !4
  %r2891.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2891 = load i64, ptr %r2891.p, align 8, !alias.scope !3, !noalias !4
  %t2892 = add i64 %r2890, %r2891
  %wp2893 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2892, ptr %wp2893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6890 word 0xd1008369
  %r2894.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2894 = load i64, ptr %r2894.p, align 8, !alias.scope !3, !noalias !4
  %t2895 = sub i64 %r2894, 32
  %wp2896 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2895, ptr %wp2896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6894 word 0x8b170108
  %r2897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2897 = load i64, ptr %r2897.p, align 8, !alias.scope !3, !noalias !4
  %r2898.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2898 = load i64, ptr %r2898.p, align 8, !alias.scope !3, !noalias !4
  %t2899 = add i64 %r2897, %r2898
  %wp2900 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2899, ptr %wp2900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6898 word 0xf8020d1f
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %t2902 = add i64 %r2901, 32
  %gmp2903 = inttoptr i64 %t2902 to ptr
  store i64 0, ptr %gmp2903, align 1, !alias.scope !4, !noalias !3
  %wp2904 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2902, ptr %wp2904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a689c word 0xf9000d09
  %r2905.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2905 = load i64, ptr %r2905.p, align 8, !alias.scope !3, !noalias !4
  %t2906 = add i64 %r2905, 24
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %gmp2908 = inttoptr i64 %t2906 to ptr
  store i64 %r2907, ptr %gmp2908, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68a0 word 0x529fffe9
  %c2909 = zext i32 65535 to i64
  %wp2910 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2909, ptr %wp2910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68a4 word 0xb900111f
  %r2911.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2911 = load i64, ptr %r2911.p, align 8, !alias.scope !3, !noalias !4
  %t2912 = add i64 %r2911, 16
  %gmp2913 = inttoptr i64 %t2912 to ptr
  store i32 0, ptr %gmp2913, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68a8 word 0xf900051f
  %r2914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2914 = load i64, ptr %r2914.p, align 8, !alias.scope !3, !noalias !4
  %t2915 = add i64 %r2914, 8
  %gmp2916 = inttoptr i64 %t2915 to ptr
  store i64 0, ptr %gmp2916, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68ac word 0x79002109
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %t2918 = add i64 %r2917, 16
  %r2919.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2919 = load i64, ptr %r2919.p, align 8, !alias.scope !3, !noalias !4
  %c2920 = trunc i64 %r2919 to i32
  %c2921 = trunc i32 %c2920 to i16
  %gmp2922 = inttoptr i64 %t2918 to ptr
  store i16 %c2921, ptr %gmp2922, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68b0 word 0xb980c6a9
  %r2923.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2923 = load i64, ptr %r2923.p, align 8, !alias.scope !3, !noalias !4
  %t2924 = add i64 %r2923, 196
  %gmp2925 = inttoptr i64 %t2924 to ptr
  %gml2926 = load i32, ptr %gmp2925, align 1, !alias.scope !4, !noalias !3
  %c2927 = sext i32 %gml2926 to i64
  %wp2928 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2927, ptr %wp2928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68b4 word 0xb5000316
  %r2929.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2929 = load i64, ptr %r2929.p, align 8, !alias.scope !3, !noalias !4
  %cmp2930 = icmp ne i64 %r2929, 0
  br i1 %cmp2930, label %L_8001a6914, label %L_8001a68b8_ft
L_8001a68b8_ft:
  ; @pc 0x8001a68b8 word 0x8b090108
  %r2931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2931 = load i64, ptr %r2931.p, align 8, !alias.scope !3, !noalias !4
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %t2933 = add i64 %r2931, %r2932
  %wp2934 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2933, ptr %wp2934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68bc word 0xf9400349
  %r2935.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2935 = load i64, ptr %r2935.p, align 8, !alias.scope !3, !noalias !4
  %gmp2936 = inttoptr i64 %r2935 to ptr
  %gml2937 = load i64, ptr %gmp2936, align 1, !alias.scope !4, !noalias !3
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a68c0 word 0xf9000348
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %r2940.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2940 = load i64, ptr %r2940.p, align 8, !alias.scope !3, !noalias !4
  %gmp2941 = inttoptr i64 %r2939 to ptr
  store i64 %r2940, ptr %gmp2941, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68c4 word 0xa9006909
  %r2942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2942 = load i64, ptr %r2942.p, align 8, !alias.scope !3, !noalias !4
  %t2943 = add i64 %r2942, 8
  %r2944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2944 = load i64, ptr %r2944.p, align 8, !alias.scope !3, !noalias !4
  %gmp2945 = inttoptr i64 %r2942 to ptr
  store i64 %r2944, ptr %gmp2945, align 1, !alias.scope !4, !noalias !3
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  %gmp2947 = inttoptr i64 %t2943 to ptr
  store i64 %r2946, ptr %gmp2947, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a68c8 word 0xb4000049
  %r2948.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2948 = load i64, ptr %r2948.p, align 8, !alias.scope !3, !noalias !4
  %cmp2949 = icmp eq i64 %r2948, 0
  br i1 %cmp2949, label %L_8001a68d0, label %L_8001a68cc
L_8001a690c_ft:
  ; @pc 0x8001a690c word 0xf9000d9c
  %r3032.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3032 = load i64, ptr %r3032.p, align 8, !alias.scope !3, !noalias !4
  %t3033 = add i64 %r3032, 24
  %r3034.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3034 = load i64, ptr %r3034.p, align 8, !alias.scope !3, !noalias !4
  %gmp3035 = inttoptr i64 %t3033 to ptr
  store i64 %r3034, ptr %gmp3035, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6910 word 0x17fffff3
  br label %L_8001a68dc
L_8001a692c_ft:
  ; @pc 0x8001a692c word 0x17ffffe9
  br label %L_8001a68d0
L_8001a6948_ft:
  ; @pc 0x8001a6948 word 0xaa1f03ec
  %t3095 = or i64 0, 0
  %wp3096 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3095, ptr %wp3096, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a694c
L_8001a6958_ft:
  ; @pc 0x8001a6958 word 0xb400008c
  %r3128.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3128 = load i64, ptr %r3128.p, align 8, !alias.scope !3, !noalias !4
  %cmp3129 = icmp eq i64 %r3128, 0
  br i1 %cmp3129, label %L_8001a6968, label %L_8001a695c_ft
L_8001a695c_ft:
  ; @pc 0x8001a695c word 0xf9400d8e
  %r3130.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3130 = load i64, ptr %r3130.p, align 8, !alias.scope !3, !noalias !4
  %t3131 = add i64 %r3130, 24
  %gmp3132 = inttoptr i64 %t3131 to ptr
  %gml3133 = load i64, ptr %gmp3132, align 1, !alias.scope !4, !noalias !3
  %wp3134 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3133, ptr %wp3134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6960 word 0xeb0d01df
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %r3136.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3136 = load i64, ptr %r3136.p, align 8, !alias.scope !3, !noalias !4
  %t3137 = sub i64 %r3135, %r3136
  %fn3138 = icmp slt i64 %t3137, 0
  %fz3139 = icmp eq i64 %t3137, 0
  %fc3140 = icmp uge i64 %r3135, %r3136
  %fx13141 = xor i64 %r3135, %r3136
  %fx23142 = xor i64 %r3135, %t3137
  %fva3143 = and i64 %fx13141, %fx23142
  %fv3144 = icmp slt i64 %fva3143, 0
  %nz3145 = zext i1 %fn3138 to i64
  %zz3146 = zext i1 %fz3139 to i64
  %cz3147 = zext i1 %fc3140 to i64
  %vz3148 = zext i1 %fv3144 to i64
  %ns3149 = shl i64 %nz3145, 31
  %zs3150 = shl i64 %zz3146, 30
  %cs3151 = shl i64 %cz3147, 29
  %vs3152 = shl i64 %vz3148, 28
  %nzor3153 = or i64 %ns3149, %zs3150
  %cvor3154 = or i64 %cs3151, %vs3152
  %nzcv3155 = or i64 %nzor3153, %cvor3154
  %wp3156 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3155, ptr %wp3156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6964 word 0x54000042
  %r3157.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3157 = load i64, ptr %r3157.p, align 8, !alias.scope !3, !noalias !4
  %fsh3159 = lshr i64 %r3157, 29
  %cond3158 = trunc i64 %fsh3159 to i1
  br i1 %cond3158, label %L_8001a696c, label %L_8001a6968
L_8001a6980_ft:
  ; @pc 0x8001a6980 word 0x17ffff9e
  br label %L_8001a67f8
L_8001a6998_ft:
  ; @pc 0x8001a6998 word 0x17ffff82
  br label %L_8001a67a0
L_8001a69c8_ft:
  ; @pc 0x8001a69c8 word 0x17ffff8c
  br label %L_8001a67f8
L_8001a69d4_ft:
  ; @pc 0x8001a69d4 word 0xf9400bec
  %r3350.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3350 = load i64, ptr %r3350.p, align 8, !alias.scope !3, !noalias !4
  %t3351 = add i64 %r3350, 16
  %gmp3352 = inttoptr i64 %t3351 to ptr
  %gml3353 = load i64, ptr %gmp3352, align 1, !alias.scope !4, !noalias !3
  %wp3354 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3353, ptr %wp3354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69d8 word 0x8b190368
  %r3355.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3355 = load i64, ptr %r3355.p, align 8, !alias.scope !3, !noalias !4
  %r3356.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3356 = load i64, ptr %r3356.p, align 8, !alias.scope !3, !noalias !4
  %t3357 = add i64 %r3355, %r3356
  %wp3358 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3357, ptr %wp3358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69dc word 0xf9000d88
  %r3359.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3359 = load i64, ptr %r3359.p, align 8, !alias.scope !3, !noalias !4
  %t3360 = add i64 %r3359, 24
  %r3361.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3361 = load i64, ptr %r3361.p, align 8, !alias.scope !3, !noalias !4
  %gmp3362 = inttoptr i64 %t3360 to ptr
  store i64 %r3361, ptr %gmp3362, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a69e0 word 0x17ffffbf
  br label %L_8001a68dc
L_8001a69ec_ft:
  ; @pc 0x8001a69ec word 0xf9401ea0
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %t3389 = add i64 %r3388, 56
  %gmp3390 = inttoptr i64 %t3389 to ptr
  %gml3391 = load i64, ptr %gmp3390, align 1, !alias.scope !4, !noalias !3
  %wp3392 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3391, ptr %wp3392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69f0 word 0xb940cea1
  %r3393.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3393 = load i64, ptr %r3393.p, align 8, !alias.scope !3, !noalias !4
  %t3394 = add i64 %r3393, 204
  %gmp3395 = inttoptr i64 %t3394 to ptr
  %gml3396 = load i32, ptr %gmp3395, align 1, !alias.scope !4, !noalias !3
  %c3397 = zext i32 %gml3396 to i64
  %wp3398 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3397, ptr %wp3398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69f4 word 0xf9400008
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %gmp3400 = inttoptr i64 %r3399 to ptr
  %gml3401 = load i64, ptr %gmp3400, align 1, !alias.scope !4, !noalias !3
  %wp3402 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3401, ptr %wp3402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69f8 word 0xf9404508
  %r3403.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3403 = load i64, ptr %r3403.p, align 8, !alias.scope !3, !noalias !4
  %t3404 = add i64 %r3403, 136
  %gmp3405 = inttoptr i64 %t3404 to ptr
  %gml3406 = load i64, ptr %gmp3405, align 1, !alias.scope !4, !noalias !3
  %wp3407 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3406, ptr %wp3407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a69fc word 0xd63f0100
  %r3408.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3408 = load i64, ptr %r3408.p, align 8, !alias.scope !3, !noalias !4
  %fp3409 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3408, ptr %fp3409, align 8, !alias.scope !3, !noalias !4
  %wp3410 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469440, ptr %wp3410, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a6a00 word 0xeb00039f
  %r3411.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3411 = load i64, ptr %r3411.p, align 8, !alias.scope !3, !noalias !4
  %r3412.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3412 = load i64, ptr %r3412.p, align 8, !alias.scope !3, !noalias !4
  %t3413 = sub i64 %r3411, %r3412
  %fn3414 = icmp slt i64 %t3413, 0
  %fz3415 = icmp eq i64 %t3413, 0
  %fc3416 = icmp uge i64 %r3411, %r3412
  %fx13417 = xor i64 %r3411, %r3412
  %fx23418 = xor i64 %r3411, %t3413
  %fva3419 = and i64 %fx13417, %fx23418
  %fv3420 = icmp slt i64 %fva3419, 0
  %nz3421 = zext i1 %fn3414 to i64
  %zz3422 = zext i1 %fz3415 to i64
  %cz3423 = zext i1 %fc3416 to i64
  %vz3424 = zext i1 %fv3420 to i64
  %ns3425 = shl i64 %nz3421, 31
  %zs3426 = shl i64 %zz3422, 30
  %cs3427 = shl i64 %cz3423, 29
  %vs3428 = shl i64 %vz3424, 28
  %nzor3429 = or i64 %ns3425, %zs3426
  %cvor3430 = or i64 %cs3427, %vs3428
  %nzcv3431 = or i64 %nzor3429, %cvor3430
  %wp3432 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3431, ptr %wp3432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a04 word 0xf90007e0
  %r3433.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3433 = load i64, ptr %r3433.p, align 8, !alias.scope !3, !noalias !4
  %t3434 = add i64 %r3433, 8
  %r3435.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3435 = load i64, ptr %r3435.p, align 8, !alias.scope !3, !noalias !4
  %gmp3436 = inttoptr i64 %t3434 to ptr
  store i64 %r3435, ptr %gmp3436, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a08 word 0x54ffd4e8
  %r3437.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3437 = load i64, ptr %r3437.p, align 8, !alias.scope !3, !noalias !4
  %fsh3439 = lshr i64 %r3437, 29
  %ftr3440 = trunc i64 %fsh3439 to i1
  %fsh3441 = lshr i64 %r3437, 30
  %ftr3442 = trunc i64 %fsh3441 to i1
  %fnz3443 = xor i1 %ftr3442, true
  %cond3438 = and i1 %ftr3440, %fnz3443
  br i1 %cond3438, label %L_8001a64a4, label %L_8001a6a0c_ft
L_8001a6a0c_ft:
  ; @pc 0x8001a6a0c word 0xf9401ea0
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %t3445 = add i64 %r3444, 56
  %gmp3446 = inttoptr i64 %t3445 to ptr
  %gml3447 = load i64, ptr %gmp3446, align 1, !alias.scope !4, !noalias !3
  %wp3448 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3447, ptr %wp3448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a10 word 0xb940cea2
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %t3450 = add i64 %r3449, 204
  %gmp3451 = inttoptr i64 %t3450 to ptr
  %gml3452 = load i32, ptr %gmp3451, align 1, !alias.scope !4, !noalias !3
  %c3453 = zext i32 %gml3452 to i64
  %wp3454 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3453, ptr %wp3454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a14 word 0xf94007e1
  %r3455.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3455 = load i64, ptr %r3455.p, align 8, !alias.scope !3, !noalias !4
  %t3456 = add i64 %r3455, 8
  %gmp3457 = inttoptr i64 %t3456 to ptr
  %gml3458 = load i64, ptr %gmp3457, align 1, !alias.scope !4, !noalias !3
  %wp3459 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml3458, ptr %wp3459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a18 word 0xf9400008
  %r3460.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3460 = load i64, ptr %r3460.p, align 8, !alias.scope !3, !noalias !4
  %gmp3461 = inttoptr i64 %r3460 to ptr
  %gml3462 = load i64, ptr %gmp3461, align 1, !alias.scope !4, !noalias !3
  %wp3463 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3462, ptr %wp3463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a1c word 0xf9401908
  %r3464.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3464 = load i64, ptr %r3464.p, align 8, !alias.scope !3, !noalias !4
  %t3465 = add i64 %r3464, 48
  %gmp3466 = inttoptr i64 %t3465 to ptr
  %gml3467 = load i64, ptr %gmp3466, align 1, !alias.scope !4, !noalias !3
  %wp3468 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3467, ptr %wp3468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a20 word 0xd63f0100
  %r3469.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3469 = load i64, ptr %r3469.p, align 8, !alias.scope !3, !noalias !4
  %fp3470 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3469, ptr %fp3470, align 8, !alias.scope !3, !noalias !4
  %wp3471 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361469476, ptr %wp3471, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a6a24 word 0xaa0003fa
  %r3472.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3472 = load i64, ptr %r3472.p, align 8, !alias.scope !3, !noalias !4
  %t3473 = or i64 0, %r3472
  %wp3474 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3473, ptr %wp3474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a28 word 0xb4ffba40
  %r3475.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3475 = load i64, ptr %r3475.p, align 8, !alias.scope !3, !noalias !4
  %cmp3476 = icmp eq i64 %r3475, 0
  br i1 %cmp3476, label %L_8001a6170, label %L_8001a6a2c_ft
L_8001a6a2c_ft:
  ; @pc 0x8001a6a2c word 0x17fffe60
  br label %L_8001a63ac
L_8001a6a3c_ft:
  ; @pc 0x8001a6a3c word 0xf9400b60
  %r3481.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3481 = load i64, ptr %r3481.p, align 8, !alias.scope !3, !noalias !4
  %t3482 = add i64 %r3481, 16
  %gmp3483 = inttoptr i64 %t3482 to ptr
  %gml3484 = load i64, ptr %gmp3483, align 1, !alias.scope !4, !noalias !3
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6a40 word 0xb4ffd9c0
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %cmp3487 = icmp eq i64 %r3486, 0
  br i1 %cmp3487, label %L_8001a6578, label %L_8001a6a44_ft
L_8001a6a44_ft:
  ; @pc 0x8001a6a44 word 0xa901dff5
  %r3488.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3488 = load i64, ptr %r3488.p, align 8, !alias.scope !3, !noalias !4
  %t3489 = add i64 %r3488, 24
  %t3490 = add i64 %t3489, 8
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %gmp3492 = inttoptr i64 %t3489 to ptr
  store i64 %r3491, ptr %gmp3492, align 1, !alias.scope !4, !noalias !3
  %r3493.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3493 = load i64, ptr %r3493.p, align 8, !alias.scope !3, !noalias !4
  %gmp3494 = inttoptr i64 %t3490 to ptr
  store i64 %r3493, ptr %gmp3494, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a48 word 0xb9002bf6
  %r3495.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3495 = load i64, ptr %r3495.p, align 8, !alias.scope !3, !noalias !4
  %t3496 = add i64 %r3495, 40
  %r3497.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3497 = load i64, ptr %r3497.p, align 8, !alias.scope !3, !noalias !4
  %c3498 = trunc i64 %r3497 to i32
  %gmp3499 = inttoptr i64 %t3496 to ptr
  store i32 %c3498, ptr %gmp3499, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a4c word 0xf9001bf9
  %r3500.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3500 = load i64, ptr %r3500.p, align 8, !alias.scope !3, !noalias !4
  %t3501 = add i64 %r3500, 48
  %r3502.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3502 = load i64, ptr %r3502.p, align 8, !alias.scope !3, !noalias !4
  %gmp3503 = inttoptr i64 %t3501 to ptr
  store i64 %r3502, ptr %gmp3503, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a50 word 0xb9003be9
  %r3504.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3504 = load i64, ptr %r3504.p, align 8, !alias.scope !3, !noalias !4
  %t3505 = add i64 %r3504, 56
  %r3506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3506 = load i64, ptr %r3506.p, align 8, !alias.scope !3, !noalias !4
  %c3507 = trunc i64 %r3506 to i32
  %gmp3508 = inttoptr i64 %t3505 to ptr
  store i32 %c3507, ptr %gmp3508, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6a54 word 0x17fffec5
  br label %L_8001a6568
L_8001a6abc_ft:
  ; @pc 0x8001a6abc word 0xf9000bff
  %r3618.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3618 = load i64, ptr %r3618.p, align 8, !alias.scope !3, !noalias !4
  %t3619 = add i64 %r3618, 16
  %gmp3620 = inttoptr i64 %t3619 to ptr
  store i64 0, ptr %gmp3620, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6ac0
L_8001a6ae0_ft:
  ; @pc 0x8001a6ae0 word 0x14000047
  br label %L_8001a6bfc
L_8001a6b08_ft:
  ; @pc 0x8001a6b08 word 0xf9400bef
  %r3745.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3745 = load i64, ptr %r3745.p, align 8, !alias.scope !3, !noalias !4
  %t3746 = add i64 %r3745, 16
  %gmp3747 = inttoptr i64 %t3746 to ptr
  %gml3748 = load i64, ptr %gmp3747, align 1, !alias.scope !4, !noalias !3
  %wp3749 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3748, ptr %wp3749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b0c word 0xb40000af
  %r3750.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3750 = load i64, ptr %r3750.p, align 8, !alias.scope !3, !noalias !4
  %cmp3751 = icmp eq i64 %r3750, 0
  br i1 %cmp3751, label %L_8001a6b20, label %L_8001a6b10_ft
L_8001a6b10_ft:
  ; @pc 0x8001a6b10 word 0xf9400bef
  %r3752.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3752 = load i64, ptr %r3752.p, align 8, !alias.scope !3, !noalias !4
  %t3753 = add i64 %r3752, 16
  %gmp3754 = inttoptr i64 %t3753 to ptr
  %gml3755 = load i64, ptr %gmp3754, align 1, !alias.scope !4, !noalias !3
  %wp3756 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3755, ptr %wp3756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b14 word 0xf9400def
  %r3757.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3757 = load i64, ptr %r3757.p, align 8, !alias.scope !3, !noalias !4
  %t3758 = add i64 %r3757, 24
  %gmp3759 = inttoptr i64 %t3758 to ptr
  %gml3760 = load i64, ptr %gmp3759, align 1, !alias.scope !4, !noalias !3
  %wp3761 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3760, ptr %wp3761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b18 word 0xeb0e01ff
  %r3762.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3762 = load i64, ptr %r3762.p, align 8, !alias.scope !3, !noalias !4
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 112
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
  ; @pc 0x8001a6b1c word 0x54fffd89
  %r3784.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3784 = load i64, ptr %r3784.p, align 8, !alias.scope !3, !noalias !4
  %fsh3786 = lshr i64 %r3784, 29
  %ftr3787 = trunc i64 %fsh3786 to i1
  %fsh3788 = lshr i64 %r3784, 30
  %ftr3789 = trunc i64 %fsh3788 to i1
  %fnz3790 = xor i1 %ftr3789, true
  %fhi3791 = and i1 %ftr3787, %fnz3790
  %cond3785 = xor i1 %fhi3791, true
  br i1 %cond3785, label %L_8001a6acc, label %L_8001a6b20
L_8001a6b38_ft:
  ; @pc 0x8001a6b38 word 0xf9000bff
  %r3823.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3823 = load i64, ptr %r3823.p, align 8, !alias.scope !3, !noalias !4
  %t3824 = add i64 %r3823, 16
  %gmp3825 = inttoptr i64 %t3824 to ptr
  store i64 0, ptr %gmp3825, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6b3c
L_8001a6b5c_ft:
  ; @pc 0x8001a6b5c word 0x14000028
  br label %L_8001a6bfc
L_8001a6b84_ft:
  ; @pc 0x8001a6b84 word 0xf9400bef
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3950 = load i64, ptr %r3950.p, align 8, !alias.scope !3, !noalias !4
  %t3951 = add i64 %r3950, 16
  %gmp3952 = inttoptr i64 %t3951 to ptr
  %gml3953 = load i64, ptr %gmp3952, align 1, !alias.scope !4, !noalias !3
  %wp3954 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3953, ptr %wp3954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b88 word 0xb40000af
  %r3955.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3955 = load i64, ptr %r3955.p, align 8, !alias.scope !3, !noalias !4
  %cmp3956 = icmp eq i64 %r3955, 0
  br i1 %cmp3956, label %L_8001a6b9c, label %L_8001a6b8c_ft
L_8001a6b8c_ft:
  ; @pc 0x8001a6b8c word 0xf9400bef
  %r3957.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3957 = load i64, ptr %r3957.p, align 8, !alias.scope !3, !noalias !4
  %t3958 = add i64 %r3957, 16
  %gmp3959 = inttoptr i64 %t3958 to ptr
  %gml3960 = load i64, ptr %gmp3959, align 1, !alias.scope !4, !noalias !3
  %wp3961 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3960, ptr %wp3961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b90 word 0xf9400def
  %r3962.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3962 = load i64, ptr %r3962.p, align 8, !alias.scope !3, !noalias !4
  %t3963 = add i64 %r3962, 24
  %gmp3964 = inttoptr i64 %t3963 to ptr
  %gml3965 = load i64, ptr %gmp3964, align 1, !alias.scope !4, !noalias !3
  %wp3966 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3965, ptr %wp3966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b94 word 0xeb0e01ff
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %r3968.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3968 = load i64, ptr %r3968.p, align 8, !alias.scope !3, !noalias !4
  %t3969 = sub i64 %r3967, %r3968
  %fn3970 = icmp slt i64 %t3969, 0
  %fz3971 = icmp eq i64 %t3969, 0
  %fc3972 = icmp uge i64 %r3967, %r3968
  %fx13973 = xor i64 %r3967, %r3968
  %fx23974 = xor i64 %r3967, %t3969
  %fva3975 = and i64 %fx13973, %fx23974
  %fv3976 = icmp slt i64 %fva3975, 0
  %nz3977 = zext i1 %fn3970 to i64
  %zz3978 = zext i1 %fz3971 to i64
  %cz3979 = zext i1 %fc3972 to i64
  %vz3980 = zext i1 %fv3976 to i64
  %ns3981 = shl i64 %nz3977, 31
  %zs3982 = shl i64 %zz3978, 30
  %cs3983 = shl i64 %cz3979, 29
  %vs3984 = shl i64 %vz3980, 28
  %nzor3985 = or i64 %ns3981, %zs3982
  %cvor3986 = or i64 %cs3983, %vs3984
  %nzcv3987 = or i64 %nzor3985, %cvor3986
  %wp3988 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3987, ptr %wp3988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6b98 word 0x54fffd82
  %r3989.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3989 = load i64, ptr %r3989.p, align 8, !alias.scope !3, !noalias !4
  %fsh3991 = lshr i64 %r3989, 29
  %cond3990 = trunc i64 %fsh3991 to i1
  br i1 %cond3990, label %L_8001a6b48, label %L_8001a6b9c
L_8001a6bb4_ft:
  ; @pc 0x8001a6bb4 word 0x7940256f
  %r4030.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4030 = load i64, ptr %r4030.p, align 8, !alias.scope !3, !noalias !4
  %t4031 = add i64 %r4030, 18
  %gmp4032 = inttoptr i64 %t4031 to ptr
  %gml4033 = load i16, ptr %gmp4032, align 1, !alias.scope !4, !noalias !3
  %c4034 = zext i16 %gml4033 to i64
  %wp4035 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4034, ptr %wp4035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bb8 word 0x8b0f016f
  %r4036.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4036 = load i64, ptr %r4036.p, align 8, !alias.scope !3, !noalias !4
  %r4037.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4037 = load i64, ptr %r4037.p, align 8, !alias.scope !3, !noalias !4
  %t4038 = add i64 %r4036, %r4037
  %wp4039 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t4038, ptr %wp4039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bbc word 0x910081ef
  %r4040.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4040 = load i64, ptr %r4040.p, align 8, !alias.scope !3, !noalias !4
  %t4041 = add i64 %r4040, 32
  %wp4042 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t4041, ptr %wp4042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bc0 word 0x8b0c01f0
  %r4043.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4043 = load i64, ptr %r4043.p, align 8, !alias.scope !3, !noalias !4
  %r4044.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4044 = load i64, ptr %r4044.p, align 8, !alias.scope !3, !noalias !4
  %t4045 = add i64 %r4043, %r4044
  %wp4046 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t4045, ptr %wp4046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bc4 word 0xcb0f032f
  %r4047.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4047 = load i64, ptr %r4047.p, align 8, !alias.scope !3, !noalias !4
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %t4049 = sub i64 %r4047, %r4048
  %wp4050 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t4049, ptr %wp4050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bc8 word 0x8a0d0210
  %r4051.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4051 = load i64, ptr %r4051.p, align 8, !alias.scope !3, !noalias !4
  %r4052.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4052 = load i64, ptr %r4052.p, align 8, !alias.scope !3, !noalias !4
  %t4053 = and i64 %r4052, %r4051
  %wp4054 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t4053, ptr %wp4054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bcc word 0x8b1001ef
  %r4055.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4055 = load i64, ptr %r4055.p, align 8, !alias.scope !3, !noalias !4
  %r4056.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4056 = load i64, ptr %r4056.p, align 8, !alias.scope !3, !noalias !4
  %t4057 = add i64 %r4055, %r4056
  %wp4058 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t4057, ptr %wp4058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bd0 word 0xf9400bf0
  %r4059.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4059 = load i64, ptr %r4059.p, align 8, !alias.scope !3, !noalias !4
  %t4060 = add i64 %r4059, 16
  %gmp4061 = inttoptr i64 %t4060 to ptr
  %gml4062 = load i64, ptr %gmp4061, align 1, !alias.scope !4, !noalias !3
  %wp4063 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml4062, ptr %wp4063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bd4 word 0xf100021f
  %r4064.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4064 = load i64, ptr %r4064.p, align 8, !alias.scope !3, !noalias !4
  %t4065 = sub i64 %r4064, 0
  %fn4066 = icmp slt i64 %t4065, 0
  %fz4067 = icmp eq i64 %t4065, 0
  %fc4068 = icmp uge i64 %r4064, 0
  %fx14069 = xor i64 %r4064, 0
  %fx24070 = xor i64 %r4064, %t4065
  %fva4071 = and i64 %fx14069, %fx24070
  %fv4072 = icmp slt i64 %fva4071, 0
  %nz4073 = zext i1 %fn4066 to i64
  %zz4074 = zext i1 %fz4067 to i64
  %cz4075 = zext i1 %fc4068 to i64
  %vz4076 = zext i1 %fv4072 to i64
  %ns4077 = shl i64 %nz4073, 31
  %zs4078 = shl i64 %zz4074, 30
  %cs4079 = shl i64 %cz4075, 29
  %vs4080 = shl i64 %vz4076, 28
  %nzor4081 = or i64 %ns4077, %zs4078
  %cvor4082 = or i64 %cs4079, %vs4080
  %nzcv4083 = or i64 %nzor4081, %cvor4082
  %wp4084 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4083, ptr %wp4084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bd8 word 0x9a900171
  %r4085.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4085 = load i64, ptr %r4085.p, align 8, !alias.scope !3, !noalias !4
  %r4086.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4086 = load i64, ptr %r4086.p, align 8, !alias.scope !3, !noalias !4
  %r4087.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4087 = load i64, ptr %r4087.p, align 8, !alias.scope !3, !noalias !4
  %fsh4089 = lshr i64 %r4087, 30
  %cond4088 = trunc i64 %fsh4089 to i1
  %sel4090 = select i1 %cond4088, i64 %r4085, i64 %r4086
  %wp4091 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %sel4090, ptr %wp4091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6bdc word 0xeb0f01df
  %r4092.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4092 = load i64, ptr %r4092.p, align 8, !alias.scope !3, !noalias !4
  %r4093.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4093 = load i64, ptr %r4093.p, align 8, !alias.scope !3, !noalias !4
  %t4094 = sub i64 %r4092, %r4093
  %fn4095 = icmp slt i64 %t4094, 0
  %fz4096 = icmp eq i64 %t4094, 0
  %fc4097 = icmp uge i64 %r4092, %r4093
  %fx14098 = xor i64 %r4092, %r4093
  %fx24099 = xor i64 %r4092, %t4094
  %fva4100 = and i64 %fx14098, %fx24099
  %fv4101 = icmp slt i64 %fva4100, 0
  %nz4102 = zext i1 %fn4095 to i64
  %zz4103 = zext i1 %fz4096 to i64
  %cz4104 = zext i1 %fc4097 to i64
  %vz4105 = zext i1 %fv4101 to i64
  %ns4106 = shl i64 %nz4102, 31
  %zs4107 = shl i64 %zz4103, 30
  %cs4108 = shl i64 %cz4104, 29
  %vs4109 = shl i64 %vz4105, 28
  %nzor4110 = or i64 %ns4106, %zs4107
  %cvor4111 = or i64 %cs4108, %vs4109
  %nzcv4112 = or i64 %nzor4110, %cvor4111
  %wp4113 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4112, ptr %wp4113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6be0 word 0x9a913210
  %r4114.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4114 = load i64, ptr %r4114.p, align 8, !alias.scope !3, !noalias !4
  %r4115.p = getelementptr inbounds i8, ptr %c, i64 136
  %r4115 = load i64, ptr %r4115.p, align 8, !alias.scope !3, !noalias !4
  %r4116.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4116 = load i64, ptr %r4116.p, align 8, !alias.scope !3, !noalias !4
  %fsh4118 = lshr i64 %r4116, 29
  %ftr4119 = trunc i64 %fsh4118 to i1
  %cond4117 = xor i1 %ftr4119, true
  %sel4120 = select i1 %cond4117, i64 %r4114, i64 %r4115
  %wp4121 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %sel4120, ptr %wp4121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6be4 word 0xf9000bf0
  %r4122.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4122 = load i64, ptr %r4122.p, align 8, !alias.scope !3, !noalias !4
  %t4123 = add i64 %r4122, 16
  %r4124.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4124 = load i64, ptr %r4124.p, align 8, !alias.scope !3, !noalias !4
  %gmp4125 = inttoptr i64 %t4123 to ptr
  store i64 %r4124, ptr %gmp4125, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6be8
L_8001a6c04_ft:
  ; @pc 0x8001a6c04 word 0x7940254b
  %r4172.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4172 = load i64, ptr %r4172.p, align 8, !alias.scope !3, !noalias !4
  %t4173 = add i64 %r4172, 18
  %gmp4174 = inttoptr i64 %t4173 to ptr
  %gml4175 = load i16, ptr %gmp4174, align 1, !alias.scope !4, !noalias !3
  %c4176 = zext i16 %gml4175 to i64
  %wp4177 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4176, ptr %wp4177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c08 word 0xf9400d5c
  %r4178.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4178 = load i64, ptr %r4178.p, align 8, !alias.scope !3, !noalias !4
  %t4179 = add i64 %r4178, 24
  %gmp4180 = inttoptr i64 %t4179 to ptr
  %gml4181 = load i64, ptr %gmp4180, align 1, !alias.scope !4, !noalias !3
  %wp4182 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml4181, ptr %wp4182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c0c word 0x17fffe99
  br label %L_8001a6670
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
