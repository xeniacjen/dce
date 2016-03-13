; ModuleID = 'z30.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.uses_type = type { %union.rec*, %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }

@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@StartSym = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @InsertUses(%union.rec* %x, %union.rec* %y) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 143
  br i1 %10, label %11, label %93

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 143
  br i1 %19, label %20, label %93

; <label>:20                                      ; preds = %11
  %21 = load %union.rec*, %union.rec** %2, align 8
  %22 = bitcast %union.rec* %21 to %struct.symbol_type*
  %23 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %22, i32 0, i32 12
  %24 = load i16, i16* %23, align 2
  %25 = icmp ne i16 %24, 0
  br i1 %25, label %93, label %26

; <label>:26                                      ; preds = %20
  store i32 2, i32* @zz_size, align 4
  br i1 false, label %27, label %30

; <label>:27                                      ; preds = %26
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %28)
  br label %55

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %32
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = icmp eq %union.rec* %34, null
  br i1 %35, label %36, label %40

; <label>:36                                      ; preds = %30
  %37 = load i32, i32* @zz_size, align 4
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %39 = call %union.rec* @GetMemory(i32 %37, %struct.FILE_POS* %38)
  store %union.rec* %39, %union.rec** %tmp, align 8
  br label %54

; <label>:40                                      ; preds = %30
  %41 = load i32, i32* @zz_size, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %42
  %44 = load %union.rec*, %union.rec** %43, align 8
  store %union.rec* %44, %union.rec** @zz_hold, align 8
  store %union.rec* %44, %union.rec** %tmp, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 0
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  %51 = load i32, i32* @zz_size, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %52
  store %union.rec* %50, %union.rec** %53, align 8
  br label %54

; <label>:54                                      ; preds = %40, %36
  br label %55

; <label>:55                                      ; preds = %54, %27
  %56 = load %union.rec*, %union.rec** %2, align 8
  %57 = load %union.rec*, %union.rec** %tmp, align 8
  %58 = bitcast %union.rec* %57 to %struct.uses_type*
  %59 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %58, i32 0, i32 0
  store %union.rec* %56, %union.rec** %59, align 8
  %60 = load %union.rec*, %union.rec** %1, align 8
  %61 = bitcast %union.rec* %60 to %struct.symbol_type*
  %62 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %61, i32 0, i32 5
  %63 = load %union.rec*, %union.rec** %62, align 8
  %64 = icmp eq %union.rec* %63, null
  br i1 %64, label %65, label %70

; <label>:65                                      ; preds = %55
  %66 = load %union.rec*, %union.rec** %tmp, align 8
  %67 = load %union.rec*, %union.rec** %tmp, align 8
  %68 = bitcast %union.rec* %67 to %struct.uses_type*
  %69 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %68, i32 0, i32 1
  store %union.rec* %66, %union.rec** %69, align 8
  br label %88

; <label>:70                                      ; preds = %55
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = bitcast %union.rec* %71 to %struct.symbol_type*
  %73 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %72, i32 0, i32 5
  %74 = load %union.rec*, %union.rec** %73, align 8
  %75 = bitcast %union.rec* %74 to %struct.uses_type*
  %76 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %75, i32 0, i32 1
  %77 = load %union.rec*, %union.rec** %76, align 8
  %78 = load %union.rec*, %union.rec** %tmp, align 8
  %79 = bitcast %union.rec* %78 to %struct.uses_type*
  %80 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %79, i32 0, i32 1
  store %union.rec* %77, %union.rec** %80, align 8
  %81 = load %union.rec*, %union.rec** %tmp, align 8
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.symbol_type*
  %84 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %83, i32 0, i32 5
  %85 = load %union.rec*, %union.rec** %84, align 8
  %86 = bitcast %union.rec* %85 to %struct.uses_type*
  %87 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %86, i32 0, i32 1
  store %union.rec* %81, %union.rec** %87, align 8
  br label %88

