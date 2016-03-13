; ModuleID = 'z34.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.rect_coord = type { double, double }
%struct.polar_coord = type { double, double }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
define void @RotateSize(i32* %xcb, i32* %xcf, i32* %xrb, i32* %xrf, %union.rec* %y, i32 %theta) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.rec*, align 8
  %6 = alloca i32, align 4
  %ycorners = alloca [4 x %struct.rect_coord], align 16
  %xcorner = alloca %struct.rect_coord, align 8
  %pol = alloca %struct.polar_coord, align 8
  %maxx = alloca double, align 8
  %maxy = alloca double, align 8
  %minx = alloca double, align 8
  %miny = alloca double, align 8
  %ang = alloca double, align 8
  %i = alloca i32, align 4
  store i32* %xcb, i32** %1, align 8
  store i32* %xcf, i32** %2, align 8
  store i32* %xrb, i32** %3, align 8
  store i32* %xrf, i32** %4, align 8
  store %union.rec* %y, %union.rec** %5, align 8
  store i32 %theta, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 2.000000e+00
  %10 = fmul double %9, 0x400921FB54442D18
  %11 = fdiv double %10, 4.608000e+04
  store double %11, double* %ang, align 8
  %12 = load %union.rec*, %union.rec** %5, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 3
  %15 = bitcast %union.THIRD_UNION* %14 to %struct.anon.6*
  %16 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %15, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i32 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to float
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 0
  %22 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %21, i32 0, i32 0
  store double %20, double* %22, align 8
  %23 = load %union.rec*, %union.rec** %5, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 3
  %26 = bitcast %union.THIRD_UNION* %25 to %struct.anon.6*
  %27 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i32 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to float
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 0
  %33 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %32, i32 0, i32 1
  store double %31, double* %33, align 8
  %34 = load %union.rec*, %union.rec** %5, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 3
  %37 = bitcast %union.THIRD_UNION* %36 to %struct.anon.6*
  %38 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i32 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to float
  %42 = fsub float -0.000000e+00, %41
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 1
  %45 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %44, i32 0, i32 0
  store double %43, double* %45, align 8
  %46 = load %union.rec*, %union.rec** %5, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 3
  %49 = bitcast %union.THIRD_UNION* %48 to %struct.anon.6*
  %50 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i32 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to float
  %54 = fpext float %53 to double
  %55 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 1
  %56 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %55, i32 0, i32 1
  store double %54, double* %56, align 8
  %57 = load %union.rec*, %union.rec** %5, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 3
  %60 = bitcast %union.THIRD_UNION* %59 to %struct.anon.6*
  %61 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i32 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to float
  %65 = fsub float -0.000000e+00, %64
  %66 = fpext float %65 to double
  %67 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 2
  %68 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %67, i32 0, i32 0
  store double %66, double* %68, align 8
  %69 = load %union.rec*, %union.rec** %5, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 3
  %72 = bitcast %union.THIRD_UNION* %71 to %struct.anon.6*
  %73 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %72, i32 0, i32 1
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i32 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to float
  %77 = fsub float -0.000000e+00, %76
  %78 = fpext float %77 to double
  %79 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 2
  %80 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %79, i32 0, i32 1
  store double %78, double* %80, align 8
  %81 = load %union.rec*, %union.rec** %5, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 3
  %84 = bitcast %union.THIRD_UNION* %83 to %struct.anon.6*
  %85 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %84, i32 0, i32 1
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i32 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to float
  %89 = fpext float %88 to double
  %90 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 3
  %91 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %90, i32 0, i32 0
  store double %89, double* %91, align 8
  %92 = load %union.rec*, %union.rec** %5, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 3
  %95 = bitcast %union.THIRD_UNION* %94 to %struct.anon.6*
  %96 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %95, i32 0, i32 1
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i32 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to float
  %100 = fsub float -0.000000e+00, %99
  %101 = fpext float %100 to double
  %102 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 3
  %103 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %102, i32 0, i32 1
  store double %101, double* %103, align 8
  store double -8.388607e+06, double* %maxy, align 8
  store double -8.388607e+06, double* %maxx, align 8
  store double 8.388607e+06, double* %miny, align 8
  store double 8.388607e+06, double* %minx, align 8
  store i32 0, i32* %i, align 4
  br label %104

; <label>:104                                     ; preds = %225, %0
  %105 = load i32, i32* %i, align 4
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %228

; <label>:107                                     ; preds = %104
  %108 = load i32, i32* %i, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %109
  %111 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %110, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = fcmp oeq double %112, 0.000000e+00
  br i1 %113, label %114, label %124

; <label>:114                                     ; preds = %107
  %115 = load i32, i32* %i, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %116
  %118 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %117, i32 0, i32 1
  %119 = load double, double* %118, align 8
  %120 = fcmp oeq double %119, 0.000000e+00
  br i1 %120, label %121, label %124

; <label>:121                                     ; preds = %114
  %122 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  store double 0.000000e+00, double* %122, align 8
  %123 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  store double 0.000000e+00, double* %123, align 8
  br label %162

