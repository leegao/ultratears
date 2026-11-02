; UltraTears chunk main_163_actor: 1 functions [0x80029e418..0x80029f350)
; ModuleID = 'main_163_actor_raw'
source_filename = "main_163_actor_raw"
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

declare dso_local void @f_800079d20(ptr)
declare dso_local void @f_800193210(ptr)
declare dso_local void @f_8001a1590(ptr)
declare dso_local void @f_80029f350(ptr)
declare dso_local void @f_80029f86c(ptr)
declare dso_local void @f_8002a1318(ptr)
declare dso_local void @f_8002a58d8(ptr)
declare dso_local void @f_8002a77e8(ptr)
declare dso_local void @f_8002a7968(ptr)
declare dso_local void @f_800315c14(ptr)
declare dso_local void @f_8009c79d0(ptr)
declare dso_local void @f_801d28d50(ptr)
declare dso_local void @f_801d28ec0(ptr)
declare dso_local void @f_801d28f28(ptr)
declare dso_local void @f_801d28f90(ptr)
declare dso_local void @f_801d290a0(ptr)
declare dso_local void @f_801d291c0(ptr)
declare dso_local void @f_801d29228(ptr)
declare dso_local void @f_801d29290(ptr)
declare dso_local void @f_801d29308(ptr)
declare dso_local void @f_801d29374(ptr)
declare dso_local void @f_801d293c8(ptr)
declare dso_local void @f_801d2a318(ptr)
declare dso_local void @f_801d2a554(ptr)
declare dso_local void @f_801d2a5c8(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)
declare dso_local void @f_802ba41d0(ptr)

define dso_local void @f_80029e418(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80029e418:
  ; @pc 0x80029e418 word 0xf9400808
  %r5.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = add i64 %r5, 16
  %gmp7 = inttoptr i64 %t6 to ptr
  %gml8 = load i64, ptr %gmp7, align 1, !alias.scope !4, !noalias !3
  %wp9 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8, ptr %wp9, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e41c word 0xb100051f
  %r10.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10 = load i64, ptr %r10.p, align 8, !alias.scope !3, !noalias !4
  %t11 = add i64 %r10, 1
  %fn12 = icmp slt i64 %t11, 0
  %fz13 = icmp eq i64 %t11, 0
  %fc14 = icmp ult i64 %t11, %r10
  %fx115 = xor i64 %r10, %t11
  %fx216 = xor i64 1, %t11
  %fva17 = and i64 %fx115, %fx216
  %fv18 = icmp slt i64 %fva17, 0
  %nz19 = zext i1 %fn12 to i64
  %zz20 = zext i1 %fz13 to i64
  %cz21 = zext i1 %fc14 to i64
  %vz22 = zext i1 %fv18 to i64
  %ns23 = shl i64 %nz19, 31
  %zs24 = shl i64 %zz20, 30
  %cs25 = shl i64 %cz21, 29
  %vs26 = shl i64 %vz22, 28
  %nzor27 = or i64 %ns23, %zs24
  %cvor28 = or i64 %cs25, %vs26
  %nzcv29 = or i64 %nzor27, %cvor28
  %wp30 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv29, ptr %wp30, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e420 word 0x54004380
  %r31.p = getelementptr inbounds i8, ptr %c, i64 272
  %r31 = load i64, ptr %r31.p, align 8, !alias.scope !3, !noalias !4
  %fsh33 = lshr i64 %r31, 30
  %cond32 = trunc i64 %fsh33 to i1
  br i1 %cond32, label %L_80029ec90, label %L_80029e424_ft
L_80029e480:
  ; @pc 0x80029e480 word 0xf1000508
  %r154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %t155 = sub i64 %r154, 1
  %fn156 = icmp slt i64 %t155, 0
  %fz157 = icmp eq i64 %t155, 0
  %fc158 = icmp uge i64 %r154, 1
  %fx1159 = xor i64 %r154, 1
  %fx2160 = xor i64 %r154, %t155
  %fva161 = and i64 %fx1159, %fx2160
  %fv162 = icmp slt i64 %fva161, 0
  %nz163 = zext i1 %fn156 to i64
  %zz164 = zext i1 %fz157 to i64
  %cz165 = zext i1 %fc158 to i64
  %vz166 = zext i1 %fv162 to i64
  %ns167 = shl i64 %nz163, 31
  %zs168 = shl i64 %zz164, 30
  %cs169 = shl i64 %cz165, 29
  %vs170 = shl i64 %vz166, 28
  %nzor171 = or i64 %ns167, %zs168
  %cvor172 = or i64 %cs169, %vs170
  %nzcv173 = or i64 %nzor171, %cvor172
  %wp174 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv173, ptr %wp174, align 8, !alias.scope !3, !noalias !4
  %wp175 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t155, ptr %wp175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e484 word 0xf800853f
  %r176.p = getelementptr inbounds i8, ptr %c, i64 72
  %r176 = load i64, ptr %r176.p, align 8, !alias.scope !3, !noalias !4
  %t177 = add i64 %r176, 8
  %gmp178 = inttoptr i64 %r176 to ptr
  store i64 0, ptr %gmp178, align 1, !alias.scope !4, !noalias !3
  %wp179 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t177, ptr %wp179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e488 word 0x54ffffc1
  %r180.p = getelementptr inbounds i8, ptr %c, i64 272
  %r180 = load i64, ptr %r180.p, align 8, !alias.scope !3, !noalias !4
  %fsh182 = lshr i64 %r180, 30
  %ftr183 = trunc i64 %fsh182 to i1
  %cond181 = xor i1 %ftr183, true
  br i1 %cond181, label %L_80029e480, label %L_80029e48c_ft
L_80029e494:
  ; @pc 0x80029e494 word 0xf9400681
  %r193.p = getelementptr inbounds i8, ptr %c, i64 160
  %r193 = load i64, ptr %r193.p, align 8, !alias.scope !3, !noalias !4
  %t194 = add i64 %r193, 8
  %gmp195 = inttoptr i64 %t194 to ptr
  %gml196 = load i64, ptr %gmp195, align 1, !alias.scope !4, !noalias !3
  %wp197 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml196, ptr %wp197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e498 word 0x52813500
  %c198 = zext i32 2472 to i64
  %wp199 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c198, ptr %wp199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e49c word 0x52800102
  %c200 = zext i32 8 to i64
  %wp201 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c200, ptr %wp201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4a0 word 0x97fc0c3c
  %wp202 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362483876, ptr %wp202, align 8, !alias.scope !3, !noalias !4
  call void @f_8001a1590(ptr %c)
  ; @pc 0x80029e4a4 word 0xaa0003f5
  %r203.p = getelementptr inbounds i8, ptr %c, i64 0
  %r203 = load i64, ptr %r203.p, align 8, !alias.scope !3, !noalias !4
  %t204 = or i64 0, %r203
  %wp205 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4a8 word 0x940003aa
  %wp206 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362483884, ptr %wp206, align 8, !alias.scope !3, !noalias !4
  call void @f_80029f350(ptr %c)
  ; @pc 0x80029e4ac word 0xaa1303f9
  %r207.p = getelementptr inbounds i8, ptr %c, i64 152
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %t208 = or i64 0, %r207
  %wp209 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t208, ptr %wp209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4b0 word 0xb001b6d8
  %wp210 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419994624, ptr %wp210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4b4 word 0xf8418f28
  %r211.p = getelementptr inbounds i8, ptr %c, i64 200
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %t212 = add i64 %r211, 24
  %gmp213 = inttoptr i64 %t212 to ptr
  %gml214 = load i64, ptr %gmp213, align 1, !alias.scope !4, !noalias !3
  %wp215 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t212, ptr %wp215, align 8, !alias.scope !3, !noalias !4
  %wp216 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml214, ptr %wp216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4b8 word 0xf81f8335
  %r217.p = getelementptr inbounds i8, ptr %c, i64 200
  %r217 = load i64, ptr %r217.p, align 8, !alias.scope !3, !noalias !4
  %t218 = add i64 %r217, -8
  %r219.p = getelementptr inbounds i8, ptr %c, i64 168
  %r219 = load i64, ptr %r219.p, align 8, !alias.scope !3, !noalias !4
  %gmp220 = inttoptr i64 %t218 to ptr
  store i64 %r219, ptr %gmp220, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e4bc word 0xf9450b18
  %r221.p = getelementptr inbounds i8, ptr %c, i64 192
  %r221 = load i64, ptr %r221.p, align 8, !alias.scope !3, !noalias !4
  %t222 = add i64 %r221, 2576
  %gmp223 = inttoptr i64 %t222 to ptr
  %gml224 = load i64, ptr %gmp223, align 1, !alias.scope !4, !noalias !3
  %wp225 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml224, ptr %wp225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4c0 word 0xb4002cc8
  %r226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %cmp227 = icmp eq i64 %r226, 0
  br i1 %cmp227, label %L_80029ea58, label %L_80029e4c4_ft
L_80029e4cc:
  ; @pc 0x80029e4cc word 0xf9401688
  %r235.p = getelementptr inbounds i8, ptr %c, i64 160
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %t236 = add i64 %r235, 40
  %gmp237 = inttoptr i64 %t236 to ptr
  %gml238 = load i64, ptr %gmp237, align 1, !alias.scope !4, !noalias !3
  %wp239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml238, ptr %wp239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4d0 word 0xb940111a
  %r240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r240 = load i64, ptr %r240.p, align 8, !alias.scope !3, !noalias !4
  %t241 = add i64 %r240, 16
  %gmp242 = inttoptr i64 %t241 to ptr
  %gml243 = load i32, ptr %gmp242, align 1, !alias.scope !4, !noalias !3
  %c244 = zext i32 %gml243 to i64
  %wp245 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c244, ptr %wp245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4d4 word 0x3400079a
  %r246.p = getelementptr inbounds i8, ptr %c, i64 208
  %r246 = load i64, ptr %r246.p, align 8, !alias.scope !3, !noalias !4
  %c247 = trunc i64 %r246 to i32
  %cmp248 = icmp eq i32 %c247, 0
  br i1 %cmp248, label %L_80029e5c4, label %L_80029e4d8_ft
L_80029e4ec:
  ; @pc 0x80029e4ec word 0xb9402268
  %r263.p = getelementptr inbounds i8, ptr %c, i64 152
  %r263 = load i64, ptr %r263.p, align 8, !alias.scope !3, !noalias !4
  %t264 = add i64 %r263, 32
  %gmp265 = inttoptr i64 %t264 to ptr
  %gml266 = load i32, ptr %gmp265, align 1, !alias.scope !4, !noalias !3
  %c267 = zext i32 %gml266 to i64
  %wp268 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c267, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4f0 word 0xeb08037f
  %r269.p = getelementptr inbounds i8, ptr %c, i64 216
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %r270.p = getelementptr inbounds i8, ptr %c, i64 64
  %r270 = load i64, ptr %r270.p, align 8, !alias.scope !3, !noalias !4
  %t271 = sub i64 %r269, %r270
  %fn272 = icmp slt i64 %t271, 0
  %fz273 = icmp eq i64 %t271, 0
  %fc274 = icmp uge i64 %r269, %r270
  %fx1275 = xor i64 %r269, %r270
  %fx2276 = xor i64 %r269, %t271
  %fva277 = and i64 %fx1275, %fx2276
  %fv278 = icmp slt i64 %fva277, 0
  %nz279 = zext i1 %fn272 to i64
  %zz280 = zext i1 %fz273 to i64
  %cz281 = zext i1 %fc274 to i64
  %vz282 = zext i1 %fv278 to i64
  %ns283 = shl i64 %nz279, 31
  %zs284 = shl i64 %zz280, 30
  %cs285 = shl i64 %cz281, 29
  %vs286 = shl i64 %vz282, 28
  %nzor287 = or i64 %ns283, %zs284
  %cvor288 = or i64 %cs285, %vs286
  %nzcv289 = or i64 %nzor287, %cvor288
  %wp290 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv289, ptr %wp290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4f4 word 0xf9401669
  %r291.p = getelementptr inbounds i8, ptr %c, i64 152
  %r291 = load i64, ptr %r291.p, align 8, !alias.scope !3, !noalias !4
  %t292 = add i64 %r291, 40
  %gmp293 = inttoptr i64 %t292 to ptr
  %gml294 = load i64, ptr %gmp293, align 1, !alias.scope !4, !noalias !3
  %wp295 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml294, ptr %wp295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4f8 word 0x9a9f336a
  %r296.p = getelementptr inbounds i8, ptr %c, i64 216
  %r296 = load i64, ptr %r296.p, align 8, !alias.scope !3, !noalias !4
  %r297.p = getelementptr inbounds i8, ptr %c, i64 272
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %fsh299 = lshr i64 %r297, 29
  %ftr300 = trunc i64 %fsh299 to i1
  %cond298 = xor i1 %ftr300, true
  %sel301 = select i1 %cond298, i64 %r296, i64 0
  %wp302 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel301, ptr %wp302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4fc word 0xf86a792a
  %r303.p = getelementptr inbounds i8, ptr %c, i64 72
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %r304.p = getelementptr inbounds i8, ptr %c, i64 80
  %r304 = load i64, ptr %r304.p, align 8, !alias.scope !3, !noalias !4
  %t305 = shl i64 %r304, 3
  %t306 = add i64 %r303, %t305
  %gmp307 = inttoptr i64 %t306 to ptr
  %gml308 = load i64, ptr %gmp307, align 1, !alias.scope !4, !noalias !3
  %wp309 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml308, ptr %wp309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e500 word 0xb40000ea
  %r310.p = getelementptr inbounds i8, ptr %c, i64 80
  %r310 = load i64, ptr %r310.p, align 8, !alias.scope !3, !noalias !4
  %cmp311 = icmp eq i64 %r310, 0
  br i1 %cmp311, label %L_80029e51c, label %L_80029e504_ft
L_80029e51c:
  ; @pc 0x80029e51c word 0xeb1b011f
  %r334.p = getelementptr inbounds i8, ptr %c, i64 64
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %r335.p = getelementptr inbounds i8, ptr %c, i64 216
  %r335 = load i64, ptr %r335.p, align 8, !alias.scope !3, !noalias !4
  %t336 = sub i64 %r334, %r335
  %fn337 = icmp slt i64 %t336, 0
  %fz338 = icmp eq i64 %t336, 0
  %fc339 = icmp uge i64 %r334, %r335
  %fx1340 = xor i64 %r334, %r335
  %fx2341 = xor i64 %r334, %t336
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
  ; @pc 0x80029e520 word 0x9a9f8368
  %r356.p = getelementptr inbounds i8, ptr %c, i64 216
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %r357.p = getelementptr inbounds i8, ptr %c, i64 272
  %r357 = load i64, ptr %r357.p, align 8, !alias.scope !3, !noalias !4
  %fsh359 = lshr i64 %r357, 29
  %ftr360 = trunc i64 %fsh359 to i1
  %fsh361 = lshr i64 %r357, 30
  %ftr362 = trunc i64 %fsh361 to i1
  %fnz363 = xor i1 %ftr362, true
  %cond358 = and i1 %ftr360, %fnz363
  %sel364 = select i1 %cond358, i64 %r356, i64 0
  %wp365 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel364, ptr %wp365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e524 word 0xf8687928
  %r366.p = getelementptr inbounds i8, ptr %c, i64 72
  %r366 = load i64, ptr %r366.p, align 8, !alias.scope !3, !noalias !4
  %r367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = shl i64 %r367, 3
  %t369 = add i64 %r366, %t368
  %gmp370 = inttoptr i64 %t369 to ptr
  %gml371 = load i64, ptr %gmp370, align 1, !alias.scope !4, !noalias !3
  %wp372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml371, ptr %wp372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e528 word 0xb40002a8
  %r373.p = getelementptr inbounds i8, ptr %c, i64 64
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %cmp374 = icmp eq i64 %r373, 0
  br i1 %cmp374, label %L_80029e57c, label %L_80029e52c_ft
L_80029e548:
  ; @pc 0x80029e548 word 0xb4003540
  %r402.p = getelementptr inbounds i8, ptr %c, i64 0
  %r402 = load i64, ptr %r402.p, align 8, !alias.scope !3, !noalias !4
  %cmp403 = icmp eq i64 %r402, 0
  br i1 %cmp403, label %L_80029ebf0, label %L_80029e54c_ft
L_80029e56c:
  ; @pc 0x80029e56c word 0x885f7d2a
  %r430.p = getelementptr inbounds i8, ptr %c, i64 72
  %r430 = load i64, ptr %r430.p, align 8, !alias.scope !3, !noalias !4
  %atp431 = inttoptr i64 %r430 to ptr
  %ldx432 = load atomic i32, ptr %atp431 acquire, align 4, !alias.scope !4, !noalias !3
  %c433 = zext i32 %ldx432 to i64
  %fp434 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r430, ptr %fp434, align 8, !alias.scope !3, !noalias !4
  %fp435 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c433, ptr %fp435, align 8, !alias.scope !3, !noalias !4
  %wp436 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c433, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e570 word 0x1100054a
  %r437.p = getelementptr inbounds i8, ptr %c, i64 80
  %r437 = load i64, ptr %r437.p, align 8, !alias.scope !3, !noalias !4
  %c438 = trunc i64 %r437 to i32
  %t439 = add i32 %c438, 1
  %c440 = zext i32 %t439 to i64
  %wp441 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c440, ptr %wp441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e574 word 0x880b7d2a
  %r442.p = getelementptr inbounds i8, ptr %c, i64 72
  %r442 = load i64, ptr %r442.p, align 8, !alias.scope !3, !noalias !4
  %atp443 = inttoptr i64 %r442 to ptr
  %fp444 = getelementptr inbounds i8, ptr %c, i64 296
  %fv445 = load i64, ptr %fp444, align 8, !alias.scope !3, !noalias !4
  %fp446 = getelementptr inbounds i8, ptr %c, i64 304
  %fv447 = load i64, ptr %fp446, align 8, !alias.scope !3, !noalias !4
  %fp448 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp448, align 8, !alias.scope !3, !noalias !4
  %cmp449 = icmp eq i64 %fv445, %r442
  %c450 = trunc i64 %fv447 to i32
  %r451.p = getelementptr inbounds i8, ptr %c, i64 80
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %c452 = trunc i64 %r451 to i32
  %cx453 = cmpxchg ptr %atp443, i32 %c450, i32 %c452 seq_cst seq_cst, align 4
  %cxok454 = extractvalue { i32, i1 } %cx453, 1
  %t455 = and i1 %cmp449, %cxok454
  %sel456 = select i1 %t455, i32 0, i32 1
  %c457 = zext i32 %sel456 to i64
  %wp458 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c457, ptr %wp458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e578 word 0x35ffffab
  %r459.p = getelementptr inbounds i8, ptr %c, i64 88
  %r459 = load i64, ptr %r459.p, align 8, !alias.scope !3, !noalias !4
  %c460 = trunc i64 %r459 to i32
  %cmp461 = icmp ne i32 %c460, 0
  br i1 %cmp461, label %L_80029e56c, label %L_80029e57c
L_80029e57c:
  ; @pc 0x80029e57c word 0xb9403269
  %r462.p = getelementptr inbounds i8, ptr %c, i64 152
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %t463 = add i64 %r462, 48
  %gmp464 = inttoptr i64 %t463 to ptr
  %gml465 = load i32, ptr %gmp464, align 1, !alias.scope !4, !noalias !3
  %c466 = zext i32 %gml465 to i64
  %wp467 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c466, ptr %wp467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e580 word 0xeb09037f
  %r468.p = getelementptr inbounds i8, ptr %c, i64 216
  %r468 = load i64, ptr %r468.p, align 8, !alias.scope !3, !noalias !4
  %r469.p = getelementptr inbounds i8, ptr %c, i64 72
  %r469 = load i64, ptr %r469.p, align 8, !alias.scope !3, !noalias !4
  %t470 = sub i64 %r468, %r469
  %fn471 = icmp slt i64 %t470, 0
  %fz472 = icmp eq i64 %t470, 0
  %fc473 = icmp uge i64 %r468, %r469
  %fx1474 = xor i64 %r468, %r469
  %fx2475 = xor i64 %r468, %t470
  %fva476 = and i64 %fx1474, %fx2475
  %fv477 = icmp slt i64 %fva476, 0
  %nz478 = zext i1 %fn471 to i64
  %zz479 = zext i1 %fz472 to i64
  %cz480 = zext i1 %fc473 to i64
  %vz481 = zext i1 %fv477 to i64
  %ns482 = shl i64 %nz478, 31
  %zs483 = shl i64 %zz479, 30
  %cs484 = shl i64 %cz480, 29
  %vs485 = shl i64 %vz481, 28
  %nzor486 = or i64 %ns482, %zs483
  %cvor487 = or i64 %cs484, %vs485
  %nzcv488 = or i64 %nzor486, %cvor487
  %wp489 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv488, ptr %wp489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e584 word 0xf9401e6a
  %r490.p = getelementptr inbounds i8, ptr %c, i64 152
  %r490 = load i64, ptr %r490.p, align 8, !alias.scope !3, !noalias !4
  %t491 = add i64 %r490, 56
  %gmp492 = inttoptr i64 %t491 to ptr
  %gml493 = load i64, ptr %gmp492, align 1, !alias.scope !4, !noalias !3
  %wp494 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml493, ptr %wp494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e588 word 0x9a9f336b
  %r495.p = getelementptr inbounds i8, ptr %c, i64 216
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %r496.p = getelementptr inbounds i8, ptr %c, i64 272
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %fsh498 = lshr i64 %r496, 29
  %ftr499 = trunc i64 %fsh498 to i1
  %cond497 = xor i1 %ftr499, true
  %sel500 = select i1 %cond497, i64 %r495, i64 0
  %wp501 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel500, ptr %wp501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e58c word 0xf86b7949
  %r502.p = getelementptr inbounds i8, ptr %c, i64 80
  %r502 = load i64, ptr %r502.p, align 8, !alias.scope !3, !noalias !4
  %r503.p = getelementptr inbounds i8, ptr %c, i64 88
  %r503 = load i64, ptr %r503.p, align 8, !alias.scope !3, !noalias !4
  %t504 = shl i64 %r503, 3
  %t505 = add i64 %r502, %t504
  %gmp506 = inttoptr i64 %t505 to ptr
  %gml507 = load i64, ptr %gmp506, align 1, !alias.scope !4, !noalias !3
  %wp508 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml507, ptr %wp508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e590 word 0xf82b7948
  %r509.p = getelementptr inbounds i8, ptr %c, i64 80
  %r509 = load i64, ptr %r509.p, align 8, !alias.scope !3, !noalias !4
  %r510.p = getelementptr inbounds i8, ptr %c, i64 88
  %r510 = load i64, ptr %r510.p, align 8, !alias.scope !3, !noalias !4
  %t511 = shl i64 %r510, 3
  %t512 = add i64 %r509, %t511
  %r513.p = getelementptr inbounds i8, ptr %c, i64 64
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %gmp514 = inttoptr i64 %t512 to ptr
  store i64 %r513, ptr %gmp514, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e594 word 0xb5003649
  %r515.p = getelementptr inbounds i8, ptr %c, i64 72
  %r515 = load i64, ptr %r515.p, align 8, !alias.scope !3, !noalias !4
  %cmp516 = icmp ne i64 %r515, 0
  br i1 %cmp516, label %L_80029ec5c, label %L_80029e598
L_80029e598:
  ; @pc 0x80029e598 word 0xb9403268
  %r517.p = getelementptr inbounds i8, ptr %c, i64 152
  %r517 = load i64, ptr %r517.p, align 8, !alias.scope !3, !noalias !4
  %t518 = add i64 %r517, 48
  %gmp519 = inttoptr i64 %t518 to ptr
  %gml520 = load i32, ptr %gmp519, align 1, !alias.scope !4, !noalias !3
  %c521 = zext i32 %gml520 to i64
  %wp522 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c521, ptr %wp522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e59c word 0xeb08037f
  %r523.p = getelementptr inbounds i8, ptr %c, i64 216
  %r523 = load i64, ptr %r523.p, align 8, !alias.scope !3, !noalias !4
  %r524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r524 = load i64, ptr %r524.p, align 8, !alias.scope !3, !noalias !4
  %t525 = sub i64 %r523, %r524
  %fn526 = icmp slt i64 %t525, 0
  %fz527 = icmp eq i64 %t525, 0
  %fc528 = icmp uge i64 %r523, %r524
  %fx1529 = xor i64 %r523, %r524
  %fx2530 = xor i64 %r523, %t525
  %fva531 = and i64 %fx1529, %fx2530
  %fv532 = icmp slt i64 %fva531, 0
  %nz533 = zext i1 %fn526 to i64
  %zz534 = zext i1 %fz527 to i64
  %cz535 = zext i1 %fc528 to i64
  %vz536 = zext i1 %fv532 to i64
  %ns537 = shl i64 %nz533, 31
  %zs538 = shl i64 %zz534, 30
  %cs539 = shl i64 %cz535, 29
  %vs540 = shl i64 %vz536, 28
  %nzor541 = or i64 %ns537, %zs538
  %cvor542 = or i64 %cs539, %vs540
  %nzcv543 = or i64 %nzor541, %cvor542
  %wp544 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv543, ptr %wp544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5a0 word 0xf9401e69
  %r545.p = getelementptr inbounds i8, ptr %c, i64 152
  %r545 = load i64, ptr %r545.p, align 8, !alias.scope !3, !noalias !4
  %t546 = add i64 %r545, 56
  %gmp547 = inttoptr i64 %t546 to ptr
  %gml548 = load i64, ptr %gmp547, align 1, !alias.scope !4, !noalias !3
  %wp549 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml548, ptr %wp549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5a4 word 0x9a9f3368
  %r550.p = getelementptr inbounds i8, ptr %c, i64 216
  %r550 = load i64, ptr %r550.p, align 8, !alias.scope !3, !noalias !4
  %r551.p = getelementptr inbounds i8, ptr %c, i64 272
  %r551 = load i64, ptr %r551.p, align 8, !alias.scope !3, !noalias !4
  %fsh553 = lshr i64 %r551, 29
  %ftr554 = trunc i64 %fsh553 to i1
  %cond552 = xor i1 %ftr554, true
  %sel555 = select i1 %cond552, i64 %r550, i64 0
  %wp556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel555, ptr %wp556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5a8 word 0xf8687928
  %r557.p = getelementptr inbounds i8, ptr %c, i64 72
  %r557 = load i64, ptr %r557.p, align 8, !alias.scope !3, !noalias !4
  %r558.p = getelementptr inbounds i8, ptr %c, i64 64
  %r558 = load i64, ptr %r558.p, align 8, !alias.scope !3, !noalias !4
  %t559 = shl i64 %r558, 3
  %t560 = add i64 %r557, %t559
  %gmp561 = inttoptr i64 %t560 to ptr
  %gml562 = load i64, ptr %gmp561, align 1, !alias.scope !4, !noalias !3
  %wp563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml562, ptr %wp563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5ac word 0xb4003268
  %r564.p = getelementptr inbounds i8, ptr %c, i64 64
  %r564 = load i64, ptr %r564.p, align 8, !alias.scope !3, !noalias !4
  %cmp565 = icmp eq i64 %r564, 0
  br i1 %cmp565, label %L_80029ebf8, label %L_80029e5b0_ft
L_80029e5c4:
  ; @pc 0x80029e5c4 word 0xd10163b6
  %r602.p = getelementptr inbounds i8, ptr %c, i64 232
  %r602 = load i64, ptr %r602.p, align 8, !alias.scope !3, !noalias !4
  %t603 = sub i64 %r602, 88
  %wp604 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t603, ptr %wp604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5c8 word 0xb0014b89
  %wp605 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34405937152, ptr %wp605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5cc word 0x91047d29
  %r606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r606 = load i64, ptr %r606.p, align 8, !alias.scope !3, !noalias !4
  %t607 = add i64 %r606, 287
  %wp608 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t607, ptr %wp608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5d0 word 0xa903a6df
  %r609.p = getelementptr inbounds i8, ptr %c, i64 176
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %t610 = add i64 %r609, 56
  %t611 = add i64 %t610, 8
  %gmp612 = inttoptr i64 %t610 to ptr
  store i64 0, ptr %gmp612, align 1, !alias.scope !4, !noalias !3
  %r613.p = getelementptr inbounds i8, ptr %c, i64 72
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %gmp614 = inttoptr i64 %t611 to ptr
  store i64 %r613, ptr %gmp614, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e5d4 word 0xf9400329
  %r615.p = getelementptr inbounds i8, ptr %c, i64 200
  %r615 = load i64, ptr %r615.p, align 8, !alias.scope !3, !noalias !4
  %gmp616 = inttoptr i64 %r615 to ptr
  %gml617 = load i64, ptr %gmp616, align 1, !alias.scope !4, !noalias !3
  %wp618 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml617, ptr %wp618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5d8 word 0xa902fedf
  %r619.p = getelementptr inbounds i8, ptr %c, i64 176
  %r619 = load i64, ptr %r619.p, align 8, !alias.scope !3, !noalias !4
  %t620 = add i64 %r619, 40
  %t621 = add i64 %t620, 8
  %gmp622 = inttoptr i64 %t620 to ptr
  store i64 0, ptr %gmp622, align 1, !alias.scope !4, !noalias !3
  %gmp623 = inttoptr i64 %t621 to ptr
  store i64 0, ptr %gmp623, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e5dc word 0xb001b6d5
  %wp624 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419994624, ptr %wp624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5e0 word 0x9100c268
  %r625.p = getelementptr inbounds i8, ptr %c, i64 152
  %r625 = load i64, ptr %r625.p, align 8, !alias.scope !3, !noalias !4
  %t626 = add i64 %r625, 48
  %wp627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t626, ptr %wp627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5e4 word 0xf90026df
  %r628.p = getelementptr inbounds i8, ptr %c, i64 176
  %r628 = load i64, ptr %r628.p, align 8, !alias.scope !3, !noalias !4
  %t629 = add i64 %r628, 72
  %gmp630 = inttoptr i64 %t629 to ptr
  store i64 0, ptr %gmp630, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e5e8 word 0x390042df
  %r631.p = getelementptr inbounds i8, ptr %c, i64 176
  %r631 = load i64, ptr %r631.p, align 8, !alias.scope !3, !noalias !4
  %t632 = add i64 %r631, 16
  %c633 = trunc i32 0 to i8
  %gmp634 = inttoptr i64 %t632 to ptr
  store i8 %c633, ptr %gmp634, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e5ec word 0xa901fedf
  %r635.p = getelementptr inbounds i8, ptr %c, i64 176
  %r635 = load i64, ptr %r635.p, align 8, !alias.scope !3, !noalias !4
  %t636 = add i64 %r635, 24
  %t637 = add i64 %t636, 8
  %gmp638 = inttoptr i64 %t636 to ptr
  store i64 0, ptr %gmp638, align 1, !alias.scope !4, !noalias !3
  %gmp639 = inttoptr i64 %t637 to ptr
  store i64 0, ptr %gmp639, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e5f0 word 0xf94506b5
  %r640.p = getelementptr inbounds i8, ptr %c, i64 168
  %r640 = load i64, ptr %r640.p, align 8, !alias.scope !3, !noalias !4
  %t641 = add i64 %r640, 2568
  %gmp642 = inttoptr i64 %t641 to ptr
  %gml643 = load i64, ptr %gmp642, align 1, !alias.scope !4, !noalias !3
  %wp644 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml643, ptr %wp644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5f4 word 0xf940a920
  %r645.p = getelementptr inbounds i8, ptr %c, i64 72
  %r645 = load i64, ptr %r645.p, align 8, !alias.scope !3, !noalias !4
  %t646 = add i64 %r645, 336
  %gmp647 = inttoptr i64 %t646 to ptr
  %gml648 = load i64, ptr %gmp647, align 1, !alias.scope !4, !noalias !3
  %wp649 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml648, ptr %wp649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5f8 word 0xa90022d9
  %r650.p = getelementptr inbounds i8, ptr %c, i64 176
  %r650 = load i64, ptr %r650.p, align 8, !alias.scope !3, !noalias !4
  %t651 = add i64 %r650, 8
  %r652.p = getelementptr inbounds i8, ptr %c, i64 200
  %r652 = load i64, ptr %r652.p, align 8, !alias.scope !3, !noalias !4
  %gmp653 = inttoptr i64 %r650 to ptr
  store i64 %r652, ptr %gmp653, align 1, !alias.scope !4, !noalias !3
  %r654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %gmp655 = inttoptr i64 %t651 to ptr
  store i64 %r654, ptr %gmp655, align 1, !alias.scope !4, !noalias !3
  br label %L_80029e5fc
L_80029e5fc:
  ; @pc 0x80029e5fc word 0x39417008
  %r656.p = getelementptr inbounds i8, ptr %c, i64 0
  %r656 = load i64, ptr %r656.p, align 8, !alias.scope !3, !noalias !4
  %t657 = add i64 %r656, 92
  %gmp658 = inttoptr i64 %t657 to ptr
  %gml659 = load i8, ptr %gmp658, align 1, !alias.scope !4, !noalias !3
  %c660 = zext i8 %gml659 to i64
  %wp661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c660, ptr %wp661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e600 word 0xaa0003f7
  %r662.p = getelementptr inbounds i8, ptr %c, i64 0
  %r662 = load i64, ptr %r662.p, align 8, !alias.scope !3, !noalias !4
  %t663 = or i64 0, %r662
  %wp664 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t663, ptr %wp664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e604 word 0x37000068
  %r665.p = getelementptr inbounds i8, ptr %c, i64 64
  %r665 = load i64, ptr %r665.p, align 8, !alias.scope !3, !noalias !4
  %t666 = and i64 %r665, 1
  %cmp667 = icmp ne i64 %t666, 0
  br i1 %cmp667, label %L_80029e610, label %L_80029e608_ft
L_80029e610:
  ; @pc 0x80029e610 word 0x39416ae8
  %r675.p = getelementptr inbounds i8, ptr %c, i64 184
  %r675 = load i64, ptr %r675.p, align 8, !alias.scope !3, !noalias !4
  %t676 = add i64 %r675, 90
  %gmp677 = inttoptr i64 %t676 to ptr
  %gml678 = load i8, ptr %gmp677, align 1, !alias.scope !4, !noalias !3
  %c679 = zext i8 %gml678 to i64
  %wp680 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c679, ptr %wp680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e614 word 0x9100e3e0
  %r681.p = getelementptr inbounds i8, ptr %c, i64 256
  %r681 = load i64, ptr %r681.p, align 8, !alias.scope !3, !noalias !4
  %t682 = add i64 %r681, 56
  %wp683 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t682, ptr %wp683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e618 word 0xd10163a1
  %r684.p = getelementptr inbounds i8, ptr %c, i64 232
  %r684 = load i64, ptr %r684.p, align 8, !alias.scope !3, !noalias !4
  %t685 = sub i64 %r684, 88
  %wp686 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t685, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e61c word 0x9100e3f5
  %r687.p = getelementptr inbounds i8, ptr %c, i64 256
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %t688 = add i64 %r687, 56
  %wp689 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t688, ptr %wp689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e620 word 0x390042c8
  %r690.p = getelementptr inbounds i8, ptr %c, i64 176
  %r690 = load i64, ptr %r690.p, align 8, !alias.scope !3, !noalias !4
  %t691 = add i64 %r690, 16
  %r692.p = getelementptr inbounds i8, ptr %c, i64 64
  %r692 = load i64, ptr %r692.p, align 8, !alias.scope !3, !noalias !4
  %c693 = trunc i64 %r692 to i32
  %c694 = trunc i32 %c693 to i8
  %gmp695 = inttoptr i64 %t691 to ptr
  store i8 %c694, ptr %gmp695, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e624 word 0x94000492
  %wp696 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362484264, ptr %wp696, align 8, !alias.scope !3, !noalias !4
  call void @f_80029f86c(ptr %c)
  ; @pc 0x80029e628 word 0x52804b08
  %c697 = zext i32 600 to i64
  %wp698 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c697, ptr %wp698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e62c word 0xa941ae8a
  %r699.p = getelementptr inbounds i8, ptr %c, i64 160
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = add i64 %r699, 24
  %t701 = add i64 %t700, 8
  %gmp702 = inttoptr i64 %t700 to ptr
  %gml703 = load i64, ptr %gmp702, align 1, !alias.scope !4, !noalias !3
  %gmp704 = inttoptr i64 %t701 to ptr
  %gml705 = load i64, ptr %gmp704, align 1, !alias.scope !4, !noalias !3
  %wp706 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml703, ptr %wp706, align 8, !alias.scope !3, !noalias !4
  %wp707 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml705, ptr %wp707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e630 word 0xb9003ec8
  %r708.p = getelementptr inbounds i8, ptr %c, i64 176
  %r708 = load i64, ptr %r708.p, align 8, !alias.scope !3, !noalias !4
  %t709 = add i64 %r708, 60
  %r710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r710 = load i64, ptr %r710.p, align 8, !alias.scope !3, !noalias !4
  %c711 = trunc i64 %r710 to i32
  %gmp712 = inttoptr i64 %t709 to ptr
  store i32 %c711, ptr %gmp712, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e634 word 0xa9402289
  %r713.p = getelementptr inbounds i8, ptr %c, i64 160
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %t714 = add i64 %r713, 8
  %gmp715 = inttoptr i64 %r713 to ptr
  %gml716 = load i64, ptr %gmp715, align 1, !alias.scope !4, !noalias !3
  %gmp717 = inttoptr i64 %t714 to ptr
  %gml718 = load i64, ptr %gmp717, align 1, !alias.scope !4, !noalias !3
  %wp719 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml716, ptr %wp719, align 8, !alias.scope !3, !noalias !4
  %wp720 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml718, ptr %wp720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e638 word 0xf9400a60
  %r721.p = getelementptr inbounds i8, ptr %c, i64 152
  %r721 = load i64, ptr %r721.p, align 8, !alias.scope !3, !noalias !4
  %t722 = add i64 %r721, 16
  %gmp723 = inttoptr i64 %t722 to ptr
  %gml724 = load i64, ptr %gmp723, align 1, !alias.scope !4, !noalias !3
  %wp725 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml724, ptr %wp725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e63c word 0xd10103a1
  %r726.p = getelementptr inbounds i8, ptr %c, i64 232
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %t727 = sub i64 %r726, 64
  %wp728 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t727, ptr %wp728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e640 word 0xa902d6cb
  %r729.p = getelementptr inbounds i8, ptr %c, i64 176
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %t730 = add i64 %r729, 40
  %t731 = add i64 %t730, 8
  %r732.p = getelementptr inbounds i8, ptr %c, i64 88
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %gmp733 = inttoptr i64 %t730 to ptr
  store i64 %r732, ptr %gmp733, align 1, !alias.scope !4, !noalias !3
  %r734.p = getelementptr inbounds i8, ptr %c, i64 168
  %r734 = load i64, ptr %r734.p, align 8, !alias.scope !3, !noalias !4
  %gmp735 = inttoptr i64 %t731 to ptr
  store i64 %r734, ptr %gmp735, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e644 word 0xa901aac8
  %r736.p = getelementptr inbounds i8, ptr %c, i64 176
  %r736 = load i64, ptr %r736.p, align 8, !alias.scope !3, !noalias !4
  %t737 = add i64 %r736, 24
  %t738 = add i64 %t737, 8
  %r739.p = getelementptr inbounds i8, ptr %c, i64 64
  %r739 = load i64, ptr %r739.p, align 8, !alias.scope !3, !noalias !4
  %gmp740 = inttoptr i64 %t737 to ptr
  store i64 %r739, ptr %gmp740, align 1, !alias.scope !4, !noalias !3
  %r741.p = getelementptr inbounds i8, ptr %c, i64 80
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %gmp742 = inttoptr i64 %t738 to ptr
  store i64 %r741, ptr %gmp742, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e648 word 0xf9410d28
  %r743.p = getelementptr inbounds i8, ptr %c, i64 72
  %r743 = load i64, ptr %r743.p, align 8, !alias.scope !3, !noalias !4
  %t744 = add i64 %r743, 536
  %gmp745 = inttoptr i64 %t744 to ptr
  %gml746 = load i64, ptr %gmp745, align 1, !alias.scope !4, !noalias !3
  %wp747 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml746, ptr %wp747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e64c word 0xf90022c8
  %r748.p = getelementptr inbounds i8, ptr %c, i64 176
  %r748 = load i64, ptr %r748.p, align 8, !alias.scope !3, !noalias !4
  %t749 = add i64 %r748, 64
  %r750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %gmp751 = inttoptr i64 %t749 to ptr
  store i64 %r750, ptr %gmp751, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e650 word 0x529a0008
  %c752 = zext i32 53248 to i64
  %wp753 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c752, ptr %wp753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e654 word 0x72a000e8
  %r754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r754 = load i64, ptr %r754.p, align 8, !alias.scope !3, !noalias !4
  %t755 = and i64 %r754, -4294901761
  %t756 = or i64 %t755, 458752
  %c757 = trunc i64 %t756 to i32
  %c758 = zext i32 %c757 to i64
  %wp759 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c758, ptr %wp759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e658 word 0xb9004ac8
  %r760.p = getelementptr inbounds i8, ptr %c, i64 176
  %r760 = load i64, ptr %r760.p, align 8, !alias.scope !3, !noalias !4
  %t761 = add i64 %r760, 72
  %r762.p = getelementptr inbounds i8, ptr %c, i64 64
  %r762 = load i64, ptr %r762.p, align 8, !alias.scope !3, !noalias !4
  %c763 = trunc i64 %r762 to i32
  %gmp764 = inttoptr i64 %t761 to ptr
  store i32 %c763, ptr %gmp764, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e65c word 0x94000b2f
  %wp765 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362484320, ptr %wp765, align 8, !alias.scope !3, !noalias !4
  call void @f_8002a1318(ptr %c)
  ; @pc 0x80029e660 word 0xf9400288
  %r766.p = getelementptr inbounds i8, ptr %c, i64 160
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %gmp767 = inttoptr i64 %r766 to ptr
  %gml768 = load i64, ptr %gmp767, align 1, !alias.scope !4, !noalias !3
  %wp769 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml768, ptr %wp769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e664 word 0xf941b914
  %r770.p = getelementptr inbounds i8, ptr %c, i64 64
  %r770 = load i64, ptr %r770.p, align 8, !alias.scope !3, !noalias !4
  %t771 = add i64 %r770, 880
  %gmp772 = inttoptr i64 %t771 to ptr
  %gml773 = load i64, ptr %gmp772, align 1, !alias.scope !4, !noalias !3
  %wp774 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml773, ptr %wp774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e668 word 0xb40000f4
  %r775.p = getelementptr inbounds i8, ptr %c, i64 160
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %cmp776 = icmp eq i64 %r775, 0
  br i1 %cmp776, label %L_80029e684, label %L_80029e66c_ft
L_80029e678:
  ; @pc 0x80029e678 word 0xf9406a88
  %r788.p = getelementptr inbounds i8, ptr %c, i64 160
  %r788 = load i64, ptr %r788.p, align 8, !alias.scope !3, !noalias !4
  %t789 = add i64 %r788, 208
  %gmp790 = inttoptr i64 %t789 to ptr
  %gml791 = load i64, ptr %gmp790, align 1, !alias.scope !4, !noalias !3
  %wp792 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml791, ptr %wp792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e67c word 0xf27ff916
  %r793.p = getelementptr inbounds i8, ptr %c, i64 64
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %t794 = and i64 %r793, -2
  %fn795 = icmp slt i64 %t794, 0
  %fz796 = icmp eq i64 %t794, 0
  %nz797 = zext i1 %fn795 to i64
  %zz798 = zext i1 %fz796 to i64
  %ns799 = shl i64 %nz797, 31
  %zs800 = shl i64 %zz798, 30
  %nzcv801 = or i64 %ns799, %zs800
  %wp802 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv801, ptr %wp802, align 8, !alias.scope !3, !noalias !4
  %wp803 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t794, ptr %wp803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e680 word 0x540001e1
  %r804.p = getelementptr inbounds i8, ptr %c, i64 272
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %fsh806 = lshr i64 %r804, 30
  %ftr807 = trunc i64 %fsh806 to i1
  %cond805 = xor i1 %ftr807, true
  br i1 %cond805, label %L_80029e6bc, label %L_80029e684
L_80029e684:
  ; @pc 0x80029e684 word 0xf9400a68
  %r808.p = getelementptr inbounds i8, ptr %c, i64 152
  %r808 = load i64, ptr %r808.p, align 8, !alias.scope !3, !noalias !4
  %t809 = add i64 %r808, 16
  %gmp810 = inttoptr i64 %t809 to ptr
  %gml811 = load i64, ptr %gmp810, align 1, !alias.scope !4, !noalias !3
  %wp812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml811, ptr %wp812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e688 word 0x39660109
  %r813.p = getelementptr inbounds i8, ptr %c, i64 64
  %r813 = load i64, ptr %r813.p, align 8, !alias.scope !3, !noalias !4
  %t814 = add i64 %r813, 2432
  %gmp815 = inttoptr i64 %t814 to ptr
  %gml816 = load i8, ptr %gmp815, align 1, !alias.scope !4, !noalias !3
  %c817 = zext i8 %gml816 to i64
  %wp818 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c817, ptr %wp818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e68c word 0x37183069
  %r819.p = getelementptr inbounds i8, ptr %c, i64 72
  %r819 = load i64, ptr %r819.p, align 8, !alias.scope !3, !noalias !4
  %t820 = and i64 %r819, 8
  %cmp821 = icmp ne i64 %t820, 0
  br i1 %cmp821, label %L_80029ec98, label %L_80029e690
L_80029e690:
  ; @pc 0x80029e690 word 0x37202349
  %r822.p = getelementptr inbounds i8, ptr %c, i64 72
  %r822 = load i64, ptr %r822.p, align 8, !alias.scope !3, !noalias !4
  %t823 = and i64 %r822, 16
  %cmp824 = icmp ne i64 %t823, 0
  br i1 %cmp824, label %L_80029eaf8, label %L_80029e694
L_80029e694:
  ; @pc 0x80029e694 word 0x52800020
  %c825 = zext i32 1 to i64
  %wp826 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c825, ptr %wp826, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e698
L_80029e698:
  ; @pc 0x80029e698 word 0x91402bff
  %r827.p = getelementptr inbounds i8, ptr %c, i64 256
  %r827 = load i64, ptr %r827.p, align 8, !alias.scope !3, !noalias !4
  %t828 = add i64 %r827, 40960
  %wp829 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t828, ptr %wp829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e69c word 0x910403ff
  %r830.p = getelementptr inbounds i8, ptr %c, i64 256
  %r830 = load i64, ptr %r830.p, align 8, !alias.scope !3, !noalias !4
  %t831 = add i64 %r830, 256
  %wp832 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t831, ptr %wp832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6a0 word 0xa9454ff4
  %r833.p = getelementptr inbounds i8, ptr %c, i64 256
  %r833 = load i64, ptr %r833.p, align 8, !alias.scope !3, !noalias !4
  %t834 = add i64 %r833, 80
  %t835 = add i64 %t834, 8
  %gmp836 = inttoptr i64 %t834 to ptr
  %gml837 = load i64, ptr %gmp836, align 1, !alias.scope !4, !noalias !3
  %gmp838 = inttoptr i64 %t835 to ptr
  %gml839 = load i64, ptr %gmp838, align 1, !alias.scope !4, !noalias !3
  %wp840 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml837, ptr %wp840, align 8, !alias.scope !3, !noalias !4
  %wp841 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml839, ptr %wp841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6a4 word 0xa94457f6
  %r842.p = getelementptr inbounds i8, ptr %c, i64 256
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %t843 = add i64 %r842, 64
  %t844 = add i64 %t843, 8
  %gmp845 = inttoptr i64 %t843 to ptr
  %gml846 = load i64, ptr %gmp845, align 1, !alias.scope !4, !noalias !3
  %gmp847 = inttoptr i64 %t844 to ptr
  %gml848 = load i64, ptr %gmp847, align 1, !alias.scope !4, !noalias !3
  %wp849 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml846, ptr %wp849, align 8, !alias.scope !3, !noalias !4
  %wp850 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml848, ptr %wp850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6a8 word 0xa9435ff8
  %r851.p = getelementptr inbounds i8, ptr %c, i64 256
  %r851 = load i64, ptr %r851.p, align 8, !alias.scope !3, !noalias !4
  %t852 = add i64 %r851, 48
  %t853 = add i64 %t852, 8
  %gmp854 = inttoptr i64 %t852 to ptr
  %gml855 = load i64, ptr %gmp854, align 1, !alias.scope !4, !noalias !3
  %gmp856 = inttoptr i64 %t853 to ptr
  %gml857 = load i64, ptr %gmp856, align 1, !alias.scope !4, !noalias !3
  %wp858 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml855, ptr %wp858, align 8, !alias.scope !3, !noalias !4
  %wp859 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml857, ptr %wp859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6ac word 0xa94267fa
  %r860.p = getelementptr inbounds i8, ptr %c, i64 256
  %r860 = load i64, ptr %r860.p, align 8, !alias.scope !3, !noalias !4
  %t861 = add i64 %r860, 32
  %t862 = add i64 %t861, 8
  %gmp863 = inttoptr i64 %t861 to ptr
  %gml864 = load i64, ptr %gmp863, align 1, !alias.scope !4, !noalias !3
  %gmp865 = inttoptr i64 %t862 to ptr
  %gml866 = load i64, ptr %gmp865, align 1, !alias.scope !4, !noalias !3
  %wp867 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml864, ptr %wp867, align 8, !alias.scope !3, !noalias !4
  %wp868 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml866, ptr %wp868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6b0 word 0xa9416ffc
  %r869.p = getelementptr inbounds i8, ptr %c, i64 256
  %r869 = load i64, ptr %r869.p, align 8, !alias.scope !3, !noalias !4
  %t870 = add i64 %r869, 16
  %t871 = add i64 %t870, 8
  %gmp872 = inttoptr i64 %t870 to ptr
  %gml873 = load i64, ptr %gmp872, align 1, !alias.scope !4, !noalias !3
  %gmp874 = inttoptr i64 %t871 to ptr
  %gml875 = load i64, ptr %gmp874, align 1, !alias.scope !4, !noalias !3
  %wp876 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml873, ptr %wp876, align 8, !alias.scope !3, !noalias !4
  %wp877 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml875, ptr %wp877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6b4 word 0xa8c67bfd
  %r878.p = getelementptr inbounds i8, ptr %c, i64 256
  %r878 = load i64, ptr %r878.p, align 8, !alias.scope !3, !noalias !4
  %t879 = add i64 %r878, 8
  %gmp880 = inttoptr i64 %r878 to ptr
  %gml881 = load i64, ptr %gmp880, align 1, !alias.scope !4, !noalias !3
  %gmp882 = inttoptr i64 %t879 to ptr
  %gml883 = load i64, ptr %gmp882, align 1, !alias.scope !4, !noalias !3
  %t884 = add i64 %r878, 96
  %wp885 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t884, ptr %wp885, align 8, !alias.scope !3, !noalias !4
  %wp886 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml881, ptr %wp886, align 8, !alias.scope !3, !noalias !4
  %wp887 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml883, ptr %wp887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6b8 word 0xd65f03c0
  ret void
L_80029e6bc:
  ; @pc 0x80029e6bc word 0xb94012d7
  %r888.p = getelementptr inbounds i8, ptr %c, i64 176
  %r888 = load i64, ptr %r888.p, align 8, !alias.scope !3, !noalias !4
  %t889 = add i64 %r888, 16
  %gmp890 = inttoptr i64 %t889 to ptr
  %gml891 = load i32, ptr %gmp890, align 1, !alias.scope !4, !noalias !3
  %c892 = zext i32 %gml891 to i64
  %wp893 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c892, ptr %wp893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6c0 word 0x710006ff
  %r894.p = getelementptr inbounds i8, ptr %c, i64 184
  %r894 = load i64, ptr %r894.p, align 8, !alias.scope !3, !noalias !4
  %c895 = trunc i64 %r894 to i32
  %t896 = sub i32 %c895, 1
  %fn897 = icmp slt i32 %t896, 0
  %fz898 = icmp eq i32 %t896, 0
  %fc899 = icmp uge i32 %c895, 1
  %fx1900 = xor i32 %c895, 1
  %fx2901 = xor i32 %c895, %t896
  %fva902 = and i32 %fx1900, %fx2901
  %fv903 = icmp slt i32 %fva902, 0
  %nz904 = zext i1 %fn897 to i64
  %zz905 = zext i1 %fz898 to i64
  %cz906 = zext i1 %fc899 to i64
  %vz907 = zext i1 %fv903 to i64
  %ns908 = shl i64 %nz904, 31
  %zs909 = shl i64 %zz905, 30
  %cs910 = shl i64 %cz906, 29
  %vs911 = shl i64 %vz907, 28
  %nzor912 = or i64 %ns908, %zs909
  %cvor913 = or i64 %cs910, %vs911
  %nzcv914 = or i64 %nzor912, %cvor913
  %wp915 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv914, ptr %wp915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6c4 word 0x54fffe0b
  %r916.p = getelementptr inbounds i8, ptr %c, i64 272
  %r916 = load i64, ptr %r916.p, align 8, !alias.scope !3, !noalias !4
  %fsh918 = lshr i64 %r916, 31
  %ftr919 = trunc i64 %fsh918 to i1
  %fsh920 = lshr i64 %r916, 28
  %ftr921 = trunc i64 %fsh920 to i1
  %cond917 = icmp ne i1 %ftr919, %ftr921
  br i1 %cond917, label %L_80029e684, label %L_80029e6c8_ft
L_80029e6e4:
  ; @pc 0x80029e6e4 word 0xb94002c9
  %r943.p = getelementptr inbounds i8, ptr %c, i64 176
  %r943 = load i64, ptr %r943.p, align 8, !alias.scope !3, !noalias !4
  %gmp944 = inttoptr i64 %r943 to ptr
  %gml945 = load i32, ptr %gmp944, align 1, !alias.scope !4, !noalias !3
  %c946 = zext i32 %gml945 to i64
  %wp947 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c946, ptr %wp947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6e8 word 0xeb09031f
  %r948.p = getelementptr inbounds i8, ptr %c, i64 192
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %r949.p = getelementptr inbounds i8, ptr %c, i64 72
  %r949 = load i64, ptr %r949.p, align 8, !alias.scope !3, !noalias !4
  %t950 = sub i64 %r948, %r949
  %fn951 = icmp slt i64 %t950, 0
  %fz952 = icmp eq i64 %t950, 0
  %fc953 = icmp uge i64 %r948, %r949
  %fx1954 = xor i64 %r948, %r949
  %fx2955 = xor i64 %r948, %t950
  %fva956 = and i64 %fx1954, %fx2955
  %fv957 = icmp slt i64 %fva956, 0
  %nz958 = zext i1 %fn951 to i64
  %zz959 = zext i1 %fz952 to i64
  %cz960 = zext i1 %fc953 to i64
  %vz961 = zext i1 %fv957 to i64
  %ns962 = shl i64 %nz958, 31
  %zs963 = shl i64 %zz959, 30
  %cs964 = shl i64 %cz960, 29
  %vs965 = shl i64 %vz961, 28
  %nzor966 = or i64 %ns962, %zs963
  %cvor967 = or i64 %cs964, %vs965
  %nzcv968 = or i64 %nzor966, %cvor967
  %wp969 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv968, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6ec word 0xf94006c8
  %r970.p = getelementptr inbounds i8, ptr %c, i64 176
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r970, 8
  %gmp972 = inttoptr i64 %t971 to ptr
  %gml973 = load i64, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %wp974 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml973, ptr %wp974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6f0 word 0x9a9f3309
  %r975.p = getelementptr inbounds i8, ptr %c, i64 192
  %r975 = load i64, ptr %r975.p, align 8, !alias.scope !3, !noalias !4
  %r976.p = getelementptr inbounds i8, ptr %c, i64 272
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %fsh978 = lshr i64 %r976, 29
  %ftr979 = trunc i64 %fsh978 to i1
  %cond977 = xor i1 %ftr979, true
  %sel980 = select i1 %cond977, i64 %r975, i64 0
  %wp981 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel980, ptr %wp981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6f4 word 0x9b1a7d2a
  %r982.p = getelementptr inbounds i8, ptr %c, i64 208
  %r982 = load i64, ptr %r982.p, align 8, !alias.scope !3, !noalias !4
  %r983.p = getelementptr inbounds i8, ptr %c, i64 72
  %r983 = load i64, ptr %r983.p, align 8, !alias.scope !3, !noalias !4
  %t984 = mul i64 %r983, %r982
  %t985 = add i64 0, %t984
  %wp986 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t985, ptr %wp986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6f8 word 0xb86a690a
  %r987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r987 = load i64, ptr %r987.p, align 8, !alias.scope !3, !noalias !4
  %r988.p = getelementptr inbounds i8, ptr %c, i64 80
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %t989 = add i64 %r987, %r988
  %gmp990 = inttoptr i64 %t989 to ptr
  %gml991 = load i32, ptr %gmp990, align 1, !alias.scope !4, !noalias !3
  %c992 = zext i32 %gml991 to i64
  %wp993 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c992, ptr %wp993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6fc word 0x5100054a
  %r994.p = getelementptr inbounds i8, ptr %c, i64 80
  %r994 = load i64, ptr %r994.p, align 8, !alias.scope !3, !noalias !4
  %c995 = trunc i64 %r994 to i32
  %t996 = sub i32 %c995, 1
  %c997 = zext i32 %t996 to i64
  %wp998 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c997, ptr %wp998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e700 word 0x71004d5f
  %r999.p = getelementptr inbounds i8, ptr %c, i64 80
  %r999 = load i64, ptr %r999.p, align 8, !alias.scope !3, !noalias !4
  %c1000 = trunc i64 %r999 to i32
  %t1001 = sub i32 %c1000, 19
  %fn1002 = icmp slt i32 %t1001, 0
  %fz1003 = icmp eq i32 %t1001, 0
  %fc1004 = icmp uge i32 %c1000, 19
  %fx11005 = xor i32 %c1000, 19
  %fx21006 = xor i32 %c1000, %t1001
  %fva1007 = and i32 %fx11005, %fx21006
  %fv1008 = icmp slt i32 %fva1007, 0
  %nz1009 = zext i1 %fn1002 to i64
  %zz1010 = zext i1 %fz1003 to i64
  %cz1011 = zext i1 %fc1004 to i64
  %vz1012 = zext i1 %fv1008 to i64
  %ns1013 = shl i64 %nz1009, 31
  %zs1014 = shl i64 %zz1010, 30
  %cs1015 = shl i64 %cz1011, 29
  %vs1016 = shl i64 %vz1012, 28
  %nzor1017 = or i64 %ns1013, %zs1014
  %cvor1018 = or i64 %cs1015, %vs1016
  %nzcv1019 = or i64 %nzor1017, %cvor1018
  %wp1020 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1019, ptr %wp1020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e704 word 0x540007a8
  %r1021.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1021 = load i64, ptr %r1021.p, align 8, !alias.scope !3, !noalias !4
  %fsh1023 = lshr i64 %r1021, 29
  %ftr1024 = trunc i64 %fsh1023 to i1
  %fsh1025 = lshr i64 %r1021, 30
  %ftr1026 = trunc i64 %fsh1025 to i1
  %fnz1027 = xor i1 %ftr1026, true
  %cond1022 = and i1 %ftr1024, %fnz1027
  br i1 %cond1022, label %L_80029e7f8, label %L_80029e708_ft
L_80029e718:
  ; @pc 0x80029e718 word 0x9b1a212d
  %r1043.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1043 = load i64, ptr %r1043.p, align 8, !alias.scope !3, !noalias !4
  %r1044.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1044 = load i64, ptr %r1044.p, align 8, !alias.scope !3, !noalias !4
  %t1045 = mul i64 %r1044, %r1043
  %r1046.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1046 = load i64, ptr %r1046.p, align 8, !alias.scope !3, !noalias !4
  %t1047 = add i64 %r1046, %t1045
  %wp1048 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1047, ptr %wp1048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e71c word 0xf8408da8
  %r1049.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1049 = load i64, ptr %r1049.p, align 8, !alias.scope !3, !noalias !4
  %t1050 = add i64 %r1049, 8
  %gmp1051 = inttoptr i64 %t1050 to ptr
  %gml1052 = load i64, ptr %gmp1051, align 1, !alias.scope !4, !noalias !3
  %wp1053 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1050, ptr %wp1053, align 8, !alias.scope !3, !noalias !4
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1052, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e720 word 0xb98009a9
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %t1056 = add i64 %r1055, 8
  %gmp1057 = inttoptr i64 %t1056 to ptr
  %gml1058 = load i32, ptr %gmp1057, align 1, !alias.scope !4, !noalias !3
  %c1059 = sext i32 %gml1058 to i64
  %wp1060 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1059, ptr %wp1060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e724 word 0x8b080128
  %r1061.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1061 = load i64, ptr %r1061.p, align 8, !alias.scope !3, !noalias !4
  %r1062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1062 = load i64, ptr %r1062.p, align 8, !alias.scope !3, !noalias !4
  %t1063 = add i64 %r1061, %r1062
  %wp1064 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1063, ptr %wp1064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e728 word 0x381ff11f
  %r1065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1065 = load i64, ptr %r1065.p, align 8, !alias.scope !3, !noalias !4
  %t1066 = add i64 %r1065, -1
  %c1067 = trunc i32 0 to i8
  %gmp1068 = inttoptr i64 %t1066 to ptr
  store i8 %c1067, ptr %gmp1068, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e72c word 0xb94002c8
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %gmp1070 = inttoptr i64 %r1069 to ptr
  %gml1071 = load i32, ptr %gmp1070, align 1, !alias.scope !4, !noalias !3
  %c1072 = zext i32 %gml1071 to i64
  %wp1073 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1072, ptr %wp1073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e730 word 0xb9418a8a
  %r1074.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1074 = load i64, ptr %r1074.p, align 8, !alias.scope !3, !noalias !4
  %t1075 = add i64 %r1074, 392
  %gmp1076 = inttoptr i64 %t1075 to ptr
  %gml1077 = load i32, ptr %gmp1076, align 1, !alias.scope !4, !noalias !3
  %c1078 = zext i32 %gml1077 to i64
  %wp1079 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1078, ptr %wp1079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e734 word 0xeb08031f
  %r1080.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1080 = load i64, ptr %r1080.p, align 8, !alias.scope !3, !noalias !4
  %r1081.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1081 = load i64, ptr %r1081.p, align 8, !alias.scope !3, !noalias !4
  %t1082 = sub i64 %r1080, %r1081
  %fn1083 = icmp slt i64 %t1082, 0
  %fz1084 = icmp eq i64 %t1082, 0
  %fc1085 = icmp uge i64 %r1080, %r1081
  %fx11086 = xor i64 %r1080, %r1081
  %fx21087 = xor i64 %r1080, %t1082
  %fva1088 = and i64 %fx11086, %fx21087
  %fv1089 = icmp slt i64 %fva1088, 0
  %nz1090 = zext i1 %fn1083 to i64
  %zz1091 = zext i1 %fz1084 to i64
  %cz1092 = zext i1 %fc1085 to i64
  %vz1093 = zext i1 %fv1089 to i64
  %ns1094 = shl i64 %nz1090, 31
  %zs1095 = shl i64 %zz1091, 30
  %cs1096 = shl i64 %cz1092, 29
  %vs1097 = shl i64 %vz1093, 28
  %nzor1098 = or i64 %ns1094, %zs1095
  %cvor1099 = or i64 %cs1096, %vs1097
  %nzcv1100 = or i64 %nzor1098, %cvor1099
  %wp1101 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1100, ptr %wp1101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e738 word 0x9a9f3309
  %r1102.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1102 = load i64, ptr %r1102.p, align 8, !alias.scope !3, !noalias !4
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %fsh1105 = lshr i64 %r1103, 29
  %ftr1106 = trunc i64 %fsh1105 to i1
  %cond1104 = xor i1 %ftr1106, true
  %sel1107 = select i1 %cond1104, i64 %r1102, i64 0
  %wp1108 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel1107, ptr %wp1108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e73c word 0x340005ea
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %c1110 = trunc i64 %r1109 to i32
  %cmp1111 = icmp eq i32 %c1110, 0
  br i1 %cmp1111, label %L_80029e7f8, label %L_80029e740_ft
L_80029e75c:
  ; @pc 0x80029e75c word 0x937d7d6e
  %r1143.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1143 = load i64, ptr %r1143.p, align 8, !alias.scope !3, !noalias !4
  %ror1144 = call i64 @llvm.fshr.i64(i64 %r1143, i64 %r1143, i64 61)
  %t1145 = lshr i64 %r1143, 31
  %t1146 = and i64 %t1145, 1
  %t1147 = sub i64 0, %t1146
  %t1148 = and i64 %t1147, -34359738368
  %t1149 = and i64 %ror1144, 34359738360
  %t1150 = or i64 %t1148, %t1149
  %wp1151 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1150, ptr %wp1151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e760 word 0xaa0d03ef
  %r1152.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1152 = load i64, ptr %r1152.p, align 8, !alias.scope !3, !noalias !4
  %t1153 = or i64 0, %r1152
  %wp1154 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1153, ptr %wp1154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e764 word 0xaa1903f0
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %t1156 = or i64 0, %r1155
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e768 word 0xf86e698e
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %r1159.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1159 = load i64, ptr %r1159.p, align 8, !alias.scope !3, !noalias !4
  %t1160 = add i64 %r1158, %r1159
  %gmp1161 = inttoptr i64 %t1160 to ptr
  %gml1162 = load i64, ptr %gmp1161, align 1, !alias.scope !4, !noalias !3
  %wp1163 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml1162, ptr %wp1163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e76c word 0xeb0e01bf
  %r1164.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1164 = load i64, ptr %r1164.p, align 8, !alias.scope !3, !noalias !4
  %r1165.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1165 = load i64, ptr %r1165.p, align 8, !alias.scope !3, !noalias !4
  %t1166 = sub i64 %r1164, %r1165
  %fn1167 = icmp slt i64 %t1166, 0
  %fz1168 = icmp eq i64 %t1166, 0
  %fc1169 = icmp uge i64 %r1164, %r1165
  %fx11170 = xor i64 %r1164, %r1165
  %fx21171 = xor i64 %r1164, %t1166
  %fva1172 = and i64 %fx11170, %fx21171
  %fv1173 = icmp slt i64 %fva1172, 0
  %nz1174 = zext i1 %fn1167 to i64
  %zz1175 = zext i1 %fz1168 to i64
  %cz1176 = zext i1 %fc1169 to i64
  %vz1177 = zext i1 %fv1173 to i64
  %ns1178 = shl i64 %nz1174, 31
  %zs1179 = shl i64 %zz1175, 30
  %cs1180 = shl i64 %cz1176, 29
  %vs1181 = shl i64 %vz1177, 28
  %nzor1182 = or i64 %ns1178, %zs1179
  %cvor1183 = or i64 %cs1180, %vs1181
  %nzcv1184 = or i64 %nzor1182, %cvor1183
  %wp1185 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1184, ptr %wp1185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e770 word 0x540002a0
  %r1186.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1186 = load i64, ptr %r1186.p, align 8, !alias.scope !3, !noalias !4
  %fsh1188 = lshr i64 %r1186, 30
  %cond1187 = trunc i64 %fsh1188 to i1
  br i1 %cond1187, label %L_80029e7c4, label %L_80029e774
L_80029e774:
  ; @pc 0x80029e774 word 0x384015f1
  %r1189.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1189 = load i64, ptr %r1189.p, align 8, !alias.scope !3, !noalias !4
  %t1190 = add i64 %r1189, 1
  %gmp1191 = inttoptr i64 %r1189 to ptr
  %gml1192 = load i8, ptr %gmp1191, align 1, !alias.scope !4, !noalias !3
  %c1193 = zext i8 %gml1192 to i64
  %wp1194 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1190, ptr %wp1194, align 8, !alias.scope !3, !noalias !4
  %wp1195 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1193, ptr %wp1195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e778 word 0x384015d2
  %r1196.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1196 = load i64, ptr %r1196.p, align 8, !alias.scope !3, !noalias !4
  %t1197 = add i64 %r1196, 1
  %gmp1198 = inttoptr i64 %r1196 to ptr
  %gml1199 = load i8, ptr %gmp1198, align 1, !alias.scope !4, !noalias !3
  %c1200 = zext i8 %gml1199 to i64
  %wp1201 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1197, ptr %wp1201, align 8, !alias.scope !3, !noalias !4
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1200, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e77c word 0x6b12023f
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %c1204 = trunc i64 %r1203 to i32
  %r1205.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1205 = load i64, ptr %r1205.p, align 8, !alias.scope !3, !noalias !4
  %c1206 = trunc i64 %r1205 to i32
  %t1207 = sub i32 %c1204, %c1206
  %fn1208 = icmp slt i32 %t1207, 0
  %fz1209 = icmp eq i32 %t1207, 0
  %fc1210 = icmp uge i32 %c1204, %c1206
  %fx11211 = xor i32 %c1204, %c1206
  %fx21212 = xor i32 %c1204, %t1207
  %fva1213 = and i32 %fx11211, %fx21212
  %fv1214 = icmp slt i32 %fva1213, 0
  %nz1215 = zext i1 %fn1208 to i64
  %zz1216 = zext i1 %fz1209 to i64
  %cz1217 = zext i1 %fc1210 to i64
  %vz1218 = zext i1 %fv1214 to i64
  %ns1219 = shl i64 %nz1215, 31
  %zs1220 = shl i64 %zz1216, 30
  %cs1221 = shl i64 %cz1217, 29
  %vs1222 = shl i64 %vz1218, 28
  %nzor1223 = or i64 %ns1219, %zs1220
  %cvor1224 = or i64 %cs1221, %vs1222
  %nzcv1225 = or i64 %nzor1223, %cvor1224
  %wp1226 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1225, ptr %wp1226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e780 word 0x54000081
  %r1227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1227 = load i64, ptr %r1227.p, align 8, !alias.scope !3, !noalias !4
  %fsh1229 = lshr i64 %r1227, 30
  %ftr1230 = trunc i64 %fsh1229 to i1
  %cond1228 = xor i1 %ftr1230, true
  br i1 %cond1228, label %L_80029e790, label %L_80029e784_ft
L_80029e790:
  ; @pc 0x80029e790 word 0x9100056e
  %r1260.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1260 = load i64, ptr %r1260.p, align 8, !alias.scope !3, !noalias !4
  %t1261 = add i64 %r1260, 1
  %wp1262 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1261, ptr %wp1262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e794 word 0x11000508
  %r1263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1263 = load i64, ptr %r1263.p, align 8, !alias.scope !3, !noalias !4
  %c1264 = trunc i64 %r1263 to i32
  %t1265 = add i32 %c1264, 1
  %c1266 = zext i32 %t1265 to i64
  %wp1267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1266, ptr %wp1267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e798 word 0x92407dcb
  %r1268.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1268 = load i64, ptr %r1268.p, align 8, !alias.scope !3, !noalias !4
  %t1269 = and i64 %r1268, 4294967295
  %wp1270 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1269, ptr %wp1270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e79c word 0x6b0e015f
  %r1271.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1271 = load i64, ptr %r1271.p, align 8, !alias.scope !3, !noalias !4
  %c1272 = trunc i64 %r1271 to i32
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %c1274 = trunc i64 %r1273 to i32
  %t1275 = sub i32 %c1272, %c1274
  %fn1276 = icmp slt i32 %t1275, 0
  %fz1277 = icmp eq i32 %t1275, 0
  %fc1278 = icmp uge i32 %c1272, %c1274
  %fx11279 = xor i32 %c1272, %c1274
  %fx21280 = xor i32 %c1272, %t1275
  %fva1281 = and i32 %fx11279, %fx21280
  %fv1282 = icmp slt i32 %fva1281, 0
  %nz1283 = zext i1 %fn1276 to i64
  %zz1284 = zext i1 %fz1277 to i64
  %cz1285 = zext i1 %fc1278 to i64
  %vz1286 = zext i1 %fv1282 to i64
  %ns1287 = shl i64 %nz1283, 31
  %zs1288 = shl i64 %zz1284, 30
  %cs1289 = shl i64 %cz1285, 29
  %vs1290 = shl i64 %vz1286, 28
  %nzor1291 = or i64 %ns1287, %zs1288
  %cvor1292 = or i64 %cs1289, %vs1290
  %nzcv1293 = or i64 %nzor1291, %cvor1292
  %wp1294 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1293, ptr %wp1294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7a0 word 0x54fffde1
  %r1295.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1295 = load i64, ptr %r1295.p, align 8, !alias.scope !3, !noalias !4
  %fsh1297 = lshr i64 %r1295, 30
  %ftr1298 = trunc i64 %fsh1297 to i1
  %cond1296 = xor i1 %ftr1298, true
  br i1 %cond1296, label %L_80029e75c, label %L_80029e7a4_ft
L_80029e7a8:
  ; @pc 0x80029e7a8 word 0xf150017f
  %r1299.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1299 = load i64, ptr %r1299.p, align 8, !alias.scope !3, !noalias !4
  %t1300 = sub i64 %r1299, 4194304
  %fn1301 = icmp slt i64 %t1300, 0
  %fz1302 = icmp eq i64 %t1300, 0
  %fc1303 = icmp uge i64 %r1299, 4194304
  %fx11304 = xor i64 %r1299, 4194304
  %fx21305 = xor i64 %r1299, %t1300
  %fva1306 = and i64 %fx11304, %fx21305
  %fv1307 = icmp slt i64 %fva1306, 0
  %nz1308 = zext i1 %fn1301 to i64
  %zz1309 = zext i1 %fz1302 to i64
  %cz1310 = zext i1 %fc1303 to i64
  %vz1311 = zext i1 %fv1307 to i64
  %ns1312 = shl i64 %nz1308, 31
  %zs1313 = shl i64 %zz1309, 30
  %cs1314 = shl i64 %cz1310, 29
  %vs1315 = shl i64 %vz1311, 28
  %nzor1316 = or i64 %ns1312, %zs1313
  %cvor1317 = or i64 %cs1314, %vs1315
  %nzcv1318 = or i64 %nzor1316, %cvor1317
  %wp1319 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1318, ptr %wp1319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7ac word 0x54005740
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %fsh1322 = lshr i64 %r1320, 30
  %cond1321 = trunc i64 %fsh1322 to i1
  br i1 %cond1321, label %L_80029f294, label %L_80029e7b0_ft
L_80029e7c4:
  ; @pc 0x80029e7c4 word 0xb9419a8a
  %r1339.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1339 = load i64, ptr %r1339.p, align 8, !alias.scope !3, !noalias !4
  %t1340 = add i64 %r1339, 408
  %gmp1341 = inttoptr i64 %t1340 to ptr
  %gml1342 = load i32, ptr %gmp1341, align 1, !alias.scope !4, !noalias !3
  %c1343 = zext i32 %gml1342 to i64
  %wp1344 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1343, ptr %wp1344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7c8 word 0x6b08015f
  %r1345.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1345 = load i64, ptr %r1345.p, align 8, !alias.scope !3, !noalias !4
  %c1346 = trunc i64 %r1345 to i32
  %r1347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1347 = load i64, ptr %r1347.p, align 8, !alias.scope !3, !noalias !4
  %c1348 = trunc i64 %r1347 to i32
  %t1349 = sub i32 %c1346, %c1348
  %fn1350 = icmp slt i32 %t1349, 0
  %fz1351 = icmp eq i32 %t1349, 0
  %fc1352 = icmp uge i32 %c1346, %c1348
  %fx11353 = xor i32 %c1346, %c1348
  %fx21354 = xor i32 %c1346, %t1349
  %fva1355 = and i32 %fx11353, %fx21354
  %fv1356 = icmp slt i32 %fva1355, 0
  %nz1357 = zext i1 %fn1350 to i64
  %zz1358 = zext i1 %fz1351 to i64
  %cz1359 = zext i1 %fc1352 to i64
  %vz1360 = zext i1 %fv1356 to i64
  %ns1361 = shl i64 %nz1357, 31
  %zs1362 = shl i64 %zz1358, 30
  %cs1363 = shl i64 %cz1359, 29
  %vs1364 = shl i64 %vz1360, 28
  %nzor1365 = or i64 %ns1361, %zs1362
  %cvor1366 = or i64 %cs1363, %vs1364
  %nzcv1367 = or i64 %nzor1365, %cvor1366
  %wp1368 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1367, ptr %wp1368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7cc word 0x5400016d
  %r1369.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1369 = load i64, ptr %r1369.p, align 8, !alias.scope !3, !noalias !4
  %fsh1371 = lshr i64 %r1369, 30
  %ftr1372 = trunc i64 %fsh1371 to i1
  %fsh1373 = lshr i64 %r1369, 31
  %ftr1374 = trunc i64 %fsh1373 to i1
  %fsh1375 = lshr i64 %r1369, 28
  %ftr1376 = trunc i64 %fsh1375 to i1
  %fnz1377 = xor i1 %ftr1372, true
  %feq1378 = icmp eq i1 %ftr1374, %ftr1376
  %fgt1379 = and i1 %fnz1377, %feq1378
  %cond1370 = xor i1 %fgt1379, true
  br i1 %cond1370, label %L_80029e7f8, label %L_80029e7d0_ft
L_80029e7e4:
  ; @pc 0x80029e7e4 word 0x6b08013f
  %r1417.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1417 = load i64, ptr %r1417.p, align 8, !alias.scope !3, !noalias !4
  %c1418 = trunc i64 %r1417 to i32
  %r1419.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1419 = load i64, ptr %r1419.p, align 8, !alias.scope !3, !noalias !4
  %c1420 = trunc i64 %r1419 to i32
  %t1421 = sub i32 %c1418, %c1420
  %fn1422 = icmp slt i32 %t1421, 0
  %fz1423 = icmp eq i32 %t1421, 0
  %fc1424 = icmp uge i32 %c1418, %c1420
  %fx11425 = xor i32 %c1418, %c1420
  %fx21426 = xor i32 %c1418, %t1421
  %fva1427 = and i32 %fx11425, %fx21426
  %fv1428 = icmp slt i32 %fva1427, 0
  %nz1429 = zext i1 %fn1422 to i64
  %zz1430 = zext i1 %fz1423 to i64
  %cz1431 = zext i1 %fc1424 to i64
  %vz1432 = zext i1 %fv1428 to i64
  %ns1433 = shl i64 %nz1429, 31
  %zs1434 = shl i64 %zz1430, 30
  %cs1435 = shl i64 %cz1431, 29
  %vs1436 = shl i64 %vz1432, 28
  %nzor1437 = or i64 %ns1433, %zs1434
  %cvor1438 = or i64 %cs1435, %vs1436
  %nzcv1439 = or i64 %nzor1437, %cvor1438
  %wp1440 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1439, ptr %wp1440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7e8 word 0x1a9f8108
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %c1442 = trunc i64 %r1441 to i32
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %fsh1445 = lshr i64 %r1443, 29
  %ftr1446 = trunc i64 %fsh1445 to i1
  %fsh1447 = lshr i64 %r1443, 30
  %ftr1448 = trunc i64 %fsh1447 to i1
  %fnz1449 = xor i1 %ftr1448, true
  %cond1444 = and i1 %ftr1446, %fnz1449
  %sel1450 = select i1 %cond1444, i32 %c1442, i32 0
  %c1451 = zext i32 %sel1450 to i64
  %wp1452 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1451, ptr %wp1452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7ec word 0x38684949
  %r1453.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1453 = load i64, ptr %r1453.p, align 8, !alias.scope !3, !noalias !4
  %r1454.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1454 = load i64, ptr %r1454.p, align 8, !alias.scope !3, !noalias !4
  %c1455 = trunc i64 %r1454 to i32
  %c1456 = zext i32 %c1455 to i64
  %t1457 = add i64 %r1453, %c1456
  %gmp1458 = inttoptr i64 %t1457 to ptr
  %gml1459 = load i8, ptr %gmp1458, align 1, !alias.scope !4, !noalias !3
  %c1460 = zext i8 %gml1459 to i64
  %wp1461 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1460, ptr %wp1461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7f0 word 0x11000529
  %r1462.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1462 = load i64, ptr %r1462.p, align 8, !alias.scope !3, !noalias !4
  %c1463 = trunc i64 %r1462 to i32
  %t1464 = add i32 %c1463, 1
  %c1465 = zext i32 %t1464 to i64
  %wp1466 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1465, ptr %wp1466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7f4 word 0x38284949
  %r1467.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1467 = load i64, ptr %r1467.p, align 8, !alias.scope !3, !noalias !4
  %r1468.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1468 = load i64, ptr %r1468.p, align 8, !alias.scope !3, !noalias !4
  %c1469 = trunc i64 %r1468 to i32
  %c1470 = zext i32 %c1469 to i64
  %t1471 = add i64 %r1467, %c1470
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %c1473 = trunc i64 %r1472 to i32
  %c1474 = trunc i32 %c1473 to i8
  %gmp1475 = inttoptr i64 %t1471 to ptr
  store i8 %c1474, ptr %gmp1475, align 1, !alias.scope !4, !noalias !3
  br label %L_80029e7f8
L_80029e7f8:
  ; @pc 0x80029e7f8 word 0x91000718
  %r1476.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1476 = load i64, ptr %r1476.p, align 8, !alias.scope !3, !noalias !4
  %t1477 = add i64 %r1476, 1
  %wp1478 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1477, ptr %wp1478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7fc word 0xeb17031f
  %r1479.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1479 = load i64, ptr %r1479.p, align 8, !alias.scope !3, !noalias !4
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %t1481 = sub i64 %r1479, %r1480
  %fn1482 = icmp slt i64 %t1481, 0
  %fz1483 = icmp eq i64 %t1481, 0
  %fc1484 = icmp uge i64 %r1479, %r1480
  %fx11485 = xor i64 %r1479, %r1480
  %fx21486 = xor i64 %r1479, %t1481
  %fva1487 = and i64 %fx11485, %fx21486
  %fv1488 = icmp slt i64 %fva1487, 0
  %nz1489 = zext i1 %fn1482 to i64
  %zz1490 = zext i1 %fz1483 to i64
  %cz1491 = zext i1 %fc1484 to i64
  %vz1492 = zext i1 %fv1488 to i64
  %ns1493 = shl i64 %nz1489, 31
  %zs1494 = shl i64 %zz1490, 30
  %cs1495 = shl i64 %cz1491, 29
  %vs1496 = shl i64 %vz1492, 28
  %nzor1497 = or i64 %ns1493, %zs1494
  %cvor1498 = or i64 %cs1495, %vs1496
  %nzcv1499 = or i64 %nzor1497, %cvor1498
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1499, ptr %wp1500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e800 word 0x54fff721
  %r1501.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1501 = load i64, ptr %r1501.p, align 8, !alias.scope !3, !noalias !4
  %fsh1503 = lshr i64 %r1501, 30
  %ftr1504 = trunc i64 %fsh1503 to i1
  %cond1502 = xor i1 %ftr1504, true
  br i1 %cond1502, label %L_80029e6e4, label %L_80029e804_ft
L_80029e808:
  ; @pc 0x80029e808 word 0x9b1a212d
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %t1507 = mul i64 %r1506, %r1505
  %r1508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1508 = load i64, ptr %r1508.p, align 8, !alias.scope !3, !noalias !4
  %t1509 = add i64 %r1508, %t1507
  %wp1510 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1509, ptr %wp1510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e80c word 0xf8408da8
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %t1512 = add i64 %r1511, 8
  %gmp1513 = inttoptr i64 %t1512 to ptr
  %gml1514 = load i64, ptr %gmp1513, align 1, !alias.scope !4, !noalias !3
  %wp1515 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1512, ptr %wp1515, align 8, !alias.scope !3, !noalias !4
  %wp1516 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1514, ptr %wp1516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e810 word 0xb98009a9
  %r1517.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1517 = load i64, ptr %r1517.p, align 8, !alias.scope !3, !noalias !4
  %t1518 = add i64 %r1517, 8
  %gmp1519 = inttoptr i64 %t1518 to ptr
  %gml1520 = load i32, ptr %gmp1519, align 1, !alias.scope !4, !noalias !3
  %c1521 = sext i32 %gml1520 to i64
  %wp1522 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1521, ptr %wp1522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e814 word 0x8b080128
  %r1523.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1523 = load i64, ptr %r1523.p, align 8, !alias.scope !3, !noalias !4
  %r1524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1524 = load i64, ptr %r1524.p, align 8, !alias.scope !3, !noalias !4
  %t1525 = add i64 %r1523, %r1524
  %wp1526 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1525, ptr %wp1526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e818 word 0x381ff11f
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %t1528 = add i64 %r1527, -1
  %c1529 = trunc i32 0 to i8
  %gmp1530 = inttoptr i64 %t1528 to ptr
  store i8 %c1529, ptr %gmp1530, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e81c word 0xb94002c8
  %r1531.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1531 = load i64, ptr %r1531.p, align 8, !alias.scope !3, !noalias !4
  %gmp1532 = inttoptr i64 %r1531 to ptr
  %gml1533 = load i32, ptr %gmp1532, align 1, !alias.scope !4, !noalias !3
  %c1534 = zext i32 %gml1533 to i64
  %wp1535 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1534, ptr %wp1535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e820 word 0xb9409a8a
  %r1536.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1536 = load i64, ptr %r1536.p, align 8, !alias.scope !3, !noalias !4
  %t1537 = add i64 %r1536, 152
  %gmp1538 = inttoptr i64 %t1537 to ptr
  %gml1539 = load i32, ptr %gmp1538, align 1, !alias.scope !4, !noalias !3
  %c1540 = zext i32 %gml1539 to i64
  %wp1541 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1540, ptr %wp1541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e824 word 0xeb08031f
  %r1542.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1542 = load i64, ptr %r1542.p, align 8, !alias.scope !3, !noalias !4
  %r1543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1543 = load i64, ptr %r1543.p, align 8, !alias.scope !3, !noalias !4
  %t1544 = sub i64 %r1542, %r1543
  %fn1545 = icmp slt i64 %t1544, 0
  %fz1546 = icmp eq i64 %t1544, 0
  %fc1547 = icmp uge i64 %r1542, %r1543
  %fx11548 = xor i64 %r1542, %r1543
  %fx21549 = xor i64 %r1542, %t1544
  %fva1550 = and i64 %fx11548, %fx21549
  %fv1551 = icmp slt i64 %fva1550, 0
  %nz1552 = zext i1 %fn1545 to i64
  %zz1553 = zext i1 %fz1546 to i64
  %cz1554 = zext i1 %fc1547 to i64
  %vz1555 = zext i1 %fv1551 to i64
  %ns1556 = shl i64 %nz1552, 31
  %zs1557 = shl i64 %zz1553, 30
  %cs1558 = shl i64 %cz1554, 29
  %vs1559 = shl i64 %vz1555, 28
  %nzor1560 = or i64 %ns1556, %zs1557
  %cvor1561 = or i64 %cs1558, %vs1559
  %nzcv1562 = or i64 %nzor1560, %cvor1561
  %wp1563 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1562, ptr %wp1563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e828 word 0x9a9f3309
  %r1564.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1564 = load i64, ptr %r1564.p, align 8, !alias.scope !3, !noalias !4
  %r1565.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1565 = load i64, ptr %r1565.p, align 8, !alias.scope !3, !noalias !4
  %fsh1567 = lshr i64 %r1565, 29
  %ftr1568 = trunc i64 %fsh1567 to i1
  %cond1566 = xor i1 %ftr1568, true
  %sel1569 = select i1 %cond1566, i64 %r1564, i64 0
  %wp1570 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel1569, ptr %wp1570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e82c word 0x34fffe6a
  %r1571.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1571 = load i64, ptr %r1571.p, align 8, !alias.scope !3, !noalias !4
  %c1572 = trunc i64 %r1571 to i32
  %cmp1573 = icmp eq i32 %c1572, 0
  br i1 %cmp1573, label %L_80029e7f8, label %L_80029e830_ft
L_80029e84c:
  ; @pc 0x80029e84c word 0x937d7d6e
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %ror1606 = call i64 @llvm.fshr.i64(i64 %r1605, i64 %r1605, i64 61)
  %t1607 = lshr i64 %r1605, 31
  %t1608 = and i64 %t1607, 1
  %t1609 = sub i64 0, %t1608
  %t1610 = and i64 %t1609, -34359738368
  %t1611 = and i64 %ror1606, 34359738360
  %t1612 = or i64 %t1610, %t1611
  %wp1613 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1612, ptr %wp1613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e850 word 0xaa0d03ef
  %r1614.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1614 = load i64, ptr %r1614.p, align 8, !alias.scope !3, !noalias !4
  %t1615 = or i64 0, %r1614
  %wp1616 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1615, ptr %wp1616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e854 word 0xaa1903f0
  %r1617.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1617 = load i64, ptr %r1617.p, align 8, !alias.scope !3, !noalias !4
  %t1618 = or i64 0, %r1617
  %wp1619 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1618, ptr %wp1619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e858 word 0xf86e698e
  %r1620.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1620 = load i64, ptr %r1620.p, align 8, !alias.scope !3, !noalias !4
  %r1621.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1621 = load i64, ptr %r1621.p, align 8, !alias.scope !3, !noalias !4
  %t1622 = add i64 %r1620, %r1621
  %gmp1623 = inttoptr i64 %t1622 to ptr
  %gml1624 = load i64, ptr %gmp1623, align 1, !alias.scope !4, !noalias !3
  %wp1625 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml1624, ptr %wp1625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e85c word 0xeb0e01bf
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %r1627.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1627 = load i64, ptr %r1627.p, align 8, !alias.scope !3, !noalias !4
  %t1628 = sub i64 %r1626, %r1627
  %fn1629 = icmp slt i64 %t1628, 0
  %fz1630 = icmp eq i64 %t1628, 0
  %fc1631 = icmp uge i64 %r1626, %r1627
  %fx11632 = xor i64 %r1626, %r1627
  %fx21633 = xor i64 %r1626, %t1628
  %fva1634 = and i64 %fx11632, %fx21633
  %fv1635 = icmp slt i64 %fva1634, 0
  %nz1636 = zext i1 %fn1629 to i64
  %zz1637 = zext i1 %fz1630 to i64
  %cz1638 = zext i1 %fc1631 to i64
  %vz1639 = zext i1 %fv1635 to i64
  %ns1640 = shl i64 %nz1636, 31
  %zs1641 = shl i64 %zz1637, 30
  %cs1642 = shl i64 %cz1638, 29
  %vs1643 = shl i64 %vz1639, 28
  %nzor1644 = or i64 %ns1640, %zs1641
  %cvor1645 = or i64 %cs1642, %vs1643
  %nzcv1646 = or i64 %nzor1644, %cvor1645
  %wp1647 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1646, ptr %wp1647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e860 word 0x540001c0
  %r1648.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1648 = load i64, ptr %r1648.p, align 8, !alias.scope !3, !noalias !4
  %fsh1650 = lshr i64 %r1648, 30
  %cond1649 = trunc i64 %fsh1650 to i1
  br i1 %cond1649, label %L_80029e898, label %L_80029e864
L_80029e864:
  ; @pc 0x80029e864 word 0x384015f1
  %r1651.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1651 = load i64, ptr %r1651.p, align 8, !alias.scope !3, !noalias !4
  %t1652 = add i64 %r1651, 1
  %gmp1653 = inttoptr i64 %r1651 to ptr
  %gml1654 = load i8, ptr %gmp1653, align 1, !alias.scope !4, !noalias !3
  %c1655 = zext i8 %gml1654 to i64
  %wp1656 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1652, ptr %wp1656, align 8, !alias.scope !3, !noalias !4
  %wp1657 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1655, ptr %wp1657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e868 word 0x384015d2
  %r1658.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1658 = load i64, ptr %r1658.p, align 8, !alias.scope !3, !noalias !4
  %t1659 = add i64 %r1658, 1
  %gmp1660 = inttoptr i64 %r1658 to ptr
  %gml1661 = load i8, ptr %gmp1660, align 1, !alias.scope !4, !noalias !3
  %c1662 = zext i8 %gml1661 to i64
  %wp1663 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1659, ptr %wp1663, align 8, !alias.scope !3, !noalias !4
  %wp1664 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1662, ptr %wp1664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e86c word 0x6b12023f
  %r1665.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1665 = load i64, ptr %r1665.p, align 8, !alias.scope !3, !noalias !4
  %c1666 = trunc i64 %r1665 to i32
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %c1668 = trunc i64 %r1667 to i32
  %t1669 = sub i32 %c1666, %c1668
  %fn1670 = icmp slt i32 %t1669, 0
  %fz1671 = icmp eq i32 %t1669, 0
  %fc1672 = icmp uge i32 %c1666, %c1668
  %fx11673 = xor i32 %c1666, %c1668
  %fx21674 = xor i32 %c1666, %t1669
  %fva1675 = and i32 %fx11673, %fx21674
  %fv1676 = icmp slt i32 %fva1675, 0
  %nz1677 = zext i1 %fn1670 to i64
  %zz1678 = zext i1 %fz1671 to i64
  %cz1679 = zext i1 %fc1672 to i64
  %vz1680 = zext i1 %fv1676 to i64
  %ns1681 = shl i64 %nz1677, 31
  %zs1682 = shl i64 %zz1678, 30
  %cs1683 = shl i64 %cz1679, 29
  %vs1684 = shl i64 %vz1680, 28
  %nzor1685 = or i64 %ns1681, %zs1682
  %cvor1686 = or i64 %cs1683, %vs1684
  %nzcv1687 = or i64 %nzor1685, %cvor1686
  %wp1688 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1687, ptr %wp1688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e870 word 0x54000081
  %r1689.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1689 = load i64, ptr %r1689.p, align 8, !alias.scope !3, !noalias !4
  %fsh1691 = lshr i64 %r1689, 30
  %ftr1692 = trunc i64 %fsh1691 to i1
  %cond1690 = xor i1 %ftr1692, true
  br i1 %cond1690, label %L_80029e880, label %L_80029e874_ft
L_80029e880:
  ; @pc 0x80029e880 word 0x9100056e
  %r1722.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1722 = load i64, ptr %r1722.p, align 8, !alias.scope !3, !noalias !4
  %t1723 = add i64 %r1722, 1
  %wp1724 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1723, ptr %wp1724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e884 word 0x11000508
  %r1725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1725 = load i64, ptr %r1725.p, align 8, !alias.scope !3, !noalias !4
  %c1726 = trunc i64 %r1725 to i32
  %t1727 = add i32 %c1726, 1
  %c1728 = zext i32 %t1727 to i64
  %wp1729 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1728, ptr %wp1729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e888 word 0x92407dcb
  %r1730.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1730 = load i64, ptr %r1730.p, align 8, !alias.scope !3, !noalias !4
  %t1731 = and i64 %r1730, 4294967295
  %wp1732 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1731, ptr %wp1732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e88c word 0x6b0e015f
  %r1733.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1733 = load i64, ptr %r1733.p, align 8, !alias.scope !3, !noalias !4
  %c1734 = trunc i64 %r1733 to i32
  %r1735.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1735 = load i64, ptr %r1735.p, align 8, !alias.scope !3, !noalias !4
  %c1736 = trunc i64 %r1735 to i32
  %t1737 = sub i32 %c1734, %c1736
  %fn1738 = icmp slt i32 %t1737, 0
  %fz1739 = icmp eq i32 %t1737, 0
  %fc1740 = icmp uge i32 %c1734, %c1736
  %fx11741 = xor i32 %c1734, %c1736
  %fx21742 = xor i32 %c1734, %t1737
  %fva1743 = and i32 %fx11741, %fx21742
  %fv1744 = icmp slt i32 %fva1743, 0
  %nz1745 = zext i1 %fn1738 to i64
  %zz1746 = zext i1 %fz1739 to i64
  %cz1747 = zext i1 %fc1740 to i64
  %vz1748 = zext i1 %fv1744 to i64
  %ns1749 = shl i64 %nz1745, 31
  %zs1750 = shl i64 %zz1746, 30
  %cs1751 = shl i64 %cz1747, 29
  %vs1752 = shl i64 %vz1748, 28
  %nzor1753 = or i64 %ns1749, %zs1750
  %cvor1754 = or i64 %cs1751, %vs1752
  %nzcv1755 = or i64 %nzor1753, %cvor1754
  %wp1756 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1755, ptr %wp1756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e890 word 0x54fffde1
  %r1757.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1757 = load i64, ptr %r1757.p, align 8, !alias.scope !3, !noalias !4
  %fsh1759 = lshr i64 %r1757, 30
  %ftr1760 = trunc i64 %fsh1759 to i1
  %cond1758 = xor i1 %ftr1760, true
  br i1 %cond1758, label %L_80029e84c, label %L_80029e894_ft
L_80029e898:
  ; @pc 0x80029e898 word 0xb940aa8a
  %r1761.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1761 = load i64, ptr %r1761.p, align 8, !alias.scope !3, !noalias !4
  %t1762 = add i64 %r1761, 168
  %gmp1763 = inttoptr i64 %t1762 to ptr
  %gml1764 = load i32, ptr %gmp1763, align 1, !alias.scope !4, !noalias !3
  %c1765 = zext i32 %gml1764 to i64
  %wp1766 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1765, ptr %wp1766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e89c word 0x6b08015f
  %r1767.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1767 = load i64, ptr %r1767.p, align 8, !alias.scope !3, !noalias !4
  %c1768 = trunc i64 %r1767 to i32
  %r1769.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1769 = load i64, ptr %r1769.p, align 8, !alias.scope !3, !noalias !4
  %c1770 = trunc i64 %r1769 to i32
  %t1771 = sub i32 %c1768, %c1770
  %fn1772 = icmp slt i32 %t1771, 0
  %fz1773 = icmp eq i32 %t1771, 0
  %fc1774 = icmp uge i32 %c1768, %c1770
  %fx11775 = xor i32 %c1768, %c1770
  %fx21776 = xor i32 %c1768, %t1771
  %fva1777 = and i32 %fx11775, %fx21776
  %fv1778 = icmp slt i32 %fva1777, 0
  %nz1779 = zext i1 %fn1772 to i64
  %zz1780 = zext i1 %fz1773 to i64
  %cz1781 = zext i1 %fc1774 to i64
  %vz1782 = zext i1 %fv1778 to i64
  %ns1783 = shl i64 %nz1779, 31
  %zs1784 = shl i64 %zz1780, 30
  %cs1785 = shl i64 %cz1781, 29
  %vs1786 = shl i64 %vz1782, 28
  %nzor1787 = or i64 %ns1783, %zs1784
  %cvor1788 = or i64 %cs1785, %vs1786
  %nzcv1789 = or i64 %nzor1787, %cvor1788
  %wp1790 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1789, ptr %wp1790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8a0 word 0x54fffacd
  %r1791.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1791 = load i64, ptr %r1791.p, align 8, !alias.scope !3, !noalias !4
  %fsh1793 = lshr i64 %r1791, 30
  %ftr1794 = trunc i64 %fsh1793 to i1
  %fsh1795 = lshr i64 %r1791, 31
  %ftr1796 = trunc i64 %fsh1795 to i1
  %fsh1797 = lshr i64 %r1791, 28
  %ftr1798 = trunc i64 %fsh1797 to i1
  %fnz1799 = xor i1 %ftr1794, true
  %feq1800 = icmp eq i1 %ftr1796, %ftr1798
  %fgt1801 = and i1 %fnz1799, %feq1800
  %cond1792 = xor i1 %fgt1801, true
  br i1 %cond1792, label %L_80029e7f8, label %L_80029e8a4_ft
L_80029e8bc:
  ; @pc 0x80029e8bc word 0x9b1a212a
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %t1841 = mul i64 %r1840, %r1839
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %t1843 = add i64 %r1842, %t1841
  %wp1844 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1843, ptr %wp1844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8c0 word 0xf8408d48
  %r1845.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1845 = load i64, ptr %r1845.p, align 8, !alias.scope !3, !noalias !4
  %t1846 = add i64 %r1845, 8
  %gmp1847 = inttoptr i64 %t1846 to ptr
  %gml1848 = load i64, ptr %gmp1847, align 1, !alias.scope !4, !noalias !3
  %wp1849 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1846, ptr %wp1849, align 8, !alias.scope !3, !noalias !4
  %wp1850 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1848, ptr %wp1850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8c4 word 0xb9800949
  %r1851.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1851 = load i64, ptr %r1851.p, align 8, !alias.scope !3, !noalias !4
  %t1852 = add i64 %r1851, 8
  %gmp1853 = inttoptr i64 %t1852 to ptr
  %gml1854 = load i32, ptr %gmp1853, align 1, !alias.scope !4, !noalias !3
  %c1855 = sext i32 %gml1854 to i64
  %wp1856 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1855, ptr %wp1856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8c8 word 0x8b080128
  %r1857.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1857 = load i64, ptr %r1857.p, align 8, !alias.scope !3, !noalias !4
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %t1859 = add i64 %r1857, %r1858
  %wp1860 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1859, ptr %wp1860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8cc word 0x381ff11f
  %r1861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1861 = load i64, ptr %r1861.p, align 8, !alias.scope !3, !noalias !4
  %t1862 = add i64 %r1861, -1
  %c1863 = trunc i32 0 to i8
  %gmp1864 = inttoptr i64 %t1862 to ptr
  store i8 %c1863, ptr %gmp1864, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e8d0 word 0xb94002c8
  %r1865.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1865 = load i64, ptr %r1865.p, align 8, !alias.scope !3, !noalias !4
  %gmp1866 = inttoptr i64 %r1865 to ptr
  %gml1867 = load i32, ptr %gmp1866, align 1, !alias.scope !4, !noalias !3
  %c1868 = zext i32 %gml1867 to i64
  %wp1869 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1868, ptr %wp1869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8d4 word 0xb9454a89
  %r1870.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1870 = load i64, ptr %r1870.p, align 8, !alias.scope !3, !noalias !4
  %t1871 = add i64 %r1870, 1352
  %gmp1872 = inttoptr i64 %t1871 to ptr
  %gml1873 = load i32, ptr %gmp1872, align 1, !alias.scope !4, !noalias !3
  %c1874 = zext i32 %gml1873 to i64
  %wp1875 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1874, ptr %wp1875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8d8 word 0xeb08031f
  %r1876.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1876 = load i64, ptr %r1876.p, align 8, !alias.scope !3, !noalias !4
  %r1877.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1877 = load i64, ptr %r1877.p, align 8, !alias.scope !3, !noalias !4
  %t1878 = sub i64 %r1876, %r1877
  %fn1879 = icmp slt i64 %t1878, 0
  %fz1880 = icmp eq i64 %t1878, 0
  %fc1881 = icmp uge i64 %r1876, %r1877
  %fx11882 = xor i64 %r1876, %r1877
  %fx21883 = xor i64 %r1876, %t1878
  %fva1884 = and i64 %fx11882, %fx21883
  %fv1885 = icmp slt i64 %fva1884, 0
  %nz1886 = zext i1 %fn1879 to i64
  %zz1887 = zext i1 %fz1880 to i64
  %cz1888 = zext i1 %fc1881 to i64
  %vz1889 = zext i1 %fv1885 to i64
  %ns1890 = shl i64 %nz1886, 31
  %zs1891 = shl i64 %zz1887, 30
  %cs1892 = shl i64 %cz1888, 29
  %vs1893 = shl i64 %vz1889, 28
  %nzor1894 = or i64 %ns1890, %zs1891
  %cvor1895 = or i64 %cs1892, %vs1893
  %nzcv1896 = or i64 %nzor1894, %cvor1895
  %wp1897 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1896, ptr %wp1897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8dc word 0x9a9f3308
  %r1898.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1898 = load i64, ptr %r1898.p, align 8, !alias.scope !3, !noalias !4
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %fsh1901 = lshr i64 %r1899, 29
  %ftr1902 = trunc i64 %fsh1901 to i1
  %cond1900 = xor i1 %ftr1902, true
  %sel1903 = select i1 %cond1900, i64 %r1898, i64 0
  %wp1904 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1903, ptr %wp1904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8e0 word 0x34fff8c9
  %r1905.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1905 = load i64, ptr %r1905.p, align 8, !alias.scope !3, !noalias !4
  %c1906 = trunc i64 %r1905 to i32
  %cmp1907 = icmp eq i32 %c1906, 0
  br i1 %cmp1907, label %L_80029e7f8, label %L_80029e8e4_ft
L_80029e90c:
  ; @pc 0x80029e90c word 0xaa1f03ef
  %t1968 = or i64 0, 0
  %wp1969 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1968, ptr %wp1969, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e910
L_80029e910:
  ; @pc 0x80029e910 word 0x386f6990
  %r1970.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1970 = load i64, ptr %r1970.p, align 8, !alias.scope !3, !noalias !4
  %r1971.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1971 = load i64, ptr %r1971.p, align 8, !alias.scope !3, !noalias !4
  %t1972 = add i64 %r1970, %r1971
  %gmp1973 = inttoptr i64 %t1972 to ptr
  %gml1974 = load i8, ptr %gmp1973, align 1, !alias.scope !4, !noalias !3
  %c1975 = zext i8 %gml1974 to i64
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e914 word 0x386f69b1
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %r1978.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1978 = load i64, ptr %r1978.p, align 8, !alias.scope !3, !noalias !4
  %t1979 = add i64 %r1977, %r1978
  %gmp1980 = inttoptr i64 %t1979 to ptr
  %gml1981 = load i8, ptr %gmp1980, align 1, !alias.scope !4, !noalias !3
  %c1982 = zext i8 %gml1981 to i64
  %wp1983 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1982, ptr %wp1983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e918 word 0x6b11021f
  %r1984.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1984 = load i64, ptr %r1984.p, align 8, !alias.scope !3, !noalias !4
  %c1985 = trunc i64 %r1984 to i32
  %r1986.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1986 = load i64, ptr %r1986.p, align 8, !alias.scope !3, !noalias !4
  %c1987 = trunc i64 %r1986 to i32
  %t1988 = sub i32 %c1985, %c1987
  %fn1989 = icmp slt i32 %t1988, 0
  %fz1990 = icmp eq i32 %t1988, 0
  %fc1991 = icmp uge i32 %c1985, %c1987
  %fx11992 = xor i32 %c1985, %c1987
  %fx21993 = xor i32 %c1985, %t1988
  %fva1994 = and i32 %fx11992, %fx21993
  %fv1995 = icmp slt i32 %fva1994, 0
  %nz1996 = zext i1 %fn1989 to i64
  %zz1997 = zext i1 %fz1990 to i64
  %cz1998 = zext i1 %fc1991 to i64
  %vz1999 = zext i1 %fv1995 to i64
  %ns2000 = shl i64 %nz1996, 31
  %zs2001 = shl i64 %zz1997, 30
  %cs2002 = shl i64 %cz1998, 29
  %vs2003 = shl i64 %vz1999, 28
  %nzor2004 = or i64 %ns2000, %zs2001
  %cvor2005 = or i64 %cs2002, %vs2003
  %nzcv2006 = or i64 %nzor2004, %cvor2005
  %wp2007 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2006, ptr %wp2007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e91c word 0x54001341
  %r2008.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2008 = load i64, ptr %r2008.p, align 8, !alias.scope !3, !noalias !4
  %fsh2010 = lshr i64 %r2008, 30
  %ftr2011 = trunc i64 %fsh2010 to i1
  %cond2009 = xor i1 %ftr2011, true
  br i1 %cond2009, label %L_80029eb84, label %L_80029e920_ft
L_80029e934:
  ; @pc 0x80029e934 word 0xb9455a89
  %r2044.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2044 = load i64, ptr %r2044.p, align 8, !alias.scope !3, !noalias !4
  %t2045 = add i64 %r2044, 1368
  %gmp2046 = inttoptr i64 %t2045 to ptr
  %gml2047 = load i32, ptr %gmp2046, align 1, !alias.scope !4, !noalias !3
  %c2048 = zext i32 %gml2047 to i64
  %wp2049 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2048, ptr %wp2049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e938 word 0x6b0a013f
  %r2050.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2050 = load i64, ptr %r2050.p, align 8, !alias.scope !3, !noalias !4
  %c2051 = trunc i64 %r2050 to i32
  %r2052.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2052 = load i64, ptr %r2052.p, align 8, !alias.scope !3, !noalias !4
  %c2053 = trunc i64 %r2052 to i32
  %t2054 = sub i32 %c2051, %c2053
  %fn2055 = icmp slt i32 %t2054, 0
  %fz2056 = icmp eq i32 %t2054, 0
  %fc2057 = icmp uge i32 %c2051, %c2053
  %fx12058 = xor i32 %c2051, %c2053
  %fx22059 = xor i32 %c2051, %t2054
  %fva2060 = and i32 %fx12058, %fx22059
  %fv2061 = icmp slt i32 %fva2060, 0
  %nz2062 = zext i1 %fn2055 to i64
  %zz2063 = zext i1 %fz2056 to i64
  %cz2064 = zext i1 %fc2057 to i64
  %vz2065 = zext i1 %fv2061 to i64
  %ns2066 = shl i64 %nz2062, 31
  %zs2067 = shl i64 %zz2063, 30
  %cs2068 = shl i64 %cz2064, 29
  %vs2069 = shl i64 %vz2065, 28
  %nzor2070 = or i64 %ns2066, %zs2067
  %cvor2071 = or i64 %cs2068, %vs2069
  %nzcv2072 = or i64 %nzor2070, %cvor2071
  %wp2073 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2072, ptr %wp2073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e93c word 0x54fff5ed
  %r2074.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2074 = load i64, ptr %r2074.p, align 8, !alias.scope !3, !noalias !4
  %fsh2076 = lshr i64 %r2074, 30
  %ftr2077 = trunc i64 %fsh2076 to i1
  %fsh2078 = lshr i64 %r2074, 31
  %ftr2079 = trunc i64 %fsh2078 to i1
  %fsh2080 = lshr i64 %r2074, 28
  %ftr2081 = trunc i64 %fsh2080 to i1
  %fnz2082 = xor i1 %ftr2077, true
  %feq2083 = icmp eq i1 %ftr2079, %ftr2081
  %fgt2084 = and i1 %fnz2082, %feq2083
  %cond2075 = xor i1 %fgt2084, true
  br i1 %cond2075, label %L_80029e7f8, label %L_80029e940_ft
L_80029e95c:
  ; @pc 0x80029e95c word 0x3868492a
  %r2158.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2158 = load i64, ptr %r2158.p, align 8, !alias.scope !3, !noalias !4
  %r2159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2159 = load i64, ptr %r2159.p, align 8, !alias.scope !3, !noalias !4
  %c2160 = trunc i64 %r2159 to i32
  %c2161 = zext i32 %c2160 to i64
  %t2162 = add i64 %r2158, %c2161
  %gmp2163 = inttoptr i64 %t2162 to ptr
  %gml2164 = load i8, ptr %gmp2163, align 1, !alias.scope !4, !noalias !3
  %c2165 = zext i8 %gml2164 to i64
  %wp2166 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2165, ptr %wp2166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e960 word 0x1100054a
  %r2167.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2167 = load i64, ptr %r2167.p, align 8, !alias.scope !3, !noalias !4
  %c2168 = trunc i64 %r2167 to i32
  %t2169 = add i32 %c2168, 1
  %c2170 = zext i32 %t2169 to i64
  %wp2171 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2170, ptr %wp2171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e964 word 0x3828492a
  %r2172.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2172 = load i64, ptr %r2172.p, align 8, !alias.scope !3, !noalias !4
  %r2173.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2173 = load i64, ptr %r2173.p, align 8, !alias.scope !3, !noalias !4
  %c2174 = trunc i64 %r2173 to i32
  %c2175 = zext i32 %c2174 to i64
  %t2176 = add i64 %r2172, %c2175
  %r2177.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2177 = load i64, ptr %r2177.p, align 8, !alias.scope !3, !noalias !4
  %c2178 = trunc i64 %r2177 to i32
  %c2179 = trunc i32 %c2178 to i8
  %gmp2180 = inttoptr i64 %t2176 to ptr
  store i8 %c2179, ptr %gmp2180, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e968 word 0x17ffffa4
  br label %L_80029e7f8
L_80029e96c:
  ; @pc 0x80029e96c word 0x9b1a212d
  %r2181.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2181 = load i64, ptr %r2181.p, align 8, !alias.scope !3, !noalias !4
  %r2182.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2182 = load i64, ptr %r2182.p, align 8, !alias.scope !3, !noalias !4
  %t2183 = mul i64 %r2182, %r2181
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %t2185 = add i64 %r2184, %t2183
  %wp2186 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2185, ptr %wp2186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e970 word 0xf8408da8
  %r2187.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2187 = load i64, ptr %r2187.p, align 8, !alias.scope !3, !noalias !4
  %t2188 = add i64 %r2187, 8
  %gmp2189 = inttoptr i64 %t2188 to ptr
  %gml2190 = load i64, ptr %gmp2189, align 1, !alias.scope !4, !noalias !3
  %wp2191 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2188, ptr %wp2191, align 8, !alias.scope !3, !noalias !4
  %wp2192 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2190, ptr %wp2192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e974 word 0xb98009a9
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %t2194 = add i64 %r2193, 8
  %gmp2195 = inttoptr i64 %t2194 to ptr
  %gml2196 = load i32, ptr %gmp2195, align 1, !alias.scope !4, !noalias !3
  %c2197 = sext i32 %gml2196 to i64
  %wp2198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2197, ptr %wp2198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e978 word 0x8b080128
  %r2199.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2199 = load i64, ptr %r2199.p, align 8, !alias.scope !3, !noalias !4
  %r2200.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2200 = load i64, ptr %r2200.p, align 8, !alias.scope !3, !noalias !4
  %t2201 = add i64 %r2199, %r2200
  %wp2202 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2201, ptr %wp2202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e97c word 0x381ff11f
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %t2204 = add i64 %r2203, -1
  %c2205 = trunc i32 0 to i8
  %gmp2206 = inttoptr i64 %t2204 to ptr
  store i8 %c2205, ptr %gmp2206, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e980 word 0xb94002c8
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %gmp2208 = inttoptr i64 %r2207 to ptr
  %gml2209 = load i32, ptr %gmp2208, align 1, !alias.scope !4, !noalias !3
  %c2210 = zext i32 %gml2209 to i64
  %wp2211 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2210, ptr %wp2211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e984 word 0xb9445a8a
  %r2212.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2212 = load i64, ptr %r2212.p, align 8, !alias.scope !3, !noalias !4
  %t2213 = add i64 %r2212, 1112
  %gmp2214 = inttoptr i64 %t2213 to ptr
  %gml2215 = load i32, ptr %gmp2214, align 1, !alias.scope !4, !noalias !3
  %c2216 = zext i32 %gml2215 to i64
  %wp2217 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2216, ptr %wp2217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e988 word 0xeb08031f
  %r2218.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2218 = load i64, ptr %r2218.p, align 8, !alias.scope !3, !noalias !4
  %r2219.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2219 = load i64, ptr %r2219.p, align 8, !alias.scope !3, !noalias !4
  %t2220 = sub i64 %r2218, %r2219
  %fn2221 = icmp slt i64 %t2220, 0
  %fz2222 = icmp eq i64 %t2220, 0
  %fc2223 = icmp uge i64 %r2218, %r2219
  %fx12224 = xor i64 %r2218, %r2219
  %fx22225 = xor i64 %r2218, %t2220
  %fva2226 = and i64 %fx12224, %fx22225
  %fv2227 = icmp slt i64 %fva2226, 0
  %nz2228 = zext i1 %fn2221 to i64
  %zz2229 = zext i1 %fz2222 to i64
  %cz2230 = zext i1 %fc2223 to i64
  %vz2231 = zext i1 %fv2227 to i64
  %ns2232 = shl i64 %nz2228, 31
  %zs2233 = shl i64 %zz2229, 30
  %cs2234 = shl i64 %cz2230, 29
  %vs2235 = shl i64 %vz2231, 28
  %nzor2236 = or i64 %ns2232, %zs2233
  %cvor2237 = or i64 %cs2234, %vs2235
  %nzcv2238 = or i64 %nzor2236, %cvor2237
  %wp2239 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2238, ptr %wp2239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e98c word 0x9a9f3309
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %r2241.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2241 = load i64, ptr %r2241.p, align 8, !alias.scope !3, !noalias !4
  %fsh2243 = lshr i64 %r2241, 29
  %ftr2244 = trunc i64 %fsh2243 to i1
  %cond2242 = xor i1 %ftr2244, true
  %sel2245 = select i1 %cond2242, i64 %r2240, i64 0
  %wp2246 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel2245, ptr %wp2246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e990 word 0x34fff34a
  %r2247.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2247 = load i64, ptr %r2247.p, align 8, !alias.scope !3, !noalias !4
  %c2248 = trunc i64 %r2247 to i32
  %cmp2249 = icmp eq i32 %c2248, 0
  br i1 %cmp2249, label %L_80029e7f8, label %L_80029e994_ft
L_80029e9b0:
  ; @pc 0x80029e9b0 word 0x937d7d6e
  %r2281.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2281 = load i64, ptr %r2281.p, align 8, !alias.scope !3, !noalias !4
  %ror2282 = call i64 @llvm.fshr.i64(i64 %r2281, i64 %r2281, i64 61)
  %t2283 = lshr i64 %r2281, 31
  %t2284 = and i64 %t2283, 1
  %t2285 = sub i64 0, %t2284
  %t2286 = and i64 %t2285, -34359738368
  %t2287 = and i64 %ror2282, 34359738360
  %t2288 = or i64 %t2286, %t2287
  %wp2289 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2288, ptr %wp2289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9b4 word 0xaa0d03ef
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %t2291 = or i64 0, %r2290
  %wp2292 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2291, ptr %wp2292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9b8 word 0xaa1903f0
  %r2293.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2293 = load i64, ptr %r2293.p, align 8, !alias.scope !3, !noalias !4
  %t2294 = or i64 0, %r2293
  %wp2295 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2294, ptr %wp2295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9bc word 0xf86e698e
  %r2296.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2296 = load i64, ptr %r2296.p, align 8, !alias.scope !3, !noalias !4
  %r2297.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2297 = load i64, ptr %r2297.p, align 8, !alias.scope !3, !noalias !4
  %t2298 = add i64 %r2296, %r2297
  %gmp2299 = inttoptr i64 %t2298 to ptr
  %gml2300 = load i64, ptr %gmp2299, align 1, !alias.scope !4, !noalias !3
  %wp2301 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2300, ptr %wp2301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9c0 word 0xeb0e01bf
  %r2302.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2302 = load i64, ptr %r2302.p, align 8, !alias.scope !3, !noalias !4
  %r2303.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2303 = load i64, ptr %r2303.p, align 8, !alias.scope !3, !noalias !4
  %t2304 = sub i64 %r2302, %r2303
  %fn2305 = icmp slt i64 %t2304, 0
  %fz2306 = icmp eq i64 %t2304, 0
  %fc2307 = icmp uge i64 %r2302, %r2303
  %fx12308 = xor i64 %r2302, %r2303
  %fx22309 = xor i64 %r2302, %t2304
  %fva2310 = and i64 %fx12308, %fx22309
  %fv2311 = icmp slt i64 %fva2310, 0
  %nz2312 = zext i1 %fn2305 to i64
  %zz2313 = zext i1 %fz2306 to i64
  %cz2314 = zext i1 %fc2307 to i64
  %vz2315 = zext i1 %fv2311 to i64
  %ns2316 = shl i64 %nz2312, 31
  %zs2317 = shl i64 %zz2313, 30
  %cs2318 = shl i64 %cz2314, 29
  %vs2319 = shl i64 %vz2315, 28
  %nzor2320 = or i64 %ns2316, %zs2317
  %cvor2321 = or i64 %cs2318, %vs2319
  %nzcv2322 = or i64 %nzor2320, %cvor2321
  %wp2323 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2322, ptr %wp2323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9c4 word 0x54000120
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %fsh2326 = lshr i64 %r2324, 30
  %cond2325 = trunc i64 %fsh2326 to i1
  br i1 %cond2325, label %L_80029e9e8, label %L_80029e9c8
L_80029e9c8:
  ; @pc 0x80029e9c8 word 0x384015f1
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %t2328 = add i64 %r2327, 1
  %gmp2329 = inttoptr i64 %r2327 to ptr
  %gml2330 = load i8, ptr %gmp2329, align 1, !alias.scope !4, !noalias !3
  %c2331 = zext i8 %gml2330 to i64
  %wp2332 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2328, ptr %wp2332, align 8, !alias.scope !3, !noalias !4
  %wp2333 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c2331, ptr %wp2333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9cc word 0x384015d2
  %r2334.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2334 = load i64, ptr %r2334.p, align 8, !alias.scope !3, !noalias !4
  %t2335 = add i64 %r2334, 1
  %gmp2336 = inttoptr i64 %r2334 to ptr
  %gml2337 = load i8, ptr %gmp2336, align 1, !alias.scope !4, !noalias !3
  %c2338 = zext i8 %gml2337 to i64
  %wp2339 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2335, ptr %wp2339, align 8, !alias.scope !3, !noalias !4
  %wp2340 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c2338, ptr %wp2340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9d0 word 0x6b12023f
  %r2341.p = getelementptr inbounds i8, ptr %c, i64 136
  %r2341 = load i64, ptr %r2341.p, align 8, !alias.scope !3, !noalias !4
  %c2342 = trunc i64 %r2341 to i32
  %r2343.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2343 = load i64, ptr %r2343.p, align 8, !alias.scope !3, !noalias !4
  %c2344 = trunc i64 %r2343 to i32
  %t2345 = sub i32 %c2342, %c2344
  %fn2346 = icmp slt i32 %t2345, 0
  %fz2347 = icmp eq i32 %t2345, 0
  %fc2348 = icmp uge i32 %c2342, %c2344
  %fx12349 = xor i32 %c2342, %c2344
  %fx22350 = xor i32 %c2342, %t2345
  %fva2351 = and i32 %fx12349, %fx22350
  %fv2352 = icmp slt i32 %fva2351, 0
  %nz2353 = zext i1 %fn2346 to i64
  %zz2354 = zext i1 %fz2347 to i64
  %cz2355 = zext i1 %fc2348 to i64
  %vz2356 = zext i1 %fv2352 to i64
  %ns2357 = shl i64 %nz2353, 31
  %zs2358 = shl i64 %zz2354, 30
  %cs2359 = shl i64 %cz2355, 29
  %vs2360 = shl i64 %vz2356, 28
  %nzor2361 = or i64 %ns2357, %zs2358
  %cvor2362 = or i64 %cs2359, %vs2360
  %nzcv2363 = or i64 %nzor2361, %cvor2362
  %wp2364 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2363, ptr %wp2364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9d4 word 0x54001161
  %r2365.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2365 = load i64, ptr %r2365.p, align 8, !alias.scope !3, !noalias !4
  %fsh2367 = lshr i64 %r2365, 30
  %ftr2368 = trunc i64 %fsh2367 to i1
  %cond2366 = xor i1 %ftr2368, true
  br i1 %cond2366, label %L_80029ec00, label %L_80029e9d8_ft
L_80029e9e8:
  ; @pc 0x80029e9e8 word 0xb9446a8a
  %r2398.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2398 = load i64, ptr %r2398.p, align 8, !alias.scope !3, !noalias !4
  %t2399 = add i64 %r2398, 1128
  %gmp2400 = inttoptr i64 %t2399 to ptr
  %gml2401 = load i32, ptr %gmp2400, align 1, !alias.scope !4, !noalias !3
  %c2402 = zext i32 %gml2401 to i64
  %wp2403 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2402, ptr %wp2403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9ec word 0x6b08015f
  %r2404.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2404 = load i64, ptr %r2404.p, align 8, !alias.scope !3, !noalias !4
  %c2405 = trunc i64 %r2404 to i32
  %r2406.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2406 = load i64, ptr %r2406.p, align 8, !alias.scope !3, !noalias !4
  %c2407 = trunc i64 %r2406 to i32
  %t2408 = sub i32 %c2405, %c2407
  %fn2409 = icmp slt i32 %t2408, 0
  %fz2410 = icmp eq i32 %t2408, 0
  %fc2411 = icmp uge i32 %c2405, %c2407
  %fx12412 = xor i32 %c2405, %c2407
  %fx22413 = xor i32 %c2405, %t2408
  %fva2414 = and i32 %fx12412, %fx22413
  %fv2415 = icmp slt i32 %fva2414, 0
  %nz2416 = zext i1 %fn2409 to i64
  %zz2417 = zext i1 %fz2410 to i64
  %cz2418 = zext i1 %fc2411 to i64
  %vz2419 = zext i1 %fv2415 to i64
  %ns2420 = shl i64 %nz2416, 31
  %zs2421 = shl i64 %zz2417, 30
  %cs2422 = shl i64 %cz2418, 29
  %vs2423 = shl i64 %vz2419, 28
  %nzor2424 = or i64 %ns2420, %zs2421
  %cvor2425 = or i64 %cs2422, %vs2423
  %nzcv2426 = or i64 %nzor2424, %cvor2425
  %wp2427 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2426, ptr %wp2427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9f0 word 0x54fff04d
  %r2428.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2428 = load i64, ptr %r2428.p, align 8, !alias.scope !3, !noalias !4
  %fsh2430 = lshr i64 %r2428, 30
  %ftr2431 = trunc i64 %fsh2430 to i1
  %fsh2432 = lshr i64 %r2428, 31
  %ftr2433 = trunc i64 %fsh2432 to i1
  %fsh2434 = lshr i64 %r2428, 28
  %ftr2435 = trunc i64 %fsh2434 to i1
  %fnz2436 = xor i1 %ftr2431, true
  %feq2437 = icmp eq i1 %ftr2433, %ftr2435
  %fgt2438 = and i1 %fnz2436, %feq2437
  %cond2429 = xor i1 %fgt2438, true
  br i1 %cond2429, label %L_80029e7f8, label %L_80029e9f4_ft
L_80029ea0c:
  ; @pc 0x80029ea0c word 0xaa1f03ed
  %t2476 = or i64 0, 0
  %wp2477 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2476, ptr %wp2477, align 8, !alias.scope !3, !noalias !4
  br label %L_80029ea10
L_80029ea10:
  ; @pc 0x80029ea10 word 0x386d694e
  %r2478.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2478 = load i64, ptr %r2478.p, align 8, !alias.scope !3, !noalias !4
  %r2479.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2479 = load i64, ptr %r2479.p, align 8, !alias.scope !3, !noalias !4
  %t2480 = add i64 %r2478, %r2479
  %gmp2481 = inttoptr i64 %t2480 to ptr
  %gml2482 = load i8, ptr %gmp2481, align 1, !alias.scope !4, !noalias !3
  %c2483 = zext i8 %gml2482 to i64
  %wp2484 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2483, ptr %wp2484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea14 word 0x386d696f
  %r2485.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2485 = load i64, ptr %r2485.p, align 8, !alias.scope !3, !noalias !4
  %r2486.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2486 = load i64, ptr %r2486.p, align 8, !alias.scope !3, !noalias !4
  %t2487 = add i64 %r2485, %r2486
  %gmp2488 = inttoptr i64 %t2487 to ptr
  %gml2489 = load i8, ptr %gmp2488, align 1, !alias.scope !4, !noalias !3
  %c2490 = zext i8 %gml2489 to i64
  %wp2491 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2490, ptr %wp2491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea18 word 0x6b0f01df
  %r2492.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2492 = load i64, ptr %r2492.p, align 8, !alias.scope !3, !noalias !4
  %c2493 = trunc i64 %r2492 to i32
  %r2494.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2494 = load i64, ptr %r2494.p, align 8, !alias.scope !3, !noalias !4
  %c2495 = trunc i64 %r2494 to i32
  %t2496 = sub i32 %c2493, %c2495
  %fn2497 = icmp slt i32 %t2496, 0
  %fz2498 = icmp eq i32 %t2496, 0
  %fc2499 = icmp uge i32 %c2493, %c2495
  %fx12500 = xor i32 %c2493, %c2495
  %fx22501 = xor i32 %c2493, %t2496
  %fva2502 = and i32 %fx12500, %fx22501
  %fv2503 = icmp slt i32 %fva2502, 0
  %nz2504 = zext i1 %fn2497 to i64
  %zz2505 = zext i1 %fz2498 to i64
  %cz2506 = zext i1 %fc2499 to i64
  %vz2507 = zext i1 %fv2503 to i64
  %ns2508 = shl i64 %nz2504, 31
  %zs2509 = shl i64 %zz2505, 30
  %cs2510 = shl i64 %cz2506, 29
  %vs2511 = shl i64 %vz2507, 28
  %nzor2512 = or i64 %ns2508, %zs2509
  %cvor2513 = or i64 %cs2510, %vs2511
  %nzcv2514 = or i64 %nzor2512, %cvor2513
  %wp2515 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2514, ptr %wp2515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea1c word 0x540000a1
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %fsh2518 = lshr i64 %r2516, 30
  %ftr2519 = trunc i64 %fsh2518 to i1
  %cond2517 = xor i1 %ftr2519, true
  br i1 %cond2517, label %L_80029ea30, label %L_80029ea20_ft
L_80029ea30:
  ; @pc 0x80029ea30 word 0x9100058b
  %r2552.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2552 = load i64, ptr %r2552.p, align 8, !alias.scope !3, !noalias !4
  %t2553 = add i64 %r2552, 1
  %wp2554 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2553, ptr %wp2554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea34 word 0x6b0b011f
  %r2555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2555 = load i64, ptr %r2555.p, align 8, !alias.scope !3, !noalias !4
  %c2556 = trunc i64 %r2555 to i32
  %r2557.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2557 = load i64, ptr %r2557.p, align 8, !alias.scope !3, !noalias !4
  %c2558 = trunc i64 %r2557 to i32
  %t2559 = sub i32 %c2556, %c2558
  %fn2560 = icmp slt i32 %t2559, 0
  %fz2561 = icmp eq i32 %t2559, 0
  %fc2562 = icmp uge i32 %c2556, %c2558
  %fx12563 = xor i32 %c2556, %c2558
  %fx22564 = xor i32 %c2556, %t2559
  %fva2565 = and i32 %fx12563, %fx22564
  %fv2566 = icmp slt i32 %fva2565, 0
  %nz2567 = zext i1 %fn2560 to i64
  %zz2568 = zext i1 %fz2561 to i64
  %cz2569 = zext i1 %fc2562 to i64
  %vz2570 = zext i1 %fv2566 to i64
  %ns2571 = shl i64 %nz2567, 31
  %zs2572 = shl i64 %zz2568, 30
  %cs2573 = shl i64 %cz2569, 29
  %vs2574 = shl i64 %vz2570, 28
  %nzor2575 = or i64 %ns2571, %zs2572
  %cvor2576 = or i64 %cs2573, %vs2574
  %nzcv2577 = or i64 %nzor2575, %cvor2576
  %wp2578 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2577, ptr %wp2578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea38 word 0x54ffee00
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %fsh2581 = lshr i64 %r2579, 30
  %cond2580 = trunc i64 %fsh2581 to i1
  br i1 %cond2580, label %L_80029e7f8, label %L_80029ea3c_ft
L_80029ea58:
  ; @pc 0x80029ea58 word 0xf9401e80
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %t2632 = add i64 %r2631, 56
  %gmp2633 = inttoptr i64 %t2632 to ptr
  %gml2634 = load i64, ptr %gmp2633, align 1, !alias.scope !4, !noalias !3
  %wp2635 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2634, ptr %wp2635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea5c word 0x9401dc6e
  %wp2636 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485344, ptr %wp2636, align 8, !alias.scope !3, !noalias !4
  call void @f_800315c14(ptr %c)
  ; @pc 0x80029ea60 word 0xf9401e96
  %r2637.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2637 = load i64, ptr %r2637.p, align 8, !alias.scope !3, !noalias !4
  %t2638 = add i64 %r2637, 56
  %gmp2639 = inttoptr i64 %t2638 to ptr
  %gml2640 = load i64, ptr %gmp2639, align 1, !alias.scope !4, !noalias !3
  %wp2641 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2640, ptr %wp2641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea64 word 0xf9400ec8
  %r2642.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2642 = load i64, ptr %r2642.p, align 8, !alias.scope !3, !noalias !4
  %t2643 = add i64 %r2642, 24
  %gmp2644 = inttoptr i64 %t2643 to ptr
  %gml2645 = load i64, ptr %gmp2644, align 1, !alias.scope !4, !noalias !3
  %wp2646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2645, ptr %wp2646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea68 word 0xb4000268
  %r2647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2647 = load i64, ptr %r2647.p, align 8, !alias.scope !3, !noalias !4
  %cmp2648 = icmp eq i64 %r2647, 0
  br i1 %cmp2648, label %L_80029eab4, label %L_80029ea6c_ft
L_80029ea78:
  ; @pc 0x80029ea78 word 0xb4003275
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %cmp2663 = icmp eq i64 %r2662, 0
  br i1 %cmp2663, label %L_80029f0c4, label %L_80029ea7c_ft
L_80029eaa4:
  ; @pc 0x80029eaa4 word 0x885f7d2a
  %r2696.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2696 = load i64, ptr %r2696.p, align 8, !alias.scope !3, !noalias !4
  %atp2697 = inttoptr i64 %r2696 to ptr
  %ldx2698 = load atomic i32, ptr %atp2697 acquire, align 4, !alias.scope !4, !noalias !3
  %c2699 = zext i32 %ldx2698 to i64
  %fp2700 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2696, ptr %fp2700, align 8, !alias.scope !3, !noalias !4
  %fp2701 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2699, ptr %fp2701, align 8, !alias.scope !3, !noalias !4
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2699, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eaa8 word 0x1100054a
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %c2704 = trunc i64 %r2703 to i32
  %t2705 = add i32 %c2704, 1
  %c2706 = zext i32 %t2705 to i64
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2706, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eaac word 0x880b7d2a
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %atp2709 = inttoptr i64 %r2708 to ptr
  %fp2710 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2711 = load i64, ptr %fp2710, align 8, !alias.scope !3, !noalias !4
  %fp2712 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2713 = load i64, ptr %fp2712, align 8, !alias.scope !3, !noalias !4
  %fp2714 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2714, align 8, !alias.scope !3, !noalias !4
  %cmp2715 = icmp eq i64 %fv2711, %r2708
  %c2716 = trunc i64 %fv2713 to i32
  %r2717.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2717 = load i64, ptr %r2717.p, align 8, !alias.scope !3, !noalias !4
  %c2718 = trunc i64 %r2717 to i32
  %cx2719 = cmpxchg ptr %atp2709, i32 %c2716, i32 %c2718 seq_cst seq_cst, align 4
  %cxok2720 = extractvalue { i32, i1 } %cx2719, 1
  %t2721 = and i1 %cmp2715, %cxok2720
  %sel2722 = select i1 %t2721, i32 0, i32 1
  %c2723 = zext i32 %sel2722 to i64
  %wp2724 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2723, ptr %wp2724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eab0 word 0x35ffffab
  %r2725.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2725 = load i64, ptr %r2725.p, align 8, !alias.scope !3, !noalias !4
  %c2726 = trunc i64 %r2725 to i32
  %cmp2727 = icmp ne i32 %c2726, 0
  br i1 %cmp2727, label %L_80029eaa4, label %L_80029eab4
L_80029eab4:
  ; @pc 0x80029eab4 word 0xf9400335
  %r2728.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2728 = load i64, ptr %r2728.p, align 8, !alias.scope !3, !noalias !4
  %gmp2729 = inttoptr i64 %r2728 to ptr
  %gml2730 = load i64, ptr %gmp2729, align 1, !alias.scope !4, !noalias !3
  %wp2731 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2730, ptr %wp2731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eab8 word 0xf9000328
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %r2733.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2733 = load i64, ptr %r2733.p, align 8, !alias.scope !3, !noalias !4
  %gmp2734 = inttoptr i64 %r2732 to ptr
  store i64 %r2733, ptr %gmp2734, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eabc word 0xb4ffd095
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %cmp2736 = icmp eq i64 %r2735, 0
  br i1 %cmp2736, label %L_80029e4cc, label %L_80029eac0_ft
L_80029eac4:
  ; @pc 0x80029eac4 word 0xb9400348
  %r2740.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2740 = load i64, ptr %r2740.p, align 8, !alias.scope !3, !noalias !4
  %gmp2741 = inttoptr i64 %r2740 to ptr
  %gml2742 = load i32, ptr %gmp2741, align 1, !alias.scope !4, !noalias !3
  %c2743 = zext i32 %gml2742 to i64
  %wp2744 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2743, ptr %wp2744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eac8 word 0x71000509
  %r2745.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2745 = load i64, ptr %r2745.p, align 8, !alias.scope !3, !noalias !4
  %c2746 = trunc i64 %r2745 to i32
  %t2747 = sub i32 %c2746, 1
  %fn2748 = icmp slt i32 %t2747, 0
  %fz2749 = icmp eq i32 %t2747, 0
  %fc2750 = icmp uge i32 %c2746, 1
  %fx12751 = xor i32 %c2746, 1
  %fx22752 = xor i32 %c2746, %t2747
  %fva2753 = and i32 %fx12751, %fx22752
  %fv2754 = icmp slt i32 %fva2753, 0
  %nz2755 = zext i1 %fn2748 to i64
  %zz2756 = zext i1 %fz2749 to i64
  %cz2757 = zext i1 %fc2750 to i64
  %vz2758 = zext i1 %fv2754 to i64
  %ns2759 = shl i64 %nz2755, 31
  %zs2760 = shl i64 %zz2756, 30
  %cs2761 = shl i64 %cz2757, 29
  %vs2762 = shl i64 %vz2758, 28
  %nzor2763 = or i64 %ns2759, %zs2760
  %cvor2764 = or i64 %cs2761, %vs2762
  %nzcv2765 = or i64 %nzor2763, %cvor2764
  %wp2766 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2765, ptr %wp2766, align 8, !alias.scope !3, !noalias !4
  %c2767 = zext i32 %t2747 to i64
  %wp2768 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2767, ptr %wp2768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eacc word 0x54004040
  %r2769.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2769 = load i64, ptr %r2769.p, align 8, !alias.scope !3, !noalias !4
  %fsh2771 = lshr i64 %r2769, 30
  %cond2770 = trunc i64 %fsh2771 to i1
  br i1 %cond2770, label %L_80029f2d4, label %L_80029ead0
L_80029ead0:
  ; @pc 0x80029ead0 word 0x885f7f4a
  %r2772.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2772 = load i64, ptr %r2772.p, align 8, !alias.scope !3, !noalias !4
  %atp2773 = inttoptr i64 %r2772 to ptr
  %ldx2774 = load atomic i32, ptr %atp2773 acquire, align 4, !alias.scope !4, !noalias !3
  %c2775 = zext i32 %ldx2774 to i64
  %fp2776 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2772, ptr %fp2776, align 8, !alias.scope !3, !noalias !4
  %fp2777 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2775, ptr %fp2777, align 8, !alias.scope !3, !noalias !4
  %wp2778 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2775, ptr %wp2778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ead4 word 0x6b0a011f
  %r2779.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2779 = load i64, ptr %r2779.p, align 8, !alias.scope !3, !noalias !4
  %c2780 = trunc i64 %r2779 to i32
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %c2782 = trunc i64 %r2781 to i32
  %t2783 = sub i32 %c2780, %c2782
  %fn2784 = icmp slt i32 %t2783, 0
  %fz2785 = icmp eq i32 %t2783, 0
  %fc2786 = icmp uge i32 %c2780, %c2782
  %fx12787 = xor i32 %c2780, %c2782
  %fx22788 = xor i32 %c2780, %t2783
  %fva2789 = and i32 %fx12787, %fx22788
  %fv2790 = icmp slt i32 %fva2789, 0
  %nz2791 = zext i1 %fn2784 to i64
  %zz2792 = zext i1 %fz2785 to i64
  %cz2793 = zext i1 %fc2786 to i64
  %vz2794 = zext i1 %fv2790 to i64
  %ns2795 = shl i64 %nz2791, 31
  %zs2796 = shl i64 %zz2792, 30
  %cs2797 = shl i64 %cz2793, 29
  %vs2798 = shl i64 %vz2794, 28
  %nzor2799 = or i64 %ns2795, %zs2796
  %cvor2800 = or i64 %cs2797, %vs2798
  %nzcv2801 = or i64 %nzor2799, %cvor2800
  %wp2802 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2801, ptr %wp2802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ead8 word 0x54ffff61
  %r2803.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2803 = load i64, ptr %r2803.p, align 8, !alias.scope !3, !noalias !4
  %fsh2805 = lshr i64 %r2803, 30
  %ftr2806 = trunc i64 %fsh2805 to i1
  %cond2804 = xor i1 %ftr2806, true
  br i1 %cond2804, label %L_80029eac4, label %L_80029eadc_ft
L_80029eae8:
  ; @pc 0x80029eae8 word 0xf9400a60
  %r2827.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2827 = load i64, ptr %r2827.p, align 8, !alias.scope !3, !noalias !4
  %t2828 = add i64 %r2827, 16
  %gmp2829 = inttoptr i64 %t2828 to ptr
  %gml2830 = load i64, ptr %gmp2829, align 1, !alias.scope !4, !noalias !3
  %wp2831 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2830, ptr %wp2831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eaec word 0x52800022
  %c2832 = zext i32 1 to i64
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eaf0 word 0x94001b7a
  %wp2834 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485492, ptr %wp2834, align 8, !alias.scope !3, !noalias !4
  call void @f_8002a58d8(ptr %c)
  ; @pc 0x80029eaf4 word 0x17fffee1
  br label %L_80029e678
L_80029eaf8:
  ; @pc 0x80029eaf8 word 0x39410268
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %t2836 = add i64 %r2835, 64
  %gmp2837 = inttoptr i64 %t2836 to ptr
  %gml2838 = load i8, ptr %gmp2837, align 1, !alias.scope !4, !noalias !3
  %c2839 = zext i8 %gml2838 to i64
  %wp2840 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2839, ptr %wp2840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eafc word 0x321f0108
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %c2842 = trunc i64 %r2841 to i32
  %t2843 = or i32 %c2842, 2
  %c2844 = zext i32 %t2843 to i64
  %wp2845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2844, ptr %wp2845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb00 word 0x39010268
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %t2847 = add i64 %r2846, 64
  %r2848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2848 = load i64, ptr %r2848.p, align 8, !alias.scope !3, !noalias !4
  %c2849 = trunc i64 %r2848 to i32
  %c2850 = trunc i32 %c2849 to i8
  %gmp2851 = inttoptr i64 %t2847 to ptr
  store i8 %c2850, ptr %gmp2851, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eb04 word 0x17fffee4
  br label %L_80029e694
L_80029eb08:
  ; @pc 0x80029eb08 word 0xf9400ee8
  %r2852.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2852 = load i64, ptr %r2852.p, align 8, !alias.scope !3, !noalias !4
  %t2853 = add i64 %r2852, 24
  %gmp2854 = inttoptr i64 %t2853 to ptr
  %gml2855 = load i64, ptr %gmp2854, align 1, !alias.scope !4, !noalias !3
  %wp2856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2855, ptr %wp2856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb0c word 0xb4ffd828
  %r2857.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2857 = load i64, ptr %r2857.p, align 8, !alias.scope !3, !noalias !4
  %cmp2858 = icmp eq i64 %r2857, 0
  br i1 %cmp2858, label %L_80029e610, label %L_80029eb10_ft
L_80029eb30:
  ; @pc 0x80029eb30 word 0xf9400008
  %r2913.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2913 = load i64, ptr %r2913.p, align 8, !alias.scope !3, !noalias !4
  %gmp2914 = inttoptr i64 %r2913 to ptr
  %gml2915 = load i64, ptr %gmp2914, align 1, !alias.scope !4, !noalias !3
  %wp2916 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2915, ptr %wp2916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb34 word 0xaa1503e1
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %t2918 = or i64 0, %r2917
  %wp2919 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2918, ptr %wp2919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb38 word 0xf9400108
  %r2920.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2920 = load i64, ptr %r2920.p, align 8, !alias.scope !3, !noalias !4
  %gmp2921 = inttoptr i64 %r2920 to ptr
  %gml2922 = load i64, ptr %gmp2921, align 1, !alias.scope !4, !noalias !3
  %wp2923 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2922, ptr %wp2923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb3c word 0xd63f0100
  %r2924.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2924 = load i64, ptr %r2924.p, align 8, !alias.scope !3, !noalias !4
  %fp2925 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2924, ptr %fp2925, align 8, !alias.scope !3, !noalias !4
  %wp2926 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485568, ptr %wp2926, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029eb40 word 0xb5ffd5e0
  %r2927.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2927 = load i64, ptr %r2927.p, align 8, !alias.scope !3, !noalias !4
  %cmp2928 = icmp ne i64 %r2927, 0
  br i1 %cmp2928, label %L_80029e5fc, label %L_80029eb44_ft
L_80029eb48:
  ; @pc 0x80029eb48 word 0x9b1a212a
  %r2929.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2929 = load i64, ptr %r2929.p, align 8, !alias.scope !3, !noalias !4
  %r2930.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2930 = load i64, ptr %r2930.p, align 8, !alias.scope !3, !noalias !4
  %t2931 = mul i64 %r2930, %r2929
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %t2933 = add i64 %r2932, %t2931
  %wp2934 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2933, ptr %wp2934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb4c word 0xf8408d48
  %r2935.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2935 = load i64, ptr %r2935.p, align 8, !alias.scope !3, !noalias !4
  %t2936 = add i64 %r2935, 8
  %gmp2937 = inttoptr i64 %t2936 to ptr
  %gml2938 = load i64, ptr %gmp2937, align 1, !alias.scope !4, !noalias !3
  %wp2939 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2936, ptr %wp2939, align 8, !alias.scope !3, !noalias !4
  %wp2940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2938, ptr %wp2940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb50 word 0xb9800949
  %r2941.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2941 = load i64, ptr %r2941.p, align 8, !alias.scope !3, !noalias !4
  %t2942 = add i64 %r2941, 8
  %gmp2943 = inttoptr i64 %t2942 to ptr
  %gml2944 = load i32, ptr %gmp2943, align 1, !alias.scope !4, !noalias !3
  %c2945 = sext i32 %gml2944 to i64
  %wp2946 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2945, ptr %wp2946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb54 word 0x8b080128
  %r2947.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2947 = load i64, ptr %r2947.p, align 8, !alias.scope !3, !noalias !4
  %r2948.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2948 = load i64, ptr %r2948.p, align 8, !alias.scope !3, !noalias !4
  %t2949 = add i64 %r2947, %r2948
  %wp2950 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2949, ptr %wp2950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb58 word 0x381ff11f
  %r2951.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2951 = load i64, ptr %r2951.p, align 8, !alias.scope !3, !noalias !4
  %t2952 = add i64 %r2951, -1
  %c2953 = trunc i32 0 to i8
  %gmp2954 = inttoptr i64 %t2952 to ptr
  store i8 %c2953, ptr %gmp2954, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eb5c word 0xb9400288
  %r2955.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2955 = load i64, ptr %r2955.p, align 8, !alias.scope !3, !noalias !4
  %gmp2956 = inttoptr i64 %r2955 to ptr
  %gml2957 = load i32, ptr %gmp2956, align 1, !alias.scope !4, !noalias !3
  %c2958 = zext i32 %gml2957 to i64
  %wp2959 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2958, ptr %wp2959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb60 word 0x34ffe4c8
  %r2960.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2960 = load i64, ptr %r2960.p, align 8, !alias.scope !3, !noalias !4
  %c2961 = trunc i64 %r2960 to i32
  %cmp2962 = icmp eq i32 %c2961, 0
  br i1 %cmp2962, label %L_80029e7f8, label %L_80029eb64_ft
L_80029eb84:
  ; @pc 0x80029eb84 word 0x910005cd
  %r3006.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3006 = load i64, ptr %r3006.p, align 8, !alias.scope !3, !noalias !4
  %t3007 = add i64 %r3006, 1
  %wp3008 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3007, ptr %wp3008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb88 word 0x6b0d013f
  %r3009.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3009 = load i64, ptr %r3009.p, align 8, !alias.scope !3, !noalias !4
  %c3010 = trunc i64 %r3009 to i32
  %r3011.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3011 = load i64, ptr %r3011.p, align 8, !alias.scope !3, !noalias !4
  %c3012 = trunc i64 %r3011 to i32
  %t3013 = sub i32 %c3010, %c3012
  %fn3014 = icmp slt i32 %t3013, 0
  %fz3015 = icmp eq i32 %t3013, 0
  %fc3016 = icmp uge i32 %c3010, %c3012
  %fx13017 = xor i32 %c3010, %c3012
  %fx23018 = xor i32 %c3010, %t3013
  %fva3019 = and i32 %fx13017, %fx23018
  %fv3020 = icmp slt i32 %fva3019, 0
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
  ; @pc 0x80029eb8c word 0x54ffe360
  %r3033.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3033 = load i64, ptr %r3033.p, align 8, !alias.scope !3, !noalias !4
  %fsh3035 = lshr i64 %r3033, 30
  %cond3034 = trunc i64 %fsh3035 to i1
  br i1 %cond3034, label %L_80029e7f8, label %L_80029eb90_ft
L_80029ebac:
  ; @pc 0x80029ebac word 0x5280190a
  %c3085 = zext i32 200 to i64
  %wp3086 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3085, ptr %wp3086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebb0 word 0x9100e3e2
  %r3087.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3087 = load i64, ptr %r3087.p, align 8, !alias.scope !3, !noalias !4
  %t3088 = add i64 %r3087, 56
  %wp3089 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3088, ptr %wp3089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebb4 word 0x9b0a2121
  %r3090.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3090 = load i64, ptr %r3090.p, align 8, !alias.scope !3, !noalias !4
  %r3091.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3091 = load i64, ptr %r3091.p, align 8, !alias.scope !3, !noalias !4
  %t3092 = mul i64 %r3091, %r3090
  %r3093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3093 = load i64, ptr %r3093.p, align 8, !alias.scope !3, !noalias !4
  %t3094 = add i64 %r3093, %t3092
  %wp3095 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3094, ptr %wp3095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebb8 word 0xaa1403e0
  %r3096.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3096 = load i64, ptr %r3096.p, align 8, !alias.scope !3, !noalias !4
  %t3097 = or i64 0, %r3096
  %wp3098 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3097, ptr %wp3098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebbc word 0xf8408c28
  %r3099.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3099 = load i64, ptr %r3099.p, align 8, !alias.scope !3, !noalias !4
  %t3100 = add i64 %r3099, 8
  %gmp3101 = inttoptr i64 %t3100 to ptr
  %gml3102 = load i64, ptr %gmp3101, align 1, !alias.scope !4, !noalias !3
  %wp3103 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3100, ptr %wp3103, align 8, !alias.scope !3, !noalias !4
  %wp3104 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3102, ptr %wp3104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebc0 word 0xb9800829
  %r3105.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3105 = load i64, ptr %r3105.p, align 8, !alias.scope !3, !noalias !4
  %t3106 = add i64 %r3105, 8
  %gmp3107 = inttoptr i64 %t3106 to ptr
  %gml3108 = load i32, ptr %gmp3107, align 1, !alias.scope !4, !noalias !3
  %c3109 = sext i32 %gml3108 to i64
  %wp3110 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3109, ptr %wp3110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebc4 word 0x8b080128
  %r3111.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3111 = load i64, ptr %r3111.p, align 8, !alias.scope !3, !noalias !4
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %t3113 = add i64 %r3111, %r3112
  %wp3114 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3113, ptr %wp3114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebc8 word 0x381ff11f
  %r3115.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3115 = load i64, ptr %r3115.p, align 8, !alias.scope !3, !noalias !4
  %t3116 = add i64 %r3115, -1
  %c3117 = trunc i32 0 to i8
  %gmp3118 = inttoptr i64 %t3116 to ptr
  store i8 %c3117, ptr %gmp3118, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ebcc word 0xb94002c8
  %r3119.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3119 = load i64, ptr %r3119.p, align 8, !alias.scope !3, !noalias !4
  %gmp3120 = inttoptr i64 %r3119 to ptr
  %gml3121 = load i32, ptr %gmp3120, align 1, !alias.scope !4, !noalias !3
  %c3122 = zext i32 %gml3121 to i64
  %wp3123 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3122, ptr %wp3123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebd0 word 0xf94006c9
  %r3124.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3124 = load i64, ptr %r3124.p, align 8, !alias.scope !3, !noalias !4
  %t3125 = add i64 %r3124, 8
  %gmp3126 = inttoptr i64 %t3125 to ptr
  %gml3127 = load i64, ptr %gmp3126, align 1, !alias.scope !4, !noalias !3
  %wp3128 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3127, ptr %wp3128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebd4 word 0xeb08031f
  %r3129.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3129 = load i64, ptr %r3129.p, align 8, !alias.scope !3, !noalias !4
  %r3130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3130 = load i64, ptr %r3130.p, align 8, !alias.scope !3, !noalias !4
  %t3131 = sub i64 %r3129, %r3130
  %fn3132 = icmp slt i64 %t3131, 0
  %fz3133 = icmp eq i64 %t3131, 0
  %fc3134 = icmp uge i64 %r3129, %r3130
  %fx13135 = xor i64 %r3129, %r3130
  %fx23136 = xor i64 %r3129, %t3131
  %fva3137 = and i64 %fx13135, %fx23136
  %fv3138 = icmp slt i64 %fva3137, 0
  %nz3139 = zext i1 %fn3132 to i64
  %zz3140 = zext i1 %fz3133 to i64
  %cz3141 = zext i1 %fc3134 to i64
  %vz3142 = zext i1 %fv3138 to i64
  %ns3143 = shl i64 %nz3139, 31
  %zs3144 = shl i64 %zz3140, 30
  %cs3145 = shl i64 %cz3141, 29
  %vs3146 = shl i64 %vz3142, 28
  %nzor3147 = or i64 %ns3143, %zs3144
  %cvor3148 = or i64 %cs3145, %vs3146
  %nzcv3149 = or i64 %nzor3147, %cvor3148
  %wp3150 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3149, ptr %wp3150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebd8 word 0x9a9f3308
  %r3151.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3151 = load i64, ptr %r3151.p, align 8, !alias.scope !3, !noalias !4
  %r3152.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3152 = load i64, ptr %r3152.p, align 8, !alias.scope !3, !noalias !4
  %fsh3154 = lshr i64 %r3152, 29
  %ftr3155 = trunc i64 %fsh3154 to i1
  %cond3153 = xor i1 %ftr3155, true
  %sel3156 = select i1 %cond3153, i64 %r3151, i64 0
  %wp3157 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3156, ptr %wp3157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebdc word 0x9b0a2508
  %r3158.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3158 = load i64, ptr %r3158.p, align 8, !alias.scope !3, !noalias !4
  %r3159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3159 = load i64, ptr %r3159.p, align 8, !alias.scope !3, !noalias !4
  %t3160 = mul i64 %r3159, %r3158
  %r3161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3161 = load i64, ptr %r3161.p, align 8, !alias.scope !3, !noalias !4
  %t3162 = add i64 %r3161, %t3160
  %wp3163 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3162, ptr %wp3163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebe0 word 0xf9404d08
  %r3164.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3164 = load i64, ptr %r3164.p, align 8, !alias.scope !3, !noalias !4
  %t3165 = add i64 %r3164, 152
  %gmp3166 = inttoptr i64 %t3165 to ptr
  %gml3167 = load i64, ptr %gmp3166, align 1, !alias.scope !4, !noalias !3
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3167, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebe4 word 0xf9001fe8
  %r3169.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3169 = load i64, ptr %r3169.p, align 8, !alias.scope !3, !noalias !4
  %t3170 = add i64 %r3169, 56
  %r3171.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3171 = load i64, ptr %r3171.p, align 8, !alias.scope !3, !noalias !4
  %gmp3172 = inttoptr i64 %t3170 to ptr
  store i64 %r3171, ptr %gmp3172, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ebe8 word 0x94002360
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485740, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  call void @f_8002a7968(ptr %c)
  ; @pc 0x80029ebec word 0x17ffff03
  br label %L_80029e7f8
L_80029ebf0:
  ; @pc 0x80029ebf0 word 0xaa1f03e8
  %t3174 = or i64 0, 0
  %wp3175 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3174, ptr %wp3175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebf4 word 0x17fffe62
  br label %L_80029e57c
L_80029ebf8:
  ; @pc 0x80029ebf8 word 0x2a1f03e0
  %t3176 = or i32 0, 0
  %c3177 = zext i32 %t3176 to i64
  %wp3178 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c3177, ptr %wp3178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ebfc word 0x17fffea7
  br label %L_80029e698
L_80029ec00:
  ; @pc 0x80029ec00 word 0x9100056e
  %r3179.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3179 = load i64, ptr %r3179.p, align 8, !alias.scope !3, !noalias !4
  %t3180 = add i64 %r3179, 1
  %wp3181 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3180, ptr %wp3181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec04 word 0x11000508
  %r3182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3182 = load i64, ptr %r3182.p, align 8, !alias.scope !3, !noalias !4
  %c3183 = trunc i64 %r3182 to i32
  %t3184 = add i32 %c3183, 1
  %c3185 = zext i32 %t3184 to i64
  %wp3186 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3185, ptr %wp3186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec08 word 0x92407dcb
  %r3187.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3187 = load i64, ptr %r3187.p, align 8, !alias.scope !3, !noalias !4
  %t3188 = and i64 %r3187, 4294967295
  %wp3189 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3188, ptr %wp3189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec0c word 0x6b0e015f
  %r3190.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3190 = load i64, ptr %r3190.p, align 8, !alias.scope !3, !noalias !4
  %c3191 = trunc i64 %r3190 to i32
  %r3192.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3192 = load i64, ptr %r3192.p, align 8, !alias.scope !3, !noalias !4
  %c3193 = trunc i64 %r3192 to i32
  %t3194 = sub i32 %c3191, %c3193
  %fn3195 = icmp slt i32 %t3194, 0
  %fz3196 = icmp eq i32 %t3194, 0
  %fc3197 = icmp uge i32 %c3191, %c3193
  %fx13198 = xor i32 %c3191, %c3193
  %fx23199 = xor i32 %c3191, %t3194
  %fva3200 = and i32 %fx13198, %fx23199
  %fv3201 = icmp slt i32 %fva3200, 0
  %nz3202 = zext i1 %fn3195 to i64
  %zz3203 = zext i1 %fz3196 to i64
  %cz3204 = zext i1 %fc3197 to i64
  %vz3205 = zext i1 %fv3201 to i64
  %ns3206 = shl i64 %nz3202, 31
  %zs3207 = shl i64 %zz3203, 30
  %cs3208 = shl i64 %cz3204, 29
  %vs3209 = shl i64 %vz3205, 28
  %nzor3210 = or i64 %ns3206, %zs3207
  %cvor3211 = or i64 %cs3208, %vs3209
  %nzcv3212 = or i64 %nzor3210, %cvor3211
  %wp3213 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3212, ptr %wp3213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec10 word 0x54ffed01
  %r3214.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3214 = load i64, ptr %r3214.p, align 8, !alias.scope !3, !noalias !4
  %fsh3216 = lshr i64 %r3214, 30
  %ftr3217 = trunc i64 %fsh3216 to i1
  %cond3215 = xor i1 %ftr3217, true
  br i1 %cond3215, label %L_80029e9b0, label %L_80029ec14_ft
L_80029ec18:
  ; @pc 0x80029ec18 word 0x9001b5a8
  %wp3218 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419843072, ptr %wp3218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec1c word 0xaa0003fc
  %r3219.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3219 = load i64, ptr %r3219.p, align 8, !alias.scope !3, !noalias !4
  %t3220 = or i64 0, %r3219
  %wp3221 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t3220, ptr %wp3221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec20 word 0xf9465908
  %r3222.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3222 = load i64, ptr %r3222.p, align 8, !alias.scope !3, !noalias !4
  %t3223 = add i64 %r3222, 3248
  %gmp3224 = inttoptr i64 %t3223 to ptr
  %gml3225 = load i64, ptr %gmp3224, align 1, !alias.scope !4, !noalias !3
  %wp3226 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3225, ptr %wp3226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec24 word 0xaa0803e0
  %r3227.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3227 = load i64, ptr %r3227.p, align 8, !alias.scope !3, !noalias !4
  %t3228 = or i64 0, %r3227
  %wp3229 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3228, ptr %wp3229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec28 word 0x94a4135e
  %wp3230 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485804, ptr %wp3230, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80029ec2c word 0x2a0003e8
  %r3231.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3231 = load i64, ptr %r3231.p, align 8, !alias.scope !3, !noalias !4
  %c3232 = trunc i64 %r3231 to i32
  %t3233 = or i32 0, %c3232
  %c3234 = zext i32 %t3233 to i64
  %wp3235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3234, ptr %wp3235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec30 word 0xaa1c03e0
  %r3236.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3236 = load i64, ptr %r3236.p, align 8, !alias.scope !3, !noalias !4
  %t3237 = or i64 0, %r3236
  %wp3238 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3237, ptr %wp3238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec34 word 0x34ffc8a8
  %r3239.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3239 = load i64, ptr %r3239.p, align 8, !alias.scope !3, !noalias !4
  %c3240 = trunc i64 %r3239 to i32
  %cmp3241 = icmp eq i32 %c3240, 0
  br i1 %cmp3241, label %L_80029e548, label %L_80029ec38_ft
L_80029ec5c:
  ; @pc 0x80029ec5c word 0xaa1603fc
  %r3264.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3264 = load i64, ptr %r3264.p, align 8, !alias.scope !3, !noalias !4
  %t3265 = or i64 0, %r3264
  %wp3266 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t3265, ptr %wp3266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec60 word 0x91059137
  %r3267.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3267 = load i64, ptr %r3267.p, align 8, !alias.scope !3, !noalias !4
  %t3268 = add i64 %r3267, 356
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3268, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec64 word 0xf90013e9
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %t3271 = add i64 %r3270, 32
  %r3272.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3272 = load i64, ptr %r3272.p, align 8, !alias.scope !3, !noalias !4
  %gmp3273 = inttoptr i64 %t3271 to ptr
  store i64 %r3272, ptr %gmp3273, align 1, !alias.scope !4, !noalias !3
  br label %L_80029ec68
L_80029ec68:
  ; @pc 0x80029ec68 word 0xb94002e8
  %r3274.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3274 = load i64, ptr %r3274.p, align 8, !alias.scope !3, !noalias !4
  %gmp3275 = inttoptr i64 %r3274 to ptr
  %gml3276 = load i32, ptr %gmp3275, align 1, !alias.scope !4, !noalias !3
  %c3277 = zext i32 %gml3276 to i64
  %wp3278 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3277, ptr %wp3278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec6c word 0x71000509
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %c3280 = trunc i64 %r3279 to i32
  %t3281 = sub i32 %c3280, 1
  %fn3282 = icmp slt i32 %t3281, 0
  %fz3283 = icmp eq i32 %t3281, 0
  %fc3284 = icmp uge i32 %c3280, 1
  %fx13285 = xor i32 %c3280, 1
  %fx23286 = xor i32 %c3280, %t3281
  %fva3287 = and i32 %fx13285, %fx23286
  %fv3288 = icmp slt i32 %fva3287, 0
  %nz3289 = zext i1 %fn3282 to i64
  %zz3290 = zext i1 %fz3283 to i64
  %cz3291 = zext i1 %fc3284 to i64
  %vz3292 = zext i1 %fv3288 to i64
  %ns3293 = shl i64 %nz3289, 31
  %zs3294 = shl i64 %zz3290, 30
  %cs3295 = shl i64 %cz3291, 29
  %vs3296 = shl i64 %vz3292, 28
  %nzor3297 = or i64 %ns3293, %zs3294
  %cvor3298 = or i64 %cs3295, %vs3296
  %nzcv3299 = or i64 %nzor3297, %cvor3298
  %wp3300 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3299, ptr %wp3300, align 8, !alias.scope !3, !noalias !4
  %c3301 = zext i32 %t3281 to i64
  %wp3302 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3301, ptr %wp3302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec70 word 0x54002920
  %r3303.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3303 = load i64, ptr %r3303.p, align 8, !alias.scope !3, !noalias !4
  %fsh3305 = lshr i64 %r3303, 30
  %cond3304 = trunc i64 %fsh3305 to i1
  br i1 %cond3304, label %L_80029f194, label %L_80029ec74
L_80029ec74:
  ; @pc 0x80029ec74 word 0x885f7eea
  %r3306.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3306 = load i64, ptr %r3306.p, align 8, !alias.scope !3, !noalias !4
  %atp3307 = inttoptr i64 %r3306 to ptr
  %ldx3308 = load atomic i32, ptr %atp3307 acquire, align 4, !alias.scope !4, !noalias !3
  %c3309 = zext i32 %ldx3308 to i64
  %fp3310 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r3306, ptr %fp3310, align 8, !alias.scope !3, !noalias !4
  %fp3311 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c3309, ptr %fp3311, align 8, !alias.scope !3, !noalias !4
  %wp3312 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3309, ptr %wp3312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec78 word 0x6b0a011f
  %r3313.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3313 = load i64, ptr %r3313.p, align 8, !alias.scope !3, !noalias !4
  %c3314 = trunc i64 %r3313 to i32
  %r3315.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3315 = load i64, ptr %r3315.p, align 8, !alias.scope !3, !noalias !4
  %c3316 = trunc i64 %r3315 to i32
  %t3317 = sub i32 %c3314, %c3316
  %fn3318 = icmp slt i32 %t3317, 0
  %fz3319 = icmp eq i32 %t3317, 0
  %fc3320 = icmp uge i32 %c3314, %c3316
  %fx13321 = xor i32 %c3314, %c3316
  %fx23322 = xor i32 %c3314, %t3317
  %fva3323 = and i32 %fx13321, %fx23322
  %fv3324 = icmp slt i32 %fva3323, 0
  %nz3325 = zext i1 %fn3318 to i64
  %zz3326 = zext i1 %fz3319 to i64
  %cz3327 = zext i1 %fc3320 to i64
  %vz3328 = zext i1 %fv3324 to i64
  %ns3329 = shl i64 %nz3325, 31
  %zs3330 = shl i64 %zz3326, 30
  %cs3331 = shl i64 %cz3327, 29
  %vs3332 = shl i64 %vz3328, 28
  %nzor3333 = or i64 %ns3329, %zs3330
  %cvor3334 = or i64 %cs3331, %vs3332
  %nzcv3335 = or i64 %nzor3333, %cvor3334
  %wp3336 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3335, ptr %wp3336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec7c word 0x54ffff61
  %r3337.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3337 = load i64, ptr %r3337.p, align 8, !alias.scope !3, !noalias !4
  %fsh3339 = lshr i64 %r3337, 30
  %ftr3340 = trunc i64 %fsh3339 to i1
  %cond3338 = xor i1 %ftr3340, true
  br i1 %cond3338, label %L_80029ec68, label %L_80029ec80_ft
L_80029ec90:
  ; @pc 0x80029ec90 word 0x2a1f03e0
  %t3364 = or i32 0, 0
  %c3365 = zext i32 %t3364 to i64
  %wp3366 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c3365, ptr %wp3366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec94 word 0xd65f03c0
  ret void
L_80029ec98:
  ; @pc 0x80029ec98 word 0x39410269
  %r3367.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3367 = load i64, ptr %r3367.p, align 8, !alias.scope !3, !noalias !4
  %t3368 = add i64 %r3367, 64
  %gmp3369 = inttoptr i64 %t3368 to ptr
  %gml3370 = load i8, ptr %gmp3369, align 1, !alias.scope !4, !noalias !3
  %c3371 = zext i8 %gml3370 to i64
  %wp3372 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3371, ptr %wp3372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec9c word 0x32000129
  %r3373.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3373 = load i64, ptr %r3373.p, align 8, !alias.scope !3, !noalias !4
  %c3374 = trunc i64 %r3373 to i32
  %t3375 = or i32 %c3374, 1
  %c3376 = zext i32 %t3375 to i64
  %wp3377 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3376, ptr %wp3377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eca0 word 0x39010269
  %r3378.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3378 = load i64, ptr %r3378.p, align 8, !alias.scope !3, !noalias !4
  %t3379 = add i64 %r3378, 64
  %r3380.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3380 = load i64, ptr %r3380.p, align 8, !alias.scope !3, !noalias !4
  %c3381 = trunc i64 %r3380 to i32
  %c3382 = trunc i32 %c3381 to i8
  %gmp3383 = inttoptr i64 %t3379 to ptr
  store i8 %c3382, ptr %gmp3383, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eca4 word 0x39660109
  %r3384.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3384 = load i64, ptr %r3384.p, align 8, !alias.scope !3, !noalias !4
  %t3385 = add i64 %r3384, 2432
  %gmp3386 = inttoptr i64 %t3385 to ptr
  %gml3387 = load i8, ptr %gmp3386, align 1, !alias.scope !4, !noalias !3
  %c3388 = zext i8 %gml3387 to i64
  %wp3389 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3388, ptr %wp3389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eca8 word 0x17fffe7a
  br label %L_80029e690
L_80029ecac:
  ; @pc 0x80029ecac word 0x5280190a
  %c3390 = zext i32 200 to i64
  %wp3391 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3390, ptr %wp3391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecb0 word 0x9100e3e2
  %r3392.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3392 = load i64, ptr %r3392.p, align 8, !alias.scope !3, !noalias !4
  %t3393 = add i64 %r3392, 56
  %wp3394 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3393, ptr %wp3394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecb4 word 0x9b0a2121
  %r3395.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3395 = load i64, ptr %r3395.p, align 8, !alias.scope !3, !noalias !4
  %r3396.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3396 = load i64, ptr %r3396.p, align 8, !alias.scope !3, !noalias !4
  %t3397 = mul i64 %r3396, %r3395
  %r3398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3398 = load i64, ptr %r3398.p, align 8, !alias.scope !3, !noalias !4
  %t3399 = add i64 %r3398, %t3397
  %wp3400 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3399, ptr %wp3400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecb8 word 0xaa1403e0
  %r3401.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3401 = load i64, ptr %r3401.p, align 8, !alias.scope !3, !noalias !4
  %t3402 = or i64 0, %r3401
  %wp3403 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3402, ptr %wp3403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecbc word 0xf8408c28
  %r3404.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3404 = load i64, ptr %r3404.p, align 8, !alias.scope !3, !noalias !4
  %t3405 = add i64 %r3404, 8
  %gmp3406 = inttoptr i64 %t3405 to ptr
  %gml3407 = load i64, ptr %gmp3406, align 1, !alias.scope !4, !noalias !3
  %wp3408 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3405, ptr %wp3408, align 8, !alias.scope !3, !noalias !4
  %wp3409 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3407, ptr %wp3409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecc0 word 0xb9800829
  %r3410.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3410 = load i64, ptr %r3410.p, align 8, !alias.scope !3, !noalias !4
  %t3411 = add i64 %r3410, 8
  %gmp3412 = inttoptr i64 %t3411 to ptr
  %gml3413 = load i32, ptr %gmp3412, align 1, !alias.scope !4, !noalias !3
  %c3414 = sext i32 %gml3413 to i64
  %wp3415 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3414, ptr %wp3415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecc4 word 0x8b080128
  %r3416.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3416 = load i64, ptr %r3416.p, align 8, !alias.scope !3, !noalias !4
  %r3417.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3417 = load i64, ptr %r3417.p, align 8, !alias.scope !3, !noalias !4
  %t3418 = add i64 %r3416, %r3417
  %wp3419 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3418, ptr %wp3419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecc8 word 0x381ff11f
  %r3420.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3420 = load i64, ptr %r3420.p, align 8, !alias.scope !3, !noalias !4
  %t3421 = add i64 %r3420, -1
  %c3422 = trunc i32 0 to i8
  %gmp3423 = inttoptr i64 %t3421 to ptr
  store i8 %c3422, ptr %gmp3423, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eccc word 0xb94002c8
  %r3424.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3424 = load i64, ptr %r3424.p, align 8, !alias.scope !3, !noalias !4
  %gmp3425 = inttoptr i64 %r3424 to ptr
  %gml3426 = load i32, ptr %gmp3425, align 1, !alias.scope !4, !noalias !3
  %c3427 = zext i32 %gml3426 to i64
  %wp3428 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3427, ptr %wp3428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecd0 word 0xf94006c9
  %r3429.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3429 = load i64, ptr %r3429.p, align 8, !alias.scope !3, !noalias !4
  %t3430 = add i64 %r3429, 8
  %gmp3431 = inttoptr i64 %t3430 to ptr
  %gml3432 = load i64, ptr %gmp3431, align 1, !alias.scope !4, !noalias !3
  %wp3433 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3432, ptr %wp3433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecd4 word 0xeb08031f
  %r3434.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3434 = load i64, ptr %r3434.p, align 8, !alias.scope !3, !noalias !4
  %r3435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3435 = load i64, ptr %r3435.p, align 8, !alias.scope !3, !noalias !4
  %t3436 = sub i64 %r3434, %r3435
  %fn3437 = icmp slt i64 %t3436, 0
  %fz3438 = icmp eq i64 %t3436, 0
  %fc3439 = icmp uge i64 %r3434, %r3435
  %fx13440 = xor i64 %r3434, %r3435
  %fx23441 = xor i64 %r3434, %t3436
  %fva3442 = and i64 %fx13440, %fx23441
  %fv3443 = icmp slt i64 %fva3442, 0
  %nz3444 = zext i1 %fn3437 to i64
  %zz3445 = zext i1 %fz3438 to i64
  %cz3446 = zext i1 %fc3439 to i64
  %vz3447 = zext i1 %fv3443 to i64
  %ns3448 = shl i64 %nz3444, 31
  %zs3449 = shl i64 %zz3445, 30
  %cs3450 = shl i64 %cz3446, 29
  %vs3451 = shl i64 %vz3447, 28
  %nzor3452 = or i64 %ns3448, %zs3449
  %cvor3453 = or i64 %cs3450, %vs3451
  %nzcv3454 = or i64 %nzor3452, %cvor3453
  %wp3455 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3454, ptr %wp3455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecd8 word 0x9a9f3308
  %r3456.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3456 = load i64, ptr %r3456.p, align 8, !alias.scope !3, !noalias !4
  %r3457.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3457 = load i64, ptr %r3457.p, align 8, !alias.scope !3, !noalias !4
  %fsh3459 = lshr i64 %r3457, 29
  %ftr3460 = trunc i64 %fsh3459 to i1
  %cond3458 = xor i1 %ftr3460, true
  %sel3461 = select i1 %cond3458, i64 %r3456, i64 0
  %wp3462 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3461, ptr %wp3462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecdc word 0x9b0a2508
  %r3463.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3463 = load i64, ptr %r3463.p, align 8, !alias.scope !3, !noalias !4
  %r3464.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3464 = load i64, ptr %r3464.p, align 8, !alias.scope !3, !noalias !4
  %t3465 = mul i64 %r3464, %r3463
  %r3466.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3466 = load i64, ptr %r3466.p, align 8, !alias.scope !3, !noalias !4
  %t3467 = add i64 %r3466, %t3465
  %wp3468 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3467, ptr %wp3468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ece0 word 0x39426108
  %r3469.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3469 = load i64, ptr %r3469.p, align 8, !alias.scope !3, !noalias !4
  %t3470 = add i64 %r3469, 152
  %gmp3471 = inttoptr i64 %t3470 to ptr
  %gml3472 = load i8, ptr %gmp3471, align 1, !alias.scope !4, !noalias !3
  %c3473 = zext i8 %gml3472 to i64
  %wp3474 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3473, ptr %wp3474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ece4 word 0x3900e3e8
  %r3475.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3475 = load i64, ptr %r3475.p, align 8, !alias.scope !3, !noalias !4
  %t3476 = add i64 %r3475, 56
  %r3477.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3477 = load i64, ptr %r3477.p, align 8, !alias.scope !3, !noalias !4
  %c3478 = trunc i64 %r3477 to i32
  %c3479 = trunc i32 %c3478 to i8
  %gmp3480 = inttoptr i64 %t3476 to ptr
  store i8 %c3479, ptr %gmp3480, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ece8 word 0x946a2876
  %wp3481 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485996, ptr %wp3481, align 8, !alias.scope !3, !noalias !4
  call void @f_801d28ec0(ptr %c)
  ; @pc 0x80029ecec word 0x17fffec3
  br label %L_80029e7f8
L_80029ecf0:
  ; @pc 0x80029ecf0 word 0x5280190a
  %c3482 = zext i32 200 to i64
  %wp3483 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3482, ptr %wp3483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecf4 word 0x9100e3e2
  %r3484.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3484 = load i64, ptr %r3484.p, align 8, !alias.scope !3, !noalias !4
  %t3485 = add i64 %r3484, 56
  %wp3486 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3485, ptr %wp3486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecf8 word 0x9b0a2121
  %r3487.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3487 = load i64, ptr %r3487.p, align 8, !alias.scope !3, !noalias !4
  %r3488.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3488 = load i64, ptr %r3488.p, align 8, !alias.scope !3, !noalias !4
  %t3489 = mul i64 %r3488, %r3487
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %t3491 = add i64 %r3490, %t3489
  %wp3492 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3491, ptr %wp3492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ecfc word 0xaa1403e0
  %r3493.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3493 = load i64, ptr %r3493.p, align 8, !alias.scope !3, !noalias !4
  %t3494 = or i64 0, %r3493
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3494, ptr %wp3495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed00 word 0xf8408c28
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %t3497 = add i64 %r3496, 8
  %gmp3498 = inttoptr i64 %t3497 to ptr
  %gml3499 = load i64, ptr %gmp3498, align 1, !alias.scope !4, !noalias !3
  %wp3500 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3497, ptr %wp3500, align 8, !alias.scope !3, !noalias !4
  %wp3501 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3499, ptr %wp3501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed04 word 0xb9800829
  %r3502.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3502 = load i64, ptr %r3502.p, align 8, !alias.scope !3, !noalias !4
  %t3503 = add i64 %r3502, 8
  %gmp3504 = inttoptr i64 %t3503 to ptr
  %gml3505 = load i32, ptr %gmp3504, align 1, !alias.scope !4, !noalias !3
  %c3506 = sext i32 %gml3505 to i64
  %wp3507 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3506, ptr %wp3507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed08 word 0x8b080128
  %r3508.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3508 = load i64, ptr %r3508.p, align 8, !alias.scope !3, !noalias !4
  %r3509.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3509 = load i64, ptr %r3509.p, align 8, !alias.scope !3, !noalias !4
  %t3510 = add i64 %r3508, %r3509
  %wp3511 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3510, ptr %wp3511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed0c word 0x381ff11f
  %r3512.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3512 = load i64, ptr %r3512.p, align 8, !alias.scope !3, !noalias !4
  %t3513 = add i64 %r3512, -1
  %c3514 = trunc i32 0 to i8
  %gmp3515 = inttoptr i64 %t3513 to ptr
  store i8 %c3514, ptr %gmp3515, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ed10 word 0xb94002c8
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %gmp3517 = inttoptr i64 %r3516 to ptr
  %gml3518 = load i32, ptr %gmp3517, align 1, !alias.scope !4, !noalias !3
  %c3519 = zext i32 %gml3518 to i64
  %wp3520 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3519, ptr %wp3520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed14 word 0xf94006c9
  %r3521.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3521 = load i64, ptr %r3521.p, align 8, !alias.scope !3, !noalias !4
  %t3522 = add i64 %r3521, 8
  %gmp3523 = inttoptr i64 %t3522 to ptr
  %gml3524 = load i64, ptr %gmp3523, align 1, !alias.scope !4, !noalias !3
  %wp3525 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3524, ptr %wp3525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed18 word 0xeb08031f
  %r3526.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3526 = load i64, ptr %r3526.p, align 8, !alias.scope !3, !noalias !4
  %r3527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3527 = load i64, ptr %r3527.p, align 8, !alias.scope !3, !noalias !4
  %t3528 = sub i64 %r3526, %r3527
  %fn3529 = icmp slt i64 %t3528, 0
  %fz3530 = icmp eq i64 %t3528, 0
  %fc3531 = icmp uge i64 %r3526, %r3527
  %fx13532 = xor i64 %r3526, %r3527
  %fx23533 = xor i64 %r3526, %t3528
  %fva3534 = and i64 %fx13532, %fx23533
  %fv3535 = icmp slt i64 %fva3534, 0
  %nz3536 = zext i1 %fn3529 to i64
  %zz3537 = zext i1 %fz3530 to i64
  %cz3538 = zext i1 %fc3531 to i64
  %vz3539 = zext i1 %fv3535 to i64
  %ns3540 = shl i64 %nz3536, 31
  %zs3541 = shl i64 %zz3537, 30
  %cs3542 = shl i64 %cz3538, 29
  %vs3543 = shl i64 %vz3539, 28
  %nzor3544 = or i64 %ns3540, %zs3541
  %cvor3545 = or i64 %cs3542, %vs3543
  %nzcv3546 = or i64 %nzor3544, %cvor3545
  %wp3547 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3546, ptr %wp3547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed1c word 0x9a9f3308
  %r3548.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3548 = load i64, ptr %r3548.p, align 8, !alias.scope !3, !noalias !4
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %fsh3551 = lshr i64 %r3549, 29
  %ftr3552 = trunc i64 %fsh3551 to i1
  %cond3550 = xor i1 %ftr3552, true
  %sel3553 = select i1 %cond3550, i64 %r3548, i64 0
  %wp3554 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3553, ptr %wp3554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed20 word 0x9b0a2508
  %r3555.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3555 = load i64, ptr %r3555.p, align 8, !alias.scope !3, !noalias !4
  %r3556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3556 = load i64, ptr %r3556.p, align 8, !alias.scope !3, !noalias !4
  %t3557 = mul i64 %r3556, %r3555
  %r3558.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3558 = load i64, ptr %r3558.p, align 8, !alias.scope !3, !noalias !4
  %t3559 = add i64 %r3558, %t3557
  %wp3560 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3559, ptr %wp3560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed24 word 0x79413108
  %r3561.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3561 = load i64, ptr %r3561.p, align 8, !alias.scope !3, !noalias !4
  %t3562 = add i64 %r3561, 152
  %gmp3563 = inttoptr i64 %t3562 to ptr
  %gml3564 = load i16, ptr %gmp3563, align 1, !alias.scope !4, !noalias !3
  %c3565 = zext i16 %gml3564 to i64
  %wp3566 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3565, ptr %wp3566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed28 word 0x790073e8
  %r3567.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3567 = load i64, ptr %r3567.p, align 8, !alias.scope !3, !noalias !4
  %t3568 = add i64 %r3567, 56
  %r3569.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3569 = load i64, ptr %r3569.p, align 8, !alias.scope !3, !noalias !4
  %c3570 = trunc i64 %r3569 to i32
  %c3571 = trunc i32 %c3570 to i16
  %gmp3572 = inttoptr i64 %t3568 to ptr
  store i16 %c3571, ptr %gmp3572, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ed2c word 0x946a287f
  %wp3573 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486064, ptr %wp3573, align 8, !alias.scope !3, !noalias !4
  call void @f_801d28f28(ptr %c)
  ; @pc 0x80029ed30 word 0x17fffeb2
  br label %L_80029e7f8
L_80029ed34:
  ; @pc 0x80029ed34 word 0x5280190a
  %c3574 = zext i32 200 to i64
  %wp3575 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3574, ptr %wp3575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed38 word 0x9100e3e2
  %r3576.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3576 = load i64, ptr %r3576.p, align 8, !alias.scope !3, !noalias !4
  %t3577 = add i64 %r3576, 56
  %wp3578 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3577, ptr %wp3578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed3c word 0x9b0a2121
  %r3579.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3579 = load i64, ptr %r3579.p, align 8, !alias.scope !3, !noalias !4
  %r3580.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3580 = load i64, ptr %r3580.p, align 8, !alias.scope !3, !noalias !4
  %t3581 = mul i64 %r3580, %r3579
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %t3583 = add i64 %r3582, %t3581
  %wp3584 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3583, ptr %wp3584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed40 word 0xaa1403e0
  %r3585.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3585 = load i64, ptr %r3585.p, align 8, !alias.scope !3, !noalias !4
  %t3586 = or i64 0, %r3585
  %wp3587 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3586, ptr %wp3587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed44 word 0xf8408c28
  %r3588.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3588 = load i64, ptr %r3588.p, align 8, !alias.scope !3, !noalias !4
  %t3589 = add i64 %r3588, 8
  %gmp3590 = inttoptr i64 %t3589 to ptr
  %gml3591 = load i64, ptr %gmp3590, align 1, !alias.scope !4, !noalias !3
  %wp3592 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3589, ptr %wp3592, align 8, !alias.scope !3, !noalias !4
  %wp3593 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3591, ptr %wp3593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed48 word 0xb9800829
  %r3594.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3594 = load i64, ptr %r3594.p, align 8, !alias.scope !3, !noalias !4
  %t3595 = add i64 %r3594, 8
  %gmp3596 = inttoptr i64 %t3595 to ptr
  %gml3597 = load i32, ptr %gmp3596, align 1, !alias.scope !4, !noalias !3
  %c3598 = sext i32 %gml3597 to i64
  %wp3599 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3598, ptr %wp3599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed4c word 0x8b080128
  %r3600.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3600 = load i64, ptr %r3600.p, align 8, !alias.scope !3, !noalias !4
  %r3601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3601 = load i64, ptr %r3601.p, align 8, !alias.scope !3, !noalias !4
  %t3602 = add i64 %r3600, %r3601
  %wp3603 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3602, ptr %wp3603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed50 word 0x381ff11f
  %r3604.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3604 = load i64, ptr %r3604.p, align 8, !alias.scope !3, !noalias !4
  %t3605 = add i64 %r3604, -1
  %c3606 = trunc i32 0 to i8
  %gmp3607 = inttoptr i64 %t3605 to ptr
  store i8 %c3606, ptr %gmp3607, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ed54 word 0xb94002c8
  %r3608.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3608 = load i64, ptr %r3608.p, align 8, !alias.scope !3, !noalias !4
  %gmp3609 = inttoptr i64 %r3608 to ptr
  %gml3610 = load i32, ptr %gmp3609, align 1, !alias.scope !4, !noalias !3
  %c3611 = zext i32 %gml3610 to i64
  %wp3612 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3611, ptr %wp3612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed58 word 0xf94006c9
  %r3613.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3613 = load i64, ptr %r3613.p, align 8, !alias.scope !3, !noalias !4
  %t3614 = add i64 %r3613, 8
  %gmp3615 = inttoptr i64 %t3614 to ptr
  %gml3616 = load i64, ptr %gmp3615, align 1, !alias.scope !4, !noalias !3
  %wp3617 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3616, ptr %wp3617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed5c word 0xeb08031f
  %r3618.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3618 = load i64, ptr %r3618.p, align 8, !alias.scope !3, !noalias !4
  %r3619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3619 = load i64, ptr %r3619.p, align 8, !alias.scope !3, !noalias !4
  %t3620 = sub i64 %r3618, %r3619
  %fn3621 = icmp slt i64 %t3620, 0
  %fz3622 = icmp eq i64 %t3620, 0
  %fc3623 = icmp uge i64 %r3618, %r3619
  %fx13624 = xor i64 %r3618, %r3619
  %fx23625 = xor i64 %r3618, %t3620
  %fva3626 = and i64 %fx13624, %fx23625
  %fv3627 = icmp slt i64 %fva3626, 0
  %nz3628 = zext i1 %fn3621 to i64
  %zz3629 = zext i1 %fz3622 to i64
  %cz3630 = zext i1 %fc3623 to i64
  %vz3631 = zext i1 %fv3627 to i64
  %ns3632 = shl i64 %nz3628, 31
  %zs3633 = shl i64 %zz3629, 30
  %cs3634 = shl i64 %cz3630, 29
  %vs3635 = shl i64 %vz3631, 28
  %nzor3636 = or i64 %ns3632, %zs3633
  %cvor3637 = or i64 %cs3634, %vs3635
  %nzcv3638 = or i64 %nzor3636, %cvor3637
  %wp3639 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3638, ptr %wp3639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed60 word 0x9a9f3308
  %r3640.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3640 = load i64, ptr %r3640.p, align 8, !alias.scope !3, !noalias !4
  %r3641.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3641 = load i64, ptr %r3641.p, align 8, !alias.scope !3, !noalias !4
  %fsh3643 = lshr i64 %r3641, 29
  %ftr3644 = trunc i64 %fsh3643 to i1
  %cond3642 = xor i1 %ftr3644, true
  %sel3645 = select i1 %cond3642, i64 %r3640, i64 0
  %wp3646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3645, ptr %wp3646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed64 word 0x9b0a2508
  %r3647.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3647 = load i64, ptr %r3647.p, align 8, !alias.scope !3, !noalias !4
  %r3648.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3648 = load i64, ptr %r3648.p, align 8, !alias.scope !3, !noalias !4
  %t3649 = mul i64 %r3648, %r3647
  %r3650.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3650 = load i64, ptr %r3650.p, align 8, !alias.scope !3, !noalias !4
  %t3651 = add i64 %r3650, %t3649
  %wp3652 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3651, ptr %wp3652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed68 word 0xf9404d08
  %r3653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3653 = load i64, ptr %r3653.p, align 8, !alias.scope !3, !noalias !4
  %t3654 = add i64 %r3653, 152
  %gmp3655 = inttoptr i64 %t3654 to ptr
  %gml3656 = load i64, ptr %gmp3655, align 1, !alias.scope !4, !noalias !3
  %wp3657 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3656, ptr %wp3657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed6c word 0xf9001fe8
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %t3659 = add i64 %r3658, 56
  %r3660.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3660 = load i64, ptr %r3660.p, align 8, !alias.scope !3, !noalias !4
  %gmp3661 = inttoptr i64 %t3659 to ptr
  store i64 %r3660, ptr %gmp3661, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ed70 word 0x946a2888
  %wp3662 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486132, ptr %wp3662, align 8, !alias.scope !3, !noalias !4
  call void @f_801d28f90(ptr %c)
  ; @pc 0x80029ed74 word 0x17fffea1
  br label %L_80029e7f8
L_80029ed78:
  ; @pc 0x80029ed78 word 0x5280190a
  %c3663 = zext i32 200 to i64
  %wp3664 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3663, ptr %wp3664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed7c word 0x9100e3e2
  %r3665.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3665 = load i64, ptr %r3665.p, align 8, !alias.scope !3, !noalias !4
  %t3666 = add i64 %r3665, 56
  %wp3667 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3666, ptr %wp3667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed80 word 0x9b0a2121
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %r3669.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3669 = load i64, ptr %r3669.p, align 8, !alias.scope !3, !noalias !4
  %t3670 = mul i64 %r3669, %r3668
  %r3671.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3671 = load i64, ptr %r3671.p, align 8, !alias.scope !3, !noalias !4
  %t3672 = add i64 %r3671, %t3670
  %wp3673 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3672, ptr %wp3673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed84 word 0xaa1403e0
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %t3675 = or i64 0, %r3674
  %wp3676 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3675, ptr %wp3676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed88 word 0xf8408c28
  %r3677.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3677 = load i64, ptr %r3677.p, align 8, !alias.scope !3, !noalias !4
  %t3678 = add i64 %r3677, 8
  %gmp3679 = inttoptr i64 %t3678 to ptr
  %gml3680 = load i64, ptr %gmp3679, align 1, !alias.scope !4, !noalias !3
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3678, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  %wp3682 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3680, ptr %wp3682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed8c word 0xb9800829
  %r3683.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3683 = load i64, ptr %r3683.p, align 8, !alias.scope !3, !noalias !4
  %t3684 = add i64 %r3683, 8
  %gmp3685 = inttoptr i64 %t3684 to ptr
  %gml3686 = load i32, ptr %gmp3685, align 1, !alias.scope !4, !noalias !3
  %c3687 = sext i32 %gml3686 to i64
  %wp3688 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3687, ptr %wp3688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed90 word 0x8b080128
  %r3689.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3689 = load i64, ptr %r3689.p, align 8, !alias.scope !3, !noalias !4
  %r3690.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3690 = load i64, ptr %r3690.p, align 8, !alias.scope !3, !noalias !4
  %t3691 = add i64 %r3689, %r3690
  %wp3692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3691, ptr %wp3692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed94 word 0x381ff11f
  %r3693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3693 = load i64, ptr %r3693.p, align 8, !alias.scope !3, !noalias !4
  %t3694 = add i64 %r3693, -1
  %c3695 = trunc i32 0 to i8
  %gmp3696 = inttoptr i64 %t3694 to ptr
  store i8 %c3695, ptr %gmp3696, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ed98 word 0xb94002c8
  %r3697.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3697 = load i64, ptr %r3697.p, align 8, !alias.scope !3, !noalias !4
  %gmp3698 = inttoptr i64 %r3697 to ptr
  %gml3699 = load i32, ptr %gmp3698, align 1, !alias.scope !4, !noalias !3
  %c3700 = zext i32 %gml3699 to i64
  %wp3701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3700, ptr %wp3701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ed9c word 0xf94006c9
  %r3702.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3702 = load i64, ptr %r3702.p, align 8, !alias.scope !3, !noalias !4
  %t3703 = add i64 %r3702, 8
  %gmp3704 = inttoptr i64 %t3703 to ptr
  %gml3705 = load i64, ptr %gmp3704, align 1, !alias.scope !4, !noalias !3
  %wp3706 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3705, ptr %wp3706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eda0 word 0xeb08031f
  %r3707.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3707 = load i64, ptr %r3707.p, align 8, !alias.scope !3, !noalias !4
  %r3708.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3708 = load i64, ptr %r3708.p, align 8, !alias.scope !3, !noalias !4
  %t3709 = sub i64 %r3707, %r3708
  %fn3710 = icmp slt i64 %t3709, 0
  %fz3711 = icmp eq i64 %t3709, 0
  %fc3712 = icmp uge i64 %r3707, %r3708
  %fx13713 = xor i64 %r3707, %r3708
  %fx23714 = xor i64 %r3707, %t3709
  %fva3715 = and i64 %fx13713, %fx23714
  %fv3716 = icmp slt i64 %fva3715, 0
  %nz3717 = zext i1 %fn3710 to i64
  %zz3718 = zext i1 %fz3711 to i64
  %cz3719 = zext i1 %fc3712 to i64
  %vz3720 = zext i1 %fv3716 to i64
  %ns3721 = shl i64 %nz3717, 31
  %zs3722 = shl i64 %zz3718, 30
  %cs3723 = shl i64 %cz3719, 29
  %vs3724 = shl i64 %vz3720, 28
  %nzor3725 = or i64 %ns3721, %zs3722
  %cvor3726 = or i64 %cs3723, %vs3724
  %nzcv3727 = or i64 %nzor3725, %cvor3726
  %wp3728 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3727, ptr %wp3728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eda4 word 0x9a9f3308
  %r3729.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3729 = load i64, ptr %r3729.p, align 8, !alias.scope !3, !noalias !4
  %r3730.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3730 = load i64, ptr %r3730.p, align 8, !alias.scope !3, !noalias !4
  %fsh3732 = lshr i64 %r3730, 29
  %ftr3733 = trunc i64 %fsh3732 to i1
  %cond3731 = xor i1 %ftr3733, true
  %sel3734 = select i1 %cond3731, i64 %r3729, i64 0
  %wp3735 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3734, ptr %wp3735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eda8 word 0x9b0a2508
  %r3736.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3736 = load i64, ptr %r3736.p, align 8, !alias.scope !3, !noalias !4
  %r3737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3737 = load i64, ptr %r3737.p, align 8, !alias.scope !3, !noalias !4
  %t3738 = mul i64 %r3737, %r3736
  %r3739.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3739 = load i64, ptr %r3739.p, align 8, !alias.scope !3, !noalias !4
  %t3740 = add i64 %r3739, %t3738
  %wp3741 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3740, ptr %wp3741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edac word 0xbd40a102
  %r3742.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3742 = load i64, ptr %r3742.p, align 8, !alias.scope !3, !noalias !4
  %t3743 = add i64 %r3742, 160
  %gmp3744 = inttoptr i64 %t3743 to ptr
  %gml3745 = load i32, ptr %gmp3744, align 1, !alias.scope !4, !noalias !3
  %c3746 = zext i32 %gml3745 to i128
  %wp3747 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c3746, ptr %wp3747, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029edb0 word 0x2d530500
  %r3748.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3748 = load i64, ptr %r3748.p, align 8, !alias.scope !3, !noalias !4
  %t3749 = add i64 %r3748, 152
  %t3750 = add i64 %t3749, 4
  %gmp3751 = inttoptr i64 %t3749 to ptr
  %gml3752 = load i32, ptr %gmp3751, align 1, !alias.scope !4, !noalias !3
  %gmp3753 = inttoptr i64 %t3750 to ptr
  %gml3754 = load i32, ptr %gmp3753, align 1, !alias.scope !4, !noalias !3
  %c3755 = zext i32 %gml3752 to i128
  %wp3756 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3755, ptr %wp3756, align 16, !alias.scope !3, !noalias !4
  %c3757 = zext i32 %gml3754 to i128
  %wp3758 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3757, ptr %wp3758, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029edb4 word 0x2d0707e0
  %r3759.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3759 = load i64, ptr %r3759.p, align 8, !alias.scope !3, !noalias !4
  %t3760 = add i64 %r3759, 56
  %t3761 = add i64 %t3760, 4
  %r3762.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3762 = load i128, ptr %r3762.p, align 16, !alias.scope !3, !noalias !4
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 528
  %r3763 = load i128, ptr %r3763.p, align 16, !alias.scope !3, !noalias !4
  %c3764 = trunc i128 %r3762 to i32
  %c3765 = trunc i128 %r3763 to i32
  %gmp3766 = inttoptr i64 %t3760 to ptr
  store i32 %c3764, ptr %gmp3766, align 1, !alias.scope !4, !noalias !3
  %gmp3767 = inttoptr i64 %t3761 to ptr
  store i32 %c3765, ptr %gmp3767, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029edb8 word 0xbd0043e2
  %r3768.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3768 = load i64, ptr %r3768.p, align 8, !alias.scope !3, !noalias !4
  %t3769 = add i64 %r3768, 64
  %r3770.p = getelementptr inbounds i8, ptr %c, i64 544
  %r3770 = load i128, ptr %r3770.p, align 16, !alias.scope !3, !noalias !4
  %c3771 = trunc i128 %r3770 to i32
  %gmp3772 = inttoptr i64 %t3769 to ptr
  store i32 %c3771, ptr %gmp3772, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029edbc word 0x9400228b
  %wp3773 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486208, ptr %wp3773, align 8, !alias.scope !3, !noalias !4
  call void @f_8002a77e8(ptr %c)
  ; @pc 0x80029edc0 word 0x17fffe8e
  br label %L_80029e7f8
L_80029edc4:
  ; @pc 0x80029edc4 word 0x5280190a
  %c3774 = zext i32 200 to i64
  %wp3775 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3774, ptr %wp3775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edc8 word 0x9100e3e2
  %r3776.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3776 = load i64, ptr %r3776.p, align 8, !alias.scope !3, !noalias !4
  %t3777 = add i64 %r3776, 56
  %wp3778 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3777, ptr %wp3778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edcc word 0x9b0a2121
  %r3779.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3779 = load i64, ptr %r3779.p, align 8, !alias.scope !3, !noalias !4
  %r3780.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3780 = load i64, ptr %r3780.p, align 8, !alias.scope !3, !noalias !4
  %t3781 = mul i64 %r3780, %r3779
  %r3782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3782 = load i64, ptr %r3782.p, align 8, !alias.scope !3, !noalias !4
  %t3783 = add i64 %r3782, %t3781
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edd0 word 0xaa1403e0
  %r3785.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3785 = load i64, ptr %r3785.p, align 8, !alias.scope !3, !noalias !4
  %t3786 = or i64 0, %r3785
  %wp3787 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3786, ptr %wp3787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edd4 word 0xf8408c28
  %r3788.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3788 = load i64, ptr %r3788.p, align 8, !alias.scope !3, !noalias !4
  %t3789 = add i64 %r3788, 8
  %gmp3790 = inttoptr i64 %t3789 to ptr
  %gml3791 = load i64, ptr %gmp3790, align 1, !alias.scope !4, !noalias !3
  %wp3792 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3789, ptr %wp3792, align 8, !alias.scope !3, !noalias !4
  %wp3793 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3791, ptr %wp3793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edd8 word 0xb9800829
  %r3794.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3794 = load i64, ptr %r3794.p, align 8, !alias.scope !3, !noalias !4
  %t3795 = add i64 %r3794, 8
  %gmp3796 = inttoptr i64 %t3795 to ptr
  %gml3797 = load i32, ptr %gmp3796, align 1, !alias.scope !4, !noalias !3
  %c3798 = sext i32 %gml3797 to i64
  %wp3799 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3798, ptr %wp3799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eddc word 0x8b080128
  %r3800.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3800 = load i64, ptr %r3800.p, align 8, !alias.scope !3, !noalias !4
  %r3801.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3801 = load i64, ptr %r3801.p, align 8, !alias.scope !3, !noalias !4
  %t3802 = add i64 %r3800, %r3801
  %wp3803 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3802, ptr %wp3803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ede0 word 0x381ff11f
  %r3804.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3804 = load i64, ptr %r3804.p, align 8, !alias.scope !3, !noalias !4
  %t3805 = add i64 %r3804, -1
  %c3806 = trunc i32 0 to i8
  %gmp3807 = inttoptr i64 %t3805 to ptr
  store i8 %c3806, ptr %gmp3807, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ede4 word 0xb94002c8
  %r3808.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3808 = load i64, ptr %r3808.p, align 8, !alias.scope !3, !noalias !4
  %gmp3809 = inttoptr i64 %r3808 to ptr
  %gml3810 = load i32, ptr %gmp3809, align 1, !alias.scope !4, !noalias !3
  %c3811 = zext i32 %gml3810 to i64
  %wp3812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3811, ptr %wp3812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ede8 word 0xf94006c9
  %r3813.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3813 = load i64, ptr %r3813.p, align 8, !alias.scope !3, !noalias !4
  %t3814 = add i64 %r3813, 8
  %gmp3815 = inttoptr i64 %t3814 to ptr
  %gml3816 = load i64, ptr %gmp3815, align 1, !alias.scope !4, !noalias !3
  %wp3817 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3816, ptr %wp3817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edec word 0xeb08031f
  %r3818.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3818 = load i64, ptr %r3818.p, align 8, !alias.scope !3, !noalias !4
  %r3819.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3819 = load i64, ptr %r3819.p, align 8, !alias.scope !3, !noalias !4
  %t3820 = sub i64 %r3818, %r3819
  %fn3821 = icmp slt i64 %t3820, 0
  %fz3822 = icmp eq i64 %t3820, 0
  %fc3823 = icmp uge i64 %r3818, %r3819
  %fx13824 = xor i64 %r3818, %r3819
  %fx23825 = xor i64 %r3818, %t3820
  %fva3826 = and i64 %fx13824, %fx23825
  %fv3827 = icmp slt i64 %fva3826, 0
  %nz3828 = zext i1 %fn3821 to i64
  %zz3829 = zext i1 %fz3822 to i64
  %cz3830 = zext i1 %fc3823 to i64
  %vz3831 = zext i1 %fv3827 to i64
  %ns3832 = shl i64 %nz3828, 31
  %zs3833 = shl i64 %zz3829, 30
  %cs3834 = shl i64 %cz3830, 29
  %vs3835 = shl i64 %vz3831, 28
  %nzor3836 = or i64 %ns3832, %zs3833
  %cvor3837 = or i64 %cs3834, %vs3835
  %nzcv3838 = or i64 %nzor3836, %cvor3837
  %wp3839 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3838, ptr %wp3839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edf0 word 0x9a9f3308
  %r3840.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3840 = load i64, ptr %r3840.p, align 8, !alias.scope !3, !noalias !4
  %r3841.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3841 = load i64, ptr %r3841.p, align 8, !alias.scope !3, !noalias !4
  %fsh3843 = lshr i64 %r3841, 29
  %ftr3844 = trunc i64 %fsh3843 to i1
  %cond3842 = xor i1 %ftr3844, true
  %sel3845 = select i1 %cond3842, i64 %r3840, i64 0
  %wp3846 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3845, ptr %wp3846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edf4 word 0x9b0a2508
  %r3847.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3847 = load i64, ptr %r3847.p, align 8, !alias.scope !3, !noalias !4
  %r3848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3848 = load i64, ptr %r3848.p, align 8, !alias.scope !3, !noalias !4
  %t3849 = mul i64 %r3848, %r3847
  %r3850.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3850 = load i64, ptr %r3850.p, align 8, !alias.scope !3, !noalias !4
  %t3851 = add i64 %r3850, %t3849
  %wp3852 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3851, ptr %wp3852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edf8 word 0xf9404d08
  %r3853.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3853 = load i64, ptr %r3853.p, align 8, !alias.scope !3, !noalias !4
  %t3854 = add i64 %r3853, 152
  %gmp3855 = inttoptr i64 %t3854 to ptr
  %gml3856 = load i64, ptr %gmp3855, align 1, !alias.scope !4, !noalias !3
  %wp3857 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3856, ptr %wp3857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029edfc word 0xf9001fe8
  %r3858.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3858 = load i64, ptr %r3858.p, align 8, !alias.scope !3, !noalias !4
  %t3859 = add i64 %r3858, 56
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %gmp3861 = inttoptr i64 %t3859 to ptr
  store i64 %r3860, ptr %gmp3861, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ee00 word 0x946a28f0
  %wp3862 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486276, ptr %wp3862, align 8, !alias.scope !3, !noalias !4
  call void @f_801d291c0(ptr %c)
  ; @pc 0x80029ee04 word 0x17fffe7d
  br label %L_80029e7f8
L_80029ee08:
  ; @pc 0x80029ee08 word 0x5280190a
  %c3863 = zext i32 200 to i64
  %wp3864 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3863, ptr %wp3864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee0c word 0x9100e3e2
  %r3865.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3865 = load i64, ptr %r3865.p, align 8, !alias.scope !3, !noalias !4
  %t3866 = add i64 %r3865, 56
  %wp3867 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3866, ptr %wp3867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee10 word 0x9b0a2121
  %r3868.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3868 = load i64, ptr %r3868.p, align 8, !alias.scope !3, !noalias !4
  %r3869.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3869 = load i64, ptr %r3869.p, align 8, !alias.scope !3, !noalias !4
  %t3870 = mul i64 %r3869, %r3868
  %r3871.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3871 = load i64, ptr %r3871.p, align 8, !alias.scope !3, !noalias !4
  %t3872 = add i64 %r3871, %t3870
  %wp3873 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3872, ptr %wp3873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee14 word 0xaa1403e0
  %r3874.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3874 = load i64, ptr %r3874.p, align 8, !alias.scope !3, !noalias !4
  %t3875 = or i64 0, %r3874
  %wp3876 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3875, ptr %wp3876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee18 word 0xf8408c28
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %t3878 = add i64 %r3877, 8
  %gmp3879 = inttoptr i64 %t3878 to ptr
  %gml3880 = load i64, ptr %gmp3879, align 1, !alias.scope !4, !noalias !3
  %wp3881 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3878, ptr %wp3881, align 8, !alias.scope !3, !noalias !4
  %wp3882 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3880, ptr %wp3882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee1c word 0xb9800829
  %r3883.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3883 = load i64, ptr %r3883.p, align 8, !alias.scope !3, !noalias !4
  %t3884 = add i64 %r3883, 8
  %gmp3885 = inttoptr i64 %t3884 to ptr
  %gml3886 = load i32, ptr %gmp3885, align 1, !alias.scope !4, !noalias !3
  %c3887 = sext i32 %gml3886 to i64
  %wp3888 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3887, ptr %wp3888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee20 word 0x8b080128
  %r3889.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3889 = load i64, ptr %r3889.p, align 8, !alias.scope !3, !noalias !4
  %r3890.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3890 = load i64, ptr %r3890.p, align 8, !alias.scope !3, !noalias !4
  %t3891 = add i64 %r3889, %r3890
  %wp3892 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3891, ptr %wp3892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee24 word 0x381ff11f
  %r3893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3893 = load i64, ptr %r3893.p, align 8, !alias.scope !3, !noalias !4
  %t3894 = add i64 %r3893, -1
  %c3895 = trunc i32 0 to i8
  %gmp3896 = inttoptr i64 %t3894 to ptr
  store i8 %c3895, ptr %gmp3896, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ee28 word 0xb94002c8
  %r3897.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3897 = load i64, ptr %r3897.p, align 8, !alias.scope !3, !noalias !4
  %gmp3898 = inttoptr i64 %r3897 to ptr
  %gml3899 = load i32, ptr %gmp3898, align 1, !alias.scope !4, !noalias !3
  %c3900 = zext i32 %gml3899 to i64
  %wp3901 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3900, ptr %wp3901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee2c word 0xf94006c9
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %t3903 = add i64 %r3902, 8
  %gmp3904 = inttoptr i64 %t3903 to ptr
  %gml3905 = load i64, ptr %gmp3904, align 1, !alias.scope !4, !noalias !3
  %wp3906 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3905, ptr %wp3906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee30 word 0xeb08031f
  %r3907.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3907 = load i64, ptr %r3907.p, align 8, !alias.scope !3, !noalias !4
  %r3908.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3908 = load i64, ptr %r3908.p, align 8, !alias.scope !3, !noalias !4
  %t3909 = sub i64 %r3907, %r3908
  %fn3910 = icmp slt i64 %t3909, 0
  %fz3911 = icmp eq i64 %t3909, 0
  %fc3912 = icmp uge i64 %r3907, %r3908
  %fx13913 = xor i64 %r3907, %r3908
  %fx23914 = xor i64 %r3907, %t3909
  %fva3915 = and i64 %fx13913, %fx23914
  %fv3916 = icmp slt i64 %fva3915, 0
  %nz3917 = zext i1 %fn3910 to i64
  %zz3918 = zext i1 %fz3911 to i64
  %cz3919 = zext i1 %fc3912 to i64
  %vz3920 = zext i1 %fv3916 to i64
  %ns3921 = shl i64 %nz3917, 31
  %zs3922 = shl i64 %zz3918, 30
  %cs3923 = shl i64 %cz3919, 29
  %vs3924 = shl i64 %vz3920, 28
  %nzor3925 = or i64 %ns3921, %zs3922
  %cvor3926 = or i64 %cs3923, %vs3924
  %nzcv3927 = or i64 %nzor3925, %cvor3926
  %wp3928 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3927, ptr %wp3928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee34 word 0x9a9f3308
  %r3929.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3929 = load i64, ptr %r3929.p, align 8, !alias.scope !3, !noalias !4
  %r3930.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3930 = load i64, ptr %r3930.p, align 8, !alias.scope !3, !noalias !4
  %fsh3932 = lshr i64 %r3930, 29
  %ftr3933 = trunc i64 %fsh3932 to i1
  %cond3931 = xor i1 %ftr3933, true
  %sel3934 = select i1 %cond3931, i64 %r3929, i64 0
  %wp3935 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3934, ptr %wp3935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee38 word 0x9b0a2508
  %r3936.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3936 = load i64, ptr %r3936.p, align 8, !alias.scope !3, !noalias !4
  %r3937.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3937 = load i64, ptr %r3937.p, align 8, !alias.scope !3, !noalias !4
  %t3938 = mul i64 %r3937, %r3936
  %r3939.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3939 = load i64, ptr %r3939.p, align 8, !alias.scope !3, !noalias !4
  %t3940 = add i64 %r3939, %t3938
  %wp3941 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3940, ptr %wp3941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee3c word 0xfd404d00
  %r3942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3942 = load i64, ptr %r3942.p, align 8, !alias.scope !3, !noalias !4
  %t3943 = add i64 %r3942, 152
  %gmp3944 = inttoptr i64 %t3943 to ptr
  %gml3945 = load i64, ptr %gmp3944, align 1, !alias.scope !4, !noalias !3
  %c3946 = zext i64 %gml3945 to i128
  %wp3947 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3946, ptr %wp3947, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee40 word 0xfd001fe0
  %r3948.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3948 = load i64, ptr %r3948.p, align 8, !alias.scope !3, !noalias !4
  %t3949 = add i64 %r3948, 56
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3950 = load i128, ptr %r3950.p, align 16, !alias.scope !3, !noalias !4
  %c3951 = trunc i128 %r3950 to i64
  %gmp3952 = inttoptr i64 %t3949 to ptr
  store i64 %c3951, ptr %gmp3952, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ee44 word 0x946a28f9
  %wp3953 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486344, ptr %wp3953, align 8, !alias.scope !3, !noalias !4
  call void @f_801d29228(ptr %c)
  ; @pc 0x80029ee48 word 0x17fffe6c
  br label %L_80029e7f8
L_80029ee4c:
  ; @pc 0x80029ee4c word 0x5280190a
  %c3954 = zext i32 200 to i64
  %wp3955 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3954, ptr %wp3955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee50 word 0x9100e3e2
  %r3956.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3956 = load i64, ptr %r3956.p, align 8, !alias.scope !3, !noalias !4
  %t3957 = add i64 %r3956, 56
  %wp3958 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3957, ptr %wp3958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee54 word 0x9b0a2121
  %r3959.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3959 = load i64, ptr %r3959.p, align 8, !alias.scope !3, !noalias !4
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %t3961 = mul i64 %r3960, %r3959
  %r3962.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3962 = load i64, ptr %r3962.p, align 8, !alias.scope !3, !noalias !4
  %t3963 = add i64 %r3962, %t3961
  %wp3964 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3963, ptr %wp3964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee58 word 0xaa1403e0
  %r3965.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3965 = load i64, ptr %r3965.p, align 8, !alias.scope !3, !noalias !4
  %t3966 = or i64 0, %r3965
  %wp3967 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3966, ptr %wp3967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee5c word 0xf8408c28
  %r3968.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3968 = load i64, ptr %r3968.p, align 8, !alias.scope !3, !noalias !4
  %t3969 = add i64 %r3968, 8
  %gmp3970 = inttoptr i64 %t3969 to ptr
  %gml3971 = load i64, ptr %gmp3970, align 1, !alias.scope !4, !noalias !3
  %wp3972 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3969, ptr %wp3972, align 8, !alias.scope !3, !noalias !4
  %wp3973 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3971, ptr %wp3973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee60 word 0xb9800829
  %r3974.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3974 = load i64, ptr %r3974.p, align 8, !alias.scope !3, !noalias !4
  %t3975 = add i64 %r3974, 8
  %gmp3976 = inttoptr i64 %t3975 to ptr
  %gml3977 = load i32, ptr %gmp3976, align 1, !alias.scope !4, !noalias !3
  %c3978 = sext i32 %gml3977 to i64
  %wp3979 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3978, ptr %wp3979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee64 word 0x8b080128
  %r3980.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3980 = load i64, ptr %r3980.p, align 8, !alias.scope !3, !noalias !4
  %r3981.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3981 = load i64, ptr %r3981.p, align 8, !alias.scope !3, !noalias !4
  %t3982 = add i64 %r3980, %r3981
  %wp3983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3982, ptr %wp3983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee68 word 0x381ff11f
  %r3984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3984 = load i64, ptr %r3984.p, align 8, !alias.scope !3, !noalias !4
  %t3985 = add i64 %r3984, -1
  %c3986 = trunc i32 0 to i8
  %gmp3987 = inttoptr i64 %t3985 to ptr
  store i8 %c3986, ptr %gmp3987, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ee6c word 0xb94002c8
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %gmp3989 = inttoptr i64 %r3988 to ptr
  %gml3990 = load i32, ptr %gmp3989, align 1, !alias.scope !4, !noalias !3
  %c3991 = zext i32 %gml3990 to i64
  %wp3992 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3991, ptr %wp3992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee70 word 0xf94006c9
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %t3994 = add i64 %r3993, 8
  %gmp3995 = inttoptr i64 %t3994 to ptr
  %gml3996 = load i64, ptr %gmp3995, align 1, !alias.scope !4, !noalias !3
  %wp3997 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3996, ptr %wp3997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee74 word 0xeb08031f
  %r3998.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3998 = load i64, ptr %r3998.p, align 8, !alias.scope !3, !noalias !4
  %r3999.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3999 = load i64, ptr %r3999.p, align 8, !alias.scope !3, !noalias !4
  %t4000 = sub i64 %r3998, %r3999
  %fn4001 = icmp slt i64 %t4000, 0
  %fz4002 = icmp eq i64 %t4000, 0
  %fc4003 = icmp uge i64 %r3998, %r3999
  %fx14004 = xor i64 %r3998, %r3999
  %fx24005 = xor i64 %r3998, %t4000
  %fva4006 = and i64 %fx14004, %fx24005
  %fv4007 = icmp slt i64 %fva4006, 0
  %nz4008 = zext i1 %fn4001 to i64
  %zz4009 = zext i1 %fz4002 to i64
  %cz4010 = zext i1 %fc4003 to i64
  %vz4011 = zext i1 %fv4007 to i64
  %ns4012 = shl i64 %nz4008, 31
  %zs4013 = shl i64 %zz4009, 30
  %cs4014 = shl i64 %cz4010, 29
  %vs4015 = shl i64 %vz4011, 28
  %nzor4016 = or i64 %ns4012, %zs4013
  %cvor4017 = or i64 %cs4014, %vs4015
  %nzcv4018 = or i64 %nzor4016, %cvor4017
  %wp4019 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4018, ptr %wp4019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee78 word 0x9a9f3308
  %r4020.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4020 = load i64, ptr %r4020.p, align 8, !alias.scope !3, !noalias !4
  %r4021.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4021 = load i64, ptr %r4021.p, align 8, !alias.scope !3, !noalias !4
  %fsh4023 = lshr i64 %r4021, 29
  %ftr4024 = trunc i64 %fsh4023 to i1
  %cond4022 = xor i1 %ftr4024, true
  %sel4025 = select i1 %cond4022, i64 %r4020, i64 0
  %wp4026 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4025, ptr %wp4026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee7c word 0x9b0a2508
  %r4027.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4027 = load i64, ptr %r4027.p, align 8, !alias.scope !3, !noalias !4
  %r4028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4028 = load i64, ptr %r4028.p, align 8, !alias.scope !3, !noalias !4
  %t4029 = mul i64 %r4028, %r4027
  %r4030.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4030 = load i64, ptr %r4030.p, align 8, !alias.scope !3, !noalias !4
  %t4031 = add i64 %r4030, %t4029
  %wp4032 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4031, ptr %wp4032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee80 word 0xf9404d09
  %r4033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4033 = load i64, ptr %r4033.p, align 8, !alias.scope !3, !noalias !4
  %t4034 = add i64 %r4033, 152
  %gmp4035 = inttoptr i64 %t4034 to ptr
  %gml4036 = load i64, ptr %gmp4035, align 1, !alias.scope !4, !noalias !3
  %wp4037 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4036, ptr %wp4037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee84 word 0xb940a108
  %r4038.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4038 = load i64, ptr %r4038.p, align 8, !alias.scope !3, !noalias !4
  %t4039 = add i64 %r4038, 160
  %gmp4040 = inttoptr i64 %t4039 to ptr
  %gml4041 = load i32, ptr %gmp4040, align 1, !alias.scope !4, !noalias !3
  %c4042 = zext i32 %gml4041 to i64
  %wp4043 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4042, ptr %wp4043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee88 word 0xf9001fe9
  %r4044.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4044 = load i64, ptr %r4044.p, align 8, !alias.scope !3, !noalias !4
  %t4045 = add i64 %r4044, 56
  %r4046.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4046 = load i64, ptr %r4046.p, align 8, !alias.scope !3, !noalias !4
  %gmp4047 = inttoptr i64 %t4045 to ptr
  store i64 %r4046, ptr %gmp4047, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ee8c word 0xb90043e8
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %t4049 = add i64 %r4048, 64
  %r4050.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4050 = load i64, ptr %r4050.p, align 8, !alias.scope !3, !noalias !4
  %c4051 = trunc i64 %r4050 to i32
  %gmp4052 = inttoptr i64 %t4049 to ptr
  store i32 %c4051, ptr %gmp4052, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ee90 word 0x946a2900
  %wp4053 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486420, ptr %wp4053, align 8, !alias.scope !3, !noalias !4
  call void @f_801d29290(ptr %c)
  ; @pc 0x80029ee94 word 0x17fffe59
  br label %L_80029e7f8
L_80029ee98:
  ; @pc 0x80029ee98 word 0x5280190a
  %c4054 = zext i32 200 to i64
  %wp4055 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4054, ptr %wp4055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ee9c word 0x9100e3e2
  %r4056.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4056 = load i64, ptr %r4056.p, align 8, !alias.scope !3, !noalias !4
  %t4057 = add i64 %r4056, 56
  %wp4058 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4057, ptr %wp4058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eea0 word 0x9b0a2121
  %r4059.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4059 = load i64, ptr %r4059.p, align 8, !alias.scope !3, !noalias !4
  %r4060.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4060 = load i64, ptr %r4060.p, align 8, !alias.scope !3, !noalias !4
  %t4061 = mul i64 %r4060, %r4059
  %r4062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4062 = load i64, ptr %r4062.p, align 8, !alias.scope !3, !noalias !4
  %t4063 = add i64 %r4062, %t4061
  %wp4064 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4063, ptr %wp4064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eea4 word 0xaa1403e0
  %r4065.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4065 = load i64, ptr %r4065.p, align 8, !alias.scope !3, !noalias !4
  %t4066 = or i64 0, %r4065
  %wp4067 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4066, ptr %wp4067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eea8 word 0xf8408c28
  %r4068.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4068 = load i64, ptr %r4068.p, align 8, !alias.scope !3, !noalias !4
  %t4069 = add i64 %r4068, 8
  %gmp4070 = inttoptr i64 %t4069 to ptr
  %gml4071 = load i64, ptr %gmp4070, align 1, !alias.scope !4, !noalias !3
  %wp4072 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4069, ptr %wp4072, align 8, !alias.scope !3, !noalias !4
  %wp4073 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4071, ptr %wp4073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eeac word 0xb9800829
  %r4074.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4074 = load i64, ptr %r4074.p, align 8, !alias.scope !3, !noalias !4
  %t4075 = add i64 %r4074, 8
  %gmp4076 = inttoptr i64 %t4075 to ptr
  %gml4077 = load i32, ptr %gmp4076, align 1, !alias.scope !4, !noalias !3
  %c4078 = sext i32 %gml4077 to i64
  %wp4079 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4078, ptr %wp4079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eeb0 word 0x8b080128
  %r4080.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4080 = load i64, ptr %r4080.p, align 8, !alias.scope !3, !noalias !4
  %r4081.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4081 = load i64, ptr %r4081.p, align 8, !alias.scope !3, !noalias !4
  %t4082 = add i64 %r4080, %r4081
  %wp4083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4082, ptr %wp4083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eeb4 word 0x381ff11f
  %r4084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4084 = load i64, ptr %r4084.p, align 8, !alias.scope !3, !noalias !4
  %t4085 = add i64 %r4084, -1
  %c4086 = trunc i32 0 to i8
  %gmp4087 = inttoptr i64 %t4085 to ptr
  store i8 %c4086, ptr %gmp4087, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eeb8 word 0xb94002c8
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %gmp4089 = inttoptr i64 %r4088 to ptr
  %gml4090 = load i32, ptr %gmp4089, align 1, !alias.scope !4, !noalias !3
  %c4091 = zext i32 %gml4090 to i64
  %wp4092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4091, ptr %wp4092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eebc word 0xf94006c9
  %r4093.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4093 = load i64, ptr %r4093.p, align 8, !alias.scope !3, !noalias !4
  %t4094 = add i64 %r4093, 8
  %gmp4095 = inttoptr i64 %t4094 to ptr
  %gml4096 = load i64, ptr %gmp4095, align 1, !alias.scope !4, !noalias !3
  %wp4097 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4096, ptr %wp4097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eec0 word 0xeb08031f
  %r4098.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4098 = load i64, ptr %r4098.p, align 8, !alias.scope !3, !noalias !4
  %r4099.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4099 = load i64, ptr %r4099.p, align 8, !alias.scope !3, !noalias !4
  %t4100 = sub i64 %r4098, %r4099
  %fn4101 = icmp slt i64 %t4100, 0
  %fz4102 = icmp eq i64 %t4100, 0
  %fc4103 = icmp uge i64 %r4098, %r4099
  %fx14104 = xor i64 %r4098, %r4099
  %fx24105 = xor i64 %r4098, %t4100
  %fva4106 = and i64 %fx14104, %fx24105
  %fv4107 = icmp slt i64 %fva4106, 0
  %nz4108 = zext i1 %fn4101 to i64
  %zz4109 = zext i1 %fz4102 to i64
  %cz4110 = zext i1 %fc4103 to i64
  %vz4111 = zext i1 %fv4107 to i64
  %ns4112 = shl i64 %nz4108, 31
  %zs4113 = shl i64 %zz4109, 30
  %cs4114 = shl i64 %cz4110, 29
  %vs4115 = shl i64 %vz4111, 28
  %nzor4116 = or i64 %ns4112, %zs4113
  %cvor4117 = or i64 %cs4114, %vs4115
  %nzcv4118 = or i64 %nzor4116, %cvor4117
  %wp4119 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4118, ptr %wp4119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eec4 word 0x9a9f3308
  %r4120.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4120 = load i64, ptr %r4120.p, align 8, !alias.scope !3, !noalias !4
  %r4121.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4121 = load i64, ptr %r4121.p, align 8, !alias.scope !3, !noalias !4
  %fsh4123 = lshr i64 %r4121, 29
  %ftr4124 = trunc i64 %fsh4123 to i1
  %cond4122 = xor i1 %ftr4124, true
  %sel4125 = select i1 %cond4122, i64 %r4120, i64 0
  %wp4126 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4125, ptr %wp4126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eec8 word 0x9b0a2508
  %r4127.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4127 = load i64, ptr %r4127.p, align 8, !alias.scope !3, !noalias !4
  %r4128.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4128 = load i64, ptr %r4128.p, align 8, !alias.scope !3, !noalias !4
  %t4129 = mul i64 %r4128, %r4127
  %r4130.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4130 = load i64, ptr %r4130.p, align 8, !alias.scope !3, !noalias !4
  %t4131 = add i64 %r4130, %t4129
  %wp4132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4131, ptr %wp4132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eecc word 0x2d530500
  %r4133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4133 = load i64, ptr %r4133.p, align 8, !alias.scope !3, !noalias !4
  %t4134 = add i64 %r4133, 152
  %t4135 = add i64 %t4134, 4
  %gmp4136 = inttoptr i64 %t4134 to ptr
  %gml4137 = load i32, ptr %gmp4136, align 1, !alias.scope !4, !noalias !3
  %gmp4138 = inttoptr i64 %t4135 to ptr
  %gml4139 = load i32, ptr %gmp4138, align 1, !alias.scope !4, !noalias !3
  %c4140 = zext i32 %gml4137 to i128
  %wp4141 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4140, ptr %wp4141, align 16, !alias.scope !3, !noalias !4
  %c4142 = zext i32 %gml4139 to i128
  %wp4143 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c4142, ptr %wp4143, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029eed0 word 0x2d540d02
  %r4144.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4144 = load i64, ptr %r4144.p, align 8, !alias.scope !3, !noalias !4
  %t4145 = add i64 %r4144, 160
  %t4146 = add i64 %t4145, 4
  %gmp4147 = inttoptr i64 %t4145 to ptr
  %gml4148 = load i32, ptr %gmp4147, align 1, !alias.scope !4, !noalias !3
  %gmp4149 = inttoptr i64 %t4146 to ptr
  %gml4150 = load i32, ptr %gmp4149, align 1, !alias.scope !4, !noalias !3
  %c4151 = zext i32 %gml4148 to i128
  %wp4152 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c4151, ptr %wp4152, align 16, !alias.scope !3, !noalias !4
  %c4153 = zext i32 %gml4150 to i128
  %wp4154 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c4153, ptr %wp4154, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029eed4 word 0x2d0707e0
  %r4155.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4155 = load i64, ptr %r4155.p, align 8, !alias.scope !3, !noalias !4
  %t4156 = add i64 %r4155, 56
  %t4157 = add i64 %t4156, 4
  %r4158.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4158 = load i128, ptr %r4158.p, align 16, !alias.scope !3, !noalias !4
  %r4159.p = getelementptr inbounds i8, ptr %c, i64 528
  %r4159 = load i128, ptr %r4159.p, align 16, !alias.scope !3, !noalias !4
  %c4160 = trunc i128 %r4158 to i32
  %c4161 = trunc i128 %r4159 to i32
  %gmp4162 = inttoptr i64 %t4156 to ptr
  store i32 %c4160, ptr %gmp4162, align 1, !alias.scope !4, !noalias !3
  %gmp4163 = inttoptr i64 %t4157 to ptr
  store i32 %c4161, ptr %gmp4163, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eed8 word 0x2d080fe2
  %r4164.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4164 = load i64, ptr %r4164.p, align 8, !alias.scope !3, !noalias !4
  %t4165 = add i64 %r4164, 64
  %t4166 = add i64 %t4165, 4
  %r4167.p = getelementptr inbounds i8, ptr %c, i64 544
  %r4167 = load i128, ptr %r4167.p, align 16, !alias.scope !3, !noalias !4
  %r4168.p = getelementptr inbounds i8, ptr %c, i64 560
  %r4168 = load i128, ptr %r4168.p, align 16, !alias.scope !3, !noalias !4
  %c4169 = trunc i128 %r4167 to i32
  %c4170 = trunc i128 %r4168 to i32
  %gmp4171 = inttoptr i64 %t4165 to ptr
  store i32 %c4169, ptr %gmp4171, align 1, !alias.scope !4, !noalias !3
  %gmp4172 = inttoptr i64 %t4166 to ptr
  store i32 %c4170, ptr %gmp4172, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eedc word 0x946a290b
  %wp4173 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486496, ptr %wp4173, align 8, !alias.scope !3, !noalias !4
  call void @f_801d29308(ptr %c)
  ; @pc 0x80029eee0 word 0x17fffe46
  br label %L_80029e7f8
L_80029eee4:
  ; @pc 0x80029eee4 word 0x5280190a
  %c4174 = zext i32 200 to i64
  %wp4175 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4174, ptr %wp4175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eee8 word 0x52800482
  %c4176 = zext i32 36 to i64
  %wp4177 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4176, ptr %wp4177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eeec word 0x9b0a2135
  %r4178.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4178 = load i64, ptr %r4178.p, align 8, !alias.scope !3, !noalias !4
  %r4179.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4179 = load i64, ptr %r4179.p, align 8, !alias.scope !3, !noalias !4
  %t4180 = mul i64 %r4179, %r4178
  %r4181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4181 = load i64, ptr %r4181.p, align 8, !alias.scope !3, !noalias !4
  %t4182 = add i64 %r4181, %t4180
  %wp4183 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t4182, ptr %wp4183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eef0 word 0x9100e3e0
  %r4184.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4184 = load i64, ptr %r4184.p, align 8, !alias.scope !3, !noalias !4
  %t4185 = add i64 %r4184, 56
  %wp4186 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4185, ptr %wp4186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eef4 word 0xf8408ea8
  %r4187.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4187 = load i64, ptr %r4187.p, align 8, !alias.scope !3, !noalias !4
  %t4188 = add i64 %r4187, 8
  %gmp4189 = inttoptr i64 %t4188 to ptr
  %gml4190 = load i64, ptr %gmp4189, align 1, !alias.scope !4, !noalias !3
  %wp4191 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t4188, ptr %wp4191, align 8, !alias.scope !3, !noalias !4
  %wp4192 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4190, ptr %wp4192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eef8 word 0xb9800aa9
  %r4193.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4193 = load i64, ptr %r4193.p, align 8, !alias.scope !3, !noalias !4
  %t4194 = add i64 %r4193, 8
  %gmp4195 = inttoptr i64 %t4194 to ptr
  %gml4196 = load i32, ptr %gmp4195, align 1, !alias.scope !4, !noalias !3
  %c4197 = sext i32 %gml4196 to i64
  %wp4198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4197, ptr %wp4198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eefc word 0x8b080128
  %r4199.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4199 = load i64, ptr %r4199.p, align 8, !alias.scope !3, !noalias !4
  %r4200.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4200 = load i64, ptr %r4200.p, align 8, !alias.scope !3, !noalias !4
  %t4201 = add i64 %r4199, %r4200
  %wp4202 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4201, ptr %wp4202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef00 word 0x381ff11f
  %r4203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4203 = load i64, ptr %r4203.p, align 8, !alias.scope !3, !noalias !4
  %t4204 = add i64 %r4203, -1
  %c4205 = trunc i32 0 to i8
  %gmp4206 = inttoptr i64 %t4204 to ptr
  store i8 %c4205, ptr %gmp4206, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ef04 word 0xb94002c8
  %r4207.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4207 = load i64, ptr %r4207.p, align 8, !alias.scope !3, !noalias !4
  %gmp4208 = inttoptr i64 %r4207 to ptr
  %gml4209 = load i32, ptr %gmp4208, align 1, !alias.scope !4, !noalias !3
  %c4210 = zext i32 %gml4209 to i64
  %wp4211 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4210, ptr %wp4211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef08 word 0xf94006c9
  %r4212.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4212 = load i64, ptr %r4212.p, align 8, !alias.scope !3, !noalias !4
  %t4213 = add i64 %r4212, 8
  %gmp4214 = inttoptr i64 %t4213 to ptr
  %gml4215 = load i64, ptr %gmp4214, align 1, !alias.scope !4, !noalias !3
  %wp4216 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4215, ptr %wp4216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef0c word 0xeb08031f
  %r4217.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4217 = load i64, ptr %r4217.p, align 8, !alias.scope !3, !noalias !4
  %r4218.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4218 = load i64, ptr %r4218.p, align 8, !alias.scope !3, !noalias !4
  %t4219 = sub i64 %r4217, %r4218
  %fn4220 = icmp slt i64 %t4219, 0
  %fz4221 = icmp eq i64 %t4219, 0
  %fc4222 = icmp uge i64 %r4217, %r4218
  %fx14223 = xor i64 %r4217, %r4218
  %fx24224 = xor i64 %r4217, %t4219
  %fva4225 = and i64 %fx14223, %fx24224
  %fv4226 = icmp slt i64 %fva4225, 0
  %nz4227 = zext i1 %fn4220 to i64
  %zz4228 = zext i1 %fz4221 to i64
  %cz4229 = zext i1 %fc4222 to i64
  %vz4230 = zext i1 %fv4226 to i64
  %ns4231 = shl i64 %nz4227, 31
  %zs4232 = shl i64 %zz4228, 30
  %cs4233 = shl i64 %cz4229, 29
  %vs4234 = shl i64 %vz4230, 28
  %nzor4235 = or i64 %ns4231, %zs4232
  %cvor4236 = or i64 %cs4233, %vs4234
  %nzcv4237 = or i64 %nzor4235, %cvor4236
  %wp4238 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4237, ptr %wp4238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef10 word 0x9a9f3308
  %r4239.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4239 = load i64, ptr %r4239.p, align 8, !alias.scope !3, !noalias !4
  %r4240.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4240 = load i64, ptr %r4240.p, align 8, !alias.scope !3, !noalias !4
  %fsh4242 = lshr i64 %r4240, 29
  %ftr4243 = trunc i64 %fsh4242 to i1
  %cond4241 = xor i1 %ftr4243, true
  %sel4244 = select i1 %cond4241, i64 %r4239, i64 0
  %wp4245 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4244, ptr %wp4245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef14 word 0x9b0a2508
  %r4246.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4246 = load i64, ptr %r4246.p, align 8, !alias.scope !3, !noalias !4
  %r4247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4247 = load i64, ptr %r4247.p, align 8, !alias.scope !3, !noalias !4
  %t4248 = mul i64 %r4247, %r4246
  %r4249.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4249 = load i64, ptr %r4249.p, align 8, !alias.scope !3, !noalias !4
  %t4250 = add i64 %r4249, %t4248
  %wp4251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4250, ptr %wp4251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef18 word 0x91026101
  %r4252.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4252 = load i64, ptr %r4252.p, align 8, !alias.scope !3, !noalias !4
  %t4253 = add i64 %r4252, 152
  %wp4254 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4253, ptr %wp4254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef1c word 0x94a414ad
  %wp4255 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486560, ptr %wp4255, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba41d0(ptr %c)
  ; @pc 0x80029ef20 word 0x9100e3e2
  %r4256.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4256 = load i64, ptr %r4256.p, align 8, !alias.scope !3, !noalias !4
  %t4257 = add i64 %r4256, 56
  %wp4258 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4257, ptr %wp4258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef24 word 0xaa1403e0
  %r4259.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4259 = load i64, ptr %r4259.p, align 8, !alias.scope !3, !noalias !4
  %t4260 = or i64 0, %r4259
  %wp4261 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4260, ptr %wp4261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef28 word 0xaa1503e1
  %r4262.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4262 = load i64, ptr %r4262.p, align 8, !alias.scope !3, !noalias !4
  %t4263 = or i64 0, %r4262
  %wp4264 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4263, ptr %wp4264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef2c word 0x946a2912
  %wp4265 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486576, ptr %wp4265, align 8, !alias.scope !3, !noalias !4
  call void @f_801d29374(ptr %c)
  ; @pc 0x80029ef30 word 0x17fffe32
  br label %L_80029e7f8
L_80029ef34:
  ; @pc 0x80029ef34 word 0x5280190a
  %c4266 = zext i32 200 to i64
  %wp4267 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4266, ptr %wp4267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef38 word 0xaa1403e0
  %r4268.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4268 = load i64, ptr %r4268.p, align 8, !alias.scope !3, !noalias !4
  %t4269 = or i64 0, %r4268
  %wp4270 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4269, ptr %wp4270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef3c word 0x9b0a2121
  %r4271.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4271 = load i64, ptr %r4271.p, align 8, !alias.scope !3, !noalias !4
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %t4273 = mul i64 %r4272, %r4271
  %r4274.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4274 = load i64, ptr %r4274.p, align 8, !alias.scope !3, !noalias !4
  %t4275 = add i64 %r4274, %t4273
  %wp4276 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4275, ptr %wp4276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef40 word 0x52800022
  %c4277 = zext i32 1 to i64
  %wp4278 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4277, ptr %wp4278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef44 word 0x2a1f03e3
  %t4279 = or i32 0, 0
  %c4280 = zext i32 %t4279 to i64
  %wp4281 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c4280, ptr %wp4281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef48 word 0xf8408c28
  %r4282.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4282 = load i64, ptr %r4282.p, align 8, !alias.scope !3, !noalias !4
  %t4283 = add i64 %r4282, 8
  %gmp4284 = inttoptr i64 %t4283 to ptr
  %gml4285 = load i64, ptr %gmp4284, align 1, !alias.scope !4, !noalias !3
  %wp4286 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4283, ptr %wp4286, align 8, !alias.scope !3, !noalias !4
  %wp4287 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4285, ptr %wp4287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef4c word 0xb9800829
  %r4288.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4288 = load i64, ptr %r4288.p, align 8, !alias.scope !3, !noalias !4
  %t4289 = add i64 %r4288, 8
  %gmp4290 = inttoptr i64 %t4289 to ptr
  %gml4291 = load i32, ptr %gmp4290, align 1, !alias.scope !4, !noalias !3
  %c4292 = sext i32 %gml4291 to i64
  %wp4293 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4292, ptr %wp4293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef50 word 0x8b080128
  %r4294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4294 = load i64, ptr %r4294.p, align 8, !alias.scope !3, !noalias !4
  %r4295.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4295 = load i64, ptr %r4295.p, align 8, !alias.scope !3, !noalias !4
  %t4296 = add i64 %r4294, %r4295
  %wp4297 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4296, ptr %wp4297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef54 word 0x381ff11f
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %t4299 = add i64 %r4298, -1
  %c4300 = trunc i32 0 to i8
  %gmp4301 = inttoptr i64 %t4299 to ptr
  store i8 %c4300, ptr %gmp4301, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ef58 word 0xb94002c8
  %r4302.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4302 = load i64, ptr %r4302.p, align 8, !alias.scope !3, !noalias !4
  %gmp4303 = inttoptr i64 %r4302 to ptr
  %gml4304 = load i32, ptr %gmp4303, align 1, !alias.scope !4, !noalias !3
  %c4305 = zext i32 %gml4304 to i64
  %wp4306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4305, ptr %wp4306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef5c word 0xf94006c9
  %r4307.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4307 = load i64, ptr %r4307.p, align 8, !alias.scope !3, !noalias !4
  %t4308 = add i64 %r4307, 8
  %gmp4309 = inttoptr i64 %t4308 to ptr
  %gml4310 = load i64, ptr %gmp4309, align 1, !alias.scope !4, !noalias !3
  %wp4311 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4310, ptr %wp4311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef60 word 0xeb08031f
  %r4312.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4312 = load i64, ptr %r4312.p, align 8, !alias.scope !3, !noalias !4
  %r4313.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4313 = load i64, ptr %r4313.p, align 8, !alias.scope !3, !noalias !4
  %t4314 = sub i64 %r4312, %r4313
  %fn4315 = icmp slt i64 %t4314, 0
  %fz4316 = icmp eq i64 %t4314, 0
  %fc4317 = icmp uge i64 %r4312, %r4313
  %fx14318 = xor i64 %r4312, %r4313
  %fx24319 = xor i64 %r4312, %t4314
  %fva4320 = and i64 %fx14318, %fx24319
  %fv4321 = icmp slt i64 %fva4320, 0
  %nz4322 = zext i1 %fn4315 to i64
  %zz4323 = zext i1 %fz4316 to i64
  %cz4324 = zext i1 %fc4317 to i64
  %vz4325 = zext i1 %fv4321 to i64
  %ns4326 = shl i64 %nz4322, 31
  %zs4327 = shl i64 %zz4323, 30
  %cs4328 = shl i64 %cz4324, 29
  %vs4329 = shl i64 %vz4325, 28
  %nzor4330 = or i64 %ns4326, %zs4327
  %cvor4331 = or i64 %cs4328, %vs4329
  %nzcv4332 = or i64 %nzor4330, %cvor4331
  %wp4333 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4332, ptr %wp4333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef64 word 0x9a9f3308
  %r4334.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4334 = load i64, ptr %r4334.p, align 8, !alias.scope !3, !noalias !4
  %r4335.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4335 = load i64, ptr %r4335.p, align 8, !alias.scope !3, !noalias !4
  %fsh4337 = lshr i64 %r4335, 29
  %ftr4338 = trunc i64 %fsh4337 to i1
  %cond4336 = xor i1 %ftr4338, true
  %sel4339 = select i1 %cond4336, i64 %r4334, i64 0
  %wp4340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4339, ptr %wp4340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef68 word 0x9b0a2508
  %r4341.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4341 = load i64, ptr %r4341.p, align 8, !alias.scope !3, !noalias !4
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %t4343 = mul i64 %r4342, %r4341
  %r4344.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4344 = load i64, ptr %r4344.p, align 8, !alias.scope !3, !noalias !4
  %t4345 = add i64 %r4344, %t4343
  %wp4346 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4345, ptr %wp4346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef6c word 0x3cc98101
  %r4347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4347 = load i64, ptr %r4347.p, align 8, !alias.scope !3, !noalias !4
  %t4348 = add i64 %r4347, 152
  %gmp4349 = inttoptr i64 %t4348 to ptr
  %gml4350 = load i128, ptr %gmp4349, align 1, !alias.scope !4, !noalias !3
  %wp4351 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %gml4350, ptr %wp4351, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef70 word 0x3cca8100
  %r4352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4352 = load i64, ptr %r4352.p, align 8, !alias.scope !3, !noalias !4
  %t4353 = add i64 %r4352, 168
  %gmp4354 = inttoptr i64 %t4353 to ptr
  %gml4355 = load i128, ptr %gmp4354, align 1, !alias.scope !4, !noalias !3
  %wp4356 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml4355, ptr %wp4356, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef74 word 0xad0087e0
  %r4357.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4357 = load i64, ptr %r4357.p, align 8, !alias.scope !3, !noalias !4
  %t4358 = add i64 %r4357, 16
  %t4359 = add i64 %t4358, 16
  %r4360.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4360 = load i128, ptr %r4360.p, align 16, !alias.scope !3, !noalias !4
  %r4361.p = getelementptr inbounds i8, ptr %c, i64 528
  %r4361 = load i128, ptr %r4361.p, align 16, !alias.scope !3, !noalias !4
  %gmp4362 = inttoptr i64 %t4358 to ptr
  store i128 %r4360, ptr %gmp4362, align 1, !alias.scope !4, !noalias !3
  %gmp4363 = inttoptr i64 %t4359 to ptr
  store i128 %r4361, ptr %gmp4363, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ef78 word 0x3ccb8100
  %r4364.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4364 = load i64, ptr %r4364.p, align 8, !alias.scope !3, !noalias !4
  %t4365 = add i64 %r4364, 184
  %gmp4366 = inttoptr i64 %t4365 to ptr
  %gml4367 = load i128, ptr %gmp4366, align 1, !alias.scope !4, !noalias !3
  %wp4368 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml4367, ptr %wp4368, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef7c word 0x3d8003e0
  %r4369.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4369 = load i64, ptr %r4369.p, align 8, !alias.scope !3, !noalias !4
  %r4370.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4370 = load i128, ptr %r4370.p, align 16, !alias.scope !3, !noalias !4
  %gmp4371 = inttoptr i64 %r4369 to ptr
  store i128 %r4370, ptr %gmp4371, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ef80 word 0x946a2ce6
  %wp4372 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486660, ptr %wp4372, align 8, !alias.scope !3, !noalias !4
  call void @f_801d2a318(ptr %c)
  ; @pc 0x80029ef84 word 0x37ffc3a0
  %r4373.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4373 = load i64, ptr %r4373.p, align 8, !alias.scope !3, !noalias !4
  %t4374 = and i64 %r4373, 2147483648
  %cmp4375 = icmp ne i64 %t4374, 0
  br i1 %cmp4375, label %L_80029e7f8, label %L_80029ef88_ft
L_80029efd8:
  ; @pc 0x80029efd8 word 0x5280190a
  %c4527 = zext i32 200 to i64
  %wp4528 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4527, ptr %wp4528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efdc word 0x9100e3e2
  %r4529.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4529 = load i64, ptr %r4529.p, align 8, !alias.scope !3, !noalias !4
  %t4530 = add i64 %r4529, 56
  %wp4531 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4530, ptr %wp4531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efe0 word 0x9b0a2121
  %r4532.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4532 = load i64, ptr %r4532.p, align 8, !alias.scope !3, !noalias !4
  %r4533.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4533 = load i64, ptr %r4533.p, align 8, !alias.scope !3, !noalias !4
  %t4534 = mul i64 %r4533, %r4532
  %r4535.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4535 = load i64, ptr %r4535.p, align 8, !alias.scope !3, !noalias !4
  %t4536 = add i64 %r4535, %t4534
  %wp4537 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4536, ptr %wp4537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efe4 word 0xaa1403e0
  %r4538.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4538 = load i64, ptr %r4538.p, align 8, !alias.scope !3, !noalias !4
  %t4539 = or i64 0, %r4538
  %wp4540 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4539, ptr %wp4540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efe8 word 0xf8408c28
  %r4541.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4541 = load i64, ptr %r4541.p, align 8, !alias.scope !3, !noalias !4
  %t4542 = add i64 %r4541, 8
  %gmp4543 = inttoptr i64 %t4542 to ptr
  %gml4544 = load i64, ptr %gmp4543, align 1, !alias.scope !4, !noalias !3
  %wp4545 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4542, ptr %wp4545, align 8, !alias.scope !3, !noalias !4
  %wp4546 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4544, ptr %wp4546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efec word 0xb9800829
  %r4547.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4547 = load i64, ptr %r4547.p, align 8, !alias.scope !3, !noalias !4
  %t4548 = add i64 %r4547, 8
  %gmp4549 = inttoptr i64 %t4548 to ptr
  %gml4550 = load i32, ptr %gmp4549, align 1, !alias.scope !4, !noalias !3
  %c4551 = sext i32 %gml4550 to i64
  %wp4552 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4551, ptr %wp4552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eff0 word 0x8b080128
  %r4553.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4553 = load i64, ptr %r4553.p, align 8, !alias.scope !3, !noalias !4
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %t4555 = add i64 %r4553, %r4554
  %wp4556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4555, ptr %wp4556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eff4 word 0x381ff11f
  %r4557.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4557 = load i64, ptr %r4557.p, align 8, !alias.scope !3, !noalias !4
  %t4558 = add i64 %r4557, -1
  %c4559 = trunc i32 0 to i8
  %gmp4560 = inttoptr i64 %t4558 to ptr
  store i8 %c4559, ptr %gmp4560, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029eff8 word 0xb94002c8
  %r4561.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4561 = load i64, ptr %r4561.p, align 8, !alias.scope !3, !noalias !4
  %gmp4562 = inttoptr i64 %r4561 to ptr
  %gml4563 = load i32, ptr %gmp4562, align 1, !alias.scope !4, !noalias !3
  %c4564 = zext i32 %gml4563 to i64
  %wp4565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4564, ptr %wp4565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029effc word 0xf94006c9
  %r4566.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4566 = load i64, ptr %r4566.p, align 8, !alias.scope !3, !noalias !4
  %t4567 = add i64 %r4566, 8
  %gmp4568 = inttoptr i64 %t4567 to ptr
  %gml4569 = load i64, ptr %gmp4568, align 1, !alias.scope !4, !noalias !3
  %wp4570 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4569, ptr %wp4570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f000 word 0xeb08031f
  %r4571.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4571 = load i64, ptr %r4571.p, align 8, !alias.scope !3, !noalias !4
  %r4572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4572 = load i64, ptr %r4572.p, align 8, !alias.scope !3, !noalias !4
  %t4573 = sub i64 %r4571, %r4572
  %fn4574 = icmp slt i64 %t4573, 0
  %fz4575 = icmp eq i64 %t4573, 0
  %fc4576 = icmp uge i64 %r4571, %r4572
  %fx14577 = xor i64 %r4571, %r4572
  %fx24578 = xor i64 %r4571, %t4573
  %fva4579 = and i64 %fx14577, %fx24578
  %fv4580 = icmp slt i64 %fva4579, 0
  %nz4581 = zext i1 %fn4574 to i64
  %zz4582 = zext i1 %fz4575 to i64
  %cz4583 = zext i1 %fc4576 to i64
  %vz4584 = zext i1 %fv4580 to i64
  %ns4585 = shl i64 %nz4581, 31
  %zs4586 = shl i64 %zz4582, 30
  %cs4587 = shl i64 %cz4583, 29
  %vs4588 = shl i64 %vz4584, 28
  %nzor4589 = or i64 %ns4585, %zs4586
  %cvor4590 = or i64 %cs4587, %vs4588
  %nzcv4591 = or i64 %nzor4589, %cvor4590
  %wp4592 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4591, ptr %wp4592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f004 word 0x9a9f3308
  %r4593.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4593 = load i64, ptr %r4593.p, align 8, !alias.scope !3, !noalias !4
  %r4594.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4594 = load i64, ptr %r4594.p, align 8, !alias.scope !3, !noalias !4
  %fsh4596 = lshr i64 %r4594, 29
  %ftr4597 = trunc i64 %fsh4596 to i1
  %cond4595 = xor i1 %ftr4597, true
  %sel4598 = select i1 %cond4595, i64 %r4593, i64 0
  %wp4599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4598, ptr %wp4599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f008 word 0x9b0a2508
  %r4600.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4600 = load i64, ptr %r4600.p, align 8, !alias.scope !3, !noalias !4
  %r4601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4601 = load i64, ptr %r4601.p, align 8, !alias.scope !3, !noalias !4
  %t4602 = mul i64 %r4601, %r4600
  %r4603.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4603 = load i64, ptr %r4603.p, align 8, !alias.scope !3, !noalias !4
  %t4604 = add i64 %r4603, %t4602
  %wp4605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4604, ptr %wp4605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f00c word 0x2d530500
  %r4606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4606 = load i64, ptr %r4606.p, align 8, !alias.scope !3, !noalias !4
  %t4607 = add i64 %r4606, 152
  %t4608 = add i64 %t4607, 4
  %gmp4609 = inttoptr i64 %t4607 to ptr
  %gml4610 = load i32, ptr %gmp4609, align 1, !alias.scope !4, !noalias !3
  %gmp4611 = inttoptr i64 %t4608 to ptr
  %gml4612 = load i32, ptr %gmp4611, align 1, !alias.scope !4, !noalias !3
  %c4613 = zext i32 %gml4610 to i128
  %wp4614 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4613, ptr %wp4614, align 16, !alias.scope !3, !noalias !4
  %c4615 = zext i32 %gml4612 to i128
  %wp4616 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c4615, ptr %wp4616, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029f010 word 0x2d540d02
  %r4617.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4617 = load i64, ptr %r4617.p, align 8, !alias.scope !3, !noalias !4
  %t4618 = add i64 %r4617, 160
  %t4619 = add i64 %t4618, 4
  %gmp4620 = inttoptr i64 %t4618 to ptr
  %gml4621 = load i32, ptr %gmp4620, align 1, !alias.scope !4, !noalias !3
  %gmp4622 = inttoptr i64 %t4619 to ptr
  %gml4623 = load i32, ptr %gmp4622, align 1, !alias.scope !4, !noalias !3
  %c4624 = zext i32 %gml4621 to i128
  %wp4625 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c4624, ptr %wp4625, align 16, !alias.scope !3, !noalias !4
  %c4626 = zext i32 %gml4623 to i128
  %wp4627 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c4626, ptr %wp4627, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029f014 word 0x2d0707e0
  %r4628.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4628 = load i64, ptr %r4628.p, align 8, !alias.scope !3, !noalias !4
  %t4629 = add i64 %r4628, 56
  %t4630 = add i64 %t4629, 4
  %r4631.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4631 = load i128, ptr %r4631.p, align 16, !alias.scope !3, !noalias !4
  %r4632.p = getelementptr inbounds i8, ptr %c, i64 528
  %r4632 = load i128, ptr %r4632.p, align 16, !alias.scope !3, !noalias !4
  %c4633 = trunc i128 %r4631 to i32
  %c4634 = trunc i128 %r4632 to i32
  %gmp4635 = inttoptr i64 %t4629 to ptr
  store i32 %c4633, ptr %gmp4635, align 1, !alias.scope !4, !noalias !3
  %gmp4636 = inttoptr i64 %t4630 to ptr
  store i32 %c4634, ptr %gmp4636, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f018 word 0x2d080fe2
  %r4637.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4637 = load i64, ptr %r4637.p, align 8, !alias.scope !3, !noalias !4
  %t4638 = add i64 %r4637, 64
  %t4639 = add i64 %t4638, 4
  %r4640.p = getelementptr inbounds i8, ptr %c, i64 544
  %r4640 = load i128, ptr %r4640.p, align 16, !alias.scope !3, !noalias !4
  %r4641.p = getelementptr inbounds i8, ptr %c, i64 560
  %r4641 = load i128, ptr %r4641.p, align 16, !alias.scope !3, !noalias !4
  %c4642 = trunc i128 %r4640 to i32
  %c4643 = trunc i128 %r4641 to i32
  %gmp4644 = inttoptr i64 %t4638 to ptr
  store i32 %c4642, ptr %gmp4644, align 1, !alias.scope !4, !noalias !3
  %gmp4645 = inttoptr i64 %t4639 to ptr
  store i32 %c4643, ptr %gmp4645, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f01c word 0x946a28eb
  %wp4646 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486816, ptr %wp4646, align 8, !alias.scope !3, !noalias !4
  call void @f_801d293c8(ptr %c)
  ; @pc 0x80029f020 word 0x17fffdf6
  br label %L_80029e7f8
L_80029f024:
  ; @pc 0x80029f024 word 0x5280190a
  %c4647 = zext i32 200 to i64
  %wp4648 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4647, ptr %wp4648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f028 word 0xaa1403e0
  %r4649.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4649 = load i64, ptr %r4649.p, align 8, !alias.scope !3, !noalias !4
  %t4650 = or i64 0, %r4649
  %wp4651 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4650, ptr %wp4651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f02c word 0x9b0a2121
  %r4652.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4652 = load i64, ptr %r4652.p, align 8, !alias.scope !3, !noalias !4
  %r4653.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4653 = load i64, ptr %r4653.p, align 8, !alias.scope !3, !noalias !4
  %t4654 = mul i64 %r4653, %r4652
  %r4655.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4655 = load i64, ptr %r4655.p, align 8, !alias.scope !3, !noalias !4
  %t4656 = add i64 %r4655, %t4654
  %wp4657 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4656, ptr %wp4657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f030 word 0x52800022
  %c4658 = zext i32 1 to i64
  %wp4659 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4658, ptr %wp4659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f034 word 0x2a1f03e3
  %t4660 = or i32 0, 0
  %c4661 = zext i32 %t4660 to i64
  %wp4662 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c4661, ptr %wp4662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f038 word 0xf8408c28
  %r4663.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4663 = load i64, ptr %r4663.p, align 8, !alias.scope !3, !noalias !4
  %t4664 = add i64 %r4663, 8
  %gmp4665 = inttoptr i64 %t4664 to ptr
  %gml4666 = load i64, ptr %gmp4665, align 1, !alias.scope !4, !noalias !3
  %wp4667 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4664, ptr %wp4667, align 8, !alias.scope !3, !noalias !4
  %wp4668 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4666, ptr %wp4668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f03c word 0xb9800829
  %r4669.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4669 = load i64, ptr %r4669.p, align 8, !alias.scope !3, !noalias !4
  %t4670 = add i64 %r4669, 8
  %gmp4671 = inttoptr i64 %t4670 to ptr
  %gml4672 = load i32, ptr %gmp4671, align 1, !alias.scope !4, !noalias !3
  %c4673 = sext i32 %gml4672 to i64
  %wp4674 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4673, ptr %wp4674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f040 word 0x8b080128
  %r4675.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4675 = load i64, ptr %r4675.p, align 8, !alias.scope !3, !noalias !4
  %r4676.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4676 = load i64, ptr %r4676.p, align 8, !alias.scope !3, !noalias !4
  %t4677 = add i64 %r4675, %r4676
  %wp4678 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4677, ptr %wp4678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f044 word 0x381ff11f
  %r4679.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4679 = load i64, ptr %r4679.p, align 8, !alias.scope !3, !noalias !4
  %t4680 = add i64 %r4679, -1
  %c4681 = trunc i32 0 to i8
  %gmp4682 = inttoptr i64 %t4680 to ptr
  store i8 %c4681, ptr %gmp4682, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f048 word 0xb94002c8
  %r4683.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4683 = load i64, ptr %r4683.p, align 8, !alias.scope !3, !noalias !4
  %gmp4684 = inttoptr i64 %r4683 to ptr
  %gml4685 = load i32, ptr %gmp4684, align 1, !alias.scope !4, !noalias !3
  %c4686 = zext i32 %gml4685 to i64
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f04c word 0xf94006c9
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %t4689 = add i64 %r4688, 8
  %gmp4690 = inttoptr i64 %t4689 to ptr
  %gml4691 = load i64, ptr %gmp4690, align 1, !alias.scope !4, !noalias !3
  %wp4692 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4691, ptr %wp4692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f050 word 0xeb08031f
  %r4693.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4693 = load i64, ptr %r4693.p, align 8, !alias.scope !3, !noalias !4
  %r4694.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4694 = load i64, ptr %r4694.p, align 8, !alias.scope !3, !noalias !4
  %t4695 = sub i64 %r4693, %r4694
  %fn4696 = icmp slt i64 %t4695, 0
  %fz4697 = icmp eq i64 %t4695, 0
  %fc4698 = icmp uge i64 %r4693, %r4694
  %fx14699 = xor i64 %r4693, %r4694
  %fx24700 = xor i64 %r4693, %t4695
  %fva4701 = and i64 %fx14699, %fx24700
  %fv4702 = icmp slt i64 %fva4701, 0
  %nz4703 = zext i1 %fn4696 to i64
  %zz4704 = zext i1 %fz4697 to i64
  %cz4705 = zext i1 %fc4698 to i64
  %vz4706 = zext i1 %fv4702 to i64
  %ns4707 = shl i64 %nz4703, 31
  %zs4708 = shl i64 %zz4704, 30
  %cs4709 = shl i64 %cz4705, 29
  %vs4710 = shl i64 %vz4706, 28
  %nzor4711 = or i64 %ns4707, %zs4708
  %cvor4712 = or i64 %cs4709, %vs4710
  %nzcv4713 = or i64 %nzor4711, %cvor4712
  %wp4714 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4713, ptr %wp4714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f054 word 0x9a9f3308
  %r4715.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4715 = load i64, ptr %r4715.p, align 8, !alias.scope !3, !noalias !4
  %r4716.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4716 = load i64, ptr %r4716.p, align 8, !alias.scope !3, !noalias !4
  %fsh4718 = lshr i64 %r4716, 29
  %ftr4719 = trunc i64 %fsh4718 to i1
  %cond4717 = xor i1 %ftr4719, true
  %sel4720 = select i1 %cond4717, i64 %r4715, i64 0
  %wp4721 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4720, ptr %wp4721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f058 word 0x9b0a2508
  %r4722.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4722 = load i64, ptr %r4722.p, align 8, !alias.scope !3, !noalias !4
  %r4723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4723 = load i64, ptr %r4723.p, align 8, !alias.scope !3, !noalias !4
  %t4724 = mul i64 %r4723, %r4722
  %r4725.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4725 = load i64, ptr %r4725.p, align 8, !alias.scope !3, !noalias !4
  %t4726 = add i64 %r4725, %t4724
  %wp4727 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4726, ptr %wp4727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f05c word 0xf9404d08
  %r4728.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4728 = load i64, ptr %r4728.p, align 8, !alias.scope !3, !noalias !4
  %t4729 = add i64 %r4728, 152
  %gmp4730 = inttoptr i64 %t4729 to ptr
  %gml4731 = load i64, ptr %gmp4730, align 1, !alias.scope !4, !noalias !3
  %wp4732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4731, ptr %wp4732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f060 word 0xf9001fe8
  %r4733.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4733 = load i64, ptr %r4733.p, align 8, !alias.scope !3, !noalias !4
  %t4734 = add i64 %r4733, 56
  %r4735.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4735 = load i64, ptr %r4735.p, align 8, !alias.scope !3, !noalias !4
  %gmp4736 = inttoptr i64 %t4734 to ptr
  store i64 %r4735, ptr %gmp4736, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f064 word 0x946a2d3c
  %wp4737 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486888, ptr %wp4737, align 8, !alias.scope !3, !noalias !4
  call void @f_801d2a554(ptr %c)
  ; @pc 0x80029f068 word 0x37ffbc80
  %r4738.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4738 = load i64, ptr %r4738.p, align 8, !alias.scope !3, !noalias !4
  %t4739 = and i64 %r4738, 2147483648
  %cmp4740 = icmp ne i64 %t4739, 0
  br i1 %cmp4740, label %L_80029e7f8, label %L_80029f06c_ft
L_80029f080:
  ; @pc 0x80029f080 word 0x5280190a
  %c4753 = zext i32 200 to i64
  %wp4754 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4753, ptr %wp4754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f084 word 0x9100e3e2
  %r4755.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4755 = load i64, ptr %r4755.p, align 8, !alias.scope !3, !noalias !4
  %t4756 = add i64 %r4755, 56
  %wp4757 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4756, ptr %wp4757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f088 word 0x9b0a2121
  %r4758.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4758 = load i64, ptr %r4758.p, align 8, !alias.scope !3, !noalias !4
  %r4759.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4759 = load i64, ptr %r4759.p, align 8, !alias.scope !3, !noalias !4
  %t4760 = mul i64 %r4759, %r4758
  %r4761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4761 = load i64, ptr %r4761.p, align 8, !alias.scope !3, !noalias !4
  %t4762 = add i64 %r4761, %t4760
  %wp4763 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4762, ptr %wp4763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f08c word 0xaa1403e0
  %r4764.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4764 = load i64, ptr %r4764.p, align 8, !alias.scope !3, !noalias !4
  %t4765 = or i64 0, %r4764
  %wp4766 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4765, ptr %wp4766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f090 word 0xf8408c28
  %r4767.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4767 = load i64, ptr %r4767.p, align 8, !alias.scope !3, !noalias !4
  %t4768 = add i64 %r4767, 8
  %gmp4769 = inttoptr i64 %t4768 to ptr
  %gml4770 = load i64, ptr %gmp4769, align 1, !alias.scope !4, !noalias !3
  %wp4771 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4768, ptr %wp4771, align 8, !alias.scope !3, !noalias !4
  %wp4772 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4770, ptr %wp4772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f094 word 0xb9800829
  %r4773.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4773 = load i64, ptr %r4773.p, align 8, !alias.scope !3, !noalias !4
  %t4774 = add i64 %r4773, 8
  %gmp4775 = inttoptr i64 %t4774 to ptr
  %gml4776 = load i32, ptr %gmp4775, align 1, !alias.scope !4, !noalias !3
  %c4777 = sext i32 %gml4776 to i64
  %wp4778 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4777, ptr %wp4778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f098 word 0x8b080128
  %r4779.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4779 = load i64, ptr %r4779.p, align 8, !alias.scope !3, !noalias !4
  %r4780.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4780 = load i64, ptr %r4780.p, align 8, !alias.scope !3, !noalias !4
  %t4781 = add i64 %r4779, %r4780
  %wp4782 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4781, ptr %wp4782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f09c word 0x381ff11f
  %r4783.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4783 = load i64, ptr %r4783.p, align 8, !alias.scope !3, !noalias !4
  %t4784 = add i64 %r4783, -1
  %c4785 = trunc i32 0 to i8
  %gmp4786 = inttoptr i64 %t4784 to ptr
  store i8 %c4785, ptr %gmp4786, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f0a0 word 0xb94002c8
  %r4787.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4787 = load i64, ptr %r4787.p, align 8, !alias.scope !3, !noalias !4
  %gmp4788 = inttoptr i64 %r4787 to ptr
  %gml4789 = load i32, ptr %gmp4788, align 1, !alias.scope !4, !noalias !3
  %c4790 = zext i32 %gml4789 to i64
  %wp4791 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4790, ptr %wp4791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0a4 word 0xf94006c9
  %r4792.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4792 = load i64, ptr %r4792.p, align 8, !alias.scope !3, !noalias !4
  %t4793 = add i64 %r4792, 8
  %gmp4794 = inttoptr i64 %t4793 to ptr
  %gml4795 = load i64, ptr %gmp4794, align 1, !alias.scope !4, !noalias !3
  %wp4796 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4795, ptr %wp4796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0a8 word 0xeb08031f
  %r4797.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4797 = load i64, ptr %r4797.p, align 8, !alias.scope !3, !noalias !4
  %r4798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4798 = load i64, ptr %r4798.p, align 8, !alias.scope !3, !noalias !4
  %t4799 = sub i64 %r4797, %r4798
  %fn4800 = icmp slt i64 %t4799, 0
  %fz4801 = icmp eq i64 %t4799, 0
  %fc4802 = icmp uge i64 %r4797, %r4798
  %fx14803 = xor i64 %r4797, %r4798
  %fx24804 = xor i64 %r4797, %t4799
  %fva4805 = and i64 %fx14803, %fx24804
  %fv4806 = icmp slt i64 %fva4805, 0
  %nz4807 = zext i1 %fn4800 to i64
  %zz4808 = zext i1 %fz4801 to i64
  %cz4809 = zext i1 %fc4802 to i64
  %vz4810 = zext i1 %fv4806 to i64
  %ns4811 = shl i64 %nz4807, 31
  %zs4812 = shl i64 %zz4808, 30
  %cs4813 = shl i64 %cz4809, 29
  %vs4814 = shl i64 %vz4810, 28
  %nzor4815 = or i64 %ns4811, %zs4812
  %cvor4816 = or i64 %cs4813, %vs4814
  %nzcv4817 = or i64 %nzor4815, %cvor4816
  %wp4818 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4817, ptr %wp4818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0ac word 0x9a9f3308
  %r4819.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4819 = load i64, ptr %r4819.p, align 8, !alias.scope !3, !noalias !4
  %r4820.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4820 = load i64, ptr %r4820.p, align 8, !alias.scope !3, !noalias !4
  %fsh4822 = lshr i64 %r4820, 29
  %ftr4823 = trunc i64 %fsh4822 to i1
  %cond4821 = xor i1 %ftr4823, true
  %sel4824 = select i1 %cond4821, i64 %r4819, i64 0
  %wp4825 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4824, ptr %wp4825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0b0 word 0x9b0a2508
  %r4826.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4826 = load i64, ptr %r4826.p, align 8, !alias.scope !3, !noalias !4
  %r4827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4827 = load i64, ptr %r4827.p, align 8, !alias.scope !3, !noalias !4
  %t4828 = mul i64 %r4827, %r4826
  %r4829.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4829 = load i64, ptr %r4829.p, align 8, !alias.scope !3, !noalias !4
  %t4830 = add i64 %r4829, %t4828
  %wp4831 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4830, ptr %wp4831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0b4 word 0xbd409900
  %r4832.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4832 = load i64, ptr %r4832.p, align 8, !alias.scope !3, !noalias !4
  %t4833 = add i64 %r4832, 152
  %gmp4834 = inttoptr i64 %t4833 to ptr
  %gml4835 = load i32, ptr %gmp4834, align 1, !alias.scope !4, !noalias !3
  %c4836 = zext i32 %gml4835 to i128
  %wp4837 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4836, ptr %wp4837, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0b8 word 0xbd003be0
  %r4838.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4838 = load i64, ptr %r4838.p, align 8, !alias.scope !3, !noalias !4
  %t4839 = add i64 %r4838, 56
  %r4840.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4840 = load i128, ptr %r4840.p, align 16, !alias.scope !3, !noalias !4
  %c4841 = trunc i128 %r4840 to i32
  %gmp4842 = inttoptr i64 %t4839 to ptr
  store i32 %c4841, ptr %gmp4842, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f0bc word 0x946a2725
  %wp4843 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486976, ptr %wp4843, align 8, !alias.scope !3, !noalias !4
  call void @f_801d28d50(ptr %c)
  ; @pc 0x80029f0c0 word 0x17fffdce
  br label %L_80029e7f8
L_80029f0c4:
  ; @pc 0x80029f0c4 word 0xaa1f03e8
  %t4844 = or i64 0, 0
  %wp4845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4844, ptr %wp4845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0c8 word 0x17fffe7b
  br label %L_80029eab4
L_80029f0cc:
  ; @pc 0x80029f0cc word 0x5280190a
  %c4846 = zext i32 200 to i64
  %wp4847 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4846, ptr %wp4847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0d0 word 0x9100e3e2
  %r4848.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4848 = load i64, ptr %r4848.p, align 8, !alias.scope !3, !noalias !4
  %t4849 = add i64 %r4848, 56
  %wp4850 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4849, ptr %wp4850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0d4 word 0x9b0a2121
  %r4851.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4851 = load i64, ptr %r4851.p, align 8, !alias.scope !3, !noalias !4
  %r4852.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4852 = load i64, ptr %r4852.p, align 8, !alias.scope !3, !noalias !4
  %t4853 = mul i64 %r4852, %r4851
  %r4854.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4854 = load i64, ptr %r4854.p, align 8, !alias.scope !3, !noalias !4
  %t4855 = add i64 %r4854, %t4853
  %wp4856 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4855, ptr %wp4856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0d8 word 0xaa1403e0
  %r4857.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4857 = load i64, ptr %r4857.p, align 8, !alias.scope !3, !noalias !4
  %t4858 = or i64 0, %r4857
  %wp4859 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4858, ptr %wp4859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0dc word 0xf8408c28
  %r4860.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4860 = load i64, ptr %r4860.p, align 8, !alias.scope !3, !noalias !4
  %t4861 = add i64 %r4860, 8
  %gmp4862 = inttoptr i64 %t4861 to ptr
  %gml4863 = load i64, ptr %gmp4862, align 1, !alias.scope !4, !noalias !3
  %wp4864 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4861, ptr %wp4864, align 8, !alias.scope !3, !noalias !4
  %wp4865 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4863, ptr %wp4865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0e0 word 0xb9800829
  %r4866.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4866 = load i64, ptr %r4866.p, align 8, !alias.scope !3, !noalias !4
  %t4867 = add i64 %r4866, 8
  %gmp4868 = inttoptr i64 %t4867 to ptr
  %gml4869 = load i32, ptr %gmp4868, align 1, !alias.scope !4, !noalias !3
  %c4870 = sext i32 %gml4869 to i64
  %wp4871 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4870, ptr %wp4871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0e4 word 0x8b080128
  %r4872.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4872 = load i64, ptr %r4872.p, align 8, !alias.scope !3, !noalias !4
  %r4873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4873 = load i64, ptr %r4873.p, align 8, !alias.scope !3, !noalias !4
  %t4874 = add i64 %r4872, %r4873
  %wp4875 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4874, ptr %wp4875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0e8 word 0x381ff11f
  %r4876.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4876 = load i64, ptr %r4876.p, align 8, !alias.scope !3, !noalias !4
  %t4877 = add i64 %r4876, -1
  %c4878 = trunc i32 0 to i8
  %gmp4879 = inttoptr i64 %t4877 to ptr
  store i8 %c4878, ptr %gmp4879, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f0ec word 0xb94002c8
  %r4880.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4880 = load i64, ptr %r4880.p, align 8, !alias.scope !3, !noalias !4
  %gmp4881 = inttoptr i64 %r4880 to ptr
  %gml4882 = load i32, ptr %gmp4881, align 1, !alias.scope !4, !noalias !3
  %c4883 = zext i32 %gml4882 to i64
  %wp4884 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4883, ptr %wp4884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0f0 word 0xf94006c9
  %r4885.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4885 = load i64, ptr %r4885.p, align 8, !alias.scope !3, !noalias !4
  %t4886 = add i64 %r4885, 8
  %gmp4887 = inttoptr i64 %t4886 to ptr
  %gml4888 = load i64, ptr %gmp4887, align 1, !alias.scope !4, !noalias !3
  %wp4889 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4888, ptr %wp4889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0f4 word 0xeb08031f
  %r4890.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4890 = load i64, ptr %r4890.p, align 8, !alias.scope !3, !noalias !4
  %r4891.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4891 = load i64, ptr %r4891.p, align 8, !alias.scope !3, !noalias !4
  %t4892 = sub i64 %r4890, %r4891
  %fn4893 = icmp slt i64 %t4892, 0
  %fz4894 = icmp eq i64 %t4892, 0
  %fc4895 = icmp uge i64 %r4890, %r4891
  %fx14896 = xor i64 %r4890, %r4891
  %fx24897 = xor i64 %r4890, %t4892
  %fva4898 = and i64 %fx14896, %fx24897
  %fv4899 = icmp slt i64 %fva4898, 0
  %nz4900 = zext i1 %fn4893 to i64
  %zz4901 = zext i1 %fz4894 to i64
  %cz4902 = zext i1 %fc4895 to i64
  %vz4903 = zext i1 %fv4899 to i64
  %ns4904 = shl i64 %nz4900, 31
  %zs4905 = shl i64 %zz4901, 30
  %cs4906 = shl i64 %cz4902, 29
  %vs4907 = shl i64 %vz4903, 28
  %nzor4908 = or i64 %ns4904, %zs4905
  %cvor4909 = or i64 %cs4906, %vs4907
  %nzcv4910 = or i64 %nzor4908, %cvor4909
  %wp4911 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4910, ptr %wp4911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0f8 word 0x9a9f3308
  %r4912.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4912 = load i64, ptr %r4912.p, align 8, !alias.scope !3, !noalias !4
  %r4913.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4913 = load i64, ptr %r4913.p, align 8, !alias.scope !3, !noalias !4
  %fsh4915 = lshr i64 %r4913, 29
  %ftr4916 = trunc i64 %fsh4915 to i1
  %cond4914 = xor i1 %ftr4916, true
  %sel4917 = select i1 %cond4914, i64 %r4912, i64 0
  %wp4918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4917, ptr %wp4918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f0fc word 0x9b0a2508
  %r4919.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4919 = load i64, ptr %r4919.p, align 8, !alias.scope !3, !noalias !4
  %r4920.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4920 = load i64, ptr %r4920.p, align 8, !alias.scope !3, !noalias !4
  %t4921 = mul i64 %r4920, %r4919
  %r4922.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4922 = load i64, ptr %r4922.p, align 8, !alias.scope !3, !noalias !4
  %t4923 = add i64 %r4922, %t4921
  %wp4924 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4923, ptr %wp4924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f100 word 0x79413108
  %r4925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4925 = load i64, ptr %r4925.p, align 8, !alias.scope !3, !noalias !4
  %t4926 = add i64 %r4925, 152
  %gmp4927 = inttoptr i64 %t4926 to ptr
  %gml4928 = load i16, ptr %gmp4927, align 1, !alias.scope !4, !noalias !3
  %c4929 = zext i16 %gml4928 to i64
  %wp4930 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4929, ptr %wp4930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f104 word 0x790073e8
  %r4931.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4931 = load i64, ptr %r4931.p, align 8, !alias.scope !3, !noalias !4
  %t4932 = add i64 %r4931, 56
  %r4933.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4933 = load i64, ptr %r4933.p, align 8, !alias.scope !3, !noalias !4
  %c4934 = trunc i64 %r4933 to i32
  %c4935 = trunc i32 %c4934 to i16
  %gmp4936 = inttoptr i64 %t4932 to ptr
  store i16 %c4935, ptr %gmp4936, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f108 word 0x946a27e6
  %wp4937 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487052, ptr %wp4937, align 8, !alias.scope !3, !noalias !4
  call void @f_801d290a0(ptr %c)
  ; @pc 0x80029f10c word 0x17fffdbb
  br label %L_80029e7f8
L_80029f110:
  ; @pc 0x80029f110 word 0x9001b6c0
  %wp4938 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419994624, ptr %wp4938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f114 word 0xf9450800
  %r4939.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4939 = load i64, ptr %r4939.p, align 8, !alias.scope !3, !noalias !4
  %t4940 = add i64 %r4939, 2576
  %gmp4941 = inttoptr i64 %t4940 to ptr
  %gml4942 = load i64, ptr %gmp4941, align 1, !alias.scope !4, !noalias !3
  %wp4943 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4942, ptr %wp4943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f118 word 0x94a41222
  %wp4944 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487068, ptr %wp4944, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80029f11c word 0x34ffcae0
  %r4945.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4945 = load i64, ptr %r4945.p, align 8, !alias.scope !3, !noalias !4
  %c4946 = trunc i64 %r4945 to i32
  %cmp4947 = icmp eq i32 %c4946, 0
  br i1 %cmp4947, label %L_80029ea78, label %L_80029f120_ft
L_80029f148:
  ; @pc 0x80029f148 word 0x2a1f03ea
  %t4973 = or i32 0, 0
  %c4974 = zext i32 %t4973 to i64
  %wp4975 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4974, ptr %wp4975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f14c word 0x17fffdfa
  br label %L_80029e934
L_80029f150:
  ; @pc 0x80029f150 word 0x9001b6c8
  %wp4976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419994624, ptr %wp4976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f154 word 0xaa0003f9
  %r4977.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4977 = load i64, ptr %r4977.p, align 8, !alias.scope !3, !noalias !4
  %t4978 = or i64 0, %r4977
  %wp4979 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4978, ptr %wp4979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f158 word 0xf9450908
  %r4980.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4980 = load i64, ptr %r4980.p, align 8, !alias.scope !3, !noalias !4
  %t4981 = add i64 %r4980, 2576
  %gmp4982 = inttoptr i64 %t4981 to ptr
  %gml4983 = load i64, ptr %gmp4982, align 1, !alias.scope !4, !noalias !3
  %wp4984 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4983, ptr %wp4984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f15c word 0xaa0803e0
  %r4985.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4985 = load i64, ptr %r4985.p, align 8, !alias.scope !3, !noalias !4
  %t4986 = or i64 0, %r4985
  %wp4987 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4986, ptr %wp4987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f160 word 0x94a41210
  %wp4988 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487140, ptr %wp4988, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80029f164 word 0x2a0003e8
  %r4989.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4989 = load i64, ptr %r4989.p, align 8, !alias.scope !3, !noalias !4
  %c4990 = trunc i64 %r4989 to i32
  %t4991 = or i32 0, %c4990
  %c4992 = zext i32 %t4991 to i64
  %wp4993 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4992, ptr %wp4993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f168 word 0xaa1903e0
  %r4994.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4994 = load i64, ptr %r4994.p, align 8, !alias.scope !3, !noalias !4
  %t4995 = or i64 0, %r4994
  %wp4996 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4995, ptr %wp4996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f16c word 0x34ffce28
  %r4997.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4997 = load i64, ptr %r4997.p, align 8, !alias.scope !3, !noalias !4
  %c4998 = trunc i64 %r4997 to i32
  %cmp4999 = icmp eq i32 %c4998, 0
  br i1 %cmp4999, label %L_80029eb30, label %L_80029f170_ft
L_80029f194:
  ; @pc 0x80029f194 word 0xb001b568
  %wp5022 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp5022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f198 word 0xf9461108
  %r5023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5023 = load i64, ptr %r5023.p, align 8, !alias.scope !3, !noalias !4
  %t5024 = add i64 %r5023, 3104
  %gmp5025 = inttoptr i64 %t5024 to ptr
  %gml5026 = load i64, ptr %gmp5025, align 1, !alias.scope !4, !noalias !3
  %wp5027 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5026, ptr %wp5027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f19c word 0xf94013e1
  %r5028.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5028 = load i64, ptr %r5028.p, align 8, !alias.scope !3, !noalias !4
  %t5029 = add i64 %r5028, 32
  %gmp5030 = inttoptr i64 %t5029 to ptr
  %gml5031 = load i64, ptr %gmp5030, align 1, !alias.scope !4, !noalias !3
  %wp5032 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5031, ptr %wp5032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1a0 word 0xf9400116
  %r5033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5033 = load i64, ptr %r5033.p, align 8, !alias.scope !3, !noalias !4
  %gmp5034 = inttoptr i64 %r5033 to ptr
  %gml5035 = load i64, ptr %gmp5034, align 1, !alias.scope !4, !noalias !3
  %wp5036 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5035, ptr %wp5036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1a4 word 0xf9400ec0
  %r5037.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5037 = load i64, ptr %r5037.p, align 8, !alias.scope !3, !noalias !4
  %t5038 = add i64 %r5037, 24
  %gmp5039 = inttoptr i64 %t5038 to ptr
  %gml5040 = load i64, ptr %gmp5039, align 1, !alias.scope !4, !noalias !3
  %wp5041 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5040, ptr %wp5041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1a8 word 0xf9400008
  %r5042.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5042 = load i64, ptr %r5042.p, align 8, !alias.scope !3, !noalias !4
  %gmp5043 = inttoptr i64 %r5042 to ptr
  %gml5044 = load i64, ptr %gmp5043, align 1, !alias.scope !4, !noalias !3
  %wp5045 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5044, ptr %wp5045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1ac word 0xf9401108
  %r5046.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5046 = load i64, ptr %r5046.p, align 8, !alias.scope !3, !noalias !4
  %t5047 = add i64 %r5046, 32
  %gmp5048 = inttoptr i64 %t5047 to ptr
  %gml5049 = load i64, ptr %gmp5048, align 1, !alias.scope !4, !noalias !3
  %wp5050 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5049, ptr %wp5050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1b0 word 0xd63f0100
  %r5051.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5051 = load i64, ptr %r5051.p, align 8, !alias.scope !3, !noalias !4
  %fp5052 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5051, ptr %fp5052, align 8, !alias.scope !3, !noalias !4
  %wp5053 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487220, ptr %wp5053, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029f1b4 word 0x36000260
  %r5054.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5054 = load i64, ptr %r5054.p, align 8, !alias.scope !3, !noalias !4
  %t5055 = and i64 %r5054, 1
  %cmp5056 = icmp eq i64 %t5055, 0
  br i1 %cmp5056, label %L_80029f200, label %L_80029f1b8_ft
L_80029f200:
  ; @pc 0x80029f200 word 0x885f7ee8
  %r5126.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5126 = load i64, ptr %r5126.p, align 8, !alias.scope !3, !noalias !4
  %atp5127 = inttoptr i64 %r5126 to ptr
  %ldx5128 = load atomic i32, ptr %atp5127 acquire, align 4, !alias.scope !4, !noalias !3
  %c5129 = zext i32 %ldx5128 to i64
  %fp5130 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5126, ptr %fp5130, align 8, !alias.scope !3, !noalias !4
  %fp5131 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5129, ptr %fp5131, align 8, !alias.scope !3, !noalias !4
  %wp5132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5129, ptr %wp5132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f204 word 0x7100051f
  %r5133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5133 = load i64, ptr %r5133.p, align 8, !alias.scope !3, !noalias !4
  %c5134 = trunc i64 %r5133 to i32
  %t5135 = sub i32 %c5134, 1
  %fn5136 = icmp slt i32 %t5135, 0
  %fz5137 = icmp eq i32 %t5135, 0
  %fc5138 = icmp uge i32 %c5134, 1
  %fx15139 = xor i32 %c5134, 1
  %fx25140 = xor i32 %c5134, %t5135
  %fva5141 = and i32 %fx15139, %fx25140
  %fv5142 = icmp slt i32 %fva5141, 0
  %nz5143 = zext i1 %fn5136 to i64
  %zz5144 = zext i1 %fz5137 to i64
  %cz5145 = zext i1 %fc5138 to i64
  %vz5146 = zext i1 %fv5142 to i64
  %ns5147 = shl i64 %nz5143, 31
  %zs5148 = shl i64 %zz5144, 30
  %cs5149 = shl i64 %cz5145, 29
  %vs5150 = shl i64 %vz5146, 28
  %nzor5151 = or i64 %ns5147, %zs5148
  %cvor5152 = or i64 %cs5149, %vs5150
  %nzcv5153 = or i64 %nzor5151, %cvor5152
  %wp5154 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5153, ptr %wp5154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f208 word 0x54ffd301
  %r5155.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5155 = load i64, ptr %r5155.p, align 8, !alias.scope !3, !noalias !4
  %fsh5157 = lshr i64 %r5155, 30
  %ftr5158 = trunc i64 %fsh5157 to i1
  %cond5156 = xor i1 %ftr5158, true
  br i1 %cond5156, label %L_80029ec68, label %L_80029f20c_ft
L_80029f21c:
  ; @pc 0x80029f21c word 0x2a1f03fc
  %t5180 = or i32 0, 0
  %c5181 = zext i32 %t5180 to i64
  %wp5182 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c5181, ptr %wp5182, align 8, !alias.scope !3, !noalias !4
  br label %L_80029f220
L_80029f220:
  ; @pc 0x80029f220 word 0xb9404288
  %r5183.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5183 = load i64, ptr %r5183.p, align 8, !alias.scope !3, !noalias !4
  %t5184 = add i64 %r5183, 64
  %gmp5185 = inttoptr i64 %t5184 to ptr
  %gml5186 = load i32, ptr %gmp5185, align 1, !alias.scope !4, !noalias !3
  %c5187 = zext i32 %gml5186 to i64
  %wp5188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5187, ptr %wp5188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f224 word 0x6b1c011f
  %r5189.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5189 = load i64, ptr %r5189.p, align 8, !alias.scope !3, !noalias !4
  %c5190 = trunc i64 %r5189 to i32
  %r5191.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5191 = load i64, ptr %r5191.p, align 8, !alias.scope !3, !noalias !4
  %c5192 = trunc i64 %r5191 to i32
  %t5193 = sub i32 %c5190, %c5192
  %fn5194 = icmp slt i32 %t5193, 0
  %fz5195 = icmp eq i32 %t5193, 0
  %fc5196 = icmp uge i32 %c5190, %c5192
  %fx15197 = xor i32 %c5190, %c5192
  %fx25198 = xor i32 %c5190, %t5193
  %fva5199 = and i32 %fx15197, %fx25198
  %fv5200 = icmp slt i32 %fva5199, 0
  %nz5201 = zext i1 %fn5194 to i64
  %zz5202 = zext i1 %fz5195 to i64
  %cz5203 = zext i1 %fc5196 to i64
  %vz5204 = zext i1 %fv5200 to i64
  %ns5205 = shl i64 %nz5201, 31
  %zs5206 = shl i64 %zz5202, 30
  %cs5207 = shl i64 %cz5203, 29
  %vs5208 = shl i64 %vz5204, 28
  %nzor5209 = or i64 %ns5205, %zs5206
  %cvor5210 = or i64 %cs5207, %vs5208
  %nzcv5211 = or i64 %nzor5209, %cvor5210
  %wp5212 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5211, ptr %wp5212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f228 word 0xf9402689
  %r5213.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5213 = load i64, ptr %r5213.p, align 8, !alias.scope !3, !noalias !4
  %t5214 = add i64 %r5213, 72
  %gmp5215 = inttoptr i64 %t5214 to ptr
  %gml5216 = load i64, ptr %gmp5215, align 1, !alias.scope !4, !noalias !3
  %wp5217 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5216, ptr %wp5217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f22c word 0x1a9f8388
  %r5218.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5218 = load i64, ptr %r5218.p, align 8, !alias.scope !3, !noalias !4
  %c5219 = trunc i64 %r5218 to i32
  %r5220.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5220 = load i64, ptr %r5220.p, align 8, !alias.scope !3, !noalias !4
  %fsh5222 = lshr i64 %r5220, 29
  %ftr5223 = trunc i64 %fsh5222 to i1
  %fsh5224 = lshr i64 %r5220, 30
  %ftr5225 = trunc i64 %fsh5224 to i1
  %fnz5226 = xor i1 %ftr5225, true
  %cond5221 = and i1 %ftr5223, %fnz5226
  %sel5227 = select i1 %cond5221, i32 %c5219, i32 0
  %c5228 = zext i32 %sel5227 to i64
  %wp5229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5228, ptr %wp5229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f230 word 0xb8685928
  %r5230.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5230 = load i64, ptr %r5230.p, align 8, !alias.scope !3, !noalias !4
  %r5231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5231 = load i64, ptr %r5231.p, align 8, !alias.scope !3, !noalias !4
  %c5232 = trunc i64 %r5231 to i32
  %c5233 = zext i32 %c5232 to i64
  %t5234 = shl i64 %c5233, 2
  %t5235 = add i64 %r5230, %t5234
  %gmp5236 = inttoptr i64 %t5235 to ptr
  %gml5237 = load i32, ptr %gmp5236, align 1, !alias.scope !4, !noalias !3
  %c5238 = zext i32 %gml5237 to i64
  %wp5239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5238, ptr %wp5239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f234 word 0x34ffae28
  %r5240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5240 = load i64, ptr %r5240.p, align 8, !alias.scope !3, !noalias !4
  %c5241 = trunc i64 %r5240 to i32
  %cmp5242 = icmp eq i32 %c5241, 0
  br i1 %cmp5242, label %L_80029e7f8, label %L_80029f238_ft
L_80029f294:
  ; @pc 0x80029f294 word 0x2a1f03e9
  %t5434 = or i32 0, 0
  %c5435 = zext i32 %t5434 to i64
  %wp5436 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5435, ptr %wp5436, align 8, !alias.scope !3, !noalias !4
  br label %L_80029f298
L_80029f298:
  ; @pc 0x80029f298 word 0xb9400908
  %r5437.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5437 = load i64, ptr %r5437.p, align 8, !alias.scope !3, !noalias !4
  %t5438 = add i64 %r5437, 8
  %gmp5439 = inttoptr i64 %t5438 to ptr
  %gml5440 = load i32, ptr %gmp5439, align 1, !alias.scope !4, !noalias !3
  %c5441 = zext i32 %gml5440 to i64
  %wp5442 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5441, ptr %wp5442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f29c word 0xaa1503e0
  %r5443.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5443 = load i64, ptr %r5443.p, align 8, !alias.scope !3, !noalias !4
  %t5444 = or i64 0, %r5443
  %wp5445 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5444, ptr %wp5445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2a0 word 0x5100050a
  %r5446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5446 = load i64, ptr %r5446.p, align 8, !alias.scope !3, !noalias !4
  %c5447 = trunc i64 %r5446 to i32
  %t5448 = sub i32 %c5447, 1
  %c5449 = zext i32 %t5448 to i64
  %wp5450 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5449, ptr %wp5450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2a4 word 0x6b08013f
  %r5451.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5451 = load i64, ptr %r5451.p, align 8, !alias.scope !3, !noalias !4
  %c5452 = trunc i64 %r5451 to i32
  %r5453.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5453 = load i64, ptr %r5453.p, align 8, !alias.scope !3, !noalias !4
  %c5454 = trunc i64 %r5453 to i32
  %t5455 = sub i32 %c5452, %c5454
  %fn5456 = icmp slt i32 %t5455, 0
  %fz5457 = icmp eq i32 %t5455, 0
  %fc5458 = icmp uge i32 %c5452, %c5454
  %fx15459 = xor i32 %c5452, %c5454
  %fx25460 = xor i32 %c5452, %t5455
  %fva5461 = and i32 %fx15459, %fx25460
  %fv5462 = icmp slt i32 %fva5461, 0
  %nz5463 = zext i1 %fn5456 to i64
  %zz5464 = zext i1 %fz5457 to i64
  %cz5465 = zext i1 %fc5458 to i64
  %vz5466 = zext i1 %fv5462 to i64
  %ns5467 = shl i64 %nz5463, 31
  %zs5468 = shl i64 %zz5464, 30
  %cs5469 = shl i64 %cz5465, 29
  %vs5470 = shl i64 %vz5466, 28
  %nzor5471 = or i64 %ns5467, %zs5468
  %cvor5472 = or i64 %cs5469, %vs5470
  %nzcv5473 = or i64 %nzor5471, %cvor5472
  %wp5474 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5473, ptr %wp5474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2a8 word 0x1a8ab13b
  %r5475.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5475 = load i64, ptr %r5475.p, align 8, !alias.scope !3, !noalias !4
  %c5476 = trunc i64 %r5475 to i32
  %r5477.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5477 = load i64, ptr %r5477.p, align 8, !alias.scope !3, !noalias !4
  %c5478 = trunc i64 %r5477 to i32
  %r5479.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5479 = load i64, ptr %r5479.p, align 8, !alias.scope !3, !noalias !4
  %fsh5481 = lshr i64 %r5479, 31
  %ftr5482 = trunc i64 %fsh5481 to i1
  %fsh5483 = lshr i64 %r5479, 28
  %ftr5484 = trunc i64 %fsh5483 to i1
  %cond5480 = icmp ne i1 %ftr5482, %ftr5484
  %sel5485 = select i1 %cond5480, i32 %c5476, i32 %c5478
  %c5486 = zext i32 %sel5485 to i64
  %wp5487 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c5486, ptr %wp5487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2ac word 0x93407f62
  %r5488.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5488 = load i64, ptr %r5488.p, align 8, !alias.scope !3, !noalias !4
  %t5489 = lshr i64 %r5488, 31
  %t5490 = and i64 %t5489, 1
  %t5491 = sub i64 0, %t5490
  %t5492 = and i64 %t5491, -4294967296
  %t5493 = and i64 %r5488, 4294967295
  %t5494 = or i64 %t5492, %t5493
  %wp5495 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5494, ptr %wp5495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2b0 word 0x94a413c8
  %wp5496 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487476, ptr %wp5496, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba41d0(ptr %c)
  ; @pc 0x80029f2b4 word 0x383bcabf
  %r5497.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5497 = load i64, ptr %r5497.p, align 8, !alias.scope !3, !noalias !4
  %r5498.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5498 = load i64, ptr %r5498.p, align 8, !alias.scope !3, !noalias !4
  %c5499 = trunc i64 %r5498 to i32
  %c5500 = sext i32 %c5499 to i64
  %t5501 = add i64 %r5497, %c5500
  %c5502 = trunc i32 0 to i8
  %gmp5503 = inttoptr i64 %t5501 to ptr
  store i8 %c5502, ptr %gmp5503, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f2b8 word 0xf00156bb
  %wp5504 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34407407616, ptr %wp5504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2bc word 0x9121237b
  %r5505.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5505 = load i64, ptr %r5505.p, align 8, !alias.scope !3, !noalias !4
  %t5506 = add i64 %r5505, 2120
  %wp5507 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t5506, ptr %wp5507, align 8, !alias.scope !3, !noalias !4
  br label %L_80029f2c0
L_80029f2c0:
  ; @pc 0x80029f2c0 word 0xb9408288
  %r5508.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5508 = load i64, ptr %r5508.p, align 8, !alias.scope !3, !noalias !4
  %t5509 = add i64 %r5508, 128
  %gmp5510 = inttoptr i64 %t5509 to ptr
  %gml5511 = load i32, ptr %gmp5510, align 1, !alias.scope !4, !noalias !3
  %c5512 = zext i32 %gml5511 to i64
  %wp5513 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5512, ptr %wp5513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2c4 word 0x6b1c011f
  %r5514.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5514 = load i64, ptr %r5514.p, align 8, !alias.scope !3, !noalias !4
  %c5515 = trunc i64 %r5514 to i32
  %r5516.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5516 = load i64, ptr %r5516.p, align 8, !alias.scope !3, !noalias !4
  %c5517 = trunc i64 %r5516 to i32
  %t5518 = sub i32 %c5515, %c5517
  %fn5519 = icmp slt i32 %t5518, 0
  %fz5520 = icmp eq i32 %t5518, 0
  %fc5521 = icmp uge i32 %c5515, %c5517
  %fx15522 = xor i32 %c5515, %c5517
  %fx25523 = xor i32 %c5515, %t5518
  %fva5524 = and i32 %fx15522, %fx25523
  %fv5525 = icmp slt i32 %fva5524, 0
  %nz5526 = zext i1 %fn5519 to i64
  %zz5527 = zext i1 %fz5520 to i64
  %cz5528 = zext i1 %fc5521 to i64
  %vz5529 = zext i1 %fv5525 to i64
  %ns5530 = shl i64 %nz5526, 31
  %zs5531 = shl i64 %zz5527, 30
  %cs5532 = shl i64 %cz5528, 29
  %vs5533 = shl i64 %vz5529, 28
  %nzor5534 = or i64 %ns5530, %zs5531
  %cvor5535 = or i64 %cs5532, %vs5533
  %nzcv5536 = or i64 %nzor5534, %cvor5535
  %wp5537 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5536, ptr %wp5537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2c8 word 0xf9404689
  %r5538.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5538 = load i64, ptr %r5538.p, align 8, !alias.scope !3, !noalias !4
  %t5539 = add i64 %r5538, 136
  %gmp5540 = inttoptr i64 %t5539 to ptr
  %gml5541 = load i64, ptr %gmp5540, align 1, !alias.scope !4, !noalias !3
  %wp5542 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5541, ptr %wp5542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2cc word 0x1a9f8388
  %r5543.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5543 = load i64, ptr %r5543.p, align 8, !alias.scope !3, !noalias !4
  %c5544 = trunc i64 %r5543 to i32
  %r5545.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5545 = load i64, ptr %r5545.p, align 8, !alias.scope !3, !noalias !4
  %fsh5547 = lshr i64 %r5545, 29
  %ftr5548 = trunc i64 %fsh5547 to i1
  %fsh5549 = lshr i64 %r5545, 30
  %ftr5550 = trunc i64 %fsh5549 to i1
  %fnz5551 = xor i1 %ftr5550, true
  %cond5546 = and i1 %ftr5548, %fnz5551
  %sel5552 = select i1 %cond5546, i32 %c5544, i32 0
  %c5553 = zext i32 %sel5552 to i64
  %wp5554 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5553, ptr %wp5554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2d0 word 0x17fffda3
  br label %L_80029e95c
L_80029f2d4:
  ; @pc 0x80029f2d4 word 0xb001b568
  %wp5555 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp5555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2d8 word 0xaa1503e1
  %r5556.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5556 = load i64, ptr %r5556.p, align 8, !alias.scope !3, !noalias !4
  %t5557 = or i64 0, %r5556
  %wp5558 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5557, ptr %wp5558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2dc word 0xf9461108
  %r5559.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5559 = load i64, ptr %r5559.p, align 8, !alias.scope !3, !noalias !4
  %t5560 = add i64 %r5559, 3104
  %gmp5561 = inttoptr i64 %t5560 to ptr
  %gml5562 = load i64, ptr %gmp5561, align 1, !alias.scope !4, !noalias !3
  %wp5563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5562, ptr %wp5563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2e0 word 0xf9400116
  %r5564.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5564 = load i64, ptr %r5564.p, align 8, !alias.scope !3, !noalias !4
  %gmp5565 = inttoptr i64 %r5564 to ptr
  %gml5566 = load i64, ptr %gmp5565, align 1, !alias.scope !4, !noalias !3
  %wp5567 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5566, ptr %wp5567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2e4 word 0xf9400ec0
  %r5568.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5568 = load i64, ptr %r5568.p, align 8, !alias.scope !3, !noalias !4
  %t5569 = add i64 %r5568, 24
  %gmp5570 = inttoptr i64 %t5569 to ptr
  %gml5571 = load i64, ptr %gmp5570, align 1, !alias.scope !4, !noalias !3
  %wp5572 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5571, ptr %wp5572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2e8 word 0xf9400008
  %r5573.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5573 = load i64, ptr %r5573.p, align 8, !alias.scope !3, !noalias !4
  %gmp5574 = inttoptr i64 %r5573 to ptr
  %gml5575 = load i64, ptr %gmp5574, align 1, !alias.scope !4, !noalias !3
  %wp5576 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5575, ptr %wp5576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2ec word 0xf9401108
  %r5577.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5577 = load i64, ptr %r5577.p, align 8, !alias.scope !3, !noalias !4
  %t5578 = add i64 %r5577, 32
  %gmp5579 = inttoptr i64 %t5578 to ptr
  %gml5580 = load i64, ptr %gmp5579, align 1, !alias.scope !4, !noalias !3
  %wp5581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5580, ptr %wp5581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2f0 word 0xd63f0100
  %r5582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5582 = load i64, ptr %r5582.p, align 8, !alias.scope !3, !noalias !4
  %fp5583 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5582, ptr %fp5583, align 8, !alias.scope !3, !noalias !4
  %wp5584 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487540, ptr %wp5584, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029f2f4 word 0x36000220
  %r5585.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5585 = load i64, ptr %r5585.p, align 8, !alias.scope !3, !noalias !4
  %t5586 = and i64 %r5585, 1
  %cmp5587 = icmp eq i64 %t5586, 0
  br i1 %cmp5587, label %L_80029f338, label %L_80029f2f8_ft
L_80029f338:
  ; @pc 0x80029f338 word 0x885f7f48
  %r5646.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5646 = load i64, ptr %r5646.p, align 8, !alias.scope !3, !noalias !4
  %atp5647 = inttoptr i64 %r5646 to ptr
  %ldx5648 = load atomic i32, ptr %atp5647 acquire, align 4, !alias.scope !4, !noalias !3
  %c5649 = zext i32 %ldx5648 to i64
  %fp5650 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5646, ptr %fp5650, align 8, !alias.scope !3, !noalias !4
  %fp5651 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5649, ptr %fp5651, align 8, !alias.scope !3, !noalias !4
  %wp5652 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5649, ptr %wp5652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f33c word 0x7100051f
  %r5653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5653 = load i64, ptr %r5653.p, align 8, !alias.scope !3, !noalias !4
  %c5654 = trunc i64 %r5653 to i32
  %t5655 = sub i32 %c5654, 1
  %fn5656 = icmp slt i32 %t5655, 0
  %fz5657 = icmp eq i32 %t5655, 0
  %fc5658 = icmp uge i32 %c5654, 1
  %fx15659 = xor i32 %c5654, 1
  %fx25660 = xor i32 %c5654, %t5655
  %fva5661 = and i32 %fx15659, %fx25660
  %fv5662 = icmp slt i32 %fva5661, 0
  %nz5663 = zext i1 %fn5656 to i64
  %zz5664 = zext i1 %fz5657 to i64
  %cz5665 = zext i1 %fc5658 to i64
  %vz5666 = zext i1 %fv5662 to i64
  %ns5667 = shl i64 %nz5663, 31
  %zs5668 = shl i64 %zz5664, 30
  %cs5669 = shl i64 %cz5665, 29
  %vs5670 = shl i64 %vz5666, 28
  %nzor5671 = or i64 %ns5667, %zs5668
  %cvor5672 = or i64 %cs5669, %vs5670
  %nzcv5673 = or i64 %nzor5671, %cvor5672
  %wp5674 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5673, ptr %wp5674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f340 word 0x54ffbc21
  %r5675.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5675 = load i64, ptr %r5675.p, align 8, !alias.scope !3, !noalias !4
  %fsh5677 = lshr i64 %r5675, 30
  %ftr5678 = trunc i64 %fsh5677 to i1
  %cond5676 = xor i1 %ftr5678, true
  br i1 %cond5676, label %L_80029eac4, label %L_80029f344_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34362483736, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80029e418
L_80029e424_ft:
  ; @pc 0x80029e424 word 0xa9ba7bfd
  %r34.p = getelementptr inbounds i8, ptr %c, i64 256
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %t35 = add i64 %r34, -96
  %t36 = add i64 %t35, 8
  %r37.p = getelementptr inbounds i8, ptr %c, i64 232
  %r37 = load i64, ptr %r37.p, align 8, !alias.scope !3, !noalias !4
  %gmp38 = inttoptr i64 %t35 to ptr
  store i64 %r37, ptr %gmp38, align 1, !alias.scope !4, !noalias !3
  %r39.p = getelementptr inbounds i8, ptr %c, i64 240
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t36 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %wp41 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t35, ptr %wp41, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e428 word 0xa9016ffc
  %r42.p = getelementptr inbounds i8, ptr %c, i64 256
  %r42 = load i64, ptr %r42.p, align 8, !alias.scope !3, !noalias !4
  %t43 = add i64 %r42, 16
  %t44 = add i64 %t43, 8
  %r45.p = getelementptr inbounds i8, ptr %c, i64 224
  %r45 = load i64, ptr %r45.p, align 8, !alias.scope !3, !noalias !4
  %gmp46 = inttoptr i64 %t43 to ptr
  store i64 %r45, ptr %gmp46, align 1, !alias.scope !4, !noalias !3
  %r47.p = getelementptr inbounds i8, ptr %c, i64 216
  %r47 = load i64, ptr %r47.p, align 8, !alias.scope !3, !noalias !4
  %gmp48 = inttoptr i64 %t44 to ptr
  store i64 %r47, ptr %gmp48, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e42c word 0x910003fd
  %r49.p = getelementptr inbounds i8, ptr %c, i64 256
  %r49 = load i64, ptr %r49.p, align 8, !alias.scope !3, !noalias !4
  %t50 = add i64 %r49, 0
  %wp51 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t50, ptr %wp51, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e430 word 0xa90267fa
  %r52.p = getelementptr inbounds i8, ptr %c, i64 256
  %r52 = load i64, ptr %r52.p, align 8, !alias.scope !3, !noalias !4
  %t53 = add i64 %r52, 32
  %t54 = add i64 %t53, 8
  %r55.p = getelementptr inbounds i8, ptr %c, i64 208
  %r55 = load i64, ptr %r55.p, align 8, !alias.scope !3, !noalias !4
  %gmp56 = inttoptr i64 %t53 to ptr
  store i64 %r55, ptr %gmp56, align 1, !alias.scope !4, !noalias !3
  %r57.p = getelementptr inbounds i8, ptr %c, i64 200
  %r57 = load i64, ptr %r57.p, align 8, !alias.scope !3, !noalias !4
  %gmp58 = inttoptr i64 %t54 to ptr
  store i64 %r57, ptr %gmp58, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e434 word 0xa9035ff8
  %r59.p = getelementptr inbounds i8, ptr %c, i64 256
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = add i64 %r59, 48
  %t61 = add i64 %t60, 8
  %r62.p = getelementptr inbounds i8, ptr %c, i64 192
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %gmp63 = inttoptr i64 %t60 to ptr
  store i64 %r62, ptr %gmp63, align 1, !alias.scope !4, !noalias !3
  %r64.p = getelementptr inbounds i8, ptr %c, i64 184
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %gmp65 = inttoptr i64 %t61 to ptr
  store i64 %r64, ptr %gmp65, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e438 word 0xa90457f6
  %r66.p = getelementptr inbounds i8, ptr %c, i64 256
  %r66 = load i64, ptr %r66.p, align 8, !alias.scope !3, !noalias !4
  %t67 = add i64 %r66, 64
  %t68 = add i64 %t67, 8
  %r69.p = getelementptr inbounds i8, ptr %c, i64 176
  %r69 = load i64, ptr %r69.p, align 8, !alias.scope !3, !noalias !4
  %gmp70 = inttoptr i64 %t67 to ptr
  store i64 %r69, ptr %gmp70, align 1, !alias.scope !4, !noalias !3
  %r71.p = getelementptr inbounds i8, ptr %c, i64 168
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %gmp72 = inttoptr i64 %t68 to ptr
  store i64 %r71, ptr %gmp72, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e43c word 0xa9054ff4
  %r73.p = getelementptr inbounds i8, ptr %c, i64 256
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = add i64 %r73, 80
  %t75 = add i64 %t74, 8
  %r76.p = getelementptr inbounds i8, ptr %c, i64 160
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %gmp77 = inttoptr i64 %t74 to ptr
  store i64 %r76, ptr %gmp77, align 1, !alias.scope !4, !noalias !3
  %r78.p = getelementptr inbounds i8, ptr %c, i64 152
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %gmp79 = inttoptr i64 %t75 to ptr
  store i64 %r78, ptr %gmp79, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e440 word 0xd1402bff
  %r80.p = getelementptr inbounds i8, ptr %c, i64 256
  %r80 = load i64, ptr %r80.p, align 8, !alias.scope !3, !noalias !4
  %t81 = sub i64 %r80, 40960
  %wp82 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t81, ptr %wp82, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e444 word 0xd10403ff
  %r83.p = getelementptr inbounds i8, ptr %c, i64 256
  %r83 = load i64, ptr %r83.p, align 8, !alias.scope !3, !noalias !4
  %t84 = sub i64 %r83, 256
  %wp85 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e448 word 0xf9401428
  %r86.p = getelementptr inbounds i8, ptr %c, i64 8
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %t87 = add i64 %r86, 40
  %gmp88 = inttoptr i64 %t87 to ptr
  %gml89 = load i64, ptr %gmp88, align 1, !alias.scope !4, !noalias !3
  %wp90 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e44c word 0xaa0103f4
  %r91.p = getelementptr inbounds i8, ptr %c, i64 8
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %t92 = or i64 0, %r91
  %wp93 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t92, ptr %wp93, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e450 word 0xb9401115
  %r94.p = getelementptr inbounds i8, ptr %c, i64 64
  %r94 = load i64, ptr %r94.p, align 8, !alias.scope !3, !noalias !4
  %t95 = add i64 %r94, 16
  %gmp96 = inttoptr i64 %t95 to ptr
  %gml97 = load i32, ptr %gmp96, align 1, !alias.scope !4, !noalias !3
  %c98 = zext i32 %gml97 to i64
  %wp99 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c98, ptr %wp99, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e454 word 0x710006bf
  %r100.p = getelementptr inbounds i8, ptr %c, i64 168
  %r100 = load i64, ptr %r100.p, align 8, !alias.scope !3, !noalias !4
  %c101 = trunc i64 %r100 to i32
  %t102 = sub i32 %c101, 1
  %fn103 = icmp slt i32 %t102, 0
  %fz104 = icmp eq i32 %t102, 0
  %fc105 = icmp uge i32 %c101, 1
  %fx1106 = xor i32 %c101, 1
  %fx2107 = xor i32 %c101, %t102
  %fva108 = and i32 %fx1106, %fx2107
  %fv109 = icmp slt i32 %fva108, 0
  %nz110 = zext i1 %fn103 to i64
  %zz111 = zext i1 %fz104 to i64
  %cz112 = zext i1 %fc105 to i64
  %vz113 = zext i1 %fv109 to i64
  %ns114 = shl i64 %nz110, 31
  %zs115 = shl i64 %zz111, 30
  %cs116 = shl i64 %cz112, 29
  %vs117 = shl i64 %vz113, 28
  %nzor118 = or i64 %ns114, %zs115
  %cvor119 = or i64 %cs116, %vs117
  %nzcv120 = or i64 %nzor118, %cvor119
  %wp121 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv120, ptr %wp121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e458 word 0x540011eb
  %r122.p = getelementptr inbounds i8, ptr %c, i64 272
  %r122 = load i64, ptr %r122.p, align 8, !alias.scope !3, !noalias !4
  %fsh124 = lshr i64 %r122, 31
  %ftr125 = trunc i64 %fsh124 to i1
  %fsh126 = lshr i64 %r122, 28
  %ftr127 = trunc i64 %fsh126 to i1
  %cond123 = icmp ne i1 %ftr125, %ftr127
  br i1 %cond123, label %L_80029e694, label %L_80029e45c_ft
L_80029e45c_ft:
  ; @pc 0x80029e45c word 0xaa0003f3
  %r128.p = getelementptr inbounds i8, ptr %c, i64 0
  %r128 = load i64, ptr %r128.p, align 8, !alias.scope !3, !noalias !4
  %t129 = or i64 0, %r128
  %wp130 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e460 word 0xf9400680
  %r131.p = getelementptr inbounds i8, ptr %c, i64 160
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %t132 = add i64 %r131, 8
  %gmp133 = inttoptr i64 %t132 to ptr
  %gml134 = load i64, ptr %gmp133, align 1, !alias.scope !4, !noalias !3
  %wp135 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml134, ptr %wp135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e464 word 0xd37df2a1
  %r136.p = getelementptr inbounds i8, ptr %c, i64 168
  %r136 = load i64, ptr %r136.p, align 8, !alias.scope !3, !noalias !4
  %ror137 = call i64 @llvm.fshr.i64(i64 %r136, i64 %r136, i64 61)
  %t138 = and i64 %ror137, -8
  %wp139 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t138, ptr %wp139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e468 word 0x52800102
  %c140 = zext i32 8 to i64
  %wp141 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c140, ptr %wp141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e46c word 0x2a1f03e3
  %t142 = or i32 0, 0
  %c143 = zext i32 %t142 to i64
  %wp144 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c143, ptr %wp144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e470 word 0x97f76e2c
  %wp145 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362483828, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  call void @f_800079d20(ptr %c)
  ; @pc 0x80029e474 word 0xb4000100
  %r146.p = getelementptr inbounds i8, ptr %c, i64 0
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %cmp147 = icmp eq i64 %r146, 0
  br i1 %cmp147, label %L_80029e494, label %L_80029e478_ft
L_80029e478_ft:
  ; @pc 0x80029e478 word 0xaa1503e8
  %r148.p = getelementptr inbounds i8, ptr %c, i64 168
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %t149 = or i64 0, %r148
  %wp150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e47c word 0xaa0003e9
  %r151.p = getelementptr inbounds i8, ptr %c, i64 0
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %t152 = or i64 0, %r151
  %wp153 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e480
L_80029e48c_ft:
  ; @pc 0x80029e48c word 0xb9003275
  %r184.p = getelementptr inbounds i8, ptr %c, i64 152
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %t185 = add i64 %r184, 48
  %r186.p = getelementptr inbounds i8, ptr %c, i64 168
  %r186 = load i64, ptr %r186.p, align 8, !alias.scope !3, !noalias !4
  %c187 = trunc i64 %r186 to i32
  %gmp188 = inttoptr i64 %t185 to ptr
  store i32 %c187, ptr %gmp188, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e490 word 0xf9001e60
  %r189.p = getelementptr inbounds i8, ptr %c, i64 152
  %r189 = load i64, ptr %r189.p, align 8, !alias.scope !3, !noalias !4
  %t190 = add i64 %r189, 56
  %r191.p = getelementptr inbounds i8, ptr %c, i64 0
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %gmp192 = inttoptr i64 %t190 to ptr
  store i64 %r191, ptr %gmp192, align 1, !alias.scope !4, !noalias !3
  br label %L_80029e494
L_80029e4c4_ft:
  ; @pc 0x80029e4c4 word 0xf940a908
  %r228.p = getelementptr inbounds i8, ptr %c, i64 64
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %t229 = add i64 %r228, 336
  %gmp230 = inttoptr i64 %t229 to ptr
  %gml231 = load i64, ptr %gmp230, align 1, !alias.scope !4, !noalias !3
  %wp232 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml231, ptr %wp232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4c8 word 0xb4002c88
  %r233.p = getelementptr inbounds i8, ptr %c, i64 64
  %r233 = load i64, ptr %r233.p, align 8, !alias.scope !3, !noalias !4
  %cmp234 = icmp eq i64 %r233, 0
  br i1 %cmp234, label %L_80029ea58, label %L_80029e4cc
L_80029e4d8_ft:
  ; @pc 0x80029e4d8 word 0x9001b5b6
  %wp249 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419843072, ptr %wp249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4dc word 0x9001b5b5
  %wp250 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419843072, ptr %wp250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4e0 word 0xf9465ad6
  %r251.p = getelementptr inbounds i8, ptr %c, i64 176
  %r251 = load i64, ptr %r251.p, align 8, !alias.scope !3, !noalias !4
  %t252 = add i64 %r251, 3248
  %gmp253 = inttoptr i64 %t252 to ptr
  %gml254 = load i64, ptr %gmp253, align 1, !alias.scope !4, !noalias !3
  %wp255 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml254, ptr %wp255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4e4 word 0xf94656b5
  %r256.p = getelementptr inbounds i8, ptr %c, i64 168
  %r256 = load i64, ptr %r256.p, align 8, !alias.scope !3, !noalias !4
  %t257 = add i64 %r256, 3240
  %gmp258 = inttoptr i64 %t257 to ptr
  %gml259 = load i64, ptr %gmp258, align 1, !alias.scope !4, !noalias !3
  %wp260 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml259, ptr %wp260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e4e8 word 0xaa1f03fb
  %t261 = or i64 0, 0
  %wp262 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t261, ptr %wp262, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e4ec
L_80029e504_ft:
  ; @pc 0x80029e504 word 0xf940054a
  %r312.p = getelementptr inbounds i8, ptr %c, i64 80
  %r312 = load i64, ptr %r312.p, align 8, !alias.scope !3, !noalias !4
  %t313 = add i64 %r312, 8
  %gmp314 = inttoptr i64 %t313 to ptr
  %gml315 = load i64, ptr %gmp314, align 1, !alias.scope !4, !noalias !3
  %wp316 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml315, ptr %wp316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e508 word 0xb40000aa
  %r317.p = getelementptr inbounds i8, ptr %c, i64 80
  %r317 = load i64, ptr %r317.p, align 8, !alias.scope !3, !noalias !4
  %cmp318 = icmp eq i64 %r317, 0
  br i1 %cmp318, label %L_80029e51c, label %L_80029e50c_ft
L_80029e50c_ft:
  ; @pc 0x80029e50c word 0x91004140
  %r319.p = getelementptr inbounds i8, ptr %c, i64 80
  %r319 = load i64, ptr %r319.p, align 8, !alias.scope !3, !noalias !4
  %t320 = add i64 %r319, 16
  %wp321 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t320, ptr %wp321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e510 word 0x9401ddc1
  %wp322 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362483988, ptr %wp322, align 8, !alias.scope !3, !noalias !4
  call void @f_800315c14(ptr %c)
  ; @pc 0x80029e514 word 0xb9402268
  %r323.p = getelementptr inbounds i8, ptr %c, i64 152
  %r323 = load i64, ptr %r323.p, align 8, !alias.scope !3, !noalias !4
  %t324 = add i64 %r323, 32
  %gmp325 = inttoptr i64 %t324 to ptr
  %gml326 = load i32, ptr %gmp325, align 1, !alias.scope !4, !noalias !3
  %c327 = zext i32 %gml326 to i64
  %wp328 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c327, ptr %wp328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e518 word 0xf9401669
  %r329.p = getelementptr inbounds i8, ptr %c, i64 152
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %t330 = add i64 %r329, 40
  %gmp331 = inttoptr i64 %t330 to ptr
  %gml332 = load i64, ptr %gmp331, align 1, !alias.scope !4, !noalias !3
  %wp333 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml332, ptr %wp333, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e51c
L_80029e52c_ft:
  ; @pc 0x80029e52c word 0xf9400517
  %r375.p = getelementptr inbounds i8, ptr %c, i64 64
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %t376 = add i64 %r375, 8
  %gmp377 = inttoptr i64 %t376 to ptr
  %gml378 = load i64, ptr %gmp377, align 1, !alias.scope !4, !noalias !3
  %wp379 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml378, ptr %wp379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e530 word 0xb4003617
  %r380.p = getelementptr inbounds i8, ptr %c, i64 184
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %cmp381 = icmp eq i64 %r380, 0
  br i1 %cmp381, label %L_80029ebf0, label %L_80029e534_ft
L_80029e534_ft:
  ; @pc 0x80029e534 word 0xf94016e8
  %r382.p = getelementptr inbounds i8, ptr %c, i64 184
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %t383 = add i64 %r382, 40
  %gmp384 = inttoptr i64 %t383 to ptr
  %gml385 = load i64, ptr %gmp384, align 1, !alias.scope !4, !noalias !3
  %wp386 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml385, ptr %wp386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e538 word 0xb4000228
  %r387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r387 = load i64, ptr %r387.p, align 8, !alias.scope !3, !noalias !4
  %cmp388 = icmp eq i64 %r387, 0
  br i1 %cmp388, label %L_80029e57c, label %L_80029e53c_ft
L_80029e53c_ft:
  ; @pc 0x80029e53c word 0xf940a900
  %r389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r389 = load i64, ptr %r389.p, align 8, !alias.scope !3, !noalias !4
  %t390 = add i64 %r389, 336
  %gmp391 = inttoptr i64 %t390 to ptr
  %gml392 = load i64, ptr %gmp391, align 1, !alias.scope !4, !noalias !3
  %wp393 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml392, ptr %wp393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e540 word 0x08dffec8
  %r394.p = getelementptr inbounds i8, ptr %c, i64 176
  %r394 = load i64, ptr %r394.p, align 8, !alias.scope !3, !noalias !4
  %atp395 = inttoptr i64 %r394 to ptr
  %lda396 = load atomic i8, ptr %atp395 acquire, align 1, !alias.scope !4, !noalias !3
  %c397 = zext i8 %lda396 to i64
  %wp398 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c397, ptr %wp398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e544 word 0x360036a8
  %r399.p = getelementptr inbounds i8, ptr %c, i64 64
  %r399 = load i64, ptr %r399.p, align 8, !alias.scope !3, !noalias !4
  %t400 = and i64 %r399, 1
  %cmp401 = icmp eq i64 %t400, 0
  br i1 %cmp401, label %L_80029ec18, label %L_80029e548
L_80029e54c_ft:
  ; @pc 0x80029e54c word 0xf9400008
  %r404.p = getelementptr inbounds i8, ptr %c, i64 0
  %r404 = load i64, ptr %r404.p, align 8, !alias.scope !3, !noalias !4
  %gmp405 = inttoptr i64 %r404 to ptr
  %gml406 = load i64, ptr %gmp405, align 1, !alias.scope !4, !noalias !3
  %wp407 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml406, ptr %wp407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e550 word 0xaa1503e1
  %r408.p = getelementptr inbounds i8, ptr %c, i64 168
  %r408 = load i64, ptr %r408.p, align 8, !alias.scope !3, !noalias !4
  %t409 = or i64 0, %r408
  %wp410 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t409, ptr %wp410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e554 word 0xf9400108
  %r411.p = getelementptr inbounds i8, ptr %c, i64 64
  %r411 = load i64, ptr %r411.p, align 8, !alias.scope !3, !noalias !4
  %gmp412 = inttoptr i64 %r411 to ptr
  %gml413 = load i64, ptr %gmp412, align 1, !alias.scope !4, !noalias !3
  %wp414 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml413, ptr %wp414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e558 word 0xd63f0100
  %r415.p = getelementptr inbounds i8, ptr %c, i64 64
  %r415 = load i64, ptr %r415.p, align 8, !alias.scope !3, !noalias !4
  %fp416 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r415, ptr %fp416, align 8, !alias.scope !3, !noalias !4
  %wp417 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362484060, ptr %wp417, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029e55c word 0xb40034a0
  %r418.p = getelementptr inbounds i8, ptr %c, i64 0
  %r418 = load i64, ptr %r418.p, align 8, !alias.scope !3, !noalias !4
  %cmp419 = icmp eq i64 %r418, 0
  br i1 %cmp419, label %L_80029ebf0, label %L_80029e560_ft
L_80029e560_ft:
  ; @pc 0x80029e560 word 0xf94016e8
  %r420.p = getelementptr inbounds i8, ptr %c, i64 184
  %r420 = load i64, ptr %r420.p, align 8, !alias.scope !3, !noalias !4
  %t421 = add i64 %r420, 40
  %gmp422 = inttoptr i64 %t421 to ptr
  %gml423 = load i64, ptr %gmp422, align 1, !alias.scope !4, !noalias !3
  %wp424 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml423, ptr %wp424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e564 word 0xb40000c8
  %r425.p = getelementptr inbounds i8, ptr %c, i64 64
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %cmp426 = icmp eq i64 %r425, 0
  br i1 %cmp426, label %L_80029e57c, label %L_80029e568_ft
L_80029e568_ft:
  ; @pc 0x80029e568 word 0x91059109
  %r427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r427 = load i64, ptr %r427.p, align 8, !alias.scope !3, !noalias !4
  %t428 = add i64 %r427, 356
  %wp429 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t428, ptr %wp429, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e56c
L_80029e5b0_ft:
  ; @pc 0x80029e5b0 word 0xf940a908
  %r566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r566 = load i64, ptr %r566.p, align 8, !alias.scope !3, !noalias !4
  %t567 = add i64 %r566, 336
  %gmp568 = inttoptr i64 %t567 to ptr
  %gml569 = load i64, ptr %gmp568, align 1, !alias.scope !4, !noalias !3
  %wp570 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml569, ptr %wp570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5b4 word 0xb4003228
  %r571.p = getelementptr inbounds i8, ptr %c, i64 64
  %r571 = load i64, ptr %r571.p, align 8, !alias.scope !3, !noalias !4
  %cmp572 = icmp eq i64 %r571, 0
  br i1 %cmp572, label %L_80029ebf8, label %L_80029e5b8_ft
L_80029e5b8_ft:
  ; @pc 0x80029e5b8 word 0x9100077b
  %r573.p = getelementptr inbounds i8, ptr %c, i64 216
  %r573 = load i64, ptr %r573.p, align 8, !alias.scope !3, !noalias !4
  %t574 = add i64 %r573, 1
  %wp575 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t574, ptr %wp575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5bc word 0xeb1a037f
  %r576.p = getelementptr inbounds i8, ptr %c, i64 216
  %r576 = load i64, ptr %r576.p, align 8, !alias.scope !3, !noalias !4
  %r577.p = getelementptr inbounds i8, ptr %c, i64 208
  %r577 = load i64, ptr %r577.p, align 8, !alias.scope !3, !noalias !4
  %t578 = sub i64 %r576, %r577
  %fn579 = icmp slt i64 %t578, 0
  %fz580 = icmp eq i64 %t578, 0
  %fc581 = icmp uge i64 %r576, %r577
  %fx1582 = xor i64 %r576, %r577
  %fx2583 = xor i64 %r576, %t578
  %fva584 = and i64 %fx1582, %fx2583
  %fv585 = icmp slt i64 %fva584, 0
  %nz586 = zext i1 %fn579 to i64
  %zz587 = zext i1 %fz580 to i64
  %cz588 = zext i1 %fc581 to i64
  %vz589 = zext i1 %fv585 to i64
  %ns590 = shl i64 %nz586, 31
  %zs591 = shl i64 %zz587, 30
  %cs592 = shl i64 %cz588, 29
  %vs593 = shl i64 %vz589, 28
  %nzor594 = or i64 %ns590, %zs591
  %cvor595 = or i64 %cs592, %vs593
  %nzcv596 = or i64 %nzor594, %cvor595
  %wp597 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv596, ptr %wp597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e5c0 word 0x54fff961
  %r598.p = getelementptr inbounds i8, ptr %c, i64 272
  %r598 = load i64, ptr %r598.p, align 8, !alias.scope !3, !noalias !4
  %fsh600 = lshr i64 %r598, 30
  %ftr601 = trunc i64 %fsh600 to i1
  %cond599 = xor i1 %ftr601, true
  br i1 %cond599, label %L_80029e4ec, label %L_80029e5c4
L_80029e608_ft:
  ; @pc 0x80029e608 word 0xf9400ae8
  %r668.p = getelementptr inbounds i8, ptr %c, i64 184
  %r668 = load i64, ptr %r668.p, align 8, !alias.scope !3, !noalias !4
  %t669 = add i64 %r668, 16
  %gmp670 = inttoptr i64 %t669 to ptr
  %gml671 = load i64, ptr %gmp670, align 1, !alias.scope !4, !noalias !3
  %wp672 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml671, ptr %wp672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e60c word 0xb50027e8
  %r673.p = getelementptr inbounds i8, ptr %c, i64 64
  %r673 = load i64, ptr %r673.p, align 8, !alias.scope !3, !noalias !4
  %cmp674 = icmp ne i64 %r673, 0
  br i1 %cmp674, label %L_80029eb08, label %L_80029e610
L_80029e66c_ft:
  ; @pc 0x80029e66c word 0xaa1403e1
  %r777.p = getelementptr inbounds i8, ptr %c, i64 160
  %r777 = load i64, ptr %r777.p, align 8, !alias.scope !3, !noalias !4
  %t778 = or i64 0, %r777
  %wp779 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t778, ptr %wp779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e670 word 0xf84b0c28
  %r780.p = getelementptr inbounds i8, ptr %c, i64 8
  %r780 = load i64, ptr %r780.p, align 8, !alias.scope !3, !noalias !4
  %t781 = add i64 %r780, 176
  %gmp782 = inttoptr i64 %t781 to ptr
  %gml783 = load i64, ptr %gmp782, align 1, !alias.scope !4, !noalias !3
  %wp784 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t781, ptr %wp784, align 8, !alias.scope !3, !noalias !4
  %wp785 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml783, ptr %wp785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e674 word 0xb50023a8
  %r786.p = getelementptr inbounds i8, ptr %c, i64 64
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4
  %cmp787 = icmp ne i64 %r786, 0
  br i1 %cmp787, label %L_80029eae8, label %L_80029e678
L_80029e6c8_ft:
  ; @pc 0x80029e6c8 word 0xf9400a74
  %r922.p = getelementptr inbounds i8, ptr %c, i64 152
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %t923 = add i64 %r922, 16
  %gmp924 = inttoptr i64 %t923 to ptr
  %gml925 = load i64, ptr %gmp924, align 1, !alias.scope !4, !noalias !3
  %wp926 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml925, ptr %wp926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6cc word 0xaa1f03f8
  %t927 = or i64 0, 0
  %wp928 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t927, ptr %wp928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6d0 word 0x52800039
  %c929 = zext i32 1 to i64
  %wp930 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c929, ptr %wp930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6d4 word 0x72a00819
  %r931.p = getelementptr inbounds i8, ptr %c, i64 200
  %r931 = load i64, ptr %r931.p, align 8, !alias.scope !3, !noalias !4
  %t932 = and i64 %r931, -4294901761
  %t933 = or i64 %t932, 4194304
  %c934 = trunc i64 %t933 to i32
  %c935 = zext i32 %c934 to i64
  %wp936 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c935, ptr %wp936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6d8 word 0x5280191a
  %c937 = zext i32 200 to i64
  %wp938 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c937, ptr %wp938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6dc word 0x900156db
  %wp939 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34407407616, ptr %wp939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e6e0 word 0x9121237b
  %r940.p = getelementptr inbounds i8, ptr %c, i64 216
  %r940 = load i64, ptr %r940.p, align 8, !alias.scope !3, !noalias !4
  %t941 = add i64 %r940, 2120
  %wp942 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t941, ptr %wp942, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e6e4
L_80029e708_ft:
  ; @pc 0x80029e708 word 0x1000008b
  %wp1028 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34362484504, ptr %wp1028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e70c word 0x786a7b6c
  %r1029.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1029 = load i64, ptr %r1029.p, align 8, !alias.scope !3, !noalias !4
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %t1031 = shl i64 %r1030, 1
  %t1032 = add i64 %r1029, %t1031
  %gmp1033 = inttoptr i64 %t1032 to ptr
  %gml1034 = load i16, ptr %gmp1033, align 1, !alias.scope !4, !noalias !3
  %c1035 = zext i16 %gml1034 to i64
  %wp1036 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1035, ptr %wp1036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e710 word 0x8b0c096b
  %r1037.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1037 = load i64, ptr %r1037.p, align 8, !alias.scope !3, !noalias !4
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = shl i64 %r1038, 2
  %t1040 = add i64 %r1037, %t1039
  %wp1041 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1040, ptr %wp1041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e714 word 0xd61f0160
  %r1042.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1042 = load i64, ptr %r1042.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r1042, label %L_80029e714_jt_def [
    i64 34362484504, label %L_80029e718
    i64 34362484744, label %L_80029e808
    i64 34362484924, label %L_80029e8bc
    i64 34362485100, label %L_80029e96c
    i64 34362485576, label %L_80029eb48
    i64 34362485676, label %L_80029ebac
    i64 34362485932, label %L_80029ecac
    i64 34362486000, label %L_80029ecf0
    i64 34362486068, label %L_80029ed34
    i64 34362486136, label %L_80029ed78
    i64 34362486212, label %L_80029edc4
    i64 34362486280, label %L_80029ee08
    i64 34362486348, label %L_80029ee4c
    i64 34362486424, label %L_80029ee98
    i64 34362486500, label %L_80029eee4
    i64 34362486580, label %L_80029ef34
    i64 34362486744, label %L_80029efd8
    i64 34362486820, label %L_80029f024
    i64 34362486912, label %L_80029f080
    i64 34362486988, label %L_80029f0cc
  ]
L_80029e740_ft:
  ; @pc 0x80029e740 word 0xf94006cc
  %r1112.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1112 = load i64, ptr %r1112.p, align 8, !alias.scope !3, !noalias !4
  %t1113 = add i64 %r1112, 8
  %gmp1114 = inttoptr i64 %t1113 to ptr
  %gml1115 = load i64, ptr %gmp1114, align 1, !alias.scope !4, !noalias !3
  %wp1116 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1115, ptr %wp1116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e744 word 0x2a1f03e8
  %t1117 = or i32 0, 0
  %c1118 = zext i32 %t1117 to i64
  %wp1119 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1118, ptr %wp1119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e748 word 0xaa1f03eb
  %t1120 = or i64 0, 0
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1120, ptr %wp1121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e74c word 0xf94001ad
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %gmp1123 = inttoptr i64 %r1122 to ptr
  %gml1124 = load i64, ptr %gmp1123, align 1, !alias.scope !4, !noalias !3
  %wp1125 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1124, ptr %wp1125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e750 word 0x9b1a3129
  %r1126.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1126 = load i64, ptr %r1126.p, align 8, !alias.scope !3, !noalias !4
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %t1128 = mul i64 %r1127, %r1126
  %r1129.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1129 = load i64, ptr %r1129.p, align 8, !alias.scope !3, !noalias !4
  %t1130 = add i64 %r1129, %t1128
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1130, ptr %wp1131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e754 word 0xf940ca8c
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %t1133 = add i64 %r1132, 400
  %gmp1134 = inttoptr i64 %t1133 to ptr
  %gml1135 = load i64, ptr %gmp1134, align 1, !alias.scope !4, !noalias !3
  %wp1136 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1135, ptr %wp1136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e758 word 0x39426129
  %r1137.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1137 = load i64, ptr %r1137.p, align 8, !alias.scope !3, !noalias !4
  %t1138 = add i64 %r1137, 152
  %gmp1139 = inttoptr i64 %t1138 to ptr
  %gml1140 = load i8, ptr %gmp1139, align 1, !alias.scope !4, !noalias !3
  %c1141 = zext i8 %gml1140 to i64
  %wp1142 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1141, ptr %wp1142, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e75c
L_80029e784_ft:
  ; @pc 0x80029e784 word 0x34000211
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %c1232 = trunc i64 %r1231 to i32
  %cmp1233 = icmp eq i32 %c1232, 0
  br i1 %cmp1233, label %L_80029e7c4, label %L_80029e788_ft
L_80029e788_ft:
  ; @pc 0x80029e788 word 0xf1000610
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %t1235 = sub i64 %r1234, 1
  %fn1236 = icmp slt i64 %t1235, 0
  %fz1237 = icmp eq i64 %t1235, 0
  %fc1238 = icmp uge i64 %r1234, 1
  %fx11239 = xor i64 %r1234, 1
  %fx21240 = xor i64 %r1234, %t1235
  %fva1241 = and i64 %fx11239, %fx21240
  %fv1242 = icmp slt i64 %fva1241, 0
  %nz1243 = zext i1 %fn1236 to i64
  %zz1244 = zext i1 %fz1237 to i64
  %cz1245 = zext i1 %fc1238 to i64
  %vz1246 = zext i1 %fv1242 to i64
  %ns1247 = shl i64 %nz1243, 31
  %zs1248 = shl i64 %zz1244, 30
  %cs1249 = shl i64 %cz1245, 29
  %vs1250 = shl i64 %vz1246, 28
  %nzor1251 = or i64 %ns1247, %zs1248
  %cvor1252 = or i64 %cs1249, %vs1250
  %nzcv1253 = or i64 %nzor1251, %cvor1252
  %wp1254 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1253, ptr %wp1254, align 8, !alias.scope !3, !noalias !4
  %wp1255 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1235, ptr %wp1255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e78c word 0x54ffff41
  %r1256.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1256 = load i64, ptr %r1256.p, align 8, !alias.scope !3, !noalias !4
  %fsh1258 = lshr i64 %r1256, 30
  %ftr1259 = trunc i64 %fsh1258 to i1
  %cond1257 = xor i1 %ftr1259, true
  br i1 %cond1257, label %L_80029e774, label %L_80029e790
L_80029e7a4_ft:
  ; @pc 0x80029e7a4 word 0x14000015
  br label %L_80029e7f8
L_80029e7b0_ft:
  ; @pc 0x80029e7b0 word 0x386b694c
  %r1323.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1323 = load i64, ptr %r1323.p, align 8, !alias.scope !3, !noalias !4
  %r1324.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1324 = load i64, ptr %r1324.p, align 8, !alias.scope !3, !noalias !4
  %t1325 = add i64 %r1323, %r1324
  %gmp1326 = inttoptr i64 %t1325 to ptr
  %gml1327 = load i8, ptr %gmp1326, align 1, !alias.scope !4, !noalias !3
  %c1328 = zext i8 %gml1327 to i64
  %wp1329 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1328, ptr %wp1329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7b4 word 0x91000569
  %r1330.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1330 = load i64, ptr %r1330.p, align 8, !alias.scope !3, !noalias !4
  %t1331 = add i64 %r1330, 1
  %wp1332 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1331, ptr %wp1332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7b8 word 0xaa0903eb
  %r1333.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1333 = load i64, ptr %r1333.p, align 8, !alias.scope !3, !noalias !4
  %t1334 = or i64 0, %r1333
  %wp1335 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1334, ptr %wp1335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7bc word 0x35ffff6c
  %r1336.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1336 = load i64, ptr %r1336.p, align 8, !alias.scope !3, !noalias !4
  %c1337 = trunc i64 %r1336 to i32
  %cmp1338 = icmp ne i32 %c1337, 0
  br i1 %cmp1338, label %L_80029e7a8, label %L_80029e7c0_ft
L_80029e7c0_ft:
  ; @pc 0x80029e7c0 word 0x140002b6
  br label %L_80029f298
L_80029e7d0_ft:
  ; @pc 0x80029e7d0 word 0xf940d28a
  %r1380.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1380 = load i64, ptr %r1380.p, align 8, !alias.scope !3, !noalias !4
  %t1381 = add i64 %r1380, 416
  %gmp1382 = inttoptr i64 %t1381 to ptr
  %gml1383 = load i64, ptr %gmp1382, align 1, !alias.scope !4, !noalias !3
  %wp1384 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1383, ptr %wp1384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7d4 word 0x1a9f810b
  %r1385.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1385 = load i64, ptr %r1385.p, align 8, !alias.scope !3, !noalias !4
  %c1386 = trunc i64 %r1385 to i32
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %fsh1389 = lshr i64 %r1387, 29
  %ftr1390 = trunc i64 %fsh1389 to i1
  %fsh1391 = lshr i64 %r1387, 30
  %ftr1392 = trunc i64 %fsh1391 to i1
  %fnz1393 = xor i1 %ftr1392, true
  %cond1388 = and i1 %ftr1390, %fnz1393
  %sel1394 = select i1 %cond1388, i32 %c1386, i32 0
  %c1395 = zext i32 %sel1394 to i64
  %wp1396 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1395, ptr %wp1396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7d8 word 0x382b4949
  %r1397.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1397 = load i64, ptr %r1397.p, align 8, !alias.scope !3, !noalias !4
  %r1398.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1398 = load i64, ptr %r1398.p, align 8, !alias.scope !3, !noalias !4
  %c1399 = trunc i64 %r1398 to i32
  %c1400 = zext i32 %c1399 to i64
  %t1401 = add i64 %r1397, %c1400
  %r1402.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1402 = load i64, ptr %r1402.p, align 8, !alias.scope !3, !noalias !4
  %c1403 = trunc i64 %r1402 to i32
  %c1404 = trunc i32 %c1403 to i8
  %gmp1405 = inttoptr i64 %t1401 to ptr
  store i8 %c1404, ptr %gmp1405, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e7dc word 0xb941ea89
  %r1406.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1406 = load i64, ptr %r1406.p, align 8, !alias.scope !3, !noalias !4
  %t1407 = add i64 %r1406, 488
  %gmp1408 = inttoptr i64 %t1407 to ptr
  %gml1409 = load i32, ptr %gmp1408, align 1, !alias.scope !4, !noalias !3
  %c1410 = zext i32 %gml1409 to i64
  %wp1411 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1410, ptr %wp1411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e7e0 word 0xf940fa8a
  %r1412.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1412 = load i64, ptr %r1412.p, align 8, !alias.scope !3, !noalias !4
  %t1413 = add i64 %r1412, 496
  %gmp1414 = inttoptr i64 %t1413 to ptr
  %gml1415 = load i64, ptr %gmp1414, align 1, !alias.scope !4, !noalias !3
  %wp1416 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1415, ptr %wp1416, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e7e4
L_80029e804_ft:
  ; @pc 0x80029e804 word 0x17ffffa0
  br label %L_80029e684
L_80029e830_ft:
  ; @pc 0x80029e830 word 0xf94006cc
  %r1574.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1574 = load i64, ptr %r1574.p, align 8, !alias.scope !3, !noalias !4
  %t1575 = add i64 %r1574, 8
  %gmp1576 = inttoptr i64 %t1575 to ptr
  %gml1577 = load i64, ptr %gmp1576, align 1, !alias.scope !4, !noalias !3
  %wp1578 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1577, ptr %wp1578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e834 word 0x2a1f03e8
  %t1579 = or i32 0, 0
  %c1580 = zext i32 %t1579 to i64
  %wp1581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1580, ptr %wp1581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e838 word 0xaa1f03eb
  %t1582 = or i64 0, 0
  %wp1583 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1582, ptr %wp1583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e83c word 0xf94001ad
  %r1584.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1584 = load i64, ptr %r1584.p, align 8, !alias.scope !3, !noalias !4
  %gmp1585 = inttoptr i64 %r1584 to ptr
  %gml1586 = load i64, ptr %gmp1585, align 1, !alias.scope !4, !noalias !3
  %wp1587 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1586, ptr %wp1587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e840 word 0x9b1a3129
  %r1588.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1588 = load i64, ptr %r1588.p, align 8, !alias.scope !3, !noalias !4
  %r1589.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1589 = load i64, ptr %r1589.p, align 8, !alias.scope !3, !noalias !4
  %t1590 = mul i64 %r1589, %r1588
  %r1591.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1591 = load i64, ptr %r1591.p, align 8, !alias.scope !3, !noalias !4
  %t1592 = add i64 %r1591, %t1590
  %wp1593 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1592, ptr %wp1593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e844 word 0xf940528c
  %r1594.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1594 = load i64, ptr %r1594.p, align 8, !alias.scope !3, !noalias !4
  %t1595 = add i64 %r1594, 160
  %gmp1596 = inttoptr i64 %t1595 to ptr
  %gml1597 = load i64, ptr %gmp1596, align 1, !alias.scope !4, !noalias !3
  %wp1598 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1597, ptr %wp1598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e848 word 0xb9409929
  %r1599.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1599 = load i64, ptr %r1599.p, align 8, !alias.scope !3, !noalias !4
  %t1600 = add i64 %r1599, 152
  %gmp1601 = inttoptr i64 %t1600 to ptr
  %gml1602 = load i32, ptr %gmp1601, align 1, !alias.scope !4, !noalias !3
  %c1603 = zext i32 %gml1602 to i64
  %wp1604 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1603, ptr %wp1604, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e84c
L_80029e874_ft:
  ; @pc 0x80029e874 word 0x34000131
  %r1693.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1693 = load i64, ptr %r1693.p, align 8, !alias.scope !3, !noalias !4
  %c1694 = trunc i64 %r1693 to i32
  %cmp1695 = icmp eq i32 %c1694, 0
  br i1 %cmp1695, label %L_80029e898, label %L_80029e878_ft
L_80029e878_ft:
  ; @pc 0x80029e878 word 0xf1000610
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %t1697 = sub i64 %r1696, 1
  %fn1698 = icmp slt i64 %t1697, 0
  %fz1699 = icmp eq i64 %t1697, 0
  %fc1700 = icmp uge i64 %r1696, 1
  %fx11701 = xor i64 %r1696, 1
  %fx21702 = xor i64 %r1696, %t1697
  %fva1703 = and i64 %fx11701, %fx21702
  %fv1704 = icmp slt i64 %fva1703, 0
  %nz1705 = zext i1 %fn1698 to i64
  %zz1706 = zext i1 %fz1699 to i64
  %cz1707 = zext i1 %fc1700 to i64
  %vz1708 = zext i1 %fv1704 to i64
  %ns1709 = shl i64 %nz1705, 31
  %zs1710 = shl i64 %zz1706, 30
  %cs1711 = shl i64 %cz1707, 29
  %vs1712 = shl i64 %vz1708, 28
  %nzor1713 = or i64 %ns1709, %zs1710
  %cvor1714 = or i64 %cs1711, %vs1712
  %nzcv1715 = or i64 %nzor1713, %cvor1714
  %wp1716 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1715, ptr %wp1716, align 8, !alias.scope !3, !noalias !4
  %wp1717 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1697, ptr %wp1717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e87c word 0x54ffff41
  %r1718.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1718 = load i64, ptr %r1718.p, align 8, !alias.scope !3, !noalias !4
  %fsh1720 = lshr i64 %r1718, 30
  %ftr1721 = trunc i64 %fsh1720 to i1
  %cond1719 = xor i1 %ftr1721, true
  br i1 %cond1719, label %L_80029e864, label %L_80029e880
L_80029e894_ft:
  ; @pc 0x80029e894 word 0x17ffffd9
  br label %L_80029e7f8
L_80029e8a4_ft:
  ; @pc 0x80029e8a4 word 0xf9405a8a
  %r1802.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1802 = load i64, ptr %r1802.p, align 8, !alias.scope !3, !noalias !4
  %t1803 = add i64 %r1802, 176
  %gmp1804 = inttoptr i64 %t1803 to ptr
  %gml1805 = load i64, ptr %gmp1804, align 1, !alias.scope !4, !noalias !3
  %wp1806 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1805, ptr %wp1806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8a8 word 0x1a9f810b
  %r1807.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1807 = load i64, ptr %r1807.p, align 8, !alias.scope !3, !noalias !4
  %c1808 = trunc i64 %r1807 to i32
  %r1809.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1809 = load i64, ptr %r1809.p, align 8, !alias.scope !3, !noalias !4
  %fsh1811 = lshr i64 %r1809, 29
  %ftr1812 = trunc i64 %fsh1811 to i1
  %fsh1813 = lshr i64 %r1809, 30
  %ftr1814 = trunc i64 %fsh1813 to i1
  %fnz1815 = xor i1 %ftr1814, true
  %cond1810 = and i1 %ftr1812, %fnz1815
  %sel1816 = select i1 %cond1810, i32 %c1808, i32 0
  %c1817 = zext i32 %sel1816 to i64
  %wp1818 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1817, ptr %wp1818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8ac word 0xb82b5949
  %r1819.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1819 = load i64, ptr %r1819.p, align 8, !alias.scope !3, !noalias !4
  %r1820.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1820 = load i64, ptr %r1820.p, align 8, !alias.scope !3, !noalias !4
  %c1821 = trunc i64 %r1820 to i32
  %c1822 = zext i32 %c1821 to i64
  %t1823 = shl i64 %c1822, 2
  %t1824 = add i64 %r1819, %t1823
  %r1825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1825 = load i64, ptr %r1825.p, align 8, !alias.scope !3, !noalias !4
  %c1826 = trunc i64 %r1825 to i32
  %gmp1827 = inttoptr i64 %t1824 to ptr
  store i32 %c1826, ptr %gmp1827, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e8b0 word 0xb940fa89
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %t1829 = add i64 %r1828, 248
  %gmp1830 = inttoptr i64 %t1829 to ptr
  %gml1831 = load i32, ptr %gmp1830, align 1, !alias.scope !4, !noalias !3
  %c1832 = zext i32 %gml1831 to i64
  %wp1833 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1832, ptr %wp1833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8b4 word 0xf940828a
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %t1835 = add i64 %r1834, 256
  %gmp1836 = inttoptr i64 %t1835 to ptr
  %gml1837 = load i64, ptr %gmp1836, align 1, !alias.scope !4, !noalias !3
  %wp1838 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1837, ptr %wp1838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8b8 word 0x17ffffcb
  br label %L_80029e7e4
L_80029e8e4_ft:
  ; @pc 0x80029e8e4 word 0xf94006cb
  %r1908.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1908 = load i64, ptr %r1908.p, align 8, !alias.scope !3, !noalias !4
  %t1909 = add i64 %r1908, 8
  %gmp1910 = inttoptr i64 %t1909 to ptr
  %gml1911 = load i64, ptr %gmp1910, align 1, !alias.scope !4, !noalias !3
  %wp1912 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1911, ptr %wp1912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8e8 word 0x9b1a2d08
  %r1913.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1913 = load i64, ptr %r1913.p, align 8, !alias.scope !3, !noalias !4
  %r1914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1914 = load i64, ptr %r1914.p, align 8, !alias.scope !3, !noalias !4
  %t1915 = mul i64 %r1914, %r1913
  %r1916.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1916 = load i64, ptr %r1916.p, align 8, !alias.scope !3, !noalias !4
  %t1917 = add i64 %r1916, %t1915
  %wp1918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1917, ptr %wp1918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8ec word 0xf942aa8b
  %r1919.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1919 = load i64, ptr %r1919.p, align 8, !alias.scope !3, !noalias !4
  %t1920 = add i64 %r1919, 1360
  %gmp1921 = inttoptr i64 %t1920 to ptr
  %gml1922 = load i64, ptr %gmp1921, align 1, !alias.scope !4, !noalias !3
  %wp1923 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1922, ptr %wp1923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8f0 word 0xf940014c
  %r1924.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1924 = load i64, ptr %r1924.p, align 8, !alias.scope !3, !noalias !4
  %gmp1925 = inttoptr i64 %r1924 to ptr
  %gml1926 = load i64, ptr %gmp1925, align 1, !alias.scope !4, !noalias !3
  %wp1927 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1926, ptr %wp1927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8f4 word 0xf940016d
  %r1928.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1928 = load i64, ptr %r1928.p, align 8, !alias.scope !3, !noalias !4
  %gmp1929 = inttoptr i64 %r1928 to ptr
  %gml1930 = load i64, ptr %gmp1929, align 1, !alias.scope !4, !noalias !3
  %wp1931 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1930, ptr %wp1931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8f8 word 0xb9409908
  %r1932.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1932 = load i64, ptr %r1932.p, align 8, !alias.scope !3, !noalias !4
  %t1933 = add i64 %r1932, 152
  %gmp1934 = inttoptr i64 %t1933 to ptr
  %gml1935 = load i32, ptr %gmp1934, align 1, !alias.scope !4, !noalias !3
  %c1936 = zext i32 %gml1935 to i64
  %wp1937 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1936, ptr %wp1937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e8fc word 0xeb0d019f
  %r1938.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1938 = load i64, ptr %r1938.p, align 8, !alias.scope !3, !noalias !4
  %r1939.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1939 = load i64, ptr %r1939.p, align 8, !alias.scope !3, !noalias !4
  %t1940 = sub i64 %r1938, %r1939
  %fn1941 = icmp slt i64 %t1940, 0
  %fz1942 = icmp eq i64 %t1940, 0
  %fc1943 = icmp uge i64 %r1938, %r1939
  %fx11944 = xor i64 %r1938, %r1939
  %fx21945 = xor i64 %r1938, %t1940
  %fva1946 = and i64 %fx11944, %fx21945
  %fv1947 = icmp slt i64 %fva1946, 0
  %nz1948 = zext i1 %fn1941 to i64
  %zz1949 = zext i1 %fz1942 to i64
  %cz1950 = zext i1 %fc1943 to i64
  %vz1951 = zext i1 %fv1947 to i64
  %ns1952 = shl i64 %nz1948, 31
  %zs1953 = shl i64 %zz1949, 30
  %cs1954 = shl i64 %cz1950, 29
  %vs1955 = shl i64 %vz1951, 28
  %nzor1956 = or i64 %ns1952, %zs1953
  %cvor1957 = or i64 %cs1954, %vs1955
  %nzcv1958 = or i64 %nzor1956, %cvor1957
  %wp1959 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1958, ptr %wp1959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e900 word 0x54004240
  %r1960.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1960 = load i64, ptr %r1960.p, align 8, !alias.scope !3, !noalias !4
  %fsh1962 = lshr i64 %r1960, 30
  %cond1961 = trunc i64 %fsh1962 to i1
  br i1 %cond1961, label %L_80029f148, label %L_80029e904_ft
L_80029e904_ft:
  ; @pc 0x80029e904 word 0xaa1f03ee
  %t1963 = or i64 0, 0
  %wp1964 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1963, ptr %wp1964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e908 word 0x2a1f03ea
  %t1965 = or i32 0, 0
  %c1966 = zext i32 %t1965 to i64
  %wp1967 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1966, ptr %wp1967, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e90c
L_80029e920_ft:
  ; @pc 0x80029e920 word 0x340000b0
  %r2012.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2012 = load i64, ptr %r2012.p, align 8, !alias.scope !3, !noalias !4
  %c2013 = trunc i64 %r2012 to i32
  %cmp2014 = icmp eq i32 %c2013, 0
  br i1 %cmp2014, label %L_80029e934, label %L_80029e924_ft
L_80029e924_ft:
  ; @pc 0x80029e924 word 0x910005ef
  %r2015.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2015 = load i64, ptr %r2015.p, align 8, !alias.scope !3, !noalias !4
  %t2016 = add i64 %r2015, 1
  %wp2017 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2016, ptr %wp2017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e928 word 0xeb0f033f
  %r2018.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2018 = load i64, ptr %r2018.p, align 8, !alias.scope !3, !noalias !4
  %r2019.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2019 = load i64, ptr %r2019.p, align 8, !alias.scope !3, !noalias !4
  %t2020 = sub i64 %r2018, %r2019
  %fn2021 = icmp slt i64 %t2020, 0
  %fz2022 = icmp eq i64 %t2020, 0
  %fc2023 = icmp uge i64 %r2018, %r2019
  %fx12024 = xor i64 %r2018, %r2019
  %fx22025 = xor i64 %r2018, %t2020
  %fva2026 = and i64 %fx12024, %fx22025
  %fv2027 = icmp slt i64 %fva2026, 0
  %nz2028 = zext i1 %fn2021 to i64
  %zz2029 = zext i1 %fz2022 to i64
  %cz2030 = zext i1 %fc2023 to i64
  %vz2031 = zext i1 %fv2027 to i64
  %ns2032 = shl i64 %nz2028, 31
  %zs2033 = shl i64 %zz2029, 30
  %cs2034 = shl i64 %cz2030, 29
  %vs2035 = shl i64 %vz2031, 28
  %nzor2036 = or i64 %ns2032, %zs2033
  %cvor2037 = or i64 %cs2034, %vs2035
  %nzcv2038 = or i64 %nzor2036, %cvor2037
  %wp2039 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2038, ptr %wp2039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e92c word 0x54ffff21
  %r2040.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2040 = load i64, ptr %r2040.p, align 8, !alias.scope !3, !noalias !4
  %fsh2042 = lshr i64 %r2040, 30
  %ftr2043 = trunc i64 %fsh2042 to i1
  %cond2041 = xor i1 %ftr2043, true
  br i1 %cond2041, label %L_80029e910, label %L_80029e930_ft
L_80029e930_ft:
  ; @pc 0x80029e930 word 0x14000095
  br label %L_80029eb84
L_80029e940_ft:
  ; @pc 0x80029e940 word 0xf942b289
  %r2085.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2085 = load i64, ptr %r2085.p, align 8, !alias.scope !3, !noalias !4
  %t2086 = add i64 %r2085, 1376
  %gmp2087 = inttoptr i64 %t2086 to ptr
  %gml2088 = load i64, ptr %gmp2087, align 1, !alias.scope !4, !noalias !3
  %wp2089 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2088, ptr %wp2089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e944 word 0x1a9f814b
  %r2090.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2090 = load i64, ptr %r2090.p, align 8, !alias.scope !3, !noalias !4
  %c2091 = trunc i64 %r2090 to i32
  %r2092.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2092 = load i64, ptr %r2092.p, align 8, !alias.scope !3, !noalias !4
  %fsh2094 = lshr i64 %r2092, 29
  %ftr2095 = trunc i64 %fsh2094 to i1
  %fsh2096 = lshr i64 %r2092, 30
  %ftr2097 = trunc i64 %fsh2096 to i1
  %fnz2098 = xor i1 %ftr2097, true
  %cond2093 = and i1 %ftr2095, %fnz2098
  %sel2099 = select i1 %cond2093, i32 %c2091, i32 0
  %c2100 = zext i32 %sel2099 to i64
  %wp2101 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2100, ptr %wp2101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e948 word 0xb82b5928
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %r2103.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2103 = load i64, ptr %r2103.p, align 8, !alias.scope !3, !noalias !4
  %c2104 = trunc i64 %r2103 to i32
  %c2105 = zext i32 %c2104 to i64
  %t2106 = shl i64 %c2105, 2
  %t2107 = add i64 %r2102, %t2106
  %r2108.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2108 = load i64, ptr %r2108.p, align 8, !alias.scope !3, !noalias !4
  %c2109 = trunc i64 %r2108 to i32
  %gmp2110 = inttoptr i64 %t2107 to ptr
  store i32 %c2109, ptr %gmp2110, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029e94c word 0xb945aa88
  %r2111.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2111 = load i64, ptr %r2111.p, align 8, !alias.scope !3, !noalias !4
  %t2112 = add i64 %r2111, 1448
  %gmp2113 = inttoptr i64 %t2112 to ptr
  %gml2114 = load i32, ptr %gmp2113, align 1, !alias.scope !4, !noalias !3
  %c2115 = zext i32 %gml2114 to i64
  %wp2116 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2115, ptr %wp2116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e950 word 0xf942da89
  %r2117.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2117 = load i64, ptr %r2117.p, align 8, !alias.scope !3, !noalias !4
  %t2118 = add i64 %r2117, 1456
  %gmp2119 = inttoptr i64 %t2118 to ptr
  %gml2120 = load i64, ptr %gmp2119, align 1, !alias.scope !4, !noalias !3
  %wp2121 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2120, ptr %wp2121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e954 word 0x6b0a011f
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %c2123 = trunc i64 %r2122 to i32
  %r2124.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2124 = load i64, ptr %r2124.p, align 8, !alias.scope !3, !noalias !4
  %c2125 = trunc i64 %r2124 to i32
  %t2126 = sub i32 %c2123, %c2125
  %fn2127 = icmp slt i32 %t2126, 0
  %fz2128 = icmp eq i32 %t2126, 0
  %fc2129 = icmp uge i32 %c2123, %c2125
  %fx12130 = xor i32 %c2123, %c2125
  %fx22131 = xor i32 %c2123, %t2126
  %fva2132 = and i32 %fx12130, %fx22131
  %fv2133 = icmp slt i32 %fva2132, 0
  %nz2134 = zext i1 %fn2127 to i64
  %zz2135 = zext i1 %fz2128 to i64
  %cz2136 = zext i1 %fc2129 to i64
  %vz2137 = zext i1 %fv2133 to i64
  %ns2138 = shl i64 %nz2134, 31
  %zs2139 = shl i64 %zz2135, 30
  %cs2140 = shl i64 %cz2136, 29
  %vs2141 = shl i64 %vz2137, 28
  %nzor2142 = or i64 %ns2138, %zs2139
  %cvor2143 = or i64 %cs2140, %vs2141
  %nzcv2144 = or i64 %nzor2142, %cvor2143
  %wp2145 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2144, ptr %wp2145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e958 word 0x1a9f8148
  %r2146.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2146 = load i64, ptr %r2146.p, align 8, !alias.scope !3, !noalias !4
  %c2147 = trunc i64 %r2146 to i32
  %r2148.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2148 = load i64, ptr %r2148.p, align 8, !alias.scope !3, !noalias !4
  %fsh2150 = lshr i64 %r2148, 29
  %ftr2151 = trunc i64 %fsh2150 to i1
  %fsh2152 = lshr i64 %r2148, 30
  %ftr2153 = trunc i64 %fsh2152 to i1
  %fnz2154 = xor i1 %ftr2153, true
  %cond2149 = and i1 %ftr2151, %fnz2154
  %sel2155 = select i1 %cond2149, i32 %c2147, i32 0
  %c2156 = zext i32 %sel2155 to i64
  %wp2157 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2156, ptr %wp2157, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e95c
L_80029e994_ft:
  ; @pc 0x80029e994 word 0xf94006cc
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %t2251 = add i64 %r2250, 8
  %gmp2252 = inttoptr i64 %t2251 to ptr
  %gml2253 = load i64, ptr %gmp2252, align 1, !alias.scope !4, !noalias !3
  %wp2254 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2253, ptr %wp2254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e998 word 0x2a1f03e8
  %t2255 = or i32 0, 0
  %c2256 = zext i32 %t2255 to i64
  %wp2257 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2256, ptr %wp2257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e99c word 0xaa1f03eb
  %t2258 = or i64 0, 0
  %wp2259 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2258, ptr %wp2259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9a0 word 0xf94001ad
  %r2260.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2260 = load i64, ptr %r2260.p, align 8, !alias.scope !3, !noalias !4
  %gmp2261 = inttoptr i64 %r2260 to ptr
  %gml2262 = load i64, ptr %gmp2261, align 1, !alias.scope !4, !noalias !3
  %wp2263 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2262, ptr %wp2263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9a4 word 0x9b1a3129
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %r2265.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2265 = load i64, ptr %r2265.p, align 8, !alias.scope !3, !noalias !4
  %t2266 = mul i64 %r2265, %r2264
  %r2267.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2267 = load i64, ptr %r2267.p, align 8, !alias.scope !3, !noalias !4
  %t2268 = add i64 %r2267, %t2266
  %wp2269 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2268, ptr %wp2269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9a8 word 0xf942328c
  %r2270.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2270 = load i64, ptr %r2270.p, align 8, !alias.scope !3, !noalias !4
  %t2271 = add i64 %r2270, 1120
  %gmp2272 = inttoptr i64 %t2271 to ptr
  %gml2273 = load i64, ptr %gmp2272, align 1, !alias.scope !4, !noalias !3
  %wp2274 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2273, ptr %wp2274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9ac word 0x39426129
  %r2275.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2275 = load i64, ptr %r2275.p, align 8, !alias.scope !3, !noalias !4
  %t2276 = add i64 %r2275, 152
  %gmp2277 = inttoptr i64 %t2276 to ptr
  %gml2278 = load i8, ptr %gmp2277, align 1, !alias.scope !4, !noalias !3
  %c2279 = zext i8 %gml2278 to i64
  %wp2280 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2279, ptr %wp2280, align 8, !alias.scope !3, !noalias !4
  br label %L_80029e9b0
L_80029e9d8_ft:
  ; @pc 0x80029e9d8 word 0x34000091
  %r2369.p = getelementptr inbounds i8, ptr %c, i64 136
  %r2369 = load i64, ptr %r2369.p, align 8, !alias.scope !3, !noalias !4
  %c2370 = trunc i64 %r2369 to i32
  %cmp2371 = icmp eq i32 %c2370, 0
  br i1 %cmp2371, label %L_80029e9e8, label %L_80029e9dc_ft
L_80029e9dc_ft:
  ; @pc 0x80029e9dc word 0xf1000610
  %r2372.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2372 = load i64, ptr %r2372.p, align 8, !alias.scope !3, !noalias !4
  %t2373 = sub i64 %r2372, 1
  %fn2374 = icmp slt i64 %t2373, 0
  %fz2375 = icmp eq i64 %t2373, 0
  %fc2376 = icmp uge i64 %r2372, 1
  %fx12377 = xor i64 %r2372, 1
  %fx22378 = xor i64 %r2372, %t2373
  %fva2379 = and i64 %fx12377, %fx22378
  %fv2380 = icmp slt i64 %fva2379, 0
  %nz2381 = zext i1 %fn2374 to i64
  %zz2382 = zext i1 %fz2375 to i64
  %cz2383 = zext i1 %fc2376 to i64
  %vz2384 = zext i1 %fv2380 to i64
  %ns2385 = shl i64 %nz2381, 31
  %zs2386 = shl i64 %zz2382, 30
  %cs2387 = shl i64 %cz2383, 29
  %vs2388 = shl i64 %vz2384, 28
  %nzor2389 = or i64 %ns2385, %zs2386
  %cvor2390 = or i64 %cs2387, %vs2388
  %nzcv2391 = or i64 %nzor2389, %cvor2390
  %wp2392 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2391, ptr %wp2392, align 8, !alias.scope !3, !noalias !4
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2373, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9e0 word 0x54ffff41
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %fsh2396 = lshr i64 %r2394, 30
  %ftr2397 = trunc i64 %fsh2396 to i1
  %cond2395 = xor i1 %ftr2397, true
  br i1 %cond2395, label %L_80029e9c8, label %L_80029e9e4_ft
L_80029e9e4_ft:
  ; @pc 0x80029e9e4 word 0x14000087
  br label %L_80029ec00
L_80029e9f4_ft:
  ; @pc 0x80029e9f4 word 0xf9423a8a
  %r2439.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2439 = load i64, ptr %r2439.p, align 8, !alias.scope !3, !noalias !4
  %t2440 = add i64 %r2439, 1136
  %gmp2441 = inttoptr i64 %t2440 to ptr
  %gml2442 = load i64, ptr %gmp2441, align 1, !alias.scope !4, !noalias !3
  %wp2443 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2442, ptr %wp2443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9f8 word 0x1a9f810b
  %r2444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2444 = load i64, ptr %r2444.p, align 8, !alias.scope !3, !noalias !4
  %c2445 = trunc i64 %r2444 to i32
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %fsh2448 = lshr i64 %r2446, 29
  %ftr2449 = trunc i64 %fsh2448 to i1
  %fsh2450 = lshr i64 %r2446, 30
  %ftr2451 = trunc i64 %fsh2450 to i1
  %fnz2452 = xor i1 %ftr2451, true
  %cond2447 = and i1 %ftr2449, %fnz2452
  %sel2453 = select i1 %cond2447, i32 %c2445, i32 0
  %c2454 = zext i32 %sel2453 to i64
  %wp2455 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2454, ptr %wp2455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029e9fc word 0x382b4949
  %r2456.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2456 = load i64, ptr %r2456.p, align 8, !alias.scope !3, !noalias !4
  %r2457.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2457 = load i64, ptr %r2457.p, align 8, !alias.scope !3, !noalias !4
  %c2458 = trunc i64 %r2457 to i32
  %c2459 = zext i32 %c2458 to i64
  %t2460 = add i64 %r2456, %c2459
  %r2461.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2461 = load i64, ptr %r2461.p, align 8, !alias.scope !3, !noalias !4
  %c2462 = trunc i64 %r2461 to i32
  %c2463 = trunc i32 %c2462 to i8
  %gmp2464 = inttoptr i64 %t2460 to ptr
  store i8 %c2463, ptr %gmp2464, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ea00 word 0xb944ba89
  %r2465.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2465 = load i64, ptr %r2465.p, align 8, !alias.scope !3, !noalias !4
  %t2466 = add i64 %r2465, 1208
  %gmp2467 = inttoptr i64 %t2466 to ptr
  %gml2468 = load i32, ptr %gmp2467, align 1, !alias.scope !4, !noalias !3
  %c2469 = zext i32 %gml2468 to i64
  %wp2470 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2469, ptr %wp2470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea04 word 0xf942628a
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %t2472 = add i64 %r2471, 1216
  %gmp2473 = inttoptr i64 %t2472 to ptr
  %gml2474 = load i64, ptr %gmp2473, align 1, !alias.scope !4, !noalias !3
  %wp2475 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2474, ptr %wp2475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea08 word 0x17ffff77
  br label %L_80029e7e4
L_80029ea20_ft:
  ; @pc 0x80029ea20 word 0x3400400e
  %r2520.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2520 = load i64, ptr %r2520.p, align 8, !alias.scope !3, !noalias !4
  %c2521 = trunc i64 %r2520 to i32
  %cmp2522 = icmp eq i32 %c2521, 0
  br i1 %cmp2522, label %L_80029f220, label %L_80029ea24_ft
L_80029ea24_ft:
  ; @pc 0x80029ea24 word 0x910005ad
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %t2524 = add i64 %r2523, 1
  %wp2525 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2524, ptr %wp2525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea28 word 0xeb0d033f
  %r2526.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2526 = load i64, ptr %r2526.p, align 8, !alias.scope !3, !noalias !4
  %r2527.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2527 = load i64, ptr %r2527.p, align 8, !alias.scope !3, !noalias !4
  %t2528 = sub i64 %r2526, %r2527
  %fn2529 = icmp slt i64 %t2528, 0
  %fz2530 = icmp eq i64 %t2528, 0
  %fc2531 = icmp uge i64 %r2526, %r2527
  %fx12532 = xor i64 %r2526, %r2527
  %fx22533 = xor i64 %r2526, %t2528
  %fva2534 = and i64 %fx12532, %fx22533
  %fv2535 = icmp slt i64 %fva2534, 0
  %nz2536 = zext i1 %fn2529 to i64
  %zz2537 = zext i1 %fz2530 to i64
  %cz2538 = zext i1 %fc2531 to i64
  %vz2539 = zext i1 %fv2535 to i64
  %ns2540 = shl i64 %nz2536, 31
  %zs2541 = shl i64 %zz2537, 30
  %cs2542 = shl i64 %cz2538, 29
  %vs2543 = shl i64 %vz2539, 28
  %nzor2544 = or i64 %ns2540, %zs2541
  %cvor2545 = or i64 %cs2542, %vs2543
  %nzcv2546 = or i64 %nzor2544, %cvor2545
  %wp2547 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2546, ptr %wp2547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea2c word 0x54ffff21
  %r2548.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2548 = load i64, ptr %r2548.p, align 8, !alias.scope !3, !noalias !4
  %fsh2550 = lshr i64 %r2548, 30
  %ftr2551 = trunc i64 %fsh2550 to i1
  %cond2549 = xor i1 %ftr2551, true
  br i1 %cond2549, label %L_80029ea10, label %L_80029ea30
L_80029ea3c_ft:
  ; @pc 0x80029ea3c word 0x92407d6c
  %r2582.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2582 = load i64, ptr %r2582.p, align 8, !alias.scope !3, !noalias !4
  %t2583 = and i64 %r2582, 4294967295
  %wp2584 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2583, ptr %wp2584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea40 word 0x937d7d6b
  %r2585.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2585 = load i64, ptr %r2585.p, align 8, !alias.scope !3, !noalias !4
  %ror2586 = call i64 @llvm.fshr.i64(i64 %r2585, i64 %r2585, i64 61)
  %t2587 = lshr i64 %r2585, 31
  %t2588 = and i64 %t2587, 1
  %t2589 = sub i64 0, %t2588
  %t2590 = and i64 %t2589, -34359738368
  %t2591 = and i64 %ror2586, 34359738360
  %t2592 = or i64 %t2590, %t2591
  %wp2593 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2592, ptr %wp2593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea44 word 0x1100079c
  %r2594.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2594 = load i64, ptr %r2594.p, align 8, !alias.scope !3, !noalias !4
  %c2595 = trunc i64 %r2594 to i32
  %t2596 = add i32 %c2595, 1
  %c2597 = zext i32 %t2596 to i64
  %wp2598 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c2597, ptr %wp2598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea48 word 0xf86b692b
  %r2599.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2599 = load i64, ptr %r2599.p, align 8, !alias.scope !3, !noalias !4
  %r2600.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2600 = load i64, ptr %r2600.p, align 8, !alias.scope !3, !noalias !4
  %t2601 = add i64 %r2599, %r2600
  %gmp2602 = inttoptr i64 %t2601 to ptr
  %gml2603 = load i64, ptr %gmp2602, align 1, !alias.scope !4, !noalias !3
  %wp2604 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2603, ptr %wp2604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea4c word 0xeb0b015f
  %r2605.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2605 = load i64, ptr %r2605.p, align 8, !alias.scope !3, !noalias !4
  %r2606.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2606 = load i64, ptr %r2606.p, align 8, !alias.scope !3, !noalias !4
  %t2607 = sub i64 %r2605, %r2606
  %fn2608 = icmp slt i64 %t2607, 0
  %fz2609 = icmp eq i64 %t2607, 0
  %fc2610 = icmp uge i64 %r2605, %r2606
  %fx12611 = xor i64 %r2605, %r2606
  %fx22612 = xor i64 %r2605, %t2607
  %fva2613 = and i64 %fx12611, %fx22612
  %fv2614 = icmp slt i64 %fva2613, 0
  %nz2615 = zext i1 %fn2608 to i64
  %zz2616 = zext i1 %fz2609 to i64
  %cz2617 = zext i1 %fc2610 to i64
  %vz2618 = zext i1 %fv2614 to i64
  %ns2619 = shl i64 %nz2615, 31
  %zs2620 = shl i64 %zz2616, 30
  %cs2621 = shl i64 %cz2617, 29
  %vs2622 = shl i64 %vz2618, 28
  %nzor2623 = or i64 %ns2619, %zs2620
  %cvor2624 = or i64 %cs2621, %vs2622
  %nzcv2625 = or i64 %nzor2623, %cvor2624
  %wp2626 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2625, ptr %wp2626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea50 word 0x54fffde1
  %r2627.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2627 = load i64, ptr %r2627.p, align 8, !alias.scope !3, !noalias !4
  %fsh2629 = lshr i64 %r2627, 30
  %ftr2630 = trunc i64 %fsh2629 to i1
  %cond2628 = xor i1 %ftr2630, true
  br i1 %cond2628, label %L_80029ea0c, label %L_80029ea54_ft
L_80029ea54_ft:
  ; @pc 0x80029ea54 word 0x140001f3
  br label %L_80029f220
L_80029ea6c_ft:
  ; @pc 0x80029ea6c word 0xf940a915
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %t2650 = add i64 %r2649, 336
  %gmp2651 = inttoptr i64 %t2650 to ptr
  %gml2652 = load i64, ptr %gmp2651, align 1, !alias.scope !4, !noalias !3
  %wp2653 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2652, ptr %wp2653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea70 word 0x08dfff08
  %r2654.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2654 = load i64, ptr %r2654.p, align 8, !alias.scope !3, !noalias !4
  %atp2655 = inttoptr i64 %r2654 to ptr
  %lda2656 = load atomic i8, ptr %atp2655 acquire, align 1, !alias.scope !4, !noalias !3
  %c2657 = zext i8 %lda2656 to i64
  %wp2658 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2657, ptr %wp2658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea74 word 0x360034e8
  %r2659.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2659 = load i64, ptr %r2659.p, align 8, !alias.scope !3, !noalias !4
  %t2660 = and i64 %r2659, 1
  %cmp2661 = icmp eq i64 %t2660, 0
  br i1 %cmp2661, label %L_80029f110, label %L_80029ea78
L_80029ea7c_ft:
  ; @pc 0x80029ea7c word 0xf94002a8
  %r2664.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2664 = load i64, ptr %r2664.p, align 8, !alias.scope !3, !noalias !4
  %gmp2665 = inttoptr i64 %r2664 to ptr
  %gml2666 = load i64, ptr %gmp2665, align 1, !alias.scope !4, !noalias !3
  %wp2667 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2666, ptr %wp2667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea80 word 0xb001b6c1
  %wp2668 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419994624, ptr %wp2668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea84 word 0xaa1503e0
  %r2669.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2669 = load i64, ptr %r2669.p, align 8, !alias.scope !3, !noalias !4
  %t2670 = or i64 0, %r2669
  %wp2671 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2670, ptr %wp2671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea88 word 0xf9400108
  %r2672.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2672 = load i64, ptr %r2672.p, align 8, !alias.scope !3, !noalias !4
  %gmp2673 = inttoptr i64 %r2672 to ptr
  %gml2674 = load i64, ptr %gmp2673, align 1, !alias.scope !4, !noalias !3
  %wp2675 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2674, ptr %wp2675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea8c word 0xf9450421
  %r2676.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2676 = load i64, ptr %r2676.p, align 8, !alias.scope !3, !noalias !4
  %t2677 = add i64 %r2676, 2568
  %gmp2678 = inttoptr i64 %t2677 to ptr
  %gml2679 = load i64, ptr %gmp2678, align 1, !alias.scope !4, !noalias !3
  %wp2680 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2679, ptr %wp2680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea90 word 0xd63f0100
  %r2681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2681 = load i64, ptr %r2681.p, align 8, !alias.scope !3, !noalias !4
  %fp2682 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2681, ptr %fp2682, align 8, !alias.scope !3, !noalias !4
  %wp2683 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485396, ptr %wp2683, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029ea94 word 0xb4003180
  %r2684.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2684 = load i64, ptr %r2684.p, align 8, !alias.scope !3, !noalias !4
  %cmp2685 = icmp eq i64 %r2684, 0
  br i1 %cmp2685, label %L_80029f0c4, label %L_80029ea98_ft
L_80029ea98_ft:
  ; @pc 0x80029ea98 word 0xf9400ec8
  %r2686.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2686 = load i64, ptr %r2686.p, align 8, !alias.scope !3, !noalias !4
  %t2687 = add i64 %r2686, 24
  %gmp2688 = inttoptr i64 %t2687 to ptr
  %gml2689 = load i64, ptr %gmp2688, align 1, !alias.scope !4, !noalias !3
  %wp2690 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2689, ptr %wp2690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ea9c word 0xb40000c8
  %r2691.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2691 = load i64, ptr %r2691.p, align 8, !alias.scope !3, !noalias !4
  %cmp2692 = icmp eq i64 %r2691, 0
  br i1 %cmp2692, label %L_80029eab4, label %L_80029eaa0_ft
L_80029eaa0_ft:
  ; @pc 0x80029eaa0 word 0x91059109
  %r2693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2693 = load i64, ptr %r2693.p, align 8, !alias.scope !3, !noalias !4
  %t2694 = add i64 %r2693, 356
  %wp2695 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2694, ptr %wp2695, align 8, !alias.scope !3, !noalias !4
  br label %L_80029eaa4
L_80029eac0_ft:
  ; @pc 0x80029eac0 word 0x910592ba
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %t2738 = add i64 %r2737, 356
  %wp2739 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2738, ptr %wp2739, align 8, !alias.scope !3, !noalias !4
  br label %L_80029eac4
L_80029eadc_ft:
  ; @pc 0x80029eadc word 0x880a7f49
  %r2807.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2807 = load i64, ptr %r2807.p, align 8, !alias.scope !3, !noalias !4
  %atp2808 = inttoptr i64 %r2807 to ptr
  %fp2809 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2810 = load i64, ptr %fp2809, align 8, !alias.scope !3, !noalias !4
  %fp2811 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2812 = load i64, ptr %fp2811, align 8, !alias.scope !3, !noalias !4
  %fp2813 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2813, align 8, !alias.scope !3, !noalias !4
  %cmp2814 = icmp eq i64 %fv2810, %r2807
  %c2815 = trunc i64 %fv2812 to i32
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %c2817 = trunc i64 %r2816 to i32
  %cx2818 = cmpxchg ptr %atp2808, i32 %c2815, i32 %c2817 seq_cst seq_cst, align 4
  %cxok2819 = extractvalue { i32, i1 } %cx2818, 1
  %t2820 = and i1 %cmp2814, %cxok2819
  %sel2821 = select i1 %t2820, i32 0, i32 1
  %c2822 = zext i32 %sel2821 to i64
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2822, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eae0 word 0x34ffcf6a
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %c2825 = trunc i64 %r2824 to i32
  %cmp2826 = icmp eq i32 %c2825, 0
  br i1 %cmp2826, label %L_80029e4cc, label %L_80029eae4_ft
L_80029eae4_ft:
  ; @pc 0x80029eae4 word 0x17fffffb
  br label %L_80029ead0
L_80029eb10_ft:
  ; @pc 0x80029eb10 word 0xb9400d09
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %t2860 = add i64 %r2859, 12
  %gmp2861 = inttoptr i64 %t2860 to ptr
  %gml2862 = load i32, ptr %gmp2861, align 1, !alias.scope !4, !noalias !3
  %c2863 = zext i32 %gml2862 to i64
  %wp2864 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2863, ptr %wp2864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb14 word 0xb94022ea
  %r2865.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2865 = load i64, ptr %r2865.p, align 8, !alias.scope !3, !noalias !4
  %t2866 = add i64 %r2865, 32
  %gmp2867 = inttoptr i64 %t2866 to ptr
  %gml2868 = load i32, ptr %gmp2867, align 1, !alias.scope !4, !noalias !3
  %c2869 = zext i32 %gml2868 to i64
  %wp2870 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2869, ptr %wp2870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb18 word 0x6b0a013f
  %r2871.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2871 = load i64, ptr %r2871.p, align 8, !alias.scope !3, !noalias !4
  %c2872 = trunc i64 %r2871 to i32
  %r2873.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2873 = load i64, ptr %r2873.p, align 8, !alias.scope !3, !noalias !4
  %c2874 = trunc i64 %r2873 to i32
  %t2875 = sub i32 %c2872, %c2874
  %fn2876 = icmp slt i32 %t2875, 0
  %fz2877 = icmp eq i32 %t2875, 0
  %fc2878 = icmp uge i32 %c2872, %c2874
  %fx12879 = xor i32 %c2872, %c2874
  %fx22880 = xor i32 %c2872, %t2875
  %fva2881 = and i32 %fx12879, %fx22880
  %fv2882 = icmp slt i32 %fva2881, 0
  %nz2883 = zext i1 %fn2876 to i64
  %zz2884 = zext i1 %fz2877 to i64
  %cz2885 = zext i1 %fc2878 to i64
  %vz2886 = zext i1 %fv2882 to i64
  %ns2887 = shl i64 %nz2883, 31
  %zs2888 = shl i64 %zz2884, 30
  %cs2889 = shl i64 %cz2885, 29
  %vs2890 = shl i64 %vz2886, 28
  %nzor2891 = or i64 %ns2887, %zs2888
  %cvor2892 = or i64 %cs2889, %vs2890
  %nzcv2893 = or i64 %nzor2891, %cvor2892
  %wp2894 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2893, ptr %wp2894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb1c word 0x54ffd7a1
  %r2895.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2895 = load i64, ptr %r2895.p, align 8, !alias.scope !3, !noalias !4
  %fsh2897 = lshr i64 %r2895, 30
  %ftr2898 = trunc i64 %fsh2897 to i1
  %cond2896 = xor i1 %ftr2898, true
  br i1 %cond2896, label %L_80029e610, label %L_80029eb20_ft
L_80029eb20_ft:
  ; @pc 0x80029eb20 word 0xf9400100
  %r2899.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2899 = load i64, ptr %r2899.p, align 8, !alias.scope !3, !noalias !4
  %gmp2900 = inttoptr i64 %r2899 to ptr
  %gml2901 = load i64, ptr %gmp2900, align 1, !alias.scope !4, !noalias !3
  %wp2902 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2901, ptr %wp2902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb24 word 0xb4ffd760
  %r2903.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2903 = load i64, ptr %r2903.p, align 8, !alias.scope !3, !noalias !4
  %cmp2904 = icmp eq i64 %r2903, 0
  br i1 %cmp2904, label %L_80029e610, label %L_80029eb28_ft
L_80029eb28_ft:
  ; @pc 0x80029eb28 word 0x08dfff08
  %r2905.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2905 = load i64, ptr %r2905.p, align 8, !alias.scope !3, !noalias !4
  %atp2906 = inttoptr i64 %r2905 to ptr
  %lda2907 = load atomic i8, ptr %atp2906 acquire, align 1, !alias.scope !4, !noalias !3
  %c2908 = zext i8 %lda2907 to i64
  %wp2909 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2908, ptr %wp2909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb2c word 0x36003128
  %r2910.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2910 = load i64, ptr %r2910.p, align 8, !alias.scope !3, !noalias !4
  %t2911 = and i64 %r2910, 1
  %cmp2912 = icmp eq i64 %t2911, 0
  br i1 %cmp2912, label %L_80029f150, label %L_80029eb30
L_80029eb44_ft:
  ; @pc 0x80029eb44 word 0x17fffeb3
  br label %L_80029e610
L_80029eb64_ft:
  ; @pc 0x80029eb64 word 0xf9400689
  %r2963.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2963 = load i64, ptr %r2963.p, align 8, !alias.scope !3, !noalias !4
  %t2964 = add i64 %r2963, 8
  %gmp2965 = inttoptr i64 %t2964 to ptr
  %gml2966 = load i64, ptr %gmp2965, align 1, !alias.scope !4, !noalias !3
  %wp2967 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2966, ptr %wp2967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb68 word 0xf940014a
  %r2968.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2968 = load i64, ptr %r2968.p, align 8, !alias.scope !3, !noalias !4
  %gmp2969 = inttoptr i64 %r2968 to ptr
  %gml2970 = load i64, ptr %gmp2969, align 1, !alias.scope !4, !noalias !3
  %wp2971 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2970, ptr %wp2971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb6c word 0xf940012b
  %r2972.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2972 = load i64, ptr %r2972.p, align 8, !alias.scope !3, !noalias !4
  %gmp2973 = inttoptr i64 %r2972 to ptr
  %gml2974 = load i64, ptr %gmp2973, align 1, !alias.scope !4, !noalias !3
  %wp2975 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2974, ptr %wp2975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb70 word 0xeb0b015f
  %r2976.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2976 = load i64, ptr %r2976.p, align 8, !alias.scope !3, !noalias !4
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %t2978 = sub i64 %r2976, %r2977
  %fn2979 = icmp slt i64 %t2978, 0
  %fz2980 = icmp eq i64 %t2978, 0
  %fc2981 = icmp uge i64 %r2976, %r2977
  %fx12982 = xor i64 %r2976, %r2977
  %fx22983 = xor i64 %r2976, %t2978
  %fva2984 = and i64 %fx12982, %fx22983
  %fv2985 = icmp slt i64 %fva2984, 0
  %nz2986 = zext i1 %fn2979 to i64
  %zz2987 = zext i1 %fz2980 to i64
  %cz2988 = zext i1 %fc2981 to i64
  %vz2989 = zext i1 %fv2985 to i64
  %ns2990 = shl i64 %nz2986, 31
  %zs2991 = shl i64 %zz2987, 30
  %cs2992 = shl i64 %cz2988, 29
  %vs2993 = shl i64 %vz2989, 28
  %nzor2994 = or i64 %ns2990, %zs2991
  %cvor2995 = or i64 %cs2992, %vs2993
  %nzcv2996 = or i64 %nzor2994, %cvor2995
  %wp2997 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2996, ptr %wp2997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb74 word 0x54003540
  %r2998.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2998 = load i64, ptr %r2998.p, align 8, !alias.scope !3, !noalias !4
  %fsh3000 = lshr i64 %r2998, 30
  %cond2999 = trunc i64 %fsh3000 to i1
  br i1 %cond2999, label %L_80029f21c, label %L_80029eb78_ft
L_80029eb78_ft:
  ; @pc 0x80029eb78 word 0xaa1f03ec
  %t3001 = or i64 0, 0
  %wp3002 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3001, ptr %wp3002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb7c word 0x2a1f03fc
  %t3003 = or i32 0, 0
  %c3004 = zext i32 %t3003 to i64
  %wp3005 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c3004, ptr %wp3005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb80 word 0x17ffffa3
  br label %L_80029ea0c
L_80029eb90_ft:
  ; @pc 0x80029eb90 word 0x92407dae
  %r3036.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3036 = load i64, ptr %r3036.p, align 8, !alias.scope !3, !noalias !4
  %t3037 = and i64 %r3036, 4294967295
  %wp3038 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3037, ptr %wp3038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb94 word 0x937d7dad
  %r3039.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3039 = load i64, ptr %r3039.p, align 8, !alias.scope !3, !noalias !4
  %ror3040 = call i64 @llvm.fshr.i64(i64 %r3039, i64 %r3039, i64 61)
  %t3041 = lshr i64 %r3039, 31
  %t3042 = and i64 %t3041, 1
  %t3043 = sub i64 0, %t3042
  %t3044 = and i64 %t3043, -34359738368
  %t3045 = and i64 %ror3040, 34359738360
  %t3046 = or i64 %t3044, %t3045
  %wp3047 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3046, ptr %wp3047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb98 word 0x1100054a
  %r3048.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3048 = load i64, ptr %r3048.p, align 8, !alias.scope !3, !noalias !4
  %c3049 = trunc i64 %r3048 to i32
  %t3050 = add i32 %c3049, 1
  %c3051 = zext i32 %t3050 to i64
  %wp3052 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3051, ptr %wp3052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eb9c word 0xf86d696d
  %r3053.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3053 = load i64, ptr %r3053.p, align 8, !alias.scope !3, !noalias !4
  %r3054.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3054 = load i64, ptr %r3054.p, align 8, !alias.scope !3, !noalias !4
  %t3055 = add i64 %r3053, %r3054
  %gmp3056 = inttoptr i64 %t3055 to ptr
  %gml3057 = load i64, ptr %gmp3056, align 1, !alias.scope !4, !noalias !3
  %wp3058 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3057, ptr %wp3058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eba0 word 0xeb0d019f
  %r3059.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3059 = load i64, ptr %r3059.p, align 8, !alias.scope !3, !noalias !4
  %r3060.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3060 = load i64, ptr %r3060.p, align 8, !alias.scope !3, !noalias !4
  %t3061 = sub i64 %r3059, %r3060
  %fn3062 = icmp slt i64 %t3061, 0
  %fz3063 = icmp eq i64 %t3061, 0
  %fc3064 = icmp uge i64 %r3059, %r3060
  %fx13065 = xor i64 %r3059, %r3060
  %fx23066 = xor i64 %r3059, %t3061
  %fva3067 = and i64 %fx13065, %fx23066
  %fv3068 = icmp slt i64 %fva3067, 0
  %nz3069 = zext i1 %fn3062 to i64
  %zz3070 = zext i1 %fz3063 to i64
  %cz3071 = zext i1 %fc3064 to i64
  %vz3072 = zext i1 %fv3068 to i64
  %ns3073 = shl i64 %nz3069, 31
  %zs3074 = shl i64 %zz3070, 30
  %cs3075 = shl i64 %cz3071, 29
  %vs3076 = shl i64 %vz3072, 28
  %nzor3077 = or i64 %ns3073, %zs3074
  %cvor3078 = or i64 %cs3075, %vs3076
  %nzcv3079 = or i64 %nzor3077, %cvor3078
  %wp3080 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3079, ptr %wp3080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029eba4 word 0x54ffeb41
  %r3081.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3081 = load i64, ptr %r3081.p, align 8, !alias.scope !3, !noalias !4
  %fsh3083 = lshr i64 %r3081, 30
  %ftr3084 = trunc i64 %fsh3083 to i1
  %cond3082 = xor i1 %ftr3084, true
  br i1 %cond3082, label %L_80029e90c, label %L_80029eba8_ft
L_80029eba8_ft:
  ; @pc 0x80029eba8 word 0x17ffff63
  br label %L_80029e934
L_80029ec14_ft:
  ; @pc 0x80029ec14 word 0x17fffef9
  br label %L_80029e7f8
L_80029ec38_ft:
  ; @pc 0x80029ec38 word 0xb001b568
  %wp3242 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec3c word 0x9001b5a0
  %wp3243 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419843072, ptr %wp3243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec40 word 0xf944ad08
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %t3245 = add i64 %r3244, 2392
  %gmp3246 = inttoptr i64 %t3245 to ptr
  %gml3247 = load i64, ptr %gmp3246, align 1, !alias.scope !4, !noalias !3
  %wp3248 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3247, ptr %wp3248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec44 word 0x91004108
  %r3249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3249 = load i64, ptr %r3249.p, align 8, !alias.scope !3, !noalias !4
  %t3250 = add i64 %r3249, 16
  %wp3251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3250, ptr %wp3251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec48 word 0xf90002a8
  %r3252.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3252 = load i64, ptr %r3252.p, align 8, !alias.scope !3, !noalias !4
  %r3253.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3253 = load i64, ptr %r3253.p, align 8, !alias.scope !3, !noalias !4
  %gmp3254 = inttoptr i64 %r3252 to ptr
  store i64 %r3253, ptr %gmp3254, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029ec4c word 0xf9465800
  %r3255.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3255 = load i64, ptr %r3255.p, align 8, !alias.scope !3, !noalias !4
  %t3256 = add i64 %r3255, 3248
  %gmp3257 = inttoptr i64 %t3256 to ptr
  %gml3258 = load i64, ptr %gmp3257, align 1, !alias.scope !4, !noalias !3
  %wp3259 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3258, ptr %wp3259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec50 word 0x94a41358
  %wp3260 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362485844, ptr %wp3260, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80029ec54 word 0xaa1c03e0
  %r3261.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3261 = load i64, ptr %r3261.p, align 8, !alias.scope !3, !noalias !4
  %t3262 = or i64 0, %r3261
  %wp3263 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3262, ptr %wp3263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec58 word 0x17fffe3c
  br label %L_80029e548
L_80029ec80_ft:
  ; @pc 0x80029ec80 word 0x880a7ee9
  %r3341.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3341 = load i64, ptr %r3341.p, align 8, !alias.scope !3, !noalias !4
  %atp3342 = inttoptr i64 %r3341 to ptr
  %fp3343 = getelementptr inbounds i8, ptr %c, i64 296
  %fv3344 = load i64, ptr %fp3343, align 8, !alias.scope !3, !noalias !4
  %fp3345 = getelementptr inbounds i8, ptr %c, i64 304
  %fv3346 = load i64, ptr %fp3345, align 8, !alias.scope !3, !noalias !4
  %fp3347 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp3347, align 8, !alias.scope !3, !noalias !4
  %cmp3348 = icmp eq i64 %fv3344, %r3341
  %c3349 = trunc i64 %fv3346 to i32
  %r3350.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3350 = load i64, ptr %r3350.p, align 8, !alias.scope !3, !noalias !4
  %c3351 = trunc i64 %r3350 to i32
  %cx3352 = cmpxchg ptr %atp3342, i32 %c3349, i32 %c3351 seq_cst seq_cst, align 4
  %cxok3353 = extractvalue { i32, i1 } %cx3352, 1
  %t3354 = and i1 %cmp3348, %cxok3353
  %sel3355 = select i1 %t3354, i32 0, i32 1
  %c3356 = zext i32 %sel3355 to i64
  %wp3357 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3356, ptr %wp3357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec84 word 0xaa1c03f6
  %r3358.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3358 = load i64, ptr %r3358.p, align 8, !alias.scope !3, !noalias !4
  %t3359 = or i64 0, %r3358
  %wp3360 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t3359, ptr %wp3360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ec88 word 0x34ffc88a
  %r3361.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3361 = load i64, ptr %r3361.p, align 8, !alias.scope !3, !noalias !4
  %c3362 = trunc i64 %r3361 to i32
  %cmp3363 = icmp eq i32 %c3362, 0
  br i1 %cmp3363, label %L_80029e598, label %L_80029ec8c_ft
L_80029ec8c_ft:
  ; @pc 0x80029ec8c word 0x17fffffa
  br label %L_80029ec74
L_80029ef88_ft:
  ; @pc 0x80029ef88 word 0xb9482a88
  %r4376.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4376 = load i64, ptr %r4376.p, align 8, !alias.scope !3, !noalias !4
  %t4377 = add i64 %r4376, 2088
  %gmp4378 = inttoptr i64 %t4377 to ptr
  %gml4379 = load i32, ptr %gmp4378, align 1, !alias.scope !4, !noalias !3
  %c4380 = zext i32 %gml4379 to i64
  %wp4381 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4380, ptr %wp4381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef8c word 0x6b00011f
  %r4382.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4382 = load i64, ptr %r4382.p, align 8, !alias.scope !3, !noalias !4
  %c4383 = trunc i64 %r4382 to i32
  %r4384.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4384 = load i64, ptr %r4384.p, align 8, !alias.scope !3, !noalias !4
  %c4385 = trunc i64 %r4384 to i32
  %t4386 = sub i32 %c4383, %c4385
  %fn4387 = icmp slt i32 %t4386, 0
  %fz4388 = icmp eq i32 %t4386, 0
  %fc4389 = icmp uge i32 %c4383, %c4385
  %fx14390 = xor i32 %c4383, %c4385
  %fx24391 = xor i32 %c4383, %t4386
  %fva4392 = and i32 %fx14390, %fx24391
  %fv4393 = icmp slt i32 %fva4392, 0
  %nz4394 = zext i1 %fn4387 to i64
  %zz4395 = zext i1 %fz4388 to i64
  %cz4396 = zext i1 %fc4389 to i64
  %vz4397 = zext i1 %fv4393 to i64
  %ns4398 = shl i64 %nz4394, 31
  %zs4399 = shl i64 %zz4395, 30
  %cs4400 = shl i64 %cz4396, 29
  %vs4401 = shl i64 %vz4397, 28
  %nzor4402 = or i64 %ns4398, %zs4399
  %cvor4403 = or i64 %cs4400, %vs4401
  %nzcv4404 = or i64 %nzor4402, %cvor4403
  %wp4405 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4404, ptr %wp4405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef90 word 0x54ffc34d
  %r4406.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4406 = load i64, ptr %r4406.p, align 8, !alias.scope !3, !noalias !4
  %fsh4408 = lshr i64 %r4406, 30
  %ftr4409 = trunc i64 %fsh4408 to i1
  %fsh4410 = lshr i64 %r4406, 31
  %ftr4411 = trunc i64 %fsh4410 to i1
  %fsh4412 = lshr i64 %r4406, 28
  %ftr4413 = trunc i64 %fsh4412 to i1
  %fnz4414 = xor i1 %ftr4409, true
  %feq4415 = icmp eq i1 %ftr4411, %ftr4413
  %fgt4416 = and i1 %fnz4414, %feq4415
  %cond4407 = xor i1 %fgt4416, true
  br i1 %cond4407, label %L_80029e7f8, label %L_80029ef94_ft
L_80029ef94_ft:
  ; @pc 0x80029ef94 word 0xf9441a88
  %r4417.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4417 = load i64, ptr %r4417.p, align 8, !alias.scope !3, !noalias !4
  %t4418 = add i64 %r4417, 2096
  %gmp4419 = inttoptr i64 %t4418 to ptr
  %gml4420 = load i64, ptr %gmp4419, align 1, !alias.scope !4, !noalias !3
  %wp4421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4420, ptr %wp4421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef98 word 0x5280060a
  %c4422 = zext i32 48 to i64
  %wp4423 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4422, ptr %wp4423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029ef9c word 0x2a0003e9
  %r4424.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4424 = load i64, ptr %r4424.p, align 8, !alias.scope !3, !noalias !4
  %c4425 = trunc i64 %r4424 to i32
  %t4426 = or i32 0, %c4425
  %c4427 = zext i32 %t4426 to i64
  %wp4428 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4427, ptr %wp4428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efa0 word 0x3dc00be1
  %r4429.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4429 = load i64, ptr %r4429.p, align 8, !alias.scope !3, !noalias !4
  %t4430 = add i64 %r4429, 32
  %gmp4431 = inttoptr i64 %t4430 to ptr
  %gml4432 = load i128, ptr %gmp4431, align 1, !alias.scope !4, !noalias !3
  %wp4433 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %gml4432, ptr %wp4433, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029efa4 word 0x9baa2008
  %r4434.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4434 = load i64, ptr %r4434.p, align 8, !alias.scope !3, !noalias !4
  %c4435 = trunc i64 %r4434 to i32
  %c4436 = zext i32 %c4435 to i64
  %r4437.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4437 = load i64, ptr %r4437.p, align 8, !alias.scope !3, !noalias !4
  %c4438 = trunc i64 %r4437 to i32
  %c4439 = zext i32 %c4438 to i64
  %t4440 = mul i64 %c4436, %c4439
  %r4441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4441 = load i64, ptr %r4441.p, align 8, !alias.scope !3, !noalias !4
  %t4442 = add i64 %r4441, %t4440
  %wp4443 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4442, ptr %wp4443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efa8 word 0x3dc007e0
  %r4444.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4444 = load i64, ptr %r4444.p, align 8, !alias.scope !3, !noalias !4
  %t4445 = add i64 %r4444, 16
  %gmp4446 = inttoptr i64 %t4445 to ptr
  %gml4447 = load i128, ptr %gmp4446, align 1, !alias.scope !4, !noalias !3
  %wp4448 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml4447, ptr %wp4448, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029efac word 0xad000101
  %r4449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4449 = load i64, ptr %r4449.p, align 8, !alias.scope !3, !noalias !4
  %t4450 = add i64 %r4449, 16
  %r4451.p = getelementptr inbounds i8, ptr %c, i64 528
  %r4451 = load i128, ptr %r4451.p, align 16, !alias.scope !3, !noalias !4
  %r4452.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4452 = load i128, ptr %r4452.p, align 16, !alias.scope !3, !noalias !4
  %gmp4453 = inttoptr i64 %r4449 to ptr
  store i128 %r4451, ptr %gmp4453, align 1, !alias.scope !4, !noalias !3
  %gmp4454 = inttoptr i64 %t4450 to ptr
  store i128 %r4452, ptr %gmp4454, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029efb0 word 0x3dc003e0
  %r4455.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4455 = load i64, ptr %r4455.p, align 8, !alias.scope !3, !noalias !4
  %gmp4456 = inttoptr i64 %r4455 to ptr
  %gml4457 = load i128, ptr %gmp4456, align 1, !alias.scope !4, !noalias !3
  %wp4458 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml4457, ptr %wp4458, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80029efb4 word 0x3d800900
  %r4459.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4459 = load i64, ptr %r4459.p, align 8, !alias.scope !3, !noalias !4
  %t4460 = add i64 %r4459, 32
  %r4461.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4461 = load i128, ptr %r4461.p, align 16, !alias.scope !3, !noalias !4
  %gmp4462 = inttoptr i64 %t4460 to ptr
  store i128 %r4461, ptr %gmp4462, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029efb8 word 0xb9487a88
  %r4463.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4463 = load i64, ptr %r4463.p, align 8, !alias.scope !3, !noalias !4
  %t4464 = add i64 %r4463, 2168
  %gmp4465 = inttoptr i64 %t4464 to ptr
  %gml4466 = load i32, ptr %gmp4465, align 1, !alias.scope !4, !noalias !3
  %c4467 = zext i32 %gml4466 to i64
  %wp4468 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4467, ptr %wp4468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efbc word 0xf944428a
  %r4469.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4469 = load i64, ptr %r4469.p, align 8, !alias.scope !3, !noalias !4
  %t4470 = add i64 %r4469, 2176
  %gmp4471 = inttoptr i64 %t4470 to ptr
  %gml4472 = load i64, ptr %gmp4471, align 1, !alias.scope !4, !noalias !3
  %wp4473 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4472, ptr %wp4473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efc0 word 0x6b00011f
  %r4474.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4474 = load i64, ptr %r4474.p, align 8, !alias.scope !3, !noalias !4
  %c4475 = trunc i64 %r4474 to i32
  %r4476.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4476 = load i64, ptr %r4476.p, align 8, !alias.scope !3, !noalias !4
  %c4477 = trunc i64 %r4476 to i32
  %t4478 = sub i32 %c4475, %c4477
  %fn4479 = icmp slt i32 %t4478, 0
  %fz4480 = icmp eq i32 %t4478, 0
  %fc4481 = icmp uge i32 %c4475, %c4477
  %fx14482 = xor i32 %c4475, %c4477
  %fx24483 = xor i32 %c4475, %t4478
  %fva4484 = and i32 %fx14482, %fx24483
  %fv4485 = icmp slt i32 %fva4484, 0
  %nz4486 = zext i1 %fn4479 to i64
  %zz4487 = zext i1 %fz4480 to i64
  %cz4488 = zext i1 %fc4481 to i64
  %vz4489 = zext i1 %fv4485 to i64
  %ns4490 = shl i64 %nz4486, 31
  %zs4491 = shl i64 %zz4487, 30
  %cs4492 = shl i64 %cz4488, 29
  %vs4493 = shl i64 %vz4489, 28
  %nzor4494 = or i64 %ns4490, %zs4491
  %cvor4495 = or i64 %cs4492, %vs4493
  %nzcv4496 = or i64 %nzor4494, %cvor4495
  %wp4497 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4496, ptr %wp4497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efc4 word 0x9a9f8128
  %r4498.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4498 = load i64, ptr %r4498.p, align 8, !alias.scope !3, !noalias !4
  %r4499.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4499 = load i64, ptr %r4499.p, align 8, !alias.scope !3, !noalias !4
  %fsh4501 = lshr i64 %r4499, 29
  %ftr4502 = trunc i64 %fsh4501 to i1
  %fsh4503 = lshr i64 %r4499, 30
  %ftr4504 = trunc i64 %fsh4503 to i1
  %fnz4505 = xor i1 %ftr4504, true
  %cond4500 = and i1 %ftr4502, %fnz4505
  %sel4506 = select i1 %cond4500, i64 %r4498, i64 0
  %wp4507 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4506, ptr %wp4507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efc8 word 0x38686949
  %r4508.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4508 = load i64, ptr %r4508.p, align 8, !alias.scope !3, !noalias !4
  %r4509.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4509 = load i64, ptr %r4509.p, align 8, !alias.scope !3, !noalias !4
  %t4510 = add i64 %r4508, %r4509
  %gmp4511 = inttoptr i64 %t4510 to ptr
  %gml4512 = load i8, ptr %gmp4511, align 1, !alias.scope !4, !noalias !3
  %c4513 = zext i8 %gml4512 to i64
  %wp4514 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4513, ptr %wp4514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efcc word 0x11000529
  %r4515.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4515 = load i64, ptr %r4515.p, align 8, !alias.scope !3, !noalias !4
  %c4516 = trunc i64 %r4515 to i32
  %t4517 = add i32 %c4516, 1
  %c4518 = zext i32 %t4517 to i64
  %wp4519 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4518, ptr %wp4519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029efd0 word 0x38286949
  %r4520.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4520 = load i64, ptr %r4520.p, align 8, !alias.scope !3, !noalias !4
  %r4521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4521 = load i64, ptr %r4521.p, align 8, !alias.scope !3, !noalias !4
  %t4522 = add i64 %r4520, %r4521
  %r4523.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4523 = load i64, ptr %r4523.p, align 8, !alias.scope !3, !noalias !4
  %c4524 = trunc i64 %r4523 to i32
  %c4525 = trunc i32 %c4524 to i8
  %gmp4526 = inttoptr i64 %t4522 to ptr
  store i8 %c4525, ptr %gmp4526, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029efd4 word 0x17fffe09
  br label %L_80029e7f8
L_80029f06c_ft:
  ; @pc 0x80029f06c word 0x2a0003e1
  %r4741.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4741 = load i64, ptr %r4741.p, align 8, !alias.scope !3, !noalias !4
  %c4742 = trunc i64 %r4741 to i32
  %t4743 = or i32 0, %c4742
  %c4744 = zext i32 %t4743 to i64
  %wp4745 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4744, ptr %wp4745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f070 word 0x9100e3e2
  %r4746.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4746 = load i64, ptr %r4746.p, align 8, !alias.scope !3, !noalias !4
  %t4747 = add i64 %r4746, 56
  %wp4748 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4747, ptr %wp4748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f074 word 0xaa1403e0
  %r4749.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4749 = load i64, ptr %r4749.p, align 8, !alias.scope !3, !noalias !4
  %t4750 = or i64 0, %r4749
  %wp4751 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4750, ptr %wp4751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f078 word 0x946a2d54
  %wp4752 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362486908, ptr %wp4752, align 8, !alias.scope !3, !noalias !4
  call void @f_801d2a5c8(ptr %c)
  ; @pc 0x80029f07c word 0x17fffddf
  br label %L_80029e7f8
L_80029f120_ft:
  ; @pc 0x80029f120 word 0x9001b568
  %wp4948 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f124 word 0x9001b6c9
  %wp4949 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419994624, ptr %wp4949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f128 word 0xf944ad08
  %r4950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4950 = load i64, ptr %r4950.p, align 8, !alias.scope !3, !noalias !4
  %t4951 = add i64 %r4950, 2392
  %gmp4952 = inttoptr i64 %t4951 to ptr
  %gml4953 = load i64, ptr %gmp4952, align 1, !alias.scope !4, !noalias !3
  %wp4954 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4953, ptr %wp4954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f12c word 0xf9450529
  %r4955.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4955 = load i64, ptr %r4955.p, align 8, !alias.scope !3, !noalias !4
  %t4956 = add i64 %r4955, 2568
  %gmp4957 = inttoptr i64 %t4956 to ptr
  %gml4958 = load i64, ptr %gmp4957, align 1, !alias.scope !4, !noalias !3
  %wp4959 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4958, ptr %wp4959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f130 word 0x9001b6c0
  %wp4960 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419994624, ptr %wp4960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f134 word 0x91004108
  %r4961.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4961 = load i64, ptr %r4961.p, align 8, !alias.scope !3, !noalias !4
  %t4962 = add i64 %r4961, 16
  %wp4963 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4962, ptr %wp4963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f138 word 0xf9000128
  %r4964.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4964 = load i64, ptr %r4964.p, align 8, !alias.scope !3, !noalias !4
  %r4965.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4965 = load i64, ptr %r4965.p, align 8, !alias.scope !3, !noalias !4
  %gmp4966 = inttoptr i64 %r4964 to ptr
  store i64 %r4965, ptr %gmp4966, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f13c word 0xf9450800
  %r4967.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4967 = load i64, ptr %r4967.p, align 8, !alias.scope !3, !noalias !4
  %t4968 = add i64 %r4967, 2576
  %gmp4969 = inttoptr i64 %t4968 to ptr
  %gml4970 = load i64, ptr %gmp4969, align 1, !alias.scope !4, !noalias !3
  %wp4971 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4970, ptr %wp4971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f140 word 0x94a4121c
  %wp4972 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487108, ptr %wp4972, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80029f144 word 0x17fffe4d
  br label %L_80029ea78
L_80029f170_ft:
  ; @pc 0x80029f170 word 0x9001b568
  %wp5000 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp5000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f174 word 0x9001b6c0
  %wp5001 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419994624, ptr %wp5001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f178 word 0xf944ad08
  %r5002.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5002 = load i64, ptr %r5002.p, align 8, !alias.scope !3, !noalias !4
  %t5003 = add i64 %r5002, 2392
  %gmp5004 = inttoptr i64 %t5003 to ptr
  %gml5005 = load i64, ptr %gmp5004, align 1, !alias.scope !4, !noalias !3
  %wp5006 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5005, ptr %wp5006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f17c word 0x91004108
  %r5007.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5007 = load i64, ptr %r5007.p, align 8, !alias.scope !3, !noalias !4
  %t5008 = add i64 %r5007, 16
  %wp5009 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5008, ptr %wp5009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f180 word 0xf90002a8
  %r5010.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5010 = load i64, ptr %r5010.p, align 8, !alias.scope !3, !noalias !4
  %r5011.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5011 = load i64, ptr %r5011.p, align 8, !alias.scope !3, !noalias !4
  %gmp5012 = inttoptr i64 %r5010 to ptr
  store i64 %r5011, ptr %gmp5012, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f184 word 0xf9450800
  %r5013.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5013 = load i64, ptr %r5013.p, align 8, !alias.scope !3, !noalias !4
  %t5014 = add i64 %r5013, 2576
  %gmp5015 = inttoptr i64 %t5014 to ptr
  %gml5016 = load i64, ptr %gmp5015, align 1, !alias.scope !4, !noalias !3
  %wp5017 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5016, ptr %wp5017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f188 word 0x94a4120a
  %wp5018 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487180, ptr %wp5018, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80029f18c word 0xaa1903e0
  %r5019.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5019 = load i64, ptr %r5019.p, align 8, !alias.scope !3, !noalias !4
  %t5020 = or i64 0, %r5019
  %wp5021 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5020, ptr %wp5021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f190 word 0x17fffe68
  br label %L_80029eb30
L_80029f1b8_ft:
  ; @pc 0x80029f1b8 word 0x910182c8
  %r5057.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5057 = load i64, ptr %r5057.p, align 8, !alias.scope !3, !noalias !4
  %t5058 = add i64 %r5057, 96
  %wp5059 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5058, ptr %wp5059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1bc word 0xf9000be8
  %r5060.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5060 = load i64, ptr %r5060.p, align 8, !alias.scope !3, !noalias !4
  %t5061 = add i64 %r5060, 16
  %r5062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5062 = load i64, ptr %r5062.p, align 8, !alias.scope !3, !noalias !4
  %gmp5063 = inttoptr i64 %t5061 to ptr
  store i64 %r5062, ptr %gmp5063, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f1c0 word 0xf94013e8
  %r5064.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5064 = load i64, ptr %r5064.p, align 8, !alias.scope !3, !noalias !4
  %t5065 = add i64 %r5064, 32
  %gmp5066 = inttoptr i64 %t5065 to ptr
  %gml5067 = load i64, ptr %gmp5066, align 1, !alias.scope !4, !noalias !3
  %wp5068 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5067, ptr %wp5068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1c4 word 0xf9401d09
  %r5069.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5069 = load i64, ptr %r5069.p, align 8, !alias.scope !3, !noalias !4
  %t5070 = add i64 %r5069, 56
  %gmp5071 = inttoptr i64 %t5070 to ptr
  %gml5072 = load i64, ptr %gmp5071, align 1, !alias.scope !4, !noalias !3
  %wp5073 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5072, ptr %wp5073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1c8 word 0xb980410a
  %r5074.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5074 = load i64, ptr %r5074.p, align 8, !alias.scope !3, !noalias !4
  %t5075 = add i64 %r5074, 64
  %gmp5076 = inttoptr i64 %t5075 to ptr
  %gml5077 = load i32, ptr %gmp5076, align 1, !alias.scope !4, !noalias !3
  %c5078 = sext i32 %gml5077 to i64
  %wp5079 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5078, ptr %wp5079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1cc word 0x8b090149
  %r5080.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5080 = load i64, ptr %r5080.p, align 8, !alias.scope !3, !noalias !4
  %r5081.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5081 = load i64, ptr %r5081.p, align 8, !alias.scope !3, !noalias !4
  %t5082 = add i64 %r5080, %r5081
  %wp5083 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5082, ptr %wp5083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1d0 word 0x381ff13f
  %r5084.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5084 = load i64, ptr %r5084.p, align 8, !alias.scope !3, !noalias !4
  %t5085 = add i64 %r5084, -1
  %c5086 = trunc i32 0 to i8
  %gmp5087 = inttoptr i64 %t5085 to ptr
  store i8 %c5086, ptr %gmp5087, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f1d4 word 0xf940a900
  %r5088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5088 = load i64, ptr %r5088.p, align 8, !alias.scope !3, !noalias !4
  %t5089 = add i64 %r5088, 336
  %gmp5090 = inttoptr i64 %t5089 to ptr
  %gml5091 = load i64, ptr %gmp5090, align 1, !alias.scope !4, !noalias !3
  %wp5092 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5091, ptr %wp5092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1d8 word 0xf9401d16
  %r5093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5093 = load i64, ptr %r5093.p, align 8, !alias.scope !3, !noalias !4
  %t5094 = add i64 %r5093, 56
  %gmp5095 = inttoptr i64 %t5094 to ptr
  %gml5096 = load i64, ptr %gmp5095, align 1, !alias.scope !4, !noalias !3
  %wp5097 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5096, ptr %wp5097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1dc word 0xf9400008
  %r5098.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5098 = load i64, ptr %r5098.p, align 8, !alias.scope !3, !noalias !4
  %gmp5099 = inttoptr i64 %r5098 to ptr
  %gml5100 = load i64, ptr %gmp5099, align 1, !alias.scope !4, !noalias !3
  %wp5101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5100, ptr %wp5101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1e0 word 0xf9403108
  %r5102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5102 = load i64, ptr %r5102.p, align 8, !alias.scope !3, !noalias !4
  %t5103 = add i64 %r5102, 96
  %gmp5104 = inttoptr i64 %t5103 to ptr
  %gml5105 = load i64, ptr %gmp5104, align 1, !alias.scope !4, !noalias !3
  %wp5106 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5105, ptr %wp5106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1e4 word 0xd63f0100
  %r5107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5107 = load i64, ptr %r5107.p, align 8, !alias.scope !3, !noalias !4
  %fp5108 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5107, ptr %fp5108, align 8, !alias.scope !3, !noalias !4
  %wp5109 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487272, ptr %wp5109, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029f1e8 word 0xaa0003e1
  %r5110.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5110 = load i64, ptr %r5110.p, align 8, !alias.scope !3, !noalias !4
  %t5111 = or i64 0, %r5110
  %wp5112 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5111, ptr %wp5112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1ec word 0xaa1603e0
  %r5113.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5113 = load i64, ptr %r5113.p, align 8, !alias.scope !3, !noalias !4
  %t5114 = or i64 0, %r5113
  %wp5115 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5114, ptr %wp5115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1f0 word 0x97fbd008
  %wp5116 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487284, ptr %wp5116, align 8, !alias.scope !3, !noalias !4
  call void @f_800193210(ptr %c)
  ; @pc 0x80029f1f4 word 0xaa0003e1
  %r5117.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5117 = load i64, ptr %r5117.p, align 8, !alias.scope !3, !noalias !4
  %t5118 = or i64 0, %r5117
  %wp5119 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5118, ptr %wp5119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1f8 word 0xf9400be0
  %r5120.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5120 = load i64, ptr %r5120.p, align 8, !alias.scope !3, !noalias !4
  %t5121 = add i64 %r5120, 16
  %gmp5122 = inttoptr i64 %t5121 to ptr
  %gml5123 = load i64, ptr %gmp5122, align 1, !alias.scope !4, !noalias !3
  %wp5124 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5123, ptr %wp5124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f1fc word 0x941ca1f5
  %wp5125 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487296, ptr %wp5125, align 8, !alias.scope !3, !noalias !4
  call void @f_8009c79d0(ptr %c)
  br label %L_80029f200
L_80029f20c_ft:
  ; @pc 0x80029f20c word 0x88087eff
  %r5159.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5159 = load i64, ptr %r5159.p, align 8, !alias.scope !3, !noalias !4
  %atp5160 = inttoptr i64 %r5159 to ptr
  %fp5161 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5162 = load i64, ptr %fp5161, align 8, !alias.scope !3, !noalias !4
  %fp5163 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5164 = load i64, ptr %fp5163, align 8, !alias.scope !3, !noalias !4
  %fp5165 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5165, align 8, !alias.scope !3, !noalias !4
  %cmp5166 = icmp eq i64 %fv5162, %r5159
  %c5167 = trunc i64 %fv5164 to i32
  %cx5168 = cmpxchg ptr %atp5160, i32 %c5167, i32 0 seq_cst seq_cst, align 4
  %cxok5169 = extractvalue { i32, i1 } %cx5168, 1
  %t5170 = and i1 %cmp5166, %cxok5169
  %sel5171 = select i1 %t5170, i32 0, i32 1
  %c5172 = zext i32 %sel5171 to i64
  %wp5173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5172, ptr %wp5173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f210 word 0xaa1c03f6
  %r5174.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5174 = load i64, ptr %r5174.p, align 8, !alias.scope !3, !noalias !4
  %t5175 = or i64 0, %r5174
  %wp5176 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t5175, ptr %wp5176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f214 word 0x34ff9c28
  %r5177.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5177 = load i64, ptr %r5177.p, align 8, !alias.scope !3, !noalias !4
  %c5178 = trunc i64 %r5177 to i32
  %cmp5179 = icmp eq i32 %c5178, 0
  br i1 %cmp5179, label %L_80029e598, label %L_80029f218_ft
L_80029f218_ft:
  ; @pc 0x80029f218 word 0x17fffffa
  br label %L_80029f200
L_80029f238_ft:
  ; @pc 0x80029f238 word 0xb94002c8
  %r5243.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5243 = load i64, ptr %r5243.p, align 8, !alias.scope !3, !noalias !4
  %gmp5244 = inttoptr i64 %r5243 to ptr
  %gml5245 = load i32, ptr %gmp5244, align 1, !alias.scope !4, !noalias !3
  %c5246 = zext i32 %gml5245 to i64
  %wp5247 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5246, ptr %wp5247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f23c word 0xeb08031f
  %r5248.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5248 = load i64, ptr %r5248.p, align 8, !alias.scope !3, !noalias !4
  %r5249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5249 = load i64, ptr %r5249.p, align 8, !alias.scope !3, !noalias !4
  %t5250 = sub i64 %r5248, %r5249
  %fn5251 = icmp slt i64 %t5250, 0
  %fz5252 = icmp eq i64 %t5250, 0
  %fc5253 = icmp uge i64 %r5248, %r5249
  %fx15254 = xor i64 %r5248, %r5249
  %fx25255 = xor i64 %r5248, %t5250
  %fva5256 = and i64 %fx15254, %fx25255
  %fv5257 = icmp slt i64 %fva5256, 0
  %nz5258 = zext i1 %fn5251 to i64
  %zz5259 = zext i1 %fz5252 to i64
  %cz5260 = zext i1 %fc5253 to i64
  %vz5261 = zext i1 %fv5257 to i64
  %ns5262 = shl i64 %nz5258, 31
  %zs5263 = shl i64 %zz5259, 30
  %cs5264 = shl i64 %cz5260, 29
  %vs5265 = shl i64 %vz5261, 28
  %nzor5266 = or i64 %ns5262, %zs5263
  %cvor5267 = or i64 %cs5264, %vs5265
  %nzcv5268 = or i64 %nzor5266, %cvor5267
  %wp5269 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5268, ptr %wp5269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f240 word 0xb9401289
  %r5270.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5270 = load i64, ptr %r5270.p, align 8, !alias.scope !3, !noalias !4
  %t5271 = add i64 %r5270, 16
  %gmp5272 = inttoptr i64 %t5271 to ptr
  %gml5273 = load i32, ptr %gmp5272, align 1, !alias.scope !4, !noalias !3
  %c5274 = zext i32 %gml5273 to i64
  %wp5275 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5274, ptr %wp5275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f244 word 0x9a9f3308
  %r5276.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5276 = load i64, ptr %r5276.p, align 8, !alias.scope !3, !noalias !4
  %r5277.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5277 = load i64, ptr %r5277.p, align 8, !alias.scope !3, !noalias !4
  %fsh5279 = lshr i64 %r5277, 29
  %ftr5280 = trunc i64 %fsh5279 to i1
  %cond5278 = xor i1 %ftr5280, true
  %sel5281 = select i1 %cond5278, i64 %r5276, i64 0
  %wp5282 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel5281, ptr %wp5282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f248 word 0x6b1c013f
  %r5283.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5283 = load i64, ptr %r5283.p, align 8, !alias.scope !3, !noalias !4
  %c5284 = trunc i64 %r5283 to i32
  %r5285.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5285 = load i64, ptr %r5285.p, align 8, !alias.scope !3, !noalias !4
  %c5286 = trunc i64 %r5285 to i32
  %t5287 = sub i32 %c5284, %c5286
  %fn5288 = icmp slt i32 %t5287, 0
  %fz5289 = icmp eq i32 %t5287, 0
  %fc5290 = icmp uge i32 %c5284, %c5286
  %fx15291 = xor i32 %c5284, %c5286
  %fx25292 = xor i32 %c5284, %t5287
  %fva5293 = and i32 %fx15291, %fx25292
  %fv5294 = icmp slt i32 %fva5293, 0
  %nz5295 = zext i1 %fn5288 to i64
  %zz5296 = zext i1 %fz5289 to i64
  %cz5297 = zext i1 %fc5290 to i64
  %vz5298 = zext i1 %fv5294 to i64
  %ns5299 = shl i64 %nz5295, 31
  %zs5300 = shl i64 %zz5296, 30
  %cs5301 = shl i64 %cz5297, 29
  %vs5302 = shl i64 %vz5298, 28
  %nzor5303 = or i64 %ns5299, %zs5300
  %cvor5304 = or i64 %cs5301, %vs5302
  %nzcv5305 = or i64 %nzor5303, %cvor5304
  %wp5306 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5305, ptr %wp5306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f24c word 0x54ffad6d
  %r5307.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5307 = load i64, ptr %r5307.p, align 8, !alias.scope !3, !noalias !4
  %fsh5309 = lshr i64 %r5307, 30
  %ftr5310 = trunc i64 %fsh5309 to i1
  %fsh5311 = lshr i64 %r5307, 31
  %ftr5312 = trunc i64 %fsh5311 to i1
  %fsh5313 = lshr i64 %r5307, 28
  %ftr5314 = trunc i64 %fsh5313 to i1
  %fnz5315 = xor i1 %ftr5310, true
  %feq5316 = icmp eq i1 %ftr5312, %ftr5314
  %fgt5317 = and i1 %fnz5315, %feq5316
  %cond5308 = xor i1 %fgt5317, true
  br i1 %cond5308, label %L_80029e7f8, label %L_80029f250_ft
L_80029f250_ft:
  ; @pc 0x80029f250 word 0xf94006c9
  %r5318.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5318 = load i64, ptr %r5318.p, align 8, !alias.scope !3, !noalias !4
  %t5319 = add i64 %r5318, 8
  %gmp5320 = inttoptr i64 %t5319 to ptr
  %gml5321 = load i64, ptr %gmp5320, align 1, !alias.scope !4, !noalias !3
  %wp5322 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5321, ptr %wp5322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f254 word 0x9b1a2509
  %r5323.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5323 = load i64, ptr %r5323.p, align 8, !alias.scope !3, !noalias !4
  %r5324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5324 = load i64, ptr %r5324.p, align 8, !alias.scope !3, !noalias !4
  %t5325 = mul i64 %r5324, %r5323
  %r5326.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5326 = load i64, ptr %r5326.p, align 8, !alias.scope !3, !noalias !4
  %t5327 = add i64 %r5326, %t5325
  %wp5328 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5327, ptr %wp5328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f258 word 0xb9405288
  %r5329.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5329 = load i64, ptr %r5329.p, align 8, !alias.scope !3, !noalias !4
  %t5330 = add i64 %r5329, 80
  %gmp5331 = inttoptr i64 %t5330 to ptr
  %gml5332 = load i32, ptr %gmp5331, align 1, !alias.scope !4, !noalias !3
  %c5333 = zext i32 %gml5332 to i64
  %wp5334 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5333, ptr %wp5334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f25c word 0xf9402e8a
  %r5335.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5335 = load i64, ptr %r5335.p, align 8, !alias.scope !3, !noalias !4
  %t5336 = add i64 %r5335, 88
  %gmp5337 = inttoptr i64 %t5336 to ptr
  %gml5338 = load i64, ptr %gmp5337, align 1, !alias.scope !4, !noalias !3
  %wp5339 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5338, ptr %wp5339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f260 word 0x6b1c011f
  %r5340.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5340 = load i64, ptr %r5340.p, align 8, !alias.scope !3, !noalias !4
  %c5341 = trunc i64 %r5340 to i32
  %r5342.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5342 = load i64, ptr %r5342.p, align 8, !alias.scope !3, !noalias !4
  %c5343 = trunc i64 %r5342 to i32
  %t5344 = sub i32 %c5341, %c5343
  %fn5345 = icmp slt i32 %t5344, 0
  %fz5346 = icmp eq i32 %t5344, 0
  %fc5347 = icmp uge i32 %c5341, %c5343
  %fx15348 = xor i32 %c5341, %c5343
  %fx25349 = xor i32 %c5341, %t5344
  %fva5350 = and i32 %fx15348, %fx25349
  %fv5351 = icmp slt i32 %fva5350, 0
  %nz5352 = zext i1 %fn5345 to i64
  %zz5353 = zext i1 %fz5346 to i64
  %cz5354 = zext i1 %fc5347 to i64
  %vz5355 = zext i1 %fv5351 to i64
  %ns5356 = shl i64 %nz5352, 31
  %zs5357 = shl i64 %zz5353, 30
  %cs5358 = shl i64 %cz5354, 29
  %vs5359 = shl i64 %vz5355, 28
  %nzor5360 = or i64 %ns5356, %zs5357
  %cvor5361 = or i64 %cs5358, %vs5359
  %nzcv5362 = or i64 %nzor5360, %cvor5361
  %wp5363 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5362, ptr %wp5363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f264 word 0x1a9f8388
  %r5364.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5364 = load i64, ptr %r5364.p, align 8, !alias.scope !3, !noalias !4
  %c5365 = trunc i64 %r5364 to i32
  %r5366.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5366 = load i64, ptr %r5366.p, align 8, !alias.scope !3, !noalias !4
  %fsh5368 = lshr i64 %r5366, 29
  %ftr5369 = trunc i64 %fsh5368 to i1
  %fsh5370 = lshr i64 %r5366, 30
  %ftr5371 = trunc i64 %fsh5370 to i1
  %fnz5372 = xor i1 %ftr5371, true
  %cond5367 = and i1 %ftr5369, %fnz5372
  %sel5373 = select i1 %cond5367, i32 %c5365, i32 0
  %c5374 = zext i32 %sel5373 to i64
  %wp5375 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5374, ptr %wp5375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f268 word 0xf9404d21
  %r5376.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5376 = load i64, ptr %r5376.p, align 8, !alias.scope !3, !noalias !4
  %t5377 = add i64 %r5376, 152
  %gmp5378 = inttoptr i64 %t5377 to ptr
  %gml5379 = load i64, ptr %gmp5378, align 1, !alias.scope !4, !noalias !3
  %wp5380 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5379, ptr %wp5380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f26c word 0xf8685948
  %r5381.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5381 = load i64, ptr %r5381.p, align 8, !alias.scope !3, !noalias !4
  %r5382.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5382 = load i64, ptr %r5382.p, align 8, !alias.scope !3, !noalias !4
  %c5383 = trunc i64 %r5382 to i32
  %c5384 = zext i32 %c5383 to i64
  %t5385 = shl i64 %c5384, 3
  %t5386 = add i64 %r5381, %t5385
  %gmp5387 = inttoptr i64 %t5386 to ptr
  %gml5388 = load i64, ptr %gmp5387, align 1, !alias.scope !4, !noalias !3
  %wp5389 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5388, ptr %wp5389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f270 word 0xf9400115
  %r5390.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5390 = load i64, ptr %r5390.p, align 8, !alias.scope !3, !noalias !4
  %gmp5391 = inttoptr i64 %r5390 to ptr
  %gml5392 = load i64, ptr %gmp5391, align 1, !alias.scope !4, !noalias !3
  %wp5393 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml5392, ptr %wp5393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f274 word 0xeb0102bf
  %r5394.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5394 = load i64, ptr %r5394.p, align 8, !alias.scope !3, !noalias !4
  %r5395.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5395 = load i64, ptr %r5395.p, align 8, !alias.scope !3, !noalias !4
  %t5396 = sub i64 %r5394, %r5395
  %fn5397 = icmp slt i64 %t5396, 0
  %fz5398 = icmp eq i64 %t5396, 0
  %fc5399 = icmp uge i64 %r5394, %r5395
  %fx15400 = xor i64 %r5394, %r5395
  %fx25401 = xor i64 %r5394, %t5396
  %fva5402 = and i64 %fx15400, %fx25401
  %fv5403 = icmp slt i64 %fva5402, 0
  %nz5404 = zext i1 %fn5397 to i64
  %zz5405 = zext i1 %fz5398 to i64
  %cz5406 = zext i1 %fc5399 to i64
  %vz5407 = zext i1 %fv5403 to i64
  %ns5408 = shl i64 %nz5404, 31
  %zs5409 = shl i64 %zz5405, 30
  %cs5410 = shl i64 %cz5406, 29
  %vs5411 = shl i64 %vz5407, 28
  %nzor5412 = or i64 %ns5408, %zs5409
  %cvor5413 = or i64 %cs5410, %vs5411
  %nzcv5414 = or i64 %nzor5412, %cvor5413
  %wp5415 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5414, ptr %wp5415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f278 word 0x54000240
  %r5416.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5416 = load i64, ptr %r5416.p, align 8, !alias.scope !3, !noalias !4
  %fsh5418 = lshr i64 %r5416, 30
  %cond5417 = trunc i64 %fsh5418 to i1
  br i1 %cond5417, label %L_80029f2c0, label %L_80029f27c_ft
L_80029f27c_ft:
  ; @pc 0x80029f27c word 0xb40000c1
  %r5419.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5419 = load i64, ptr %r5419.p, align 8, !alias.scope !3, !noalias !4
  %cmp5420 = icmp eq i64 %r5419, 0
  br i1 %cmp5420, label %L_80029f294, label %L_80029f280_ft
L_80029f280_ft:
  ; @pc 0x80029f280 word 0x39400029
  %r5421.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5421 = load i64, ptr %r5421.p, align 8, !alias.scope !3, !noalias !4
  %gmp5422 = inttoptr i64 %r5421 to ptr
  %gml5423 = load i8, ptr %gmp5422, align 1, !alias.scope !4, !noalias !3
  %c5424 = zext i8 %gml5423 to i64
  %wp5425 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5424, ptr %wp5425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f284 word 0x340000a9
  %r5426.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5426 = load i64, ptr %r5426.p, align 8, !alias.scope !3, !noalias !4
  %c5427 = trunc i64 %r5426 to i32
  %cmp5428 = icmp eq i32 %c5427, 0
  br i1 %cmp5428, label %L_80029f298, label %L_80029f288_ft
L_80029f288_ft:
  ; @pc 0x80029f288 word 0xaa1f03eb
  %t5429 = or i64 0, 0
  %wp5430 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t5429, ptr %wp5430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f28c word 0x9100042a
  %r5431.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5431 = load i64, ptr %r5431.p, align 8, !alias.scope !3, !noalias !4
  %t5432 = add i64 %r5431, 1
  %wp5433 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5432, ptr %wp5433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f290 word 0x17fffd46
  br label %L_80029e7a8
L_80029f2f8_ft:
  ; @pc 0x80029f2f8 word 0xf9401ea8
  %r5588.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5588 = load i64, ptr %r5588.p, align 8, !alias.scope !3, !noalias !4
  %t5589 = add i64 %r5588, 56
  %gmp5590 = inttoptr i64 %t5589 to ptr
  %gml5591 = load i64, ptr %gmp5590, align 1, !alias.scope !4, !noalias !3
  %wp5592 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5591, ptr %wp5592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f2fc word 0x910182d6
  %r5593.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5593 = load i64, ptr %r5593.p, align 8, !alias.scope !3, !noalias !4
  %t5594 = add i64 %r5593, 96
  %wp5595 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t5594, ptr %wp5595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f300 word 0xb98042a9
  %r5596.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5596 = load i64, ptr %r5596.p, align 8, !alias.scope !3, !noalias !4
  %t5597 = add i64 %r5596, 64
  %gmp5598 = inttoptr i64 %t5597 to ptr
  %gml5599 = load i32, ptr %gmp5598, align 1, !alias.scope !4, !noalias !3
  %c5600 = sext i32 %gml5599 to i64
  %wp5601 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5600, ptr %wp5601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f304 word 0x8b080128
  %r5602.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5602 = load i64, ptr %r5602.p, align 8, !alias.scope !3, !noalias !4
  %r5603.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5603 = load i64, ptr %r5603.p, align 8, !alias.scope !3, !noalias !4
  %t5604 = add i64 %r5602, %r5603
  %wp5605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5604, ptr %wp5605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f308 word 0x381ff11f
  %r5606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5606 = load i64, ptr %r5606.p, align 8, !alias.scope !3, !noalias !4
  %t5607 = add i64 %r5606, -1
  %c5608 = trunc i32 0 to i8
  %gmp5609 = inttoptr i64 %t5607 to ptr
  store i8 %c5608, ptr %gmp5609, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80029f30c word 0xf940aaa0
  %r5610.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5610 = load i64, ptr %r5610.p, align 8, !alias.scope !3, !noalias !4
  %t5611 = add i64 %r5610, 336
  %gmp5612 = inttoptr i64 %t5611 to ptr
  %gml5613 = load i64, ptr %gmp5612, align 1, !alias.scope !4, !noalias !3
  %wp5614 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5613, ptr %wp5614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f310 word 0xf9401eb7
  %r5615.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5615 = load i64, ptr %r5615.p, align 8, !alias.scope !3, !noalias !4
  %t5616 = add i64 %r5615, 56
  %gmp5617 = inttoptr i64 %t5616 to ptr
  %gml5618 = load i64, ptr %gmp5617, align 1, !alias.scope !4, !noalias !3
  %wp5619 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml5618, ptr %wp5619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f314 word 0xf9400008
  %r5620.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5620 = load i64, ptr %r5620.p, align 8, !alias.scope !3, !noalias !4
  %gmp5621 = inttoptr i64 %r5620 to ptr
  %gml5622 = load i64, ptr %gmp5621, align 1, !alias.scope !4, !noalias !3
  %wp5623 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5622, ptr %wp5623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f318 word 0xf9403108
  %r5624.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5624 = load i64, ptr %r5624.p, align 8, !alias.scope !3, !noalias !4
  %t5625 = add i64 %r5624, 96
  %gmp5626 = inttoptr i64 %t5625 to ptr
  %gml5627 = load i64, ptr %gmp5626, align 1, !alias.scope !4, !noalias !3
  %wp5628 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5627, ptr %wp5628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f31c word 0xd63f0100
  %r5629.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5629 = load i64, ptr %r5629.p, align 8, !alias.scope !3, !noalias !4
  %fp5630 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5629, ptr %fp5630, align 8, !alias.scope !3, !noalias !4
  %wp5631 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487584, ptr %wp5631, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80029f320 word 0xaa0003e1
  %r5632.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5632 = load i64, ptr %r5632.p, align 8, !alias.scope !3, !noalias !4
  %t5633 = or i64 0, %r5632
  %wp5634 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5633, ptr %wp5634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f324 word 0xaa1703e0
  %r5635.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5635 = load i64, ptr %r5635.p, align 8, !alias.scope !3, !noalias !4
  %t5636 = or i64 0, %r5635
  %wp5637 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5636, ptr %wp5637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f328 word 0x97fbcfba
  %wp5638 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487596, ptr %wp5638, align 8, !alias.scope !3, !noalias !4
  call void @f_800193210(ptr %c)
  ; @pc 0x80029f32c word 0xaa0003e1
  %r5639.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5639 = load i64, ptr %r5639.p, align 8, !alias.scope !3, !noalias !4
  %t5640 = or i64 0, %r5639
  %wp5641 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5640, ptr %wp5641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f330 word 0xaa1603e0
  %r5642.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5642 = load i64, ptr %r5642.p, align 8, !alias.scope !3, !noalias !4
  %t5643 = or i64 0, %r5642
  %wp5644 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5643, ptr %wp5644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f334 word 0x941ca1a7
  %wp5645 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362487608, ptr %wp5645, align 8, !alias.scope !3, !noalias !4
  call void @f_8009c79d0(ptr %c)
  br label %L_80029f338
L_80029f344_ft:
  ; @pc 0x80029f344 word 0x88087f5f
  %r5679.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5679 = load i64, ptr %r5679.p, align 8, !alias.scope !3, !noalias !4
  %atp5680 = inttoptr i64 %r5679 to ptr
  %fp5681 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5682 = load i64, ptr %fp5681, align 8, !alias.scope !3, !noalias !4
  %fp5683 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5684 = load i64, ptr %fp5683, align 8, !alias.scope !3, !noalias !4
  %fp5685 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5685, align 8, !alias.scope !3, !noalias !4
  %cmp5686 = icmp eq i64 %fv5682, %r5679
  %c5687 = trunc i64 %fv5684 to i32
  %cx5688 = cmpxchg ptr %atp5680, i32 %c5687, i32 0 seq_cst seq_cst, align 4
  %cxok5689 = extractvalue { i32, i1 } %cx5688, 1
  %t5690 = and i1 %cmp5686, %cxok5689
  %sel5691 = select i1 %t5690, i32 0, i32 1
  %c5692 = zext i32 %sel5691 to i64
  %wp5693 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5692, ptr %wp5693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80029f348 word 0x34ff8c28
  %r5694.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5694 = load i64, ptr %r5694.p, align 8, !alias.scope !3, !noalias !4
  %c5695 = trunc i64 %r5694 to i32
  %cmp5696 = icmp eq i32 %c5695, 0
  br i1 %cmp5696, label %L_80029e4cc, label %L_80029f34c_ft
L_80029f34c_ft:
  ; @pc 0x80029f34c word 0x17fffffb
  br label %L_80029f338
L_80029e714_jt_def:
  %fp5697 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1042, ptr %fp5697, align 8, !alias.scope !3, !noalias !4
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