; <label>:88                                      ; preds = %70, %65
  %89 = load %union.rec*, %union.rec** %tmp, align 8
  %90 = load %union.rec*, %union.rec** %1, align 8
  %91 = bitcast %union.rec* %90 to %struct.symbol_type*
  %92 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %91, i32 0, i32 5
  store %union.rec* %89, %union.rec** %92, align 8
  br label %93

; <label>:93                                      ; preds = %88, %20, %11, %0
  %94 = load %union.rec*, %union.rec** %2, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 1
  %97 = bitcast %union.FIRST_UNION* %96 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp sge i32 %100, 144
  br i1 %101, label %102, label %158

; <label>:102                                     ; preds = %93
  %103 = load %union.rec*, %union.rec** %2, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 1
  %106 = bitcast %union.FIRST_UNION* %105 to %struct.anon*
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sle i32 %109, 146
  br i1 %110, label %111, label %158

; <label>:111                                     ; preds = %102
  %112 = load %union.rec*, %union.rec** %2, align 8
  %113 = bitcast %union.rec* %112 to %struct.symbol_type*
  %114 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %113, i32 0, i32 3
  %115 = load %union.rec*, %union.rec** %114, align 8
  %116 = load %union.rec*, %union.rec** %1, align 8
  %117 = icmp eq %union.rec* %115, %116
  %118 = select i1 %117, i32 1, i32 2
  %119 = load %union.rec*, %union.rec** %2, align 8
  %120 = bitcast %union.rec* %119 to %struct.symbol_type*
  %121 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %120, i32 0, i32 14
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, %118
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %121, align 1
  %126 = load %union.rec*, %union.rec** %2, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 2
  %129 = bitcast %union.SECOND_UNION* %128 to %struct.anon.5*
  %130 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %129, i32 0, i32 1
  %131 = bitcast [3 x i8]* %130 to i24*
  %132 = load i24, i24* %131, align 1
  %133 = lshr i24 %132, 15
  %134 = and i24 %133, 1
  %135 = zext i24 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

; <label>:137                                     ; preds = %111
  %138 = load %union.rec*, %union.rec** %2, align 8
  %139 = bitcast %union.rec* %138 to %struct.symbol_type*
  %140 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %139, i32 0, i32 14
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %157

; <label>:144                                     ; preds = %137, %111
  %145 = load %union.rec*, %union.rec** %2, align 8
  %146 = bitcast %union.rec* %145 to %struct.symbol_type*
  %147 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %146, i32 0, i32 3
  %148 = load %union.rec*, %union.rec** %147, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 2
  %151 = bitcast %union.SECOND_UNION* %150 to %struct.anon.5*
  %152 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %151, i32 0, i32 1
  %153 = bitcast [3 x i8]* %152 to i24*
  %154 = load i24, i24* %153, align 1
  %155 = and i24 %154, -32769
  %156 = or i24 %155, 32768
  store i24 %156, i24* %153, align 1
  br label %157

; <label>:157                                     ; preds = %144, %137
  br label %187

; <label>:158                                     ; preds = %102, %93
  %159 = load %union.rec*, %union.rec** %2, align 8
  %160 = bitcast %union.rec* %159 to %struct.symbol_type*
  %161 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %160, i32 0, i32 4
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = icmp eq %union.rec* %162, null
  br i1 %163, label %176, label %164

; <label>:164                                     ; preds = %158
  %165 = load %union.rec*, %union.rec** %2, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 2
  %168 = bitcast %union.SECOND_UNION* %167 to %struct.anon.5*
  %169 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %168, i32 0, i32 1
  %170 = bitcast [3 x i8]* %169 to i24*
  %171 = load i24, i24* %170, align 1
  %172 = lshr i24 %171, 15
  %173 = and i24 %172, 1
  %174 = zext i24 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

; <label>:176                                     ; preds = %164, %158
  %177 = load %union.rec*, %union.rec** %1, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 2
  %180 = bitcast %union.SECOND_UNION* %179 to %struct.anon.5*
  %181 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %180, i32 0, i32 1
  %182 = bitcast [3 x i8]* %181 to i24*
  %183 = load i24, i24* %182, align 1
  %184 = and i24 %183, -32769
  %185 = or i24 %184, 32768
  store i24 %185, i24* %182, align 1
  br label %186

