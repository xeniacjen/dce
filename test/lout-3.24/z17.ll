; ModuleID = 'z17.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }

@.str = private unnamed_addr constant [25 x i8] c"gap is not a simple word\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"width missing from %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s, %s and %s must be enclosed in double quotes\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"GetGap: dg!\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"units letter missing from %s\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"%.1fr too large (1.0r substituted)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"unknown gap mode in %s\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"replacing self-contradictory gap %s by breakable version\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"invalid width or gap %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MinGap: units\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"MinGap: NO_MODE\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"MinGap: mode\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"ExtraGap: NO_MODE\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ExtraGap: mode\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"ActualGap: units\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"cannot continue after previous error(s)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"ActualGap: NO_MODE\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"ActualGap: mode\00", align 1

; Function Attrs: nounwind uwtable
define void @GetGap(%union.rec* %x, %struct.STYLE* %style, %struct.GAP* %res_gap, i32* %res_inc) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.STYLE*, align 8
  %3 = alloca %struct.GAP*, align 8
  %4 = alloca i32*, align 8
  %w = alloca i32, align 4
  %num = alloca float, align 4
  %str = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.STYLE* %style, %struct.STYLE** %2, align 8
  store %struct.GAP* %res_gap, %struct.GAP** %3, align 8
  store i32* %res_inc, i32** %4, align 8
  %5 = load %struct.GAP*, %struct.GAP** %3, align 8
  %6 = bitcast %struct.GAP* %5 to i16*
  %7 = load i16, i16* %6, align 4
  %8 = and i16 %7, -129
  store i16 %8, i16* %6, align 4
  %9 = load %struct.GAP*, %struct.GAP** %3, align 8
  %10 = getelementptr inbounds %struct.GAP, %struct.GAP* %9, i32 0, i32 1
  store i16 0, i16* %10, align 2
  %11 = load %struct.GAP*, %struct.GAP** %3, align 8
  %12 = bitcast %struct.GAP* %11 to i16*
  %13 = load i16, i16* %12, align 4
  %14 = and i16 %13, -7169
  %15 = or i16 %14, 1024
  store i16 %15, i16* %12, align 4
  %16 = load %struct.GAP*, %struct.GAP** %3, align 8
  %17 = bitcast %struct.GAP* %16 to i16*
  %18 = load i16, i16* %17, align 4
  %19 = and i16 %18, 8191
  %20 = or i16 %19, 8192
  store i16 %20, i16* %17, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 158, i32* %21, align 4
  %22 = load %union.rec*, %union.rec** %1, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 1
  %25 = bitcast %union.FIRST_UNION* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 11
  br i1 %29, label %45, label %30

; <label>:30                                      ; preds = %0
  %31 = load %union.rec*, %union.rec** %1, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 1
  %34 = bitcast %union.FIRST_UNION* %33 to %struct.anon*
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 12
  br i1 %38, label %45, label %39

; <label>:39                                      ; preds = %30
  %40 = load %union.rec*, %union.rec** %1, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 1
  %43 = bitcast %union.FIRST_UNION* %42 to %struct.FILE_POS*
  %44 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %43)
  br label %453

; <label>:45                                      ; preds = %30, %0
  %46 = load %union.rec*, %union.rec** %1, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %48, i32 0, i32 0
  store i8* %49, i8** %str, align 8
  %50 = load i8*, i8** %str, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %45
  br label %453

; <label>:55                                      ; preds = %45
  %56 = load i8*, i8** %str, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 43
  br i1 %59, label %60, label %64

; <label>:60                                      ; preds = %55
  %61 = load i32*, i32** %4, align 8
  store i32 159, i32* %61, align 4
  %62 = load i8*, i8** %str, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %str, align 8
  br label %74

; <label>:64                                      ; preds = %55
  %65 = load i8*, i8** %str, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %69, label %73

; <label>:69                                      ; preds = %64
  %70 = load i32*, i32** %4, align 8
  store i32 160, i32* %70, align 4
  %71 = load i8*, i8** %str, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %str, align 8
  br label %73

; <label>:73                                      ; preds = %69, %64
  br label %74

; <label>:74                                      ; preds = %73, %60
  %75 = load i8*, i8** %str, align 8
  %76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %num) #3
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %93

; <label>:78                                      ; preds = %74
  %79 = load %union.rec*, %union.rec** %1, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 1
  %82 = bitcast %union.FIRST_UNION* %81 to %struct.FILE_POS*
  %83 = load %union.rec*, %union.rec** %1, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 4
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %85, i32 0, i32 0
  %87 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %82, i8* %86)
  %88 = load %union.rec*, %union.rec** %1, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 1
  %91 = bitcast %union.FIRST_UNION* %90 to %struct.FILE_POS*
  %92 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %453

; <label>:93                                      ; preds = %74
  br label %94

; <label>:94                                      ; preds = %111, %93
  %95 = load i8*, i8** %str, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %104

; <label>:99                                      ; preds = %94
  %100 = load i8*, i8** %str, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sle i32 %102, 57
  br i1 %103, label %109, label %104

; <label>:104                                     ; preds = %99, %94
  %105 = load i8*, i8** %str, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 46
  br label %109

; <label>:109                                     ; preds = %104, %99
  %110 = phi i1 [ true, %99 ], [ %108, %104 ]
  br i1 %110, label %111, label %114

