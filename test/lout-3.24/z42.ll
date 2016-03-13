; ModuleID = 'z42.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, [1 x %struct.coltab_rec] }
%struct.coltab_rec = type { %union.rec*, %union.rec* }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.0 = type { i8, i8, i32 }

@col_tab = internal global %struct.anon* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s ignored (illegal left parameter)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"%s ignored (empty left parameter)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"nochange\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"ColourCommand: number\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ran out of memory when enlarging colour table\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"too many colours (maximum is %d)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @ColourInit() #0 {
  %1 = call %struct.anon* @ctab_new(i32 100)
  store %struct.anon* %1, %struct.anon** @col_tab, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ctab_new(i32 %newsize) #0 {
  %1 = alloca i32, align 4
  %S = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 16
  %5 = add i64 8, %4
  %6 = call noalias i8* @malloc(i64 %5) #4
  %7 = bitcast i8* %6 to %struct.anon*
  store %struct.anon* %7, %struct.anon** %S, align 8
  %8 = load %struct.anon*, %struct.anon** %S, align 8
  %9 = icmp eq %struct.anon* %8, null
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  %15 = load %struct.anon*, %struct.anon** %S, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.anon*, %struct.anon** %S, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %36, %13
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.anon*, %struct.anon** %S, align 8
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 2
  %28 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %27, i32 0, i64 %25
  %29 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %28, i32 0, i32 1
  store %union.rec* null, %union.rec** %29, align 8
  %30 = load i32, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.anon*, %struct.anon** %S, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 2
  %34 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %33, i32 0, i64 %31
  %35 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %34, i32 0, i32 0
  store %union.rec* null, %union.rec** %35, align 8
  br label %36

; <label>:36                                      ; preds = %23
  %37 = load i32, i32* %i, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %19

; <label>:39                                      ; preds = %19
  %40 = load %struct.anon*, %struct.anon** %S, align 8
  ret %struct.anon* %40
}

; Function Attrs: nounwind uwtable
define void @ColourChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %cname = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon.0*
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %26, label %11

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon.0*
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %26, label %20

; <label>:20                                      ; preds = %11
  %21 = load %union.rec*, %union.rec** %2, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 1
  %24 = bitcast %union.FIRST_UNION* %23 to %struct.FILE_POS*
  %25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %111

; <label>:26                                      ; preds = %11, %0
  %27 = load %union.rec*, %union.rec** %2, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 4
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i32 0, i32 0
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %26
  %34 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %35 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

; <label>:38                                      ; preds = %33
  %39 = load %union.rec*, %union.rec** %2, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 1
  %42 = bitcast %union.FIRST_UNION* %41 to %struct.FILE_POS*
  %43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %44

; <label>:44                                      ; preds = %38, %33
  br label %111

; <label>:45                                      ; preds = %26
  %46 = load %union.rec*, %union.rec** %2, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %48, i32 0, i32 0
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %45
  br label %111

; <label>:53                                      ; preds = %45
  %54 = load %union.rec*, %union.rec** %2, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 4
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %56, i32 0, i32 0
  %58 = load %struct.anon*, %struct.anon** @col_tab, align 8
  %59 = call %union.rec* @ctab_retrieve(i8* %57, %struct.anon* %58)
  store %union.rec* %59, %union.rec** %cname, align 8
  %60 = load %union.rec*, %union.rec** %cname, align 8
  %61 = icmp eq %union.rec* %60, null
  br i1 %61, label %62, label %95

; <label>:62                                      ; preds = %53
  %63 = load %union.rec*, %union.rec** %2, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 1
  %66 = bitcast %union.FIRST_UNION* %65 to %struct.anon.0*
  %67 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load %union.rec*, %union.rec** %2, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 4
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %72, i32 0, i32 0
  %74 = load %union.rec*, %union.rec** %2, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 1
  %77 = bitcast %union.FIRST_UNION* %76 to %struct.FILE_POS*
  %78 = call %union.rec* @MakeWord(i32 %69, i8* %73, %struct.FILE_POS* %77)
  store %union.rec* %78, %union.rec** %cname, align 8
  %79 = load %union.rec*, %union.rec** %cname, align 8
  call void @ctab_insert(%union.rec* %79, %struct.anon** @col_tab)
  %80 = load %union.rec*, %union.rec** %cname, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 2
  %83 = bitcast %union.SECOND_UNION* %82 to %struct.anon.2*
  %84 = bitcast %struct.anon.2* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = lshr i32 %85, 12
  %87 = and i32 %86, 1023
  %88 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %89 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %87, 1023
  %92 = shl i32 %91, 12
  %93 = and i32 %90, -4190209
  %94 = or i32 %93, %92
  store i32 %94, i32* %89, align 4
  br label %111