; <label>:186                                     ; preds = %176, %164
  br label %187

; <label>:187                                     ; preds = %186, %157
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @FlattenUses() #0 {
  %1 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @GatherAllUses(%union.rec* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GatherAllUses(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  store %union.rec* %7, %union.rec** %link, align 8
  br label %8

; <label>:8                                       ; preds = %50, %0
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load %union.rec*, %union.rec** %1, align 8
  %11 = icmp ne %union.rec* %9, %10
  br i1 %11, label %12, label %57

; <label>:12                                      ; preds = %8
  %13 = load %union.rec*, %union.rec** %link, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 1
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  store %union.rec* %18, %union.rec** %y, align 8
  br label %19

; <label>:19                                      ; preds = %29, %12
  %20 = load %union.rec*, %union.rec** %y, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

; <label>:28                                      ; preds = %19
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load %union.rec*, %union.rec** %y, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 1
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %y, align 8
  br label %19

; <label>:36                                      ; preds = %19
  %37 = load %union.rec*, %union.rec** %y, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 1
  %40 = bitcast %union.FIRST_UNION* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 143
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %36
  %46 = load %union.rec*, %union.rec** %y, align 8
  %47 = load %union.rec*, %union.rec** %y, align 8
  call void @GatherUses(%union.rec* %46, %union.rec* %47)
  br label %48

; <label>:48                                      ; preds = %45, %36
  %49 = load %union.rec*, %union.rec** %y, align 8
  call void @GatherAllUses(%union.rec* %49)
  br label %50

; <label>:50                                      ; preds = %48
  %51 = load %union.rec*, %union.rec** %link, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 0
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 1
  %56 = load %union.rec*, %union.rec** %55, align 8
  store %union.rec* %56, %union.rec** %link, align 8
  br label %8

; <label>:57                                      ; preds = %8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SearchUses(%union.rec* %x, %union.rec* %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec*, align 8
  %p = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  store %union.rec* %y, %union.rec** %3, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = load %union.rec*, %union.rec** %3, align 8
  %6 = icmp eq %union.rec* %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 1, i32* %1
  br label %47

; <label>:8                                       ; preds = %0
  %9 = load %union.rec*, %union.rec** %2, align 8
  %10 = bitcast %union.rec* %9 to %struct.symbol_type*
  %11 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %10, i32 0, i32 6
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = icmp ne %union.rec* %12, null
  br i1 %13, label %14, label %46

; <label>:14                                      ; preds = %8
  %15 = load %union.rec*, %union.rec** %2, align 8
  %16 = bitcast %union.rec* %15 to %struct.symbol_type*
  %17 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %16, i32 0, i32 6
  %18 = load %union.rec*, %union.rec** %17, align 8
  %19 = bitcast %union.rec* %18 to %struct.uses_type*
  %20 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %19, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %20, align 8
  store %union.rec* %21, %union.rec** %p, align 8
  br label %22

; <label>:22                                      ; preds = %35, %14
  %23 = load %union.rec*, %union.rec** %p, align 8
  %24 = bitcast %union.rec* %23 to %struct.uses_type*
  %25 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %24, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %25, align 8
  %27 = load %union.rec*, %union.rec** %3, align 8
  %28 = icmp eq %union.rec* %26, %27
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %22
  store i32 1, i32* %1
  br label %47

; <label>:30                                      ; preds = %22
  %31 = load %union.rec*, %union.rec** %p, align 8
  %32 = bitcast %union.rec* %31 to %struct.uses_type*
  %33 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %32, i32 0, i32 1
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %p, align 8
  br label %35

; <label>:35                                      ; preds = %30
  %36 = load %union.rec*, %union.rec** %p, align 8
  %37 = load %union.rec*, %union.rec** %2, align 8
  %38 = bitcast %union.rec* %37 to %struct.symbol_type*
  %39 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %38, i32 0, i32 6
  %40 = load %union.rec*, %union.rec** %39, align 8
  %41 = bitcast %union.rec* %40 to %struct.uses_type*
  %42 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %41, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %42, align 8
  %44 = icmp ne %union.rec* %36, %43
  br i1 %44, label %22, label %45

; <label>:45                                      ; preds = %35
  br label %46

; <label>:46                                      ; preds = %45, %8
  store i32 0, i32* %1
  br label %47

; <label>:47                                      ; preds = %46, %29, %7
  %48 = load i32, i32* %1
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define %union.rec* @FirstExternTarget(%union.rec* %sym, %union.rec** %cont) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec**, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  store %union.rec** %cont, %union.rec*** %2, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %3 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* null, %union.rec** %3, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 2
  %7 = bitcast %union.SECOND_UNION* %6 to %struct.anon.5*
  %8 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %7, i32 0, i32 1
  %9 = bitcast [3 x i8]* %8 to i24*
  %10 = load i24, i24* %9, align 1
  %11 = lshr i24 %10, 12
  %12 = and i24 %11, 1
  %13 = zext i24 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %16, %union.rec** %res, align 8
  br label %74

; <label>:17                                      ; preds = %0
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.symbol_type*
  %20 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %19, i32 0, i32 6
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = icmp ne %union.rec* %21, null
  br i1 %22, label %23, label %73

; <label>:23                                      ; preds = %17
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = bitcast %union.rec* %24 to %struct.symbol_type*
  %26 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %25, i32 0, i32 6
  %27 = load %union.rec*, %union.rec** %26, align 8
  %28 = bitcast %union.rec* %27 to %struct.uses_type*
  %29 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %28, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* %30, %union.rec** %31, align 8
  br label %32

; <label>:32                                      ; preds = %61, %23
  %33 = load %union.rec**, %union.rec*** %2, align 8
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = bitcast %union.rec* %34 to %struct.uses_type*
  %36 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %35, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %36, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 2
  %40 = bitcast %union.SECOND_UNION* %39 to %struct.anon.5*
  %41 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %40, i32 0, i32 1
  %42 = bitcast [3 x i8]* %41 to i24*
  %43 = load i24, i24* %42, align 1
  %44 = lshr i24 %43, 12
  %45 = and i24 %44, 1
  %46 = zext i24 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

; <label>:48                                      ; preds = %32
  %49 = load %union.rec**, %union.rec*** %2, align 8
  %50 = load %union.rec*, %union.rec** %49, align 8
  %51 = bitcast %union.rec* %50 to %struct.uses_type*
  %52 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %res, align 8
  br label %72

; <label>:54                                      ; preds = %32
  %55 = load %union.rec**, %union.rec*** %2, align 8
  %56 = load %union.rec*, %union.rec** %55, align 8
  %57 = bitcast %union.rec* %56 to %struct.uses_type*
  %58 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %57, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %58, align 8
  %60 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* %59, %union.rec** %60, align 8
  br label %61

; <label>:61                                      ; preds = %54
  %62 = load %union.rec**, %union.rec*** %2, align 8
  %63 = load %union.rec*, %union.rec** %62, align 8
  %64 = load %union.rec*, %union.rec** %1, align 8
  %65 = bitcast %union.rec* %64 to %struct.symbol_type*
  %66 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %65, i32 0, i32 6
  %67 = load %union.rec*, %union.rec** %66, align 8
  %68 = bitcast %union.rec* %67 to %struct.uses_type*
  %69 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %68, i32 0, i32 1
  %70 = load %union.rec*, %union.rec** %69, align 8
  %71 = icmp ne %union.rec* %63, %70
  br i1 %71, label %32, label %72

; <label>:72                                      ; preds = %61, %48
  br label %73

; <label>:73                                      ; preds = %72, %17
  br label %74

; <label>:74                                      ; preds = %73, %15
  %75 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %75
}

; Function Attrs: nounwind uwtable
define %union.rec* @NextExternTarget(%union.rec* %sym, %union.rec** %cont) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec**, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  store %union.rec** %cont, %union.rec*** %2, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %3 = load %union.rec**, %union.rec*** %2, align 8
  %4 = load %union.rec*, %union.rec** %3, align 8
  %5 = icmp ne %union.rec* %4, null
  br i1 %5, label %6, label %54

; <label>:6                                       ; preds = %0
  %7 = load %union.rec**, %union.rec*** %2, align 8
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = bitcast %union.rec* %8 to %struct.uses_type*
  %10 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %9, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %10, align 8
  %12 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* %11, %union.rec** %12, align 8
  br label %13

; <label>:13                                      ; preds = %46, %6
  %14 = load %union.rec**, %union.rec*** %2, align 8
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.symbol_type*
  %18 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %17, i32 0, i32 6
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = bitcast %union.rec* %19 to %struct.uses_type*
  %21 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %20, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %21, align 8
  %23 = icmp ne %union.rec* %15, %22
  br i1 %23, label %24, label %53

; <label>:24                                      ; preds = %13
  %25 = load %union.rec**, %union.rec*** %2, align 8
  %26 = load %union.rec*, %union.rec** %25, align 8
  %27 = bitcast %union.rec* %26 to %struct.uses_type*
  %28 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %27, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %28, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 2
  %32 = bitcast %union.SECOND_UNION* %31 to %struct.anon.5*
  %33 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %32, i32 0, i32 1
  %34 = bitcast [3 x i8]* %33 to i24*
  %35 = load i24, i24* %34, align 1
  %36 = lshr i24 %35, 12
  %37 = and i24 %36, 1
  %38 = zext i24 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

; <label>:40                                      ; preds = %24
  %41 = load %union.rec**, %union.rec*** %2, align 8
  %42 = load %union.rec*, %union.rec** %41, align 8
  %43 = bitcast %union.rec* %42 to %struct.uses_type*
  %44 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %43, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %44, align 8
  store %union.rec* %45, %union.rec** %res, align 8
  br label %53

; <label>:46                                      ; preds = %24
  %47 = load %union.rec**, %union.rec*** %2, align 8
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = bitcast %union.rec* %48 to %struct.uses_type*
  %50 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %49, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* %51, %union.rec** %52, align 8
  br label %13

; <label>:53                                      ; preds = %40, %13
  br label %54

; <label>:54                                      ; preds = %53, %0
  %55 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %55
}

; Function Attrs: nounwind uwtable
define internal void @GatherUses(%union.rec* %x, %union.rec* %sym) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %sym, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.symbol_type*
  %5 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %4, i32 0, i32 5
  %6 = load %union.rec*, %union.rec** %5, align 8
  %7 = icmp ne %union.rec* %6, null
  br i1 %7, label %8, label %175

; <label>:8                                       ; preds = %0
  %9 = load %union.rec*, %union.rec** %1, align 8
  %10 = bitcast %union.rec* %9 to %struct.symbol_type*
  %11 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %10, i32 0, i32 5
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = bitcast %union.rec* %12 to %struct.uses_type*
  %14 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %13, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %14, align 8
  store %union.rec* %15, %union.rec** %link, align 8
  br label %16

; <label>:16                                      ; preds = %164, %8
  %17 = load %union.rec*, %union.rec** %link, align 8
  %18 = bitcast %union.rec* %17 to %struct.uses_type*
  %19 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %18, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %19, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  %21 = load %union.rec*, %union.rec** %y, align 8
  %22 = bitcast %union.rec* %21 to %struct.symbol_type*
  %23 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %22, i32 0, i32 7
  %24 = load %union.rec*, %union.rec** %23, align 8
  %25 = load %union.rec*, %union.rec** %2, align 8
  %26 = icmp ne %union.rec* %24, %25
  br i1 %26, label %27, label %159

; <label>:27                                      ; preds = %16
  %28 = load %union.rec*, %union.rec** %y, align 8
  %29 = load %union.rec*, %union.rec** %2, align 8
  %30 = icmp ne %union.rec* %28, %29
  br i1 %30, label %31, label %148

; <label>:31                                      ; preds = %27
  %32 = load %union.rec*, %union.rec** %2, align 8
  %33 = load %union.rec*, %union.rec** %y, align 8
  %34 = bitcast %union.rec* %33 to %struct.symbol_type*
  %35 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %34, i32 0, i32 7
  store %union.rec* %32, %union.rec** %35, align 8
  store i32 2, i32* @zz_size, align 4
  br i1 false, label %36, label %39

; <label>:36                                      ; preds = %31
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %38 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %37)
  br label %64