; <label>:111                                     ; preds = %109
  %112 = load i8*, i8** %str, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %str, align 8
  br label %94

; <label>:114                                     ; preds = %109
  %115 = load i8*, i8** %str, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %str, align 8
  %117 = load i8, i8* %115, align 1
  %118 = zext i8 %117 to i32
  switch i32 %118, label %306 [
    i32 99, label %119
    i32 105, label %128
    i32 112, label %137
    i32 109, label %146
    i32 102, label %155
    i32 115, label %171
    i32 118, label %187
    i32 121, label %203
    i32 122, label %217
    i32 119, label %231
    i32 98, label %240
    i32 114, label %249
    i32 100, label %258
  ]

; <label>:119                                     ; preds = %114
  %120 = load float, float* %num, align 4
  %121 = fmul float %120, 5.670000e+02
  %122 = fptosi float %121 to i32
  store i32 %122, i32* %w, align 4
  %123 = load %struct.GAP*, %struct.GAP** %3, align 8
  %124 = bitcast %struct.GAP* %123 to i16*
  %125 = load i16, i16* %124, align 4
  %126 = and i16 %125, -7169
  %127 = or i16 %126, 1024
  store i16 %127, i16* %124, align 4
  br label %316

; <label>:128                                     ; preds = %114
  %129 = load float, float* %num, align 4
  %130 = fmul float %129, 1.440000e+03
  %131 = fptosi float %130 to i32
  store i32 %131, i32* %w, align 4
  %132 = load %struct.GAP*, %struct.GAP** %3, align 8
  %133 = bitcast %struct.GAP* %132 to i16*
  %134 = load i16, i16* %133, align 4
  %135 = and i16 %134, -7169
  %136 = or i16 %135, 1024
  store i16 %136, i16* %133, align 4
  br label %316

; <label>:137                                     ; preds = %114
  %138 = load float, float* %num, align 4
  %139 = fmul float %138, 2.000000e+01
  %140 = fptosi float %139 to i32
  store i32 %140, i32* %w, align 4
  %141 = load %struct.GAP*, %struct.GAP** %3, align 8
  %142 = bitcast %struct.GAP* %141 to i16*
  %143 = load i16, i16* %142, align 4
  %144 = and i16 %143, -7169
  %145 = or i16 %144, 1024
  store i16 %145, i16* %142, align 4
  br label %316

; <label>:146                                     ; preds = %114
  %147 = load float, float* %num, align 4
  %148 = fmul float %147, 1.200000e+02
  %149 = fptosi float %148 to i32
  store i32 %149, i32* %w, align 4
  %150 = load %struct.GAP*, %struct.GAP** %3, align 8
  %151 = bitcast %struct.GAP* %150 to i16*
  %152 = load i16, i16* %151, align 4
  %153 = and i16 %152, -7169
  %154 = or i16 %153, 1024
  store i16 %154, i16* %151, align 4
  br label %316

; <label>:155                                     ; preds = %114
  %156 = load float, float* %num, align 4
  %157 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %158 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 4095
  %161 = load %union.rec*, %union.rec** %1, align 8
  %162 = call i32 @FontSize(i32 %160, %union.rec* %161)
  %163 = sitofp i32 %162 to float
  %164 = fmul float %156, %163
  %165 = fptosi float %164 to i32
  store i32 %165, i32* %w, align 4
  %166 = load %struct.GAP*, %struct.GAP** %3, align 8
  %167 = bitcast %struct.GAP* %166 to i16*
  %168 = load i16, i16* %167, align 4
  %169 = and i16 %168, -7169
  %170 = or i16 %169, 1024
  store i16 %170, i16* %167, align 4
  br label %316

; <label>:171                                     ; preds = %114
  %172 = load float, float* %num, align 4
  %173 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %174 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %173, i32 0, i32 1
  %175 = bitcast %union.anon.10* %174 to %struct.GAP*
  %176 = getelementptr inbounds %struct.GAP, %struct.GAP* %175, i32 0, i32 1
  %177 = load i16, i16* %176, align 2
  %178 = sext i16 %177 to i32
  %179 = sitofp i32 %178 to float
  %180 = fmul float %172, %179
  %181 = fptosi float %180 to i32
  store i32 %181, i32* %w, align 4
  %182 = load %struct.GAP*, %struct.GAP** %3, align 8
  %183 = bitcast %struct.GAP* %182 to i16*
  %184 = load i16, i16* %183, align 4
  %185 = and i16 %184, -7169
  %186 = or i16 %185, 1024
  store i16 %186, i16* %183, align 4
  br label %316

; <label>:187                                     ; preds = %114
  %188 = load float, float* %num, align 4
  %189 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %190 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %189, i32 0, i32 0
  %191 = bitcast %union.anon* %190 to %struct.GAP*
  %192 = getelementptr inbounds %struct.GAP, %struct.GAP* %191, i32 0, i32 1
  %193 = load i16, i16* %192, align 2
  %194 = sext i16 %193 to i32
  %195 = sitofp i32 %194 to float
  %196 = fmul float %188, %195
  %197 = fptosi float %196 to i32
  store i32 %197, i32* %w, align 4
  %198 = load %struct.GAP*, %struct.GAP** %3, align 8
  %199 = bitcast %struct.GAP* %198 to i16*
  %200 = load i16, i16* %199, align 4
  %201 = and i16 %200, -7169
  %202 = or i16 %201, 1024
  store i16 %202, i16* %199, align 4
  br label %316