; <label>:95                                      ; preds = %53
  %96 = load %union.rec*, %union.rec** %cname, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 2
  %99 = bitcast %union.SECOND_UNION* %98 to %struct.anon.2*
  %100 = bitcast %struct.anon.2* %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = lshr i32 %101, 12
  %103 = and i32 %102, 1023
  %104 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %105 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %103, 1023
  %108 = shl i32 %107, 12
  %109 = and i32 %106, -4190209
  %110 = or i32 %109, %108
  store i32 %110, i32* %105, align 4
  br label %111

; <label>:111                                     ; preds = %20, %44, %52, %95, %62
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @ctab_retrieve(i8* %str, %struct.anon* %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.anon*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %2, align 8
  store %struct.anon* %S, %struct.anon** %3, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %p, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %pos, align 4
  br label %9

; <label>:9                                       ; preds = %13, %0
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %9
  %14 = load i8*, i8** %p, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %p, align 8
  %16 = load i8, i8* %14, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %pos, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %pos, align 4
  br label %9

; <label>:20                                      ; preds = %9
  %21 = load i32, i32* %pos, align 4
  %22 = load %struct.anon*, %struct.anon** %3, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  store i32 %25, i32* %pos, align 4
  %26 = load i32, i32* %pos, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.anon*, %struct.anon** %3, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 2
  %30 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %29, i32 0, i64 %27
  %31 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %30, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %31, align 8
  store %union.rec* %32, %union.rec** %x, align 8
  %33 = load %union.rec*, %union.rec** %x, align 8
  %34 = icmp eq %union.rec* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  store %union.rec* null, %union.rec** %1
  br label %90

; <label>:36                                      ; preds = %20
  %37 = load %union.rec*, %union.rec** %x, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 0
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %link, align 8
  br label %43

; <label>:43                                      ; preds = %82, %36
  %44 = load %union.rec*, %union.rec** %link, align 8
  %45 = load %union.rec*, %union.rec** %x, align 8
  %46 = icmp ne %union.rec* %44, %45
  br i1 %46, label %47, label %89

; <label>:47                                      ; preds = %43
  %48 = load %union.rec*, %union.rec** %link, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %y, align 8
  br label %54

; <label>:54                                      ; preds = %64, %47
  %55 = load %union.rec*, %union.rec** %y, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon.0*
  %59 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %54
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %union.rec*, %union.rec** %y, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 1
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %y, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load i8*, i8** %2, align 8
  %73 = load %union.rec*, %union.rec** %y, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 4
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %75, i32 0, i32 0
  %77 = call i32 @strcmp(i8* %72, i8* %76) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %71
  %80 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %80, %union.rec** %1
  br label %90

; <label>:81                                      ; preds = %71
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load %union.rec*, %union.rec** %link, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 0
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 1
  %88 = load %union.rec*, %union.rec** %87, align 8
  store %union.rec* %88, %union.rec** %link, align 8
  br label %43

; <label>:89                                      ; preds = %43
  store %union.rec* null, %union.rec** %1
  br label %90

; <label>:90                                      ; preds = %89, %79, %35
  %91 = load %union.rec*, %union.rec** %1
  ret %union.rec* %91
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal void @ctab_insert(%union.rec* %x, %struct.anon** %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.anon**, align 8
  %pos = alloca i32, align 4
  %num = alloca i32, align 4
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.anon** %S, %struct.anon*** %2, align 8
  %3 = load %struct.anon**, %struct.anon*** %2, align 8
  %4 = load %struct.anon*, %struct.anon** %3, align 8
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.anon**, %struct.anon*** %2, align 8
  %8 = load %struct.anon*, %struct.anon** %7, align 8
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %0
  %14 = load %struct.anon**, %struct.anon*** %2, align 8
  %15 = load %struct.anon*, %struct.anon** %14, align 8
  %16 = load %struct.anon**, %struct.anon*** %2, align 8
  %17 = load %struct.anon*, %struct.anon** %16, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 2, %19
  %21 = call %struct.anon* @ctab_rehash(%struct.anon* %15, i32 %20)
  %22 = load %struct.anon**, %struct.anon*** %2, align 8
  store %struct.anon* %21, %struct.anon** %22, align 8
  br label %23

; <label>:23                                      ; preds = %13, %0
  %24 = load %struct.anon**, %struct.anon*** %2, align 8
  %25 = load %struct.anon*, %struct.anon** %24, align 8
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 %28, i32* %num, align 4
  %29 = load i32, i32* %num, align 4
  %30 = icmp sgt i32 %29, 4096
  br i1 %30, label %31, label %37

; <label>:31                                      ; preds = %23
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 1
  %35 = bitcast %union.FIRST_UNION* %34 to %struct.FILE_POS*
  %36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %35, i32 4096)
  br label %37

; <label>:37                                      ; preds = %31, %23
  %38 = load %union.rec*, %union.rec** %1, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 4
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %40, i32 0, i32 0
  store i8* %41, i8** %p, align 8
  %42 = load i8*, i8** %p, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %p, align 8
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %pos, align 4
  br label %46

; <label>:46                                      ; preds = %50, %37
  %47 = load i8*, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %57

; <label>:50                                      ; preds = %46
  %51 = load i8*, i8** %p, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %p, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32, i32* %pos, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %pos, align 4
  br label %46

; <label>:57                                      ; preds = %46
  %58 = load i32, i32* %pos, align 4
  %59 = load %struct.anon**, %struct.anon*** %2, align 8
  %60 = load %struct.anon*, %struct.anon** %59, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %58, %62
  store i32 %63, i32* %pos, align 4
  %64 = load i32, i32* %pos, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.anon**, %struct.anon*** %2, align 8
  %67 = load %struct.anon*, %struct.anon** %66, align 8
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  %69 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %68, i32 0, i64 %65
  %70 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %69, i32 0, i32 1
  %71 = load %union.rec*, %union.rec** %70, align 8
  %72 = icmp eq %union.rec* %71, null
  br i1 %72, label %73, label %140

; <label>:73                                      ; preds = %57
  %74 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* @zz_size, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp uge i64 %76, 265
  br i1 %77, label %78, label %81

; <label>:78                                      ; preds = %73
  %79 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %80 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %79)
  br label %106