; <label>:39                                      ; preds = %31
  %40 = load i32, i32* @zz_size, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %41
  %43 = load %union.rec*, %union.rec** %42, align 8
  %44 = icmp eq %union.rec* %43, null
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %39
  %46 = load i32, i32* @zz_size, align 4
  %47 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %48 = call %union.rec* @GetMemory(i32 %46, %struct.FILE_POS* %47)
  store %union.rec* %48, %union.rec** %tmp, align 8
  br label %63

; <label>:49                                      ; preds = %39
  %50 = load i32, i32* @zz_size, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %51
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** @zz_hold, align 8
  store %union.rec* %53, %union.rec** %tmp, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 0
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %58, align 8
  %60 = load i32, i32* @zz_size, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %61
  store %union.rec* %59, %union.rec** %62, align 8
  br label %63

; <label>:63                                      ; preds = %49, %45
  br label %64

; <label>:64                                      ; preds = %63, %36
  %65 = load %union.rec*, %union.rec** %y, align 8
  %66 = load %union.rec*, %union.rec** %tmp, align 8
  %67 = bitcast %union.rec* %66 to %struct.uses_type*
  %68 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %67, i32 0, i32 0
  store %union.rec* %65, %union.rec** %68, align 8
  %69 = load %union.rec*, %union.rec** %2, align 8
  %70 = bitcast %union.rec* %69 to %struct.symbol_type*
  %71 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %70, i32 0, i32 6
  %72 = load %union.rec*, %union.rec** %71, align 8
  %73 = icmp eq %union.rec* %72, null
  br i1 %73, label %74, label %79

