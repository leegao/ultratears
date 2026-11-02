; UltraTears chunk main_123_animblend: 1 functions [0x8001e1eb4..0x8001e2de8)
; ModuleID = 'main_123_animblend_raw'
source_filename = "main_123_animblend_raw"
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

declare dso_local void @f_8001e2de8(ptr)
declare dso_local void @f_8001e2dec(ptr)
declare dso_local void @f_8001e2df0(ptr)
declare dso_local void @f_80028d6d4(ptr)
declare dso_local void @f_80187cb80(ptr)
declare dso_local void @f_8029927f4(ptr)
declare dso_local void @f_802a620a4(ptr)
declare dso_local void @f_802a731ec(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)
declare dso_local void @f_802ba3ac0(ptr)
declare dso_local void @f_802ba4060(ptr)
declare dso_local void @f_802ba4070(ptr)
declare dso_local void @f_802ba47e0(ptr)
declare dso_local void @f_802ba4920(ptr)
declare dso_local void @f_802ba49e0(ptr)
declare dso_local void @f_802ba5ab0(ptr)
declare dso_local void @f_802ba5ac0(ptr)

define dso_local void @f_8001e1eb4(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001e1eb4:
  ; @pc 0x8001e1eb4 word 0x39446008
  %r5.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = add i64 %r5, 280
  %gmp7 = inttoptr i64 %t6 to ptr
  %gml8 = load i8, ptr %gmp7, align 1, !alias.scope !4, !noalias !3
  %c9 = zext i8 %gml8 to i64
  %wp10 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9, ptr %wp10, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1eb8 word 0x37184be8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %t12 = and i64 %r11, 8
  %cmp13 = icmp ne i64 %t12, 0
  br i1 %cmp13, label %L_8001e2834, label %L_8001e1ebc_ft
L_8001e1f1c:
  ; @pc 0x8001e1f1c word 0x32000108
  %r155.p = getelementptr inbounds i8, ptr %c, i64 64
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %c156 = trunc i64 %r155 to i32
  %t157 = or i32 %c156, 1
  %c158 = zext i32 %t157 to i64
  %wp159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c158, ptr %wp159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f20 word 0x39046268
  %r160.p = getelementptr inbounds i8, ptr %c, i64 152
  %r160 = load i64, ptr %r160.p, align 8, !alias.scope !3, !noalias !4
  %t161 = add i64 %r160, 280
  %r162.p = getelementptr inbounds i8, ptr %c, i64 64
  %r162 = load i64, ptr %r162.p, align 8, !alias.scope !3, !noalias !4
  %c163 = trunc i64 %r162 to i32
  %c164 = trunc i32 %c163 to i8
  %gmp165 = inttoptr i64 %t161 to ptr
  store i8 %c164, ptr %gmp165, align 1, !alias.scope !4, !noalias !3
  br label %L_8001e1f24
L_8001e1f24:
  ; @pc 0x8001e1f24 word 0xd001bb57
  %wp166 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 34419814400, ptr %wp166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f28 word 0xd001bb49
  %wp167 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f2c word 0xf94562f7
  %r168.p = getelementptr inbounds i8, ptr %c, i64 184
  %r168 = load i64, ptr %r168.p, align 8, !alias.scope !3, !noalias !4
  %t169 = add i64 %r168, 2752
  %gmp170 = inttoptr i64 %t169 to ptr
  %gml171 = load i64, ptr %gmp170, align 1, !alias.scope !4, !noalias !3
  %wp172 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml171, ptr %wp172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f30 word 0xf94002e8
  %r173.p = getelementptr inbounds i8, ptr %c, i64 184
  %r173 = load i64, ptr %r173.p, align 8, !alias.scope !3, !noalias !4
  %gmp174 = inttoptr i64 %r173 to ptr
  %gml175 = load i64, ptr %gmp174, align 1, !alias.scope !4, !noalias !3
  %wp176 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml175, ptr %wp176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f34 word 0xf9406514
  %r177.p = getelementptr inbounds i8, ptr %c, i64 64
  %r177 = load i64, ptr %r177.p, align 8, !alias.scope !3, !noalias !4
  %t178 = add i64 %r177, 200
  %gmp179 = inttoptr i64 %t178 to ptr
  %gml180 = load i64, ptr %gmp179, align 1, !alias.scope !4, !noalias !3
  %wp181 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml180, ptr %wp181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f38 word 0xf9400268
  %r182.p = getelementptr inbounds i8, ptr %c, i64 152
  %r182 = load i64, ptr %r182.p, align 8, !alias.scope !3, !noalias !4
  %gmp183 = inttoptr i64 %r182 to ptr
  %gml184 = load i64, ptr %gmp183, align 1, !alias.scope !4, !noalias !3
  %wp185 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml184, ptr %wp185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f3c word 0xf9401108
  %r186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r186 = load i64, ptr %r186.p, align 8, !alias.scope !3, !noalias !4
  %t187 = add i64 %r186, 32
  %gmp188 = inttoptr i64 %t187 to ptr
  %gml189 = load i64, ptr %gmp188, align 1, !alias.scope !4, !noalias !3
  %wp190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml189, ptr %wp190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f40 word 0xf9451d29
  %r191.p = getelementptr inbounds i8, ptr %c, i64 72
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 2616
  %gmp193 = inttoptr i64 %t192 to ptr
  %gml194 = load i64, ptr %gmp193, align 1, !alias.scope !4, !noalias !3
  %wp195 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml194, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f44 word 0xeb09011f
  %r196.p = getelementptr inbounds i8, ptr %c, i64 64
  %r196 = load i64, ptr %r196.p, align 8, !alias.scope !3, !noalias !4
  %r197.p = getelementptr inbounds i8, ptr %c, i64 72
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %t198 = sub i64 %r196, %r197
  %fn199 = icmp slt i64 %t198, 0
  %fz200 = icmp eq i64 %t198, 0
  %fc201 = icmp uge i64 %r196, %r197
  %fx1202 = xor i64 %r196, %r197
  %fx2203 = xor i64 %r196, %t198
  %fva204 = and i64 %fx1202, %fx2203
  %fv205 = icmp slt i64 %fva204, 0
  %nz206 = zext i1 %fn199 to i64
  %zz207 = zext i1 %fz200 to i64
  %cz208 = zext i1 %fc201 to i64
  %vz209 = zext i1 %fv205 to i64
  %ns210 = shl i64 %nz206, 31
  %zs211 = shl i64 %zz207, 30
  %cs212 = shl i64 %cz208, 29
  %vs213 = shl i64 %vz209, 28
  %nzor214 = or i64 %ns210, %zs211
  %cvor215 = or i64 %cs212, %vs213
  %nzcv216 = or i64 %nzor214, %cvor215
  %wp217 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv216, ptr %wp217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f48 word 0x54004a41
  %r218.p = getelementptr inbounds i8, ptr %c, i64 272
  %r218 = load i64, ptr %r218.p, align 8, !alias.scope !3, !noalias !4
  %fsh220 = lshr i64 %r218, 30
  %ftr221 = trunc i64 %fsh220 to i1
  %cond219 = xor i1 %ftr221, true
  br i1 %cond219, label %L_8001e2890, label %L_8001e1f4c_ft
L_8001e1f50:
  ; @pc 0x8001e1f50 word 0xf9400288
  %r225.p = getelementptr inbounds i8, ptr %c, i64 160
  %r225 = load i64, ptr %r225.p, align 8, !alias.scope !3, !noalias !4
  %gmp226 = inttoptr i64 %r225 to ptr
  %gml227 = load i64, ptr %gmp226, align 1, !alias.scope !4, !noalias !3
  %wp228 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml227, ptr %wp228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f54 word 0xb001bca9
  %wp229 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f58 word 0xf9401908
  %r230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r230 = load i64, ptr %r230.p, align 8, !alias.scope !3, !noalias !4
  %t231 = add i64 %r230, 48
  %gmp232 = inttoptr i64 %t231 to ptr
  %gml233 = load i64, ptr %gmp232, align 1, !alias.scope !4, !noalias !3
  %wp234 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml233, ptr %wp234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f5c word 0xf944e529
  %r235.p = getelementptr inbounds i8, ptr %c, i64 72
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %t236 = add i64 %r235, 2504
  %gmp237 = inttoptr i64 %t236 to ptr
  %gml238 = load i64, ptr %gmp237, align 1, !alias.scope !4, !noalias !3
  %wp239 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml238, ptr %wp239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f60 word 0xeb09011f
  %r240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r240 = load i64, ptr %r240.p, align 8, !alias.scope !3, !noalias !4
  %r241.p = getelementptr inbounds i8, ptr %c, i64 72
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %t242 = sub i64 %r240, %r241
  %fn243 = icmp slt i64 %t242, 0
  %fz244 = icmp eq i64 %t242, 0
  %fc245 = icmp uge i64 %r240, %r241
  %fx1246 = xor i64 %r240, %r241
  %fx2247 = xor i64 %r240, %t242
  %fva248 = and i64 %fx1246, %fx2247
  %fv249 = icmp slt i64 %fva248, 0
  %nz250 = zext i1 %fn243 to i64
  %zz251 = zext i1 %fz244 to i64
  %cz252 = zext i1 %fc245 to i64
  %vz253 = zext i1 %fv249 to i64
  %ns254 = shl i64 %nz250, 31
  %zs255 = shl i64 %zz251, 30
  %cs256 = shl i64 %cz252, 29
  %vs257 = shl i64 %vz253, 28
  %nzor258 = or i64 %ns254, %zs255
  %cvor259 = or i64 %cs256, %vs257
  %nzcv260 = or i64 %nzor258, %cvor259
  %wp261 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv260, ptr %wp261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f64 word 0x540049e1
  %r262.p = getelementptr inbounds i8, ptr %c, i64 272
  %r262 = load i64, ptr %r262.p, align 8, !alias.scope !3, !noalias !4
  %fsh264 = lshr i64 %r262, 30
  %ftr265 = trunc i64 %fsh264 to i1
  %cond263 = xor i1 %ftr265, true
  br i1 %cond263, label %L_8001e28a0, label %L_8001e1f68_ft
L_8001e1f7c:
  ; @pc 0x8001e1f7c word 0xf9400288
  %r310.p = getelementptr inbounds i8, ptr %c, i64 160
  %r310 = load i64, ptr %r310.p, align 8, !alias.scope !3, !noalias !4
  %gmp311 = inttoptr i64 %r310 to ptr
  %gml312 = load i64, ptr %gmp311, align 1, !alias.scope !4, !noalias !3
  %wp313 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml312, ptr %wp313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f80 word 0xb001bca9
  %wp314 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f84 word 0xf001bb58
  %wp315 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419818496, ptr %wp315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f88 word 0xf9400d08
  %r316.p = getelementptr inbounds i8, ptr %c, i64 64
  %r316 = load i64, ptr %r316.p, align 8, !alias.scope !3, !noalias !4
  %t317 = add i64 %r316, 24
  %gmp318 = inttoptr i64 %t317 to ptr
  %gml319 = load i64, ptr %gmp318, align 1, !alias.scope !4, !noalias !3
  %wp320 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml319, ptr %wp320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f8c word 0xf944cd29
  %r321.p = getelementptr inbounds i8, ptr %c, i64 72
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %t322 = add i64 %r321, 2456
  %gmp323 = inttoptr i64 %t322 to ptr
  %gml324 = load i64, ptr %gmp323, align 1, !alias.scope !4, !noalias !3
  %wp325 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml324, ptr %wp325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f90 word 0xf9477f18
  %r326.p = getelementptr inbounds i8, ptr %c, i64 192
  %r326 = load i64, ptr %r326.p, align 8, !alias.scope !3, !noalias !4
  %t327 = add i64 %r326, 3832
  %gmp328 = inttoptr i64 %t327 to ptr
  %gml329 = load i64, ptr %gmp328, align 1, !alias.scope !4, !noalias !3
  %wp330 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml329, ptr %wp330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f94 word 0xeb09011f
  %r331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r331 = load i64, ptr %r331.p, align 8, !alias.scope !3, !noalias !4
  %r332.p = getelementptr inbounds i8, ptr %c, i64 72
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %t333 = sub i64 %r331, %r332
  %fn334 = icmp slt i64 %t333, 0
  %fz335 = icmp eq i64 %t333, 0
  %fc336 = icmp uge i64 %r331, %r332
  %fx1337 = xor i64 %r331, %r332
  %fx2338 = xor i64 %r331, %t333
  %fva339 = and i64 %fx1337, %fx2338
  %fv340 = icmp slt i64 %fva339, 0
  %nz341 = zext i1 %fn334 to i64
  %zz342 = zext i1 %fz335 to i64
  %cz343 = zext i1 %fc336 to i64
  %vz344 = zext i1 %fv340 to i64
  %ns345 = shl i64 %nz341, 31
  %zs346 = shl i64 %zz342, 30
  %cs347 = shl i64 %cz343, 29
  %vs348 = shl i64 %vz344, 28
  %nzor349 = or i64 %ns345, %zs346
  %cvor350 = or i64 %cs347, %vs348
  %nzcv351 = or i64 %nzor349, %cvor350
  %wp352 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv351, ptr %wp352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f98 word 0x540048c1
  %r353.p = getelementptr inbounds i8, ptr %c, i64 272
  %r353 = load i64, ptr %r353.p, align 8, !alias.scope !3, !noalias !4
  %fsh355 = lshr i64 %r353, 30
  %ftr356 = trunc i64 %fsh355 to i1
  %cond354 = xor i1 %ftr356, true
  br i1 %cond354, label %L_8001e28b0, label %L_8001e1f9c_ft
L_8001e1fd8:
  ; @pc 0x8001e1fd8 word 0xf9400b40
  %r435.p = getelementptr inbounds i8, ptr %c, i64 208
  %r435 = load i64, ptr %r435.p, align 8, !alias.scope !3, !noalias !4
  %t436 = add i64 %r435, 16
  %gmp437 = inttoptr i64 %t436 to ptr
  %gml438 = load i64, ptr %gmp437, align 1, !alias.scope !4, !noalias !3
  %wp439 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml438, ptr %wp439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fdc word 0xeb15001f
  %r440.p = getelementptr inbounds i8, ptr %c, i64 0
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %r441.p = getelementptr inbounds i8, ptr %c, i64 168
  %r441 = load i64, ptr %r441.p, align 8, !alias.scope !3, !noalias !4
  %t442 = sub i64 %r440, %r441
  %fn443 = icmp slt i64 %t442, 0
  %fz444 = icmp eq i64 %t442, 0
  %fc445 = icmp uge i64 %r440, %r441
  %fx1446 = xor i64 %r440, %r441
  %fx2447 = xor i64 %r440, %t442
  %fva448 = and i64 %fx1446, %fx2447
  %fv449 = icmp slt i64 %fva448, 0
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
  ; @pc 0x8001e1fe0 word 0x54000040
  %r462.p = getelementptr inbounds i8, ptr %c, i64 272
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %fsh464 = lshr i64 %r462, 30
  %cond463 = trunc i64 %fsh464 to i1
  br i1 %cond463, label %L_8001e1fe8, label %L_8001e1fe4_ft
L_8001e1fe8:
  ; @pc 0x8001e1fe8 word 0x9240bc08
  %r466.p = getelementptr inbounds i8, ptr %c, i64 0
  %r466 = load i64, ptr %r466.p, align 8, !alias.scope !3, !noalias !4
  %t467 = and i64 %r466, 281474976710655
  %wp468 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t467, ptr %wp468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fec word 0xeb5c411f
  %r469.p = getelementptr inbounds i8, ptr %c, i64 64
  %r469 = load i64, ptr %r469.p, align 8, !alias.scope !3, !noalias !4
  %r470.p = getelementptr inbounds i8, ptr %c, i64 224
  %r470 = load i64, ptr %r470.p, align 8, !alias.scope !3, !noalias !4
  %t471 = lshr i64 %r470, 16
  %t472 = sub i64 %r469, %t471
  %fn473 = icmp slt i64 %t472, 0
  %fz474 = icmp eq i64 %t472, 0
  %fc475 = icmp uge i64 %r469, %t471
  %fx1476 = xor i64 %r469, %t471
  %fx2477 = xor i64 %r469, %t472
  %fva478 = and i64 %fx1476, %fx2477
  %fv479 = icmp slt i64 %fva478, 0
  %nz480 = zext i1 %fn473 to i64
  %zz481 = zext i1 %fz474 to i64
  %cz482 = zext i1 %fc475 to i64
  %vz483 = zext i1 %fv479 to i64
  %ns484 = shl i64 %nz480, 31
  %zs485 = shl i64 %zz481, 30
  %cs486 = shl i64 %cz482, 29
  %vs487 = shl i64 %vz483, 28
  %nzor488 = or i64 %ns484, %zs485
  %cvor489 = or i64 %cs486, %vs487
  %nzcv490 = or i64 %nzor488, %cvor489
  %wp491 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv490, ptr %wp491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ff0 word 0x540046c0
  %r492.p = getelementptr inbounds i8, ptr %c, i64 272
  %r492 = load i64, ptr %r492.p, align 8, !alias.scope !3, !noalias !4
  %fsh494 = lshr i64 %r492, 30
  %cond493 = trunc i64 %fsh494 to i1
  br i1 %cond493, label %L_8001e28c8, label %L_8001e1ff4_ft
L_8001e2000:
  ; @pc 0x8001e2000 word 0x710046df
  %r529.p = getelementptr inbounds i8, ptr %c, i64 176
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %c530 = trunc i64 %r529 to i32
  %t531 = sub i32 %c530, 17
  %fn532 = icmp slt i32 %t531, 0
  %fz533 = icmp eq i32 %t531, 0
  %fc534 = icmp uge i32 %c530, 17
  %fx1535 = xor i32 %c530, 17
  %fx2536 = xor i32 %c530, %t531
  %fva537 = and i32 %fx1535, %fx2536
  %fv538 = icmp slt i32 %fva537, 0
  %nz539 = zext i1 %fn532 to i64
  %zz540 = zext i1 %fz533 to i64
  %cz541 = zext i1 %fc534 to i64
  %vz542 = zext i1 %fv538 to i64
  %ns543 = shl i64 %nz539, 31
  %zs544 = shl i64 %zz540, 30
  %cs545 = shl i64 %cz541, 29
  %vs546 = shl i64 %vz542, 28
  %nzor547 = or i64 %ns543, %zs544
  %cvor548 = or i64 %cs545, %vs546
  %nzcv549 = or i64 %nzor547, %cvor548
  %wp550 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv549, ptr %wp550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2004 word 0x5400470a
  %r551.p = getelementptr inbounds i8, ptr %c, i64 272
  %r551 = load i64, ptr %r551.p, align 8, !alias.scope !3, !noalias !4
  %fsh553 = lshr i64 %r551, 31
  %ftr554 = trunc i64 %fsh553 to i1
  %fsh555 = lshr i64 %r551, 28
  %ftr556 = trunc i64 %fsh555 to i1
  %cond552 = icmp eq i1 %ftr554, %ftr556
  br i1 %cond552, label %L_8001e28e4, label %L_8001e2008
L_8001e2008:
  ; @pc 0x8001e2008 word 0x9270bf88
  %r557.p = getelementptr inbounds i8, ptr %c, i64 224
  %r557 = load i64, ptr %r557.p, align 8, !alias.scope !3, !noalias !4
  %t558 = and i64 %r557, -65536
  %wp559 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t558, ptr %wp559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e200c word 0xf140411f
  %r560.p = getelementptr inbounds i8, ptr %c, i64 64
  %r560 = load i64, ptr %r560.p, align 8, !alias.scope !3, !noalias !4
  %t561 = sub i64 %r560, 65536
  %fn562 = icmp slt i64 %t561, 0
  %fz563 = icmp eq i64 %t561, 0
  %fc564 = icmp uge i64 %r560, 65536
  %fx1565 = xor i64 %r560, 65536
  %fx2566 = xor i64 %r560, %t561
  %fva567 = and i64 %fx1565, %fx2566
  %fv568 = icmp slt i64 %fva567, 0
  %nz569 = zext i1 %fn562 to i64
  %zz570 = zext i1 %fz563 to i64
  %cz571 = zext i1 %fc564 to i64
  %vz572 = zext i1 %fv568 to i64
  %ns573 = shl i64 %nz569, 31
  %zs574 = shl i64 %zz570, 30
  %cs575 = shl i64 %cz571, 29
  %vs576 = shl i64 %vz572, 28
  %nzor577 = or i64 %ns573, %zs574
  %cvor578 = or i64 %cs575, %vs576
  %nzcv579 = or i64 %nzor577, %cvor578
  %wp580 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv579, ptr %wp580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2010 word 0x54006de0
  %r581.p = getelementptr inbounds i8, ptr %c, i64 272
  %r581 = load i64, ptr %r581.p, align 8, !alias.scope !3, !noalias !4
  %fsh583 = lshr i64 %r581, 30
  %cond582 = trunc i64 %fsh583 to i1
  br i1 %cond582, label %L_8001e2dcc, label %L_8001e2014
L_8001e2014:
  ; @pc 0x8001e2014 word 0xaa1503e0
  %r584.p = getelementptr inbounds i8, ptr %c, i64 168
  %r584 = load i64, ptr %r584.p, align 8, !alias.scope !3, !noalias !4
  %t585 = or i64 0, %r584
  %wp586 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t585, ptr %wp586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2018 word 0x94a70812
  %wp587 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712668, ptr %wp587, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001e201c word 0xf9400328
  %r588.p = getelementptr inbounds i8, ptr %c, i64 200
  %r588 = load i64, ptr %r588.p, align 8, !alias.scope !3, !noalias !4
  %gmp589 = inttoptr i64 %r588 to ptr
  %gml590 = load i64, ptr %gmp589, align 1, !alias.scope !4, !noalias !3
  %wp591 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml590, ptr %wp591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2020 word 0xf140811f
  %r592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r592 = load i64, ptr %r592.p, align 8, !alias.scope !3, !noalias !4
  %t593 = sub i64 %r592, 131072
  %fn594 = icmp slt i64 %t593, 0
  %fz595 = icmp eq i64 %t593, 0
  %fc596 = icmp uge i64 %r592, 131072
  %fx1597 = xor i64 %r592, 131072
  %fx2598 = xor i64 %r592, %t593
  %fva599 = and i64 %fx1597, %fx2598
  %fv600 = icmp slt i64 %fva599, 0
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
  ; @pc 0x8001e2024 word 0x54004ce2
  %r613.p = getelementptr inbounds i8, ptr %c, i64 272
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %fsh615 = lshr i64 %r613, 29
  %cond614 = trunc i64 %fsh615 to i1
  br i1 %cond614, label %L_8001e29c0, label %L_8001e2028
L_8001e2028:
  ; @pc 0x8001e2028 word 0xf9400329
  %r616.p = getelementptr inbounds i8, ptr %c, i64 200
  %r616 = load i64, ptr %r616.p, align 8, !alias.scope !3, !noalias !4
  %gmp617 = inttoptr i64 %r616 to ptr
  %gml618 = load i64, ptr %gmp617, align 1, !alias.scope !4, !noalias !3
  %wp619 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml618, ptr %wp619, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e202c
L_8001e202c:
  ; @pc 0x8001e202c word 0xaa0903e8
  %r620.p = getelementptr inbounds i8, ptr %c, i64 72
  %r620 = load i64, ptr %r620.p, align 8, !alias.scope !3, !noalias !4
  %t621 = or i64 0, %r620
  %wp622 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t621, ptr %wp622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2030 word 0xb5003c89
  %r623.p = getelementptr inbounds i8, ptr %c, i64 72
  %r623 = load i64, ptr %r623.p, align 8, !alias.scope !3, !noalias !4
  %cmp624 = icmp ne i64 %r623, 0
  br i1 %cmp624, label %L_8001e27c0, label %L_8001e2034_ft
L_8001e2038:
  ; @pc 0x8001e2038 word 0x8b1a012a
  %r627.p = getelementptr inbounds i8, ptr %c, i64 72
  %r627 = load i64, ptr %r627.p, align 8, !alias.scope !3, !noalias !4
  %r628.p = getelementptr inbounds i8, ptr %c, i64 208
  %r628 = load i64, ptr %r628.p, align 8, !alias.scope !3, !noalias !4
  %t629 = add i64 %r627, %r628
  %wp630 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t629, ptr %wp630, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e203c
L_8001e203c:
  ; @pc 0x8001e203c word 0xc85f7f29
  %r631.p = getelementptr inbounds i8, ptr %c, i64 200
  %r631 = load i64, ptr %r631.p, align 8, !alias.scope !3, !noalias !4
  %atp632 = inttoptr i64 %r631 to ptr
  %ldx633 = load atomic i64, ptr %atp632 acquire, align 8, !alias.scope !4, !noalias !3
  %fp634 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r631, ptr %fp634, align 8, !alias.scope !3, !noalias !4
  %fp635 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx633, ptr %fp635, align 8, !alias.scope !3, !noalias !4
  %wp636 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %ldx633, ptr %wp636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2040 word 0xeb08013f
  %r637.p = getelementptr inbounds i8, ptr %c, i64 72
  %r637 = load i64, ptr %r637.p, align 8, !alias.scope !3, !noalias !4
  %r638.p = getelementptr inbounds i8, ptr %c, i64 64
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %t639 = sub i64 %r637, %r638
  %fn640 = icmp slt i64 %t639, 0
  %fz641 = icmp eq i64 %t639, 0
  %fc642 = icmp uge i64 %r637, %r638
  %fx1643 = xor i64 %r637, %r638
  %fx2644 = xor i64 %r637, %t639
  %fva645 = and i64 %fx1643, %fx2644
  %fv646 = icmp slt i64 %fva645, 0
  %nz647 = zext i1 %fn640 to i64
  %zz648 = zext i1 %fz641 to i64
  %cz649 = zext i1 %fc642 to i64
  %vz650 = zext i1 %fv646 to i64
  %ns651 = shl i64 %nz647, 31
  %zs652 = shl i64 %zz648, 30
  %cs653 = shl i64 %cz649, 29
  %vs654 = shl i64 %vz650, 28
  %nzor655 = or i64 %ns651, %zs652
  %cvor656 = or i64 %cs653, %vs654
  %nzcv657 = or i64 %nzor655, %cvor656
  %wp658 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv657, ptr %wp658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2044 word 0x54ffff41
  %r659.p = getelementptr inbounds i8, ptr %c, i64 272
  %r659 = load i64, ptr %r659.p, align 8, !alias.scope !3, !noalias !4
  %fsh661 = lshr i64 %r659, 30
  %ftr662 = trunc i64 %fsh661 to i1
  %cond660 = xor i1 %ftr662, true
  br i1 %cond660, label %L_8001e202c, label %L_8001e2048_ft
L_8001e205c:
  ; @pc 0x8001e205c word 0x710042df
  %r687.p = getelementptr inbounds i8, ptr %c, i64 176
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %c688 = trunc i64 %r687 to i32
  %t689 = sub i32 %c688, 16
  %fn690 = icmp slt i32 %t689, 0
  %fz691 = icmp eq i32 %t689, 0
  %fc692 = icmp uge i32 %c688, 16
  %fx1693 = xor i32 %c688, 16
  %fx2694 = xor i32 %c688, %t689
  %fva695 = and i32 %fx1693, %fx2694
  %fv696 = icmp slt i32 %fva695, 0
  %nz697 = zext i1 %fn690 to i64
  %zz698 = zext i1 %fz691 to i64
  %cz699 = zext i1 %fc692 to i64
  %vz700 = zext i1 %fv696 to i64
  %ns701 = shl i64 %nz697, 31
  %zs702 = shl i64 %zz698, 30
  %cs703 = shl i64 %cz699, 29
  %vs704 = shl i64 %vz700, 28
  %nzor705 = or i64 %ns701, %zs702
  %cvor706 = or i64 %cs703, %vs704
  %nzcv707 = or i64 %nzor705, %cvor706
  %wp708 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv707, ptr %wp708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2060 word 0x5400006c
  %r709.p = getelementptr inbounds i8, ptr %c, i64 272
  %r709 = load i64, ptr %r709.p, align 8, !alias.scope !3, !noalias !4
  %fsh711 = lshr i64 %r709, 30
  %ftr712 = trunc i64 %fsh711 to i1
  %fsh713 = lshr i64 %r709, 31
  %ftr714 = trunc i64 %fsh713 to i1
  %fsh715 = lshr i64 %r709, 28
  %ftr716 = trunc i64 %fsh715 to i1
  %fnz717 = xor i1 %ftr712, true
  %feq718 = icmp eq i1 %ftr714, %ftr716
  %cond710 = and i1 %fnz717, %feq718
  br i1 %cond710, label %L_8001e206c, label %L_8001e2064_ft
L_8001e206c:
  ; @pc 0x8001e206c word 0xf9407280
  %r723.p = getelementptr inbounds i8, ptr %c, i64 160
  %r723 = load i64, ptr %r723.p, align 8, !alias.scope !3, !noalias !4
  %t724 = add i64 %r723, 224
  %gmp725 = inttoptr i64 %t724 to ptr
  %gml726 = load i64, ptr %gmp725, align 1, !alias.scope !4, !noalias !3
  %wp727 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml726, ptr %wp727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2070 word 0x9400035e
  %wp728 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712756, ptr %wp728, align 8, !alias.scope !3, !noalias !4
  call void @f_8001e2de8(ptr %c)
  br label %L_8001e2074
L_8001e2074:
  ; @pc 0x8001e2074 word 0xf9400268
  %r729.p = getelementptr inbounds i8, ptr %c, i64 152
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %gmp730 = inttoptr i64 %r729 to ptr
  %gml731 = load i64, ptr %gmp730, align 1, !alias.scope !4, !noalias !3
  %wp732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml731, ptr %wp732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2078 word 0xb001bb49
  %wp733 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e207c word 0x9001bcb6
  %wp734 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419990528, ptr %wp734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2080 word 0xf9452529
  %r735.p = getelementptr inbounds i8, ptr %c, i64 72
  %r735 = load i64, ptr %r735.p, align 8, !alias.scope !3, !noalias !4
  %t736 = add i64 %r735, 2632
  %gmp737 = inttoptr i64 %t736 to ptr
  %gml738 = load i64, ptr %gmp737, align 1, !alias.scope !4, !noalias !3
  %wp739 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml738, ptr %wp739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2084 word 0xb001bb79
  %wp740 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 34419830784, ptr %wp740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2088 word 0xf9403508
  %r741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %t742 = add i64 %r741, 104
  %gmp743 = inttoptr i64 %t742 to ptr
  %gml744 = load i64, ptr %gmp743, align 1, !alias.scope !4, !noalias !3
  %wp745 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml744, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e208c word 0xf944ead6
  %r746.p = getelementptr inbounds i8, ptr %c, i64 176
  %r746 = load i64, ptr %r746.p, align 8, !alias.scope !3, !noalias !4
  %t747 = add i64 %r746, 2512
  %gmp748 = inttoptr i64 %t747 to ptr
  %gml749 = load i64, ptr %gmp748, align 1, !alias.scope !4, !noalias !3
  %wp750 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml749, ptr %wp750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2090 word 0xf945db39
  %r751.p = getelementptr inbounds i8, ptr %c, i64 200
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %t752 = add i64 %r751, 2992
  %gmp753 = inttoptr i64 %t752 to ptr
  %gml754 = load i64, ptr %gmp753, align 1, !alias.scope !4, !noalias !3
  %wp755 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml754, ptr %wp755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2094 word 0xeb09011f
  %r756.p = getelementptr inbounds i8, ptr %c, i64 64
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %r757.p = getelementptr inbounds i8, ptr %c, i64 72
  %r757 = load i64, ptr %r757.p, align 8, !alias.scope !3, !noalias !4
  %t758 = sub i64 %r756, %r757
  %fn759 = icmp slt i64 %t758, 0
  %fz760 = icmp eq i64 %t758, 0
  %fc761 = icmp uge i64 %r756, %r757
  %fx1762 = xor i64 %r756, %r757
  %fx2763 = xor i64 %r756, %t758
  %fva764 = and i64 %fx1762, %fx2763
  %fv765 = icmp slt i64 %fva764, 0
  %nz766 = zext i1 %fn759 to i64
  %zz767 = zext i1 %fz760 to i64
  %cz768 = zext i1 %fc761 to i64
  %vz769 = zext i1 %fv765 to i64
  %ns770 = shl i64 %nz766, 31
  %zs771 = shl i64 %zz767, 30
  %cs772 = shl i64 %cz768, 29
  %vs773 = shl i64 %vz769, 28
  %nzor774 = or i64 %ns770, %zs771
  %cvor775 = or i64 %cs772, %vs773
  %nzcv776 = or i64 %nzor774, %cvor775
  %wp777 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv776, ptr %wp777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2098 word 0x540042e1
  %r778.p = getelementptr inbounds i8, ptr %c, i64 272
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %fsh780 = lshr i64 %r778, 30
  %ftr781 = trunc i64 %fsh780 to i1
  %cond779 = xor i1 %ftr781, true
  br i1 %cond779, label %L_8001e28f4, label %L_8001e209c_ft
L_8001e20c4:
  ; @pc 0x8001e20c4 word 0x3902a3ff
  %r843.p = getelementptr inbounds i8, ptr %c, i64 256
  %r843 = load i64, ptr %r843.p, align 8, !alias.scope !3, !noalias !4
  %t844 = add i64 %r843, 168
  %c845 = trunc i32 0 to i8
  %gmp846 = inttoptr i64 %t844 to ptr
  store i8 %c845, ptr %gmp846, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e20c8 word 0x9001bc28
  %wp847 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419924992, ptr %wp847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20cc word 0xf940701c
  %r848.p = getelementptr inbounds i8, ptr %c, i64 0
  %r848 = load i64, ptr %r848.p, align 8, !alias.scope !3, !noalias !4
  %t849 = add i64 %r848, 224
  %gmp850 = inttoptr i64 %t849 to ptr
  %gml851 = load i64, ptr %gmp850, align 1, !alias.scope !4, !noalias !3
  %wp852 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml851, ptr %wp852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20d0 word 0xb900afff
  %r853.p = getelementptr inbounds i8, ptr %c, i64 256
  %r853 = load i64, ptr %r853.p, align 8, !alias.scope !3, !noalias !4
  %t854 = add i64 %r853, 172
  %gmp855 = inttoptr i64 %t854 to ptr
  store i32 0, ptr %gmp855, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e20d4 word 0xfd412b20
  %r856.p = getelementptr inbounds i8, ptr %c, i64 200
  %r856 = load i64, ptr %r856.p, align 8, !alias.scope !3, !noalias !4
  %t857 = add i64 %r856, 592
  %gmp858 = inttoptr i64 %t857 to ptr
  %gml859 = load i64, ptr %gmp858, align 1, !alias.scope !4, !noalias !3
  %c860 = zext i64 %gml859 to i128
  %wp861 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c860, ptr %wp861, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20d8 word 0x529ffdd5
  %c862 = zext i32 65518 to i64
  %wp863 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c862, ptr %wp863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20dc word 0x72afeff5
  %r864.p = getelementptr inbounds i8, ptr %c, i64 168
  %r864 = load i64, ptr %r864.p, align 8, !alias.scope !3, !noalias !4
  %t865 = and i64 %r864, -4294901761
  %t866 = or i64 %t865, 2139029504
  %c867 = trunc i64 %t866 to i32
  %c868 = zext i32 %c867 to i64
  %wp869 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c868, ptr %wp869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20e0 word 0x3902e3ff
  %r870.p = getelementptr inbounds i8, ptr %c, i64 256
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %t871 = add i64 %r870, 184
  %c872 = trunc i32 0 to i8
  %gmp873 = inttoptr i64 %t871 to ptr
  store i8 %c872, ptr %gmp873, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e20e4 word 0xf9415108
  %r874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r874 = load i64, ptr %r874.p, align 8, !alias.scope !3, !noalias !4
  %t875 = add i64 %r874, 672
  %gmp876 = inttoptr i64 %t875 to ptr
  %gml877 = load i64, ptr %gmp876, align 1, !alias.scope !4, !noalias !3
  %wp878 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml877, ptr %wp878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20e8 word 0x1280000a
  %c879 = zext i32 -1 to i64
  %wp880 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20ec word 0x528001eb
  %c881 = zext i32 15 to i64
  %wp882 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c881, ptr %wp882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20f0 word 0x529fffec
  %c883 = zext i32 65535 to i64
  %wp884 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20f4 word 0x910283e0
  %r885.p = getelementptr inbounds i8, ptr %c, i64 256
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %t886 = add i64 %r885, 160
  %wp887 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t886, ptr %wp887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20f8 word 0xa90c7fff
  %r888.p = getelementptr inbounds i8, ptr %c, i64 256
  %r888 = load i64, ptr %r888.p, align 8, !alias.scope !3, !noalias !4
  %t889 = add i64 %r888, 192
  %t890 = add i64 %t889, 8
  %gmp891 = inttoptr i64 %t889 to ptr
  store i64 0, ptr %gmp891, align 1, !alias.scope !4, !noalias !3
  %gmp892 = inttoptr i64 %t890 to ptr
  store i64 0, ptr %gmp892, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e20fc word 0x91004109
  %r893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r893 = load i64, ptr %r893.p, align 8, !alias.scope !3, !noalias !4
  %t894 = add i64 %r893, 16
  %wp895 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t894, ptr %wp895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2100 word 0xf9401508
  %r896.p = getelementptr inbounds i8, ptr %c, i64 64
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %t897 = add i64 %r896, 40
  %gmp898 = inttoptr i64 %t897 to ptr
  %gml899 = load i64, ptr %gmp898, align 1, !alias.scope !4, !noalias !3
  %wp900 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml899, ptr %wp900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2104 word 0xfd005be0
  %r901.p = getelementptr inbounds i8, ptr %c, i64 256
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = add i64 %r901, 176
  %r903.p = getelementptr inbounds i8, ptr %c, i64 512
  %r903 = load i128, ptr %r903.p, align 16, !alias.scope !3, !noalias !4
  %c904 = trunc i128 %r903 to i64
  %gmp905 = inttoptr i64 %t902 to ptr
  store i64 %c904, ptr %gmp905, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2108 word 0xf90053e9
  %r906.p = getelementptr inbounds i8, ptr %c, i64 256
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %t907 = add i64 %r906, 160
  %r908.p = getelementptr inbounds i8, ptr %c, i64 72
  %r908 = load i64, ptr %r908.p, align 8, !alias.scope !3, !noalias !4
  %gmp909 = inttoptr i64 %t907 to ptr
  store i64 %r908, ptr %gmp909, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e210c word 0x12bfe009
  %c910 = zext i32 16777215 to i64
  %wp911 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c910, ptr %wp911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2110 word 0xb9013bff
  %r912.p = getelementptr inbounds i8, ptr %c, i64 256
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %t913 = add i64 %r912, 312
  %gmp914 = inttoptr i64 %t913 to ptr
  store i32 0, ptr %gmp914, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2114 word 0xb900e3f5
  %r915.p = getelementptr inbounds i8, ptr %c, i64 256
  %r915 = load i64, ptr %r915.p, align 8, !alias.scope !3, !noalias !4
  %t916 = add i64 %r915, 224
  %r917.p = getelementptr inbounds i8, ptr %c, i64 168
  %r917 = load i64, ptr %r917.p, align 8, !alias.scope !3, !noalias !4
  %c918 = trunc i64 %r917 to i32
  %gmp919 = inttoptr i64 %t916 to ptr
  store i32 %c918, ptr %gmp919, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2118 word 0xf90077fb
  %r920.p = getelementptr inbounds i8, ptr %c, i64 256
  %r920 = load i64, ptr %r920.p, align 8, !alias.scope !3, !noalias !4
  %t921 = add i64 %r920, 232
  %r922.p = getelementptr inbounds i8, ptr %c, i64 216
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %gmp923 = inttoptr i64 %t921 to ptr
  store i64 %r922, ptr %gmp923, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e211c word 0xb900f3e9
  %r924.p = getelementptr inbounds i8, ptr %c, i64 256
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = add i64 %r924, 240
  %r926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r926 = load i64, ptr %r926.p, align 8, !alias.scope !3, !noalias !4
  %c927 = trunc i64 %r926 to i32
  %gmp928 = inttoptr i64 %t925 to ptr
  store i32 %c927, ptr %gmp928, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2120 word 0xb900fbea
  %r929.p = getelementptr inbounds i8, ptr %c, i64 256
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %t930 = add i64 %r929, 248
  %r931.p = getelementptr inbounds i8, ptr %c, i64 80
  %r931 = load i64, ptr %r931.p, align 8, !alias.scope !3, !noalias !4
  %c932 = trunc i64 %r931 to i32
  %gmp933 = inttoptr i64 %t930 to ptr
  store i32 %c932, ptr %gmp933, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2124 word 0x3903f3eb
  %r934.p = getelementptr inbounds i8, ptr %c, i64 256
  %r934 = load i64, ptr %r934.p, align 8, !alias.scope !3, !noalias !4
  %t935 = add i64 %r934, 252
  %r936.p = getelementptr inbounds i8, ptr %c, i64 88
  %r936 = load i64, ptr %r936.p, align 8, !alias.scope !3, !noalias !4
  %c937 = trunc i64 %r936 to i32
  %c938 = trunc i32 %c937 to i8
  %gmp939 = inttoptr i64 %t935 to ptr
  store i8 %c938, ptr %gmp939, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2128 word 0x790203ec
  %r940.p = getelementptr inbounds i8, ptr %c, i64 256
  %r940 = load i64, ptr %r940.p, align 8, !alias.scope !3, !noalias !4
  %t941 = add i64 %r940, 256
  %r942.p = getelementptr inbounds i8, ptr %c, i64 96
  %r942 = load i64, ptr %r942.p, align 8, !alias.scope !3, !noalias !4
  %c943 = trunc i64 %r942 to i32
  %c944 = trunc i32 %c943 to i16
  %gmp945 = inttoptr i64 %t941 to ptr
  store i16 %c944, ptr %gmp945, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e212c word 0xb90107ff
  %r946.p = getelementptr inbounds i8, ptr %c, i64 256
  %r946 = load i64, ptr %r946.p, align 8, !alias.scope !3, !noalias !4
  %t947 = add i64 %r946, 260
  %gmp948 = inttoptr i64 %t947 to ptr
  store i32 0, ptr %gmp948, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2130 word 0xb9011be9
  %r949.p = getelementptr inbounds i8, ptr %c, i64 256
  %r949 = load i64, ptr %r949.p, align 8, !alias.scope !3, !noalias !4
  %t950 = add i64 %r949, 280
  %r951.p = getelementptr inbounds i8, ptr %c, i64 72
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %c952 = trunc i64 %r951 to i32
  %gmp953 = inttoptr i64 %t950 to ptr
  store i32 %c952, ptr %gmp953, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2134 word 0xb90123ea
  %r954.p = getelementptr inbounds i8, ptr %c, i64 256
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %t955 = add i64 %r954, 288
  %r956.p = getelementptr inbounds i8, ptr %c, i64 80
  %r956 = load i64, ptr %r956.p, align 8, !alias.scope !3, !noalias !4
  %c957 = trunc i64 %r956 to i32
  %gmp958 = inttoptr i64 %t955 to ptr
  store i32 %c957, ptr %gmp958, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2138 word 0x390493eb
  %r959.p = getelementptr inbounds i8, ptr %c, i64 256
  %r959 = load i64, ptr %r959.p, align 8, !alias.scope !3, !noalias !4
  %t960 = add i64 %r959, 292
  %r961.p = getelementptr inbounds i8, ptr %c, i64 88
  %r961 = load i64, ptr %r961.p, align 8, !alias.scope !3, !noalias !4
  %c962 = trunc i64 %r961 to i32
  %c963 = trunc i32 %c962 to i8
  %gmp964 = inttoptr i64 %t960 to ptr
  store i8 %c963, ptr %gmp964, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e213c word 0x790253ec
  %r965.p = getelementptr inbounds i8, ptr %c, i64 256
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %t966 = add i64 %r965, 296
  %r967.p = getelementptr inbounds i8, ptr %c, i64 96
  %r967 = load i64, ptr %r967.p, align 8, !alias.scope !3, !noalias !4
  %c968 = trunc i64 %r967 to i32
  %c969 = trunc i32 %c968 to i16
  %gmp970 = inttoptr i64 %t966 to ptr
  store i16 %c969, ptr %gmp970, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2140 word 0xb9012fff
  %r971.p = getelementptr inbounds i8, ptr %c, i64 256
  %r971 = load i64, ptr %r971.p, align 8, !alias.scope !3, !noalias !4
  %t972 = add i64 %r971, 300
  %gmp973 = inttoptr i64 %t972 to ptr
  store i32 0, ptr %gmp973, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2144 word 0xf9009bff
  %r974.p = getelementptr inbounds i8, ptr %c, i64 256
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %t975 = add i64 %r974, 304
  %gmp976 = inttoptr i64 %t975 to ptr
  store i64 0, ptr %gmp976, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2148 word 0xf80a435f
  %r977.p = getelementptr inbounds i8, ptr %c, i64 208
  %r977 = load i64, ptr %r977.p, align 8, !alias.scope !3, !noalias !4
  %t978 = add i64 %r977, 164
  %gmp979 = inttoptr i64 %t978 to ptr
  store i64 0, ptr %gmp979, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e214c word 0xf809c35f
  %r980.p = getelementptr inbounds i8, ptr %c, i64 208
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %t981 = add i64 %r980, 156
  %gmp982 = inttoptr i64 %t981 to ptr
  store i64 0, ptr %gmp982, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2150 word 0xa90d7fff
  %r983.p = getelementptr inbounds i8, ptr %c, i64 256
  %r983 = load i64, ptr %r983.p, align 8, !alias.scope !3, !noalias !4
  %t984 = add i64 %r983, 208
  %t985 = add i64 %t984, 8
  %gmp986 = inttoptr i64 %t984 to ptr
  store i64 0, ptr %gmp986, align 1, !alias.scope !4, !noalias !3
  %gmp987 = inttoptr i64 %t985 to ptr
  store i64 0, ptr %gmp987, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2154 word 0xa910efff
  %r988.p = getelementptr inbounds i8, ptr %c, i64 256
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %t989 = add i64 %r988, 264
  %t990 = add i64 %t989, 8
  %gmp991 = inttoptr i64 %t989 to ptr
  store i64 0, ptr %gmp991, align 1, !alias.scope !4, !noalias !3
  %r992.p = getelementptr inbounds i8, ptr %c, i64 216
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %gmp993 = inttoptr i64 %t990 to ptr
  store i64 %r992, ptr %gmp993, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2158 word 0xd63f0100
  %r994.p = getelementptr inbounds i8, ptr %c, i64 64
  %r994 = load i64, ptr %r994.p, align 8, !alias.scope !3, !noalias !4
  %fp995 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r994, ptr %fp995, align 8, !alias.scope !3, !noalias !4
  %wp996 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712988, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e215c word 0x9001ba48
  %wp997 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419679232, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2160 word 0x912ca108
  %r998.p = getelementptr inbounds i8, ptr %c, i64 64
  %r998 = load i64, ptr %r998.p, align 8, !alias.scope !3, !noalias !4
  %t999 = add i64 %r998, 2856
  %wp1000 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t999, ptr %wp1000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2164 word 0xf90053e8
  %r1001.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1001 = load i64, ptr %r1001.p, align 8, !alias.scope !3, !noalias !4
  %t1002 = add i64 %r1001, 160
  %r1003.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1003 = load i64, ptr %r1003.p, align 8, !alias.scope !3, !noalias !4
  %gmp1004 = inttoptr i64 %t1002 to ptr
  store i64 %r1003, ptr %gmp1004, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2168 word 0xf94002e8
  %r1005.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1005 = load i64, ptr %r1005.p, align 8, !alias.scope !3, !noalias !4
  %gmp1006 = inttoptr i64 %r1005 to ptr
  %gml1007 = load i64, ptr %gmp1006, align 1, !alias.scope !4, !noalias !3
  %wp1008 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1007, ptr %wp1008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e216c word 0xa91573f3
  %r1009.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1009 = load i64, ptr %r1009.p, align 8, !alias.scope !3, !noalias !4
  %t1010 = add i64 %r1009, 336
  %t1011 = add i64 %t1010, 8
  %r1012.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1012 = load i64, ptr %r1012.p, align 8, !alias.scope !3, !noalias !4
  %gmp1013 = inttoptr i64 %t1010 to ptr
  store i64 %r1012, ptr %gmp1013, align 1, !alias.scope !4, !noalias !3
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %gmp1015 = inttoptr i64 %t1011 to ptr
  store i64 %r1014, ptr %gmp1015, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2170 word 0xf9406500
  %r1016.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1016 = load i64, ptr %r1016.p, align 8, !alias.scope !3, !noalias !4
  %t1017 = add i64 %r1016, 200
  %gmp1018 = inttoptr i64 %t1017 to ptr
  %gml1019 = load i64, ptr %gmp1018, align 1, !alias.scope !4, !noalias !3
  %wp1020 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1019, ptr %wp1020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2174 word 0xf9400008
  %r1021.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1021 = load i64, ptr %r1021.p, align 8, !alias.scope !3, !noalias !4
  %gmp1022 = inttoptr i64 %r1021 to ptr
  %gml1023 = load i64, ptr %gmp1022, align 1, !alias.scope !4, !noalias !3
  %wp1024 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1023, ptr %wp1024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2178 word 0xf9403108
  %r1025.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1025 = load i64, ptr %r1025.p, align 8, !alias.scope !3, !noalias !4
  %t1026 = add i64 %r1025, 96
  %gmp1027 = inttoptr i64 %t1026 to ptr
  %gml1028 = load i64, ptr %gmp1027, align 1, !alias.scope !4, !noalias !3
  %wp1029 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1028, ptr %wp1029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e217c word 0xeb16011f
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %r1031.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1031 = load i64, ptr %r1031.p, align 8, !alias.scope !3, !noalias !4
  %t1032 = sub i64 %r1030, %r1031
  %fn1033 = icmp slt i64 %t1032, 0
  %fz1034 = icmp eq i64 %t1032, 0
  %fc1035 = icmp uge i64 %r1030, %r1031
  %fx11036 = xor i64 %r1030, %r1031
  %fx21037 = xor i64 %r1030, %t1032
  %fva1038 = and i64 %fx11036, %fx21037
  %fv1039 = icmp slt i64 %fva1038, 0
  %nz1040 = zext i1 %fn1033 to i64
  %zz1041 = zext i1 %fz1034 to i64
  %cz1042 = zext i1 %fc1035 to i64
  %vz1043 = zext i1 %fv1039 to i64
  %ns1044 = shl i64 %nz1040, 31
  %zs1045 = shl i64 %zz1041, 30
  %cs1046 = shl i64 %cz1042, 29
  %vs1047 = shl i64 %vz1043, 28
  %nzor1048 = or i64 %ns1044, %zs1045
  %cvor1049 = or i64 %cs1046, %vs1047
  %nzcv1050 = or i64 %nzor1048, %cvor1049
  %wp1051 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1050, ptr %wp1051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2180 word 0x54003d61
  %r1052.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1052 = load i64, ptr %r1052.p, align 8, !alias.scope !3, !noalias !4
  %fsh1054 = lshr i64 %r1052, 30
  %ftr1055 = trunc i64 %fsh1054 to i1
  %cond1053 = xor i1 %ftr1055, true
  br i1 %cond1053, label %L_8001e292c, label %L_8001e2184_ft
L_8001e2188:
  ; @pc 0x8001e2188 word 0xaa1303fb
  %r1061.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1061 = load i64, ptr %r1061.p, align 8, !alias.scope !3, !noalias !4
  %t1062 = or i64 0, %r1061
  %wp1063 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1062, ptr %wp1063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e218c word 0x6dc08760
  %r1064.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1064 = load i64, ptr %r1064.p, align 8, !alias.scope !3, !noalias !4
  %t1065 = add i64 %r1064, 8
  %t1066 = add i64 %t1065, 8
  %gmp1067 = inttoptr i64 %t1065 to ptr
  %gml1068 = load i64, ptr %gmp1067, align 1, !alias.scope !4, !noalias !3
  %gmp1069 = inttoptr i64 %t1066 to ptr
  %gml1070 = load i64, ptr %gmp1069, align 1, !alias.scope !4, !noalias !3
  %c1071 = zext i64 %gml1068 to i128
  %wp1072 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1071, ptr %wp1072, align 16, !alias.scope !3, !noalias !4
  %c1073 = zext i64 %gml1070 to i128
  %wp1074 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1073, ptr %wp1074, align 16, !alias.scope !3, !noalias !4
  %wp1075 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1065, ptr %wp1075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2190 word 0x6e180420
  %r1076.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1076 = load i128, ptr %r1076.p, align 16, !alias.scope !3, !noalias !4
  %c1077 = bitcast i128 %r1076 to <2 x i64>
  %r1078.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1078 = load i128, ptr %r1078.p, align 16, !alias.scope !3, !noalias !4
  %c1079 = bitcast i128 %r1078 to <2 x i64>
  %el1080 = extractelement <2 x i64> %c1079, i32 0
  %ins1081 = insertelement <2 x i64> %c1077, i64 %el1080, i32 1
  %c1082 = bitcast <2 x i64> %ins1081 to i128
  %wp1083 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1082, ptr %wp1083, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2194 word 0xfc40c361
  %r1084.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1084 = load i64, ptr %r1084.p, align 8, !alias.scope !3, !noalias !4
  %t1085 = add i64 %r1084, 12
  %gmp1086 = inttoptr i64 %t1085 to ptr
  %gml1087 = load i64, ptr %gmp1086, align 1, !alias.scope !4, !noalias !3
  %c1088 = zext i64 %gml1087 to i128
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1088, ptr %wp1089, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2198 word 0xfc414362
  %r1090.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1090 = load i64, ptr %r1090.p, align 8, !alias.scope !3, !noalias !4
  %t1091 = add i64 %r1090, 20
  %gmp1092 = inttoptr i64 %t1091 to ptr
  %gml1093 = load i64, ptr %gmp1092, align 1, !alias.scope !4, !noalias !3
  %c1094 = zext i64 %gml1093 to i128
  %wp1095 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c1094, ptr %wp1095, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e219c word 0xb9408b68
  %r1096.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1096 = load i64, ptr %r1096.p, align 8, !alias.scope !3, !noalias !4
  %t1097 = add i64 %r1096, 136
  %gmp1098 = inttoptr i64 %t1097 to ptr
  %gml1099 = load i32, ptr %gmp1098, align 1, !alias.scope !4, !noalias !3
  %c1100 = zext i32 %gml1099 to i64
  %wp1101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1100, ptr %wp1101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21a0 word 0x7100051f
  %r1102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1102 = load i64, ptr %r1102.p, align 8, !alias.scope !3, !noalias !4
  %c1103 = trunc i64 %r1102 to i32
  %t1104 = sub i32 %c1103, 1
  %fn1105 = icmp slt i32 %t1104, 0
  %fz1106 = icmp eq i32 %t1104, 0
  %fc1107 = icmp uge i32 %c1103, 1
  %fx11108 = xor i32 %c1103, 1
  %fx21109 = xor i32 %c1103, %t1104
  %fva1110 = and i32 %fx11108, %fx21109
  %fv1111 = icmp slt i32 %fva1110, 0
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
  ; @pc 0x8001e21a4 word 0x6e180441
  %r1124.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1124 = load i128, ptr %r1124.p, align 16, !alias.scope !3, !noalias !4
  %c1125 = bitcast i128 %r1124 to <2 x i64>
  %r1126.p = getelementptr inbounds i8, ptr %c, i64 544
  %r1126 = load i128, ptr %r1126.p, align 16, !alias.scope !3, !noalias !4
  %c1127 = bitcast i128 %r1126 to <2 x i64>
  %el1128 = extractelement <2 x i64> %c1127, i32 0
  %ins1129 = insertelement <2 x i64> %c1125, i64 %el1128, i32 1
  %c1130 = bitcast <2 x i64> %ins1129 to i128
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1130, ptr %wp1131, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21a8 word 0x4e1c1fe0
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1132 = load i128, ptr %r1132.p, align 16, !alias.scope !3, !noalias !4
  %c1133 = bitcast i128 %r1132 to <4 x i32>
  %c1134 = trunc i64 0 to i32
  %insg1135 = insertelement <4 x i32> %c1133, i32 %c1134, i32 3
  %c1136 = bitcast <4 x i32> %insg1135 to i128
  %wp1137 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1136, ptr %wp1137, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21ac word 0x54000081
  %r1138.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1138 = load i64, ptr %r1138.p, align 8, !alias.scope !3, !noalias !4
  %fsh1140 = lshr i64 %r1138, 30
  %ftr1141 = trunc i64 %fsh1140 to i1
  %cond1139 = xor i1 %ftr1141, true
  br i1 %cond1139, label %L_8001e21bc, label %L_8001e21b0_ft
L_8001e21bc:
  ; @pc 0x8001e21bc word 0x4ea0d421
  call void @rt_vec_fop(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 -1, i32 0)
  ; @pc 0x8001e21c0 word 0x3dc01b22
  %r1159.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1159 = load i64, ptr %r1159.p, align 8, !alias.scope !3, !noalias !4
  %t1160 = add i64 %r1159, 96
  %gmp1161 = inttoptr i64 %t1160 to ptr
  %gml1162 = load i128, ptr %gmp1161, align 1, !alias.scope !4, !noalias !3
  %wp1163 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %gml1162, ptr %wp1163, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21c4 word 0x529fffe8
  %c1164 = zext i32 65535 to i64
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21c8 word 0x790043e8
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %t1167 = add i64 %r1166, 32
  %r1168.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1168 = load i64, ptr %r1168.p, align 8, !alias.scope !3, !noalias !4
  %c1169 = trunc i64 %r1168 to i32
  %c1170 = trunc i32 %c1169 to i16
  %gmp1171 = inttoptr i64 %t1167 to ptr
  store i16 %c1170, ptr %gmp1171, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e21cc word 0x52800028
  %c1172 = zext i32 1 to i64
  %wp1173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1172, ptr %wp1173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21d0 word 0x72a01f68
  %r1174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1174 = load i64, ptr %r1174.p, align 8, !alias.scope !3, !noalias !4
  %t1175 = and i64 %r1174, -4294901761
  %t1176 = or i64 %t1175, 16449536
  %c1177 = trunc i64 %t1176 to i32
  %c1178 = zext i32 %c1177 to i64
  %wp1179 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1178, ptr %wp1179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21d4 word 0xb90033e8
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %t1181 = add i64 %r1180, 48
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1182 = load i64, ptr %r1182.p, align 8, !alias.scope !3, !noalias !4
  %c1183 = trunc i64 %r1182 to i32
  %gmp1184 = inttoptr i64 %t1181 to ptr
  store i32 %c1183, ptr %gmp1184, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e21d8 word 0x39446268
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %t1186 = add i64 %r1185, 280
  %gmp1187 = inttoptr i64 %t1186 to ptr
  %gml1188 = load i8, ptr %gmp1187, align 1, !alias.scope !4, !noalias !3
  %c1189 = zext i8 %gml1188 to i64
  %wp1190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1189, ptr %wp1190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21dc word 0x52800109
  %c1191 = zext i32 8 to i64
  %wp1192 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1191, ptr %wp1192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21e0 word 0xb90027ff
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %t1194 = add i64 %r1193, 36
  %gmp1195 = inttoptr i64 %t1194 to ptr
  store i32 0, ptr %gmp1195, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e21e4 word 0x0a681128
  %r1196.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1196 = load i64, ptr %r1196.p, align 8, !alias.scope !3, !noalias !4
  %c1197 = trunc i64 %r1196 to i32
  %t1198 = lshr i32 %c1197, 4
  %t1199 = xor i32 %t1198, -1
  %r1200.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1200 = load i64, ptr %r1200.p, align 8, !alias.scope !3, !noalias !4
  %c1201 = trunc i64 %r1200 to i32
  %t1202 = and i32 %c1201, %t1199
  %c1203 = zext i32 %t1202 to i64
  %wp1204 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1203, ptr %wp1204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21e8 word 0x6e1c0441
  %r1205.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1205 = load i128, ptr %r1205.p, align 16, !alias.scope !3, !noalias !4
  %c1206 = bitcast i128 %r1205 to <4 x i32>
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 544
  %r1207 = load i128, ptr %r1207.p, align 16, !alias.scope !3, !noalias !4
  %c1208 = bitcast i128 %r1207 to <4 x i32>
  %el1209 = extractelement <4 x i32> %c1208, i32 0
  %ins1210 = insertelement <4 x i32> %c1206, i32 %el1209, i32 3
  %c1211 = bitcast <4 x i32> %ins1210 to i128
  %wp1212 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1211, ptr %wp1212, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21ec word 0xb9408669
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %t1214 = add i64 %r1213, 132
  %gmp1215 = inttoptr i64 %t1214 to ptr
  %gml1216 = load i32, ptr %gmp1215, align 1, !alias.scope !4, !noalias !3
  %c1217 = zext i32 %gml1216 to i64
  %wp1218 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1217, ptr %wp1218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21f0 word 0xb90083e8
  %r1219.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1219 = load i64, ptr %r1219.p, align 8, !alias.scope !3, !noalias !4
  %t1220 = add i64 %r1219, 128
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %c1222 = trunc i64 %r1221 to i32
  %gmp1223 = inttoptr i64 %t1220 to ptr
  store i32 %c1222, ptr %gmp1223, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e21f4 word 0x5100052a
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %c1225 = trunc i64 %r1224 to i32
  %t1226 = sub i32 %c1225, 1
  %c1227 = zext i32 %t1226 to i64
  %wp1228 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1227, ptr %wp1228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21f8 word 0x7100055f
  %r1229.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1229 = load i64, ptr %r1229.p, align 8, !alias.scope !3, !noalias !4
  %c1230 = trunc i64 %r1229 to i32
  %t1231 = sub i32 %c1230, 1
  %fn1232 = icmp slt i32 %t1231, 0
  %fz1233 = icmp eq i32 %t1231, 0
  %fc1234 = icmp uge i32 %c1230, 1
  %fx11235 = xor i32 %c1230, 1
  %fx21236 = xor i32 %c1230, %t1231
  %fva1237 = and i32 %fx11235, %fx21236
  %fv1238 = icmp slt i32 %fva1237, 0
  %nz1239 = zext i1 %fn1232 to i64
  %zz1240 = zext i1 %fz1233 to i64
  %cz1241 = zext i1 %fc1234 to i64
  %vz1242 = zext i1 %fv1238 to i64
  %ns1243 = shl i64 %nz1239, 31
  %zs1244 = shl i64 %zz1240, 30
  %cs1245 = shl i64 %cz1241, 29
  %vs1246 = shl i64 %vz1242, 28
  %nzor1247 = or i64 %ns1243, %zs1244
  %cvor1248 = or i64 %cs1245, %vs1246
  %nzcv1249 = or i64 %nzor1247, %cvor1248
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1249, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21fc word 0x4ea0d823
  call void @rt_vec_fcmp(ptr %c, i32 0, i32 0, i32 1, i32 0, i32 3, i32 1, i32 0, i32 1, i32 0)
  ; @pc 0x8001e2200 word 0x4e631c21
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1251 = load i128, ptr %r1251.p, align 16, !alias.scope !3, !noalias !4
  %c1252 = bitcast i128 %r1251 to <2 x i64>
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 560
  %r1253 = load i128, ptr %r1253.p, align 16, !alias.scope !3, !noalias !4
  %c1254 = bitcast i128 %r1253 to <2 x i64>
  %c1255 = bitcast i128 -1 to <2 x i64>
  %t1256 = xor <2 x i64> %c1254, %c1255
  %t1257 = and <2 x i64> %c1252, %t1256
  %c1258 = bitcast <2 x i64> %t1257 to i128
  %wp1259 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1258, ptr %wp1259, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2204 word 0x4e040ea3
  %r1260.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1260 = load i64, ptr %r1260.p, align 8, !alias.scope !3, !noalias !4
  %c1261 = trunc i64 %r1260 to i32
  %dup01262 = insertelement <4 x i32> zeroinitializer, i32 %c1261, i32 0
  %shuf1263 = shufflevector <4 x i32> %dup01262, <4 x i32> %dup01262, <4 x i32> zeroinitializer
  %c1264 = bitcast <4 x i32> %shuf1263 to i128
  %wp1265 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c1264, ptr %wp1265, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2208 word 0xf9407015
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %t1267 = add i64 %r1266, 224
  %gmp1268 = inttoptr i64 %t1267 to ptr
  %gml1269 = load i64, ptr %gmp1268, align 1, !alias.scope !4, !noalias !3
  %wp1270 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1269, ptr %wp1270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e220c word 0x6e21fc42
  call void @rt_vec_fop(ptr %c, i32 0, i32 5, i32 1, i32 2, i32 2, i32 1, i32 -1, i32 0)
  ; @pc 0x8001e2210 word 0x4ea0d824
  call void @rt_vec_fcmp(ptr %c, i32 0, i32 0, i32 1, i32 0, i32 4, i32 1, i32 0, i32 1, i32 0)
  ; @pc 0x8001e2214 word 0xad0287e0
  %r1271.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1271 = load i64, ptr %r1271.p, align 8, !alias.scope !3, !noalias !4
  %t1272 = add i64 %r1271, 80
  %t1273 = add i64 %t1272, 16
  %r1274.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1274 = load i128, ptr %r1274.p, align 16, !alias.scope !3, !noalias !4
  %r1275.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1275 = load i128, ptr %r1275.p, align 16, !alias.scope !3, !noalias !4
  %gmp1276 = inttoptr i64 %t1272 to ptr
  store i128 %r1274, ptr %gmp1276, align 1, !alias.scope !4, !noalias !3
  %gmp1277 = inttoptr i64 %t1273 to ptr
  store i128 %r1275, ptr %gmp1277, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2218 word 0x4ea41c80
  %r1278.p = getelementptr inbounds i8, ptr %c, i64 576
  %r1278 = load i128, ptr %r1278.p, align 16, !alias.scope !3, !noalias !4
  %c1279 = bitcast i128 %r1278 to <2 x i64>
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 576
  %r1280 = load i128, ptr %r1280.p, align 16, !alias.scope !3, !noalias !4
  %c1281 = bitcast i128 %r1280 to <2 x i64>
  %c1282 = bitcast i128 -1 to <2 x i64>
  %t1283 = xor <2 x i64> %c1281, %c1282
  %t1284 = or <2 x i64> %c1279, %c1281
  %c1285 = bitcast <2 x i64> %t1284 to i128
  %wp1286 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1285, ptr %wp1286, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e221c word 0x6e621c60
  %r1287.p = getelementptr inbounds i8, ptr %c, i64 560
  %r1287 = load i128, ptr %r1287.p, align 16, !alias.scope !3, !noalias !4
  %c1288 = bitcast i128 %r1287 to <2 x i64>
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 544
  %r1289 = load i128, ptr %r1289.p, align 16, !alias.scope !3, !noalias !4
  %c1290 = bitcast i128 %r1289 to <2 x i64>
  %c1291 = bitcast i128 -1 to <2 x i64>
  %t1292 = xor <2 x i64> %c1290, %c1291
  %r1293.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1293 = load i128, ptr %r1293.p, align 16, !alias.scope !3, !noalias !4
  %c1294 = bitcast i128 %r1293 to <2 x i64>
  %t1295 = xor <2 x i64> %c1294, %c1291
  %t1296 = and <2 x i64> %t1295, %c1290
  %t1297 = and <2 x i64> %c1294, %c1288
  %t1298 = or <2 x i64> %t1297, %t1296
  %c1299 = bitcast <2 x i64> %t1298 to i128
  %wp1300 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1299, ptr %wp1300, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2220 word 0x3d801fe0
  %r1301.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1301 = load i64, ptr %r1301.p, align 8, !alias.scope !3, !noalias !4
  %t1302 = add i64 %r1301, 112
  %r1303.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1303 = load i128, ptr %r1303.p, align 16, !alias.scope !3, !noalias !4
  %gmp1304 = inttoptr i64 %t1302 to ptr
  store i128 %r1303, ptr %gmp1304, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2224 word 0x54000068
  %r1305.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1305 = load i64, ptr %r1305.p, align 8, !alias.scope !3, !noalias !4
  %fsh1307 = lshr i64 %r1305, 29
  %ftr1308 = trunc i64 %fsh1307 to i1
  %fsh1309 = lshr i64 %r1305, 30
  %ftr1310 = trunc i64 %fsh1309 to i1
  %fnz1311 = xor i1 %ftr1310, true
  %cond1306 = and i1 %ftr1308, %fnz1311
  br i1 %cond1306, label %L_8001e2230, label %L_8001e2228_ft
L_8001e2230:
  ; @pc 0x8001e2230 word 0xf94002e8
  %r1324.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1324 = load i64, ptr %r1324.p, align 8, !alias.scope !3, !noalias !4
  %gmp1325 = inttoptr i64 %r1324 to ptr
  %gml1326 = load i64, ptr %gmp1325, align 1, !alias.scope !4, !noalias !3
  %wp1327 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1326, ptr %wp1327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2234 word 0xf9406500
  %r1328.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1328 = load i64, ptr %r1328.p, align 8, !alias.scope !3, !noalias !4
  %t1329 = add i64 %r1328, 200
  %gmp1330 = inttoptr i64 %t1329 to ptr
  %gml1331 = load i64, ptr %gmp1330, align 1, !alias.scope !4, !noalias !3
  %wp1332 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1331, ptr %wp1332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2238 word 0xf9400008
  %r1333.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1333 = load i64, ptr %r1333.p, align 8, !alias.scope !3, !noalias !4
  %gmp1334 = inttoptr i64 %r1333 to ptr
  %gml1335 = load i64, ptr %gmp1334, align 1, !alias.scope !4, !noalias !3
  %wp1336 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1335, ptr %wp1336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e223c word 0xf9403108
  %r1337.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1337 = load i64, ptr %r1337.p, align 8, !alias.scope !3, !noalias !4
  %t1338 = add i64 %r1337, 96
  %gmp1339 = inttoptr i64 %t1338 to ptr
  %gml1340 = load i64, ptr %gmp1339, align 1, !alias.scope !4, !noalias !3
  %wp1341 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1340, ptr %wp1341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2240 word 0xeb16011f
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %r1343.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1343 = load i64, ptr %r1343.p, align 8, !alias.scope !3, !noalias !4
  %t1344 = sub i64 %r1342, %r1343
  %fn1345 = icmp slt i64 %t1344, 0
  %fz1346 = icmp eq i64 %t1344, 0
  %fc1347 = icmp uge i64 %r1342, %r1343
  %fx11348 = xor i64 %r1342, %r1343
  %fx21349 = xor i64 %r1342, %t1344
  %fva1350 = and i64 %fx11348, %fx21349
  %fv1351 = icmp slt i64 %fva1350, 0
  %nz1352 = zext i1 %fn1345 to i64
  %zz1353 = zext i1 %fz1346 to i64
  %cz1354 = zext i1 %fc1347 to i64
  %vz1355 = zext i1 %fv1351 to i64
  %ns1356 = shl i64 %nz1352, 31
  %zs1357 = shl i64 %zz1353, 30
  %cs1358 = shl i64 %cz1354, 29
  %vs1359 = shl i64 %vz1355, 28
  %nzor1360 = or i64 %ns1356, %zs1357
  %cvor1361 = or i64 %cs1358, %vs1359
  %nzcv1362 = or i64 %nzor1360, %cvor1361
  %wp1363 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1362, ptr %wp1363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2244 word 0x540037a1
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %fsh1366 = lshr i64 %r1364, 30
  %ftr1367 = trunc i64 %fsh1366 to i1
  %cond1365 = xor i1 %ftr1367, true
  br i1 %cond1365, label %L_8001e2938, label %L_8001e2248_ft
L_8001e224c:
  ; @pc 0x8001e224c word 0xf9409908
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %t1374 = add i64 %r1373, 304
  %gmp1375 = inttoptr i64 %t1374 to ptr
  %gml1376 = load i64, ptr %gmp1375, align 1, !alias.scope !4, !noalias !3
  %wp1377 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1376, ptr %wp1377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2250 word 0xf9000fe8
  %r1378.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1378 = load i64, ptr %r1378.p, align 8, !alias.scope !3, !noalias !4
  %t1379 = add i64 %r1378, 24
  %r1380.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1380 = load i64, ptr %r1380.p, align 8, !alias.scope !3, !noalias !4
  %gmp1381 = inttoptr i64 %t1379 to ptr
  store i64 %r1380, ptr %gmp1381, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2254 word 0xf9400008
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %gmp1383 = inttoptr i64 %r1382 to ptr
  %gml1384 = load i64, ptr %gmp1383, align 1, !alias.scope !4, !noalias !3
  %wp1385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1384, ptr %wp1385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2258 word 0xf9403108
  %r1386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1386 = load i64, ptr %r1386.p, align 8, !alias.scope !3, !noalias !4
  %t1387 = add i64 %r1386, 96
  %gmp1388 = inttoptr i64 %t1387 to ptr
  %gml1389 = load i64, ptr %gmp1388, align 1, !alias.scope !4, !noalias !3
  %wp1390 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1389, ptr %wp1390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e225c word 0xeb16011f
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %r1392.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1392 = load i64, ptr %r1392.p, align 8, !alias.scope !3, !noalias !4
  %t1393 = sub i64 %r1391, %r1392
  %fn1394 = icmp slt i64 %t1393, 0
  %fz1395 = icmp eq i64 %t1393, 0
  %fc1396 = icmp uge i64 %r1391, %r1392
  %fx11397 = xor i64 %r1391, %r1392
  %fx21398 = xor i64 %r1391, %t1393
  %fva1399 = and i64 %fx11397, %fx21398
  %fv1400 = icmp slt i64 %fva1399, 0
  %nz1401 = zext i1 %fn1394 to i64
  %zz1402 = zext i1 %fz1395 to i64
  %cz1403 = zext i1 %fc1396 to i64
  %vz1404 = zext i1 %fv1400 to i64
  %ns1405 = shl i64 %nz1401, 31
  %zs1406 = shl i64 %zz1402, 30
  %cs1407 = shl i64 %cz1403, 29
  %vs1408 = shl i64 %vz1404, 28
  %nzor1409 = or i64 %ns1405, %zs1406
  %cvor1410 = or i64 %cs1407, %vs1408
  %nzcv1411 = or i64 %nzor1409, %cvor1410
  %wp1412 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1411, ptr %wp1412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2260 word 0x54003781
  %r1413.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1413 = load i64, ptr %r1413.p, align 8, !alias.scope !3, !noalias !4
  %fsh1415 = lshr i64 %r1413, 30
  %ftr1416 = trunc i64 %fsh1415 to i1
  %cond1414 = xor i1 %ftr1416, true
  br i1 %cond1414, label %L_8001e2950, label %L_8001e2264_ft
L_8001e2268:
  ; @pc 0x8001e2268 word 0xf9407808
  %r1422.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1422 = load i64, ptr %r1422.p, align 8, !alias.scope !3, !noalias !4
  %t1423 = add i64 %r1422, 240
  %gmp1424 = inttoptr i64 %t1423 to ptr
  %gml1425 = load i64, ptr %gmp1424, align 1, !alias.scope !4, !noalias !3
  %wp1426 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1425, ptr %wp1426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e226c word 0xf90017f3
  %r1427.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1427 = load i64, ptr %r1427.p, align 8, !alias.scope !3, !noalias !4
  %t1428 = add i64 %r1427, 40
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %gmp1430 = inttoptr i64 %t1428 to ptr
  store i64 %r1429, ptr %gmp1430, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2270 word 0xf9000be8
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %t1432 = add i64 %r1431, 16
  %r1433.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1433 = load i64, ptr %r1433.p, align 8, !alias.scope !3, !noalias !4
  %gmp1434 = inttoptr i64 %t1432 to ptr
  store i64 %r1433, ptr %gmp1434, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2274 word 0xf9403e68
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %t1436 = add i64 %r1435, 120
  %gmp1437 = inttoptr i64 %t1436 to ptr
  %gml1438 = load i64, ptr %gmp1437, align 1, !alias.scope !4, !noalias !3
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2278 word 0xb5003728
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %cmp1441 = icmp ne i64 %r1440, 0
  br i1 %cmp1441, label %L_8001e295c, label %L_8001e227c
L_8001e227c:
  ; @pc 0x8001e227c word 0xb90027ff
  %r1442.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1442 = load i64, ptr %r1442.p, align 8, !alias.scope !3, !noalias !4
  %t1443 = add i64 %r1442, 36
  %gmp1444 = inttoptr i64 %t1443 to ptr
  store i32 0, ptr %gmp1444, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2280 word 0x910043e1
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %t1446 = add i64 %r1445, 16
  %wp1447 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1446, ptr %wp1447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2284 word 0x910283e2
  %r1448.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1448 = load i64, ptr %r1448.p, align 8, !alias.scope !3, !noalias !4
  %t1449 = add i64 %r1448, 160
  %wp1450 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1449, ptr %wp1450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2288 word 0xf94002a8
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %gmp1452 = inttoptr i64 %r1451 to ptr
  %gml1453 = load i64, ptr %gmp1452, align 1, !alias.scope !4, !noalias !3
  %wp1454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1453, ptr %wp1454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e228c word 0xaa1503e0
  %r1455.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1455 = load i64, ptr %r1455.p, align 8, !alias.scope !3, !noalias !4
  %t1456 = or i64 0, %r1455
  %wp1457 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1456, ptr %wp1457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2290 word 0xf9420108
  %r1458.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1458 = load i64, ptr %r1458.p, align 8, !alias.scope !3, !noalias !4
  %t1459 = add i64 %r1458, 1024
  %gmp1460 = inttoptr i64 %t1459 to ptr
  %gml1461 = load i64, ptr %gmp1460, align 1, !alias.scope !4, !noalias !3
  %wp1462 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1461, ptr %wp1462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2294 word 0xd63f0100
  %r1463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1463 = load i64, ptr %r1463.p, align 8, !alias.scope !3, !noalias !4
  %fp1464 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1463, ptr %fp1464, align 8, !alias.scope !3, !noalias !4
  %wp1465 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361713304, ptr %wp1465, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2298 word 0xb940afe8
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %t1467 = add i64 %r1466, 172
  %gmp1468 = inttoptr i64 %t1467 to ptr
  %gml1469 = load i32, ptr %gmp1468, align 1, !alias.scope !4, !noalias !3
  %c1470 = zext i32 %gml1469 to i64
  %wp1471 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1470, ptr %wp1471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e229c word 0x7100011f
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %c1473 = trunc i64 %r1472 to i32
  %t1474 = sub i32 %c1473, 0
  %fn1475 = icmp slt i32 %t1474, 0
  %fz1476 = icmp eq i32 %t1474, 0
  %fc1477 = icmp uge i32 %c1473, 0
  %fx11478 = xor i32 %c1473, 0
  %fx21479 = xor i32 %c1473, %t1474
  %fva1480 = and i32 %fx11478, %fx21479
  %fv1481 = icmp slt i32 %fva1480, 0
  %nz1482 = zext i1 %fn1475 to i64
  %zz1483 = zext i1 %fz1476 to i64
  %cz1484 = zext i1 %fc1477 to i64
  %vz1485 = zext i1 %fv1481 to i64
  %ns1486 = shl i64 %nz1482, 31
  %zs1487 = shl i64 %zz1483, 30
  %cs1488 = shl i64 %cz1484, 29
  %vs1489 = shl i64 %vz1485, 28
  %nzor1490 = or i64 %ns1486, %zs1487
  %cvor1491 = or i64 %cs1488, %vs1489
  %nzcv1492 = or i64 %nzor1490, %cvor1491
  %wp1493 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1492, ptr %wp1493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22a0 word 0x1a9f07e9
  %t1494 = add i32 0, 1
  %r1495.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1495 = load i64, ptr %r1495.p, align 8, !alias.scope !3, !noalias !4
  %fsh1497 = lshr i64 %r1495, 30
  %cond1496 = trunc i64 %fsh1497 to i1
  %sel1498 = select i1 %cond1496, i32 0, i32 %t1494
  %c1499 = zext i32 %sel1498 to i64
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1499, ptr %wp1500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22a4 word 0x39008269
  %r1501.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1501 = load i64, ptr %r1501.p, align 8, !alias.scope !3, !noalias !4
  %t1502 = add i64 %r1501, 32
  %r1503.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1503 = load i64, ptr %r1503.p, align 8, !alias.scope !3, !noalias !4
  %c1504 = trunc i64 %r1503 to i32
  %c1505 = trunc i32 %c1504 to i8
  %gmp1506 = inttoptr i64 %t1502 to ptr
  store i8 %c1505, ptr %gmp1506, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e22a8 word 0x35001d88
  %r1507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1507 = load i64, ptr %r1507.p, align 8, !alias.scope !3, !noalias !4
  %c1508 = trunc i64 %r1507 to i32
  %cmp1509 = icmp ne i32 %c1508, 0
  br i1 %cmp1509, label %L_8001e2658, label %L_8001e22ac
L_8001e22ac:
  ; @pc 0x8001e22ac word 0xf9400268
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %gmp1511 = inttoptr i64 %r1510 to ptr
  %gml1512 = load i64, ptr %gmp1511, align 1, !alias.scope !4, !noalias !3
  %wp1513 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1512, ptr %wp1513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22b0 word 0xb001bb49
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22b4 word 0xf9403908
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %t1516 = add i64 %r1515, 112
  %gmp1517 = inttoptr i64 %t1516 to ptr
  %gml1518 = load i64, ptr %gmp1517, align 1, !alias.scope !4, !noalias !3
  %wp1519 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1518, ptr %wp1519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22b8 word 0xf9452929
  %r1520.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1520 = load i64, ptr %r1520.p, align 8, !alias.scope !3, !noalias !4
  %t1521 = add i64 %r1520, 2640
  %gmp1522 = inttoptr i64 %t1521 to ptr
  %gml1523 = load i64, ptr %gmp1522, align 1, !alias.scope !4, !noalias !3
  %wp1524 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1523, ptr %wp1524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22bc word 0xeb09011f
  %r1525.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1525 = load i64, ptr %r1525.p, align 8, !alias.scope !3, !noalias !4
  %r1526.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1526 = load i64, ptr %r1526.p, align 8, !alias.scope !3, !noalias !4
  %t1527 = sub i64 %r1525, %r1526
  %fn1528 = icmp slt i64 %t1527, 0
  %fz1529 = icmp eq i64 %t1527, 0
  %fc1530 = icmp uge i64 %r1525, %r1526
  %fx11531 = xor i64 %r1525, %r1526
  %fx21532 = xor i64 %r1525, %t1527
  %fva1533 = and i64 %fx11531, %fx21532
  %fv1534 = icmp slt i64 %fva1533, 0
  %nz1535 = zext i1 %fn1528 to i64
  %zz1536 = zext i1 %fz1529 to i64
  %cz1537 = zext i1 %fc1530 to i64
  %vz1538 = zext i1 %fv1534 to i64
  %ns1539 = shl i64 %nz1535, 31
  %zs1540 = shl i64 %zz1536, 30
  %cs1541 = shl i64 %cz1537, 29
  %vs1542 = shl i64 %vz1538, 28
  %nzor1543 = or i64 %ns1539, %zs1540
  %cvor1544 = or i64 %cs1541, %vs1542
  %nzcv1545 = or i64 %nzor1543, %cvor1544
  %wp1546 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1545, ptr %wp1546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22c0 word 0x54003641
  %r1547.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1547 = load i64, ptr %r1547.p, align 8, !alias.scope !3, !noalias !4
  %fsh1549 = lshr i64 %r1547, 30
  %ftr1550 = trunc i64 %fsh1549 to i1
  %cond1548 = xor i1 %ftr1550, true
  br i1 %cond1548, label %L_8001e2988, label %L_8001e22c4_ft
L_8001e22f0:
  ; @pc 0x8001e22f0 word 0xf9407000
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %t1619 = add i64 %r1618, 224
  %gmp1620 = inttoptr i64 %t1619 to ptr
  %gml1621 = load i64, ptr %gmp1620, align 1, !alias.scope !4, !noalias !3
  %wp1622 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1621, ptr %wp1622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22f4 word 0xf9409261
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %t1624 = add i64 %r1623, 288
  %gmp1625 = inttoptr i64 %t1624 to ptr
  %gml1626 = load i64, ptr %gmp1625, align 1, !alias.scope !4, !noalias !3
  %wp1627 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1626, ptr %wp1627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22f8 word 0xf9400008
  %r1628.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1628 = load i64, ptr %r1628.p, align 8, !alias.scope !3, !noalias !4
  %gmp1629 = inttoptr i64 %r1628 to ptr
  %gml1630 = load i64, ptr %gmp1629, align 1, !alias.scope !4, !noalias !3
  %wp1631 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1630, ptr %wp1631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22fc word 0xf9408d08
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %t1633 = add i64 %r1632, 280
  %gmp1634 = inttoptr i64 %t1633 to ptr
  %gml1635 = load i64, ptr %gmp1634, align 1, !alias.scope !4, !noalias !3
  %wp1636 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1635, ptr %wp1636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2300 word 0xd63f0100
  %r1637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1637 = load i64, ptr %r1637.p, align 8, !alias.scope !3, !noalias !4
  %fp1638 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1637, ptr %fp1638, align 8, !alias.scope !3, !noalias !4
  %wp1639 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361713412, ptr %wp1639, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2304 word 0xf9405c00
  %r1640.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1640 = load i64, ptr %r1640.p, align 8, !alias.scope !3, !noalias !4
  %t1641 = add i64 %r1640, 184
  %gmp1642 = inttoptr i64 %t1641 to ptr
  %gml1643 = load i64, ptr %gmp1642, align 1, !alias.scope !4, !noalias !3
  %wp1644 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1643, ptr %wp1644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2308 word 0xb001bb49
  %wp1645 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp1645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e230c word 0xf900ba60
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %t1647 = add i64 %r1646, 368
  %r1648.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1648 = load i64, ptr %r1648.p, align 8, !alias.scope !3, !noalias !4
  %gmp1649 = inttoptr i64 %t1647 to ptr
  store i64 %r1648, ptr %gmp1649, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2310 word 0xf9400268
  %r1650.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1650 = load i64, ptr %r1650.p, align 8, !alias.scope !3, !noalias !4
  %gmp1651 = inttoptr i64 %r1650 to ptr
  %gml1652 = load i64, ptr %gmp1651, align 1, !alias.scope !4, !noalias !3
  %wp1653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1652, ptr %wp1653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2314 word 0xb9405a75
  %r1654.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1654 = load i64, ptr %r1654.p, align 8, !alias.scope !3, !noalias !4
  %t1655 = add i64 %r1654, 88
  %gmp1656 = inttoptr i64 %t1655 to ptr
  %gml1657 = load i32, ptr %gmp1656, align 1, !alias.scope !4, !noalias !3
  %c1658 = zext i32 %gml1657 to i64
  %wp1659 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c1658, ptr %wp1659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2318 word 0xf9401108
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %t1661 = add i64 %r1660, 32
  %gmp1662 = inttoptr i64 %t1661 to ptr
  %gml1663 = load i64, ptr %gmp1662, align 1, !alias.scope !4, !noalias !3
  %wp1664 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1663, ptr %wp1664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e231c word 0xf9451d29
  %r1665.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1665 = load i64, ptr %r1665.p, align 8, !alias.scope !3, !noalias !4
  %t1666 = add i64 %r1665, 2616
  %gmp1667 = inttoptr i64 %t1666 to ptr
  %gml1668 = load i64, ptr %gmp1667, align 1, !alias.scope !4, !noalias !3
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2320 word 0xeb09011f
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %r1671.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1671 = load i64, ptr %r1671.p, align 8, !alias.scope !3, !noalias !4
  %t1672 = sub i64 %r1670, %r1671
  %fn1673 = icmp slt i64 %t1672, 0
  %fz1674 = icmp eq i64 %t1672, 0
  %fc1675 = icmp uge i64 %r1670, %r1671
  %fx11676 = xor i64 %r1670, %r1671
  %fx21677 = xor i64 %r1670, %t1672
  %fva1678 = and i64 %fx11676, %fx21677
  %fv1679 = icmp slt i64 %fva1678, 0
  %nz1680 = zext i1 %fn1673 to i64
  %zz1681 = zext i1 %fz1674 to i64
  %cz1682 = zext i1 %fc1675 to i64
  %vz1683 = zext i1 %fv1679 to i64
  %ns1684 = shl i64 %nz1680, 31
  %zs1685 = shl i64 %zz1681, 30
  %cs1686 = shl i64 %cz1682, 29
  %vs1687 = shl i64 %vz1683, 28
  %nzor1688 = or i64 %ns1684, %zs1685
  %cvor1689 = or i64 %cs1686, %vs1687
  %nzcv1690 = or i64 %nzor1688, %cvor1689
  %wp1691 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1690, ptr %wp1691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2324 word 0x54003621
  %r1692.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1692 = load i64, ptr %r1692.p, align 8, !alias.scope !3, !noalias !4
  %fsh1694 = lshr i64 %r1692, 30
  %ftr1695 = trunc i64 %fsh1694 to i1
  %cond1693 = xor i1 %ftr1695, true
  br i1 %cond1693, label %L_8001e29e8, label %L_8001e2328
L_8001e2328:
  ; @pc 0x8001e2328 word 0xf9403268
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %t1697 = add i64 %r1696, 96
  %gmp1698 = inttoptr i64 %t1697 to ptr
  %gml1699 = load i64, ptr %gmp1698, align 1, !alias.scope !4, !noalias !3
  %wp1700 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1699, ptr %wp1700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e232c word 0xd001bb5b
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34419818496, ptr %wp1701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2330 word 0xb9400916
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %t1703 = add i64 %r1702, 8
  %gmp1704 = inttoptr i64 %t1703 to ptr
  %gml1705 = load i32, ptr %gmp1704, align 1, !alias.scope !4, !noalias !3
  %c1706 = zext i32 %gml1705 to i64
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2334 word 0xf945437b
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %t1709 = add i64 %r1708, 2688
  %gmp1710 = inttoptr i64 %t1709 to ptr
  %gml1711 = load i64, ptr %gmp1710, align 1, !alias.scope !4, !noalias !3
  %wp1712 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1711, ptr %wp1712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2338 word 0x08dfff68
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %atp1714 = inttoptr i64 %r1713 to ptr
  %lda1715 = load atomic i8, ptr %atp1714 acquire, align 1, !alias.scope !4, !noalias !3
  %c1716 = zext i8 %lda1715 to i64
  %wp1717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1716, ptr %wp1717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e233c word 0x924016da
  %r1718.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1718 = load i64, ptr %r1718.p, align 8, !alias.scope !3, !noalias !4
  %t1719 = and i64 %r1718, 63
  %wp1720 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1719, ptr %wp1720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2340 word 0x36003628
  %r1721.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1721 = load i64, ptr %r1721.p, align 8, !alias.scope !3, !noalias !4
  %t1722 = and i64 %r1721, 1
  %cmp1723 = icmp eq i64 %t1722, 0
  br i1 %cmp1723, label %L_8001e2a04, label %L_8001e2344
L_8001e2344:
  ; @pc 0x8001e2344 word 0xb40038e0
  %r1724.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1724 = load i64, ptr %r1724.p, align 8, !alias.scope !3, !noalias !4
  %cmp1725 = icmp eq i64 %r1724, 0
  br i1 %cmp1725, label %L_8001e2a60, label %L_8001e2348_ft
L_8001e2368:
  ; @pc 0x8001e2368 word 0xf940a008
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %t1776 = add i64 %r1775, 320
  %gmp1777 = inttoptr i64 %t1776 to ptr
  %gml1778 = load i64, ptr %gmp1777, align 1, !alias.scope !4, !noalias !3
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1778, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e236c word 0x52800029
  %c1780 = zext i32 1 to i64
  %wp1781 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1780, ptr %wp1781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2370 word 0x1ada213c
  %r1782.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1782 = load i64, ptr %r1782.p, align 8, !alias.scope !3, !noalias !4
  %c1783 = trunc i64 %r1782 to i32
  %r1784.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1784 = load i64, ptr %r1784.p, align 8, !alias.scope !3, !noalias !4
  %c1785 = trunc i64 %r1784 to i32
  %t1786 = and i32 %c1785, 31
  %t1787 = shl i32 %c1783, %t1786
  %c1788 = zext i32 %t1787 to i64
  %wp1789 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1788, ptr %wp1789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2374 word 0xb940190a
  %r1790.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1790 = load i64, ptr %r1790.p, align 8, !alias.scope !3, !noalias !4
  %t1791 = add i64 %r1790, 24
  %gmp1792 = inttoptr i64 %t1791 to ptr
  %gml1793 = load i32, ptr %gmp1792, align 1, !alias.scope !4, !noalias !3
  %c1794 = zext i32 %gml1793 to i64
  %wp1795 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1794, ptr %wp1795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2378 word 0x6a1c015f
  %r1796.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1796 = load i64, ptr %r1796.p, align 8, !alias.scope !3, !noalias !4
  %c1797 = trunc i64 %r1796 to i32
  %r1798.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1798 = load i64, ptr %r1798.p, align 8, !alias.scope !3, !noalias !4
  %c1799 = trunc i64 %r1798 to i32
  %t1800 = and i32 %c1799, %c1797
  %fn1801 = icmp slt i32 %t1800, 0
  %fz1802 = icmp eq i32 %t1800, 0
  %nz1803 = zext i1 %fn1801 to i64
  %zz1804 = zext i1 %fz1802 to i64
  %ns1805 = shl i64 %nz1803, 31
  %zs1806 = shl i64 %zz1804, 30
  %nzcv1807 = or i64 %ns1805, %zs1806
  %wp1808 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1807, ptr %wp1808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e237c word 0x54000140
  %r1809.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1809 = load i64, ptr %r1809.p, align 8, !alias.scope !3, !noalias !4
  %fsh1811 = lshr i64 %r1809, 30
  %cond1810 = trunc i64 %fsh1811 to i1
  br i1 %cond1810, label %L_8001e23a4, label %L_8001e2380_ft
L_8001e239c:
  ; @pc 0x8001e239c word 0x52800028
  %c1855 = zext i32 1 to i64
  %wp1856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1855, ptr %wp1856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23a0 word 0x39017268
  %r1857.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1857 = load i64, ptr %r1857.p, align 8, !alias.scope !3, !noalias !4
  %t1858 = add i64 %r1857, 92
  %r1859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1859 = load i64, ptr %r1859.p, align 8, !alias.scope !3, !noalias !4
  %c1860 = trunc i64 %r1859 to i32
  %c1861 = trunc i32 %c1860 to i8
  %gmp1862 = inttoptr i64 %t1858 to ptr
  store i8 %c1861, ptr %gmp1862, align 1, !alias.scope !4, !noalias !3
  br label %L_8001e23a4
L_8001e23a4:
  ; @pc 0x8001e23a4 word 0xf940ba75
  %r1863.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1863 = load i64, ptr %r1863.p, align 8, !alias.scope !3, !noalias !4
  %t1864 = add i64 %r1863, 368
  %gmp1865 = inttoptr i64 %t1864 to ptr
  %gml1866 = load i64, ptr %gmp1865, align 1, !alias.scope !4, !noalias !3
  %wp1867 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1866, ptr %wp1867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23a8 word 0xb9405a7a
  %r1868.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1868 = load i64, ptr %r1868.p, align 8, !alias.scope !3, !noalias !4
  %t1869 = add i64 %r1868, 88
  %gmp1870 = inttoptr i64 %t1869 to ptr
  %gml1871 = load i32, ptr %gmp1870, align 1, !alias.scope !4, !noalias !3
  %c1872 = zext i32 %gml1871 to i64
  %wp1873 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1872, ptr %wp1873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23ac word 0xb9009ffa
  %r1874.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1874 = load i64, ptr %r1874.p, align 8, !alias.scope !3, !noalias !4
  %t1875 = add i64 %r1874, 156
  %r1876.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1876 = load i64, ptr %r1876.p, align 8, !alias.scope !3, !noalias !4
  %c1877 = trunc i64 %r1876 to i32
  %gmp1878 = inttoptr i64 %t1875 to ptr
  store i32 %c1877, ptr %gmp1878, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e23b0 word 0xb4000c55
  %r1879.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1879 = load i64, ptr %r1879.p, align 8, !alias.scope !3, !noalias !4
  %cmp1880 = icmp eq i64 %r1879, 0
  br i1 %cmp1880, label %L_8001e2538, label %L_8001e23b4_ft
L_8001e23e8:
  ; @pc 0x8001e23e8 word 0x9001bca9
  %wp1940 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp1940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23ec word 0xf9403908
  %r1941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1941 = load i64, ptr %r1941.p, align 8, !alias.scope !3, !noalias !4
  %t1942 = add i64 %r1941, 112
  %gmp1943 = inttoptr i64 %t1942 to ptr
  %gml1944 = load i64, ptr %gmp1943, align 1, !alias.scope !4, !noalias !3
  %wp1945 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1944, ptr %wp1945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23f0 word 0xf9417129
  %r1946.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1946 = load i64, ptr %r1946.p, align 8, !alias.scope !3, !noalias !4
  %t1947 = add i64 %r1946, 736
  %gmp1948 = inttoptr i64 %t1947 to ptr
  %gml1949 = load i64, ptr %gmp1948, align 1, !alias.scope !4, !noalias !3
  %wp1950 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1949, ptr %wp1950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23f4 word 0xeb09011f
  %r1951.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1951 = load i64, ptr %r1951.p, align 8, !alias.scope !3, !noalias !4
  %r1952.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1952 = load i64, ptr %r1952.p, align 8, !alias.scope !3, !noalias !4
  %t1953 = sub i64 %r1951, %r1952
  %fn1954 = icmp slt i64 %t1953, 0
  %fz1955 = icmp eq i64 %t1953, 0
  %fc1956 = icmp uge i64 %r1951, %r1952
  %fx11957 = xor i64 %r1951, %r1952
  %fx21958 = xor i64 %r1951, %t1953
  %fva1959 = and i64 %fx11957, %fx21958
  %fv1960 = icmp slt i64 %fva1959, 0
  %nz1961 = zext i1 %fn1954 to i64
  %zz1962 = zext i1 %fz1955 to i64
  %cz1963 = zext i1 %fc1956 to i64
  %vz1964 = zext i1 %fv1960 to i64
  %ns1965 = shl i64 %nz1961, 31
  %zs1966 = shl i64 %zz1962, 30
  %cs1967 = shl i64 %cz1963, 29
  %vs1968 = shl i64 %vz1964, 28
  %nzor1969 = or i64 %ns1965, %zs1966
  %cvor1970 = or i64 %cs1967, %vs1968
  %nzcv1971 = or i64 %nzor1969, %cvor1970
  %wp1972 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1971, ptr %wp1972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23f8 word 0x54001c61
  %r1973.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1973 = load i64, ptr %r1973.p, align 8, !alias.scope !3, !noalias !4
  %fsh1975 = lshr i64 %r1973, 30
  %ftr1976 = trunc i64 %fsh1975 to i1
  %cond1974 = xor i1 %ftr1976, true
  br i1 %cond1974, label %L_8001e2784, label %L_8001e23fc_ft
L_8001e2400:
  ; @pc 0x8001e2400 word 0xf9400008
  %r1982.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1982 = load i64, ptr %r1982.p, align 8, !alias.scope !3, !noalias !4
  %gmp1983 = inttoptr i64 %r1982 to ptr
  %gml1984 = load i64, ptr %gmp1983, align 1, !alias.scope !4, !noalias !3
  %wp1985 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1984, ptr %wp1985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2404 word 0x9001bca9
  %wp1986 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp1986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2408 word 0xf9400908
  %r1987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1987 = load i64, ptr %r1987.p, align 8, !alias.scope !3, !noalias !4
  %t1988 = add i64 %r1987, 16
  %gmp1989 = inttoptr i64 %t1988 to ptr
  %gml1990 = load i64, ptr %gmp1989, align 1, !alias.scope !4, !noalias !3
  %wp1991 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1990, ptr %wp1991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e240c word 0xf947f129
  %r1992.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1992 = load i64, ptr %r1992.p, align 8, !alias.scope !3, !noalias !4
  %t1993 = add i64 %r1992, 4064
  %gmp1994 = inttoptr i64 %t1993 to ptr
  %gml1995 = load i64, ptr %gmp1994, align 1, !alias.scope !4, !noalias !3
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1995, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2410 word 0xeb09011f
  %r1997.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1997 = load i64, ptr %r1997.p, align 8, !alias.scope !3, !noalias !4
  %r1998.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1998 = load i64, ptr %r1998.p, align 8, !alias.scope !3, !noalias !4
  %t1999 = sub i64 %r1997, %r1998
  %fn2000 = icmp slt i64 %t1999, 0
  %fz2001 = icmp eq i64 %t1999, 0
  %fc2002 = icmp uge i64 %r1997, %r1998
  %fx12003 = xor i64 %r1997, %r1998
  %fx22004 = xor i64 %r1997, %t1999
  %fva2005 = and i64 %fx12003, %fx22004
  %fv2006 = icmp slt i64 %fva2005, 0
  %nz2007 = zext i1 %fn2000 to i64
  %zz2008 = zext i1 %fz2001 to i64
  %cz2009 = zext i1 %fc2002 to i64
  %vz2010 = zext i1 %fv2006 to i64
  %ns2011 = shl i64 %nz2007, 31
  %zs2012 = shl i64 %zz2008, 30
  %cs2013 = shl i64 %cz2009, 29
  %vs2014 = shl i64 %vz2010, 28
  %nzor2015 = or i64 %ns2011, %zs2012
  %cvor2016 = or i64 %cs2013, %vs2014
  %nzcv2017 = or i64 %nzor2015, %cvor2016
  %wp2018 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2017, ptr %wp2018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2414 word 0x54001ce1
  %r2019.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2019 = load i64, ptr %r2019.p, align 8, !alias.scope !3, !noalias !4
  %fsh2021 = lshr i64 %r2019, 30
  %ftr2022 = trunc i64 %fsh2021 to i1
  %cond2020 = xor i1 %ftr2022, true
  br i1 %cond2020, label %L_8001e27b0, label %L_8001e2418_ft
L_8001e241c:
  ; @pc 0x8001e241c word 0xb4003fe0
  %r2028.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2028 = load i64, ptr %r2028.p, align 8, !alias.scope !3, !noalias !4
  %cmp2029 = icmp eq i64 %r2028, 0
  br i1 %cmp2029, label %L_8001e2c18, label %L_8001e2420_ft
L_8001e2504:
  ; @pc 0x8001e2504 word 0xf001bc08
  %wp2356 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419920896, ptr %wp2356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2508 word 0xf947ed08
  %r2357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2357 = load i64, ptr %r2357.p, align 8, !alias.scope !3, !noalias !4
  %t2358 = add i64 %r2357, 4056
  %gmp2359 = inttoptr i64 %t2358 to ptr
  %gml2360 = load i64, ptr %gmp2359, align 1, !alias.scope !4, !noalias !3
  %wp2361 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2360, ptr %wp2361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e250c word 0xf9410fe0
  %r2362.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2362 = load i64, ptr %r2362.p, align 8, !alias.scope !3, !noalias !4
  %t2363 = add i64 %r2362, 536
  %gmp2364 = inttoptr i64 %t2363 to ptr
  %gml2365 = load i64, ptr %gmp2364, align 1, !alias.scope !4, !noalias !3
  %wp2366 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2365, ptr %wp2366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2510 word 0x91004108
  %r2367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2367 = load i64, ptr %r2367.p, align 8, !alias.scope !3, !noalias !4
  %t2368 = add i64 %r2367, 16
  %wp2369 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2368, ptr %wp2369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2514 word 0xf9010be8
  %r2370.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2370 = load i64, ptr %r2370.p, align 8, !alias.scope !3, !noalias !4
  %t2371 = add i64 %r2370, 528
  %r2372.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2372 = load i64, ptr %r2372.p, align 8, !alias.scope !3, !noalias !4
  %gmp2373 = inttoptr i64 %t2371 to ptr
  store i64 %r2372, ptr %gmp2373, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2518 word 0xb5003c80
  %r2374.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2374 = load i64, ptr %r2374.p, align 8, !alias.scope !3, !noalias !4
  %cmp2375 = icmp ne i64 %r2374, 0
  br i1 %cmp2375, label %L_8001e2ca8, label %L_8001e251c
L_8001e251c:
  ; @pc 0x8001e251c word 0xb40037f6
  %r2376.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2376 = load i64, ptr %r2376.p, align 8, !alias.scope !3, !noalias !4
  %cmp2377 = icmp eq i64 %r2376, 0
  br i1 %cmp2377, label %L_8001e2c18, label %L_8001e2520
L_8001e2520:
  ; @pc 0x8001e2520 word 0xb94002c8
  %r2378.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2378 = load i64, ptr %r2378.p, align 8, !alias.scope !3, !noalias !4
  %gmp2379 = inttoptr i64 %r2378 to ptr
  %gml2380 = load i32, ptr %gmp2379, align 1, !alias.scope !4, !noalias !3
  %c2381 = zext i32 %gml2380 to i64
  %wp2382 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2381, ptr %wp2382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2524 word 0xb9004a68
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %t2384 = add i64 %r2383, 72
  %r2385.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2385 = load i64, ptr %r2385.p, align 8, !alias.scope !3, !noalias !4
  %c2386 = trunc i64 %r2385 to i32
  %gmp2387 = inttoptr i64 %t2384 to ptr
  store i32 %c2386, ptr %gmp2387, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2528 word 0xb94006c8
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %t2389 = add i64 %r2388, 4
  %gmp2390 = inttoptr i64 %t2389 to ptr
  %gml2391 = load i32, ptr %gmp2390, align 1, !alias.scope !4, !noalias !3
  %c2392 = zext i32 %gml2391 to i64
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e252c word 0xb9004e68
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %t2395 = add i64 %r2394, 76
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %c2397 = trunc i64 %r2396 to i32
  %gmp2398 = inttoptr i64 %t2395 to ptr
  store i32 %c2397, ptr %gmp2398, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2530 word 0xf94006c8
  %r2399.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2399 = load i64, ptr %r2399.p, align 8, !alias.scope !3, !noalias !4
  %t2400 = add i64 %r2399, 8
  %gmp2401 = inttoptr i64 %t2400 to ptr
  %gml2402 = load i64, ptr %gmp2401, align 1, !alias.scope !4, !noalias !3
  %wp2403 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2402, ptr %wp2403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2534 word 0xf9002a68
  %r2404.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2404 = load i64, ptr %r2404.p, align 8, !alias.scope !3, !noalias !4
  %t2405 = add i64 %r2404, 80
  %r2406.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2406 = load i64, ptr %r2406.p, align 8, !alias.scope !3, !noalias !4
  %gmp2407 = inttoptr i64 %t2405 to ptr
  store i64 %r2406, ptr %gmp2407, align 1, !alias.scope !4, !noalias !3
  br label %L_8001e2538
L_8001e2538:
  ; @pc 0x8001e2538 word 0xf9400288
  %r2408.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2408 = load i64, ptr %r2408.p, align 8, !alias.scope !3, !noalias !4
  %gmp2409 = inttoptr i64 %r2408 to ptr
  %gml2410 = load i64, ptr %gmp2409, align 1, !alias.scope !4, !noalias !3
  %wp2411 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2410, ptr %wp2411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e253c word 0x9001bca9
  %wp2412 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp2412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2540 word 0xf9401108
  %r2413.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2413 = load i64, ptr %r2413.p, align 8, !alias.scope !3, !noalias !4
  %t2414 = add i64 %r2413, 32
  %gmp2415 = inttoptr i64 %t2414 to ptr
  %gml2416 = load i64, ptr %gmp2415, align 1, !alias.scope !4, !noalias !3
  %wp2417 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2416, ptr %wp2417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2544 word 0xf944d129
  %r2418.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2418 = load i64, ptr %r2418.p, align 8, !alias.scope !3, !noalias !4
  %t2419 = add i64 %r2418, 2464
  %gmp2420 = inttoptr i64 %t2419 to ptr
  %gml2421 = load i64, ptr %gmp2420, align 1, !alias.scope !4, !noalias !3
  %wp2422 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2421, ptr %wp2422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2548 word 0xeb09011f
  %r2423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2423 = load i64, ptr %r2423.p, align 8, !alias.scope !3, !noalias !4
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %t2425 = sub i64 %r2423, %r2424
  %fn2426 = icmp slt i64 %t2425, 0
  %fz2427 = icmp eq i64 %t2425, 0
  %fc2428 = icmp uge i64 %r2423, %r2424
  %fx12429 = xor i64 %r2423, %r2424
  %fx22430 = xor i64 %r2423, %t2425
  %fva2431 = and i64 %fx12429, %fx22430
  %fv2432 = icmp slt i64 %fva2431, 0
  %nz2433 = zext i1 %fn2426 to i64
  %zz2434 = zext i1 %fz2427 to i64
  %cz2435 = zext i1 %fc2428 to i64
  %vz2436 = zext i1 %fv2432 to i64
  %ns2437 = shl i64 %nz2433, 31
  %zs2438 = shl i64 %zz2434, 30
  %cs2439 = shl i64 %cz2435, 29
  %vs2440 = shl i64 %vz2436, 28
  %nzor2441 = or i64 %ns2437, %zs2438
  %cvor2442 = or i64 %cs2439, %vs2440
  %nzcv2443 = or i64 %nzor2441, %cvor2442
  %wp2444 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2443, ptr %wp2444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e254c word 0x54002241
  %r2445.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2445 = load i64, ptr %r2445.p, align 8, !alias.scope !3, !noalias !4
  %fsh2447 = lshr i64 %r2445, 30
  %ftr2448 = trunc i64 %fsh2447 to i1
  %cond2446 = xor i1 %ftr2448, true
  br i1 %cond2446, label %L_8001e2994, label %L_8001e2550_ft
L_8001e2594:
  ; @pc 0x8001e2594 word 0xf9400ae8
  %r2533.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2533 = load i64, ptr %r2533.p, align 8, !alias.scope !3, !noalias !4
  %t2534 = add i64 %r2533, 16
  %gmp2535 = inttoptr i64 %t2534 to ptr
  %gml2536 = load i64, ptr %gmp2535, align 1, !alias.scope !4, !noalias !3
  %wp2537 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2536, ptr %wp2537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2598 word 0xeb15011f
  %r2538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2538 = load i64, ptr %r2538.p, align 8, !alias.scope !3, !noalias !4
  %r2539.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2539 = load i64, ptr %r2539.p, align 8, !alias.scope !3, !noalias !4
  %t2540 = sub i64 %r2538, %r2539
  %fn2541 = icmp slt i64 %t2540, 0
  %fz2542 = icmp eq i64 %t2540, 0
  %fc2543 = icmp uge i64 %r2538, %r2539
  %fx12544 = xor i64 %r2538, %r2539
  %fx22545 = xor i64 %r2538, %t2540
  %fva2546 = and i64 %fx12544, %fx22545
  %fv2547 = icmp slt i64 %fva2546, 0
  %nz2548 = zext i1 %fn2541 to i64
  %zz2549 = zext i1 %fz2542 to i64
  %cz2550 = zext i1 %fc2543 to i64
  %vz2551 = zext i1 %fv2547 to i64
  %ns2552 = shl i64 %nz2548, 31
  %zs2553 = shl i64 %zz2549, 30
  %cs2554 = shl i64 %cz2550, 29
  %vs2555 = shl i64 %vz2551, 28
  %nzor2556 = or i64 %ns2552, %zs2553
  %cvor2557 = or i64 %cs2554, %vs2555
  %nzcv2558 = or i64 %nzor2556, %cvor2557
  %wp2559 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2558, ptr %wp2559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e259c word 0x540011e0
  %r2560.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2560 = load i64, ptr %r2560.p, align 8, !alias.scope !3, !noalias !4
  %fsh2562 = lshr i64 %r2560, 30
  %cond2561 = trunc i64 %fsh2562 to i1
  br i1 %cond2561, label %L_8001e27d8, label %L_8001e25a0_ft
L_8001e25a4:
  ; @pc 0x8001e25a4 word 0x9240bc08
  %r2564.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2564 = load i64, ptr %r2564.p, align 8, !alias.scope !3, !noalias !4
  %t2565 = and i64 %r2564, 281474976710655
  %wp2566 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2565, ptr %wp2566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25a8 word 0xeb5a411f
  %r2567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2567 = load i64, ptr %r2567.p, align 8, !alias.scope !3, !noalias !4
  %r2568.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2568 = load i64, ptr %r2568.p, align 8, !alias.scope !3, !noalias !4
  %t2569 = lshr i64 %r2568, 16
  %t2570 = sub i64 %r2567, %t2569
  %fn2571 = icmp slt i64 %t2570, 0
  %fz2572 = icmp eq i64 %t2570, 0
  %fc2573 = icmp uge i64 %r2567, %t2569
  %fx12574 = xor i64 %r2567, %t2569
  %fx22575 = xor i64 %r2567, %t2570
  %fva2576 = and i64 %fx12574, %fx22575
  %fv2577 = icmp slt i64 %fva2576, 0
  %nz2578 = zext i1 %fn2571 to i64
  %zz2579 = zext i1 %fz2572 to i64
  %cz2580 = zext i1 %fc2573 to i64
  %vz2581 = zext i1 %fv2577 to i64
  %ns2582 = shl i64 %nz2578, 31
  %zs2583 = shl i64 %zz2579, 30
  %cs2584 = shl i64 %cz2580, 29
  %vs2585 = shl i64 %vz2581, 28
  %nzor2586 = or i64 %ns2582, %zs2583
  %cvor2587 = or i64 %cs2584, %vs2585
  %nzcv2588 = or i64 %nzor2586, %cvor2587
  %wp2589 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2588, ptr %wp2589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25ac word 0x540011e0
  %r2590.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2590 = load i64, ptr %r2590.p, align 8, !alias.scope !3, !noalias !4
  %fsh2592 = lshr i64 %r2590, 30
  %cond2591 = trunc i64 %fsh2592 to i1
  br i1 %cond2591, label %L_8001e27e8, label %L_8001e25b0_ft
L_8001e25bc:
  ; @pc 0x8001e25bc word 0x710042df
  %r2627.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2627 = load i64, ptr %r2627.p, align 8, !alias.scope !3, !noalias !4
  %c2628 = trunc i64 %r2627 to i32
  %t2629 = sub i32 %c2628, 16
  %fn2630 = icmp slt i32 %t2629, 0
  %fz2631 = icmp eq i32 %t2629, 0
  %fc2632 = icmp uge i32 %c2628, 16
  %fx12633 = xor i32 %c2628, 16
  %fx22634 = xor i32 %c2628, %t2629
  %fva2635 = and i32 %fx12633, %fx22634
  %fv2636 = icmp slt i32 %fva2635, 0
  %nz2637 = zext i1 %fn2630 to i64
  %zz2638 = zext i1 %fz2631 to i64
  %cz2639 = zext i1 %fc2632 to i64
  %vz2640 = zext i1 %fv2636 to i64
  %ns2641 = shl i64 %nz2637, 31
  %zs2642 = shl i64 %zz2638, 30
  %cs2643 = shl i64 %cz2639, 29
  %vs2644 = shl i64 %vz2640, 28
  %nzor2645 = or i64 %ns2641, %zs2642
  %cvor2646 = or i64 %cs2643, %vs2644
  %nzcv2647 = or i64 %nzor2645, %cvor2646
  %wp2648 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2647, ptr %wp2648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25c0 word 0x54001fac
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %fsh2651 = lshr i64 %r2649, 30
  %ftr2652 = trunc i64 %fsh2651 to i1
  %fsh2653 = lshr i64 %r2649, 31
  %ftr2654 = trunc i64 %fsh2653 to i1
  %fsh2655 = lshr i64 %r2649, 28
  %ftr2656 = trunc i64 %fsh2655 to i1
  %fnz2657 = xor i1 %ftr2652, true
  %feq2658 = icmp eq i1 %ftr2654, %ftr2656
  %cond2650 = and i1 %fnz2657, %feq2658
  br i1 %cond2650, label %L_8001e29b4, label %L_8001e25c4_ft
L_8001e25c8:
  ; @pc 0x8001e25c8 word 0xb5000cc8
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %cmp2663 = icmp ne i64 %r2662, 0
  br i1 %cmp2663, label %L_8001e2760, label %L_8001e25cc
L_8001e25cc:
  ; @pc 0x8001e25cc word 0x710042df
  %r2664.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2664 = load i64, ptr %r2664.p, align 8, !alias.scope !3, !noalias !4
  %c2665 = trunc i64 %r2664 to i32
  %t2666 = sub i32 %c2665, 16
  %fn2667 = icmp slt i32 %t2666, 0
  %fz2668 = icmp eq i32 %t2666, 0
  %fc2669 = icmp uge i32 %c2665, 16
  %fx12670 = xor i32 %c2665, 16
  %fx22671 = xor i32 %c2665, %t2666
  %fva2672 = and i32 %fx12670, %fx22671
  %fv2673 = icmp slt i32 %fva2672, 0
  %nz2674 = zext i1 %fn2667 to i64
  %zz2675 = zext i1 %fz2668 to i64
  %cz2676 = zext i1 %fc2669 to i64
  %vz2677 = zext i1 %fv2673 to i64
  %ns2678 = shl i64 %nz2674, 31
  %zs2679 = shl i64 %zz2675, 30
  %cs2680 = shl i64 %cz2676, 29
  %vs2681 = shl i64 %vz2677, 28
  %nzor2682 = or i64 %ns2678, %zs2679
  %cvor2683 = or i64 %cs2680, %vs2681
  %nzcv2684 = or i64 %nzor2682, %cvor2683
  %wp2685 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2684, ptr %wp2685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25d0 word 0x5400006c
  %r2686.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2686 = load i64, ptr %r2686.p, align 8, !alias.scope !3, !noalias !4
  %fsh2688 = lshr i64 %r2686, 30
  %ftr2689 = trunc i64 %fsh2688 to i1
  %fsh2690 = lshr i64 %r2686, 31
  %ftr2691 = trunc i64 %fsh2690 to i1
  %fsh2692 = lshr i64 %r2686, 28
  %ftr2693 = trunc i64 %fsh2692 to i1
  %fnz2694 = xor i1 %ftr2689, true
  %feq2695 = icmp eq i1 %ftr2691, %ftr2693
  %cond2687 = and i1 %fnz2694, %feq2695
  br i1 %cond2687, label %L_8001e25dc, label %L_8001e25d4_ft
L_8001e25dc:
  ; @pc 0x8001e25dc word 0xf940032b
  %r2700.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2700 = load i64, ptr %r2700.p, align 8, !alias.scope !3, !noalias !4
  %gmp2701 = inttoptr i64 %r2700 to ptr
  %gml2702 = load i64, ptr %gmp2701, align 1, !alias.scope !4, !noalias !3
  %wp2703 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2702, ptr %wp2703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25e0 word 0xb27002e8
  %r2704.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2704 = load i64, ptr %r2704.p, align 8, !alias.scope !3, !noalias !4
  %t2705 = or i64 %r2704, 65536
  %wp2706 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2705, ptr %wp2706, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e25e4
L_8001e25e4:
  ; @pc 0x8001e25e4 word 0xcb17016a
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %t2709 = sub i64 %r2707, %r2708
  %wp2710 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2709, ptr %wp2710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25e8 word 0xeb08017f
  %r2711.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2711 = load i64, ptr %r2711.p, align 8, !alias.scope !3, !noalias !4
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  %t2713 = sub i64 %r2711, %r2712
  %fn2714 = icmp slt i64 %t2713, 0
  %fz2715 = icmp eq i64 %t2713, 0
  %fc2716 = icmp uge i64 %r2711, %r2712
  %fx12717 = xor i64 %r2711, %r2712
  %fx22718 = xor i64 %r2711, %t2713
  %fva2719 = and i64 %fx12717, %fx22718
  %fv2720 = icmp slt i64 %fva2719, 0
  %nz2721 = zext i1 %fn2714 to i64
  %zz2722 = zext i1 %fz2715 to i64
  %cz2723 = zext i1 %fc2716 to i64
  %vz2724 = zext i1 %fv2720 to i64
  %ns2725 = shl i64 %nz2721, 31
  %zs2726 = shl i64 %zz2722, 30
  %cs2727 = shl i64 %cz2723, 29
  %vs2728 = shl i64 %vz2724, 28
  %nzor2729 = or i64 %ns2725, %zs2726
  %cvor2730 = or i64 %cs2727, %vs2728
  %nzcv2731 = or i64 %nzor2729, %cvor2730
  %wp2732 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2731, ptr %wp2732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25ec word 0xaa0b03e9
  %r2733.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2733 = load i64, ptr %r2733.p, align 8, !alias.scope !3, !noalias !4
  %t2734 = or i64 0, %r2733
  %wp2735 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2734, ptr %wp2735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25f0 word 0x9a8a03ea
  %r2736.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2736 = load i64, ptr %r2736.p, align 8, !alias.scope !3, !noalias !4
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %fsh2739 = lshr i64 %r2737, 30
  %cond2738 = trunc i64 %fsh2739 to i1
  %sel2740 = select i1 %cond2738, i64 0, i64 %r2736
  %wp2741 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel2740, ptr %wp2741, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e25f4
L_8001e25f4:
  ; @pc 0x8001e25f4 word 0xc85f7f2b
  %r2742.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2742 = load i64, ptr %r2742.p, align 8, !alias.scope !3, !noalias !4
  %atp2743 = inttoptr i64 %r2742 to ptr
  %ldx2744 = load atomic i64, ptr %atp2743 acquire, align 8, !alias.scope !4, !noalias !3
  %fp2745 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2742, ptr %fp2745, align 8, !alias.scope !3, !noalias !4
  %fp2746 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx2744, ptr %fp2746, align 8, !alias.scope !3, !noalias !4
  %wp2747 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %ldx2744, ptr %wp2747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25f8 word 0xeb09017f
  %r2748.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2748 = load i64, ptr %r2748.p, align 8, !alias.scope !3, !noalias !4
  %r2749.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2749 = load i64, ptr %r2749.p, align 8, !alias.scope !3, !noalias !4
  %t2750 = sub i64 %r2748, %r2749
  %fn2751 = icmp slt i64 %t2750, 0
  %fz2752 = icmp eq i64 %t2750, 0
  %fc2753 = icmp uge i64 %r2748, %r2749
  %fx12754 = xor i64 %r2748, %r2749
  %fx22755 = xor i64 %r2748, %t2750
  %fva2756 = and i64 %fx12754, %fx22755
  %fv2757 = icmp slt i64 %fva2756, 0
  %nz2758 = zext i1 %fn2751 to i64
  %zz2759 = zext i1 %fz2752 to i64
  %cz2760 = zext i1 %fc2753 to i64
  %vz2761 = zext i1 %fv2757 to i64
  %ns2762 = shl i64 %nz2758, 31
  %zs2763 = shl i64 %zz2759, 30
  %cs2764 = shl i64 %cz2760, 29
  %vs2765 = shl i64 %vz2761, 28
  %nzor2766 = or i64 %ns2762, %zs2763
  %cvor2767 = or i64 %cs2764, %vs2765
  %nzcv2768 = or i64 %nzor2766, %cvor2767
  %wp2769 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2768, ptr %wp2769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25fc word 0x54ffff41
  %r2770.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2770 = load i64, ptr %r2770.p, align 8, !alias.scope !3, !noalias !4
  %fsh2772 = lshr i64 %r2770, 30
  %ftr2773 = trunc i64 %fsh2772 to i1
  %cond2771 = xor i1 %ftr2773, true
  br i1 %cond2771, label %L_8001e25e4, label %L_8001e2600_ft
L_8001e2614:
  ; @pc 0x8001e2614 word 0xaa1503e0
  %r2798.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2798 = load i64, ptr %r2798.p, align 8, !alias.scope !3, !noalias !4
  %t2799 = or i64 0, %r2798
  %wp2800 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2799, ptr %wp2800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2618 word 0x94a70696
  %wp2801 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714204, ptr %wp2801, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  br label %L_8001e261c
L_8001e261c:
  ; @pc 0x8001e261c word 0x39446268
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %t2803 = add i64 %r2802, 280
  %gmp2804 = inttoptr i64 %t2803 to ptr
  %gml2805 = load i8, ptr %gmp2804, align 1, !alias.scope !4, !noalias !3
  %c2806 = zext i8 %gml2805 to i64
  %wp2807 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2806, ptr %wp2807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2620 word 0x121e1508
  %r2808.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2808 = load i64, ptr %r2808.p, align 8, !alias.scope !3, !noalias !4
  %c2809 = trunc i64 %r2808 to i32
  %t2810 = and i32 %c2809, 252
  %c2811 = zext i32 %t2810 to i64
  %wp2812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2811, ptr %wp2812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2624 word 0x321f0108
  %r2813.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2813 = load i64, ptr %r2813.p, align 8, !alias.scope !3, !noalias !4
  %c2814 = trunc i64 %r2813 to i32
  %t2815 = or i32 %c2814, 2
  %c2816 = zext i32 %t2815 to i64
  %wp2817 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2816, ptr %wp2817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2628 word 0x39046268
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %t2819 = add i64 %r2818, 280
  %r2820.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2820 = load i64, ptr %r2820.p, align 8, !alias.scope !3, !noalias !4
  %c2821 = trunc i64 %r2820 to i32
  %c2822 = trunc i32 %c2821 to i8
  %gmp2823 = inttoptr i64 %t2819 to ptr
  store i8 %c2822, ptr %gmp2823, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e262c word 0x39408268
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = add i64 %r2824, 32
  %gmp2826 = inttoptr i64 %t2825 to ptr
  %gml2827 = load i8, ptr %gmp2826, align 1, !alias.scope !4, !noalias !3
  %c2828 = zext i8 %gml2827 to i64
  %wp2829 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2828, ptr %wp2829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2630 word 0x7100011f
  %r2830.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2830 = load i64, ptr %r2830.p, align 8, !alias.scope !3, !noalias !4
  %c2831 = trunc i64 %r2830 to i32
  %t2832 = sub i32 %c2831, 0
  %fn2833 = icmp slt i32 %t2832, 0
  %fz2834 = icmp eq i32 %t2832, 0
  %fc2835 = icmp uge i32 %c2831, 0
  %fx12836 = xor i32 %c2831, 0
  %fx22837 = xor i32 %c2831, %t2832
  %fva2838 = and i32 %fx12836, %fx22837
  %fv2839 = icmp slt i32 %fva2838, 0
  %nz2840 = zext i1 %fn2833 to i64
  %zz2841 = zext i1 %fz2834 to i64
  %cz2842 = zext i1 %fc2835 to i64
  %vz2843 = zext i1 %fv2839 to i64
  %ns2844 = shl i64 %nz2840, 31
  %zs2845 = shl i64 %zz2841, 30
  %cs2846 = shl i64 %cz2842, 29
  %vs2847 = shl i64 %vz2843, 28
  %nzor2848 = or i64 %ns2844, %zs2845
  %cvor2849 = or i64 %cs2846, %vs2847
  %nzcv2850 = or i64 %nzor2848, %cvor2849
  %wp2851 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2850, ptr %wp2851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2634 word 0x1a9f07e0
  %t2852 = add i32 0, 1
  %r2853.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2853 = load i64, ptr %r2853.p, align 8, !alias.scope !3, !noalias !4
  %fsh2855 = lshr i64 %r2853, 30
  %cond2854 = trunc i64 %fsh2855 to i1
  %sel2856 = select i1 %cond2854, i32 0, i32 %t2852
  %c2857 = zext i32 %sel2856 to i64
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2638 word 0x912a43ff
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %t2860 = add i64 %r2859, 2704
  %wp2861 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t2860, ptr %wp2861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e263c word 0xa9454ff4
  %r2862.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2862 = load i64, ptr %r2862.p, align 8, !alias.scope !3, !noalias !4
  %t2863 = add i64 %r2862, 80
  %t2864 = add i64 %t2863, 8
  %gmp2865 = inttoptr i64 %t2863 to ptr
  %gml2866 = load i64, ptr %gmp2865, align 1, !alias.scope !4, !noalias !3
  %gmp2867 = inttoptr i64 %t2864 to ptr
  %gml2868 = load i64, ptr %gmp2867, align 1, !alias.scope !4, !noalias !3
  %wp2869 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2866, ptr %wp2869, align 8, !alias.scope !3, !noalias !4
  %wp2870 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2868, ptr %wp2870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2640 word 0xa94457f6
  %r2871.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2871 = load i64, ptr %r2871.p, align 8, !alias.scope !3, !noalias !4
  %t2872 = add i64 %r2871, 64
  %t2873 = add i64 %t2872, 8
  %gmp2874 = inttoptr i64 %t2872 to ptr
  %gml2875 = load i64, ptr %gmp2874, align 1, !alias.scope !4, !noalias !3
  %gmp2876 = inttoptr i64 %t2873 to ptr
  %gml2877 = load i64, ptr %gmp2876, align 1, !alias.scope !4, !noalias !3
  %wp2878 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2875, ptr %wp2878, align 8, !alias.scope !3, !noalias !4
  %wp2879 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2877, ptr %wp2879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2644 word 0xa9435ff8
  %r2880.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2880 = load i64, ptr %r2880.p, align 8, !alias.scope !3, !noalias !4
  %t2881 = add i64 %r2880, 48
  %t2882 = add i64 %t2881, 8
  %gmp2883 = inttoptr i64 %t2881 to ptr
  %gml2884 = load i64, ptr %gmp2883, align 1, !alias.scope !4, !noalias !3
  %gmp2885 = inttoptr i64 %t2882 to ptr
  %gml2886 = load i64, ptr %gmp2885, align 1, !alias.scope !4, !noalias !3
  %wp2887 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2884, ptr %wp2887, align 8, !alias.scope !3, !noalias !4
  %wp2888 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2886, ptr %wp2888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2648 word 0xa94267fa
  %r2889.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2889 = load i64, ptr %r2889.p, align 8, !alias.scope !3, !noalias !4
  %t2890 = add i64 %r2889, 32
  %t2891 = add i64 %t2890, 8
  %gmp2892 = inttoptr i64 %t2890 to ptr
  %gml2893 = load i64, ptr %gmp2892, align 1, !alias.scope !4, !noalias !3
  %gmp2894 = inttoptr i64 %t2891 to ptr
  %gml2895 = load i64, ptr %gmp2894, align 1, !alias.scope !4, !noalias !3
  %wp2896 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2893, ptr %wp2896, align 8, !alias.scope !3, !noalias !4
  %wp2897 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml2895, ptr %wp2897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e264c word 0xa9416ffc
  %r2898.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2898 = load i64, ptr %r2898.p, align 8, !alias.scope !3, !noalias !4
  %t2899 = add i64 %r2898, 16
  %t2900 = add i64 %t2899, 8
  %gmp2901 = inttoptr i64 %t2899 to ptr
  %gml2902 = load i64, ptr %gmp2901, align 1, !alias.scope !4, !noalias !3
  %gmp2903 = inttoptr i64 %t2900 to ptr
  %gml2904 = load i64, ptr %gmp2903, align 1, !alias.scope !4, !noalias !3
  %wp2905 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2902, ptr %wp2905, align 8, !alias.scope !3, !noalias !4
  %wp2906 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml2904, ptr %wp2906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2650 word 0xa8c67bfd
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %t2908 = add i64 %r2907, 8
  %gmp2909 = inttoptr i64 %r2907 to ptr
  %gml2910 = load i64, ptr %gmp2909, align 1, !alias.scope !4, !noalias !3
  %gmp2911 = inttoptr i64 %t2908 to ptr
  %gml2912 = load i64, ptr %gmp2911, align 1, !alias.scope !4, !noalias !3
  %t2913 = add i64 %r2907, 96
  %wp2914 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t2913, ptr %wp2914, align 8, !alias.scope !3, !noalias !4
  %wp2915 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml2910, ptr %wp2915, align 8, !alias.scope !3, !noalias !4
  %wp2916 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml2912, ptr %wp2916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2654 word 0xd65f03c0
  ret void
L_8001e2658:
  ; @pc 0x8001e2658 word 0xf94053e8
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %t2918 = add i64 %r2917, 160
  %gmp2919 = inttoptr i64 %t2918 to ptr
  %gml2920 = load i64, ptr %gmp2919, align 1, !alias.scope !4, !noalias !3
  %wp2921 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2920, ptr %wp2921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e265c word 0x910283e0
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %t2923 = add i64 %r2922, 160
  %wp2924 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2923, ptr %wp2924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2660 word 0xf9401108
  %r2925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2925 = load i64, ptr %r2925.p, align 8, !alias.scope !3, !noalias !4
  %t2926 = add i64 %r2925, 32
  %gmp2927 = inttoptr i64 %t2926 to ptr
  %gml2928 = load i64, ptr %gmp2927, align 1, !alias.scope !4, !noalias !3
  %wp2929 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2928, ptr %wp2929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2664 word 0xd63f0100
  %r2930.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2930 = load i64, ptr %r2930.p, align 8, !alias.scope !3, !noalias !4
  %fp2931 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2930, ptr %fp2931, align 8, !alias.scope !3, !noalias !4
  %wp2932 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714280, ptr %wp2932, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2668 word 0x3dc00400
  %r2933.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2933 = load i64, ptr %r2933.p, align 8, !alias.scope !3, !noalias !4
  %t2934 = add i64 %r2933, 16
  %gmp2935 = inttoptr i64 %t2934 to ptr
  %gml2936 = load i128, ptr %gmp2935, align 1, !alias.scope !4, !noalias !3
  %wp2937 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml2936, ptr %wp2937, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e266c word 0x9100e268
  %r2938.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2938 = load i64, ptr %r2938.p, align 8, !alias.scope !3, !noalias !4
  %t2939 = add i64 %r2938, 56
  %wp2940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2939, ptr %wp2940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2670 word 0xfd001a60
  %r2941.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2941 = load i64, ptr %r2941.p, align 8, !alias.scope !3, !noalias !4
  %t2942 = add i64 %r2941, 48
  %r2943.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2943 = load i128, ptr %r2943.p, align 16, !alias.scope !3, !noalias !4
  %c2944 = trunc i128 %r2943 to i64
  %gmp2945 = inttoptr i64 %t2942 to ptr
  store i64 %c2944, ptr %gmp2945, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2674 word 0x4d008100
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  call void @rt_sl_sts(ptr %c, i32 2, i32 1, i32 2, i32 0, i64 %r2946)
  ; @pc 0x8001e2678 word 0x3941f008
  %r2947.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2947 = load i64, ptr %r2947.p, align 8, !alias.scope !3, !noalias !4
  %t2948 = add i64 %r2947, 124
  %gmp2949 = inttoptr i64 %t2948 to ptr
  %gml2950 = load i8, ptr %gmp2949, align 1, !alias.scope !4, !noalias !3
  %c2951 = zext i8 %gml2950 to i64
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2951, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e267c word 0x37102168
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %t2954 = and i64 %r2953, 4
  %cmp2955 = icmp ne i64 %t2954, 0
  br i1 %cmp2955, label %L_8001e2aa8, label %L_8001e2680_ft
L_8001e26a4:
  ; @pc 0x8001e26a4 word 0xbd003e60
  %r2986.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2986 = load i64, ptr %r2986.p, align 8, !alias.scope !3, !noalias !4
  %t2987 = add i64 %r2986, 60
  %r2988.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2988 = load i128, ptr %r2988.p, align 16, !alias.scope !3, !noalias !4
  %c2989 = trunc i128 %r2988 to i32
  %gmp2990 = inttoptr i64 %t2987 to ptr
  store i32 %c2989, ptr %gmp2990, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e26a8 word 0x3dc01be0
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %t2992 = add i64 %r2991, 96
  %gmp2993 = inttoptr i64 %t2992 to ptr
  %gml2994 = load i128, ptr %gmp2993, align 1, !alias.scope !4, !noalias !3
  %wp2995 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml2994, ptr %wp2995, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26ac word 0x6e20dc00
  call void @rt_vec_fop(ptr %c, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0)
  ; @pc 0x8001e26b0 word 0x0e140401
  %r2996.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2996 = load i128, ptr %r2996.p, align 16, !alias.scope !3, !noalias !4
  %c2997 = bitcast i128 %r2996 to <4 x i32>
  %shuf2998 = shufflevector <4 x i32> %c2997, <4 x i32> %c2997, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %c2999 = bitcast <4 x i32> %shuf2998 to i128
  %c3000 = trunc i128 %c2999 to i64
  %c3001 = zext i64 %c3000 to i128
  %wp3002 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3001, ptr %wp3002, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26b4 word 0x2e20d400
  call void @rt_vec_fpair(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  ; @pc 0x8001e26b8 word 0x0e21d400
  call void @rt_vec_fop(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 -1, i32 0)
  ; @pc 0x8001e26bc word 0xbd402001
  %r3003.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3003 = load i64, ptr %r3003.p, align 8, !alias.scope !3, !noalias !4
  %t3004 = add i64 %r3003, 32
  %gmp3005 = inttoptr i64 %t3004 to ptr
  %gml3006 = load i32, ptr %gmp3005, align 1, !alias.scope !4, !noalias !3
  %c3007 = zext i32 %gml3006 to i128
  %wp3008 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3007, ptr %wp3008, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26c0 word 0x2ea1f800
  call void @rt_vec_fop(ptr %c, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0)
  ; @pc 0x8001e26c4 word 0x1e200820
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 1, i32 0)
  br label %L_8001e26c8
L_8001e26c8:
  ; @pc 0x8001e26c8 word 0xbd004260
  %r3009.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3009 = load i64, ptr %r3009.p, align 8, !alias.scope !3, !noalias !4
  %t3010 = add i64 %r3009, 64
  %r3011.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3011 = load i128, ptr %r3011.p, align 16, !alias.scope !3, !noalias !4
  %c3012 = trunc i128 %r3011 to i32
  %gmp3013 = inttoptr i64 %t3010 to ptr
  store i32 %c3012, ptr %gmp3013, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e26cc word 0xf9402808
  %r3014.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3014 = load i64, ptr %r3014.p, align 8, !alias.scope !3, !noalias !4
  %t3015 = add i64 %r3014, 80
  %gmp3016 = inttoptr i64 %t3015 to ptr
  %gml3017 = load i64, ptr %gmp3016, align 1, !alias.scope !4, !noalias !3
  %wp3018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3017, ptr %wp3018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26d0 word 0xf9009268
  %r3019.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3019 = load i64, ptr %r3019.p, align 8, !alias.scope !3, !noalias !4
  %t3020 = add i64 %r3019, 288
  %r3021.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3021 = load i64, ptr %r3021.p, align 8, !alias.scope !3, !noalias !4
  %gmp3022 = inttoptr i64 %t3020 to ptr
  store i64 %r3021, ptr %gmp3022, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e26d4 word 0xb9406008
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %t3024 = add i64 %r3023, 96
  %gmp3025 = inttoptr i64 %t3024 to ptr
  %gml3026 = load i32, ptr %gmp3025, align 1, !alias.scope !4, !noalias !3
  %c3027 = zext i32 %gml3026 to i64
  %wp3028 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3027, ptr %wp3028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26d8 word 0xb9005a68
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %t3030 = add i64 %r3029, 88
  %r3031.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3031 = load i64, ptr %r3031.p, align 8, !alias.scope !3, !noalias !4
  %c3032 = trunc i64 %r3031 to i32
  %gmp3033 = inttoptr i64 %t3030 to ptr
  store i32 %c3032, ptr %gmp3033, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e26dc word 0x17fffef4
  br label %L_8001e22ac
L_8001e26e0:
  ; @pc 0x8001e26e0 word 0xaa1503e0
  %r3034.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3034 = load i64, ptr %r3034.p, align 8, !alias.scope !3, !noalias !4
  %t3035 = or i64 0, %r3034
  %wp3036 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3035, ptr %wp3036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26e4 word 0xd63f0120
  %r3037.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3037 = load i64, ptr %r3037.p, align 8, !alias.scope !3, !noalias !4
  %fp3038 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3037, ptr %fp3038, align 8, !alias.scope !3, !noalias !4
  %wp3039 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714408, ptr %wp3039, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e26e8 word 0x71003c1f
  %r3040.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3040 = load i64, ptr %r3040.p, align 8, !alias.scope !3, !noalias !4
  %c3041 = trunc i64 %r3040 to i32
  %t3042 = sub i32 %c3041, 15
  %fn3043 = icmp slt i32 %t3042, 0
  %fz3044 = icmp eq i32 %t3042, 0
  %fc3045 = icmp uge i32 %c3041, 15
  %fx13046 = xor i32 %c3041, 15
  %fx23047 = xor i32 %c3041, %t3042
  %fva3048 = and i32 %fx13046, %fx23047
  %fv3049 = icmp slt i32 %fva3048, 0
  %nz3050 = zext i1 %fn3043 to i64
  %zz3051 = zext i1 %fz3044 to i64
  %cz3052 = zext i1 %fc3045 to i64
  %vz3053 = zext i1 %fv3049 to i64
  %ns3054 = shl i64 %nz3050, 31
  %zs3055 = shl i64 %zz3051, 30
  %cs3056 = shl i64 %cz3052, 29
  %vs3057 = shl i64 %vz3053, 28
  %nzor3058 = or i64 %ns3054, %zs3055
  %cvor3059 = or i64 %cs3056, %vs3057
  %nzcv3060 = or i64 %nzor3058, %cvor3059
  %wp3061 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3060, ptr %wp3061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26ec word 0x54000661
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %fsh3064 = lshr i64 %r3062, 30
  %ftr3065 = trunc i64 %fsh3064 to i1
  %cond3063 = xor i1 %ftr3065, true
  br i1 %cond3063, label %L_8001e27b8, label %L_8001e26f0_ft
L_8001e2700:
  ; @pc 0x8001e2700 word 0xf94002a8
  %r3080.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3080 = load i64, ptr %r3080.p, align 8, !alias.scope !3, !noalias !4
  %gmp3081 = inttoptr i64 %r3080 to ptr
  %gml3082 = load i64, ptr %gmp3081, align 1, !alias.scope !4, !noalias !3
  %wp3083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3082, ptr %wp3083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2704 word 0xd001bba1
  %wp3084 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419867648, ptr %wp3084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2708 word 0xaa1503e0
  %r3085.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3085 = load i64, ptr %r3085.p, align 8, !alias.scope !3, !noalias !4
  %t3086 = or i64 0, %r3085
  %wp3087 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3086, ptr %wp3087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e270c word 0xf9400108
  %r3088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3088 = load i64, ptr %r3088.p, align 8, !alias.scope !3, !noalias !4
  %gmp3089 = inttoptr i64 %r3088 to ptr
  %gml3090 = load i64, ptr %gmp3089, align 1, !alias.scope !4, !noalias !3
  %wp3091 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3090, ptr %wp3091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2710 word 0xf9443821
  %r3092.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3092 = load i64, ptr %r3092.p, align 8, !alias.scope !3, !noalias !4
  %t3093 = add i64 %r3092, 2160
  %gmp3094 = inttoptr i64 %t3093 to ptr
  %gml3095 = load i64, ptr %gmp3094, align 1, !alias.scope !4, !noalias !3
  %wp3096 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml3095, ptr %wp3096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2714 word 0xd63f0100
  %r3097.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3097 = load i64, ptr %r3097.p, align 8, !alias.scope !3, !noalias !4
  %fp3098 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3097, ptr %fp3098, align 8, !alias.scope !3, !noalias !4
  %wp3099 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714456, ptr %wp3099, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2718 word 0xb4002d00
  %r3100.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3100 = load i64, ptr %r3100.p, align 8, !alias.scope !3, !noalias !4
  %cmp3101 = icmp eq i64 %r3100, 0
  br i1 %cmp3101, label %L_8001e2cb8, label %L_8001e271c_ft
L_8001e2754:
  ; @pc 0x8001e2754 word 0xaa0003f6
  %r3151.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3151 = load i64, ptr %r3151.p, align 8, !alias.scope !3, !noalias !4
  %t3152 = or i64 0, %r3151
  %wp3153 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t3152, ptr %wp3153, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2758
L_8001e2758:
  ; @pc 0x8001e2758 word 0xb5ffee56
  %r3154.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3154 = load i64, ptr %r3154.p, align 8, !alias.scope !3, !noalias !4
  %cmp3155 = icmp ne i64 %r3154, 0
  br i1 %cmp3155, label %L_8001e2520, label %L_8001e275c_ft
L_8001e2760:
  ; @pc 0x8001e2760 word 0x710042df
  %r3156.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3156 = load i64, ptr %r3156.p, align 8, !alias.scope !3, !noalias !4
  %c3157 = trunc i64 %r3156 to i32
  %t3158 = sub i32 %c3157, 16
  %fn3159 = icmp slt i32 %t3158, 0
  %fz3160 = icmp eq i32 %t3158, 0
  %fc3161 = icmp uge i32 %c3157, 16
  %fx13162 = xor i32 %c3157, 16
  %fx23163 = xor i32 %c3157, %t3158
  %fva3164 = and i32 %fx13162, %fx23163
  %fv3165 = icmp slt i32 %fva3164, 0
  %nz3166 = zext i1 %fn3159 to i64
  %zz3167 = zext i1 %fz3160 to i64
  %cz3168 = zext i1 %fc3161 to i64
  %vz3169 = zext i1 %fv3165 to i64
  %ns3170 = shl i64 %nz3166, 31
  %zs3171 = shl i64 %zz3167, 30
  %cs3172 = shl i64 %cz3168, 29
  %vs3173 = shl i64 %vz3169, 28
  %nzor3174 = or i64 %ns3170, %zs3171
  %cvor3175 = or i64 %cs3172, %vs3173
  %nzcv3176 = or i64 %nzor3174, %cvor3175
  %wp3177 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3176, ptr %wp3177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2764 word 0x5400318c
  %r3178.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3178 = load i64, ptr %r3178.p, align 8, !alias.scope !3, !noalias !4
  %fsh3180 = lshr i64 %r3178, 30
  %ftr3181 = trunc i64 %fsh3180 to i1
  %fsh3182 = lshr i64 %r3178, 31
  %ftr3183 = trunc i64 %fsh3182 to i1
  %fsh3184 = lshr i64 %r3178, 28
  %ftr3185 = trunc i64 %fsh3184 to i1
  %fnz3186 = xor i1 %ftr3181, true
  %feq3187 = icmp eq i1 %ftr3183, %ftr3185
  %cond3179 = and i1 %fnz3186, %feq3187
  br i1 %cond3179, label %L_8001e2d94, label %L_8001e2768
L_8001e2768:
  ; @pc 0x8001e2768 word 0xc85f7f28
  %r3188.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3188 = load i64, ptr %r3188.p, align 8, !alias.scope !3, !noalias !4
  %atp3189 = inttoptr i64 %r3188 to ptr
  %ldx3190 = load atomic i64, ptr %atp3189 acquire, align 8, !alias.scope !4, !noalias !3
  %fp3191 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r3188, ptr %fp3191, align 8, !alias.scope !3, !noalias !4
  %fp3192 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx3190, ptr %fp3192, align 8, !alias.scope !3, !noalias !4
  %wp3193 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %ldx3190, ptr %wp3193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e276c word 0xeb1a011f
  %r3194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3194 = load i64, ptr %r3194.p, align 8, !alias.scope !3, !noalias !4
  %r3195.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3195 = load i64, ptr %r3195.p, align 8, !alias.scope !3, !noalias !4
  %t3196 = sub i64 %r3194, %r3195
  %fn3197 = icmp slt i64 %t3196, 0
  %fz3198 = icmp eq i64 %t3196, 0
  %fc3199 = icmp uge i64 %r3194, %r3195
  %fx13200 = xor i64 %r3194, %r3195
  %fx23201 = xor i64 %r3194, %t3196
  %fva3202 = and i64 %fx13200, %fx23201
  %fv3203 = icmp slt i64 %fva3202, 0
  %nz3204 = zext i1 %fn3197 to i64
  %zz3205 = zext i1 %fz3198 to i64
  %cz3206 = zext i1 %fc3199 to i64
  %vz3207 = zext i1 %fv3203 to i64
  %ns3208 = shl i64 %nz3204, 31
  %zs3209 = shl i64 %zz3205, 30
  %cs3210 = shl i64 %cz3206, 29
  %vs3211 = shl i64 %vz3207, 28
  %nzor3212 = or i64 %ns3208, %zs3209
  %cvor3213 = or i64 %cs3210, %vs3211
  %nzcv3214 = or i64 %nzor3212, %cvor3213
  %wp3215 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3214, ptr %wp3215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2770 word 0x540002c1
  %r3216.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3216 = load i64, ptr %r3216.p, align 8, !alias.scope !3, !noalias !4
  %fsh3218 = lshr i64 %r3216, 30
  %ftr3219 = trunc i64 %fsh3218 to i1
  %cond3217 = xor i1 %ftr3219, true
  br i1 %cond3217, label %L_8001e27c8, label %L_8001e2774_ft
L_8001e2784:
  ; @pc 0x8001e2784 word 0x9001bca9
  %wp3242 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp3242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2788 word 0xf9413929
  %r3243.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3243 = load i64, ptr %r3243.p, align 8, !alias.scope !3, !noalias !4
  %t3244 = add i64 %r3243, 624
  %gmp3245 = inttoptr i64 %t3244 to ptr
  %gml3246 = load i64, ptr %gmp3245, align 1, !alias.scope !4, !noalias !3
  %wp3247 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3246, ptr %wp3247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e278c word 0xeb09011f
  %r3248.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3248 = load i64, ptr %r3248.p, align 8, !alias.scope !3, !noalias !4
  %r3249.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3249 = load i64, ptr %r3249.p, align 8, !alias.scope !3, !noalias !4
  %t3250 = sub i64 %r3248, %r3249
  %fn3251 = icmp slt i64 %t3250, 0
  %fz3252 = icmp eq i64 %t3250, 0
  %fc3253 = icmp uge i64 %r3248, %r3249
  %fx13254 = xor i64 %r3248, %r3249
  %fx23255 = xor i64 %r3248, %t3250
  %fva3256 = and i64 %fx13254, %fx23255
  %fv3257 = icmp slt i64 %fva3256, 0
  %nz3258 = zext i1 %fn3251 to i64
  %zz3259 = zext i1 %fz3252 to i64
  %cz3260 = zext i1 %fc3253 to i64
  %vz3261 = zext i1 %fv3257 to i64
  %ns3262 = shl i64 %nz3258, 31
  %zs3263 = shl i64 %zz3259, 30
  %cs3264 = shl i64 %cz3260, 29
  %vs3265 = shl i64 %vz3261, 28
  %nzor3266 = or i64 %ns3262, %zs3263
  %cvor3267 = or i64 %cs3264, %vs3265
  %nzcv3268 = or i64 %nzor3266, %cvor3267
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3268, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2790 word 0x54002ea0
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %fsh3272 = lshr i64 %r3270, 30
  %cond3271 = trunc i64 %fsh3272 to i1
  br i1 %cond3271, label %L_8001e2d64, label %L_8001e2794_ft
L_8001e27b0:
  ; @pc 0x8001e27b0 word 0xd63f0100
  %r3310.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3310 = load i64, ptr %r3310.p, align 8, !alias.scope !3, !noalias !4
  %fp3311 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3310, ptr %fp3311, align 8, !alias.scope !3, !noalias !4
  %wp3312 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714612, ptr %wp3312, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e27b4 word 0x17ffff1a
  br label %L_8001e241c
L_8001e27b8:
  ; @pc 0x8001e27b8 word 0xf94002a8
  %r3313.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3313 = load i64, ptr %r3313.p, align 8, !alias.scope !3, !noalias !4
  %gmp3314 = inttoptr i64 %r3313 to ptr
  %gml3315 = load i64, ptr %gmp3314, align 1, !alias.scope !4, !noalias !3
  %wp3316 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3315, ptr %wp3316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27bc word 0x17ffff0b
  br label %L_8001e23e8
L_8001e27c0:
  ; @pc 0x8001e27c0 word 0xaa0803e9
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %t3318 = or i64 0, %r3317
  %wp3319 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3318, ptr %wp3319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27c4 word 0x17fffe1d
  br label %L_8001e2038
L_8001e27c8:
  ; @pc 0x8001e27c8 word 0xf27f211f
  %r3320.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3320 = load i64, ptr %r3320.p, align 8, !alias.scope !3, !noalias !4
  %t3321 = and i64 %r3320, 1022
  %fn3322 = icmp slt i64 %t3321, 0
  %fz3323 = icmp eq i64 %t3321, 0
  %nz3324 = zext i1 %fn3322 to i64
  %zz3325 = zext i1 %fz3323 to i64
  %ns3326 = shl i64 %nz3324, 31
  %zs3327 = shl i64 %zz3325, 30
  %nzcv3328 = or i64 %ns3326, %zs3327
  %wp3329 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3328, ptr %wp3329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27cc word 0xaa0803fa
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %t3331 = or i64 0, %r3330
  %wp3332 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3331, ptr %wp3332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27d0 word 0x54ffefe0
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %fsh3335 = lshr i64 %r3333, 30
  %cond3334 = trunc i64 %fsh3335 to i1
  br i1 %cond3334, label %L_8001e25cc, label %L_8001e27d4_ft
L_8001e27d8:
  ; @pc 0x8001e27d8 word 0xaa1503e0
  %r3336.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3336 = load i64, ptr %r3336.p, align 8, !alias.scope !3, !noalias !4
  %t3337 = or i64 0, %r3336
  %wp3338 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3337, ptr %wp3338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27dc word 0x17ffff72
  br label %L_8001e25a4
L_8001e27e0:
  ; @pc 0x8001e27e0 word 0x2f00e400
  %wp3339 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp3339, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27e4 word 0x17ffffb0
  br label %L_8001e26a4
L_8001e27e8:
  ; @pc 0x8001e27e8 word 0xc85f7f28
  %r3340.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3340 = load i64, ptr %r3340.p, align 8, !alias.scope !3, !noalias !4
  %atp3341 = inttoptr i64 %r3340 to ptr
  %ldx3342 = load atomic i64, ptr %atp3341 acquire, align 8, !alias.scope !4, !noalias !3
  %fp3343 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r3340, ptr %fp3343, align 8, !alias.scope !3, !noalias !4
  %fp3344 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx3342, ptr %fp3344, align 8, !alias.scope !3, !noalias !4
  %wp3345 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %ldx3342, ptr %wp3345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27ec word 0xd1000508
  %r3346.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3346 = load i64, ptr %r3346.p, align 8, !alias.scope !3, !noalias !4
  %t3347 = sub i64 %r3346, 1
  %wp3348 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3347, ptr %wp3348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27f0 word 0xc8097f28
  %r3349.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3349 = load i64, ptr %r3349.p, align 8, !alias.scope !3, !noalias !4
  %atp3350 = inttoptr i64 %r3349 to ptr
  %fp3351 = getelementptr inbounds i8, ptr %c, i64 296
  %fv3352 = load i64, ptr %fp3351, align 8, !alias.scope !3, !noalias !4
  %fp3353 = getelementptr inbounds i8, ptr %c, i64 304
  %fv3354 = load i64, ptr %fp3353, align 8, !alias.scope !3, !noalias !4
  %fp3355 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp3355, align 8, !alias.scope !3, !noalias !4
  %cmp3356 = icmp eq i64 %fv3352, %r3349
  %r3357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3357 = load i64, ptr %r3357.p, align 8, !alias.scope !3, !noalias !4
  %cx3358 = cmpxchg ptr %atp3350, i64 %fv3354, i64 %r3357 seq_cst seq_cst, align 8
  %cxok3359 = extractvalue { i64, i1 } %cx3358, 1
  %t3360 = and i1 %cmp3356, %cxok3359
  %sel3361 = select i1 %t3360, i32 0, i32 1
  %c3362 = zext i32 %sel3361 to i64
  %wp3363 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3362, ptr %wp3363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27f4 word 0x34fff149
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %c3365 = trunc i64 %r3364 to i32
  %cmp3366 = icmp eq i32 %c3365, 0
  br i1 %cmp3366, label %L_8001e261c, label %L_8001e27f8_ft
L_8001e27fc:
  ; @pc 0x8001e27fc word 0x94a70879
  %wp3367 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714688, ptr %wp3367, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba49e0(ptr %c)
  ; @pc 0x8001e2800 word 0xaa1703fa
  %r3368.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3368 = load i64, ptr %r3368.p, align 8, !alias.scope !3, !noalias !4
  %t3369 = or i64 0, %r3368
  %wp3370 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3369, ptr %wp3370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2804 word 0xaa0003f7
  %r3371.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3371 = load i64, ptr %r3371.p, align 8, !alias.scope !3, !noalias !4
  %t3372 = or i64 0, %r3371
  %wp3373 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3372, ptr %wp3373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2808 word 0x94a70846
  %wp3374 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714700, ptr %wp3374, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4920(ptr %c)
  ; @pc 0x8001e280c word 0x2a0003f6
  %r3375.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3375 = load i64, ptr %r3375.p, align 8, !alias.scope !3, !noalias !4
  %c3376 = trunc i64 %r3375 to i32
  %t3377 = or i32 0, %c3376
  %c3378 = zext i32 %t3377 to i64
  %wp3379 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3378, ptr %wp3379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2810 word 0xaa1703e0
  %r3380.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3380 = load i64, ptr %r3380.p, align 8, !alias.scope !3, !noalias !4
  %t3381 = or i64 0, %r3380
  %wp3382 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3381, ptr %wp3382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2814 word 0xaa1a03f7
  %r3383.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3383 = load i64, ptr %r3383.p, align 8, !alias.scope !3, !noalias !4
  %t3384 = or i64 0, %r3383
  %wp3385 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3384, ptr %wp3385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2818 word 0x17fffdf4
  br label %L_8001e1fe8
L_8001e281c:
  ; @pc 0x8001e281c word 0x94a70871
  %wp3386 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714720, ptr %wp3386, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba49e0(ptr %c)
  ; @pc 0x8001e2820 word 0xaa0003f7
  %r3387.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3387 = load i64, ptr %r3387.p, align 8, !alias.scope !3, !noalias !4
  %t3388 = or i64 0, %r3387
  %wp3389 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3388, ptr %wp3389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2824 word 0x94a7083f
  %wp3390 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714728, ptr %wp3390, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4920(ptr %c)
  ; @pc 0x8001e2828 word 0x2a0003f6
  %r3391.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3391 = load i64, ptr %r3391.p, align 8, !alias.scope !3, !noalias !4
  %c3392 = trunc i64 %r3391 to i32
  %t3393 = or i32 0, %c3392
  %c3394 = zext i32 %t3393 to i64
  %wp3395 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3394, ptr %wp3395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e282c word 0xaa1703e0
  %r3396.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3396 = load i64, ptr %r3396.p, align 8, !alias.scope !3, !noalias !4
  %t3397 = or i64 0, %r3396
  %wp3398 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3397, ptr %wp3398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2830 word 0x17ffff5d
  br label %L_8001e25a4
L_8001e2834:
  ; @pc 0x8001e2834 word 0x2a1f03e0
  %t3399 = or i32 0, 0
  %c3400 = zext i32 %t3399 to i64
  %wp3401 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c3400, ptr %wp3401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2838 word 0xd65f03c0
  ret void
L_8001e283c:
  ; @pc 0x8001e283c word 0xaa1303e0
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %t3403 = or i64 0, %r3402
  %wp3404 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3403, ptr %wp3404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2840 word 0xd63f0140
  %r3405.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3405 = load i64, ptr %r3405.p, align 8, !alias.scope !3, !noalias !4
  %fp3406 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3405, ptr %fp3406, align 8, !alias.scope !3, !noalias !4
  %wp3407 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714756, ptr %wp3407, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2844 word 0x17fffdb8
  br label %L_8001e1f24
L_8001e2848:
  ; @pc 0x8001e2848 word 0xaa1303e0
  %r3408.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3408 = load i64, ptr %r3408.p, align 8, !alias.scope !3, !noalias !4
  %t3409 = or i64 0, %r3408
  %wp3410 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3409, ptr %wp3410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e284c word 0xd63f0120
  %r3411.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3411 = load i64, ptr %r3411.p, align 8, !alias.scope !3, !noalias !4
  %fp3412 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3411, ptr %fp3412, align 8, !alias.scope !3, !noalias !4
  %wp3413 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714768, ptr %wp3413, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2850 word 0x39446268
  %r3414.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3414 = load i64, ptr %r3414.p, align 8, !alias.scope !3, !noalias !4
  %t3415 = add i64 %r3414, 280
  %gmp3416 = inttoptr i64 %t3415 to ptr
  %gml3417 = load i8, ptr %gmp3416, align 1, !alias.scope !4, !noalias !3
  %c3418 = zext i8 %gml3417 to i64
  %wp3419 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3418, ptr %wp3419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2854 word 0x3607b640
  %r3420.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3420 = load i64, ptr %r3420.p, align 8, !alias.scope !3, !noalias !4
  %t3421 = and i64 %r3420, 1
  %cmp3422 = icmp eq i64 %t3421, 0
  br i1 %cmp3422, label %L_8001e1f1c, label %L_8001e2858
L_8001e2858:
  ; @pc 0x8001e2858 word 0x52b7f009
  %c3423 = zext i32 -1082130432 to i64
  %wp3424 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3423, ptr %wp3424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e285c word 0x121e7908
  %r3425.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3425 = load i64, ptr %r3425.p, align 8, !alias.scope !3, !noalias !4
  %c3426 = trunc i64 %r3425 to i32
  %t3427 = and i32 %c3426, -3
  %c3428 = zext i32 %t3427 to i64
  %wp3429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3428, ptr %wp3429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2860 word 0x3900827f
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %t3431 = add i64 %r3430, 32
  %c3432 = trunc i32 0 to i8
  %gmp3433 = inttoptr i64 %t3431 to ptr
  store i8 %c3432, ptr %gmp3433, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2864 word 0xf803c269
  %r3434.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3434 = load i64, ptr %r3434.p, align 8, !alias.scope !3, !noalias !4
  %t3435 = add i64 %r3434, 60
  %r3436.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3436 = load i64, ptr %r3436.p, align 8, !alias.scope !3, !noalias !4
  %gmp3437 = inttoptr i64 %t3435 to ptr
  store i64 %r3436, ptr %gmp3437, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2868 word 0xf9403669
  %r3438.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3438 = load i64, ptr %r3438.p, align 8, !alias.scope !3, !noalias !4
  %t3439 = add i64 %r3438, 104
  %gmp3440 = inttoptr i64 %t3439 to ptr
  %gml3441 = load i64, ptr %gmp3440, align 1, !alias.scope !4, !noalias !3
  %wp3442 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3441, ptr %wp3442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e286c word 0x39046268
  %r3443.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3443 = load i64, ptr %r3443.p, align 8, !alias.scope !3, !noalias !4
  %t3444 = add i64 %r3443, 280
  %r3445.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3445 = load i64, ptr %r3445.p, align 8, !alias.scope !3, !noalias !4
  %c3446 = trunc i64 %r3445 to i32
  %c3447 = trunc i32 %c3446 to i8
  %gmp3448 = inttoptr i64 %t3444 to ptr
  store i8 %c3447, ptr %gmp3448, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2870 word 0xf9001a7f
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %t3450 = add i64 %r3449, 48
  %gmp3451 = inttoptr i64 %t3450 to ptr
  store i64 0, ptr %gmp3451, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2874 word 0xb9003a7f
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %t3453 = add i64 %r3452, 56
  %gmp3454 = inttoptr i64 %t3453 to ptr
  store i32 0, ptr %gmp3454, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2878 word 0xb9005a7f
  %r3455.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3455 = load i64, ptr %r3455.p, align 8, !alias.scope !3, !noalias !4
  %t3456 = add i64 %r3455, 88
  %gmp3457 = inttoptr i64 %t3456 to ptr
  store i32 0, ptr %gmp3457, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e287c word 0x3901727f
  %r3458.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3458 = load i64, ptr %r3458.p, align 8, !alias.scope !3, !noalias !4
  %t3459 = add i64 %r3458, 92
  %c3460 = trunc i32 0 to i8
  %gmp3461 = inttoptr i64 %t3459 to ptr
  store i8 %c3460, ptr %gmp3461, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2880 word 0xb4ffb4e9
  %r3462.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3462 = load i64, ptr %r3462.p, align 8, !alias.scope !3, !noalias !4
  %cmp3463 = icmp eq i64 %r3462, 0
  br i1 %cmp3463, label %L_8001e1f1c, label %L_8001e2884_ft
L_8001e2890:
  ; @pc 0x8001e2890 word 0xaa1303e0
  %r3473.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3473 = load i64, ptr %r3473.p, align 8, !alias.scope !3, !noalias !4
  %t3474 = or i64 0, %r3473
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3474, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2894 word 0xd63f0100
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %fp3477 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3476, ptr %fp3477, align 8, !alias.scope !3, !noalias !4
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714840, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2898 word 0x2a0003e1
  %r3479.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3479 = load i64, ptr %r3479.p, align 8, !alias.scope !3, !noalias !4
  %c3480 = trunc i64 %r3479 to i32
  %t3481 = or i32 0, %c3480
  %c3482 = zext i32 %t3481 to i64
  %wp3483 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3482, ptr %wp3483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e289c word 0x17fffdad
  br label %L_8001e1f50
L_8001e28a0:
  ; @pc 0x8001e28a0 word 0xaa1403e0
  %r3484.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3484 = load i64, ptr %r3484.p, align 8, !alias.scope !3, !noalias !4
  %t3485 = or i64 0, %r3484
  %wp3486 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3485, ptr %wp3486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28a4 word 0xd63f0100
  %r3487.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3487 = load i64, ptr %r3487.p, align 8, !alias.scope !3, !noalias !4
  %fp3488 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3487, ptr %fp3488, align 8, !alias.scope !3, !noalias !4
  %wp3489 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714856, ptr %wp3489, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e28a8 word 0xaa0003f4
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %t3491 = or i64 0, %r3490
  %wp3492 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t3491, ptr %wp3492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28ac word 0x17fffdb4
  br label %L_8001e1f7c
L_8001e28b0:
  ; @pc 0x8001e28b0 word 0xaa1403e0
  %r3493.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3493 = load i64, ptr %r3493.p, align 8, !alias.scope !3, !noalias !4
  %t3494 = or i64 0, %r3493
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3494, ptr %wp3495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28b4 word 0xd63f0100
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %fp3497 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3496, ptr %fp3497, align 8, !alias.scope !3, !noalias !4
  %wp3498 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714872, ptr %wp3498, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e28b8 word 0x17fffdef
  br label %L_8001e2074
L_8001e28bc:
  ; @pc 0x8001e28bc word 0xd63f0100
  %r3499.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3499 = load i64, ptr %r3499.p, align 8, !alias.scope !3, !noalias !4
  %fp3500 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3499, ptr %fp3500, align 8, !alias.scope !3, !noalias !4
  %wp3501 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714880, ptr %wp3501, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e28c0 word 0x2a0003f6
  %r3502.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3502 = load i64, ptr %r3502.p, align 8, !alias.scope !3, !noalias !4
  %c3503 = trunc i64 %r3502 to i32
  %t3504 = or i32 0, %c3503
  %c3505 = zext i32 %t3504 to i64
  %wp3506 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3505, ptr %wp3506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28c4 word 0x17fffdc5
  br label %L_8001e1fd8
L_8001e28c8:
  ; @pc 0x8001e28c8 word 0xc85f7f28
  %r3507.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3507 = load i64, ptr %r3507.p, align 8, !alias.scope !3, !noalias !4
  %atp3508 = inttoptr i64 %r3507 to ptr
  %ldx3509 = load atomic i64, ptr %atp3508 acquire, align 8, !alias.scope !4, !noalias !3
  %fp3510 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r3507, ptr %fp3510, align 8, !alias.scope !3, !noalias !4
  %fp3511 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx3509, ptr %fp3511, align 8, !alias.scope !3, !noalias !4
  %wp3512 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %ldx3509, ptr %wp3512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28cc word 0x91000508
  %r3513.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3513 = load i64, ptr %r3513.p, align 8, !alias.scope !3, !noalias !4
  %t3514 = add i64 %r3513, 1
  %wp3515 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3514, ptr %wp3515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28d0 word 0xc8097f28
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %atp3517 = inttoptr i64 %r3516 to ptr
  %fp3518 = getelementptr inbounds i8, ptr %c, i64 296
  %fv3519 = load i64, ptr %fp3518, align 8, !alias.scope !3, !noalias !4
  %fp3520 = getelementptr inbounds i8, ptr %c, i64 304
  %fv3521 = load i64, ptr %fp3520, align 8, !alias.scope !3, !noalias !4
  %fp3522 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp3522, align 8, !alias.scope !3, !noalias !4
  %cmp3523 = icmp eq i64 %fv3519, %r3516
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %cx3525 = cmpxchg ptr %atp3517, i64 %fv3521, i64 %r3524 seq_cst seq_cst, align 8
  %cxok3526 = extractvalue { i64, i1 } %cx3525, 1
  %t3527 = and i1 %cmp3523, %cxok3526
  %sel3528 = select i1 %t3527, i32 0, i32 1
  %c3529 = zext i32 %sel3528 to i64
  %wp3530 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3529, ptr %wp3530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28d4 word 0x34ffbcc9
  %r3531.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3531 = load i64, ptr %r3531.p, align 8, !alias.scope !3, !noalias !4
  %c3532 = trunc i64 %r3531 to i32
  %cmp3533 = icmp eq i32 %c3532, 0
  br i1 %cmp3533, label %L_8001e206c, label %L_8001e28d8_ft
L_8001e28dc:
  ; @pc 0x8001e28dc word 0x5280801a
  %c3534 = zext i32 1024 to i64
  %wp3535 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c3534, ptr %wp3535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28e0 word 0x17fffdc8
  br label %L_8001e2000
L_8001e28e4:
  ; @pc 0x8001e28e4 word 0xaa1503e0
  %r3536.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3536 = load i64, ptr %r3536.p, align 8, !alias.scope !3, !noalias !4
  %t3537 = or i64 0, %r3536
  %wp3538 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3537, ptr %wp3538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28e8 word 0x94a707be
  %wp3539 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714924, ptr %wp3539, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba47e0(ptr %c)
  ; @pc 0x8001e28ec word 0x3607b940
  %r3540.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3540 = load i64, ptr %r3540.p, align 8, !alias.scope !3, !noalias !4
  %t3541 = and i64 %r3540, 1
  %cmp3542 = icmp eq i64 %t3541, 0
  br i1 %cmp3542, label %L_8001e2014, label %L_8001e28f0_ft
L_8001e28f4:
  ; @pc 0x8001e28f4 word 0xaa1303e0
  %r3543.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3543 = load i64, ptr %r3543.p, align 8, !alias.scope !3, !noalias !4
  %t3544 = or i64 0, %r3543
  %wp3545 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3544, ptr %wp3545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28f8 word 0xaa1f03e1
  %t3546 = or i64 0, 0
  %wp3547 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3546, ptr %wp3547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e28fc word 0xd63f0100
  %r3548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3548 = load i64, ptr %r3548.p, align 8, !alias.scope !3, !noalias !4
  %fp3549 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3548, ptr %fp3549, align 8, !alias.scope !3, !noalias !4
  %wp3550 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714944, ptr %wp3550, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2900 word 0x17fffe6b
  br label %L_8001e22ac
L_8001e2904:
  ; @pc 0x8001e2904 word 0x7100051f
  %r3551.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3551 = load i64, ptr %r3551.p, align 8, !alias.scope !3, !noalias !4
  %c3552 = trunc i64 %r3551 to i32
  %t3553 = sub i32 %c3552, 1
  %fn3554 = icmp slt i32 %t3553, 0
  %fz3555 = icmp eq i32 %t3553, 0
  %fc3556 = icmp uge i32 %c3552, 1
  %fx13557 = xor i32 %c3552, 1
  %fx23558 = xor i32 %c3552, %t3553
  %fva3559 = and i32 %fx13557, %fx23558
  %fv3560 = icmp slt i32 %fva3559, 0
  %nz3561 = zext i1 %fn3554 to i64
  %zz3562 = zext i1 %fz3555 to i64
  %cz3563 = zext i1 %fc3556 to i64
  %vz3564 = zext i1 %fv3560 to i64
  %ns3565 = shl i64 %nz3561, 31
  %zs3566 = shl i64 %zz3562, 30
  %cs3567 = shl i64 %cz3563, 29
  %vs3568 = shl i64 %vz3564, 28
  %nzor3569 = or i64 %ns3565, %zs3566
  %cvor3570 = or i64 %cs3567, %vs3568
  %nzcv3571 = or i64 %nzor3569, %cvor3570
  %wp3572 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3571, ptr %wp3572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2908 word 0x54ffcd21
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %fsh3575 = lshr i64 %r3573, 30
  %ftr3576 = trunc i64 %fsh3575 to i1
  %cond3574 = xor i1 %ftr3576, true
  br i1 %cond3574, label %L_8001e22ac, label %L_8001e290c_ft
L_8001e2920:
  ; @pc 0x8001e2920 word 0x2a1f03e1
  %t3586 = or i32 0, 0
  %c3587 = zext i32 %t3586 to i64
  %wp3588 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3587, ptr %wp3588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2924 word 0xd63f0100
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %fp3590 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3589, ptr %fp3590, align 8, !alias.scope !3, !noalias !4
  %wp3591 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714984, ptr %wp3591, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2928 word 0x17fffde7
  br label %L_8001e20c4
L_8001e292c:
  ; @pc 0x8001e292c word 0x2a1f03e1
  %t3592 = or i32 0, 0
  %c3593 = zext i32 %t3592 to i64
  %wp3594 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3593, ptr %wp3594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2930 word 0xd63f0100
  %r3595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3595 = load i64, ptr %r3595.p, align 8, !alias.scope !3, !noalias !4
  %fp3596 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3595, ptr %fp3596, align 8, !alias.scope !3, !noalias !4
  %wp3597 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714996, ptr %wp3597, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2934 word 0x17fffe15
  br label %L_8001e2188
L_8001e2938:
  ; @pc 0x8001e2938 word 0x2a1f03e1
  %t3598 = or i32 0, 0
  %c3599 = zext i32 %t3598 to i64
  %wp3600 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3599, ptr %wp3600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e293c word 0xd63f0100
  %r3601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3601 = load i64, ptr %r3601.p, align 8, !alias.scope !3, !noalias !4
  %fp3602 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3601, ptr %fp3602, align 8, !alias.scope !3, !noalias !4
  %wp3603 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715008, ptr %wp3603, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2940 word 0xf94002e9
  %r3604.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3604 = load i64, ptr %r3604.p, align 8, !alias.scope !3, !noalias !4
  %gmp3605 = inttoptr i64 %r3604 to ptr
  %gml3606 = load i64, ptr %gmp3605, align 1, !alias.scope !4, !noalias !3
  %wp3607 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3606, ptr %wp3607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2944 word 0xaa0003e8
  %r3608.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3608 = load i64, ptr %r3608.p, align 8, !alias.scope !3, !noalias !4
  %t3609 = or i64 0, %r3608
  %wp3610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3609, ptr %wp3610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2948 word 0xf9406520
  %r3611.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3611 = load i64, ptr %r3611.p, align 8, !alias.scope !3, !noalias !4
  %t3612 = add i64 %r3611, 200
  %gmp3613 = inttoptr i64 %t3612 to ptr
  %gml3614 = load i64, ptr %gmp3613, align 1, !alias.scope !4, !noalias !3
  %wp3615 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3614, ptr %wp3615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e294c word 0x17fffe40
  br label %L_8001e224c
L_8001e2950:
  ; @pc 0x8001e2950 word 0x2a1f03e1
  %t3616 = or i32 0, 0
  %c3617 = zext i32 %t3616 to i64
  %wp3618 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3617, ptr %wp3618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2954 word 0xd63f0100
  %r3619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3619 = load i64, ptr %r3619.p, align 8, !alias.scope !3, !noalias !4
  %fp3620 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3619, ptr %fp3620, align 8, !alias.scope !3, !noalias !4
  %wp3621 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715032, ptr %wp3621, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2958 word 0x17fffe44
  br label %L_8001e2268
L_8001e295c:
  ; @pc 0x8001e295c word 0xf94002e8
  %r3622.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3622 = load i64, ptr %r3622.p, align 8, !alias.scope !3, !noalias !4
  %gmp3623 = inttoptr i64 %r3622 to ptr
  %gml3624 = load i64, ptr %gmp3623, align 1, !alias.scope !4, !noalias !3
  %wp3625 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3624, ptr %wp3625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2960 word 0x2a1f03e1
  %t3626 = or i32 0, 0
  %c3627 = zext i32 %t3626 to i64
  %wp3628 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3627, ptr %wp3628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2964 word 0xf9406500
  %r3629.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3629 = load i64, ptr %r3629.p, align 8, !alias.scope !3, !noalias !4
  %t3630 = add i64 %r3629, 200
  %gmp3631 = inttoptr i64 %t3630 to ptr
  %gml3632 = load i64, ptr %gmp3631, align 1, !alias.scope !4, !noalias !3
  %wp3633 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3632, ptr %wp3633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2968 word 0xf9400008
  %r3634.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3634 = load i64, ptr %r3634.p, align 8, !alias.scope !3, !noalias !4
  %gmp3635 = inttoptr i64 %r3634 to ptr
  %gml3636 = load i64, ptr %gmp3635, align 1, !alias.scope !4, !noalias !3
  %wp3637 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3636, ptr %wp3637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e296c word 0xf9403108
  %r3638.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3638 = load i64, ptr %r3638.p, align 8, !alias.scope !3, !noalias !4
  %t3639 = add i64 %r3638, 96
  %gmp3640 = inttoptr i64 %t3639 to ptr
  %gml3641 = load i64, ptr %gmp3640, align 1, !alias.scope !4, !noalias !3
  %wp3642 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3641, ptr %wp3642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2970 word 0xd63f0100
  %r3643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3643 = load i64, ptr %r3643.p, align 8, !alias.scope !3, !noalias !4
  %fp3644 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3643, ptr %fp3644, align 8, !alias.scope !3, !noalias !4
  %wp3645 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715060, ptr %wp3645, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2974 word 0x94a2421e
  %wp3646 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715064, ptr %wp3646, align 8, !alias.scope !3, !noalias !4
  call void @f_802a731ec(ptr %c)
  ; @pc 0x8001e2978 word 0xf9403e68
  %r3647.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3647 = load i64, ptr %r3647.p, align 8, !alias.scope !3, !noalias !4
  %t3648 = add i64 %r3647, 120
  %gmp3649 = inttoptr i64 %t3648 to ptr
  %gml3650 = load i64, ptr %gmp3649, align 1, !alias.scope !4, !noalias !3
  %wp3651 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3650, ptr %wp3651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e297c word 0xf9000fe0
  %r3652.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3652 = load i64, ptr %r3652.p, align 8, !alias.scope !3, !noalias !4
  %t3653 = add i64 %r3652, 24
  %r3654.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3654 = load i64, ptr %r3654.p, align 8, !alias.scope !3, !noalias !4
  %gmp3655 = inttoptr i64 %t3653 to ptr
  store i64 %r3654, ptr %gmp3655, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2980 word 0xf90017e8
  %r3656.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3656 = load i64, ptr %r3656.p, align 8, !alias.scope !3, !noalias !4
  %t3657 = add i64 %r3656, 40
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %gmp3659 = inttoptr i64 %t3657 to ptr
  store i64 %r3658, ptr %gmp3659, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2984 word 0x17fffe3e
  br label %L_8001e227c
L_8001e2988:
  ; @pc 0x8001e2988 word 0xaa1303e0
  %r3660.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3660 = load i64, ptr %r3660.p, align 8, !alias.scope !3, !noalias !4
  %t3661 = or i64 0, %r3660
  %wp3662 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3661, ptr %wp3662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e298c word 0xd63f0100
  %r3663.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3663 = load i64, ptr %r3663.p, align 8, !alias.scope !3, !noalias !4
  %fp3664 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3663, ptr %fp3664, align 8, !alias.scope !3, !noalias !4
  %wp3665 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715088, ptr %wp3665, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2990 word 0x17fffeea
  br label %L_8001e2538
L_8001e2994:
  ; @pc 0x8001e2994 word 0xaa1403e0
  %r3666.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3666 = load i64, ptr %r3666.p, align 8, !alias.scope !3, !noalias !4
  %t3667 = or i64 0, %r3666
  %wp3668 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3667, ptr %wp3668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2998 word 0xd63f0100
  %r3669.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3669 = load i64, ptr %r3669.p, align 8, !alias.scope !3, !noalias !4
  %fp3670 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3669, ptr %fp3670, align 8, !alias.scope !3, !noalias !4
  %wp3671 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715100, ptr %wp3671, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e299c word 0x17ffff20
  br label %L_8001e261c
L_8001e29a0:
  ; @pc 0x8001e29a0 word 0xd63f0100
  %r3672.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3672 = load i64, ptr %r3672.p, align 8, !alias.scope !3, !noalias !4
  %fp3673 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3672, ptr %fp3673, align 8, !alias.scope !3, !noalias !4
  %wp3674 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715108, ptr %wp3674, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e29a4 word 0x2a0003f6
  %r3675.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3675 = load i64, ptr %r3675.p, align 8, !alias.scope !3, !noalias !4
  %c3676 = trunc i64 %r3675 to i32
  %t3677 = or i32 0, %c3676
  %c3678 = zext i32 %t3677 to i64
  %wp3679 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3678, ptr %wp3679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29a8 word 0x17fffefb
  br label %L_8001e2594
L_8001e29ac:
  ; @pc 0x8001e29ac word 0x52808017
  %c3680 = zext i32 1024 to i64
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3680, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29b0 word 0x17ffff03
  br label %L_8001e25bc
L_8001e29b4:
  ; @pc 0x8001e29b4 word 0xd34aff48
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %ror3683 = call i64 @llvm.fshr.i64(i64 %r3682, i64 %r3682, i64 10)
  %t3684 = and i64 %ror3683, 18014398509481983
  %wp3685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3684, ptr %wp3685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29b8 word 0x927f1108
  %r3686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3686 = load i64, ptr %r3686.p, align 8, !alias.scope !3, !noalias !4
  %t3687 = and i64 %r3686, 62
  %wp3688 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3687, ptr %wp3688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29bc word 0x17ffff03
  br label %L_8001e25c8
L_8001e29c0:
  ; @pc 0x8001e29c0 word 0x9102a280
  %r3689.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3689 = load i64, ptr %r3689.p, align 8, !alias.scope !3, !noalias !4
  %t3690 = add i64 %r3689, 168
  %wp3691 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3690, ptr %wp3691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29c4 word 0xaa1503e1
  %r3692.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3692 = load i64, ptr %r3692.p, align 8, !alias.scope !3, !noalias !4
  %t3693 = or i64 0, %r3692
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3693, ptr %wp3694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29c8 word 0x94a70c3a
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715148, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba5ab0(ptr %c)
  ; @pc 0x8001e29cc word 0xf9405a88
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %t3697 = add i64 %r3696, 176
  %gmp3698 = inttoptr i64 %t3697 to ptr
  %gml3699 = load i64, ptr %gmp3698, align 1, !alias.scope !4, !noalias !3
  %wp3700 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3699, ptr %wp3700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29d0 word 0xd351fd08
  %r3701.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3701 = load i64, ptr %r3701.p, align 8, !alias.scope !3, !noalias !4
  %ror3702 = call i64 @llvm.fshr.i64(i64 %r3701, i64 %r3701, i64 17)
  %t3703 = and i64 %ror3702, 140737488355327
  %wp3704 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3703, ptr %wp3704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29d4 word 0xb4ffb2a8
  %r3705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3705 = load i64, ptr %r3705.p, align 8, !alias.scope !3, !noalias !4
  %cmp3706 = icmp eq i64 %r3705, 0
  br i1 %cmp3706, label %L_8001e2028, label %L_8001e29d8_ft
L_8001e29dc:
  ; @pc 0x8001e29dc word 0x2a1f03e1
  %t3707 = or i32 0, 0
  %c3708 = zext i32 %t3707 to i64
  %wp3709 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3708, ptr %wp3709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29e0 word 0xd63f0100
  %r3710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3710 = load i64, ptr %r3710.p, align 8, !alias.scope !3, !noalias !4
  %fp3711 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3710, ptr %fp3711, align 8, !alias.scope !3, !noalias !4
  %wp3712 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715172, ptr %wp3712, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e29e4 word 0x17fffe43
  br label %L_8001e22f0
L_8001e29e8:
  ; @pc 0x8001e29e8 word 0xaa0003f6
  %r3713.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3713 = load i64, ptr %r3713.p, align 8, !alias.scope !3, !noalias !4
  %t3714 = or i64 0, %r3713
  %wp3715 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t3714, ptr %wp3715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29ec word 0xaa1303e0
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = or i64 0, %r3716
  %wp3718 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3717, ptr %wp3718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29f0 word 0xd63f0100
  %r3719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3719 = load i64, ptr %r3719.p, align 8, !alias.scope !3, !noalias !4
  %fp3720 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3719, ptr %fp3720, align 8, !alias.scope !3, !noalias !4
  %wp3721 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715188, ptr %wp3721, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e29f4 word 0x2a0003e8
  %r3722.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3722 = load i64, ptr %r3722.p, align 8, !alias.scope !3, !noalias !4
  %c3723 = trunc i64 %r3722 to i32
  %t3724 = or i32 0, %c3723
  %c3725 = zext i32 %t3724 to i64
  %wp3726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3725, ptr %wp3726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29f8 word 0xaa1603e0
  %r3727.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3727 = load i64, ptr %r3727.p, align 8, !alias.scope !3, !noalias !4
  %t3728 = or i64 0, %r3727
  %wp3729 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3728, ptr %wp3729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e29fc word 0x35ffcd48
  %r3730.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3730 = load i64, ptr %r3730.p, align 8, !alias.scope !3, !noalias !4
  %c3731 = trunc i64 %r3730 to i32
  %cmp3732 = icmp ne i32 %c3731, 0
  br i1 %cmp3732, label %L_8001e23a4, label %L_8001e2a00_ft
L_8001e2a04:
  ; @pc 0x8001e2a04 word 0xd001bb48
  %wp3733 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp3733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a08 word 0xaa0003fc
  %r3734.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3734 = load i64, ptr %r3734.p, align 8, !alias.scope !3, !noalias !4
  %t3735 = or i64 0, %r3734
  %wp3736 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t3735, ptr %wp3736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a0c word 0xf9454108
  %r3737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3737 = load i64, ptr %r3737.p, align 8, !alias.scope !3, !noalias !4
  %t3738 = add i64 %r3737, 2688
  %gmp3739 = inttoptr i64 %t3738 to ptr
  %gml3740 = load i64, ptr %gmp3739, align 1, !alias.scope !4, !noalias !3
  %wp3741 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3740, ptr %wp3741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a10 word 0xaa0803e0
  %r3742.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3742 = load i64, ptr %r3742.p, align 8, !alias.scope !3, !noalias !4
  %t3743 = or i64 0, %r3742
  %wp3744 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3743, ptr %wp3744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a14 word 0x94a703e3
  %wp3745 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715224, ptr %wp3745, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001e2a18 word 0x2a0003e8
  %r3746.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3746 = load i64, ptr %r3746.p, align 8, !alias.scope !3, !noalias !4
  %c3747 = trunc i64 %r3746 to i32
  %t3748 = or i32 0, %c3747
  %c3749 = zext i32 %t3748 to i64
  %wp3750 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3749, ptr %wp3750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a1c word 0xaa1c03e0
  %r3751.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3751 = load i64, ptr %r3751.p, align 8, !alias.scope !3, !noalias !4
  %t3752 = or i64 0, %r3751
  %wp3753 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3752, ptr %wp3753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a20 word 0x34ffc928
  %r3754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3754 = load i64, ptr %r3754.p, align 8, !alias.scope !3, !noalias !4
  %c3755 = trunc i64 %r3754 to i32
  %cmp3756 = icmp eq i32 %c3755, 0
  br i1 %cmp3756, label %L_8001e2344, label %L_8001e2a24_ft
L_8001e2a50:
  ; @pc 0x8001e2a50 word 0xd001bb41
  %wp3785 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419818496, ptr %wp3785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a54 word 0xf9453c21
  %r3786.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3786 = load i64, ptr %r3786.p, align 8, !alias.scope !3, !noalias !4
  %t3787 = add i64 %r3786, 2680
  %gmp3788 = inttoptr i64 %t3787 to ptr
  %gml3789 = load i64, ptr %gmp3788, align 1, !alias.scope !4, !noalias !3
  %wp3790 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml3789, ptr %wp3790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a58 word 0xd63f0100
  %r3791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3791 = load i64, ptr %r3791.p, align 8, !alias.scope !3, !noalias !4
  %fp3792 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3791, ptr %fp3792, align 8, !alias.scope !3, !noalias !4
  %wp3793 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715292, ptr %wp3793, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2a5c word 0xb5ffc860
  %r3794.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3794 = load i64, ptr %r3794.p, align 8, !alias.scope !3, !noalias !4
  %cmp3795 = icmp ne i64 %r3794, 0
  br i1 %cmp3795, label %L_8001e2368, label %L_8001e2a60
L_8001e2a60:
  ; @pc 0x8001e2a60 word 0xaa1f03e0
  %t3796 = or i64 0, 0
  %wp3797 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3796, ptr %wp3797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a64 word 0x17fffe41
  br label %L_8001e2368
L_8001e2a68:
  ; @pc 0x8001e2a68 word 0xaa0003fb
  %r3798.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3798 = load i64, ptr %r3798.p, align 8, !alias.scope !3, !noalias !4
  %t3799 = or i64 0, %r3798
  %wp3800 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t3799, ptr %wp3800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a6c word 0xd001bb40
  %wp3801 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419818496, ptr %wp3801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a70 word 0xf9454000
  %r3802.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3802 = load i64, ptr %r3802.p, align 8, !alias.scope !3, !noalias !4
  %t3803 = add i64 %r3802, 2688
  %gmp3804 = inttoptr i64 %t3803 to ptr
  %gml3805 = load i64, ptr %gmp3804, align 1, !alias.scope !4, !noalias !3
  %wp3806 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3805, ptr %wp3806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a74 word 0x94a703cb
  %wp3807 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715320, ptr %wp3807, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001e2a78 word 0x34000140
  %r3808.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3808 = load i64, ptr %r3808.p, align 8, !alias.scope !3, !noalias !4
  %c3809 = trunc i64 %r3808 to i32
  %cmp3810 = icmp eq i32 %c3809, 0
  br i1 %cmp3810, label %L_8001e2aa0, label %L_8001e2a7c_ft
L_8001e2aa0:
  ; @pc 0x8001e2aa0 word 0xaa1b03e0
  %r3836.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3836 = load i64, ptr %r3836.p, align 8, !alias.scope !3, !noalias !4
  %t3837 = or i64 0, %r3836
  %wp3838 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3837, ptr %wp3838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2aa4 word 0x17fffe31
  br label %L_8001e2368
L_8001e2aa8:
  ; @pc 0x8001e2aa8 word 0xf9400368
  %r3839.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3839 = load i64, ptr %r3839.p, align 8, !alias.scope !3, !noalias !4
  %gmp3840 = inttoptr i64 %r3839 to ptr
  %gml3841 = load i64, ptr %gmp3840, align 1, !alias.scope !4, !noalias !3
  %wp3842 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3841, ptr %wp3842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2aac word 0xb9003e7f
  %r3843.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3843 = load i64, ptr %r3843.p, align 8, !alias.scope !3, !noalias !4
  %t3844 = add i64 %r3843, 60
  %gmp3845 = inttoptr i64 %t3844 to ptr
  store i32 0, ptr %gmp3845, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2ab0 word 0xf8024268
  %r3846.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3846 = load i64, ptr %r3846.p, align 8, !alias.scope !3, !noalias !4
  %t3847 = add i64 %r3846, 36
  %r3848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3848 = load i64, ptr %r3848.p, align 8, !alias.scope !3, !noalias !4
  %gmp3849 = inttoptr i64 %t3847 to ptr
  store i64 %r3848, ptr %gmp3849, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2ab4 word 0x5e140401
  %r3850.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3850 = load i128, ptr %r3850.p, align 16, !alias.scope !3, !noalias !4
  %c3851 = bitcast i128 %r3850 to <4 x i32>
  %el3852 = extractelement <4 x i32> %c3851, i32 2
  %c3853 = zext i32 %el3852 to i128
  %wp3854 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3853, ptr %wp3854, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ab8 word 0x9e660008
  %r3855.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3855 = load i128, ptr %r3855.p, align 16, !alias.scope !3, !noalias !4
  %c3856 = trunc i128 %r3855 to i64
  %wp3857 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3856, ptr %wp3857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2abc word 0xb9400b6a
  %r3858.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3858 = load i64, ptr %r3858.p, align 8, !alias.scope !3, !noalias !4
  %t3859 = add i64 %r3858, 8
  %gmp3860 = inttoptr i64 %t3859 to ptr
  %gml3861 = load i32, ptr %gmp3860, align 1, !alias.scope !4, !noalias !3
  %c3862 = zext i32 %gml3861 to i64
  %wp3863 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3862, ptr %wp3863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ac0 word 0x1e214020
  %r3864.p = getelementptr inbounds i8, ptr %c, i64 528
  %r3864 = load i128, ptr %r3864.p, align 16, !alias.scope !3, !noalias !4
  %c3865 = trunc i128 %r3864 to i32
  %t3866 = xor i32 %c3865, -2147483648
  %c3867 = zext i32 %t3866 to i128
  %wp3868 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3867, ptr %wp3868, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ac4 word 0xd360fd09
  %r3869.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3869 = load i64, ptr %r3869.p, align 8, !alias.scope !3, !noalias !4
  %ror3870 = call i64 @llvm.fshr.i64(i64 %r3869, i64 %r3869, i64 32)
  %t3871 = and i64 %ror3870, 4294967295
  %wp3872 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3871, ptr %wp3872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ac8 word 0x52010108
  %r3873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3873 = load i64, ptr %r3873.p, align 8, !alias.scope !3, !noalias !4
  %c3874 = trunc i64 %r3873 to i32
  %t3875 = xor i32 %c3874, -2147483648
  %c3876 = zext i32 %t3875 to i64
  %wp3877 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3876, ptr %wp3877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2acc word 0x52010129
  %r3878.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3878 = load i64, ptr %r3878.p, align 8, !alias.scope !3, !noalias !4
  %c3879 = trunc i64 %r3878 to i32
  %t3880 = xor i32 %c3879, -2147483648
  %c3881 = zext i32 %t3880 to i64
  %wp3882 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3881, ptr %wp3882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ad0 word 0x2905a26a
  %r3883.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3883 = load i64, ptr %r3883.p, align 8, !alias.scope !3, !noalias !4
  %t3884 = add i64 %r3883, 44
  %t3885 = add i64 %t3884, 4
  %r3886.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3886 = load i64, ptr %r3886.p, align 8, !alias.scope !3, !noalias !4
  %c3887 = trunc i64 %r3886 to i32
  %gmp3888 = inttoptr i64 %t3884 to ptr
  store i32 %c3887, ptr %gmp3888, align 1, !alias.scope !4, !noalias !3
  %r3889.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3889 = load i64, ptr %r3889.p, align 8, !alias.scope !3, !noalias !4
  %c3890 = trunc i64 %r3889 to i32
  %gmp3891 = inttoptr i64 %t3885 to ptr
  store i32 %c3890, ptr %gmp3891, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2ad4 word 0xb9003669
  %r3892.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3892 = load i64, ptr %r3892.p, align 8, !alias.scope !3, !noalias !4
  %t3893 = add i64 %r3892, 52
  %r3894.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3894 = load i64, ptr %r3894.p, align 8, !alias.scope !3, !noalias !4
  %c3895 = trunc i64 %r3894 to i32
  %gmp3896 = inttoptr i64 %t3893 to ptr
  store i32 %c3895, ptr %gmp3896, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2ad8 word 0xbd003a60
  %r3897.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3897 = load i64, ptr %r3897.p, align 8, !alias.scope !3, !noalias !4
  %t3898 = add i64 %r3897, 56
  %r3899.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3899 = load i128, ptr %r3899.p, align 16, !alias.scope !3, !noalias !4
  %c3900 = trunc i128 %r3899 to i32
  %gmp3901 = inttoptr i64 %t3898 to ptr
  store i32 %c3900, ptr %gmp3901, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2adc word 0x2f00e400
  %wp3902 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp3902, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ae0 word 0x17fffefa
  br label %L_8001e26c8
L_8001e2ae4:
  ; @pc 0x8001e2ae4 word 0x9100e018
  %r3903.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3903 = load i64, ptr %r3903.p, align 8, !alias.scope !3, !noalias !4
  %t3904 = add i64 %r3903, 56
  %wp3905 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3904, ptr %wp3905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ae8 word 0xaa0003f7
  %r3906.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3906 = load i64, ptr %r3906.p, align 8, !alias.scope !3, !noalias !4
  %t3907 = or i64 0, %r3906
  %wp3908 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3907, ptr %wp3908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2aec word 0xaa1803e0
  %r3909.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3909 = load i64, ptr %r3909.p, align 8, !alias.scope !3, !noalias !4
  %t3910 = or i64 0, %r3909
  %wp3911 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3910, ptr %wp3911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2af0 word 0x94a7055c
  %wp3912 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715444, ptr %wp3912, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001e2af4 word 0xf90007f7
  %r3913.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3913 = load i64, ptr %r3913.p, align 8, !alias.scope !3, !noalias !4
  %t3914 = add i64 %r3913, 8
  %r3915.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3915 = load i64, ptr %r3915.p, align 8, !alias.scope !3, !noalias !4
  %gmp3916 = inttoptr i64 %t3914 to ptr
  store i64 %r3915, ptr %gmp3916, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2af8 word 0xf94016f7
  %r3917.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3917 = load i64, ptr %r3917.p, align 8, !alias.scope !3, !noalias !4
  %t3918 = add i64 %r3917, 40
  %gmp3919 = inttoptr i64 %t3918 to ptr
  %gml3920 = load i64, ptr %gmp3919, align 1, !alias.scope !4, !noalias !3
  %wp3921 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml3920, ptr %wp3921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2afc word 0xaa1803e0
  %r3922.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3922 = load i64, ptr %r3922.p, align 8, !alias.scope !3, !noalias !4
  %t3923 = or i64 0, %r3922
  %wp3924 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3923, ptr %wp3924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b00 word 0x94a7055c
  %wp3925 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715460, ptr %wp3925, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001e2b04 word 0x945a681f
  %wp3926 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715464, ptr %wp3926, align 8, !alias.scope !3, !noalias !4
  call void @f_80187cb80(ptr %c)
  ; @pc 0x8001e2b08 word 0xb4000f97
  %r3927.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3927 = load i64, ptr %r3927.p, align 8, !alias.scope !3, !noalias !4
  %cmp3928 = icmp eq i64 %r3927, 0
  br i1 %cmp3928, label %L_8001e2cf8, label %L_8001e2b0c_ft
L_8001e2b50:
  ; @pc 0x8001e2b50 word 0x51001d08
  %r4005.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4005 = load i64, ptr %r4005.p, align 8, !alias.scope !3, !noalias !4
  %c4006 = trunc i64 %r4005 to i32
  %t4007 = sub i32 %c4006, 7
  %c4008 = zext i32 %t4007 to i64
  %wp4009 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4008, ptr %wp4009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b54 word 0x7100111f
  %r4010.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4010 = load i64, ptr %r4010.p, align 8, !alias.scope !3, !noalias !4
  %c4011 = trunc i64 %r4010 to i32
  %t4012 = sub i32 %c4011, 4
  %fn4013 = icmp slt i32 %t4012, 0
  %fz4014 = icmp eq i32 %t4012, 0
  %fc4015 = icmp uge i32 %c4011, 4
  %fx14016 = xor i32 %c4011, 4
  %fx24017 = xor i32 %c4011, %t4012
  %fva4018 = and i32 %fx14016, %fx24017
  %fv4019 = icmp slt i32 %fva4018, 0
  %nz4020 = zext i1 %fn4013 to i64
  %zz4021 = zext i1 %fz4014 to i64
  %cz4022 = zext i1 %fc4015 to i64
  %vz4023 = zext i1 %fv4019 to i64
  %ns4024 = shl i64 %nz4020, 31
  %zs4025 = shl i64 %zz4021, 30
  %cs4026 = shl i64 %cz4022, 29
  %vs4027 = shl i64 %vz4023, 28
  %nzor4028 = or i64 %ns4024, %zs4025
  %cvor4029 = or i64 %cs4026, %vs4027
  %nzcv4030 = or i64 %nzor4028, %cvor4029
  %wp4031 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4030, ptr %wp4031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b58 word 0x54000603
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %fsh4034 = lshr i64 %r4032, 29
  %ftr4035 = trunc i64 %fsh4034 to i1
  %cond4033 = xor i1 %ftr4035, true
  br i1 %cond4033, label %L_8001e2c18, label %L_8001e2b5c
L_8001e2b5c:
  ; @pc 0x8001e2b5c word 0xf9401416
  %r4036.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4036 = load i64, ptr %r4036.p, align 8, !alias.scope !3, !noalias !4
  %t4037 = add i64 %r4036, 40
  %gmp4038 = inttoptr i64 %t4037 to ptr
  %gml4039 = load i64, ptr %gmp4038, align 1, !alias.scope !4, !noalias !3
  %wp4040 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4039, ptr %wp4040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b60 word 0xb40005d6
  %r4041.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4041 = load i64, ptr %r4041.p, align 8, !alias.scope !3, !noalias !4
  %cmp4042 = icmp eq i64 %r4041, 0
  br i1 %cmp4042, label %L_8001e2c18, label %L_8001e2b64_ft
L_8001e2bfc:
  ; @pc 0x8001e2bfc word 0xf9401129
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %t4343 = add i64 %r4342, 32
  %gmp4344 = inttoptr i64 %t4343 to ptr
  %gml4345 = load i64, ptr %gmp4344, align 1, !alias.scope !4, !noalias !3
  %wp4346 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4345, ptr %wp4346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c00 word 0x2a0a03eb
  %r4347.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4347 = load i64, ptr %r4347.p, align 8, !alias.scope !3, !noalias !4
  %c4348 = trunc i64 %r4347 to i32
  %t4349 = or i32 0, %c4348
  %c4350 = zext i32 %t4349 to i64
  %wp4351 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4350, ptr %wp4351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c04 word 0x6b0a011f
  %r4352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4352 = load i64, ptr %r4352.p, align 8, !alias.scope !3, !noalias !4
  %c4353 = trunc i64 %r4352 to i32
  %r4354.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4354 = load i64, ptr %r4354.p, align 8, !alias.scope !3, !noalias !4
  %c4355 = trunc i64 %r4354 to i32
  %t4356 = sub i32 %c4353, %c4355
  %fn4357 = icmp slt i32 %t4356, 0
  %fz4358 = icmp eq i32 %t4356, 0
  %fc4359 = icmp uge i32 %c4353, %c4355
  %fx14360 = xor i32 %c4353, %c4355
  %fx24361 = xor i32 %c4353, %t4356
  %fva4362 = and i32 %fx14360, %fx24361
  %fv4363 = icmp slt i32 %fva4362, 0
  %nz4364 = zext i1 %fn4357 to i64
  %zz4365 = zext i1 %fz4358 to i64
  %cz4366 = zext i1 %fc4359 to i64
  %vz4367 = zext i1 %fv4363 to i64
  %ns4368 = shl i64 %nz4364, 31
  %zs4369 = shl i64 %zz4365, 30
  %cs4370 = shl i64 %cz4366, 29
  %vs4371 = shl i64 %vz4367, 28
  %nzor4372 = or i64 %ns4368, %zs4369
  %cvor4373 = or i64 %cs4370, %vs4371
  %nzcv4374 = or i64 %nzor4372, %cvor4373
  %wp4375 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4374, ptr %wp4375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c08 word 0x9a9f8168
  %r4376.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4376 = load i64, ptr %r4376.p, align 8, !alias.scope !3, !noalias !4
  %r4377.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4377 = load i64, ptr %r4377.p, align 8, !alias.scope !3, !noalias !4
  %fsh4379 = lshr i64 %r4377, 29
  %ftr4380 = trunc i64 %fsh4379 to i1
  %fsh4381 = lshr i64 %r4377, 30
  %ftr4382 = trunc i64 %fsh4381 to i1
  %fnz4383 = xor i1 %ftr4382, true
  %cond4378 = and i1 %ftr4380, %fnz4383
  %sel4384 = select i1 %cond4378, i64 %r4376, i64 0
  %wp4385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4384, ptr %wp4385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c0c word 0xb4000109
  %r4386.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4386 = load i64, ptr %r4386.p, align 8, !alias.scope !3, !noalias !4
  %cmp4387 = icmp eq i64 %r4386, 0
  br i1 %cmp4387, label %L_8001e2c2c, label %L_8001e2c10_ft
L_8001e2c18:
  ; @pc 0x8001e2c18 word 0xf94002a8
  %r4393.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4393 = load i64, ptr %r4393.p, align 8, !alias.scope !3, !noalias !4
  %gmp4394 = inttoptr i64 %r4393 to ptr
  %gml4395 = load i64, ptr %gmp4394, align 1, !alias.scope !4, !noalias !3
  %wp4396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4395, ptr %wp4396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c1c word 0xaa1503e0
  %r4397.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4397 = load i64, ptr %r4397.p, align 8, !alias.scope !3, !noalias !4
  %t4398 = or i64 0, %r4397
  %wp4399 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4398, ptr %wp4399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c20 word 0xf9400d08
  %r4400.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4400 = load i64, ptr %r4400.p, align 8, !alias.scope !3, !noalias !4
  %t4401 = add i64 %r4400, 24
  %gmp4402 = inttoptr i64 %t4401 to ptr
  %gml4403 = load i64, ptr %gmp4402, align 1, !alias.scope !4, !noalias !3
  %wp4404 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4403, ptr %wp4404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c24 word 0xd63f0100
  %r4405.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4405 = load i64, ptr %r4405.p, align 8, !alias.scope !3, !noalias !4
  %fp4406 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4405, ptr %fp4406, align 8, !alias.scope !3, !noalias !4
  %wp4407 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715752, ptr %wp4407, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2c28 word 0x17fffecb
  br label %L_8001e2754
L_8001e2c2c:
  ; @pc 0x8001e2c2c word 0xf94002c8
  %r4408.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4408 = load i64, ptr %r4408.p, align 8, !alias.scope !3, !noalias !4
  %gmp4409 = inttoptr i64 %r4408 to ptr
  %gml4410 = load i64, ptr %gmp4409, align 1, !alias.scope !4, !noalias !3
  %wp4411 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4410, ptr %wp4411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c30 word 0x9001bca9
  %wp4412 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp4412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c34 word 0xf9400d08
  %r4413.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4413 = load i64, ptr %r4413.p, align 8, !alias.scope !3, !noalias !4
  %t4414 = add i64 %r4413, 24
  %gmp4415 = inttoptr i64 %t4414 to ptr
  %gml4416 = load i64, ptr %gmp4415, align 1, !alias.scope !4, !noalias !3
  %wp4417 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4416, ptr %wp4417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c38 word 0xf9410929
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %t4419 = add i64 %r4418, 528
  %gmp4420 = inttoptr i64 %t4419 to ptr
  %gml4421 = load i64, ptr %gmp4420, align 1, !alias.scope !4, !noalias !3
  %wp4422 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4421, ptr %wp4422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c3c word 0xeb09011f
  %r4423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4423 = load i64, ptr %r4423.p, align 8, !alias.scope !3, !noalias !4
  %r4424.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4424 = load i64, ptr %r4424.p, align 8, !alias.scope !3, !noalias !4
  %t4425 = sub i64 %r4423, %r4424
  %fn4426 = icmp slt i64 %t4425, 0
  %fz4427 = icmp eq i64 %t4425, 0
  %fc4428 = icmp uge i64 %r4423, %r4424
  %fx14429 = xor i64 %r4423, %r4424
  %fx24430 = xor i64 %r4423, %t4425
  %fva4431 = and i64 %fx14429, %fx24430
  %fv4432 = icmp slt i64 %fva4431, 0
  %nz4433 = zext i1 %fn4426 to i64
  %zz4434 = zext i1 %fz4427 to i64
  %cz4435 = zext i1 %fc4428 to i64
  %vz4436 = zext i1 %fv4432 to i64
  %ns4437 = shl i64 %nz4433, 31
  %zs4438 = shl i64 %zz4434, 30
  %cs4439 = shl i64 %cz4435, 29
  %vs4440 = shl i64 %vz4436, 28
  %nzor4441 = or i64 %ns4437, %zs4438
  %cvor4442 = or i64 %cs4439, %vs4440
  %nzcv4443 = or i64 %nzor4441, %cvor4442
  %wp4444 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4443, ptr %wp4444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c40 word 0x54000b81
  %r4445.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4445 = load i64, ptr %r4445.p, align 8, !alias.scope !3, !noalias !4
  %fsh4447 = lshr i64 %r4445, 30
  %ftr4448 = trunc i64 %fsh4447 to i1
  %cond4446 = xor i1 %ftr4448, true
  br i1 %cond4446, label %L_8001e2db0, label %L_8001e2c44_ft
L_8001e2c4c:
  ; @pc 0x8001e2c4c word 0xf8448c08
  %r4454.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4454 = load i64, ptr %r4454.p, align 8, !alias.scope !3, !noalias !4
  %t4455 = add i64 %r4454, 72
  %gmp4456 = inttoptr i64 %t4455 to ptr
  %gml4457 = load i64, ptr %gmp4456, align 1, !alias.scope !4, !noalias !3
  %wp4458 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4455, ptr %wp4458, align 8, !alias.scope !3, !noalias !4
  %wp4459 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4457, ptr %wp4459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c50 word 0x52800409
  %c4460 = zext i32 32 to i64
  %wp4461 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4460, ptr %wp4461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c54 word 0x385d400a
  %r4462.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4462 = load i64, ptr %r4462.p, align 8, !alias.scope !3, !noalias !4
  %t4463 = add i64 %r4462, -44
  %gmp4464 = inttoptr i64 %t4463 to ptr
  %gml4465 = load i8, ptr %gmp4464, align 1, !alias.scope !4, !noalias !3
  %c4466 = zext i8 %gml4465 to i64
  %wp4467 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4466, ptr %wp4467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c58 word 0x1100074b
  %r4468.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4468 = load i64, ptr %r4468.p, align 8, !alias.scope !3, !noalias !4
  %c4469 = trunc i64 %r4468 to i32
  %t4470 = add i32 %c4469, 1
  %c4471 = zext i32 %t4470 to i64
  %wp4472 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4471, ptr %wp4472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c5c word 0xaa1f03f6
  %t4473 = or i64 0, 0
  %wp4474 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4473, ptr %wp4474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c60 word 0x8b000108
  %r4475.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4475 = load i64, ptr %r4475.p, align 8, !alias.scope !3, !noalias !4
  %r4476.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4476 = load i64, ptr %r4476.p, align 8, !alias.scope !3, !noalias !4
  %t4477 = add i64 %r4475, %r4476
  %wp4478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4477, ptr %wp4478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c64 word 0x4b0a0129
  %r4479.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4479 = load i64, ptr %r4479.p, align 8, !alias.scope !3, !noalias !4
  %c4480 = trunc i64 %r4479 to i32
  %r4481.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4481 = load i64, ptr %r4481.p, align 8, !alias.scope !3, !noalias !4
  %c4482 = trunc i64 %r4481 to i32
  %t4483 = sub i32 %c4480, %c4482
  %c4484 = zext i32 %t4483 to i64
  %wp4485 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4484, ptr %wp4485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c68 word 0x1aca216a
  %r4486.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4486 = load i64, ptr %r4486.p, align 8, !alias.scope !3, !noalias !4
  %c4487 = trunc i64 %r4486 to i32
  %r4488.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4488 = load i64, ptr %r4488.p, align 8, !alias.scope !3, !noalias !4
  %c4489 = trunc i64 %r4488 to i32
  %t4490 = and i32 %c4489, 31
  %t4491 = shl i32 %c4487, %t4490
  %c4492 = zext i32 %t4491 to i64
  %wp4493 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4492, ptr %wp4493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c6c word 0x9ac92749
  %r4494.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4494 = load i64, ptr %r4494.p, align 8, !alias.scope !3, !noalias !4
  %r4495.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4495 = load i64, ptr %r4495.p, align 8, !alias.scope !3, !noalias !4
  %t4496 = and i64 %r4495, 63
  %t4497 = lshr i64 %r4494, %t4496
  %wp4498 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4497, ptr %wp4498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c70 word 0x5100054a
  %r4499.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4499 = load i64, ptr %r4499.p, align 8, !alias.scope !3, !noalias !4
  %c4500 = trunc i64 %r4499 to i32
  %t4501 = sub i32 %c4500, 1
  %c4502 = zext i32 %t4501 to i64
  %wp4503 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4502, ptr %wp4503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c74 word 0x92403d29
  %r4504.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4504 = load i64, ptr %r4504.p, align 8, !alias.scope !3, !noalias !4
  %t4505 = and i64 %r4504, 65535
  %wp4506 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4505, ptr %wp4506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c78 word 0x8b091908
  %r4507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4507 = load i64, ptr %r4507.p, align 8, !alias.scope !3, !noalias !4
  %r4508.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4508 = load i64, ptr %r4508.p, align 8, !alias.scope !3, !noalias !4
  %t4509 = shl i64 %r4508, 6
  %t4510 = add i64 %r4507, %t4509
  %wp4511 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4510, ptr %wp4511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c7c word 0xf8430d09
  %r4512.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4512 = load i64, ptr %r4512.p, align 8, !alias.scope !3, !noalias !4
  %t4513 = add i64 %r4512, 48
  %gmp4514 = inttoptr i64 %t4513 to ptr
  %gml4515 = load i64, ptr %gmp4514, align 1, !alias.scope !4, !noalias !3
  %wp4516 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4513, ptr %wp4516, align 8, !alias.scope !3, !noalias !4
  %wp4517 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4515, ptr %wp4517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c80 word 0xb900a3ea
  %r4518.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4518 = load i64, ptr %r4518.p, align 8, !alias.scope !3, !noalias !4
  %t4519 = add i64 %r4518, 160
  %r4520.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4520 = load i64, ptr %r4520.p, align 8, !alias.scope !3, !noalias !4
  %c4521 = trunc i64 %r4520 to i32
  %gmp4522 = inttoptr i64 %t4519 to ptr
  store i32 %c4521, ptr %gmp4522, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2c84 word 0xb4ffc4c9
  %r4523.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4523 = load i64, ptr %r4523.p, align 8, !alias.scope !3, !noalias !4
  %cmp4524 = icmp eq i64 %r4523, 0
  br i1 %cmp4524, label %L_8001e251c, label %L_8001e2c88_ft
L_8001e2c98:
  ; @pc 0x8001e2c98 word 0xaa0003f6
  %r4535.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4535 = load i64, ptr %r4535.p, align 8, !alias.scope !3, !noalias !4
  %t4536 = or i64 0, %r4535
  %wp4537 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4536, ptr %wp4537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c9c word 0x17fffe20
  br label %L_8001e251c
L_8001e2ca0:
  ; @pc 0x8001e2ca0 word 0xaa1f03f6
  %t4538 = or i64 0, 0
  %wp4539 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4538, ptr %wp4539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ca4 word 0x17fffe18
  br label %L_8001e2504
L_8001e2ca8:
  ; @pc 0x8001e2ca8 word 0xf9400008
  %r4540.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4540 = load i64, ptr %r4540.p, align 8, !alias.scope !3, !noalias !4
  %gmp4541 = inttoptr i64 %r4540 to ptr
  %gml4542 = load i64, ptr %gmp4541, align 1, !alias.scope !4, !noalias !3
  %wp4543 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4542, ptr %wp4543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cac word 0xf9400508
  %r4544.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4544 = load i64, ptr %r4544.p, align 8, !alias.scope !3, !noalias !4
  %t4545 = add i64 %r4544, 8
  %gmp4546 = inttoptr i64 %t4545 to ptr
  %gml4547 = load i64, ptr %gmp4546, align 1, !alias.scope !4, !noalias !3
  %wp4548 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4547, ptr %wp4548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cb0 word 0xd63f0100
  %r4549.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4549 = load i64, ptr %r4549.p, align 8, !alias.scope !3, !noalias !4
  %fp4550 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4549, ptr %fp4550, align 8, !alias.scope !3, !noalias !4
  %wp4551 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715892, ptr %wp4551, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2cb4 word 0x17fffe1a
  br label %L_8001e251c
L_8001e2cb8:
  ; @pc 0x8001e2cb8 word 0xaa1f03f6
  %t4552 = or i64 0, 0
  %wp4553 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4552, ptr %wp4553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cbc word 0x17fffea7
  br label %L_8001e2758
L_8001e2cc0:
  ; @pc 0x8001e2cc0 word 0xd001bba0
  %wp4554 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419867648, ptr %wp4554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cc4 word 0xf9443c00
  %r4555.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4555 = load i64, ptr %r4555.p, align 8, !alias.scope !3, !noalias !4
  %t4556 = add i64 %r4555, 2168
  %gmp4557 = inttoptr i64 %t4556 to ptr
  %gml4558 = load i64, ptr %gmp4557, align 1, !alias.scope !4, !noalias !3
  %wp4559 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4558, ptr %wp4559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cc8 word 0x94a70336
  %wp4560 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715916, ptr %wp4560, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001e2ccc word 0x34ffd1a0
  %r4561.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4561 = load i64, ptr %r4561.p, align 8, !alias.scope !3, !noalias !4
  %c4562 = trunc i64 %r4561 to i32
  %cmp4563 = icmp eq i32 %c4562, 0
  br i1 %cmp4563, label %L_8001e2700, label %L_8001e2cd0_ft
L_8001e2cf8:
  ; @pc 0x8001e2cf8 word 0x12800008
  %c4589 = zext i32 -1 to i64
  %wp4590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4589, ptr %wp4590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cfc word 0xaa1803e0
  %r4591.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4591 = load i64, ptr %r4591.p, align 8, !alias.scope !3, !noalias !4
  %t4592 = or i64 0, %r4591
  %wp4593 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4592, ptr %wp4593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d00 word 0xb900a3e8
  %r4594.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4594 = load i64, ptr %r4594.p, align 8, !alias.scope !3, !noalias !4
  %t4595 = add i64 %r4594, 160
  %r4596.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4596 = load i64, ptr %r4596.p, align 8, !alias.scope !3, !noalias !4
  %c4597 = trunc i64 %r4596 to i32
  %gmp4598 = inttoptr i64 %t4595 to ptr
  store i32 %c4597, ptr %gmp4598, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2d04 word 0xb90013e8
  %r4599.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4599 = load i64, ptr %r4599.p, align 8, !alias.scope !3, !noalias !4
  %t4600 = add i64 %r4599, 16
  %r4601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4601 = load i64, ptr %r4601.p, align 8, !alias.scope !3, !noalias !4
  %c4602 = trunc i64 %r4601 to i32
  %gmp4603 = inttoptr i64 %t4600 to ptr
  store i32 %c4602, ptr %gmp4603, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2d08 word 0x94a704d6
  %wp4604 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715980, ptr %wp4604, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001e2d0c word 0xf94007f6
  %r4605.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4605 = load i64, ptr %r4605.p, align 8, !alias.scope !3, !noalias !4
  %t4606 = add i64 %r4605, 8
  %gmp4607 = inttoptr i64 %t4606 to ptr
  %gml4608 = load i64, ptr %gmp4607, align 1, !alias.scope !4, !noalias !3
  %wp4609 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4608, ptr %wp4609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d10 word 0xaa1803e0
  %r4610.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4610 = load i64, ptr %r4610.p, align 8, !alias.scope !3, !noalias !4
  %t4611 = or i64 0, %r4610
  %wp4612 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4611, ptr %wp4612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d14 word 0xf94016d7
  %r4613.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4613 = load i64, ptr %r4613.p, align 8, !alias.scope !3, !noalias !4
  %t4614 = add i64 %r4613, 40
  %gmp4615 = inttoptr i64 %t4614 to ptr
  %gml4616 = load i64, ptr %gmp4615, align 1, !alias.scope !4, !noalias !3
  %wp4617 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4616, ptr %wp4617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d18 word 0x94a704d6
  %wp4618 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715996, ptr %wp4618, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001e2d1c word 0xf94036c8
  %r4619.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4619 = load i64, ptr %r4619.p, align 8, !alias.scope !3, !noalias !4
  %t4620 = add i64 %r4619, 104
  %gmp4621 = inttoptr i64 %t4620 to ptr
  %gml4622 = load i64, ptr %gmp4621, align 1, !alias.scope !4, !noalias !3
  %wp4623 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4622, ptr %wp4623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d20 word 0x910283e0
  %r4624.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4624 = load i64, ptr %r4624.p, align 8, !alias.scope !3, !noalias !4
  %t4625 = add i64 %r4624, 160
  %wp4626 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4625, ptr %wp4626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d24 word 0x910043e1
  %r4627.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4627 = load i64, ptr %r4627.p, align 8, !alias.scope !3, !noalias !4
  %t4628 = add i64 %r4627, 16
  %wp4629 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4628, ptr %wp4629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d28 word 0xaa1703e2
  %r4630.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4630 = load i64, ptr %r4630.p, align 8, !alias.scope !3, !noalias !4
  %t4631 = or i64 0, %r4630
  %wp4632 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4631, ptr %wp4632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d2c word 0xaa1503e3
  %r4633.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4633 = load i64, ptr %r4633.p, align 8, !alias.scope !3, !noalias !4
  %t4634 = or i64 0, %r4633
  %wp4635 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4634, ptr %wp4635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d30 word 0x53051504
  %r4636.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4636 = load i64, ptr %r4636.p, align 8, !alias.scope !3, !noalias !4
  %c4637 = trunc i64 %r4636 to i32
  %ror4638 = call i32 @llvm.fshr.i32(i32 %c4637, i32 %c4637, i32 5)
  %t4639 = and i32 %ror4638, 1
  %c4640 = zext i32 %t4639 to i64
  %wp4641 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4640, ptr %wp4641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d34 word 0x949ebeb0
  %wp4642 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361716024, ptr %wp4642, align 8, !alias.scope !3, !noalias !4
  call void @f_8029927f4(ptr %c)
  ; @pc 0x8001e2d38 word 0xb940a3e8
  %r4643.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4643 = load i64, ptr %r4643.p, align 8, !alias.scope !3, !noalias !4
  %t4644 = add i64 %r4643, 160
  %gmp4645 = inttoptr i64 %t4644 to ptr
  %gml4646 = load i32, ptr %gmp4645, align 1, !alias.scope !4, !noalias !3
  %c4647 = zext i32 %gml4646 to i64
  %wp4648 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4647, ptr %wp4648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d3c word 0x9ada2508
  %r4649.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4649 = load i64, ptr %r4649.p, align 8, !alias.scope !3, !noalias !4
  %r4650.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4650 = load i64, ptr %r4650.p, align 8, !alias.scope !3, !noalias !4
  %t4651 = and i64 %r4650, 63
  %t4652 = lshr i64 %r4649, %t4651
  %wp4653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4652, ptr %wp4653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d40 word 0x360001a8
  %r4654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4654 = load i64, ptr %r4654.p, align 8, !alias.scope !3, !noalias !4
  %t4655 = and i64 %r4654, 1
  %cmp4656 = icmp eq i64 %t4655, 0
  br i1 %cmp4656, label %L_8001e2d74, label %L_8001e2d44_ft
L_8001e2d64:
  ; @pc 0x8001e2d64 word 0xf94062a0
  %r4683.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4683 = load i64, ptr %r4683.p, align 8, !alias.scope !3, !noalias !4
  %t4684 = add i64 %r4683, 192
  %gmp4685 = inttoptr i64 %t4684 to ptr
  %gml4686 = load i64, ptr %gmp4685, align 1, !alias.scope !4, !noalias !3
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d68 word 0x17fffda6
  br label %L_8001e2400
L_8001e2d6c:
  ; @pc 0x8001e2d6c word 0xf9405ea0
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %t4689 = add i64 %r4688, 184
  %gmp4690 = inttoptr i64 %t4689 to ptr
  %gml4691 = load i64, ptr %gmp4690, align 1, !alias.scope !4, !noalias !3
  %wp4692 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4691, ptr %wp4692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d70 word 0x17fffda4
  br label %L_8001e2400
L_8001e2d74:
  ; @pc 0x8001e2d74 word 0xb001bb57
  %wp4693 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 34419814400, ptr %wp4693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d78 word 0xd001bb58
  %wp4694 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419818496, ptr %wp4694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d7c word 0xf94562f7
  %r4695.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4695 = load i64, ptr %r4695.p, align 8, !alias.scope !3, !noalias !4
  %t4696 = add i64 %r4695, 2752
  %gmp4697 = inttoptr i64 %t4696 to ptr
  %gml4698 = load i64, ptr %gmp4697, align 1, !alias.scope !4, !noalias !3
  %wp4699 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4698, ptr %wp4699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d80 word 0xf9477f18
  %r4700.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4700 = load i64, ptr %r4700.p, align 8, !alias.scope !3, !noalias !4
  %t4701 = add i64 %r4700, 3832
  %gmp4702 = inttoptr i64 %t4701 to ptr
  %gml4703 = load i64, ptr %gmp4702, align 1, !alias.scope !4, !noalias !3
  %wp4704 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml4703, ptr %wp4704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d84 word 0x17fffd88
  br label %L_8001e23a4
L_8001e2d88:
  ; @pc 0x8001e2d88 word 0xf275111f
  %r4705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4705 = load i64, ptr %r4705.p, align 8, !alias.scope !3, !noalias !4
  %t4706 = and i64 %r4705, 63488
  %fn4707 = icmp slt i64 %t4706, 0
  %fz4708 = icmp eq i64 %t4706, 0
  %nz4709 = zext i1 %fn4707 to i64
  %zz4710 = zext i1 %fz4708 to i64
  %ns4711 = shl i64 %nz4709, 31
  %zs4712 = shl i64 %zz4710, 30
  %nzcv4713 = or i64 %ns4711, %zs4712
  %wp4714 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4713, ptr %wp4714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d8c word 0xaa0803fa
  %r4715.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4715 = load i64, ptr %r4715.p, align 8, !alias.scope !3, !noalias !4
  %t4716 = or i64 0, %r4715
  %wp4717 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t4716, ptr %wp4717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d90 word 0x54ffc1e0
  %r4718.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4718 = load i64, ptr %r4718.p, align 8, !alias.scope !3, !noalias !4
  %fsh4720 = lshr i64 %r4718, 30
  %cond4719 = trunc i64 %fsh4720 to i1
  br i1 %cond4719, label %L_8001e25cc, label %L_8001e2d94
L_8001e2d94:
  ; @pc 0x8001e2d94 word 0xc85f7f28
  %r4721.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4721 = load i64, ptr %r4721.p, align 8, !alias.scope !3, !noalias !4
  %atp4722 = inttoptr i64 %r4721 to ptr
  %ldx4723 = load atomic i64, ptr %atp4722 acquire, align 8, !alias.scope !4, !noalias !3
  %fp4724 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r4721, ptr %fp4724, align 8, !alias.scope !3, !noalias !4
  %fp4725 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx4723, ptr %fp4725, align 8, !alias.scope !3, !noalias !4
  %wp4726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %ldx4723, ptr %wp4726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d98 word 0xeb1a011f
  %r4727.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4727 = load i64, ptr %r4727.p, align 8, !alias.scope !3, !noalias !4
  %r4728.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4728 = load i64, ptr %r4728.p, align 8, !alias.scope !3, !noalias !4
  %t4729 = sub i64 %r4727, %r4728
  %fn4730 = icmp slt i64 %t4729, 0
  %fz4731 = icmp eq i64 %t4729, 0
  %fc4732 = icmp uge i64 %r4727, %r4728
  %fx14733 = xor i64 %r4727, %r4728
  %fx24734 = xor i64 %r4727, %t4729
  %fva4735 = and i64 %fx14733, %fx24734
  %fv4736 = icmp slt i64 %fva4735, 0
  %nz4737 = zext i1 %fn4730 to i64
  %zz4738 = zext i1 %fz4731 to i64
  %cz4739 = zext i1 %fc4732 to i64
  %vz4740 = zext i1 %fv4736 to i64
  %ns4741 = shl i64 %nz4737, 31
  %zs4742 = shl i64 %zz4738, 30
  %cs4743 = shl i64 %cz4739, 29
  %vs4744 = shl i64 %vz4740, 28
  %nzor4745 = or i64 %ns4741, %zs4742
  %cvor4746 = or i64 %cs4743, %vs4744
  %nzcv4747 = or i64 %nzor4745, %cvor4746
  %wp4748 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4747, ptr %wp4748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d9c word 0x54ffff61
  %r4749.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4749 = load i64, ptr %r4749.p, align 8, !alias.scope !3, !noalias !4
  %fsh4751 = lshr i64 %r4749, 30
  %ftr4752 = trunc i64 %fsh4751 to i1
  %cond4750 = xor i1 %ftr4752, true
  br i1 %cond4750, label %L_8001e2d88, label %L_8001e2da0_ft
L_8001e2db0:
  ; @pc 0x8001e2db0 word 0xaa1603e0
  %r4775.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4775 = load i64, ptr %r4775.p, align 8, !alias.scope !3, !noalias !4
  %t4776 = or i64 0, %r4775
  %wp4777 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4776, ptr %wp4777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2db4 word 0xd63f0100
  %r4778.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4778 = load i64, ptr %r4778.p, align 8, !alias.scope !3, !noalias !4
  %fp4779 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4778, ptr %fp4779, align 8, !alias.scope !3, !noalias !4
  %wp4780 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361716152, ptr %wp4780, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2db8 word 0x17ffffb8
  br label %L_8001e2c98
L_8001e2dbc:
  ; @pc 0x8001e2dbc word 0x9270bd09
  %r4781.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4781 = load i64, ptr %r4781.p, align 8, !alias.scope !3, !noalias !4
  %t4782 = and i64 %r4781, -65536
  %wp4783 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4782, ptr %wp4783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2dc0 word 0xaa0803fc
  %r4784.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4784 = load i64, ptr %r4784.p, align 8, !alias.scope !3, !noalias !4
  %t4785 = or i64 0, %r4784
  %wp4786 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t4785, ptr %wp4786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2dc4 word 0xf140413f
  %r4787.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4787 = load i64, ptr %r4787.p, align 8, !alias.scope !3, !noalias !4
  %t4788 = sub i64 %r4787, 65536
  %fn4789 = icmp slt i64 %t4788, 0
  %fz4790 = icmp eq i64 %t4788, 0
  %fc4791 = icmp uge i64 %r4787, 65536
  %fx14792 = xor i64 %r4787, 65536
  %fx24793 = xor i64 %r4787, %t4788
  %fva4794 = and i64 %fx14792, %fx24793
  %fv4795 = icmp slt i64 %fva4794, 0
  %nz4796 = zext i1 %fn4789 to i64
  %zz4797 = zext i1 %fz4790 to i64
  %cz4798 = zext i1 %fc4791 to i64
  %vz4799 = zext i1 %fv4795 to i64
  %ns4800 = shl i64 %nz4796, 31
  %zs4801 = shl i64 %zz4797, 30
  %cs4802 = shl i64 %cz4798, 29
  %vs4803 = shl i64 %vz4799, 28
  %nzor4804 = or i64 %ns4800, %zs4801
  %cvor4805 = or i64 %cs4802, %vs4803
  %nzcv4806 = or i64 %nzor4804, %cvor4805
  %wp4807 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4806, ptr %wp4807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2dc8 word 0x54ff9261
  %r4808.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4808 = load i64, ptr %r4808.p, align 8, !alias.scope !3, !noalias !4
  %fsh4810 = lshr i64 %r4808, 30
  %ftr4811 = trunc i64 %fsh4810 to i1
  %cond4809 = xor i1 %ftr4811, true
  br i1 %cond4809, label %L_8001e2014, label %L_8001e2dcc
L_8001e2dcc:
  ; @pc 0x8001e2dcc word 0xc85f7f28
  %r4812.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4812 = load i64, ptr %r4812.p, align 8, !alias.scope !3, !noalias !4
  %atp4813 = inttoptr i64 %r4812 to ptr
  %ldx4814 = load atomic i64, ptr %atp4813 acquire, align 8, !alias.scope !4, !noalias !3
  %fp4815 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r4812, ptr %fp4815, align 8, !alias.scope !3, !noalias !4
  %fp4816 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx4814, ptr %fp4816, align 8, !alias.scope !3, !noalias !4
  %wp4817 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %ldx4814, ptr %wp4817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2dd0 word 0xeb1c011f
  %r4818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4818 = load i64, ptr %r4818.p, align 8, !alias.scope !3, !noalias !4
  %r4819.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4819 = load i64, ptr %r4819.p, align 8, !alias.scope !3, !noalias !4
  %t4820 = sub i64 %r4818, %r4819
  %fn4821 = icmp slt i64 %t4820, 0
  %fz4822 = icmp eq i64 %t4820, 0
  %fc4823 = icmp uge i64 %r4818, %r4819
  %fx14824 = xor i64 %r4818, %r4819
  %fx24825 = xor i64 %r4818, %t4820
  %fva4826 = and i64 %fx14824, %fx24825
  %fv4827 = icmp slt i64 %fva4826, 0
  %nz4828 = zext i1 %fn4821 to i64
  %zz4829 = zext i1 %fz4822 to i64
  %cz4830 = zext i1 %fc4823 to i64
  %vz4831 = zext i1 %fv4827 to i64
  %ns4832 = shl i64 %nz4828, 31
  %zs4833 = shl i64 %zz4829, 30
  %cs4834 = shl i64 %cz4830, 29
  %vs4835 = shl i64 %vz4831, 28
  %nzor4836 = or i64 %ns4832, %zs4833
  %cvor4837 = or i64 %cs4834, %vs4835
  %nzcv4838 = or i64 %nzor4836, %cvor4837
  %wp4839 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4838, ptr %wp4839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2dd4 word 0x54ffff41
  %r4840.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4840 = load i64, ptr %r4840.p, align 8, !alias.scope !3, !noalias !4
  %fsh4842 = lshr i64 %r4840, 30
  %ftr4843 = trunc i64 %fsh4842 to i1
  %cond4841 = xor i1 %ftr4843, true
  br i1 %cond4841, label %L_8001e2dbc, label %L_8001e2dd8_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361712308, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001e1eb4
L_8001e1ebc_ft:
  ; @pc 0x8001e1ebc word 0xa9ba7bfd
  %r14.p = getelementptr inbounds i8, ptr %c, i64 256
  %r14 = load i64, ptr %r14.p, align 8, !alias.scope !3, !noalias !4
  %t15 = add i64 %r14, -96
  %t16 = add i64 %t15, 8
  %r17.p = getelementptr inbounds i8, ptr %c, i64 232
  %r17 = load i64, ptr %r17.p, align 8, !alias.scope !3, !noalias !4
  %gmp18 = inttoptr i64 %t15 to ptr
  store i64 %r17, ptr %gmp18, align 1, !alias.scope !4, !noalias !3
  %r19.p = getelementptr inbounds i8, ptr %c, i64 240
  %r19 = load i64, ptr %r19.p, align 8, !alias.scope !3, !noalias !4
  %gmp20 = inttoptr i64 %t16 to ptr
  store i64 %r19, ptr %gmp20, align 1, !alias.scope !4, !noalias !3
  %wp21 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t15, ptr %wp21, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ec0 word 0xa9016ffc
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 16
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 224
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 216
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1ec4 word 0x910003fd
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 0
  %wp31 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t30, ptr %wp31, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ec8 word 0xa90267fa
  %r32.p = getelementptr inbounds i8, ptr %c, i64 256
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %t33 = add i64 %r32, 32
  %t34 = add i64 %t33, 8
  %r35.p = getelementptr inbounds i8, ptr %c, i64 208
  %r35 = load i64, ptr %r35.p, align 8, !alias.scope !3, !noalias !4
  %gmp36 = inttoptr i64 %t33 to ptr
  store i64 %r35, ptr %gmp36, align 1, !alias.scope !4, !noalias !3
  %r37.p = getelementptr inbounds i8, ptr %c, i64 200
  %r37 = load i64, ptr %r37.p, align 8, !alias.scope !3, !noalias !4
  %gmp38 = inttoptr i64 %t34 to ptr
  store i64 %r37, ptr %gmp38, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1ecc word 0xa9035ff8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 256
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %t40 = add i64 %r39, 48
  %t41 = add i64 %t40, 8
  %r42.p = getelementptr inbounds i8, ptr %c, i64 192
  %r42 = load i64, ptr %r42.p, align 8, !alias.scope !3, !noalias !4
  %gmp43 = inttoptr i64 %t40 to ptr
  store i64 %r42, ptr %gmp43, align 1, !alias.scope !4, !noalias !3
  %r44.p = getelementptr inbounds i8, ptr %c, i64 184
  %r44 = load i64, ptr %r44.p, align 8, !alias.scope !3, !noalias !4
  %gmp45 = inttoptr i64 %t41 to ptr
  store i64 %r44, ptr %gmp45, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1ed0 word 0xa90457f6
  %r46.p = getelementptr inbounds i8, ptr %c, i64 256
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %t47 = add i64 %r46, 64
  %t48 = add i64 %t47, 8
  %r49.p = getelementptr inbounds i8, ptr %c, i64 176
  %r49 = load i64, ptr %r49.p, align 8, !alias.scope !3, !noalias !4
  %gmp50 = inttoptr i64 %t47 to ptr
  store i64 %r49, ptr %gmp50, align 1, !alias.scope !4, !noalias !3
  %r51.p = getelementptr inbounds i8, ptr %c, i64 168
  %r51 = load i64, ptr %r51.p, align 8, !alias.scope !3, !noalias !4
  %gmp52 = inttoptr i64 %t48 to ptr
  store i64 %r51, ptr %gmp52, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1ed4 word 0xa9054ff4
  %r53.p = getelementptr inbounds i8, ptr %c, i64 256
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = add i64 %r53, 80
  %t55 = add i64 %t54, 8
  %r56.p = getelementptr inbounds i8, ptr %c, i64 160
  %r56 = load i64, ptr %r56.p, align 8, !alias.scope !3, !noalias !4
  %gmp57 = inttoptr i64 %t54 to ptr
  store i64 %r56, ptr %gmp57, align 1, !alias.scope !4, !noalias !3
  %r58.p = getelementptr inbounds i8, ptr %c, i64 152
  %r58 = load i64, ptr %r58.p, align 8, !alias.scope !3, !noalias !4
  %gmp59 = inttoptr i64 %t55 to ptr
  store i64 %r58, ptr %gmp59, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1ed8 word 0xd12a43ff
  %r60.p = getelementptr inbounds i8, ptr %c, i64 256
  %r60 = load i64, ptr %r60.p, align 8, !alias.scope !3, !noalias !4
  %t61 = sub i64 %r60, 2704
  %wp62 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t61, ptr %wp62, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1edc word 0xf9400009
  %r63.p = getelementptr inbounds i8, ptr %c, i64 0
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %gmp64 = inttoptr i64 %r63 to ptr
  %gml65 = load i64, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  %wp66 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ee0 word 0xd001bb4b
  %wp67 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419814400, ptr %wp67, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ee4 word 0xaa0003f3
  %r68.p = getelementptr inbounds i8, ptr %c, i64 0
  %r68 = load i64, ptr %r68.p, align 8, !alias.scope !3, !noalias !4
  %t69 = or i64 0, %r68
  %wp70 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t69, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ee8 word 0xf945216b
  %r71.p = getelementptr inbounds i8, ptr %c, i64 88
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %t72 = add i64 %r71, 2624
  %gmp73 = inttoptr i64 %t72 to ptr
  %gml74 = load i64, ptr %gmp73, align 1, !alias.scope !4, !noalias !3
  %wp75 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1eec word 0x9280001b
  %wp76 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 -1, ptr %wp76, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ef0 word 0xf940312a
  %r77.p = getelementptr inbounds i8, ptr %c, i64 72
  %r77 = load i64, ptr %r77.p, align 8, !alias.scope !3, !noalias !4
  %t78 = add i64 %r77, 96
  %gmp79 = inttoptr i64 %t78 to ptr
  %gml80 = load i64, ptr %gmp79, align 1, !alias.scope !4, !noalias !3
  %wp81 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml80, ptr %wp81, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ef4 word 0xeb0b015f
  %r82.p = getelementptr inbounds i8, ptr %c, i64 80
  %r82 = load i64, ptr %r82.p, align 8, !alias.scope !3, !noalias !4
  %r83.p = getelementptr inbounds i8, ptr %c, i64 88
  %r83 = load i64, ptr %r83.p, align 8, !alias.scope !3, !noalias !4
  %t84 = sub i64 %r82, %r83
  %fn85 = icmp slt i64 %t84, 0
  %fz86 = icmp eq i64 %t84, 0
  %fc87 = icmp uge i64 %r82, %r83
  %fx188 = xor i64 %r82, %r83
  %fx289 = xor i64 %r82, %t84
  %fva90 = and i64 %fx188, %fx289
  %fv91 = icmp slt i64 %fva90, 0
  %nz92 = zext i1 %fn85 to i64
  %zz93 = zext i1 %fz86 to i64
  %cz94 = zext i1 %fc87 to i64
  %vz95 = zext i1 %fv91 to i64
  %ns96 = shl i64 %nz92, 31
  %zs97 = shl i64 %zz93, 30
  %cs98 = shl i64 %cz94, 29
  %vs99 = shl i64 %vz95, 28
  %nzor100 = or i64 %ns96, %zs97
  %cvor101 = or i64 %cs98, %vs99
  %nzcv102 = or i64 %nzor100, %cvor101
  %wp103 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv102, ptr %wp103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ef8 word 0x54004a21
  %r104.p = getelementptr inbounds i8, ptr %c, i64 272
  %r104 = load i64, ptr %r104.p, align 8, !alias.scope !3, !noalias !4
  %fsh106 = lshr i64 %r104, 30
  %ftr107 = trunc i64 %fsh106 to i1
  %cond105 = xor i1 %ftr107, true
  br i1 %cond105, label %L_8001e283c, label %L_8001e1efc_ft
L_8001e1efc_ft:
  ; @pc 0x8001e1efc word 0xf900927b
  %r108.p = getelementptr inbounds i8, ptr %c, i64 152
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %t109 = add i64 %r108, 288
  %r110.p = getelementptr inbounds i8, ptr %c, i64 216
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %gmp111 = inttoptr i64 %t109 to ptr
  store i64 %r110, ptr %gmp111, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1f00 word 0xd001bb4a
  %wp112 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34419814400, ptr %wp112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f04 word 0xf900ba7f
  %r113.p = getelementptr inbounds i8, ptr %c, i64 152
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %t114 = add i64 %r113, 368
  %gmp115 = inttoptr i64 %t114 to ptr
  store i64 0, ptr %gmp115, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e1f08 word 0xf9400d29
  %r116.p = getelementptr inbounds i8, ptr %c, i64 72
  %r116 = load i64, ptr %r116.p, align 8, !alias.scope !3, !noalias !4
  %t117 = add i64 %r116, 24
  %gmp118 = inttoptr i64 %t117 to ptr
  %gml119 = load i64, ptr %gmp118, align 1, !alias.scope !4, !noalias !3
  %wp120 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml119, ptr %wp120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f0c word 0xf9444d4a
  %r121.p = getelementptr inbounds i8, ptr %c, i64 80
  %r121 = load i64, ptr %r121.p, align 8, !alias.scope !3, !noalias !4
  %t122 = add i64 %r121, 2200
  %gmp123 = inttoptr i64 %t122 to ptr
  %gml124 = load i64, ptr %gmp123, align 1, !alias.scope !4, !noalias !3
  %wp125 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f10 word 0xeb0a013f
  %r126.p = getelementptr inbounds i8, ptr %c, i64 72
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %r127.p = getelementptr inbounds i8, ptr %c, i64 80
  %r127 = load i64, ptr %r127.p, align 8, !alias.scope !3, !noalias !4
  %t128 = sub i64 %r126, %r127
  %fn129 = icmp slt i64 %t128, 0
  %fz130 = icmp eq i64 %t128, 0
  %fc131 = icmp uge i64 %r126, %r127
  %fx1132 = xor i64 %r126, %r127
  %fx2133 = xor i64 %r126, %t128
  %fva134 = and i64 %fx1132, %fx2133
  %fv135 = icmp slt i64 %fva134, 0
  %nz136 = zext i1 %fn129 to i64
  %zz137 = zext i1 %fz130 to i64
  %cz138 = zext i1 %fc131 to i64
  %vz139 = zext i1 %fv135 to i64
  %ns140 = shl i64 %nz136, 31
  %zs141 = shl i64 %zz137, 30
  %cs142 = shl i64 %cz138, 29
  %vs143 = shl i64 %vz139, 28
  %nzor144 = or i64 %ns140, %zs141
  %cvor145 = or i64 %cs142, %vs143
  %nzcv146 = or i64 %nzor144, %cvor145
  %wp147 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv146, ptr %wp147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f14 word 0x540049a1
  %r148.p = getelementptr inbounds i8, ptr %c, i64 272
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %fsh150 = lshr i64 %r148, 30
  %ftr151 = trunc i64 %fsh150 to i1
  %cond149 = xor i1 %ftr151, true
  br i1 %cond149, label %L_8001e2848, label %L_8001e1f18_ft
L_8001e1f18_ft:
  ; @pc 0x8001e1f18 word 0x37084a08
  %r152.p = getelementptr inbounds i8, ptr %c, i64 64
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = and i64 %r152, 2
  %cmp154 = icmp ne i64 %t153, 0
  br i1 %cmp154, label %L_8001e2858, label %L_8001e1f1c
L_8001e1f4c_ft:
  ; @pc 0x8001e1f4c word 0x2a1f03e1
  %t222 = or i32 0, 0
  %c223 = zext i32 %t222 to i64
  %wp224 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c223, ptr %wp224, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e1f50
L_8001e1f68_ft:
  ; @pc 0x8001e1f68 word 0x91030288
  %r266.p = getelementptr inbounds i8, ptr %c, i64 160
  %r266 = load i64, ptr %r266.p, align 8, !alias.scope !3, !noalias !4
  %t267 = add i64 %r266, 192
  %wp268 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t267, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f6c word 0x7100083f
  %r269.p = getelementptr inbounds i8, ptr %c, i64 8
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %c270 = trunc i64 %r269 to i32
  %t271 = sub i32 %c270, 2
  %fn272 = icmp slt i32 %t271, 0
  %fz273 = icmp eq i32 %t271, 0
  %fc274 = icmp uge i32 %c270, 2
  %fx1275 = xor i32 %c270, 2
  %fx2276 = xor i32 %c270, %t271
  %fva277 = and i32 %fx1275, %fx2276
  %fv278 = icmp slt i32 %fva277, 0
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
  ; @pc 0x8001e1f70 word 0x8b214d09
  %r291.p = getelementptr inbounds i8, ptr %c, i64 64
  %r291 = load i64, ptr %r291.p, align 8, !alias.scope !3, !noalias !4
  %r292.p = getelementptr inbounds i8, ptr %c, i64 8
  %r292 = load i64, ptr %r292.p, align 8, !alias.scope !3, !noalias !4
  %c293 = trunc i64 %r292 to i32
  %c294 = zext i32 %c293 to i64
  %t295 = shl i64 %c294, 3
  %t296 = add i64 %r291, %t295
  %wp297 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t296, ptr %wp297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f74 word 0x9a883128
  %r298.p = getelementptr inbounds i8, ptr %c, i64 72
  %r298 = load i64, ptr %r298.p, align 8, !alias.scope !3, !noalias !4
  %r299.p = getelementptr inbounds i8, ptr %c, i64 64
  %r299 = load i64, ptr %r299.p, align 8, !alias.scope !3, !noalias !4
  %r300.p = getelementptr inbounds i8, ptr %c, i64 272
  %r300 = load i64, ptr %r300.p, align 8, !alias.scope !3, !noalias !4
  %fsh302 = lshr i64 %r300, 29
  %ftr303 = trunc i64 %fsh302 to i1
  %cond301 = xor i1 %ftr303, true
  %sel304 = select i1 %cond301, i64 %r298, i64 %r299
  %wp305 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel304, ptr %wp305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1f78 word 0xf9400114
  %r306.p = getelementptr inbounds i8, ptr %c, i64 64
  %r306 = load i64, ptr %r306.p, align 8, !alias.scope !3, !noalias !4
  %gmp307 = inttoptr i64 %r306 to ptr
  %gml308 = load i64, ptr %gmp307, align 1, !alias.scope !4, !noalias !3
  %wp309 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml308, ptr %wp309, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e1f7c
L_8001e1f9c_ft:
  ; @pc 0x8001e1f9c word 0xaa1403f9
  %r357.p = getelementptr inbounds i8, ptr %c, i64 160
  %r357 = load i64, ptr %r357.p, align 8, !alias.scope !3, !noalias !4
  %t358 = or i64 0, %r357
  %wp359 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t358, ptr %wp359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fa0 word 0xf84b0f3c
  %r360.p = getelementptr inbounds i8, ptr %c, i64 200
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %t361 = add i64 %r360, 176
  %gmp362 = inttoptr i64 %t361 to ptr
  %gml363 = load i64, ptr %gmp362, align 1, !alias.scope !4, !noalias !3
  %wp364 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t361, ptr %wp364, align 8, !alias.scope !3, !noalias !4
  %wp365 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml363, ptr %wp365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fa4 word 0xf94002e8
  %r366.p = getelementptr inbounds i8, ptr %c, i64 184
  %r366 = load i64, ptr %r366.p, align 8, !alias.scope !3, !noalias !4
  %gmp367 = inttoptr i64 %r366 to ptr
  %gml368 = load i64, ptr %gmp367, align 1, !alias.scope !4, !noalias !3
  %wp369 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml368, ptr %wp369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fa8 word 0xd100a335
  %r370.p = getelementptr inbounds i8, ptr %c, i64 200
  %r370 = load i64, ptr %r370.p, align 8, !alias.scope !3, !noalias !4
  %t371 = sub i64 %r370, 40
  %wp372 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t371, ptr %wp372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fac word 0xb9404100
  %r373.p = getelementptr inbounds i8, ptr %c, i64 64
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %t374 = add i64 %r373, 64
  %gmp375 = inttoptr i64 %t374 to ptr
  %gml376 = load i32, ptr %gmp375, align 1, !alias.scope !4, !noalias !3
  %c377 = zext i32 %gml376 to i64
  %wp378 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c377, ptr %wp378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fb0 word 0x94a706c4
  %wp379 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712564, ptr %wp379, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x8001e1fb4 word 0xb4004240
  %r380.p = getelementptr inbounds i8, ptr %c, i64 0
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %cmp381 = icmp eq i64 %r380, 0
  br i1 %cmp381, label %L_8001e27fc, label %L_8001e1fb8_ft
L_8001e1fb8_ft:
  ; @pc 0x8001e1fb8 word 0xf940181a
  %r382.p = getelementptr inbounds i8, ptr %c, i64 0
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %t383 = add i64 %r382, 48
  %gmp384 = inttoptr i64 %t383 to ptr
  %gml385 = load i64, ptr %gmp384, align 1, !alias.scope !4, !noalias !3
  %wp386 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml385, ptr %wp386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fbc word 0xb400421a
  %r387.p = getelementptr inbounds i8, ptr %c, i64 208
  %r387 = load i64, ptr %r387.p, align 8, !alias.scope !3, !noalias !4
  %cmp388 = icmp eq i64 %r387, 0
  br i1 %cmp388, label %L_8001e27fc, label %L_8001e1fc0_ft
L_8001e1fc0_ft:
  ; @pc 0x8001e1fc0 word 0xf9401400
  %r389.p = getelementptr inbounds i8, ptr %c, i64 0
  %r389 = load i64, ptr %r389.p, align 8, !alias.scope !3, !noalias !4
  %t390 = add i64 %r389, 40
  %gmp391 = inttoptr i64 %t390 to ptr
  %gml392 = load i64, ptr %gmp391, align 1, !alias.scope !4, !noalias !3
  %wp393 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml392, ptr %wp393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fc4 word 0xf9400008
  %r394.p = getelementptr inbounds i8, ptr %c, i64 0
  %r394 = load i64, ptr %r394.p, align 8, !alias.scope !3, !noalias !4
  %gmp395 = inttoptr i64 %r394 to ptr
  %gml396 = load i64, ptr %gmp395, align 1, !alias.scope !4, !noalias !3
  %wp397 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml396, ptr %wp397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fc8 word 0xf9403108
  %r398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r398 = load i64, ptr %r398.p, align 8, !alias.scope !3, !noalias !4
  %t399 = add i64 %r398, 96
  %gmp400 = inttoptr i64 %t399 to ptr
  %gml401 = load i64, ptr %gmp400, align 1, !alias.scope !4, !noalias !3
  %wp402 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml401, ptr %wp402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fcc word 0xeb18011f
  %r403.p = getelementptr inbounds i8, ptr %c, i64 64
  %r403 = load i64, ptr %r403.p, align 8, !alias.scope !3, !noalias !4
  %r404.p = getelementptr inbounds i8, ptr %c, i64 192
  %r404 = load i64, ptr %r404.p, align 8, !alias.scope !3, !noalias !4
  %t405 = sub i64 %r403, %r404
  %fn406 = icmp slt i64 %t405, 0
  %fz407 = icmp eq i64 %t405, 0
  %fc408 = icmp uge i64 %r403, %r404
  %fx1409 = xor i64 %r403, %r404
  %fx2410 = xor i64 %r403, %t405
  %fva411 = and i64 %fx1409, %fx2410
  %fv412 = icmp slt i64 %fva411, 0
  %nz413 = zext i1 %fn406 to i64
  %zz414 = zext i1 %fz407 to i64
  %cz415 = zext i1 %fc408 to i64
  %vz416 = zext i1 %fv412 to i64
  %ns417 = shl i64 %nz413, 31
  %zs418 = shl i64 %zz414, 30
  %cs419 = shl i64 %cz415, 29
  %vs420 = shl i64 %vz416, 28
  %nzor421 = or i64 %ns417, %zs418
  %cvor422 = or i64 %cs419, %vs420
  %nzcv423 = or i64 %nzor421, %cvor422
  %wp424 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv423, ptr %wp424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1fd0 word 0x54004761
  %r425.p = getelementptr inbounds i8, ptr %c, i64 272
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %fsh427 = lshr i64 %r425, 30
  %ftr428 = trunc i64 %fsh427 to i1
  %cond426 = xor i1 %ftr428, true
  br i1 %cond426, label %L_8001e28bc, label %L_8001e1fd4_ft
L_8001e1fd4_ft:
  ; @pc 0x8001e1fd4 word 0xb940d016
  %r429.p = getelementptr inbounds i8, ptr %c, i64 0
  %r429 = load i64, ptr %r429.p, align 8, !alias.scope !3, !noalias !4
  %t430 = add i64 %r429, 208
  %gmp431 = inttoptr i64 %t430 to ptr
  %gml432 = load i32, ptr %gmp431, align 1, !alias.scope !4, !noalias !3
  %c433 = zext i32 %gml432 to i64
  %wp434 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c433, ptr %wp434, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e1fd8
L_8001e1fe4_ft:
  ; @pc 0x8001e1fe4 word 0x94a70a7f
  %wp465 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712616, ptr %wp465, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba49e0(ptr %c)
  br label %L_8001e1fe8
L_8001e1ff4_ft:
  ; @pc 0x8001e1ff4 word 0x710042df
  %r495.p = getelementptr inbounds i8, ptr %c, i64 176
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %c496 = trunc i64 %r495 to i32
  %t497 = sub i32 %c496, 16
  %fn498 = icmp slt i32 %t497, 0
  %fz499 = icmp eq i32 %t497, 0
  %fc500 = icmp uge i32 %c496, 16
  %fx1501 = xor i32 %c496, 16
  %fx2502 = xor i32 %c496, %t497
  %fva503 = and i32 %fx1501, %fx2502
  %fv504 = icmp slt i32 %fva503, 0
  %nz505 = zext i1 %fn498 to i64
  %zz506 = zext i1 %fz499 to i64
  %cz507 = zext i1 %fc500 to i64
  %vz508 = zext i1 %fv504 to i64
  %ns509 = shl i64 %nz505, 31
  %zs510 = shl i64 %zz506, 30
  %cs511 = shl i64 %cz507, 29
  %vs512 = shl i64 %vz508, 28
  %nzor513 = or i64 %ns509, %zs510
  %cvor514 = or i64 %cs511, %vs512
  %nzcv515 = or i64 %nzor513, %cvor514
  %wp516 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv515, ptr %wp516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e1ff8 word 0x5400472c
  %r517.p = getelementptr inbounds i8, ptr %c, i64 272
  %r517 = load i64, ptr %r517.p, align 8, !alias.scope !3, !noalias !4
  %fsh519 = lshr i64 %r517, 30
  %ftr520 = trunc i64 %fsh519 to i1
  %fsh521 = lshr i64 %r517, 31
  %ftr522 = trunc i64 %fsh521 to i1
  %fsh523 = lshr i64 %r517, 28
  %ftr524 = trunc i64 %fsh523 to i1
  %fnz525 = xor i1 %ftr520, true
  %feq526 = icmp eq i1 %ftr522, %ftr524
  %cond518 = and i1 %fnz525, %feq526
  br i1 %cond518, label %L_8001e28dc, label %L_8001e1ffc_ft
L_8001e1ffc_ft:
  ; @pc 0x8001e1ffc word 0x5280003a
  %c527 = zext i32 1 to i64
  %wp528 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c527, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2000
L_8001e2034_ft:
  ; @pc 0x8001e2034 word 0x52a00029
  %c625 = zext i32 65536 to i64
  %wp626 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c625, ptr %wp626, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2038
L_8001e2048_ft:
  ; @pc 0x8001e2048 word 0xc8097f2a
  %r663.p = getelementptr inbounds i8, ptr %c, i64 200
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %atp664 = inttoptr i64 %r663 to ptr
  %fp665 = getelementptr inbounds i8, ptr %c, i64 296
  %fv666 = load i64, ptr %fp665, align 8, !alias.scope !3, !noalias !4
  %fp667 = getelementptr inbounds i8, ptr %c, i64 304
  %fv668 = load i64, ptr %fp667, align 8, !alias.scope !3, !noalias !4
  %fp669 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp669, align 8, !alias.scope !3, !noalias !4
  %cmp670 = icmp eq i64 %fv666, %r663
  %r671.p = getelementptr inbounds i8, ptr %c, i64 80
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %cx672 = cmpxchg ptr %atp664, i64 %fv668, i64 %r671 seq_cst seq_cst, align 8
  %cxok673 = extractvalue { i64, i1 } %cx672, 1
  %t674 = and i1 %cmp670, %cxok673
  %sel675 = select i1 %t674, i32 0, i32 1
  %c676 = zext i32 %sel675 to i64
  %wp677 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c676, ptr %wp677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e204c word 0x35ffff89
  %r678.p = getelementptr inbounds i8, ptr %c, i64 72
  %r678 = load i64, ptr %r678.p, align 8, !alias.scope !3, !noalias !4
  %c679 = trunc i64 %r678 to i32
  %cmp680 = icmp ne i32 %c679, 0
  br i1 %cmp680, label %L_8001e203c, label %L_8001e2050_ft
L_8001e2050_ft:
  ; @pc 0x8001e2050 word 0xb5000068
  %r681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r681 = load i64, ptr %r681.p, align 8, !alias.scope !3, !noalias !4
  %cmp682 = icmp ne i64 %r681, 0
  br i1 %cmp682, label %L_8001e205c, label %L_8001e2054_ft
L_8001e2054_ft:
  ; @pc 0x8001e2054 word 0x9102a280
  %r683.p = getelementptr inbounds i8, ptr %c, i64 160
  %r683 = load i64, ptr %r683.p, align 8, !alias.scope !3, !noalias !4
  %t684 = add i64 %r683, 168
  %wp685 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t684, ptr %wp685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2058 word 0x94a70e9a
  %wp686 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712732, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba5ac0(ptr %c)
  br label %L_8001e205c
L_8001e2064_ft:
  ; @pc 0x8001e2064 word 0xaa1503e0
  %r719.p = getelementptr inbounds i8, ptr %c, i64 168
  %r719 = load i64, ptr %r719.p, align 8, !alias.scope !3, !noalias !4
  %t720 = or i64 0, %r719
  %wp721 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t720, ptr %wp721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2068 word 0x94a70802
  %wp722 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361712748, ptr %wp722, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  br label %L_8001e206c
L_8001e209c_ft:
  ; @pc 0x8001e209c word 0xb9408e68
  %r782.p = getelementptr inbounds i8, ptr %c, i64 152
  %r782 = load i64, ptr %r782.p, align 8, !alias.scope !3, !noalias !4
  %t783 = add i64 %r782, 140
  %gmp784 = inttoptr i64 %t783 to ptr
  %gml785 = load i32, ptr %gmp784, align 1, !alias.scope !4, !noalias !3
  %c786 = zext i32 %gml785 to i64
  %wp787 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c786, ptr %wp787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20a0 word 0x35004328
  %r788.p = getelementptr inbounds i8, ptr %c, i64 64
  %r788 = load i64, ptr %r788.p, align 8, !alias.scope !3, !noalias !4
  %c789 = trunc i64 %r788 to i32
  %cmp790 = icmp ne i32 %c789, 0
  br i1 %cmp790, label %L_8001e2904, label %L_8001e20a4_ft
L_8001e20a4_ft:
  ; @pc 0x8001e20a4 word 0xf94002e8
  %r791.p = getelementptr inbounds i8, ptr %c, i64 184
  %r791 = load i64, ptr %r791.p, align 8, !alias.scope !3, !noalias !4
  %gmp792 = inttoptr i64 %r791 to ptr
  %gml793 = load i64, ptr %gmp792, align 1, !alias.scope !4, !noalias !3
  %wp794 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml793, ptr %wp794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20a8 word 0x910283fa
  %r795.p = getelementptr inbounds i8, ptr %c, i64 256
  %r795 = load i64, ptr %r795.p, align 8, !alias.scope !3, !noalias !4
  %t796 = add i64 %r795, 160
  %wp797 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t796, ptr %wp797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20ac word 0xf9406500
  %r798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r798 = load i64, ptr %r798.p, align 8, !alias.scope !3, !noalias !4
  %t799 = add i64 %r798, 200
  %gmp800 = inttoptr i64 %t799 to ptr
  %gml801 = load i64, ptr %gmp800, align 1, !alias.scope !4, !noalias !3
  %wp802 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml801, ptr %wp802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20b0 word 0xf9400008
  %r803.p = getelementptr inbounds i8, ptr %c, i64 0
  %r803 = load i64, ptr %r803.p, align 8, !alias.scope !3, !noalias !4
  %gmp804 = inttoptr i64 %r803 to ptr
  %gml805 = load i64, ptr %gmp804, align 1, !alias.scope !4, !noalias !3
  %wp806 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml805, ptr %wp806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20b4 word 0xf9403108
  %r807.p = getelementptr inbounds i8, ptr %c, i64 64
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %t808 = add i64 %r807, 96
  %gmp809 = inttoptr i64 %t808 to ptr
  %gml810 = load i64, ptr %gmp809, align 1, !alias.scope !4, !noalias !3
  %wp811 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml810, ptr %wp811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20b8 word 0xeb16011f
  %r812.p = getelementptr inbounds i8, ptr %c, i64 64
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %r813.p = getelementptr inbounds i8, ptr %c, i64 176
  %r813 = load i64, ptr %r813.p, align 8, !alias.scope !3, !noalias !4
  %t814 = sub i64 %r812, %r813
  %fn815 = icmp slt i64 %t814, 0
  %fz816 = icmp eq i64 %t814, 0
  %fc817 = icmp uge i64 %r812, %r813
  %fx1818 = xor i64 %r812, %r813
  %fx2819 = xor i64 %r812, %t814
  %fva820 = and i64 %fx1818, %fx2819
  %fv821 = icmp slt i64 %fva820, 0
  %nz822 = zext i1 %fn815 to i64
  %zz823 = zext i1 %fz816 to i64
  %cz824 = zext i1 %fc817 to i64
  %vz825 = zext i1 %fv821 to i64
  %ns826 = shl i64 %nz822, 31
  %zs827 = shl i64 %zz823, 30
  %cs828 = shl i64 %cz824, 29
  %vs829 = shl i64 %vz825, 28
  %nzor830 = or i64 %ns826, %zs827
  %cvor831 = or i64 %cs828, %vs829
  %nzcv832 = or i64 %nzor830, %cvor831
  %wp833 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv832, ptr %wp833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e20bc word 0x54004321
  %r834.p = getelementptr inbounds i8, ptr %c, i64 272
  %r834 = load i64, ptr %r834.p, align 8, !alias.scope !3, !noalias !4
  %fsh836 = lshr i64 %r834, 30
  %ftr837 = trunc i64 %fsh836 to i1
  %cond835 = xor i1 %ftr837, true
  br i1 %cond835, label %L_8001e2920, label %L_8001e20c0_ft
L_8001e20c0_ft:
  ; @pc 0x8001e20c0 word 0xf9406000
  %r838.p = getelementptr inbounds i8, ptr %c, i64 0
  %r838 = load i64, ptr %r838.p, align 8, !alias.scope !3, !noalias !4
  %t839 = add i64 %r838, 192
  %gmp840 = inttoptr i64 %t839 to ptr
  %gml841 = load i64, ptr %gmp840, align 1, !alias.scope !4, !noalias !3
  %wp842 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml841, ptr %wp842, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e20c4
L_8001e2184_ft:
  ; @pc 0x8001e2184 word 0xf9406000
  %r1056.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1056 = load i64, ptr %r1056.p, align 8, !alias.scope !3, !noalias !4
  %t1057 = add i64 %r1056, 192
  %gmp1058 = inttoptr i64 %t1057 to ptr
  %gml1059 = load i64, ptr %gmp1058, align 1, !alias.scope !4, !noalias !3
  %wp1060 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1059, ptr %wp1060, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2188
L_8001e21b0_ft:
  ; @pc 0x8001e21b0 word 0x3942a3e8
  %r1142.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1142 = load i64, ptr %r1142.p, align 8, !alias.scope !3, !noalias !4
  %t1143 = add i64 %r1142, 168
  %gmp1144 = inttoptr i64 %t1143 to ptr
  %gml1145 = load i8, ptr %gmp1144, align 1, !alias.scope !4, !noalias !3
  %c1146 = zext i8 %gml1145 to i64
  %wp1147 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1146, ptr %wp1147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21b4 word 0x321b0108
  %r1148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1148 = load i64, ptr %r1148.p, align 8, !alias.scope !3, !noalias !4
  %c1149 = trunc i64 %r1148 to i32
  %t1150 = or i32 %c1149, 32
  %c1151 = zext i32 %t1150 to i64
  %wp1152 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1151, ptr %wp1152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e21b8 word 0x3902a3e8
  %r1153.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1153 = load i64, ptr %r1153.p, align 8, !alias.scope !3, !noalias !4
  %t1154 = add i64 %r1153, 168
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %c1156 = trunc i64 %r1155 to i32
  %c1157 = trunc i32 %c1156 to i8
  %gmp1158 = inttoptr i64 %t1154 to ptr
  store i8 %c1157, ptr %gmp1158, align 1, !alias.scope !4, !noalias !3
  br label %L_8001e21bc
L_8001e2228_ft:
  ; @pc 0x8001e2228 word 0x2a080128
  %r1312.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1312 = load i64, ptr %r1312.p, align 8, !alias.scope !3, !noalias !4
  %c1313 = trunc i64 %r1312 to i32
  %r1314.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1314 = load i64, ptr %r1314.p, align 8, !alias.scope !3, !noalias !4
  %c1315 = trunc i64 %r1314 to i32
  %t1316 = or i32 %c1315, %c1313
  %c1317 = zext i32 %t1316 to i64
  %wp1318 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1317, ptr %wp1318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e222c word 0xb90083e8
  %r1319.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1319 = load i64, ptr %r1319.p, align 8, !alias.scope !3, !noalias !4
  %t1320 = add i64 %r1319, 128
  %r1321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1321 = load i64, ptr %r1321.p, align 8, !alias.scope !3, !noalias !4
  %c1322 = trunc i64 %r1321 to i32
  %gmp1323 = inttoptr i64 %t1320 to ptr
  store i32 %c1322, ptr %gmp1323, align 1, !alias.scope !4, !noalias !3
  br label %L_8001e2230
L_8001e2248_ft:
  ; @pc 0x8001e2248 word 0xf9406008
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %t1369 = add i64 %r1368, 192
  %gmp1370 = inttoptr i64 %t1369 to ptr
  %gml1371 = load i64, ptr %gmp1370, align 1, !alias.scope !4, !noalias !3
  %wp1372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1371, ptr %wp1372, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e224c
L_8001e2264_ft:
  ; @pc 0x8001e2264 word 0xf9406000
  %r1417.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1417 = load i64, ptr %r1417.p, align 8, !alias.scope !3, !noalias !4
  %t1418 = add i64 %r1417, 192
  %gmp1419 = inttoptr i64 %t1418 to ptr
  %gml1420 = load i64, ptr %gmp1419, align 1, !alias.scope !4, !noalias !3
  %wp1421 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1420, ptr %wp1421, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2268
L_8001e22c4_ft:
  ; @pc 0x8001e22c4 word 0x39408268
  %r1551.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1551 = load i64, ptr %r1551.p, align 8, !alias.scope !3, !noalias !4
  %t1552 = add i64 %r1551, 32
  %gmp1553 = inttoptr i64 %t1552 to ptr
  %gml1554 = load i8, ptr %gmp1553, align 1, !alias.scope !4, !noalias !3
  %c1555 = zext i8 %gml1554 to i64
  %wp1556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1555, ptr %wp1556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22c8 word 0x34001388
  %r1557.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1557 = load i64, ptr %r1557.p, align 8, !alias.scope !3, !noalias !4
  %c1558 = trunc i64 %r1557 to i32
  %cmp1559 = icmp eq i32 %c1558, 0
  br i1 %cmp1559, label %L_8001e2538, label %L_8001e22cc_ft
L_8001e22cc_ft:
  ; @pc 0x8001e22cc word 0xb9408e68
  %r1560.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1560 = load i64, ptr %r1560.p, align 8, !alias.scope !3, !noalias !4
  %t1561 = add i64 %r1560, 140
  %gmp1562 = inttoptr i64 %t1561 to ptr
  %gml1563 = load i32, ptr %gmp1562, align 1, !alias.scope !4, !noalias !3
  %c1564 = zext i32 %gml1563 to i64
  %wp1565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1564, ptr %wp1565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22d0 word 0x35001348
  %r1566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1566 = load i64, ptr %r1566.p, align 8, !alias.scope !3, !noalias !4
  %c1567 = trunc i64 %r1566 to i32
  %cmp1568 = icmp ne i32 %c1567, 0
  br i1 %cmp1568, label %L_8001e2538, label %L_8001e22d4_ft
L_8001e22d4_ft:
  ; @pc 0x8001e22d4 word 0xf94002e8
  %r1569.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1569 = load i64, ptr %r1569.p, align 8, !alias.scope !3, !noalias !4
  %gmp1570 = inttoptr i64 %r1569 to ptr
  %gml1571 = load i64, ptr %gmp1570, align 1, !alias.scope !4, !noalias !3
  %wp1572 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1571, ptr %wp1572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22d8 word 0xf9406500
  %r1573.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1573 = load i64, ptr %r1573.p, align 8, !alias.scope !3, !noalias !4
  %t1574 = add i64 %r1573, 200
  %gmp1575 = inttoptr i64 %t1574 to ptr
  %gml1576 = load i64, ptr %gmp1575, align 1, !alias.scope !4, !noalias !3
  %wp1577 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1576, ptr %wp1577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22dc word 0xf9400008
  %r1578.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1578 = load i64, ptr %r1578.p, align 8, !alias.scope !3, !noalias !4
  %gmp1579 = inttoptr i64 %r1578 to ptr
  %gml1580 = load i64, ptr %gmp1579, align 1, !alias.scope !4, !noalias !3
  %wp1581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1580, ptr %wp1581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22e0 word 0xf9403108
  %r1582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1582 = load i64, ptr %r1582.p, align 8, !alias.scope !3, !noalias !4
  %t1583 = add i64 %r1582, 96
  %gmp1584 = inttoptr i64 %t1583 to ptr
  %gml1585 = load i64, ptr %gmp1584, align 1, !alias.scope !4, !noalias !3
  %wp1586 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1585, ptr %wp1586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22e4 word 0xeb16011f
  %r1587.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1587 = load i64, ptr %r1587.p, align 8, !alias.scope !3, !noalias !4
  %r1588.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1588 = load i64, ptr %r1588.p, align 8, !alias.scope !3, !noalias !4
  %t1589 = sub i64 %r1587, %r1588
  %fn1590 = icmp slt i64 %t1589, 0
  %fz1591 = icmp eq i64 %t1589, 0
  %fc1592 = icmp uge i64 %r1587, %r1588
  %fx11593 = xor i64 %r1587, %r1588
  %fx21594 = xor i64 %r1587, %t1589
  %fva1595 = and i64 %fx11593, %fx21594
  %fv1596 = icmp slt i64 %fva1595, 0
  %nz1597 = zext i1 %fn1590 to i64
  %zz1598 = zext i1 %fz1591 to i64
  %cz1599 = zext i1 %fc1592 to i64
  %vz1600 = zext i1 %fv1596 to i64
  %ns1601 = shl i64 %nz1597, 31
  %zs1602 = shl i64 %zz1598, 30
  %cs1603 = shl i64 %cz1599, 29
  %vs1604 = shl i64 %vz1600, 28
  %nzor1605 = or i64 %ns1601, %zs1602
  %cvor1606 = or i64 %cs1603, %vs1604
  %nzcv1607 = or i64 %nzor1605, %cvor1606
  %wp1608 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1607, ptr %wp1608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e22e8 word 0x540037a1
  %r1609.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1609 = load i64, ptr %r1609.p, align 8, !alias.scope !3, !noalias !4
  %fsh1611 = lshr i64 %r1609, 30
  %ftr1612 = trunc i64 %fsh1611 to i1
  %cond1610 = xor i1 %ftr1612, true
  br i1 %cond1610, label %L_8001e29dc, label %L_8001e22ec_ft
L_8001e22ec_ft:
  ; @pc 0x8001e22ec word 0xf9406000
  %r1613.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1613 = load i64, ptr %r1613.p, align 8, !alias.scope !3, !noalias !4
  %t1614 = add i64 %r1613, 192
  %gmp1615 = inttoptr i64 %t1614 to ptr
  %gml1616 = load i64, ptr %gmp1615, align 1, !alias.scope !4, !noalias !3
  %wp1617 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1616, ptr %wp1617, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e22f0
L_8001e2348_ft:
  ; @pc 0x8001e2348 word 0xf9400008
  %r1726.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1726 = load i64, ptr %r1726.p, align 8, !alias.scope !3, !noalias !4
  %gmp1727 = inttoptr i64 %r1726 to ptr
  %gml1728 = load i64, ptr %gmp1727, align 1, !alias.scope !4, !noalias !3
  %wp1729 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1728, ptr %wp1729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e234c word 0x9001bca9
  %wp1730 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp1730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2350 word 0xf9401508
  %r1731.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1731 = load i64, ptr %r1731.p, align 8, !alias.scope !3, !noalias !4
  %t1732 = add i64 %r1731, 40
  %gmp1733 = inttoptr i64 %t1732 to ptr
  %gml1734 = load i64, ptr %gmp1733, align 1, !alias.scope !4, !noalias !3
  %wp1735 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1734, ptr %wp1735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2354 word 0xf9456529
  %r1736.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1736 = load i64, ptr %r1736.p, align 8, !alias.scope !3, !noalias !4
  %t1737 = add i64 %r1736, 2760
  %gmp1738 = inttoptr i64 %t1737 to ptr
  %gml1739 = load i64, ptr %gmp1738, align 1, !alias.scope !4, !noalias !3
  %wp1740 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1739, ptr %wp1740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2358 word 0xeb09011f
  %r1741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1741 = load i64, ptr %r1741.p, align 8, !alias.scope !3, !noalias !4
  %r1742.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1742 = load i64, ptr %r1742.p, align 8, !alias.scope !3, !noalias !4
  %t1743 = sub i64 %r1741, %r1742
  %fn1744 = icmp slt i64 %t1743, 0
  %fz1745 = icmp eq i64 %t1743, 0
  %fc1746 = icmp uge i64 %r1741, %r1742
  %fx11747 = xor i64 %r1741, %r1742
  %fx21748 = xor i64 %r1741, %t1743
  %fva1749 = and i64 %fx11747, %fx21748
  %fv1750 = icmp slt i64 %fva1749, 0
  %nz1751 = zext i1 %fn1744 to i64
  %zz1752 = zext i1 %fz1745 to i64
  %cz1753 = zext i1 %fc1746 to i64
  %vz1754 = zext i1 %fv1750 to i64
  %ns1755 = shl i64 %nz1751, 31
  %zs1756 = shl i64 %zz1752, 30
  %cs1757 = shl i64 %cz1753, 29
  %vs1758 = shl i64 %vz1754, 28
  %nzor1759 = or i64 %ns1755, %zs1756
  %cvor1760 = or i64 %cs1757, %vs1758
  %nzcv1761 = or i64 %nzor1759, %cvor1760
  %wp1762 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1761, ptr %wp1762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e235c word 0x540037a1
  %r1763.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1763 = load i64, ptr %r1763.p, align 8, !alias.scope !3, !noalias !4
  %fsh1765 = lshr i64 %r1763, 30
  %ftr1766 = trunc i64 %fsh1765 to i1
  %cond1764 = xor i1 %ftr1766, true
  br i1 %cond1764, label %L_8001e2a50, label %L_8001e2360_ft
L_8001e2360_ft:
  ; @pc 0x8001e2360 word 0x08dfff68
  %r1767.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1767 = load i64, ptr %r1767.p, align 8, !alias.scope !3, !noalias !4
  %atp1768 = inttoptr i64 %r1767 to ptr
  %lda1769 = load atomic i8, ptr %atp1768 acquire, align 1, !alias.scope !4, !noalias !3
  %c1770 = zext i8 %lda1769 to i64
  %wp1771 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1770, ptr %wp1771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2364 word 0x36003828
  %r1772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1772 = load i64, ptr %r1772.p, align 8, !alias.scope !3, !noalias !4
  %t1773 = and i64 %r1772, 1
  %cmp1774 = icmp eq i64 %t1773, 0
  br i1 %cmp1774, label %L_8001e2a68, label %L_8001e2368
L_8001e2380_ft:
  ; @pc 0x8001e2380 word 0xd3462edb
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %ror1813 = call i64 @llvm.fshr.i64(i64 %r1812, i64 %r1812, i64 6)
  %t1814 = and i64 %ror1813, 63
  %wp1815 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1814, ptr %wp1815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2384 word 0x1adb2136
  %r1816.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1816 = load i64, ptr %r1816.p, align 8, !alias.scope !3, !noalias !4
  %c1817 = trunc i64 %r1816 to i32
  %r1818.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1818 = load i64, ptr %r1818.p, align 8, !alias.scope !3, !noalias !4
  %c1819 = trunc i64 %r1818 to i32
  %t1820 = and i32 %c1819, 31
  %t1821 = shl i32 %c1817, %t1820
  %c1822 = zext i32 %t1821 to i64
  %wp1823 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c1822, ptr %wp1823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2388 word 0xb9401d09
  %r1824.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1824 = load i64, ptr %r1824.p, align 8, !alias.scope !3, !noalias !4
  %t1825 = add i64 %r1824, 28
  %gmp1826 = inttoptr i64 %t1825 to ptr
  %gml1827 = load i32, ptr %gmp1826, align 1, !alias.scope !4, !noalias !3
  %c1828 = zext i32 %gml1827 to i64
  %wp1829 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1828, ptr %wp1829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e238c word 0x6a16013f
  %r1830.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1830 = load i64, ptr %r1830.p, align 8, !alias.scope !3, !noalias !4
  %c1831 = trunc i64 %r1830 to i32
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %c1833 = trunc i64 %r1832 to i32
  %t1834 = and i32 %c1833, %c1831
  %fn1835 = icmp slt i32 %t1834, 0
  %fz1836 = icmp eq i32 %t1834, 0
  %nz1837 = zext i1 %fn1835 to i64
  %zz1838 = zext i1 %fz1836 to i64
  %ns1839 = shl i64 %nz1837, 31
  %zs1840 = shl i64 %zz1838, 30
  %nzcv1841 = or i64 %ns1839, %zs1840
  %wp1842 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1841, ptr %wp1842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2390 word 0x540000a0
  %r1843.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1843 = load i64, ptr %r1843.p, align 8, !alias.scope !3, !noalias !4
  %fsh1845 = lshr i64 %r1843, 30
  %cond1844 = trunc i64 %fsh1845 to i1
  br i1 %cond1844, label %L_8001e23a4, label %L_8001e2394_ft
L_8001e2394_ft:
  ; @pc 0x8001e2394 word 0x39402d08
  %r1846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1846 = load i64, ptr %r1846.p, align 8, !alias.scope !3, !noalias !4
  %t1847 = add i64 %r1846, 11
  %gmp1848 = inttoptr i64 %t1847 to ptr
  %gml1849 = load i8, ptr %gmp1848, align 1, !alias.scope !4, !noalias !3
  %c1850 = zext i8 %gml1849 to i64
  %wp1851 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1850, ptr %wp1851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2398 word 0x37203a68
  %r1852.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1852 = load i64, ptr %r1852.p, align 8, !alias.scope !3, !noalias !4
  %t1853 = and i64 %r1852, 16
  %cmp1854 = icmp ne i64 %t1853, 0
  br i1 %cmp1854, label %L_8001e2ae4, label %L_8001e239c
L_8001e23b4_ft:
  ; @pc 0x8001e23b4 word 0x9100e2b6
  %r1881.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1881 = load i64, ptr %r1881.p, align 8, !alias.scope !3, !noalias !4
  %t1882 = add i64 %r1881, 56
  %wp1883 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1882, ptr %wp1883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23b8 word 0xaa1603e0
  %r1884.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1884 = load i64, ptr %r1884.p, align 8, !alias.scope !3, !noalias !4
  %t1885 = or i64 0, %r1884
  %wp1886 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1885, ptr %wp1886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23bc word 0x94a70729
  %wp1887 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361713600, ptr %wp1887, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001e23c0 word 0xf94016b5
  %r1888.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1888 = load i64, ptr %r1888.p, align 8, !alias.scope !3, !noalias !4
  %t1889 = add i64 %r1888, 40
  %gmp1890 = inttoptr i64 %t1889 to ptr
  %gml1891 = load i64, ptr %gmp1890, align 1, !alias.scope !4, !noalias !3
  %wp1892 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1891, ptr %wp1892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23c4 word 0xaa1603e0
  %r1893.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1893 = load i64, ptr %r1893.p, align 8, !alias.scope !3, !noalias !4
  %t1894 = or i64 0, %r1893
  %wp1895 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1894, ptr %wp1895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23c8 word 0x94a7072a
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361713612, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001e23cc word 0xb4000b75
  %r1897.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1897 = load i64, ptr %r1897.p, align 8, !alias.scope !3, !noalias !4
  %cmp1898 = icmp eq i64 %r1897, 0
  br i1 %cmp1898, label %L_8001e2538, label %L_8001e23d0_ft
L_8001e23d0_ft:
  ; @pc 0x8001e23d0 word 0xf94002a8
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %gmp1900 = inttoptr i64 %r1899 to ptr
  %gml1901 = load i64, ptr %gmp1900, align 1, !alias.scope !4, !noalias !3
  %wp1902 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1901, ptr %wp1902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23d4 word 0x9001bcaa
  %wp1903 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34419990528, ptr %wp1903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23d8 word 0xf9400909
  %r1904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1904 = load i64, ptr %r1904.p, align 8, !alias.scope !3, !noalias !4
  %t1905 = add i64 %r1904, 16
  %gmp1906 = inttoptr i64 %t1905 to ptr
  %gml1907 = load i64, ptr %gmp1906, align 1, !alias.scope !4, !noalias !3
  %wp1908 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1907, ptr %wp1908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23dc word 0xf941794a
  %r1909.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1909 = load i64, ptr %r1909.p, align 8, !alias.scope !3, !noalias !4
  %t1910 = add i64 %r1909, 752
  %gmp1911 = inttoptr i64 %t1910 to ptr
  %gml1912 = load i64, ptr %gmp1911, align 1, !alias.scope !4, !noalias !3
  %wp1913 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1912, ptr %wp1913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23e0 word 0xeb0a013f
  %r1914.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1914 = load i64, ptr %r1914.p, align 8, !alias.scope !3, !noalias !4
  %r1915.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1915 = load i64, ptr %r1915.p, align 8, !alias.scope !3, !noalias !4
  %t1916 = sub i64 %r1914, %r1915
  %fn1917 = icmp slt i64 %t1916, 0
  %fz1918 = icmp eq i64 %t1916, 0
  %fc1919 = icmp uge i64 %r1914, %r1915
  %fx11920 = xor i64 %r1914, %r1915
  %fx21921 = xor i64 %r1914, %t1916
  %fva1922 = and i64 %fx11920, %fx21921
  %fv1923 = icmp slt i64 %fva1922, 0
  %nz1924 = zext i1 %fn1917 to i64
  %zz1925 = zext i1 %fz1918 to i64
  %cz1926 = zext i1 %fc1919 to i64
  %vz1927 = zext i1 %fv1923 to i64
  %ns1928 = shl i64 %nz1924, 31
  %zs1929 = shl i64 %zz1925, 30
  %cs1930 = shl i64 %cz1926, 29
  %vs1931 = shl i64 %vz1927, 28
  %nzor1932 = or i64 %ns1928, %zs1929
  %cvor1933 = or i64 %cs1930, %vs1931
  %nzcv1934 = or i64 %nzor1932, %cvor1933
  %wp1935 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1934, ptr %wp1935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e23e4 word 0x540017e1
  %r1936.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1936 = load i64, ptr %r1936.p, align 8, !alias.scope !3, !noalias !4
  %fsh1938 = lshr i64 %r1936, 30
  %ftr1939 = trunc i64 %fsh1938 to i1
  %cond1937 = xor i1 %ftr1939, true
  br i1 %cond1937, label %L_8001e26e0, label %L_8001e23e8
L_8001e23fc_ft:
  ; @pc 0x8001e23fc word 0xf9403ea0
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %t1978 = add i64 %r1977, 120
  %gmp1979 = inttoptr i64 %t1978 to ptr
  %gml1980 = load i64, ptr %gmp1979, align 1, !alias.scope !4, !noalias !3
  %wp1981 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1980, ptr %wp1981, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2400
L_8001e2418_ft:
  ; @pc 0x8001e2418 word 0xf9400400
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %t2024 = add i64 %r2023, 8
  %gmp2025 = inttoptr i64 %t2024 to ptr
  %gml2026 = load i64, ptr %gmp2025, align 1, !alias.scope !4, !noalias !3
  %wp2027 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2026, ptr %wp2027, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e241c
L_8001e2420_ft:
  ; @pc 0x8001e2420 word 0x39406008
  %r2030.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2030 = load i64, ptr %r2030.p, align 8, !alias.scope !3, !noalias !4
  %t2031 = add i64 %r2030, 24
  %gmp2032 = inttoptr i64 %t2031 to ptr
  %gml2033 = load i8, ptr %gmp2032, align 1, !alias.scope !4, !noalias !3
  %c2034 = zext i8 %gml2033 to i64
  %wp2035 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2034, ptr %wp2035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2424 word 0x3100075f
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %c2037 = trunc i64 %r2036 to i32
  %t2038 = add i32 %c2037, 1
  %fn2039 = icmp slt i32 %t2038, 0
  %fz2040 = icmp eq i32 %t2038, 0
  %fc2041 = icmp ult i32 %t2038, %c2037
  %fx12042 = xor i32 %c2037, %t2038
  %fx22043 = xor i32 1, %t2038
  %fva2044 = and i32 %fx12042, %fx22043
  %fv2045 = icmp slt i32 %fva2044, 0
  %nz2046 = zext i1 %fn2039 to i64
  %zz2047 = zext i1 %fz2040 to i64
  %cz2048 = zext i1 %fc2041 to i64
  %vz2049 = zext i1 %fv2045 to i64
  %ns2050 = shl i64 %nz2046, 31
  %zs2051 = shl i64 %zz2047, 30
  %cs2052 = shl i64 %cz2048, 29
  %vs2053 = shl i64 %vz2049, 28
  %nzor2054 = or i64 %ns2050, %zs2051
  %cvor2055 = or i64 %cs2052, %vs2053
  %nzcv2056 = or i64 %nzor2054, %cvor2055
  %wp2057 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2056, ptr %wp2057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2428 word 0x54003940
  %r2058.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2058 = load i64, ptr %r2058.p, align 8, !alias.scope !3, !noalias !4
  %fsh2060 = lshr i64 %r2058, 30
  %cond2059 = trunc i64 %fsh2060 to i1
  br i1 %cond2059, label %L_8001e2b50, label %L_8001e242c_ft
L_8001e242c_ft:
  ; @pc 0x8001e242c word 0x71002d1f
  %r2061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2061 = load i64, ptr %r2061.p, align 8, !alias.scope !3, !noalias !4
  %c2062 = trunc i64 %r2061 to i32
  %t2063 = sub i32 %c2062, 11
  %fn2064 = icmp slt i32 %t2063, 0
  %fz2065 = icmp eq i32 %t2063, 0
  %fc2066 = icmp uge i32 %c2062, 11
  %fx12067 = xor i32 %c2062, 11
  %fx22068 = xor i32 %c2062, %t2063
  %fva2069 = and i32 %fx12067, %fx22068
  %fv2070 = icmp slt i32 %fva2069, 0
  %nz2071 = zext i1 %fn2064 to i64
  %zz2072 = zext i1 %fz2065 to i64
  %cz2073 = zext i1 %fc2066 to i64
  %vz2074 = zext i1 %fv2070 to i64
  %ns2075 = shl i64 %nz2071, 31
  %zs2076 = shl i64 %zz2072, 30
  %cs2077 = shl i64 %cz2073, 29
  %vs2078 = shl i64 %vz2074, 28
  %nzor2079 = or i64 %ns2075, %zs2076
  %cvor2080 = or i64 %cs2077, %vs2078
  %nzcv2081 = or i64 %nzor2079, %cvor2080
  %wp2082 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2081, ptr %wp2082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2430 word 0x540040e0
  %r2083.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2083 = load i64, ptr %r2083.p, align 8, !alias.scope !3, !noalias !4
  %fsh2085 = lshr i64 %r2083, 30
  %cond2084 = trunc i64 %fsh2085 to i1
  br i1 %cond2084, label %L_8001e2c4c, label %L_8001e2434_ft
L_8001e2434_ft:
  ; @pc 0x8001e2434 word 0x51001d08
  %r2086.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2086 = load i64, ptr %r2086.p, align 8, !alias.scope !3, !noalias !4
  %c2087 = trunc i64 %r2086 to i32
  %t2088 = sub i32 %c2087, 7
  %c2089 = zext i32 %t2088 to i64
  %wp2090 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2089, ptr %wp2090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2438 word 0x71000d1f
  %r2091.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2091 = load i64, ptr %r2091.p, align 8, !alias.scope !3, !noalias !4
  %c2092 = trunc i64 %r2091 to i32
  %t2093 = sub i32 %c2092, 3
  %fn2094 = icmp slt i32 %t2093, 0
  %fz2095 = icmp eq i32 %t2093, 0
  %fc2096 = icmp uge i32 %c2092, 3
  %fx12097 = xor i32 %c2092, 3
  %fx22098 = xor i32 %c2092, %t2093
  %fva2099 = and i32 %fx12097, %fx22098
  %fv2100 = icmp slt i32 %fva2099, 0
  %nz2101 = zext i1 %fn2094 to i64
  %zz2102 = zext i1 %fz2095 to i64
  %cz2103 = zext i1 %fc2096 to i64
  %vz2104 = zext i1 %fv2100 to i64
  %ns2105 = shl i64 %nz2101, 31
  %zs2106 = shl i64 %zz2102, 30
  %cs2107 = shl i64 %cz2103, 29
  %vs2108 = shl i64 %vz2104, 28
  %nzor2109 = or i64 %ns2105, %zs2106
  %cvor2110 = or i64 %cs2107, %vs2108
  %nzcv2111 = or i64 %nzor2109, %cvor2110
  %wp2112 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2111, ptr %wp2112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e243c word 0x54003908
  %r2113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2113 = load i64, ptr %r2113.p, align 8, !alias.scope !3, !noalias !4
  %fsh2115 = lshr i64 %r2113, 29
  %ftr2116 = trunc i64 %fsh2115 to i1
  %fsh2117 = lshr i64 %r2113, 30
  %ftr2118 = trunc i64 %fsh2117 to i1
  %fnz2119 = xor i1 %ftr2118, true
  %cond2114 = and i1 %ftr2116, %fnz2119
  br i1 %cond2114, label %L_8001e2b5c, label %L_8001e2440_ft
L_8001e2440_ft:
  ; @pc 0x8001e2440 word 0xf9401416
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %t2121 = add i64 %r2120, 40
  %gmp2122 = inttoptr i64 %t2121 to ptr
  %gml2123 = load i64, ptr %gmp2122, align 1, !alias.scope !4, !noalias !3
  %wp2124 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2123, ptr %wp2124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2444 word 0xb4003eb6
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %cmp2126 = icmp eq i64 %r2125, 0
  br i1 %cmp2126, label %L_8001e2c18, label %L_8001e2448_ft
L_8001e2448_ft:
  ; @pc 0x8001e2448 word 0xf94016c0
  %r2127.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2127 = load i64, ptr %r2127.p, align 8, !alias.scope !3, !noalias !4
  %t2128 = add i64 %r2127, 40
  %gmp2129 = inttoptr i64 %t2128 to ptr
  %gml2130 = load i64, ptr %gmp2129, align 1, !alias.scope !4, !noalias !3
  %wp2131 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2130, ptr %wp2131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e244c word 0xb4003e60
  %r2132.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2132 = load i64, ptr %r2132.p, align 8, !alias.scope !3, !noalias !4
  %cmp2133 = icmp eq i64 %r2132, 0
  br i1 %cmp2133, label %L_8001e2c18, label %L_8001e2450_ft
L_8001e2450_ft:
  ; @pc 0x8001e2450 word 0x52810008
  %c2134 = zext i32 2048 to i64
  %wp2135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2134, ptr %wp2135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2454 word 0x528000aa
  %c2136 = zext i32 5 to i64
  %wp2137 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2136, ptr %wp2137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2458 word 0xb9022be8
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %t2139 = add i64 %r2138, 552
  %r2140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2140 = load i64, ptr %r2140.p, align 8, !alias.scope !3, !noalias !4
  %c2141 = trunc i64 %r2140 to i32
  %gmp2142 = inttoptr i64 %t2139 to ptr
  store i32 %c2141, ptr %gmp2142, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e245c word 0x910283e8
  %r2143.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2143 = load i64, ptr %r2143.p, align 8, !alias.scope !3, !noalias !4
  %t2144 = add i64 %r2143, 160
  %wp2145 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2144, ptr %wp2145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2460 word 0x910043e1
  %r2146.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2146 = load i64, ptr %r2146.p, align 8, !alias.scope !3, !noalias !4
  %t2147 = add i64 %r2146, 16
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2147, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2464 word 0xd10063a2
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %t2150 = sub i64 %r2149, 24
  %wp2151 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2150, ptr %wp2151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2468 word 0x91064109
  %r2152.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2152 = load i64, ptr %r2152.p, align 8, !alias.scope !3, !noalias !4
  %t2153 = add i64 %r2152, 400
  %wp2154 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2153, ptr %wp2154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e246c word 0xf90113e9
  %r2155.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2155 = load i64, ptr %r2155.p, align 8, !alias.scope !3, !noalias !4
  %t2156 = add i64 %r2155, 544
  %r2157.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2157 = load i64, ptr %r2157.p, align 8, !alias.scope !3, !noalias !4
  %gmp2158 = inttoptr i64 %t2156 to ptr
  store i64 %r2157, ptr %gmp2158, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2470 word 0xf001bc09
  %wp2159 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419920896, ptr %wp2159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2474 word 0xad500720
  %r2160.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2160 = load i64, ptr %r2160.p, align 8, !alias.scope !3, !noalias !4
  %t2161 = add i64 %r2160, 512
  %t2162 = add i64 %t2161, 16
  %gmp2163 = inttoptr i64 %t2161 to ptr
  %gml2164 = load i128, ptr %gmp2163, align 1, !alias.scope !4, !noalias !3
  %gmp2165 = inttoptr i64 %t2162 to ptr
  %gml2166 = load i128, ptr %gmp2165, align 1, !alias.scope !4, !noalias !3
  %wp2167 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml2164, ptr %wp2167, align 16, !alias.scope !3, !noalias !4
  %wp2168 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %gml2166, ptr %wp2168, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2478 word 0xf947f129
  %r2169.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2169 = load i64, ptr %r2169.p, align 8, !alias.scope !3, !noalias !4
  %t2170 = add i64 %r2169, 4064
  %gmp2171 = inttoptr i64 %t2170 to ptr
  %gml2172 = load i64, ptr %gmp2171, align 1, !alias.scope !4, !noalias !3
  %wp2173 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2172, ptr %wp2173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e247c word 0xf9010fff
  %r2174.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2174 = load i64, ptr %r2174.p, align 8, !alias.scope !3, !noalias !4
  %t2175 = add i64 %r2174, 536
  %gmp2176 = inttoptr i64 %t2175 to ptr
  store i64 0, ptr %gmp2176, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2480 word 0x91004129
  %r2177.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2177 = load i64, ptr %r2177.p, align 8, !alias.scope !3, !noalias !4
  %t2178 = add i64 %r2177, 16
  %wp2179 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2178, ptr %wp2179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2484 word 0xad510f22
  %r2180.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2180 = load i64, ptr %r2180.p, align 8, !alias.scope !3, !noalias !4
  %t2181 = add i64 %r2180, 544
  %t2182 = add i64 %t2181, 16
  %gmp2183 = inttoptr i64 %t2181 to ptr
  %gml2184 = load i128, ptr %gmp2183, align 1, !alias.scope !4, !noalias !3
  %gmp2185 = inttoptr i64 %t2182 to ptr
  %gml2186 = load i128, ptr %gmp2185, align 1, !alias.scope !4, !noalias !3
  %wp2187 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %gml2184, ptr %wp2187, align 16, !alias.scope !3, !noalias !4
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %gml2186, ptr %wp2188, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2488 word 0xf9010be9
  %r2189.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2189 = load i64, ptr %r2189.p, align 8, !alias.scope !3, !noalias !4
  %t2190 = add i64 %r2189, 528
  %r2191.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2191 = load i64, ptr %r2191.p, align 8, !alias.scope !3, !noalias !4
  %gmp2192 = inttoptr i64 %t2190 to ptr
  store i64 %r2191, ptr %gmp2192, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e248c word 0x9001bc29
  %wp2193 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419924992, ptr %wp2193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2490 word 0xf940dd29
  %r2194.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2194 = load i64, ptr %r2194.p, align 8, !alias.scope !3, !noalias !4
  %t2195 = add i64 %r2194, 440
  %gmp2196 = inttoptr i64 %t2195 to ptr
  %gml2197 = load i64, ptr %gmp2196, align 1, !alias.scope !4, !noalias !3
  %wp2198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2197, ptr %wp2198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2494 word 0xad0507e0
  %r2199.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2199 = load i64, ptr %r2199.p, align 8, !alias.scope !3, !noalias !4
  %t2200 = add i64 %r2199, 160
  %t2201 = add i64 %t2200, 16
  %r2202.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2202 = load i128, ptr %r2202.p, align 16, !alias.scope !3, !noalias !4
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2203 = load i128, ptr %r2203.p, align 16, !alias.scope !3, !noalias !4
  %gmp2204 = inttoptr i64 %t2200 to ptr
  store i128 %r2202, ptr %gmp2204, align 1, !alias.scope !4, !noalias !3
  %gmp2205 = inttoptr i64 %t2201 to ptr
  store i128 %r2203, ptr %gmp2205, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2498 word 0xb901ffea
  %r2206.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2206 = load i64, ptr %r2206.p, align 8, !alias.scope !3, !noalias !4
  %t2207 = add i64 %r2206, 508
  %r2208.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2208 = load i64, ptr %r2208.p, align 8, !alias.scope !3, !noalias !4
  %c2209 = trunc i64 %r2208 to i32
  %gmp2210 = inttoptr i64 %t2207 to ptr
  store i32 %c2209, ptr %gmp2210, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e249c word 0xad060fe2
  %r2211.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2211 = load i64, ptr %r2211.p, align 8, !alias.scope !3, !noalias !4
  %t2212 = add i64 %r2211, 192
  %t2213 = add i64 %t2212, 16
  %r2214.p = getelementptr inbounds i8, ptr %c, i64 544
  %r2214 = load i128, ptr %r2214.p, align 16, !alias.scope !3, !noalias !4
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 560
  %r2215 = load i128, ptr %r2215.p, align 16, !alias.scope !3, !noalias !4
  %gmp2216 = inttoptr i64 %t2212 to ptr
  store i128 %r2214, ptr %gmp2216, align 1, !alias.scope !4, !noalias !3
  %gmp2217 = inttoptr i64 %t2213 to ptr
  store i128 %r2215, ptr %gmp2217, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24a0 word 0xb001bc2a
  %wp2218 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34419929088, ptr %wp2218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24a4 word 0x4f03f600
  %wp2219 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 84405977751994456057622817414299254784, ptr %wp2219, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24a8 word 0x91004129
  %r2220.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2220 = load i64, ptr %r2220.p, align 8, !alias.scope !3, !noalias !4
  %t2221 = add i64 %r2220, 16
  %wp2222 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2221, ptr %wp2222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24ac word 0xb901f3ff
  %r2223.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2223 = load i64, ptr %r2223.p, align 8, !alias.scope !3, !noalias !4
  %t2224 = add i64 %r2223, 496
  %gmp2225 = inttoptr i64 %t2224 to ptr
  store i32 0, ptr %gmp2225, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24b0 word 0xa90e7fff
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %t2227 = add i64 %r2226, 224
  %t2228 = add i64 %t2227, 8
  %gmp2229 = inttoptr i64 %t2227 to ptr
  store i64 0, ptr %gmp2229, align 1, !alias.scope !4, !noalias !3
  %gmp2230 = inttoptr i64 %t2228 to ptr
  store i64 0, ptr %gmp2230, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24b4 word 0x29066bfa
  %r2231.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2231 = load i64, ptr %r2231.p, align 8, !alias.scope !3, !noalias !4
  %t2232 = add i64 %r2231, 48
  %t2233 = add i64 %t2232, 4
  %r2234.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2234 = load i64, ptr %r2234.p, align 8, !alias.scope !3, !noalias !4
  %c2235 = trunc i64 %r2234 to i32
  %gmp2236 = inttoptr i64 %t2232 to ptr
  store i32 %c2235, ptr %gmp2236, align 1, !alias.scope !4, !noalias !3
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %c2238 = trunc i64 %r2237 to i32
  %gmp2239 = inttoptr i64 %t2233 to ptr
  store i32 %c2238, ptr %gmp2239, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24b8 word 0xb9003bfa
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %t2241 = add i64 %r2240, 56
  %r2242.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2242 = load i64, ptr %r2242.p, align 8, !alias.scope !3, !noalias !4
  %c2243 = trunc i64 %r2242 to i32
  %gmp2244 = inttoptr i64 %t2241 to ptr
  store i32 %c2243, ptr %gmp2244, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24bc word 0xf803c3ff
  %r2245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2245 = load i64, ptr %r2245.p, align 8, !alias.scope !3, !noalias !4
  %t2246 = add i64 %r2245, 60
  %gmp2247 = inttoptr i64 %t2246 to ptr
  store i64 0, ptr %gmp2247, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24c0 word 0xf940654a
  %r2248.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2248 = load i64, ptr %r2248.p, align 8, !alias.scope !3, !noalias !4
  %t2249 = add i64 %r2248, 200
  %gmp2250 = inttoptr i64 %t2249 to ptr
  %gml2251 = load i64, ptr %gmp2250, align 1, !alias.scope !4, !noalias !3
  %wp2252 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2251, ptr %wp2252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24c4 word 0xf940014a
  %r2253.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2253 = load i64, ptr %r2253.p, align 8, !alias.scope !3, !noalias !4
  %gmp2254 = inttoptr i64 %r2253 to ptr
  %gml2255 = load i64, ptr %gmp2254, align 1, !alias.scope !4, !noalias !3
  %wp2256 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2255, ptr %wp2256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24c8 word 0xf81e83a9
  %r2257.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2257 = load i64, ptr %r2257.p, align 8, !alias.scope !3, !noalias !4
  %t2258 = add i64 %r2257, -24
  %r2259.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2259 = load i64, ptr %r2259.p, align 8, !alias.scope !3, !noalias !4
  %gmp2260 = inttoptr i64 %t2258 to ptr
  store i64 %r2259, ptr %gmp2260, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24cc word 0xf9000be8
  %r2261.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2261 = load i64, ptr %r2261.p, align 8, !alias.scope !3, !noalias !4
  %t2262 = add i64 %r2261, 16
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %gmp2264 = inttoptr i64 %t2262 to ptr
  store i64 %r2263, ptr %gmp2264, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24d0 word 0x3d800be0
  %r2265.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2265 = load i64, ptr %r2265.p, align 8, !alias.scope !3, !noalias !4
  %t2266 = add i64 %r2265, 32
  %r2267.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2267 = load i128, ptr %r2267.p, align 16, !alias.scope !3, !noalias !4
  %gmp2268 = inttoptr i64 %t2266 to ptr
  store i128 %r2267, ptr %gmp2268, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e24d4 word 0x3940600b
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %t2270 = add i64 %r2269, 24
  %gmp2271 = inttoptr i64 %t2270 to ptr
  %gml2272 = load i8, ptr %gmp2271, align 1, !alias.scope !4, !noalias !3
  %c2273 = zext i8 %gml2272 to i64
  %wp2274 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2273, ptr %wp2274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24d8 word 0x8b0b254a
  %r2275.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2275 = load i64, ptr %r2275.p, align 8, !alias.scope !3, !noalias !4
  %r2276.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2276 = load i64, ptr %r2276.p, align 8, !alias.scope !3, !noalias !4
  %t2277 = shl i64 %r2276, 9
  %t2278 = add i64 %r2275, %t2277
  %wp2279 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2278, ptr %wp2279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24dc word 0xf9406548
  %r2280.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2280 = load i64, ptr %r2280.p, align 8, !alias.scope !3, !noalias !4
  %t2281 = add i64 %r2280, 200
  %gmp2282 = inttoptr i64 %t2281 to ptr
  %gml2283 = load i64, ptr %gmp2282, align 1, !alias.scope !4, !noalias !3
  %wp2284 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2283, ptr %wp2284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24e0 word 0xd63f0100
  %r2285.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2285 = load i64, ptr %r2285.p, align 8, !alias.scope !3, !noalias !4
  %fp2286 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2285, ptr %fp2286, align 8, !alias.scope !3, !noalias !4
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361713892, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e24e4 word 0x7943f3e8
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %t2289 = add i64 %r2288, 504
  %gmp2290 = inttoptr i64 %t2289 to ptr
  %gml2291 = load i16, ptr %gmp2290, align 1, !alias.scope !4, !noalias !3
  %c2292 = zext i16 %gml2291 to i64
  %wp2293 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2292, ptr %wp2293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24e8 word 0x92403108
  %r2294.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2294 = load i64, ptr %r2294.p, align 8, !alias.scope !3, !noalias !4
  %t2295 = and i64 %r2294, 8191
  %wp2296 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2295, ptr %wp2296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24ec word 0xb9401ac9
  %r2297.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2297 = load i64, ptr %r2297.p, align 8, !alias.scope !3, !noalias !4
  %t2298 = add i64 %r2297, 24
  %gmp2299 = inttoptr i64 %t2298 to ptr
  %gml2300 = load i32, ptr %gmp2299, align 1, !alias.scope !4, !noalias !3
  %c2301 = zext i32 %gml2300 to i64
  %wp2302 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2301, ptr %wp2302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24f0 word 0x6b08013f
  %r2303.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2303 = load i64, ptr %r2303.p, align 8, !alias.scope !3, !noalias !4
  %c2304 = trunc i64 %r2303 to i32
  %r2305.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2305 = load i64, ptr %r2305.p, align 8, !alias.scope !3, !noalias !4
  %c2306 = trunc i64 %r2305 to i32
  %t2307 = sub i32 %c2304, %c2306
  %fn2308 = icmp slt i32 %t2307, 0
  %fz2309 = icmp eq i32 %t2307, 0
  %fc2310 = icmp uge i32 %c2304, %c2306
  %fx12311 = xor i32 %c2304, %c2306
  %fx22312 = xor i32 %c2304, %t2307
  %fva2313 = and i32 %fx12311, %fx22312
  %fv2314 = icmp slt i32 %fva2313, 0
  %nz2315 = zext i1 %fn2308 to i64
  %zz2316 = zext i1 %fz2309 to i64
  %cz2317 = zext i1 %fc2310 to i64
  %vz2318 = zext i1 %fv2314 to i64
  %ns2319 = shl i64 %nz2315, 31
  %zs2320 = shl i64 %zz2316, 30
  %cs2321 = shl i64 %cz2317, 29
  %vs2322 = shl i64 %vz2318, 28
  %nzor2323 = or i64 %ns2319, %zs2320
  %cvor2324 = or i64 %cs2321, %vs2322
  %nzcv2325 = or i64 %nzor2323, %cvor2324
  %wp2326 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2325, ptr %wp2326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24f4 word 0x54003d6d
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %fsh2329 = lshr i64 %r2327, 30
  %ftr2330 = trunc i64 %fsh2329 to i1
  %fsh2331 = lshr i64 %r2327, 31
  %ftr2332 = trunc i64 %fsh2331 to i1
  %fsh2333 = lshr i64 %r2327, 28
  %ftr2334 = trunc i64 %fsh2333 to i1
  %fnz2335 = xor i1 %ftr2330, true
  %feq2336 = icmp eq i1 %ftr2332, %ftr2334
  %fgt2337 = and i1 %fnz2335, %feq2336
  %cond2328 = xor i1 %fgt2337, true
  br i1 %cond2328, label %L_8001e2ca0, label %L_8001e24f8_ft
L_8001e24f8_ft:
  ; @pc 0x8001e24f8 word 0xf94012d6
  %r2338.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2338 = load i64, ptr %r2338.p, align 8, !alias.scope !3, !noalias !4
  %t2339 = add i64 %r2338, 32
  %gmp2340 = inttoptr i64 %t2339 to ptr
  %gml2341 = load i64, ptr %gmp2340, align 1, !alias.scope !4, !noalias !3
  %wp2342 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2341, ptr %wp2342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e24fc word 0x54000049
  %r2343.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2343 = load i64, ptr %r2343.p, align 8, !alias.scope !3, !noalias !4
  %fsh2345 = lshr i64 %r2343, 29
  %ftr2346 = trunc i64 %fsh2345 to i1
  %fsh2347 = lshr i64 %r2343, 30
  %ftr2348 = trunc i64 %fsh2347 to i1
  %fnz2349 = xor i1 %ftr2348, true
  %fhi2350 = and i1 %ftr2346, %fnz2349
  %cond2344 = xor i1 %fhi2350, true
  br i1 %cond2344, label %L_8001e2504, label %L_8001e2500_ft
L_8001e2500_ft:
  ; @pc 0x8001e2500 word 0x8b0812d6
  %r2351.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2351 = load i64, ptr %r2351.p, align 8, !alias.scope !3, !noalias !4
  %r2352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2352 = load i64, ptr %r2352.p, align 8, !alias.scope !3, !noalias !4
  %t2353 = shl i64 %r2352, 4
  %t2354 = add i64 %r2351, %t2353
  %wp2355 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2354, ptr %wp2355, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2504
L_8001e2550_ft:
  ; @pc 0x8001e2550 word 0xf9407280
  %r2449.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2449 = load i64, ptr %r2449.p, align 8, !alias.scope !3, !noalias !4
  %t2450 = add i64 %r2449, 224
  %gmp2451 = inttoptr i64 %t2450 to ptr
  %gml2452 = load i64, ptr %gmp2451, align 1, !alias.scope !4, !noalias !3
  %wp2453 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2452, ptr %wp2453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2554 word 0x94000226
  %wp2454 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714008, ptr %wp2454, align 8, !alias.scope !3, !noalias !4
  call void @f_8001e2dec(ptr %c)
  ; @pc 0x8001e2558 word 0xaa1403f9
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %t2456 = or i64 0, %r2455
  %wp2457 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2456, ptr %wp2457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e255c word 0xf84b0f3a
  %r2458.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2458 = load i64, ptr %r2458.p, align 8, !alias.scope !3, !noalias !4
  %t2459 = add i64 %r2458, 176
  %gmp2460 = inttoptr i64 %t2459 to ptr
  %gml2461 = load i64, ptr %gmp2460, align 1, !alias.scope !4, !noalias !3
  %wp2462 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2459, ptr %wp2462, align 8, !alias.scope !3, !noalias !4
  %wp2463 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2461, ptr %wp2463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2560 word 0xf94002e8
  %r2464.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2464 = load i64, ptr %r2464.p, align 8, !alias.scope !3, !noalias !4
  %gmp2465 = inttoptr i64 %r2464 to ptr
  %gml2466 = load i64, ptr %gmp2465, align 1, !alias.scope !4, !noalias !3
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2564 word 0xd100a335
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %t2469 = sub i64 %r2468, 40
  %wp2470 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2469, ptr %wp2470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2568 word 0xb9404100
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %t2472 = add i64 %r2471, 64
  %gmp2473 = inttoptr i64 %t2472 to ptr
  %gml2474 = load i32, ptr %gmp2473, align 1, !alias.scope !4, !noalias !3
  %c2475 = zext i32 %gml2474 to i64
  %wp2476 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c2475, ptr %wp2476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e256c word 0x94a70555
  %wp2477 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714032, ptr %wp2477, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x8001e2570 word 0xb4001560
  %r2478.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2478 = load i64, ptr %r2478.p, align 8, !alias.scope !3, !noalias !4
  %cmp2479 = icmp eq i64 %r2478, 0
  br i1 %cmp2479, label %L_8001e281c, label %L_8001e2574_ft
L_8001e2574_ft:
  ; @pc 0x8001e2574 word 0xf9401817
  %r2480.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2480 = load i64, ptr %r2480.p, align 8, !alias.scope !3, !noalias !4
  %t2481 = add i64 %r2480, 48
  %gmp2482 = inttoptr i64 %t2481 to ptr
  %gml2483 = load i64, ptr %gmp2482, align 1, !alias.scope !4, !noalias !3
  %wp2484 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2483, ptr %wp2484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2578 word 0xb4001537
  %r2485.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2485 = load i64, ptr %r2485.p, align 8, !alias.scope !3, !noalias !4
  %cmp2486 = icmp eq i64 %r2485, 0
  br i1 %cmp2486, label %L_8001e281c, label %L_8001e257c_ft
L_8001e257c_ft:
  ; @pc 0x8001e257c word 0xf9401400
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %t2488 = add i64 %r2487, 40
  %gmp2489 = inttoptr i64 %t2488 to ptr
  %gml2490 = load i64, ptr %gmp2489, align 1, !alias.scope !4, !noalias !3
  %wp2491 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2490, ptr %wp2491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2580 word 0xf9400008
  %r2492.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2492 = load i64, ptr %r2492.p, align 8, !alias.scope !3, !noalias !4
  %gmp2493 = inttoptr i64 %r2492 to ptr
  %gml2494 = load i64, ptr %gmp2493, align 1, !alias.scope !4, !noalias !3
  %wp2495 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2494, ptr %wp2495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2584 word 0xf9403108
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2496 = load i64, ptr %r2496.p, align 8, !alias.scope !3, !noalias !4
  %t2497 = add i64 %r2496, 96
  %gmp2498 = inttoptr i64 %t2497 to ptr
  %gml2499 = load i64, ptr %gmp2498, align 1, !alias.scope !4, !noalias !3
  %wp2500 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2499, ptr %wp2500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2588 word 0xeb18011f
  %r2501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2501 = load i64, ptr %r2501.p, align 8, !alias.scope !3, !noalias !4
  %r2502.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2502 = load i64, ptr %r2502.p, align 8, !alias.scope !3, !noalias !4
  %t2503 = sub i64 %r2501, %r2502
  %fn2504 = icmp slt i64 %t2503, 0
  %fz2505 = icmp eq i64 %t2503, 0
  %fc2506 = icmp uge i64 %r2501, %r2502
  %fx12507 = xor i64 %r2501, %r2502
  %fx22508 = xor i64 %r2501, %t2503
  %fva2509 = and i64 %fx12507, %fx22508
  %fv2510 = icmp slt i64 %fva2509, 0
  %nz2511 = zext i1 %fn2504 to i64
  %zz2512 = zext i1 %fz2505 to i64
  %cz2513 = zext i1 %fc2506 to i64
  %vz2514 = zext i1 %fv2510 to i64
  %ns2515 = shl i64 %nz2511, 31
  %zs2516 = shl i64 %zz2512, 30
  %cs2517 = shl i64 %cz2513, 29
  %vs2518 = shl i64 %vz2514, 28
  %nzor2519 = or i64 %ns2515, %zs2516
  %cvor2520 = or i64 %cs2517, %vs2518
  %nzcv2521 = or i64 %nzor2519, %cvor2520
  %wp2522 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2521, ptr %wp2522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e258c word 0x540020a1
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %fsh2525 = lshr i64 %r2523, 30
  %ftr2526 = trunc i64 %fsh2525 to i1
  %cond2524 = xor i1 %ftr2526, true
  br i1 %cond2524, label %L_8001e29a0, label %L_8001e2590_ft
L_8001e2590_ft:
  ; @pc 0x8001e2590 word 0xb940d016
  %r2527.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2527 = load i64, ptr %r2527.p, align 8, !alias.scope !3, !noalias !4
  %t2528 = add i64 %r2527, 208
  %gmp2529 = inttoptr i64 %t2528 to ptr
  %gml2530 = load i32, ptr %gmp2529, align 1, !alias.scope !4, !noalias !3
  %c2531 = zext i32 %gml2530 to i64
  %wp2532 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2531, ptr %wp2532, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2594
L_8001e25a0_ft:
  ; @pc 0x8001e25a0 word 0x94a70910
  %wp2563 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714084, ptr %wp2563, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba49e0(ptr %c)
  br label %L_8001e25a4
L_8001e25b0_ft:
  ; @pc 0x8001e25b0 word 0x710042df
  %r2593.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2593 = load i64, ptr %r2593.p, align 8, !alias.scope !3, !noalias !4
  %c2594 = trunc i64 %r2593 to i32
  %t2595 = sub i32 %c2594, 16
  %fn2596 = icmp slt i32 %t2595, 0
  %fz2597 = icmp eq i32 %t2595, 0
  %fc2598 = icmp uge i32 %c2594, 16
  %fx12599 = xor i32 %c2594, 16
  %fx22600 = xor i32 %c2594, %t2595
  %fva2601 = and i32 %fx12599, %fx22600
  %fv2602 = icmp slt i32 %fva2601, 0
  %nz2603 = zext i1 %fn2596 to i64
  %zz2604 = zext i1 %fz2597 to i64
  %cz2605 = zext i1 %fc2598 to i64
  %vz2606 = zext i1 %fv2602 to i64
  %ns2607 = shl i64 %nz2603, 31
  %zs2608 = shl i64 %zz2604, 30
  %cs2609 = shl i64 %cz2605, 29
  %vs2610 = shl i64 %vz2606, 28
  %nzor2611 = or i64 %ns2607, %zs2608
  %cvor2612 = or i64 %cs2609, %vs2610
  %nzcv2613 = or i64 %nzor2611, %cvor2612
  %wp2614 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2613, ptr %wp2614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25b4 word 0x54001fcc
  %r2615.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2615 = load i64, ptr %r2615.p, align 8, !alias.scope !3, !noalias !4
  %fsh2617 = lshr i64 %r2615, 30
  %ftr2618 = trunc i64 %fsh2617 to i1
  %fsh2619 = lshr i64 %r2615, 31
  %ftr2620 = trunc i64 %fsh2619 to i1
  %fsh2621 = lshr i64 %r2615, 28
  %ftr2622 = trunc i64 %fsh2621 to i1
  %fnz2623 = xor i1 %ftr2618, true
  %feq2624 = icmp eq i1 %ftr2620, %ftr2622
  %cond2616 = and i1 %fnz2623, %feq2624
  br i1 %cond2616, label %L_8001e29ac, label %L_8001e25b8_ft
L_8001e25b8_ft:
  ; @pc 0x8001e25b8 word 0x52800037
  %c2625 = zext i32 1 to i64
  %wp2626 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2625, ptr %wp2626, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e25bc
L_8001e25c4_ft:
  ; @pc 0x8001e25c4 word 0x927f2348
  %r2659.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2659 = load i64, ptr %r2659.p, align 8, !alias.scope !3, !noalias !4
  %t2660 = and i64 %r2659, 1022
  %wp2661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2660, ptr %wp2661, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e25c8
L_8001e25d4_ft:
  ; @pc 0x8001e25d4 word 0xaa1503e0
  %r2696.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2696 = load i64, ptr %r2696.p, align 8, !alias.scope !3, !noalias !4
  %t2697 = or i64 0, %r2696
  %wp2698 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2697, ptr %wp2698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e25d8 word 0x94a706a2
  %wp2699 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714140, ptr %wp2699, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_8001e25dc
L_8001e2600_ft:
  ; @pc 0x8001e2600 word 0xc80b7f2a
  %r2774.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2774 = load i64, ptr %r2774.p, align 8, !alias.scope !3, !noalias !4
  %atp2775 = inttoptr i64 %r2774 to ptr
  %fp2776 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2777 = load i64, ptr %fp2776, align 8, !alias.scope !3, !noalias !4
  %fp2778 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2779 = load i64, ptr %fp2778, align 8, !alias.scope !3, !noalias !4
  %fp2780 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2780, align 8, !alias.scope !3, !noalias !4
  %cmp2781 = icmp eq i64 %fv2777, %r2774
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %cx2783 = cmpxchg ptr %atp2775, i64 %fv2779, i64 %r2782 seq_cst seq_cst, align 8
  %cxok2784 = extractvalue { i64, i1 } %cx2783, 1
  %t2785 = and i1 %cmp2781, %cxok2784
  %sel2786 = select i1 %t2785, i32 0, i32 1
  %c2787 = zext i32 %sel2786 to i64
  %wp2788 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2787, ptr %wp2788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2604 word 0x35ffff8b
  %r2789.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2789 = load i64, ptr %r2789.p, align 8, !alias.scope !3, !noalias !4
  %c2790 = trunc i64 %r2789 to i32
  %cmp2791 = icmp ne i32 %c2790, 0
  br i1 %cmp2791, label %L_8001e25f4, label %L_8001e2608_ft
L_8001e2608_ft:
  ; @pc 0x8001e2608 word 0xb500006a
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %cmp2793 = icmp ne i64 %r2792, 0
  br i1 %cmp2793, label %L_8001e2614, label %L_8001e260c_ft
L_8001e260c_ft:
  ; @pc 0x8001e260c word 0x9102a280
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = add i64 %r2794, 168
  %wp2796 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2795, ptr %wp2796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2610 word 0x94a70d2c
  %wp2797 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714196, ptr %wp2797, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba5ac0(ptr %c)
  br label %L_8001e2614
L_8001e2680_ft:
  ; @pc 0x8001e2680 word 0x3dc00000
  %r2956.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2956 = load i64, ptr %r2956.p, align 8, !alias.scope !3, !noalias !4
  %gmp2957 = inttoptr i64 %r2956 to ptr
  %gml2958 = load i128, ptr %gmp2957, align 1, !alias.scope !4, !noalias !3
  %wp2959 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %gml2958, ptr %wp2959, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2684 word 0x9100b268
  %r2960.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2960 = load i64, ptr %r2960.p, align 8, !alias.scope !3, !noalias !4
  %t2961 = add i64 %r2960, 44
  %wp2962 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2961, ptr %wp2962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2688 word 0xfc024260
  %r2963.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2963 = load i64, ptr %r2963.p, align 8, !alias.scope !3, !noalias !4
  %t2964 = add i64 %r2963, 36
  %r2965.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2965 = load i128, ptr %r2965.p, align 16, !alias.scope !3, !noalias !4
  %c2966 = trunc i128 %r2965 to i64
  %gmp2967 = inttoptr i64 %t2964 to ptr
  store i64 %c2966, ptr %gmp2967, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e268c word 0x4d008100
  %r2968.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2968 = load i64, ptr %r2968.p, align 8, !alias.scope !3, !noalias !4
  call void @rt_sl_sts(ptr %c, i32 2, i32 1, i32 2, i32 0, i64 %r2968)
  ; @pc 0x8001e2690 word 0xbd406fe0
  %r2969.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2969 = load i64, ptr %r2969.p, align 8, !alias.scope !3, !noalias !4
  %t2970 = add i64 %r2969, 108
  %gmp2971 = inttoptr i64 %t2970 to ptr
  %gml2972 = load i32, ptr %gmp2971, align 1, !alias.scope !4, !noalias !3
  %c2973 = zext i32 %gml2972 to i128
  %wp2974 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2973, ptr %wp2974, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2694 word 0x1e202008
  %fcmp2975 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2976 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2975, ptr %wp2976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2698 word 0x54000a40
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %fsh2979 = lshr i64 %r2977, 30
  %cond2978 = trunc i64 %fsh2979 to i1
  br i1 %cond2978, label %L_8001e27e0, label %L_8001e269c_ft
L_8001e269c_ft:
  ; @pc 0x8001e269c word 0xbd402001
  %r2980.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2980 = load i64, ptr %r2980.p, align 8, !alias.scope !3, !noalias !4
  %t2981 = add i64 %r2980, 32
  %gmp2982 = inttoptr i64 %t2981 to ptr
  %gml2983 = load i32, ptr %gmp2982, align 1, !alias.scope !4, !noalias !3
  %c2984 = zext i32 %gml2983 to i128
  %wp2985 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2984, ptr %wp2985, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26a0 word 0x1e201820
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 1, i32 0)
  br label %L_8001e26a4
L_8001e26f0_ft:
  ; @pc 0x8001e26f0 word 0xd001bba8
  %wp3066 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419867648, ptr %wp3066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26f4 word 0xf9443d08
  %r3067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3067 = load i64, ptr %r3067.p, align 8, !alias.scope !3, !noalias !4
  %t3068 = add i64 %r3067, 2168
  %gmp3069 = inttoptr i64 %t3068 to ptr
  %gml3070 = load i64, ptr %gmp3069, align 1, !alias.scope !4, !noalias !3
  %wp3071 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3070, ptr %wp3071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26f8 word 0x08dffd08
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %atp3073 = inttoptr i64 %r3072 to ptr
  %lda3074 = load atomic i8, ptr %atp3073 acquire, align 1, !alias.scope !4, !noalias !3
  %c3075 = zext i8 %lda3074 to i64
  %wp3076 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3075, ptr %wp3076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e26fc word 0x36002e28
  %r3077.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3077 = load i64, ptr %r3077.p, align 8, !alias.scope !3, !noalias !4
  %t3078 = and i64 %r3077, 1
  %cmp3079 = icmp eq i64 %t3078, 0
  br i1 %cmp3079, label %L_8001e2cc0, label %L_8001e2700
L_8001e271c_ft:
  ; @pc 0x8001e271c word 0xf9404008
  %r3102.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3102 = load i64, ptr %r3102.p, align 8, !alias.scope !3, !noalias !4
  %t3103 = add i64 %r3102, 128
  %gmp3104 = inttoptr i64 %t3103 to ptr
  %gml3105 = load i64, ptr %gmp3104, align 1, !alias.scope !4, !noalias !3
  %wp3106 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3105, ptr %wp3106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2720 word 0xaa0003e2
  %r3107.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3107 = load i64, ptr %r3107.p, align 8, !alias.scope !3, !noalias !4
  %t3108 = or i64 0, %r3107
  %wp3109 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3108, ptr %wp3109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2724 word 0xb4002ca8
  %r3110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3110 = load i64, ptr %r3110.p, align 8, !alias.scope !3, !noalias !4
  %cmp3111 = icmp eq i64 %r3110, 0
  br i1 %cmp3111, label %L_8001e2cb8, label %L_8001e2728_ft
L_8001e2728_ft:
  ; @pc 0x8001e2728 word 0xb9407109
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %t3113 = add i64 %r3112, 112
  %gmp3114 = inttoptr i64 %t3113 to ptr
  %gml3115 = load i32, ptr %gmp3114, align 1, !alias.scope !4, !noalias !3
  %c3116 = zext i32 %gml3115 to i64
  %wp3117 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3116, ptr %wp3117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e272c word 0xd10063a0
  %r3118.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3118 = load i64, ptr %r3118.p, align 8, !alias.scope !3, !noalias !4
  %t3119 = sub i64 %r3118, 24
  %wp3120 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3119, ptr %wp3120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2730 word 0x910043e1
  %r3121.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3121 = load i64, ptr %r3121.p, align 8, !alias.scope !3, !noalias !4
  %t3122 = add i64 %r3121, 16
  %wp3123 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3122, ptr %wp3123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2734 word 0xf9403d08
  %r3124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3124 = load i64, ptr %r3124.p, align 8, !alias.scope !3, !noalias !4
  %t3125 = add i64 %r3124, 120
  %gmp3126 = inttoptr i64 %t3125 to ptr
  %gml3127 = load i64, ptr %gmp3126, align 1, !alias.scope !4, !noalias !3
  %wp3128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3127, ptr %wp3128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2738 word 0x910273e3
  %r3129.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3129 = load i64, ptr %r3129.p, align 8, !alias.scope !3, !noalias !4
  %t3130 = add i64 %r3129, 156
  %wp3131 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3130, ptr %wp3131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e273c word 0x910283e4
  %r3132.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3132 = load i64, ptr %r3132.p, align 8, !alias.scope !3, !noalias !4
  %t3133 = add i64 %r3132, 160
  %wp3134 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t3133, ptr %wp3134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2740 word 0xb81e83bf
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %t3136 = add i64 %r3135, -24
  %gmp3137 = inttoptr i64 %t3136 to ptr
  store i32 0, ptr %gmp3137, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2744 word 0xf9000bff
  %r3138.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3138 = load i64, ptr %r3138.p, align 8, !alias.scope !3, !noalias !4
  %t3139 = add i64 %r3138, 16
  %gmp3140 = inttoptr i64 %t3139 to ptr
  store i64 0, ptr %gmp3140, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2748 word 0xb900a3e9
  %r3141.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3141 = load i64, ptr %r3141.p, align 8, !alias.scope !3, !noalias !4
  %t3142 = add i64 %r3141, 160
  %r3143.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3143 = load i64, ptr %r3143.p, align 8, !alias.scope !3, !noalias !4
  %c3144 = trunc i64 %r3143 to i32
  %gmp3145 = inttoptr i64 %t3142 to ptr
  store i32 %c3144, ptr %gmp3145, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e274c word 0xf90057e8
  %r3146.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3146 = load i64, ptr %r3146.p, align 8, !alias.scope !3, !noalias !4
  %t3147 = add i64 %r3146, 168
  %r3148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3148 = load i64, ptr %r3148.p, align 8, !alias.scope !3, !noalias !4
  %gmp3149 = inttoptr i64 %t3147 to ptr
  store i64 %r3148, ptr %gmp3149, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2750 word 0x940001a8
  %wp3150 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714516, ptr %wp3150, align 8, !alias.scope !3, !noalias !4
  call void @f_8001e2df0(ptr %c)
  br label %L_8001e2754
L_8001e275c_ft:
  ; @pc 0x8001e275c word 0x17ffff77
  br label %L_8001e2538
L_8001e2774_ft:
  ; @pc 0x8001e2774 word 0xcb170348
  %r3220.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3220 = load i64, ptr %r3220.p, align 8, !alias.scope !3, !noalias !4
  %r3221.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3221 = load i64, ptr %r3221.p, align 8, !alias.scope !3, !noalias !4
  %t3222 = sub i64 %r3220, %r3221
  %wp3223 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3222, ptr %wp3223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2778 word 0xc8097f28
  %r3224.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3224 = load i64, ptr %r3224.p, align 8, !alias.scope !3, !noalias !4
  %atp3225 = inttoptr i64 %r3224 to ptr
  %fp3226 = getelementptr inbounds i8, ptr %c, i64 296
  %fv3227 = load i64, ptr %fp3226, align 8, !alias.scope !3, !noalias !4
  %fp3228 = getelementptr inbounds i8, ptr %c, i64 304
  %fv3229 = load i64, ptr %fp3228, align 8, !alias.scope !3, !noalias !4
  %fp3230 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp3230, align 8, !alias.scope !3, !noalias !4
  %cmp3231 = icmp eq i64 %fv3227, %r3224
  %r3232.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3232 = load i64, ptr %r3232.p, align 8, !alias.scope !3, !noalias !4
  %cx3233 = cmpxchg ptr %atp3225, i64 %fv3229, i64 %r3232 seq_cst seq_cst, align 8
  %cxok3234 = extractvalue { i64, i1 } %cx3233, 1
  %t3235 = and i1 %cmp3231, %cxok3234
  %sel3236 = select i1 %t3235, i32 0, i32 1
  %c3237 = zext i32 %sel3236 to i64
  %wp3238 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3237, ptr %wp3238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e277c word 0x34fff509
  %r3239.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3239 = load i64, ptr %r3239.p, align 8, !alias.scope !3, !noalias !4
  %c3240 = trunc i64 %r3239 to i32
  %cmp3241 = icmp eq i32 %c3240, 0
  br i1 %cmp3241, label %L_8001e261c, label %L_8001e2780_ft
L_8001e2780_ft:
  ; @pc 0x8001e2780 word 0x17fffffa
  br label %L_8001e2768
L_8001e2794_ft:
  ; @pc 0x8001e2794 word 0x9001bca9
  %wp3273 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp3273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2798 word 0xf9412d29
  %r3274.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3274 = load i64, ptr %r3274.p, align 8, !alias.scope !3, !noalias !4
  %t3275 = add i64 %r3274, 600
  %gmp3276 = inttoptr i64 %t3275 to ptr
  %gml3277 = load i64, ptr %gmp3276, align 1, !alias.scope !4, !noalias !3
  %wp3278 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3277, ptr %wp3278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e279c word 0xeb09011f
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %r3280.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3280 = load i64, ptr %r3280.p, align 8, !alias.scope !3, !noalias !4
  %t3281 = sub i64 %r3279, %r3280
  %fn3282 = icmp slt i64 %t3281, 0
  %fz3283 = icmp eq i64 %t3281, 0
  %fc3284 = icmp uge i64 %r3279, %r3280
  %fx13285 = xor i64 %r3279, %r3280
  %fx23286 = xor i64 %r3279, %t3281
  %fva3287 = and i64 %fx13285, %fx23286
  %fv3288 = icmp slt i64 %fva3287, 0
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
  ; @pc 0x8001e27a0 word 0x54002e60
  %r3301.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3301 = load i64, ptr %r3301.p, align 8, !alias.scope !3, !noalias !4
  %fsh3303 = lshr i64 %r3301, 30
  %cond3302 = trunc i64 %fsh3303 to i1
  br i1 %cond3302, label %L_8001e2d6c, label %L_8001e27a4_ft
L_8001e27a4_ft:
  ; @pc 0x8001e27a4 word 0xaa1503e0
  %r3304.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3304 = load i64, ptr %r3304.p, align 8, !alias.scope !3, !noalias !4
  %t3305 = or i64 0, %r3304
  %wp3306 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3305, ptr %wp3306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e27a8 word 0xd63f0100
  %r3307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3307 = load i64, ptr %r3307.p, align 8, !alias.scope !3, !noalias !4
  %fp3308 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3307, ptr %fp3308, align 8, !alias.scope !3, !noalias !4
  %wp3309 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714604, ptr %wp3309, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e27ac word 0x17ffff15
  br label %L_8001e2400
L_8001e27d4_ft:
  ; @pc 0x8001e27d4 word 0x17ffffe5
  br label %L_8001e2768
L_8001e27f8_ft:
  ; @pc 0x8001e27f8 word 0x17fffffc
  br label %L_8001e27e8
L_8001e2884_ft:
  ; @pc 0x8001e2884 word 0xb900093f
  %r3464.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3464 = load i64, ptr %r3464.p, align 8, !alias.scope !3, !noalias !4
  %t3465 = add i64 %r3464, 8
  %gmp3466 = inttoptr i64 %t3465 to ptr
  store i32 0, ptr %gmp3466, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2888 word 0x39446268
  %r3467.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3467 = load i64, ptr %r3467.p, align 8, !alias.scope !3, !noalias !4
  %t3468 = add i64 %r3467, 280
  %gmp3469 = inttoptr i64 %t3468 to ptr
  %gml3470 = load i8, ptr %gmp3469, align 1, !alias.scope !4, !noalias !3
  %c3471 = zext i8 %gml3470 to i64
  %wp3472 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3471, ptr %wp3472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e288c word 0x17fffda4
  br label %L_8001e1f1c
L_8001e28d8_ft:
  ; @pc 0x8001e28d8 word 0x17fffffc
  br label %L_8001e28c8
L_8001e28f0_ft:
  ; @pc 0x8001e28f0 word 0x17fffdc6
  br label %L_8001e2008
L_8001e290c_ft:
  ; @pc 0x8001e290c word 0xaa1303e0
  %r3577.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3577 = load i64, ptr %r3577.p, align 8, !alias.scope !3, !noalias !4
  %t3578 = or i64 0, %r3577
  %wp3579 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3578, ptr %wp3579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2910 word 0x2a1f03e1
  %t3580 = or i32 0, 0
  %c3581 = zext i32 %t3580 to i64
  %wp3582 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3581, ptr %wp3582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2914 word 0xaa1f03e2
  %t3583 = or i64 0, 0
  %wp3584 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3583, ptr %wp3584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2918 word 0x94a1fde3
  %wp3585 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361714972, ptr %wp3585, align 8, !alias.scope !3, !noalias !4
  call void @f_802a620a4(ptr %c)
  ; @pc 0x8001e291c word 0x17fffe64
  br label %L_8001e22ac
L_8001e29d8_ft:
  ; @pc 0x8001e29d8 word 0x17fffffa
  br label %L_8001e29c0
L_8001e2a00_ft:
  ; @pc 0x8001e2a00 word 0x17fffe4a
  br label %L_8001e2328
L_8001e2a24_ft:
  ; @pc 0x8001e2a24 word 0xd001bb48
  %wp3757 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp3757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a28 word 0xd001bb49
  %wp3758 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp3758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a2c word 0xf9454508
  %r3759.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3759 = load i64, ptr %r3759.p, align 8, !alias.scope !3, !noalias !4
  %t3760 = add i64 %r3759, 2696
  %gmp3761 = inttoptr i64 %t3760 to ptr
  %gml3762 = load i64, ptr %gmp3761, align 1, !alias.scope !4, !noalias !3
  %wp3763 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3762, ptr %wp3763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a30 word 0xf9453d29
  %r3764.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3764 = load i64, ptr %r3764.p, align 8, !alias.scope !3, !noalias !4
  %t3765 = add i64 %r3764, 2680
  %gmp3766 = inttoptr i64 %t3765 to ptr
  %gml3767 = load i64, ptr %gmp3766, align 1, !alias.scope !4, !noalias !3
  %wp3768 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3767, ptr %wp3768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a34 word 0xd001bb40
  %wp3769 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419818496, ptr %wp3769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a38 word 0x91004108
  %r3770.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3770 = load i64, ptr %r3770.p, align 8, !alias.scope !3, !noalias !4
  %t3771 = add i64 %r3770, 16
  %wp3772 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3771, ptr %wp3772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a3c word 0xf9000128
  %r3773.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3773 = load i64, ptr %r3773.p, align 8, !alias.scope !3, !noalias !4
  %r3774.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3774 = load i64, ptr %r3774.p, align 8, !alias.scope !3, !noalias !4
  %gmp3775 = inttoptr i64 %r3773 to ptr
  store i64 %r3774, ptr %gmp3775, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2a40 word 0xf9454000
  %r3776.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3776 = load i64, ptr %r3776.p, align 8, !alias.scope !3, !noalias !4
  %t3777 = add i64 %r3776, 2688
  %gmp3778 = inttoptr i64 %t3777 to ptr
  %gml3779 = load i64, ptr %gmp3778, align 1, !alias.scope !4, !noalias !3
  %wp3780 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3779, ptr %wp3780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a44 word 0x94a703db
  %wp3781 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715272, ptr %wp3781, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001e2a48 word 0xaa1c03e0
  %r3782.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3782 = load i64, ptr %r3782.p, align 8, !alias.scope !3, !noalias !4
  %t3783 = or i64 0, %r3782
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a4c word 0x17fffe3e
  br label %L_8001e2344
L_8001e2a7c_ft:
  ; @pc 0x8001e2a7c word 0xd001bb48
  %wp3811 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp3811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a80 word 0xd001bb49
  %wp3812 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp3812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a84 word 0xf9454508
  %r3813.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3813 = load i64, ptr %r3813.p, align 8, !alias.scope !3, !noalias !4
  %t3814 = add i64 %r3813, 2696
  %gmp3815 = inttoptr i64 %t3814 to ptr
  %gml3816 = load i64, ptr %gmp3815, align 1, !alias.scope !4, !noalias !3
  %wp3817 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3816, ptr %wp3817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a88 word 0xf9453d29
  %r3818.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3818 = load i64, ptr %r3818.p, align 8, !alias.scope !3, !noalias !4
  %t3819 = add i64 %r3818, 2680
  %gmp3820 = inttoptr i64 %t3819 to ptr
  %gml3821 = load i64, ptr %gmp3820, align 1, !alias.scope !4, !noalias !3
  %wp3822 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3821, ptr %wp3822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a8c word 0xd001bb40
  %wp3823 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419818496, ptr %wp3823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a90 word 0x91004108
  %r3824.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3824 = load i64, ptr %r3824.p, align 8, !alias.scope !3, !noalias !4
  %t3825 = add i64 %r3824, 16
  %wp3826 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3825, ptr %wp3826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a94 word 0xf9000128
  %r3827.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3827 = load i64, ptr %r3827.p, align 8, !alias.scope !3, !noalias !4
  %r3828.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3828 = load i64, ptr %r3828.p, align 8, !alias.scope !3, !noalias !4
  %gmp3829 = inttoptr i64 %r3827 to ptr
  store i64 %r3828, ptr %gmp3829, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2a98 word 0xf9454000
  %r3830.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3830 = load i64, ptr %r3830.p, align 8, !alias.scope !3, !noalias !4
  %t3831 = add i64 %r3830, 2688
  %gmp3832 = inttoptr i64 %t3831 to ptr
  %gml3833 = load i64, ptr %gmp3832, align 1, !alias.scope !4, !noalias !3
  %wp3834 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3833, ptr %wp3834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2a9c word 0x94a703c5
  %wp3835 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715360, ptr %wp3835, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  br label %L_8001e2aa0
L_8001e2b0c_ft:
  ; @pc 0x8001e2b0c word 0xf94002e8
  %r3929.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3929 = load i64, ptr %r3929.p, align 8, !alias.scope !3, !noalias !4
  %gmp3930 = inttoptr i64 %r3929 to ptr
  %gml3931 = load i64, ptr %gmp3930, align 1, !alias.scope !4, !noalias !3
  %wp3932 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3931, ptr %wp3932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b10 word 0xaa0003e1
  %r3933.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3933 = load i64, ptr %r3933.p, align 8, !alias.scope !3, !noalias !4
  %t3934 = or i64 0, %r3933
  %wp3935 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3934, ptr %wp3935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b14 word 0xaa1703e0
  %r3936.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3936 = load i64, ptr %r3936.p, align 8, !alias.scope !3, !noalias !4
  %t3937 = or i64 0, %r3936
  %wp3938 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3937, ptr %wp3938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b18 word 0xf9400108
  %r3939.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3939 = load i64, ptr %r3939.p, align 8, !alias.scope !3, !noalias !4
  %gmp3940 = inttoptr i64 %r3939 to ptr
  %gml3941 = load i64, ptr %gmp3940, align 1, !alias.scope !4, !noalias !3
  %wp3942 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3941, ptr %wp3942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b1c word 0xd63f0100
  %r3943.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3943 = load i64, ptr %r3943.p, align 8, !alias.scope !3, !noalias !4
  %fp3944 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3943, ptr %fp3944, align 8, !alias.scope !3, !noalias !4
  %wp3945 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715488, ptr %wp3945, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2b20 word 0xb4000ec0
  %r3946.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3946 = load i64, ptr %r3946.p, align 8, !alias.scope !3, !noalias !4
  %cmp3947 = icmp eq i64 %r3946, 0
  br i1 %cmp3947, label %L_8001e2cf8, label %L_8001e2b24_ft
L_8001e2b24_ft:
  ; @pc 0x8001e2b24 word 0xb9407808
  %r3948.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3948 = load i64, ptr %r3948.p, align 8, !alias.scope !3, !noalias !4
  %t3949 = add i64 %r3948, 120
  %gmp3950 = inttoptr i64 %t3949 to ptr
  %gml3951 = load i32, ptr %gmp3950, align 1, !alias.scope !4, !noalias !3
  %c3952 = zext i32 %gml3951 to i64
  %wp3953 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3952, ptr %wp3953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b28 word 0xb001bb57
  %wp3954 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 34419814400, ptr %wp3954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b2c word 0xd001bb58
  %wp3955 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419818496, ptr %wp3955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b30 word 0xf94562f7
  %r3956.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3956 = load i64, ptr %r3956.p, align 8, !alias.scope !3, !noalias !4
  %t3957 = add i64 %r3956, 2752
  %gmp3958 = inttoptr i64 %t3957 to ptr
  %gml3959 = load i64, ptr %gmp3958, align 1, !alias.scope !4, !noalias !3
  %wp3960 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml3959, ptr %wp3960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b34 word 0x6a1c011f
  %r3961.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3961 = load i64, ptr %r3961.p, align 8, !alias.scope !3, !noalias !4
  %c3962 = trunc i64 %r3961 to i32
  %r3963.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3963 = load i64, ptr %r3963.p, align 8, !alias.scope !3, !noalias !4
  %c3964 = trunc i64 %r3963 to i32
  %t3965 = and i32 %c3964, %c3962
  %fn3966 = icmp slt i32 %t3965, 0
  %fz3967 = icmp eq i32 %t3965, 0
  %nz3968 = zext i1 %fn3966 to i64
  %zz3969 = zext i1 %fz3967 to i64
  %ns3970 = shl i64 %nz3968, 31
  %zs3971 = shl i64 %zz3969, 30
  %nzcv3972 = or i64 %ns3970, %zs3971
  %wp3973 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3972, ptr %wp3973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b38 word 0xf9477f18
  %r3974.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3974 = load i64, ptr %r3974.p, align 8, !alias.scope !3, !noalias !4
  %t3975 = add i64 %r3974, 3832
  %gmp3976 = inttoptr i64 %t3975 to ptr
  %gml3977 = load i64, ptr %gmp3976, align 1, !alias.scope !4, !noalias !3
  %wp3978 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml3977, ptr %wp3978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b3c word 0x54ffc340
  %r3979.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3979 = load i64, ptr %r3979.p, align 8, !alias.scope !3, !noalias !4
  %fsh3981 = lshr i64 %r3979, 30
  %cond3980 = trunc i64 %fsh3981 to i1
  br i1 %cond3980, label %L_8001e23a4, label %L_8001e2b40_ft
L_8001e2b40_ft:
  ; @pc 0x8001e2b40 word 0xb9407c08
  %r3982.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3982 = load i64, ptr %r3982.p, align 8, !alias.scope !3, !noalias !4
  %t3983 = add i64 %r3982, 124
  %gmp3984 = inttoptr i64 %t3983 to ptr
  %gml3985 = load i32, ptr %gmp3984, align 1, !alias.scope !4, !noalias !3
  %c3986 = zext i32 %gml3985 to i64
  %wp3987 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3986, ptr %wp3987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b44 word 0x6a16011f
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %c3989 = trunc i64 %r3988 to i32
  %r3990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3990 = load i64, ptr %r3990.p, align 8, !alias.scope !3, !noalias !4
  %c3991 = trunc i64 %r3990 to i32
  %t3992 = and i32 %c3991, %c3989
  %fn3993 = icmp slt i32 %t3992, 0
  %fz3994 = icmp eq i32 %t3992, 0
  %nz3995 = zext i1 %fn3993 to i64
  %zz3996 = zext i1 %fz3994 to i64
  %ns3997 = shl i64 %nz3995, 31
  %zs3998 = shl i64 %zz3996, 30
  %nzcv3999 = or i64 %ns3997, %zs3998
  %wp4000 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3999, ptr %wp4000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b48 word 0x54ffc2a1
  %r4001.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4001 = load i64, ptr %r4001.p, align 8, !alias.scope !3, !noalias !4
  %fsh4003 = lshr i64 %r4001, 30
  %ftr4004 = trunc i64 %fsh4003 to i1
  %cond4002 = xor i1 %ftr4004, true
  br i1 %cond4002, label %L_8001e239c, label %L_8001e2b4c_ft
L_8001e2b4c_ft:
  ; @pc 0x8001e2b4c word 0x17fffe16
  br label %L_8001e23a4
L_8001e2b64_ft:
  ; @pc 0x8001e2b64 word 0xf94002c8
  %r4043.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4043 = load i64, ptr %r4043.p, align 8, !alias.scope !3, !noalias !4
  %gmp4044 = inttoptr i64 %r4043 to ptr
  %gml4045 = load i64, ptr %gmp4044, align 1, !alias.scope !4, !noalias !3
  %wp4046 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4045, ptr %wp4046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b68 word 0x9001bca9
  %wp4047 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp4047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b6c word 0xf9400908
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %t4049 = add i64 %r4048, 16
  %gmp4050 = inttoptr i64 %t4049 to ptr
  %gml4051 = load i64, ptr %gmp4050, align 1, !alias.scope !4, !noalias !3
  %wp4052 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4051, ptr %wp4052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b70 word 0xf9411d29
  %r4053.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4053 = load i64, ptr %r4053.p, align 8, !alias.scope !3, !noalias !4
  %t4054 = add i64 %r4053, 568
  %gmp4055 = inttoptr i64 %t4054 to ptr
  %gml4056 = load i64, ptr %gmp4055, align 1, !alias.scope !4, !noalias !3
  %wp4057 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4056, ptr %wp4057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b74 word 0xeb09011f
  %r4058.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4058 = load i64, ptr %r4058.p, align 8, !alias.scope !3, !noalias !4
  %r4059.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4059 = load i64, ptr %r4059.p, align 8, !alias.scope !3, !noalias !4
  %t4060 = sub i64 %r4058, %r4059
  %fn4061 = icmp slt i64 %t4060, 0
  %fz4062 = icmp eq i64 %t4060, 0
  %fc4063 = icmp uge i64 %r4058, %r4059
  %fx14064 = xor i64 %r4058, %r4059
  %fx24065 = xor i64 %r4058, %t4060
  %fva4066 = and i64 %fx14064, %fx24065
  %fv4067 = icmp slt i64 %fva4066, 0
  %nz4068 = zext i1 %fn4061 to i64
  %zz4069 = zext i1 %fz4062 to i64
  %cz4070 = zext i1 %fc4063 to i64
  %vz4071 = zext i1 %fv4067 to i64
  %ns4072 = shl i64 %nz4068, 31
  %zs4073 = shl i64 %zz4069, 30
  %cs4074 = shl i64 %cz4070, 29
  %vs4075 = shl i64 %vz4071, 28
  %nzor4076 = or i64 %ns4072, %zs4073
  %cvor4077 = or i64 %cs4074, %vs4075
  %nzcv4078 = or i64 %nzor4076, %cvor4077
  %wp4079 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4078, ptr %wp4079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b78 word 0x540005a0
  %r4080.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4080 = load i64, ptr %r4080.p, align 8, !alias.scope !3, !noalias !4
  %fsh4082 = lshr i64 %r4080, 30
  %cond4081 = trunc i64 %fsh4082 to i1
  br i1 %cond4081, label %L_8001e2c2c, label %L_8001e2b7c_ft
L_8001e2b7c_ft:
  ; @pc 0x8001e2b7c word 0x9001bca9
  %wp4083 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp4083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b80 word 0xf9413529
  %r4084.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4084 = load i64, ptr %r4084.p, align 8, !alias.scope !3, !noalias !4
  %t4085 = add i64 %r4084, 616
  %gmp4086 = inttoptr i64 %t4085 to ptr
  %gml4087 = load i64, ptr %gmp4086, align 1, !alias.scope !4, !noalias !3
  %wp4088 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4087, ptr %wp4088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b84 word 0xeb09011f
  %r4089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4089 = load i64, ptr %r4089.p, align 8, !alias.scope !3, !noalias !4
  %r4090.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4090 = load i64, ptr %r4090.p, align 8, !alias.scope !3, !noalias !4
  %t4091 = sub i64 %r4089, %r4090
  %fn4092 = icmp slt i64 %t4091, 0
  %fz4093 = icmp eq i64 %t4091, 0
  %fc4094 = icmp uge i64 %r4089, %r4090
  %fx14095 = xor i64 %r4089, %r4090
  %fx24096 = xor i64 %r4089, %t4091
  %fva4097 = and i64 %fx14095, %fx24096
  %fv4098 = icmp slt i64 %fva4097, 0
  %nz4099 = zext i1 %fn4092 to i64
  %zz4100 = zext i1 %fz4093 to i64
  %cz4101 = zext i1 %fc4094 to i64
  %vz4102 = zext i1 %fv4098 to i64
  %ns4103 = shl i64 %nz4099, 31
  %zs4104 = shl i64 %zz4100, 30
  %cs4105 = shl i64 %cz4101, 29
  %vs4106 = shl i64 %vz4102, 28
  %nzor4107 = or i64 %ns4103, %zs4104
  %cvor4108 = or i64 %cs4105, %vs4106
  %nzcv4109 = or i64 %nzor4107, %cvor4108
  %wp4110 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4109, ptr %wp4110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b88 word 0x54000520
  %r4111.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4111 = load i64, ptr %r4111.p, align 8, !alias.scope !3, !noalias !4
  %fsh4113 = lshr i64 %r4111, 30
  %cond4112 = trunc i64 %fsh4113 to i1
  br i1 %cond4112, label %L_8001e2c2c, label %L_8001e2b8c_ft
L_8001e2b8c_ft:
  ; @pc 0x8001e2b8c word 0x9001bca9
  %wp4114 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419990528, ptr %wp4114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b90 word 0xf9412929
  %r4115.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4115 = load i64, ptr %r4115.p, align 8, !alias.scope !3, !noalias !4
  %t4116 = add i64 %r4115, 592
  %gmp4117 = inttoptr i64 %t4116 to ptr
  %gml4118 = load i64, ptr %gmp4117, align 1, !alias.scope !4, !noalias !3
  %wp4119 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4118, ptr %wp4119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b94 word 0xeb09011f
  %r4120.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4120 = load i64, ptr %r4120.p, align 8, !alias.scope !3, !noalias !4
  %r4121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4121 = load i64, ptr %r4121.p, align 8, !alias.scope !3, !noalias !4
  %t4122 = sub i64 %r4120, %r4121
  %fn4123 = icmp slt i64 %t4122, 0
  %fz4124 = icmp eq i64 %t4122, 0
  %fc4125 = icmp uge i64 %r4120, %r4121
  %fx14126 = xor i64 %r4120, %r4121
  %fx24127 = xor i64 %r4120, %t4122
  %fva4128 = and i64 %fx14126, %fx24127
  %fv4129 = icmp slt i64 %fva4128, 0
  %nz4130 = zext i1 %fn4123 to i64
  %zz4131 = zext i1 %fz4124 to i64
  %cz4132 = zext i1 %fc4125 to i64
  %vz4133 = zext i1 %fv4129 to i64
  %ns4134 = shl i64 %nz4130, 31
  %zs4135 = shl i64 %zz4131, 30
  %cs4136 = shl i64 %cz4132, 29
  %vs4137 = shl i64 %vz4133, 28
  %nzor4138 = or i64 %ns4134, %zs4135
  %cvor4139 = or i64 %cs4136, %vs4137
  %nzcv4140 = or i64 %nzor4138, %cvor4139
  %wp4141 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4140, ptr %wp4141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2b98 word 0x540004a0
  %r4142.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4142 = load i64, ptr %r4142.p, align 8, !alias.scope !3, !noalias !4
  %fsh4144 = lshr i64 %r4142, 30
  %cond4143 = trunc i64 %fsh4144 to i1
  br i1 %cond4143, label %L_8001e2c2c, label %L_8001e2b9c_ft
L_8001e2b9c_ft:
  ; @pc 0x8001e2b9c word 0xaa1603e0
  %r4145.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4145 = load i64, ptr %r4145.p, align 8, !alias.scope !3, !noalias !4
  %t4146 = or i64 0, %r4145
  %wp4147 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4146, ptr %wp4147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ba0 word 0xd63f0100
  %r4148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4148 = load i64, ptr %r4148.p, align 8, !alias.scope !3, !noalias !4
  %fp4149 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4148, ptr %fp4149, align 8, !alias.scope !3, !noalias !4
  %wp4150 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715620, ptr %wp4150, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001e2ba4 word 0x7100441f
  %r4151.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4151 = load i64, ptr %r4151.p, align 8, !alias.scope !3, !noalias !4
  %c4152 = trunc i64 %r4151 to i32
  %t4153 = sub i32 %c4152, 17
  %fn4154 = icmp slt i32 %t4153, 0
  %fz4155 = icmp eq i32 %t4153, 0
  %fc4156 = icmp uge i32 %c4152, 17
  %fx14157 = xor i32 %c4152, 17
  %fx24158 = xor i32 %c4152, %t4153
  %fva4159 = and i32 %fx14157, %fx24158
  %fv4160 = icmp slt i32 %fva4159, 0
  %nz4161 = zext i1 %fn4154 to i64
  %zz4162 = zext i1 %fz4155 to i64
  %cz4163 = zext i1 %fc4156 to i64
  %vz4164 = zext i1 %fv4160 to i64
  %ns4165 = shl i64 %nz4161, 31
  %zs4166 = shl i64 %zz4162, 30
  %cs4167 = shl i64 %cz4163, 29
  %vs4168 = shl i64 %vz4164, 28
  %nzor4169 = or i64 %ns4165, %zs4166
  %cvor4170 = or i64 %cs4167, %vs4168
  %nzcv4171 = or i64 %nzor4169, %cvor4170
  %wp4172 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4171, ptr %wp4172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ba8 word 0x54000421
  %r4173.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4173 = load i64, ptr %r4173.p, align 8, !alias.scope !3, !noalias !4
  %fsh4175 = lshr i64 %r4173, 30
  %ftr4176 = trunc i64 %fsh4175 to i1
  %cond4174 = xor i1 %ftr4176, true
  br i1 %cond4174, label %L_8001e2c2c, label %L_8001e2bac_ft
L_8001e2bac_ft:
  ; @pc 0x8001e2bac word 0xf9403ec9
  %r4177.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4177 = load i64, ptr %r4177.p, align 8, !alias.scope !3, !noalias !4
  %t4178 = add i64 %r4177, 120
  %gmp4179 = inttoptr i64 %t4178 to ptr
  %gml4180 = load i64, ptr %gmp4179, align 1, !alias.scope !4, !noalias !3
  %wp4181 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4180, ptr %wp4181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bb0 word 0xb9401928
  %r4182.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4182 = load i64, ptr %r4182.p, align 8, !alias.scope !3, !noalias !4
  %t4183 = add i64 %r4182, 24
  %gmp4184 = inttoptr i64 %t4183 to ptr
  %gml4185 = load i32, ptr %gmp4184, align 1, !alias.scope !4, !noalias !3
  %c4186 = zext i32 %gml4185 to i64
  %wp4187 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4186, ptr %wp4187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bb4 word 0x340003c8
  %r4188.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4188 = load i64, ptr %r4188.p, align 8, !alias.scope !3, !noalias !4
  %c4189 = trunc i64 %r4188 to i32
  %cmp4190 = icmp eq i32 %c4189, 0
  br i1 %cmp4190, label %L_8001e2c2c, label %L_8001e2bb8_ft
L_8001e2bb8_ft:
  ; @pc 0x8001e2bb8 word 0xf940092b
  %r4191.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4191 = load i64, ptr %r4191.p, align 8, !alias.scope !3, !noalias !4
  %t4192 = add i64 %r4191, 16
  %gmp4193 = inttoptr i64 %t4192 to ptr
  %gml4194 = load i64, ptr %gmp4193, align 1, !alias.scope !4, !noalias !3
  %wp4195 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4194, ptr %wp4195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bbc word 0xf940316a
  %r4196.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4196 = load i64, ptr %r4196.p, align 8, !alias.scope !3, !noalias !4
  %t4197 = add i64 %r4196, 96
  %gmp4198 = inttoptr i64 %t4197 to ptr
  %gml4199 = load i64, ptr %gmp4198, align 1, !alias.scope !4, !noalias !3
  %wp4200 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4199, ptr %wp4200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bc0 word 0xb40001ea
  %r4201.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4201 = load i64, ptr %r4201.p, align 8, !alias.scope !3, !noalias !4
  %cmp4202 = icmp eq i64 %r4201, 0
  br i1 %cmp4202, label %L_8001e2bfc, label %L_8001e2bc4_ft
L_8001e2bc4_ft:
  ; @pc 0x8001e2bc4 word 0x294aad6e
  %r4203.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4203 = load i64, ptr %r4203.p, align 8, !alias.scope !3, !noalias !4
  %t4204 = add i64 %r4203, 84
  %t4205 = add i64 %t4204, 4
  %gmp4206 = inttoptr i64 %t4204 to ptr
  %gml4207 = load i32, ptr %gmp4206, align 1, !alias.scope !4, !noalias !3
  %c4208 = zext i32 %gml4207 to i64
  %gmp4209 = inttoptr i64 %t4205 to ptr
  %gml4210 = load i32, ptr %gmp4209, align 1, !alias.scope !4, !noalias !3
  %c4211 = zext i32 %gml4210 to i64
  %wp4212 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c4208, ptr %wp4212, align 8, !alias.scope !3, !noalias !4
  %wp4213 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4211, ptr %wp4213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bc8 word 0x53107f4d
  %r4214.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4214 = load i64, ptr %r4214.p, align 8, !alias.scope !3, !noalias !4
  %c4215 = trunc i64 %r4214 to i32
  %ror4216 = call i32 @llvm.fshr.i32(i32 %c4215, i32 %c4215, i32 16)
  %t4217 = and i32 %ror4216, 65535
  %c4218 = zext i32 %t4217 to i64
  %wp4219 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4218, ptr %wp4219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bcc word 0x12003f4c
  %r4220.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4220 = load i64, ptr %r4220.p, align 8, !alias.scope !3, !noalias !4
  %c4221 = trunc i64 %r4220 to i32
  %t4222 = and i32 %c4221, 65535
  %c4223 = zext i32 %t4222 to i64
  %wp4224 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4223, ptr %wp4224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bd0 word 0x510005cf
  %r4225.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4225 = load i64, ptr %r4225.p, align 8, !alias.scope !3, !noalias !4
  %c4226 = trunc i64 %r4225 to i32
  %t4227 = sub i32 %c4226, 1
  %c4228 = zext i32 %t4227 to i64
  %wp4229 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4228, ptr %wp4229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bd4 word 0x5100056b
  %r4230.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4230 = load i64, ptr %r4230.p, align 8, !alias.scope !3, !noalias !4
  %c4231 = trunc i64 %r4230 to i32
  %t4232 = sub i32 %c4231, 1
  %c4233 = zext i32 %t4232 to i64
  %wp4234 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4233, ptr %wp4234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bd8 word 0x6b0f01bf
  %r4235.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4235 = load i64, ptr %r4235.p, align 8, !alias.scope !3, !noalias !4
  %c4236 = trunc i64 %r4235 to i32
  %r4237.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4237 = load i64, ptr %r4237.p, align 8, !alias.scope !3, !noalias !4
  %c4238 = trunc i64 %r4237 to i32
  %t4239 = sub i32 %c4236, %c4238
  %fn4240 = icmp slt i32 %t4239, 0
  %fz4241 = icmp eq i32 %t4239, 0
  %fc4242 = icmp uge i32 %c4236, %c4238
  %fx14243 = xor i32 %c4236, %c4238
  %fx24244 = xor i32 %c4236, %t4239
  %fva4245 = and i32 %fx14243, %fx24244
  %fv4246 = icmp slt i32 %fva4245, 0
  %nz4247 = zext i1 %fn4240 to i64
  %zz4248 = zext i1 %fz4241 to i64
  %cz4249 = zext i1 %fc4242 to i64
  %vz4250 = zext i1 %fv4246 to i64
  %ns4251 = shl i64 %nz4247, 31
  %zs4252 = shl i64 %zz4248, 30
  %cs4253 = shl i64 %cz4249, 29
  %vs4254 = shl i64 %vz4250, 28
  %nzor4255 = or i64 %ns4251, %zs4252
  %cvor4256 = or i64 %cs4253, %vs4254
  %nzcv4257 = or i64 %nzor4255, %cvor4256
  %wp4258 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4257, ptr %wp4258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bdc word 0x1a8fb1ad
  %r4259.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4259 = load i64, ptr %r4259.p, align 8, !alias.scope !3, !noalias !4
  %c4260 = trunc i64 %r4259 to i32
  %r4261.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4261 = load i64, ptr %r4261.p, align 8, !alias.scope !3, !noalias !4
  %c4262 = trunc i64 %r4261 to i32
  %r4263.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4263 = load i64, ptr %r4263.p, align 8, !alias.scope !3, !noalias !4
  %fsh4265 = lshr i64 %r4263, 31
  %ftr4266 = trunc i64 %fsh4265 to i1
  %fsh4267 = lshr i64 %r4263, 28
  %ftr4268 = trunc i64 %fsh4267 to i1
  %cond4264 = icmp ne i1 %ftr4266, %ftr4268
  %sel4269 = select i1 %cond4264, i32 %c4260, i32 %c4262
  %c4270 = zext i32 %sel4269 to i64
  %wp4271 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4270, ptr %wp4271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2be0 word 0x6b0b019f
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %c4273 = trunc i64 %r4272 to i32
  %r4274.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4274 = load i64, ptr %r4274.p, align 8, !alias.scope !3, !noalias !4
  %c4275 = trunc i64 %r4274 to i32
  %t4276 = sub i32 %c4273, %c4275
  %fn4277 = icmp slt i32 %t4276, 0
  %fz4278 = icmp eq i32 %t4276, 0
  %fc4279 = icmp uge i32 %c4273, %c4275
  %fx14280 = xor i32 %c4273, %c4275
  %fx24281 = xor i32 %c4273, %t4276
  %fva4282 = and i32 %fx14280, %fx24281
  %fv4283 = icmp slt i32 %fva4282, 0
  %nz4284 = zext i1 %fn4277 to i64
  %zz4285 = zext i1 %fz4278 to i64
  %cz4286 = zext i1 %fc4279 to i64
  %vz4287 = zext i1 %fv4283 to i64
  %ns4288 = shl i64 %nz4284, 31
  %zs4289 = shl i64 %zz4285, 30
  %cs4290 = shl i64 %cz4286, 29
  %vs4291 = shl i64 %vz4287, 28
  %nzor4292 = or i64 %ns4288, %zs4289
  %cvor4293 = or i64 %cs4290, %vs4291
  %nzcv4294 = or i64 %nzor4292, %cvor4293
  %wp4295 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4294, ptr %wp4295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2be4 word 0x1a8bb18b
  %r4296.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4296 = load i64, ptr %r4296.p, align 8, !alias.scope !3, !noalias !4
  %c4297 = trunc i64 %r4296 to i32
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %c4299 = trunc i64 %r4298 to i32
  %r4300.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4300 = load i64, ptr %r4300.p, align 8, !alias.scope !3, !noalias !4
  %fsh4302 = lshr i64 %r4300, 31
  %ftr4303 = trunc i64 %fsh4302 to i1
  %fsh4304 = lshr i64 %r4300, 28
  %ftr4305 = trunc i64 %fsh4304 to i1
  %cond4301 = icmp ne i1 %ftr4303, %ftr4305
  %sel4306 = select i1 %cond4301, i32 %c4297, i32 %c4299
  %c4307 = zext i32 %sel4306 to i64
  %wp4308 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4307, ptr %wp4308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2be8 word 0x5280006c
  %c4309 = zext i32 3 to i64
  %wp4310 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4309, ptr %wp4310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bec word 0x1b0e356b
  %r4311.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4311 = load i64, ptr %r4311.p, align 8, !alias.scope !3, !noalias !4
  %c4312 = trunc i64 %r4311 to i32
  %r4313.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4313 = load i64, ptr %r4313.p, align 8, !alias.scope !3, !noalias !4
  %c4314 = trunc i64 %r4313 to i32
  %t4315 = mul i32 %c4314, %c4312
  %r4316.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4316 = load i64, ptr %r4316.p, align 8, !alias.scope !3, !noalias !4
  %c4317 = trunc i64 %r4316 to i32
  %t4318 = add i32 %c4317, %t4315
  %c4319 = zext i32 %t4318 to i64
  %wp4320 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4319, ptr %wp4320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bf0 word 0x2a0b098b
  %r4321.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4321 = load i64, ptr %r4321.p, align 8, !alias.scope !3, !noalias !4
  %c4322 = trunc i64 %r4321 to i32
  %t4323 = shl i32 %c4322, 2
  %r4324.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4324 = load i64, ptr %r4324.p, align 8, !alias.scope !3, !noalias !4
  %c4325 = trunc i64 %r4324 to i32
  %t4326 = or i32 %c4325, %t4323
  %c4327 = zext i32 %t4326 to i64
  %wp4328 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4327, ptr %wp4328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bf4 word 0x8b2bc54a
  %r4329.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4329 = load i64, ptr %r4329.p, align 8, !alias.scope !3, !noalias !4
  %r4330.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4330 = load i64, ptr %r4330.p, align 8, !alias.scope !3, !noalias !4
  %c4331 = trunc i64 %r4330 to i32
  %c4332 = sext i32 %c4331 to i64
  %t4333 = shl i64 %c4332, 1
  %t4334 = add i64 %r4329, %t4333
  %wp4335 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4334, ptr %wp4335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2bf8 word 0x3940054a
  %r4336.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4336 = load i64, ptr %r4336.p, align 8, !alias.scope !3, !noalias !4
  %t4337 = add i64 %r4336, 1
  %gmp4338 = inttoptr i64 %t4337 to ptr
  %gml4339 = load i8, ptr %gmp4338, align 1, !alias.scope !4, !noalias !3
  %c4340 = zext i8 %gml4339 to i64
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4340, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  br label %L_8001e2bfc
L_8001e2c10_ft:
  ; @pc 0x8001e2c10 word 0x8b081136
  %r4388.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4388 = load i64, ptr %r4388.p, align 8, !alias.scope !3, !noalias !4
  %r4389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4389 = load i64, ptr %r4389.p, align 8, !alias.scope !3, !noalias !4
  %t4390 = shl i64 %r4389, 4
  %t4391 = add i64 %r4388, %t4390
  %wp4392 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4391, ptr %wp4392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c14 word 0x17fffe43
  br label %L_8001e2520
L_8001e2c44_ft:
  ; @pc 0x8001e2c44 word 0xf94006d6
  %r4449.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4449 = load i64, ptr %r4449.p, align 8, !alias.scope !3, !noalias !4
  %t4450 = add i64 %r4449, 8
  %gmp4451 = inttoptr i64 %t4450 to ptr
  %gml4452 = load i64, ptr %gmp4451, align 1, !alias.scope !4, !noalias !3
  %wp4453 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4452, ptr %wp4453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c48 word 0x17fffe35
  br label %L_8001e251c
L_8001e2c88_ft:
  ; @pc 0x8001e2c88 word 0x8b080120
  %r4525.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4525 = load i64, ptr %r4525.p, align 8, !alias.scope !3, !noalias !4
  %r4526.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4526 = load i64, ptr %r4526.p, align 8, !alias.scope !3, !noalias !4
  %t4527 = add i64 %r4525, %r4526
  %wp4528 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4527, ptr %wp4528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c8c word 0xb4ffc480
  %r4529.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4529 = load i64, ptr %r4529.p, align 8, !alias.scope !3, !noalias !4
  %cmp4530 = icmp eq i64 %r4529, 0
  br i1 %cmp4530, label %L_8001e251c, label %L_8001e2c90_ft
L_8001e2c90_ft:
  ; @pc 0x8001e2c90 word 0x910283e1
  %r4531.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4531 = load i64, ptr %r4531.p, align 8, !alias.scope !3, !noalias !4
  %t4532 = add i64 %r4531, 160
  %wp4533 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4532, ptr %wp4533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2c94 word 0x9402aa90
  %wp4534 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715864, ptr %wp4534, align 8, !alias.scope !3, !noalias !4
  call void @f_80028d6d4(ptr %c)
  br label %L_8001e2c98
L_8001e2cd0_ft:
  ; @pc 0x8001e2cd0 word 0xd001bba8
  %wp4564 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419867648, ptr %wp4564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cd4 word 0xd001bb49
  %wp4565 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp4565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cd8 word 0xf9443908
  %r4566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4566 = load i64, ptr %r4566.p, align 8, !alias.scope !3, !noalias !4
  %t4567 = add i64 %r4566, 2160
  %gmp4568 = inttoptr i64 %t4567 to ptr
  %gml4569 = load i64, ptr %gmp4568, align 1, !alias.scope !4, !noalias !3
  %wp4570 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4569, ptr %wp4570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cdc word 0xf9402d29
  %r4571.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4571 = load i64, ptr %r4571.p, align 8, !alias.scope !3, !noalias !4
  %t4572 = add i64 %r4571, 88
  %gmp4573 = inttoptr i64 %t4572 to ptr
  %gml4574 = load i64, ptr %gmp4573, align 1, !alias.scope !4, !noalias !3
  %wp4575 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4574, ptr %wp4575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ce0 word 0xd001bba0
  %wp4576 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419867648, ptr %wp4576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ce4 word 0x91004129
  %r4577.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4577 = load i64, ptr %r4577.p, align 8, !alias.scope !3, !noalias !4
  %t4578 = add i64 %r4577, 16
  %wp4579 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4578, ptr %wp4579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ce8 word 0xf9000109
  %r4580.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4580 = load i64, ptr %r4580.p, align 8, !alias.scope !3, !noalias !4
  %r4581.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4581 = load i64, ptr %r4581.p, align 8, !alias.scope !3, !noalias !4
  %gmp4582 = inttoptr i64 %r4580 to ptr
  store i64 %r4581, ptr %gmp4582, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001e2cec word 0xf9443c00
  %r4583.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4583 = load i64, ptr %r4583.p, align 8, !alias.scope !3, !noalias !4
  %t4584 = add i64 %r4583, 2168
  %gmp4585 = inttoptr i64 %t4584 to ptr
  %gml4586 = load i64, ptr %gmp4585, align 1, !alias.scope !4, !noalias !3
  %wp4587 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4586, ptr %wp4587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2cf0 word 0x94a70330
  %wp4588 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361715956, ptr %wp4588, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001e2cf4 word 0x17fffe83
  br label %L_8001e2700
L_8001e2d44_ft:
  ; @pc 0x8001e2d44 word 0xb94013e8
  %r4657.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4657 = load i64, ptr %r4657.p, align 8, !alias.scope !3, !noalias !4
  %t4658 = add i64 %r4657, 16
  %gmp4659 = inttoptr i64 %t4658 to ptr
  %gml4660 = load i32, ptr %gmp4659, align 1, !alias.scope !4, !noalias !3
  %c4661 = zext i32 %gml4660 to i64
  %wp4662 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4661, ptr %wp4662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d48 word 0xb001bb57
  %wp4663 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 34419814400, ptr %wp4663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d4c word 0xd001bb58
  %wp4664 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419818496, ptr %wp4664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d50 word 0xf94562f7
  %r4665.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4665 = load i64, ptr %r4665.p, align 8, !alias.scope !3, !noalias !4
  %t4666 = add i64 %r4665, 2752
  %gmp4667 = inttoptr i64 %t4666 to ptr
  %gml4668 = load i64, ptr %gmp4667, align 1, !alias.scope !4, !noalias !3
  %wp4669 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4668, ptr %wp4669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d54 word 0x9adb2508
  %r4670.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4670 = load i64, ptr %r4670.p, align 8, !alias.scope !3, !noalias !4
  %r4671.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4671 = load i64, ptr %r4671.p, align 8, !alias.scope !3, !noalias !4
  %t4672 = and i64 %r4671, 63
  %t4673 = lshr i64 %r4670, %t4672
  %wp4674 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4673, ptr %wp4674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d58 word 0xf9477f18
  %r4675.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4675 = load i64, ptr %r4675.p, align 8, !alias.scope !3, !noalias !4
  %t4676 = add i64 %r4675, 3832
  %gmp4677 = inttoptr i64 %t4676 to ptr
  %gml4678 = load i64, ptr %gmp4677, align 1, !alias.scope !4, !noalias !3
  %wp4679 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml4678, ptr %wp4679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2d5c word 0x3707b208
  %r4680.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4680 = load i64, ptr %r4680.p, align 8, !alias.scope !3, !noalias !4
  %t4681 = and i64 %r4680, 1
  %cmp4682 = icmp ne i64 %t4681, 0
  br i1 %cmp4682, label %L_8001e239c, label %L_8001e2d60_ft
L_8001e2d60_ft:
  ; @pc 0x8001e2d60 word 0x17fffd91
  br label %L_8001e23a4
L_8001e2da0_ft:
  ; @pc 0x8001e2da0 word 0xcb170348
  %r4753.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4753 = load i64, ptr %r4753.p, align 8, !alias.scope !3, !noalias !4
  %r4754.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4754 = load i64, ptr %r4754.p, align 8, !alias.scope !3, !noalias !4
  %t4755 = sub i64 %r4753, %r4754
  %wp4756 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4755, ptr %wp4756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2da4 word 0xc8097f28
  %r4757.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4757 = load i64, ptr %r4757.p, align 8, !alias.scope !3, !noalias !4
  %atp4758 = inttoptr i64 %r4757 to ptr
  %fp4759 = getelementptr inbounds i8, ptr %c, i64 296
  %fv4760 = load i64, ptr %fp4759, align 8, !alias.scope !3, !noalias !4
  %fp4761 = getelementptr inbounds i8, ptr %c, i64 304
  %fv4762 = load i64, ptr %fp4761, align 8, !alias.scope !3, !noalias !4
  %fp4763 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp4763, align 8, !alias.scope !3, !noalias !4
  %cmp4764 = icmp eq i64 %fv4760, %r4757
  %r4765.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4765 = load i64, ptr %r4765.p, align 8, !alias.scope !3, !noalias !4
  %cx4766 = cmpxchg ptr %atp4758, i64 %fv4762, i64 %r4765 seq_cst seq_cst, align 8
  %cxok4767 = extractvalue { i64, i1 } %cx4766, 1
  %t4768 = and i1 %cmp4764, %cxok4767
  %sel4769 = select i1 %t4768, i32 0, i32 1
  %c4770 = zext i32 %sel4769 to i64
  %wp4771 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4770, ptr %wp4771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2da8 word 0x34ffc3a9
  %r4772.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4772 = load i64, ptr %r4772.p, align 8, !alias.scope !3, !noalias !4
  %c4773 = trunc i64 %r4772 to i32
  %cmp4774 = icmp eq i32 %c4773, 0
  br i1 %cmp4774, label %L_8001e261c, label %L_8001e2dac_ft
L_8001e2dac_ft:
  ; @pc 0x8001e2dac word 0x17fffffa
  br label %L_8001e2d94
L_8001e2dd8_ft:
  ; @pc 0x8001e2dd8 word 0x8b1a0388
  %r4844.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4844 = load i64, ptr %r4844.p, align 8, !alias.scope !3, !noalias !4
  %r4845.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4845 = load i64, ptr %r4845.p, align 8, !alias.scope !3, !noalias !4
  %t4846 = add i64 %r4844, %r4845
  %wp4847 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4846, ptr %wp4847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2ddc word 0xc8097f28
  %r4848.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4848 = load i64, ptr %r4848.p, align 8, !alias.scope !3, !noalias !4
  %atp4849 = inttoptr i64 %r4848 to ptr
  %fp4850 = getelementptr inbounds i8, ptr %c, i64 296
  %fv4851 = load i64, ptr %fp4850, align 8, !alias.scope !3, !noalias !4
  %fp4852 = getelementptr inbounds i8, ptr %c, i64 304
  %fv4853 = load i64, ptr %fp4852, align 8, !alias.scope !3, !noalias !4
  %fp4854 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp4854, align 8, !alias.scope !3, !noalias !4
  %cmp4855 = icmp eq i64 %fv4851, %r4848
  %r4856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4856 = load i64, ptr %r4856.p, align 8, !alias.scope !3, !noalias !4
  %cx4857 = cmpxchg ptr %atp4849, i64 %fv4853, i64 %r4856 seq_cst seq_cst, align 8
  %cxok4858 = extractvalue { i64, i1 } %cx4857, 1
  %t4859 = and i1 %cmp4855, %cxok4858
  %sel4860 = select i1 %t4859, i32 0, i32 1
  %c4861 = zext i32 %sel4860 to i64
  %wp4862 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4861, ptr %wp4862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001e2de0 word 0x34ff9469
  %r4863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4863 = load i64, ptr %r4863.p, align 8, !alias.scope !3, !noalias !4
  %c4864 = trunc i64 %r4863 to i32
  %cmp4865 = icmp eq i32 %c4864, 0
  br i1 %cmp4865, label %L_8001e206c, label %L_8001e2de4_ft
L_8001e2de4_ft:
  ; @pc 0x8001e2de4 word 0x17fffffa
  br label %L_8001e2dcc
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