; <label>:81                                      ; preds = %73
  %82 = load i32, i32* @zz_size, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %83
  %85 = load %union.rec*, %union.rec** %84, align 8
  %86 = icmp eq %union.rec* %85, null
  br i1 %86, label %87, label %91

; <label>:87                                      ; preds = %81
  %88 = load i32, i32* @zz_size, align 4
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %90 = call %union.rec* @GetMemory(i32 %88, %struct.FILE_POS* %89)
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  br label %105

; <label>:91                                      ; preds = %81
  %92 = load i32, i32* @zz_size, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %93
  %95 = load %union.rec*, %union.rec** %94, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 0
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %100, align 8
  %102 = load i32, i32* @zz_size, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %103
  store %union.rec* %101, %union.rec** %104, align 8
  br label %105

; <label>:105                                     ; preds = %91, %87
  br label %106

; <label>:106                                     ; preds = %105, %78
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 1
  %110 = bitcast %union.FIRST_UNION* %109 to %struct.anon.0*
  %111 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %110, i32 0, i32 0
  store i8 17, i8* %111, align 1
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 1
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 1
  store %union.rec* %112, %union.rec** %117, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 1
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 0
  store %union.rec* %112, %union.rec** %122, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 0
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 1
  store %union.rec* %112, %union.rec** %127, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 0
  store %union.rec* %112, %union.rec** %132, align 8
  %133 = load i32, i32* %pos, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.anon**, %struct.anon*** %2, align 8
  %136 = load %struct.anon*, %struct.anon** %135, align 8
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %136, i32 0, i32 2
  %138 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %137, i32 0, i64 %134
  %139 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %138, i32 0, i32 1
  store %union.rec* %112, %union.rec** %139, align 8
  br label %140

; <label>:140                                     ; preds = %106, %57
  %141 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %142 = zext i8 %141 to i32
  store i32 %142, i32* @zz_size, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp uge i64 %143, 265
  br i1 %144, label %145, label %148

; <label>:145                                     ; preds = %140
  %146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %146)
  br label %173

; <label>:148                                     ; preds = %140
  %149 = load i32, i32* @zz_size, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %150
  %152 = load %union.rec*, %union.rec** %151, align 8
  %153 = icmp eq %union.rec* %152, null
  br i1 %153, label %154, label %158

; <label>:154                                     ; preds = %148
  %155 = load i32, i32* @zz_size, align 4
  %156 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %157 = call %union.rec* @GetMemory(i32 %155, %struct.FILE_POS* %156)
  store %union.rec* %157, %union.rec** @zz_hold, align 8
  br label %172