; <label>:74                                      ; preds = %64
  %75 = load %union.rec*, %union.rec** %tmp, align 8
  %76 = load %union.rec*, %union.rec** %tmp, align 8
  %77 = bitcast %union.rec* %76 to %struct.uses_type*
  %78 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %77, i32 0, i32 1
  store %union.rec* %75, %union.rec** %78, align 8
  br label %97

; <label>:79                                      ; preds = %64
  %80 = load %union.rec*, %union.rec** %2, align 8
  %81 = bitcast %union.rec* %80 to %struct.symbol_type*
  %82 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %81, i32 0, i32 6
  %83 = load %union.rec*, %union.rec** %82, align 8
  %84 = bitcast %union.rec* %83 to %struct.uses_type*
  %85 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %84, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %85, align 8
  %87 = load %union.rec*, %union.rec** %tmp, align 8
  %88 = bitcast %union.rec* %87 to %struct.uses_type*
  %89 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %88, i32 0, i32 1
  store %union.rec* %86, %union.rec** %89, align 8
  %90 = load %union.rec*, %union.rec** %tmp, align 8
  %91 = load %union.rec*, %union.rec** %2, align 8
  %92 = bitcast %union.rec* %91 to %struct.symbol_type*
  %93 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %92, i32 0, i32 6
  %94 = load %union.rec*, %union.rec** %93, align 8
  %95 = bitcast %union.rec* %94 to %struct.uses_type*
  %96 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %95, i32 0, i32 1
  store %union.rec* %90, %union.rec** %96, align 8
  br label %97