; <label>:203                                     ; preds = %114
  %204 = load float, float* %num, align 4
  %205 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %206 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %205, i32 0, i32 2
  %207 = load i16, i16* %206, align 2
  %208 = sext i16 %207 to i32
  %209 = sitofp i32 %208 to float
  %210 = fmul float %204, %209
  %211 = fptosi float %210 to i32
  store i32 %211, i32* %w, align 4
  %212 = load %struct.GAP*, %struct.GAP** %3, align 8
  %213 = bitcast %struct.GAP* %212 to i16*
  %214 = load i16, i16* %213, align 4
  %215 = and i16 %214, -7169
  %216 = or i16 %215, 1024
  store i16 %216, i16* %213, align 4
  br label %316

; <label>:217                                     ; preds = %114
  %218 = load float, float* %num, align 4
  %219 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %220 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %219, i32 0, i32 3
  %221 = load i16, i16* %220, align 2
  %222 = sext i16 %221 to i32
  %223 = sitofp i32 %222 to float
  %224 = fmul float %218, %223
  %225 = fptosi float %224 to i32
  store i32 %225, i32* %w, align 4
  %226 = load %struct.GAP*, %struct.GAP** %3, align 8
  %227 = bitcast %struct.GAP* %226 to i16*
  %228 = load i16, i16* %227, align 4
  %229 = and i16 %228, -7169
  %230 = or i16 %229, 1024
  store i16 %230, i16* %227, align 4
  br label %316

; <label>:231                                     ; preds = %114
  %232 = load float, float* %num, align 4
  %233 = fmul float %232, 4.096000e+03
  %234 = fptosi float %233 to i32
  store i32 %234, i32* %w, align 4
  %235 = load %struct.GAP*, %struct.GAP** %3, align 8
  %236 = bitcast %struct.GAP* %235 to i16*
  %237 = load i16, i16* %236, align 4
  %238 = and i16 %237, -7169
  %239 = or i16 %238, 5120
  store i16 %239, i16* %236, align 4
  br label %316

; <label>:240                                     ; preds = %114
  %241 = load float, float* %num, align 4
  %242 = fmul float %241, 4.096000e+03
  %243 = fptosi float %242 to i32
  store i32 %243, i32* %w, align 4
  %244 = load %struct.GAP*, %struct.GAP** %3, align 8
  %245 = bitcast %struct.GAP* %244 to i16*
  %246 = load i16, i16* %245, align 4
  %247 = and i16 %246, -7169
  %248 = or i16 %247, 2048
  store i16 %248, i16* %245, align 4
  br label %316

; <label>:249                                     ; preds = %114
  %250 = load float, float* %num, align 4
  %251 = fmul float %250, 4.096000e+03
  %252 = fptosi float %251 to i32
  store i32 %252, i32* %w, align 4
  %253 = load %struct.GAP*, %struct.GAP** %3, align 8
  %254 = bitcast %struct.GAP* %253 to i16*
  %255 = load i16, i16* %254, align 4
  %256 = and i16 %255, -7169
  %257 = or i16 %256, 3072
  store i16 %257, i16* %254, align 4
  br label %316

; <label>:258                                     ; preds = %114
  %259 = load i32*, i32** %4, align 8
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 160
  br i1 %261, label %262, label %265

; <label>:262                                     ; preds = %258
  %263 = load float, float* %num, align 4
  %264 = fsub float -0.000000e+00, %263
  store float %264, float* %num, align 4
  br label %265

; <label>:265                                     ; preds = %262, %258
  %266 = load i32*, i32** %4, align 8
  store i32 158, i32* %266, align 4
  br label %267

; <label>:267                                     ; preds = %271, %265
  %268 = load float, float* %num, align 4
  %269 = fpext float %268 to double
  %270 = fcmp ogt double %269, 1.800000e+02
  br i1 %270, label %271, label %276

; <label>:271                                     ; preds = %267
  %272 = load float, float* %num, align 4
  %273 = fpext float %272 to double
  %274 = fsub double %273, 3.600000e+02
  %275 = fptrunc double %274 to float
  store float %275, float* %num, align 4
  br label %267

; <label>:276                                     ; preds = %267
  br label %277

; <label>:277                                     ; preds = %281, %276
  %278 = load float, float* %num, align 4
  %279 = fpext float %278 to double
  %280 = fcmp olt double %279, -1.800000e+02
  br i1 %280, label %281, label %286

; <label>:281                                     ; preds = %277
  %282 = load float, float* %num, align 4
  %283 = fpext float %282 to double
  %284 = fadd double %283, 3.600000e+02
  %285 = fptrunc double %284 to float
  store float %285, float* %num, align 4
  br label %277

; <label>:286                                     ; preds = %277
  %287 = load float, float* %num, align 4
  %288 = fpext float %287 to double
  %289 = fcmp oge double %288, -1.800000e+02
  br i1 %289, label %290, label %294

; <label>:290                                     ; preds = %286
  %291 = load float, float* %num, align 4
  %292 = fpext float %291 to double
  %293 = fcmp ole double %292, 1.800000e+02
  br i1 %293, label %297, label %294

; <label>:294                                     ; preds = %290, %286
  %295 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %296 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %295, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %297