; <label>:158                                     ; preds = %148
  %159 = load i32, i32* @zz_size, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %160
  %162 = load %union.rec*, %union.rec** %161, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = bitcast %union.rec* %163 to %struct.word_type*
  %165 = getelementptr inbounds %struct.word_type, %struct.word_type* %164, i32 0, i32 0
  %166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %165, i32 0, i64 0
  %167 = getelementptr inbounds %struct.LIST, %struct.LIST* %166, i32 0, i32 0
  %168 = load %union.rec*, %union.rec** %167, align 8
  %169 = load i32, i32* @zz_size, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %170
  store %union.rec* %168, %union.rec** %171, align 8
  br label %172

; <label>:172                                     ; preds = %158, %154
  br label %173

; <label>:173                                     ; preds = %172, %145
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 1
  %177 = bitcast %union.FIRST_UNION* %176 to %struct.anon.0*
  %178 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %177, i32 0, i32 0
  store i8 0, i8* %178, align 1
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %182, i32 0, i64 1
  %184 = getelementptr inbounds %struct.LIST, %struct.LIST* %183, i32 0, i32 1
  store %union.rec* %179, %union.rec** %184, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 1
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  store %union.rec* %179, %union.rec** %189, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 0
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 1
  store %union.rec* %179, %union.rec** %194, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %197, i32 0, i64 0
  %199 = getelementptr inbounds %struct.LIST, %struct.LIST* %198, i32 0, i32 0
  store %union.rec* %179, %union.rec** %199, align 8
  store %union.rec* %179, %union.rec** @xx_link, align 8
  %200 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %200, %union.rec** @zz_res, align 8
  %201 = load i32, i32* %pos, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.anon**, %struct.anon*** %2, align 8
  %204 = load %struct.anon*, %struct.anon** %203, align 8
  %205 = getelementptr inbounds %struct.anon, %struct.anon* %204, i32 0, i32 2
  %206 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %205, i32 0, i64 %202
  %207 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %206, i32 0, i32 1
  %208 = load %union.rec*, %union.rec** %207, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = icmp eq %union.rec* %209, null
  br i1 %210, label %211, label %213

; <label>:211                                     ; preds = %173
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %261

; <label>:213                                     ; preds = %173
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %215 = icmp eq %union.rec* %214, null
  br i1 %215, label %216, label %218

; <label>:216                                     ; preds = %213
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %259

; <label>:218                                     ; preds = %213
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 0
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 0
  %224 = load %union.rec*, %union.rec** %223, align 8
  store %union.rec* %224, %union.rec** @zz_tmp, align 8
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 0
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  store %union.rec* %230, %union.rec** %235, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_res, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 0
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %241, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 0
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 1
  store %union.rec* %236, %union.rec** %246, align 8
  %247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 0
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 0
  store %union.rec* %247, %union.rec** %252, align 8
  %253 = load %union.rec*, %union.rec** @zz_res, align 8
  %254 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 0
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 1
  store %union.rec* %253, %union.rec** %258, align 8
  br label %259

; <label>:259                                     ; preds = %218, %216
  %260 = phi %union.rec* [ %217, %216 ], [ %253, %218 ]
  br label %261

; <label>:261                                     ; preds = %259, %211
  %262 = phi %union.rec* [ %212, %211 ], [ %260, %259 ]
  %263 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %263, %union.rec** @zz_res, align 8
  %264 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %264, %union.rec** @zz_hold, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %266 = icmp eq %union.rec* %265, null
  br i1 %266, label %267, label %269

; <label>:267                                     ; preds = %261
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %317

; <label>:269                                     ; preds = %261
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  %271 = icmp eq %union.rec* %270, null
  br i1 %271, label %272, label %274

; <label>:272                                     ; preds = %269
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %315

; <label>:274                                     ; preds = %269
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 1
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %279, align 8
  store %union.rec* %280, %union.rec** @zz_tmp, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = bitcast %union.rec* %281 to %struct.word_type*
  %283 = getelementptr inbounds %struct.word_type, %struct.word_type* %282, i32 0, i32 0
  %284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %283, i32 0, i64 1
  %285 = getelementptr inbounds %struct.LIST, %struct.LIST* %284, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %285, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 1
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  store %union.rec* %286, %union.rec** %291, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %294 = bitcast %union.rec* %293 to %struct.word_type*
  %295 = getelementptr inbounds %struct.word_type, %struct.word_type* %294, i32 0, i32 0
  %296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %295, i32 0, i64 1
  %297 = getelementptr inbounds %struct.LIST, %struct.LIST* %296, i32 0, i32 0
  %298 = load %union.rec*, %union.rec** %297, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 0
  %301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %300, i32 0, i64 1
  %302 = getelementptr inbounds %struct.LIST, %struct.LIST* %301, i32 0, i32 1
  store %union.rec* %292, %union.rec** %302, align 8
  %303 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 1
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 0
  store %union.rec* %303, %union.rec** %308, align 8
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  %310 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 0
  %313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %312, i32 0, i64 1
  %314 = getelementptr inbounds %struct.LIST, %struct.LIST* %313, i32 0, i32 1
  store %union.rec* %309, %union.rec** %314, align 8
  br label %315