; <label>:97                                      ; preds = %79, %74
  %98 = load %union.rec*, %union.rec** %tmp, align 8
  %99 = load %union.rec*, %union.rec** %2, align 8
  %100 = bitcast %union.rec* %99 to %struct.symbol_type*
  %101 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %100, i32 0, i32 6
  store %union.rec* %98, %union.rec** %101, align 8
  %102 = load %union.rec*, %union.rec** %y, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 2
  %105 = bitcast %union.SECOND_UNION* %104 to %struct.anon.5*
  %106 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %105, i32 0, i32 1
  %107 = bitcast [3 x i8]* %106 to i24*
  %108 = load i24, i24* %107, align 1
  %109 = lshr i24 %108, 9
  %110 = and i24 %109, 1
  %111 = zext i24 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

; <label>:113                                     ; preds = %97
  %114 = load %union.rec*, %union.rec** %2, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 2
  %117 = bitcast %union.SECOND_UNION* %116 to %struct.anon.5*
  %118 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %117, i32 0, i32 1
  %119 = bitcast [3 x i8]* %118 to i24*
  %120 = load i24, i24* %119, align 1
  %121 = and i24 %120, -513
  %122 = or i24 %121, 512
  store i24 %122, i24* %119, align 1
  br label %123

; <label>:123                                     ; preds = %113, %97
  %124 = load %union.rec*, %union.rec** %y, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 2
  %127 = bitcast %union.SECOND_UNION* %126 to %struct.anon.5*
  %128 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %127, i32 0, i32 1
  %129 = bitcast [3 x i8]* %128 to i24*
  %130 = load i24, i24* %129, align 1
  %131 = lshr i24 %130, 11
  %132 = and i24 %131, 1
  %133 = zext i24 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