; <label>:297                                     ; preds = %294, %290
  %298 = load float, float* %num, align 4
  %299 = fmul float %298, 1.280000e+02
  %300 = fptosi float %299 to i32
  store i32 %300, i32* %w, align 4
  %301 = load %struct.GAP*, %struct.GAP** %3, align 8
  %302 = bitcast %struct.GAP* %301 to i16*
  %303 = load i16, i16* %302, align 4
  %304 = and i16 %303, -7169
  %305 = or i16 %304, 4096
  store i16 %305, i16* %302, align 4
  br label %316

; <label>:306                                     ; preds = %114
  %307 = load %union.rec*, %union.rec** %1, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 1
  %310 = bitcast %union.FIRST_UNION* %309 to %struct.FILE_POS*
  %311 = load %union.rec*, %union.rec** %1, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 4
  %314 = getelementptr inbounds [4 x i8], [4 x i8]* %313, i32 0, i32 0
  %315 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %310, i8* %314)
  br label %453

; <label>:316                                     ; preds = %297, %249, %240, %231, %217, %203, %187, %171, %155, %146, %137, %128, %119
  %317 = load %struct.GAP*, %struct.GAP** %3, align 8
  %318 = bitcast %struct.GAP* %317 to i16*
  %319 = load i16, i16* %318, align 4
  %320 = lshr i16 %319, 10
  %321 = and i16 %320, 7
  %322 = zext i16 %321 to i32
  %323 = icmp eq i32 %322, 3
  br i1 %323, label %324, label %335

; <label>:324                                     ; preds = %316
  %325 = load i32, i32* %w, align 4
  %326 = icmp sgt i32 %325, 4096
  br i1 %326, label %327, label %335

; <label>:327                                     ; preds = %324
  %328 = load %union.rec*, %union.rec** %1, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 1
  %331 = bitcast %union.FIRST_UNION* %330 to %struct.FILE_POS*
  %332 = load float, float* %num, align 4
  %333 = fpext float %332 to double
  %334 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct.FILE_POS* %331, double %333)
  store i32 4096, i32* %w, align 4
  br label %335

; <label>:335                                     ; preds = %327, %324, %316
  %336 = load i32, i32* %w, align 4
  %337 = trunc i32 %336 to i16
  %338 = load %struct.GAP*, %struct.GAP** %3, align 8
  %339 = getelementptr inbounds %struct.GAP, %struct.GAP* %338, i32 0, i32 1
  store i16 %337, i16* %339, align 2
  %340 = load i8*, i8** %str, align 8
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  switch i32 %342, label %397 [
    i32 117, label %343
    i32 0, label %343
    i32 101, label %349
    i32 104, label %357
    i32 120, label %365
    i32 111, label %373
    i32 107, label %381
    i32 116, label %389
  ]

; <label>:343                                     ; preds = %335, %335
  %344 = load %struct.GAP*, %struct.GAP** %3, align 8
  %345 = bitcast %struct.GAP* %344 to i16*
  %346 = load i16, i16* %345, align 4
  %347 = and i16 %346, 8191
  %348 = or i16 %347, 8192
  store i16 %348, i16* %345, align 4
  br label %407

; <label>:349                                     ; preds = %335
  %350 = load %struct.GAP*, %struct.GAP** %3, align 8
  %351 = bitcast %struct.GAP* %350 to i16*
  %352 = load i16, i16* %351, align 4
  %353 = and i16 %352, 8191
  %354 = or i16 %353, 8192
  store i16 %354, i16* %351, align 4
  %355 = load i8*, i8** %str, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** %str, align 8
  br label %407

; <label>:357                                     ; preds = %335
  %358 = load %struct.GAP*, %struct.GAP** %3, align 8
  %359 = bitcast %struct.GAP* %358 to i16*
  %360 = load i16, i16* %359, align 4
  %361 = and i16 %360, 8191
  %362 = or i16 %361, 16384
  store i16 %362, i16* %359, align 4
  %363 = load i8*, i8** %str, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %str, align 8
  br label %407

; <label>:365                                     ; preds = %335
  %366 = load %struct.GAP*, %struct.GAP** %3, align 8
  %367 = bitcast %struct.GAP* %366 to i16*
  %368 = load i16, i16* %367, align 4
  %369 = and i16 %368, 8191
  %370 = or i16 %369, 24576
  store i16 %370, i16* %367, align 4
  %371 = load i8*, i8** %str, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %str, align 8
  br label %407

; <label>:373                                     ; preds = %335
  %374 = load %struct.GAP*, %struct.GAP** %3, align 8
  %375 = bitcast %struct.GAP* %374 to i16*
  %376 = load i16, i16* %375, align 4
  %377 = and i16 %376, 8191
  %378 = or i16 %377, -32768
  store i16 %378, i16* %375, align 4
  %379 = load i8*, i8** %str, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %str, align 8
  br label %407

; <label>:381                                     ; preds = %335
  %382 = load %struct.GAP*, %struct.GAP** %3, align 8
  %383 = bitcast %struct.GAP* %382 to i16*
  %384 = load i16, i16* %383, align 4
  %385 = and i16 %384, 8191
  %386 = or i16 %385, -24576
  store i16 %386, i16* %383, align 4
  %387 = load i8*, i8** %str, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %str, align 8
  br label %407

