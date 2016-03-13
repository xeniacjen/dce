; ModuleID = 'z04.c'
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
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"^/\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"^//\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"^|\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"^||\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"^&\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"EchoCatOp\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %union.rec* @NewToken(i8 zeroext %xtype, %struct.FILE_POS* %xfpos, i8 zeroext %xvspace, i8 zeroext %xhspace, i8 zeroext %xprec, %union.rec* %xactual) #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.FILE_POS*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store i8 %xtype, i8* %1, align 1
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %2, align 8
  store i8 %xvspace, i8* %3, align 1
  store i8 %xhspace, i8* %4, align 1
  store i8 %xprec, i8* %5, align 1
  store %union.rec* %xactual, %union.rec** %6, align 8
  %7 = load i8, i8* %1, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* @zz_size, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 265
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %15)
  br label %42

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* @zz_size, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %19
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = icmp eq %union.rec* %21, null
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %17
  %24 = load i32, i32* @zz_size, align 4
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %26 = call %union.rec* @GetMemory(i32 %24, %struct.FILE_POS* %25)
  store %union.rec* %26, %union.rec** @zz_hold, align 8
  br label %41

; <label>:27                                      ; preds = %17
  %28 = load i32, i32* @zz_size, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %29
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** @zz_hold, align 8
  store %union.rec* %31, %union.rec** @zz_hold, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 0
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %36, align 8
  %38 = load i32, i32* @zz_size, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %39
  store %union.rec* %37, %union.rec** %40, align 8
  br label %41

; <label>:41                                      ; preds = %27, %23
  br label %42

; <label>:42                                      ; preds = %41, %14
  %43 = load i8, i8* %1, align 1
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 1
  %47 = bitcast %union.FIRST_UNION* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  store i8 %43, i8* %48, align 1
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 1
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 1
  store %union.rec* %49, %union.rec** %54, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 1
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 0
  store %union.rec* %49, %union.rec** %59, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 0
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 1
  store %union.rec* %49, %union.rec** %64, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 0
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  store %union.rec* %49, %union.rec** %69, align 8
  store %union.rec* %49, %union.rec** %res, align 8
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %71 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %70, i32 0, i32 2
  %72 = load i16, i16* %71, align 2
  %73 = load %union.rec*, %union.rec** %res, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 1
  %76 = bitcast %union.FIRST_UNION* %75 to %struct.FILE_POS*
  %77 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %76, i32 0, i32 2
  store i16 %72, i16* %77, align 2
  %78 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %79 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 1048575
  %82 = load %union.rec*, %union.rec** %res, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 1
  %85 = bitcast %union.FIRST_UNION* %84 to %struct.FILE_POS*
  %86 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %81, 1048575
  %89 = and i32 %87, -1048576
  %90 = or i32 %89, %88
  store i32 %90, i32* %86, align 4
  %91 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %92 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = lshr i32 %93, 20
  %95 = load %union.rec*, %union.rec** %res, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 1
  %98 = bitcast %union.FIRST_UNION* %97 to %struct.FILE_POS*
  %99 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %94, 4095
  %102 = shl i32 %101, 20
  %103 = and i32 %100, 1048575
  %104 = or i32 %103, %102
  store i32 %104, i32* %99, align 4
  %105 = load i8, i8* %3, align 1
  %106 = load %union.rec*, %union.rec** %res, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 2
  %109 = bitcast %union.SECOND_UNION* %108 to %struct.anon.0*
  %110 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %109, i32 0, i32 2
  store i8 %105, i8* %110, align 1
  %111 = load i8, i8* %4, align 1
  %112 = load %union.rec*, %union.rec** %res, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 2
  %115 = bitcast %union.SECOND_UNION* %114 to %struct.anon.0*
  %116 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %115, i32 0, i32 1
  store i8 %111, i8* %116, align 1
  %117 = load i8, i8* %5, align 1
  %118 = load %union.rec*, %union.rec** %res, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 2
  %121 = bitcast %union.SECOND_UNION* %120 to %struct.anon.0*
  %122 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %121, i32 0, i32 0
  store i8 %117, i8* %122, align 1
  %123 = load %union.rec*, %union.rec** %6, align 8
  %124 = load %union.rec*, %union.rec** %res, align 8
  %125 = bitcast %union.rec* %124 to %struct.closure_type*
  %126 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %125, i32 0, i32 5
  store %union.rec* %123, %union.rec** %126, align 8
  %127 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %127
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @CopyTokenList(%union.rec* %x, %struct.FILE_POS* %pos) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.FILE_POS*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %2, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %3, %union.rec** %y, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = icmp ne %union.rec* %4, null
  br i1 %5, label %6, label %160

; <label>:6                                       ; preds = %0
  br label %7

; <label>:7                                       ; preds = %155, %6
  %8 = load %union.rec*, %union.rec** %y, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 1
  %11 = bitcast %union.FIRST_UNION* %10 to %struct.anon*
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 11
  br i1 %15, label %25, label %16

; <label>:16                                      ; preds = %7
  %17 = load %union.rec*, %union.rec** %y, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 1
  %20 = bitcast %union.FIRST_UNION* %19 to %struct.anon*
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %61