; <label>:135                                     ; preds = %123
  %136 = load %union.rec*, %union.rec** %2, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 2
  %139 = bitcast %union.SECOND_UNION* %138 to %struct.anon.5*
  %140 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %139, i32 0, i32 1
  %141 = bitcast [3 x i8]* %140 to i24*
  %142 = load i24, i24* %141, align 1
  %143 = and i24 %142, -2049
  %144 = or i24 %143, 2048
  store i24 %144, i24* %141, align 1
  br label %145

; <label>:145                                     ; preds = %135, %123
  %146 = load %union.rec*, %union.rec** %y, align 8
  %147 = load %union.rec*, %union.rec** %2, align 8
  call void @GatherUses(%union.rec* %146, %union.rec* %147)
  br label %158

; <label>:148                                     ; preds = %27
  %149 = load %union.rec*, %union.rec** %2, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 2
  %152 = bitcast %union.SECOND_UNION* %151 to %struct.anon.5*
  %153 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %152, i32 0, i32 1
  %154 = bitcast [3 x i8]* %153 to i24*
  %155 = load i24, i24* %154, align 1
  %156 = and i24 %155, -1025
  %157 = or i24 %156, 1024
  store i24 %157, i24* %154, align 1
  br label %158

; <label>:158                                     ; preds = %148, %145
  br label %159

; <label>:159                                     ; preds = %158, %16
  %160 = load %union.rec*, %union.rec** %link, align 8
  %161 = bitcast %union.rec* %160 to %struct.uses_type*
  %162 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %161, i32 0, i32 1
  %163 = load %union.rec*, %union.rec** %162, align 8
  store %union.rec* %163, %union.rec** %link, align 8
  br label %164

; <label>:164                                     ; preds = %159
  %165 = load %union.rec*, %union.rec** %link, align 8
  %166 = load %union.rec*, %union.rec** %1, align 8
  %167 = bitcast %union.rec* %166 to %struct.symbol_type*
  %168 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %167, i32 0, i32 5
  %169 = load %union.rec*, %union.rec** %168, align 8
  %170 = bitcast %union.rec* %169 to %struct.uses_type*
  %171 = getelementptr inbounds %struct.uses_type, %struct.uses_type* %170, i32 0, i32 1
  %172 = load %union.rec*, %union.rec** %171, align 8
  %173 = icmp ne %union.rec* %165, %172
  br i1 %173, label %16, label %174

; <label>:174                                     ; preds = %164
  br label %175

; <label>:175                                     ; preds = %174, %0
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