; <label>:389                                     ; preds = %335
  %390 = load %struct.GAP*, %struct.GAP** %3, align 8
  %391 = bitcast %struct.GAP* %390 to i16*
  %392 = load i16, i16* %391, align 4
  %393 = and i16 %392, 8191
  %394 = or i16 %393, -16384
  store i16 %394, i16* %391, align 4
  %395 = load i8*, i8** %str, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** %str, align 8
  br label %407

; <label>:397                                     ; preds = %335
  %398 = load %union.rec*, %union.rec** %1, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 1
  %401 = bitcast %union.FIRST_UNION* %400 to %struct.FILE_POS*
  %402 = load %union.rec*, %union.rec** %1, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 4
  %405 = getelementptr inbounds [4 x i8], [4 x i8]* %404, i32 0, i32 0
  %406 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %401, i8* %405)
  br label %453

; <label>:407                                     ; preds = %389, %381, %373, %365, %357, %349, %343
  %408 = load i8*, i8** %str, align 8
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = icmp eq i32 %410, 117
  br i1 %411, label %412, label %438

; <label>:412                                     ; preds = %407
  %413 = load %struct.GAP*, %struct.GAP** %3, align 8
  %414 = bitcast %struct.GAP* %413 to i16*
  %415 = load i16, i16* %414, align 4
  %416 = lshr i16 %415, 13
  %417 = zext i16 %416 to i32
  %418 = icmp eq i32 %417, 2
  br i1 %418, label %419, label %429

; <label>:419                                     ; preds = %412
  %420 = load %union.rec*, %union.rec** %1, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 1
  %423 = bitcast %union.FIRST_UNION* %422 to %struct.FILE_POS*
  %424 = load %union.rec*, %union.rec** %1, align 8
  %425 = bitcast %union.rec* %424 to %struct.word_type*
  %426 = getelementptr inbounds %struct.word_type, %struct.word_type* %425, i32 0, i32 4
  %427 = getelementptr inbounds [4 x i8], [4 x i8]* %426, i32 0, i32 0
  %428 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %423, i8* %427)
  br label %435

; <label>:429                                     ; preds = %412
  %430 = load %struct.GAP*, %struct.GAP** %3, align 8
  %431 = bitcast %struct.GAP* %430 to i16*
  %432 = load i16, i16* %431, align 4
  %433 = and i16 %432, -129
  %434 = or i16 %433, 128
  store i16 %434, i16* %431, align 4
  br label %435

; <label>:435                                     ; preds = %429, %419
  %436 = load i8*, i8** %str, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %str, align 8
  br label %438

; <label>:438                                     ; preds = %435, %407
  %439 = load i8*, i8** %str, align 8
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %453

; <label>:443                                     ; preds = %438
  %444 = load %union.rec*, %union.rec** %1, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 1
  %447 = bitcast %union.FIRST_UNION* %446 to %struct.FILE_POS*
  %448 = load %union.rec*, %union.rec** %1, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 4
  %451 = getelementptr inbounds [4 x i8], [4 x i8]* %450, i32 0, i32 0
  %452 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %447, i8* %451)
  br label %453

; <label>:453                                     ; preds = %39, %54, %78, %306, %397, %443, %438
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @FontSize(i32, %union.rec*) #1

; Function Attrs: nounwind uwtable
define i32 @MinGap(i32 %a, i32 %b, i32 %c, %struct.GAP* %xgap) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.GAP*, align 8
  %res = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  store %struct.GAP* %xgap, %struct.GAP** %4, align 8
  %5 = load %struct.GAP*, %struct.GAP** %4, align 8
  %6 = bitcast %struct.GAP* %5 to i16*
  %7 = load i16, i16* %6, align 4
  %8 = lshr i16 %7, 10
  %9 = and i16 %8, 7
  %10 = zext i16 %9 to i32
  switch i32 %10, label %28 [
    i32 1, label %11
    i32 2, label %16
    i32 3, label %17
    i32 5, label %18
  ]

; <label>:11                                      ; preds = %0
  %12 = load %struct.GAP*, %struct.GAP** %4, align 8
  %13 = getelementptr inbounds %struct.GAP, %struct.GAP* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %w, align 4
  br label %31

; <label>:16                                      ; preds = %0
  store i32 0, i32* %w, align 4
  br label %31

; <label>:17                                      ; preds = %0
  store i32 0, i32* %w, align 4
  br label %31

; <label>:18                                      ; preds = %0
  %19 = load %struct.GAP*, %struct.GAP** %4, align 8
  %20 = getelementptr inbounds %struct.GAP, %struct.GAP* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = mul nsw i32 %22, %25
  %27 = sdiv i32 %26, 4096
  store i32 %27, i32* %w, align 4
  br label %31

; <label>:28                                      ; preds = %0
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %31

; <label>:31                                      ; preds = %28, %18, %17, %16, %11
  %32 = load %struct.GAP*, %struct.GAP** %4, align 8
  %33 = bitcast %struct.GAP* %32 to i16*
  %34 = load i16, i16* %33, align 4
  %35 = lshr i16 %34, 13
  %36 = zext i16 %35 to i32
  switch i32 %36, label %132 [
    i32 0, label %37
    i32 7, label %40
    i32 2, label %40
    i32 1, label %40
    i32 3, label %56
    i32 4, label %100
    i32 5, label %102
    i32 6, label %128
  ]

; <label>:37                                      ; preds = %31
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %135