; <label>:315                                     ; preds = %274, %272
  %316 = phi %union.rec* [ %273, %272 ], [ %309, %274 ]
  br label %317

; <label>:317                                     ; preds = %315, %267
  %318 = phi %union.rec* [ %268, %267 ], [ %316, %315 ]
  %319 = load i32, i32* %num, align 4
  %320 = load %union.rec*, %union.rec** %1, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 2
  %323 = bitcast %union.SECOND_UNION* %322 to %struct.anon.2*
  %324 = bitcast %struct.anon.2* %323 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = and i32 %319, 1023
  %327 = shl i32 %326, 12
  %328 = and i32 %325, -4190209
  %329 = or i32 %328, %327
  store i32 %329, i32* %324, align 4
  %330 = load %union.rec*, %union.rec** %1, align 8
  %331 = load i32, i32* %num, align 4
  %332 = sext i32 %331 to i64
  %333 = load %struct.anon**, %struct.anon*** %2, align 8
  %334 = load %struct.anon*, %struct.anon** %333, align 8
  %335 = getelementptr inbounds %struct.anon, %struct.anon* %334, i32 0, i32 2
  %336 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %335, i32 0, i64 %332
  %337 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %336, i32 0, i32 0
  store %union.rec* %330, %union.rec** %337, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ColourCommand(i32 %cnum) #0 {
  %1 = alloca i32, align 4
  %res = alloca i8*, align 8
  store i32 %cnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp ugt i32 %2, 0
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.anon*, %struct.anon** @col_tab, align 8
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ule i32 %5, %8
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %4, %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %4
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.anon*, %struct.anon** @col_tab, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 2
  %18 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %17, i32 0, i64 %15
  %19 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %18, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %19, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 4
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i32 0, i32 0
  store i8* %23, i8** %res, align 8
  %24 = load i8*, i8** %res, align 8
  ret i8* %24
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ctab_rehash(%struct.anon* %S, i32 %newsize) #0 {
  %1 = alloca %struct.anon*, align 8
  %2 = alloca i32, align 4
  %NewS = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store %struct.anon* %S, %struct.anon** %1, align 8
  store i32 %newsize, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.anon* @ctab_new(i32 %3)
  store %struct.anon* %4, %struct.anon** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %19, %0
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.anon*, %struct.anon** %1, align 8
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %22

; <label>:11                                      ; preds = %5
  %12 = load i32, i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.anon*, %struct.anon** %1, align 8
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %15, i32 0, i64 %13
  %17 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  call void @ctab_insert(%union.rec* %18, %struct.anon** %NewS)
  br label %19

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  br label %5

; <label>:22                                      ; preds = %5
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %48, %22
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.anon*, %struct.anon** %1, align 8
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

; <label>:29                                      ; preds = %23
  %30 = load i32, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.anon*, %struct.anon** %1, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 2
  %34 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %33, i32 0, i64 %31
  %35 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %34, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %35, align 8
  %37 = icmp ne %union.rec* %36, null
  br i1 %37, label %38, label %47

; <label>:38                                      ; preds = %29
  %39 = load i32, i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.anon*, %struct.anon** %1, align 8
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 2
  %43 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %42, i32 0, i64 %40
  %44 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %43, i32 0, i32 1
  %45 = load %union.rec*, %union.rec** %44, align 8
  %46 = call i32 @DisposeObject(%union.rec* %45)
  br label %47

; <label>:47                                      ; preds = %38, %29
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32, i32* %i, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  br label %23

; <label>:51                                      ; preds = %23
  %52 = load %struct.anon*, %struct.anon** %1, align 8
  %53 = bitcast %struct.anon* %52 to i8*
  call void @free(i8* %53) #4
  %54 = load %struct.anon*, %struct.anon** %NewS, align 8
  ret %struct.anon* %54
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