; <label>:25                                      ; preds = %16, %7
  %26 = load %union.rec*, %union.rec** %y, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 1
  %29 = bitcast %union.FIRST_UNION* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load %union.rec*, %union.rec** %y, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 4
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %35, i32 0, i32 0
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %38 = call %union.rec* @MakeWord(i32 %32, i8* %36, %struct.FILE_POS* %37)
  store %union.rec* %38, %union.rec** %z, align 8
  %39 = load %union.rec*, %union.rec** %y, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 2
  %42 = bitcast %union.SECOND_UNION* %41 to %struct.anon.0*
  %43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 1
  %45 = load %union.rec*, %union.rec** %z, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 2
  %48 = bitcast %union.SECOND_UNION* %47 to %struct.anon.0*
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 2
  store i8 %44, i8* %49, align 1
  %50 = load %union.rec*, %union.rec** %y, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 2
  %53 = bitcast %union.SECOND_UNION* %52 to %struct.anon.0*
  %54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 1
  %56 = load %union.rec*, %union.rec** %z, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 2
  %59 = bitcast %union.SECOND_UNION* %58 to %struct.anon.0*
  %60 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %59, i32 0, i32 1
  store i8 %55, i8* %60, align 1
  br label %92

; <label>:61                                      ; preds = %16
  %62 = load %union.rec*, %union.rec** %y, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 1
  %65 = bitcast %union.FIRST_UNION* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %69 = load %union.rec*, %union.rec** %y, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 2
  %72 = bitcast %union.SECOND_UNION* %71 to %struct.anon.0*
  %73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 1
  %75 = load %union.rec*, %union.rec** %y, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 2
  %78 = bitcast %union.SECOND_UNION* %77 to %struct.anon.0*
  %79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 1
  %81 = load %union.rec*, %union.rec** %y, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 2
  %84 = bitcast %union.SECOND_UNION* %83 to %struct.anon.0*
  %85 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 1
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = bitcast %union.rec* %87 to %struct.closure_type*
  %89 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %88, i32 0, i32 5
  %90 = load %union.rec*, %union.rec** %89, align 8
  %91 = call %union.rec* @NewToken(i8 zeroext %67, %struct.FILE_POS* %68, i8 zeroext %74, i8 zeroext %80, i8 zeroext %86, %union.rec* %90)
  store %union.rec* %91, %union.rec** %z, align 8
  br label %92

; <label>:92                                      ; preds = %61, %25
  %93 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %93, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = icmp eq %union.rec* %95, null
  br i1 %96, label %97, label %99

; <label>:97                                      ; preds = %92
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %147

; <label>:99                                      ; preds = %92
  %100 = load %union.rec*, %union.rec** @zz_res, align 8
  %101 = icmp eq %union.rec* %100, null
  br i1 %101, label %102, label %104

; <label>:102                                     ; preds = %99
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %145

; <label>:104                                     ; preds = %99
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 1
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %109, align 8
  store %union.rec* %110, %union.rec** @zz_tmp, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 1
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %115, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 0
  %120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %119, i32 0, i64 1
  %121 = getelementptr inbounds %struct.LIST, %struct.LIST* %120, i32 0, i32 0
  store %union.rec* %116, %union.rec** %121, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 1
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %127, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 1
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 1
  store %union.rec* %122, %union.rec** %132, align 8
  %133 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 0
  %137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %136, i32 0, i64 1
  %138 = getelementptr inbounds %struct.LIST, %struct.LIST* %137, i32 0, i32 0
  store %union.rec* %133, %union.rec** %138, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %140 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %141 = bitcast %union.rec* %140 to %struct.word_type*
  %142 = getelementptr inbounds %struct.word_type, %struct.word_type* %141, i32 0, i32 0
  %143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %142, i32 0, i64 1
  %144 = getelementptr inbounds %struct.LIST, %struct.LIST* %143, i32 0, i32 1
  store %union.rec* %139, %union.rec** %144, align 8
  br label %145

; <label>:145                                     ; preds = %104, %102
  %146 = phi %union.rec* [ %103, %102 ], [ %139, %104 ]
  br label %147

; <label>:147                                     ; preds = %145, %97
  %148 = phi %union.rec* [ %98, %97 ], [ %146, %145 ]
  store %union.rec* %148, %union.rec** %res, align 8
  %149 = load %union.rec*, %union.rec** %y, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 1
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 1
  %154 = load %union.rec*, %union.rec** %153, align 8
  store %union.rec* %154, %union.rec** %y, align 8
  br label %155

; <label>:155                                     ; preds = %147
  %156 = load %union.rec*, %union.rec** %y, align 8
  %157 = load %union.rec*, %union.rec** %1, align 8
  %158 = icmp ne %union.rec* %156, %157
  br i1 %158, label %7, label %159

; <label>:159                                     ; preds = %155
  br label %160

; <label>:160                                     ; preds = %159, %0
  %161 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %161
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define i8* @EchoCatOp(i32 %xtype, i32 %xmark, i32 %xjoin) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %xtype, i32* %2, align 4
  store i32 %xmark, i32* %3, align 4
  store i32 %xjoin, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %45 [
    i32 19, label %6
    i32 18, label %19
    i32 17, label %32
  ]

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)
  br label %17

; <label>:13                                      ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  br label %17

; <label>:17                                      ; preds = %13, %9
  %18 = phi i8* [ %12, %9 ], [ %16, %13 ]
  store i8* %18, i8** %1
  br label %48

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)
  br label %30

; <label>:26                                      ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)
  br label %30

; <label>:30                                      ; preds = %26, %22
  %31 = phi i8* [ %25, %22 ], [ %29, %26 ]
  store i8* %31, i8** %1
  br label %48

; <label>:32                                      ; preds = %0
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)
  br label %43

; <label>:39                                      ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)
  br label %43

; <label>:43                                      ; preds = %39, %35
  %44 = phi i8* [ %38, %35 ], [ %42, %39 ]
  store i8* %44, i8** %1
  br label %48

; <label>:45                                      ; preds = %0
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %47 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8** %1
  br label %48

; <label>:48                                      ; preds = %45, %43, %30, %17
  %49 = load i8*, i8** %1
  ret i8* %49
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