; <label>:40                                      ; preds = %31, %31, %31
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %w, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp slt i32 8388607, %45
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %40
  br label %54

; <label>:48                                      ; preds = %40
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %w, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %51, %52
  br label %54

; <label>:54                                      ; preds = %48, %47
  %55 = phi i32 [ 8388607, %47 ], [ %53, %48 ]
  store i32 %55, i32* %res, align 4
  br label %135

; <label>:56                                      ; preds = %31
  %57 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %58 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

; <label>:61                                      ; preds = %56
  %62 = load i32, i32* %w, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %w, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double 1.000000e-01, %67
  %69 = fptosi double %68 to i32
  %70 = add nsw i32 %65, %69
  %71 = icmp slt i32 %62, %70
  br i1 %71, label %72, label %81

; <label>:72                                      ; preds = %61
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %w, align 4
  %77 = sitofp i32 %76 to double
  %78 = fmul double 1.000000e-01, %77
  %79 = fptosi double %78 to i32
  %80 = add nsw i32 %75, %79
  br label %83

; <label>:81                                      ; preds = %61
  %82 = load i32, i32* %w, align 4
  br label %83

; <label>:83                                      ; preds = %81, %72
  %84 = phi i32 [ %80, %72 ], [ %82, %81 ]
  store i32 %84, i32* %res, align 4
  br label %99

; <label>:85                                      ; preds = %56
  %86 = load i32, i32* %w, align 4
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %95

; <label>:91                                      ; preds = %85
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %92, %93
  br label %97

; <label>:95                                      ; preds = %85
  %96 = load i32, i32* %w, align 4
  br label %97

; <label>:97                                      ; preds = %95, %91
  %98 = phi i32 [ %94, %91 ], [ %96, %95 ]
  store i32 %98, i32* %res, align 4
  br label %99

; <label>:99                                      ; preds = %97, %83
  br label %135

; <label>:100                                     ; preds = %31
  %101 = load i32, i32* %w, align 4
  store i32 %101, i32* %res, align 4
  br label %135

; <label>:102                                     ; preds = %31
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* %2, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %108

; <label>:106                                     ; preds = %102
  %107 = load i32, i32* %2, align 4
  br label %110

; <label>:108                                     ; preds = %102
  %109 = load i32, i32* %1, align 4
  br label %110

; <label>:110                                     ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load i32, i32* %w, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %116

; <label>:114                                     ; preds = %110
  %115 = load i32, i32* %w, align 4
  br label %126

; <label>:116                                     ; preds = %110
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* %2, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %122

; <label>:120                                     ; preds = %116
  %121 = load i32, i32* %2, align 4
  br label %124

; <label>:122                                     ; preds = %116
  %123 = load i32, i32* %1, align 4
  br label %124

; <label>:124                                     ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  br label %126

; <label>:126                                     ; preds = %124, %114
  %127 = phi i32 [ %115, %114 ], [ %125, %124 ]
  store i32 %127, i32* %res, align 4
  br label %135

; <label>:128                                     ; preds = %31
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* %2, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %res, align 4
  br label %135

; <label>:132                                     ; preds = %31
  %133 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %134 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %135

; <label>:135                                     ; preds = %132, %128, %126, %100, %99, %54, %37
  %136 = load i32, i32* %res, align 4
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define i32 @ExtraGap(i32 %a, i32 %b, %struct.GAP* %xgap, i32 %dir) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.GAP*, align 8
  %4 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %res = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store %struct.GAP* %xgap, %struct.GAP** %3, align 8
  store i32 %dir, i32* %4, align 4
  %5 = load %struct.GAP*, %struct.GAP** %3, align 8
  %6 = bitcast %struct.GAP* %5 to i16*
  %7 = load i16, i16* %6, align 4
  %8 = lshr i16 %7, 10
  %9 = and i16 %8, 7
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %0
  %13 = load %struct.GAP*, %struct.GAP** %3, align 8
  %14 = getelementptr inbounds %struct.GAP, %struct.GAP* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  br label %18

; <label>:17                                      ; preds = %0
  br label %18

; <label>:18                                      ; preds = %17, %12
  %19 = phi i32 [ %16, %12 ], [ 0, %17 ]
  store i32 %19, i32* %w, align 4
  %20 = load %struct.GAP*, %struct.GAP** %3, align 8
  %21 = bitcast %struct.GAP* %20 to i16*
  %22 = load i16, i16* %21, align 4
  %23 = lshr i16 %22, 13
  %24 = zext i16 %23 to i32
  switch i32 %24, label %113 [
    i32 0, label %25
    i32 7, label %28
    i32 2, label %28
    i32 1, label %28
    i32 3, label %29
    i32 4, label %73
    i32 5, label %74
    i32 6, label %112
  ]

; <label>:25                                      ; preds = %18
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %116

; <label>:28                                      ; preds = %18, %18, %18
  store i32 0, i32* %res, align 4
  br label %116

; <label>:29                                      ; preds = %18
  %30 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %31 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %w, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double 9.000000e-01, %36
  %38 = fptosi double %37 to i32
  %39 = load i32, i32* %1, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %2, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp slt i32 0, %42
  br i1 %43, label %44, label %53

; <label>:44                                      ; preds = %34
  %45 = load i32, i32* %w, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double 9.000000e-01, %46
  %48 = fptosi double %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %50, %51
  br label %54