; <label>:124                                     ; preds = %114, %107
  %125 = load i32, i32* %i, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %126
  %128 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %127, i32 0, i32 1
  %129 = load double, double* %128, align 8
  %130 = load i32, i32* %i, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %131
  %133 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %132, i32 0, i32 0
  %134 = load double, double* %133, align 8
  %135 = call double @atan2(double %129, double %134) #2
  %136 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  store double %135, double* %136, align 8
  %137 = load i32, i32* %i, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %138
  %140 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %139, i32 0, i32 0
  %141 = load double, double* %140, align 8
  %142 = load i32, i32* %i, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %143
  %145 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %144, i32 0, i32 0
  %146 = load double, double* %145, align 8
  %147 = fmul double %141, %146
  %148 = load i32, i32* %i, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %149
  %151 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %150, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = load i32, i32* %i, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %154
  %156 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %155, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = fmul double %152, %157
  %159 = fadd double %147, %158
  %160 = call double @sqrt(double %159) #2
  %161 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  store double %160, double* %161, align 8
  br label %162

; <label>:162                                     ; preds = %124, %121
  %163 = load double, double* %ang, align 8
  %164 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = fadd double %165, %163
  store double %166, double* %164, align 8
  %167 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  %168 = load double, double* %167, align 8
  %169 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  %170 = load double, double* %169, align 8
  %171 = call double @cos(double %170) #2
  %172 = fmul double %168, %171
  %173 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  store double %172, double* %173, align 8
  %174 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  %175 = load double, double* %174, align 8
  %176 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  %177 = load double, double* %176, align 8
  %178 = call double @sin(double %177) #2
  %179 = fmul double %175, %178
  %180 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  store double %179, double* %180, align 8
  %181 = load double, double* %maxx, align 8
  %182 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %183 = load double, double* %182, align 8
  %184 = fcmp olt double %181, %183
  br i1 %184, label %185, label %188

; <label>:185                                     ; preds = %162
  %186 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %187 = load double, double* %186, align 8
  br label %190

; <label>:188                                     ; preds = %162
  %189 = load double, double* %maxx, align 8
  br label %190

; <label>:190                                     ; preds = %188, %185
  %191 = phi double [ %187, %185 ], [ %189, %188 ]
  store double %191, double* %maxx, align 8
  %192 = load double, double* %minx, align 8
  %193 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = fcmp olt double %192, %194
  br i1 %195, label %196, label %198

; <label>:196                                     ; preds = %190
  %197 = load double, double* %minx, align 8
  br label %201

; <label>:198                                     ; preds = %190
  %199 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %200 = load double, double* %199, align 8
  br label %201

; <label>:201                                     ; preds = %198, %196
  %202 = phi double [ %197, %196 ], [ %200, %198 ]
  store double %202, double* %minx, align 8
  %203 = load double, double* %maxy, align 8
  %204 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %205 = load double, double* %204, align 8
  %206 = fcmp olt double %203, %205
  br i1 %206, label %207, label %210

; <label>:207                                     ; preds = %201
  %208 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %209 = load double, double* %208, align 8
  br label %212

; <label>:210                                     ; preds = %201
  %211 = load double, double* %maxy, align 8
  br label %212

; <label>:212                                     ; preds = %210, %207
  %213 = phi double [ %209, %207 ], [ %211, %210 ]
  store double %213, double* %maxy, align 8
  %214 = load double, double* %miny, align 8
  %215 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %216 = load double, double* %215, align 8
  %217 = fcmp olt double %214, %216
  br i1 %217, label %218, label %220

; <label>:218                                     ; preds = %212
  %219 = load double, double* %miny, align 8
  br label %223

; <label>:220                                     ; preds = %212
  %221 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %222 = load double, double* %221, align 8
  br label %223

; <label>:223                                     ; preds = %220, %218
  %224 = phi double [ %219, %218 ], [ %222, %220 ]
  store double %224, double* %miny, align 8
  br label %225

; <label>:225                                     ; preds = %223
  %226 = load i32, i32* %i, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %i, align 4
  br label %104

; <label>:228                                     ; preds = %104
  %229 = load double, double* %minx, align 8
  %230 = fptosi double %229 to i32
  %231 = sub nsw i32 0, %230
  %232 = load i32*, i32** %1, align 8
  store i32 %231, i32* %232, align 4
  %233 = load double, double* %maxx, align 8
  %234 = fptosi double %233 to i32
  %235 = load i32*, i32** %2, align 8
  store i32 %234, i32* %235, align 4
  %236 = load double, double* %maxy, align 8
  %237 = fptosi double %236 to i32
  %238 = load i32*, i32** %3, align 8
  store i32 %237, i32* %238, align 4
  %239 = load double, double* %miny, align 8
  %240 = fptosi double %239 to i32
  %241 = sub nsw i32 0, %240
  %242 = load i32*, i32** %4, align 8
  store i32 %241, i32* %242, align 4
  ret void
}

; Function Attrs: nounwind
declare double @atan2(double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