; <label>:53                                      ; preds = %34
  br label %54

; <label>:54                                      ; preds = %53, %44
  %55 = phi i32 [ %52, %44 ], [ 0, %53 ]
  store i32 %55, i32* %res, align 4
  br label %72

; <label>:56                                      ; preds = %29
  %57 = load i32, i32* %w, align 4
  %58 = load i32, i32* %1, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp slt i32 0, %61
  br i1 %62, label %63, label %69

; <label>:63                                      ; preds = %56
  %64 = load i32, i32* %w, align 4
  %65 = load i32, i32* %1, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %2, align 4
  %68 = sub nsw i32 %66, %67
  br label %70

; <label>:69                                      ; preds = %56
  br label %70

; <label>:70                                      ; preds = %69, %63
  %71 = phi i32 [ %68, %63 ], [ 0, %69 ]
  store i32 %71, i32* %res, align 4
  br label %72

; <label>:72                                      ; preds = %70, %54
  br label %116

; <label>:73                                      ; preds = %18
  store i32 8388607, i32* %res, align 4
  br label %116

; <label>:74                                      ; preds = %18
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %w, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %74
  %80 = load i32, i32* %w, align 4
  br label %83

; <label>:81                                      ; preds = %74
  %82 = load i32, i32* %2, align 4
  br label %83

; <label>:83                                      ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = icmp slt i32 %75, %84
  br i1 %85, label %86, label %96

; <label>:86                                      ; preds = %83
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %w, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

; <label>:90                                      ; preds = %86
  %91 = load i32, i32* %w, align 4
  br label %94

; <label>:92                                      ; preds = %86
  %93 = load i32, i32* %2, align 4
  br label %94

; <label>:94                                      ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  br label %98

; <label>:96                                      ; preds = %83
  %97 = load i32, i32* %1, align 4
  br label %98

; <label>:98                                      ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %tmp, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 151
  br i1 %101, label %102, label %106

; <label>:102                                     ; preds = %98
  %103 = load i32, i32* %tmp, align 4
  %104 = load i32, i32* %2, align 4
  %105 = sub nsw i32 %103, %104
  br label %110

; <label>:106                                     ; preds = %98
  %107 = load i32, i32* %tmp, align 4
  %108 = load i32, i32* %1, align 4
  %109 = sub nsw i32 %107, %108
  br label %110

; <label>:110                                     ; preds = %106, %102
  %111 = phi i32 [ %105, %102 ], [ %109, %106 ]
  store i32 %111, i32* %res, align 4
  br label %116

; <label>:112                                     ; preds = %18
  store i32 0, i32* %res, align 4
  br label %116

; <label>:113                                     ; preds = %18
  %114 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %115 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %116

; <label>:116                                     ; preds = %113, %112, %110, %73, %72, %28, %25
  %117 = load i32, i32* %res, align 4
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define i32 @ActualGap(i32 %prevf, i32 %b, i32 %f, %struct.GAP* %xgap, i32 %frame_size, i32 %mk) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.GAP*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %res = alloca i32, align 4
  %w = alloca i32, align 4
  %w2 = alloca i32, align 4
  store i32 %prevf, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %f, i32* %3, align 4
  store %struct.GAP* %xgap, %struct.GAP** %4, align 8
  store i32 %frame_size, i32* %5, align 4
  store i32 %mk, i32* %6, align 4
  %7 = load %struct.GAP*, %struct.GAP** %4, align 8
  %8 = bitcast %struct.GAP* %7 to i16*
  %9 = load i16, i16* %8, align 4
  %10 = lshr i16 %9, 10
  %11 = and i16 %10, 7
  %12 = zext i16 %11 to i32
  switch i32 %12, label %63 [
    i32 1, label %13
    i32 2, label %18
    i32 3, label %34
    i32 5, label %53
  ]

; <label>:13                                      ; preds = %0
  %14 = load %struct.GAP*, %struct.GAP** %4, align 8
  %15 = getelementptr inbounds %struct.GAP, %struct.GAP* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  store i32 %17, i32* %w, align 4
  br label %66

; <label>:18                                      ; preds = %0
  %19 = load %struct.GAP*, %struct.GAP** %4, align 8
  %20 = getelementptr inbounds %struct.GAP, %struct.GAP* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i32 %22, 4096
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %18
  store i32 8388607, i32* %w, align 4
  br label %33

; <label>:25                                      ; preds = %18
  %26 = load %struct.GAP*, %struct.GAP** %4, align 8
  %27 = getelementptr inbounds %struct.GAP, %struct.GAP* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 4096
  store i32 %32, i32* %w, align 4
  br label %33

; <label>:33                                      ; preds = %25, %24
  br label %66

; <label>:34                                      ; preds = %0
  %35 = load %struct.GAP*, %struct.GAP** %4, align 8
  %36 = getelementptr inbounds %struct.GAP, %struct.GAP* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %41, %42
  %44 = mul nsw i32 %38, %43
  %45 = sdiv i32 %44, 4096
  store i32 %45, i32* %w, align 4
  %46 = load i32, i32* %w, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %34
  br label %51

; <label>:49                                      ; preds = %34
  %50 = load i32, i32* %w, align 4
  br label %51

; <label>:51                                      ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  store i32 %52, i32* %w, align 4
  br label %66

; <label>:53                                      ; preds = %0
  %54 = load %struct.GAP*, %struct.GAP** %4, align 8
  %55 = getelementptr inbounds %struct.GAP, %struct.GAP* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %58, %59
  %61 = mul nsw i32 %57, %60
  %62 = sdiv i32 %61, 4096
  store i32 %62, i32* %w, align 4
  br label %66

; <label>:63                                      ; preds = %0
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  br label %66

; <label>:66                                      ; preds = %63, %53, %51, %33, %13
  %67 = load %struct.GAP*, %struct.GAP** %4, align 8
  %68 = bitcast %struct.GAP* %67 to i16*
  %69 = load i16, i16* %68, align 4
  %70 = lshr i16 %69, 13
  %71 = zext i16 %70 to i32
  switch i32 %71, label %174 [
    i32 0, label %72
    i32 7, label %77
    i32 2, label %77
    i32 1, label %77
    i32 3, label %83
    i32 4, label %127
    i32 5, label %129
    i32 6, label %155
  ]

; <label>:72                                      ; preds = %66
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %73)
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %76 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %w2, align 4
  br label %177

; <label>:77                                      ; preds = %66, %66, %66
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %w, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %w2, align 4
  br label %177

; <label>:83                                      ; preds = %66
  %84 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %85 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

; <label>:88                                      ; preds = %83
  %89 = load i32, i32* %w, align 4
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %w, align 4
  %94 = sitofp i32 %93 to double
  %95 = fmul double 1.000000e-01, %94
  %96 = fptosi double %95 to i32
  %97 = add nsw i32 %92, %96
  %98 = icmp slt i32 %89, %97
  br i1 %98, label %99, label %108

; <label>:99                                      ; preds = %88
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %w, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double 1.000000e-01, %104
  %106 = fptosi double %105 to i32
  %107 = add nsw i32 %102, %106
  br label %110

; <label>:108                                     ; preds = %88
  %109 = load i32, i32* %w, align 4
  br label %110

; <label>:110                                     ; preds = %108, %99
  %111 = phi i32 [ %107, %99 ], [ %109, %108 ]
  store i32 %111, i32* %w2, align 4
  br label %126

; <label>:112                                     ; preds = %83
  %113 = load i32, i32* %w, align 4
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %114, %115
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %122

; <label>:118                                     ; preds = %112
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* %2, align 4
  %121 = add nsw i32 %119, %120
  br label %124

; <label>:122                                     ; preds = %112
  %123 = load i32, i32* %w, align 4
  br label %124

; <label>:124                                     ; preds = %122, %118
  %125 = phi i32 [ %121, %118 ], [ %123, %122 ]
  store i32 %125, i32* %w2, align 4
  br label %126

; <label>:126                                     ; preds = %124, %110
  br label %177

; <label>:127                                     ; preds = %66
  %128 = load i32, i32* %w, align 4
  store i32 %128, i32* %w2, align 4
  br label %177

; <label>:129                                     ; preds = %66
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* %2, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %135

; <label>:133                                     ; preds = %129
  %134 = load i32, i32* %2, align 4
  br label %137

; <label>:135                                     ; preds = %129
  %136 = load i32, i32* %1, align 4
  br label %137

; <label>:137                                     ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load i32, i32* %w, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %143

; <label>:141                                     ; preds = %137
  %142 = load i32, i32* %w, align 4
  br label %153

; <label>:143                                     ; preds = %137
  %144 = load i32, i32* %1, align 4
  %145 = load i32, i32* %2, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %149

; <label>:147                                     ; preds = %143
  %148 = load i32, i32* %2, align 4
  br label %151

; <label>:149                                     ; preds = %143
  %150 = load i32, i32* %1, align 4
  br label %151

; <label>:151                                     ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  br label %153

; <label>:153                                     ; preds = %151, %141
  %154 = phi i32 [ %142, %141 ], [ %152, %151 ]
  store i32 %154, i32* %w2, align 4
  br label %177

; <label>:155                                     ; preds = %66
  %156 = load i32, i32* %w, align 4
  %157 = load i32, i32* %2, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %w2, align 4
  %161 = load i32, i32* %w2, align 4
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* %2, align 4
  %164 = add nsw i32 %162, %163
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %170

; <label>:166                                     ; preds = %155
  %167 = load i32, i32* %1, align 4
  %168 = load i32, i32* %2, align 4
  %169 = add nsw i32 %167, %168
  br label %172

; <label>:170                                     ; preds = %155
  %171 = load i32, i32* %w2, align 4
  br label %172

; <label>:172                                     ; preds = %170, %166
  %173 = phi i32 [ %169, %166 ], [ %171, %170 ]
  store i32 %173, i32* %w2, align 4
  br label %177

; <label>:174                                     ; preds = %66
  %175 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %176 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %w2, align 4
  br label %177

; <label>:177                                     ; preds = %174, %172, %153, %127, %126, %77, %72
  %178 = load i32, i32* %w2, align 4
  %179 = icmp slt i32 8388607, %178
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %177
  br label %183

; <label>:181                                     ; preds = %177
  %182 = load i32, i32* %w2, align 4
  br label %183

; <label>:183                                     ; preds = %181, %180
  %184 = phi i32 [ 8388607, %180 ], [ %182, %181 ]
  store i32 %184, i32* %res, align 4
  %185 = load i32, i32* %res, align 4
  ret i32 %185
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}