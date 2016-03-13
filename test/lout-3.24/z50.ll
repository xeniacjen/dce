; ModuleID = 'z50.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GRAPHICS_STATE = type { i32, i32, i32, i32, i16 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
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
%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.7 = type { i32, i32, i32, i8 }
%struct.anon.4 = type { i16, i16 }

@prologue_done = internal global i32 0, align 4
@out_fp = internal global %struct._IO_FILE* null, align 8
@gs_stack_top = internal global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"rotations, graphics etc. too deeply nested (max is %d)\00", align 1
@currentfont = internal global i32 0, align 4
@gs_stack = internal global [50 x %struct.GRAPHICS_STATE] zeroinitializer, align 16
@currentcolour = internal global i32 0, align 4
@cpexists = internal global i32 0, align 4
@currenty = internal global i32 0, align 4
@currentxheight2 = internal global i16 0, align 2
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"PrintGraphic: type(x) != GRAPHIC!\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"cannot include EPS file in PDF output; EPS file %s ignored\00", align 1
@pdf_back = internal global %struct.back_end_rec { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, void (%struct._IO_FILE*)* @PDF_PrintInitialize, void (i8*, i32, i32)* @PDF_PrintLength, void (%union.rec*, i32, i8*, i8*)* @PDF_PrintPageSetupForFont, void (i8*, i32)* @PDF_PrintPageResourceForFont, void (i32)* @PDF_PrintMapping, void (i32, i32, i8*)* @PDF_PrintBeforeFirstPage, void (i32, i32, i8*)* @PDF_PrintBetweenPages, void ()* @PDF_PrintAfterLastPage, void (%union.rec*, i32, i32)* @PDF_PrintWord, void (%union.rec*, i32, i32, %union.rec*)* @PDF_PrintPlainGraphic, void (i32, i32, i32, i32, i32)* @PDF_PrintUnderline, void (i32, i32)* @PDF_CoordTranslate, void (i32)* @PDF_CoordRotate, void (float, float)* @PDF_CoordScale, void (%union.rec*)* @PDF_SaveGraphicState, void ()* @PDF_RestoreGraphicState, void (%union.rec*)* @PDF_PrintGraphicObject, void (%union.rec*)* @PDF_DefineGraphicNames, void (%union.rec*, i32, i32)* @PDF_SaveTranslateDefineSave, void (%union.rec*, i32, i32)* @PDF_PrintGraphicInclude, void (%union.rec*, i32, i32, i32, i32)* @PDF_LinkSource, void (%union.rec*, i32, i32, i32, i32)* @PDF_LinkDest, void (...)* bitcast (void ()* @PDF_LinkCheck to void (...)*) }, align 8
@PDF_BackEnd = global %struct.back_end_rec* @pdf_back, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@pagecount = internal global i32 0, align 4
@wordcount = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@needs = internal global %union.rec* null, align 8
@supplied = internal global %union.rec* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"%.3fc\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@MapTable = external global [0 x %struct.mapvec*], align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"/%s%c\00", align 1
@PDF_PrintWord.last_hpos = internal global i32 0, align 4
@PDF_PrintWord.next_hpos = internal global i32 -1, align 4
@TotalWordCount = external global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@finfo = external global %struct.font_rec*, align 8
@EightBitToPrintForm = external global [0 x i8*], align 8
@.str.16 = private unnamed_addr constant [60 x i8] c"PDF_PrintPlainGraphic: this routine should never be called!\00", align 1

; Function Attrs: nounwind uwtable
define void @PDF_PrintAfterLastPage() #0 {
  %1 = load i32, i32* @prologue_done, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Cleanup(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFFile_Cleanup(%struct._IO_FILE* %5)
  br label %6

; <label>:6                                       ; preds = %3, %0
  ret void
}

declare void @PDFPage_Cleanup(%struct._IO_FILE*) #1

declare void @PDFFile_Cleanup(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PDF_SaveGraphicState(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Push(%struct._IO_FILE* %2)
  %3 = load i32, i32* @gs_stack_top, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @gs_stack_top, align 4
  %5 = load i32, i32* @gs_stack_top, align 4
  %6 = icmp sge i32 %5, 50
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load %union.rec*, %union.rec** %1, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 1
  %11 = bitcast %union.FIRST_UNION* %10 to %struct.FILE_POS*
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %11, i32 50)
  br label %13

; <label>:13                                      ; preds = %7, %0
  %14 = load i32, i32* @currentfont, align 4
  %15 = load i32, i32* @gs_stack_top, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %16
  %18 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @currentcolour, align 4
  %20 = load i32, i32* @gs_stack_top, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %21
  %23 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @cpexists, align 4
  %25 = load i32, i32* @gs_stack_top, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %26
  %28 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @currenty, align 4
  %30 = load i32, i32* @gs_stack_top, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %31
  %33 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %32, i32 0, i32 3
  store i32 %29, i32* %33, align 4
  %34 = load i16, i16* @currentxheight2, align 2
  %35 = load i32, i32* @gs_stack_top, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %36
  %38 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %37, i32 0, i32 4
  store i16 %34, i16* %38, align 2
  ret void
}

declare void @PDFPage_Push(%struct._IO_FILE*) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @PDF_RestoreGraphicState() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Pop(%struct._IO_FILE* %1)
  %2 = load i32, i32* @gs_stack_top, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %3
  %5 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* @currentfont, align 4
  %7 = load i32, i32* @gs_stack_top, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %8
  %10 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @currentcolour, align 4
  %12 = load i32, i32* @gs_stack_top, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %13
  %15 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @cpexists, align 4
  %17 = load i32, i32* @gs_stack_top, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %18
  %20 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @currenty, align 4
  %22 = load i32, i32* @gs_stack_top, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %23
  %25 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %24, i32 0, i32 4
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* @currentxheight2, align 2
  %27 = load i32, i32* @gs_stack_top, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @gs_stack_top, align 4
  ret void
}

declare void @PDFPage_Pop(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PDF_PrintGraphicObject(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %157 [
    i32 11, label %9
    i32 12, label %9
    i32 17, label %15
  ]

; <label>:9                                       ; preds = %0, %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 4
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i32 0, i32 0
  call void @PDFPage_WriteGraphic(%struct._IO_FILE* %10, i8* %14)
  br label %163

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 0
  %19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %18, i32 0, i64 0
  %20 = getelementptr inbounds %struct.LIST, %struct.LIST* %19, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %20, align 8
  store %union.rec* %21, %union.rec** %link, align 8
  br label %22

; <label>:22                                      ; preds = %149, %15
  %23 = load %union.rec*, %union.rec** %link, align 8
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = icmp ne %union.rec* %23, %24
  br i1 %25, label %26, label %156

; <label>:26                                      ; preds = %22
  %27 = load %union.rec*, %union.rec** %link, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %29, i32 0, i64 1
  %31 = getelementptr inbounds %struct.LIST, %struct.LIST* %30, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %31, align 8
  store %union.rec* %32, %union.rec** %y, align 8
  br label %33

; <label>:33                                      ; preds = %43, %26
  %34 = load %union.rec*, %union.rec** %y, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 1
  %37 = bitcast %union.FIRST_UNION* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

; <label>:42                                      ; preds = %33
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load %union.rec*, %union.rec** %y, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 0
  %47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %46, i32 0, i64 1
  %48 = getelementptr inbounds %struct.LIST, %struct.LIST* %47, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %48, align 8
  store %union.rec* %49, %union.rec** %y, align 8
  br label %33

; <label>:50                                      ; preds = %33
  %51 = load %union.rec*, %union.rec** %y, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 1
  %54 = bitcast %union.FIRST_UNION* %53 to %struct.anon*
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %83

; <label>:59                                      ; preds = %50
  %60 = load %union.rec*, %union.rec** %y, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 2
  %63 = bitcast %union.SECOND_UNION* %62 to %struct.anon.0*
  %64 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %63, i32 0, i32 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70

; <label>:68                                      ; preds = %59
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %82

; <label>:70                                      ; preds = %59
  %71 = load %union.rec*, %union.rec** %y, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 2
  %74 = bitcast %union.SECOND_UNION* %73 to %struct.anon.0*
  %75 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %70
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %81

; <label>:81                                      ; preds = %79, %70
  br label %82

; <label>:82                                      ; preds = %81, %68
  br label %148

; <label>:83                                      ; preds = %50
  %84 = load %union.rec*, %union.rec** %y, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 1
  %87 = bitcast %union.FIRST_UNION* %86 to %struct.anon*
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 11
  br i1 %91, label %110, label %92

; <label>:92                                      ; preds = %83
  %93 = load %union.rec*, %union.rec** %y, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 1
  %96 = bitcast %union.FIRST_UNION* %95 to %struct.anon*
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %110, label %101

; <label>:101                                     ; preds = %92
  %102 = load %union.rec*, %union.rec** %y, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 1
  %105 = bitcast %union.FIRST_UNION* %104 to %struct.anon*
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 17
  br i1 %109, label %110, label %112

; <label>:110                                     ; preds = %101, %92, %83
  %111 = load %union.rec*, %union.rec** %y, align 8
  call void @PDF_PrintGraphicObject(%union.rec* %111)
  br label %147

; <label>:112                                     ; preds = %101
  %113 = load %union.rec*, %union.rec** %y, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 1
  %116 = bitcast %union.FIRST_UNION* %115 to %struct.anon*
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 26
  br i1 %120, label %139, label %121

; <label>:121                                     ; preds = %112
  %122 = load %union.rec*, %union.rec** %y, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 1
  %125 = bitcast %union.FIRST_UNION* %124 to %struct.anon*
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sge i32 %128, 119
  br i1 %129, label %130, label %140

; <label>:130                                     ; preds = %121
  %131 = load %union.rec*, %union.rec** %y, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 1
  %134 = bitcast %union.FIRST_UNION* %133 to %struct.anon*
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %134, i32 0, i32 0
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp sle i32 %137, 138
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %130, %112
  br label %146

; <label>:140                                     ; preds = %130, %121
  %141 = load %union.rec*, %union.rec** %1, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 1
  %144 = bitcast %union.FIRST_UNION* %143 to %struct.FILE_POS*
  %145 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %146

; <label>:146                                     ; preds = %140, %139
  br label %147

; <label>:147                                     ; preds = %146, %110
  br label %148

; <label>:148                                     ; preds = %147, %82
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load %union.rec*, %union.rec** %link, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %152, i32 0, i64 0
  %154 = getelementptr inbounds %struct.LIST, %struct.LIST* %153, i32 0, i32 1
  %155 = load %union.rec*, %union.rec** %154, align 8
  store %union.rec* %155, %union.rec** %link, align 8
  br label %22

; <label>:156                                     ; preds = %22
  br label %163

; <label>:157                                     ; preds = %0
  %158 = load %union.rec*, %union.rec** %1, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 1
  %161 = bitcast %union.FIRST_UNION* %160 to %struct.FILE_POS*
  %162 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %163

; <label>:163                                     ; preds = %157, %156, %9
  ret void
}

declare void @PDFPage_WriteGraphic(%struct._IO_FILE*, i8*) #1

declare void @PDFPage_Write(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define void @PDF_DefineGraphicNames(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %str = alloca [256 x i8], align 16
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 97
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.closure_type*
  %16 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %15, i32 0, i32 4
  %17 = bitcast %union.FOURTH_UNION* %16 to %struct.STYLE*
  %18 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4095
  %21 = load i32, i32* @currentfont, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %44

; <label>:23                                      ; preds = %13
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = bitcast %union.rec* %24 to %struct.closure_type*
  %26 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %25, i32 0, i32 4
  %27 = bitcast %union.FOURTH_UNION* %26 to %struct.STYLE*
  %28 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 4095
  store i32 %30, i32* @currentfont, align 4
  %31 = load i32, i32* @currentfont, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %43

; <label>:33                                      ; preds = %23
  %34 = load i32, i32* @currentfont, align 4
  %35 = call i32 @FontHalfXHeight(i32 %34)
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* @currentxheight2, align 2
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %38 = load i32, i32* @currentfont, align 4
  %39 = load %union.rec*, %union.rec** %1, align 8
  %40 = call i32 @FontSize(i32 %38, %union.rec* %39)
  %41 = load i32, i32* @currentfont, align 4
  %42 = call i8* @FontName(i32 %41)
  call void @PDFFont_Set(%struct._IO_FILE* %37, i32 %40, i8* %42)
  br label %43

; <label>:43                                      ; preds = %33, %23
  br label %44

; <label>:44                                      ; preds = %43, %13
  %45 = load %union.rec*, %union.rec** %1, align 8
  %46 = bitcast %union.rec* %45 to %struct.closure_type*
  %47 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %46, i32 0, i32 4
  %48 = bitcast %union.FOURTH_UNION* %47 to %struct.STYLE*
  %49 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = lshr i32 %50, 12
  %52 = and i32 %51, 1023
  %53 = load i32, i32* @currentcolour, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %74

; <label>:55                                      ; preds = %44
  %56 = load %union.rec*, %union.rec** %1, align 8
  %57 = bitcast %union.rec* %56 to %struct.closure_type*
  %58 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %57, i32 0, i32 4
  %59 = bitcast %union.FOURTH_UNION* %58 to %struct.STYLE*
  %60 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = lshr i32 %61, 12
  %63 = and i32 %62, 1023
  store i32 %63, i32* @currentcolour, align 4
  %64 = load i32, i32* @currentcolour, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %73

; <label>:66                                      ; preds = %55
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  %68 = load i32, i32* @currentcolour, align 4
  %69 = call i8* @ColourCommand(i32 %68)
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %69) #4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %71, i8* %72)
  br label %73

; <label>:73                                      ; preds = %66, %55
  br label %74

; <label>:74                                      ; preds = %73, %44
  %75 = load %union.rec*, %union.rec** %1, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 3
  %78 = bitcast %union.THIRD_UNION* %77 to %struct.anon.6*
  %79 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %79, i32 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 3
  %85 = bitcast %union.THIRD_UNION* %84 to %struct.anon.6*
  %86 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %85, i32 0, i32 1
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i32 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %81, %88
  %90 = load %union.rec*, %union.rec** %1, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 3
  %93 = bitcast %union.THIRD_UNION* %92 to %struct.anon.6*
  %94 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %93, i32 0, i32 0
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i32 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %union.rec*, %union.rec** %1, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 3
  %100 = bitcast %union.THIRD_UNION* %99 to %struct.anon.6*
  %101 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %100, i32 0, i32 1
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %101, i32 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %96, %103
  %105 = load %union.rec*, %union.rec** %1, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 3
  %108 = bitcast %union.THIRD_UNION* %107 to %struct.anon.6*
  %109 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i32 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %union.rec*, %union.rec** %1, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 3
  %115 = bitcast %union.THIRD_UNION* %114 to %struct.anon.6*
  %116 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %115, i32 0, i32 1
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i32 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @currentfont, align 4
  %120 = icmp ule i32 %119, 0
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %74
  br label %126

; <label>:122                                     ; preds = %74
  %123 = load i32, i32* @currentfont, align 4
  %124 = load %union.rec*, %union.rec** %1, align 8
  %125 = call i32 @FontSize(i32 %123, %union.rec* %124)
  br label %126

; <label>:126                                     ; preds = %122, %121
  %127 = phi i32 [ 240, %121 ], [ %125, %122 ]
  %128 = load %union.rec*, %union.rec** %1, align 8
  %129 = bitcast %union.rec* %128 to %struct.closure_type*
  %130 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %129, i32 0, i32 4
  %131 = bitcast %union.FOURTH_UNION* %130 to %struct.STYLE*
  %132 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %131, i32 0, i32 0
  %133 = bitcast %union.anon* %132 to %struct.GAP*
  %134 = getelementptr inbounds %struct.GAP, %struct.GAP* %133, i32 0, i32 1
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i32
  %137 = load %union.rec*, %union.rec** %1, align 8
  %138 = bitcast %union.rec* %137 to %struct.closure_type*
  %139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %138, i32 0, i32 4
  %140 = bitcast %union.FOURTH_UNION* %139 to %struct.STYLE*
  %141 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %140, i32 0, i32 1
  %142 = bitcast %union.anon.10* %141 to %struct.GAP*
  %143 = getelementptr inbounds %struct.GAP, %struct.GAP* %142, i32 0, i32 1
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %144 to i32
  call void @PDFPage_SetVars(i32 %89, i32 %104, i32 %111, i32 %118, i32 %127, i32 %136, i32 %145)
  ret void
}

declare i32 @FontHalfXHeight(i32) #1

declare void @PDFFont_Set(%struct._IO_FILE*, i32, i8*) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare i8* @FontName(i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @ColourCommand(i32) #1

declare void @PDFPage_SetVars(i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @PDF_SaveTranslateDefineSave(%union.rec* %x, i32 %xdist, i32 %ydist) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xdist, i32* %2, align 4
  store i32 %ydist, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %1, align 8
  call void @PDF_SaveGraphicState(%union.rec* %4)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  call void @PDF_CoordTranslate(i32 %5, i32 %6)
  %7 = load %union.rec*, %union.rec** %1, align 8
  call void @PDF_DefineGraphicNames(%union.rec* %7)
  %8 = load %union.rec*, %union.rec** %1, align 8
  call void @PDF_SaveGraphicState(%union.rec* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordTranslate(i32 %xdist, i32 %ydist) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %xdist, i32* %1, align 4
  store i32 %ydist, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %5, %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sitofp i32 %10 to float
  %12 = load i32, i32* %2, align 4
  %13 = sitofp i32 %12 to float
  call void @PDFPage_Translate(%struct._IO_FILE* %9, float %11, float %13)
  br label %14

; <label>:14                                      ; preds = %8, %5
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDF_PrintGraphicInclude(%union.rec* %x, i32 %colmark, i32 %rowmark) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %colmark, i32* %2, align 4
  store i32 %rowmark, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 0
  %7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %6, i32 0, i64 0
  %8 = getelementptr inbounds %struct.LIST, %struct.LIST* %7, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 0
  %12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %11, i32 0, i64 1
  %13 = getelementptr inbounds %struct.LIST, %struct.LIST* %12, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %13, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %15

; <label>:15                                      ; preds = %25, %0
  %16 = load %union.rec*, %union.rec** %y, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 1
  %19 = bitcast %union.FIRST_UNION* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

; <label>:24                                      ; preds = %15
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load %union.rec*, %union.rec** %y, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 1
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %y, align 8
  br label %15

; <label>:32                                      ; preds = %15
  %33 = load %union.rec*, %union.rec** %1, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 1
  %36 = bitcast %union.FIRST_UNION* %35 to %struct.FILE_POS*
  %37 = load %union.rec*, %union.rec** %y, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 4
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %39, i32 0, i32 0
  %41 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %36, i8* %40)
  ret void
}

declare void @PDFPage_Translate(%struct._IO_FILE*, float, float) #1

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintInitialize(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @out_fp, align 8
  store i32 0, i32* @prologue_done, align 4
  store i32 -1, i32* @gs_stack_top, align 4
  store i32 0, i32* @currentfont, align 4
  store i32 0, i32* @currentcolour, align 4
  store i32 0, i32* @cpexists, align 4
  store i32 0, i32* @pagecount, align 4
  store i32 0, i32* @wordcount, align 4
  %3 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %4 = zext i8 %3 to i32
  store i32 %4, i32* @zz_size, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %5, 265
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %8)
  br label %35

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @zz_size, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %12
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = icmp eq %union.rec* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %10
  %17 = load i32, i32* @zz_size, align 4
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = call %union.rec* @GetMemory(i32 %17, %struct.FILE_POS* %18)
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  br label %34

; <label>:20                                      ; preds = %10
  %21 = load i32, i32* @zz_size, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %22
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 0
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load i32, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %32
  store %union.rec* %30, %union.rec** %33, align 8
  br label %34

; <label>:34                                      ; preds = %20, %16
  br label %35

; <label>:35                                      ; preds = %34, %7
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  store i8 17, i8* %40, align 1
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 1
  store %union.rec* %41, %union.rec** %46, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  store %union.rec* %41, %union.rec** %51, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 0
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  store %union.rec* %41, %union.rec** %56, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 0
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 0
  store %union.rec* %41, %union.rec** %61, align 8
  store %union.rec* %41, %union.rec** @needs, align 8
  %62 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* @zz_size, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp uge i64 %64, 265
  br i1 %65, label %66, label %69

; <label>:66                                      ; preds = %35
  %67 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %68 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %67)
  br label %94

; <label>:69                                      ; preds = %35
  %70 = load i32, i32* @zz_size, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %71
  %73 = load %union.rec*, %union.rec** %72, align 8
  %74 = icmp eq %union.rec* %73, null
  br i1 %74, label %75, label %79

; <label>:75                                      ; preds = %69
  %76 = load i32, i32* @zz_size, align 4
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %78 = call %union.rec* @GetMemory(i32 %76, %struct.FILE_POS* %77)
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  br label %93

; <label>:79                                      ; preds = %69
  %80 = load i32, i32* @zz_size, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %81
  %83 = load %union.rec*, %union.rec** %82, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 0
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %88, align 8
  %90 = load i32, i32* @zz_size, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %91
  store %union.rec* %89, %union.rec** %92, align 8
  br label %93

; <label>:93                                      ; preds = %79, %75
  br label %94

; <label>:94                                      ; preds = %93, %66
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 1
  %98 = bitcast %union.FIRST_UNION* %97 to %struct.anon*
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0
  store i8 17, i8* %99, align 1
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 1
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 1
  store %union.rec* %100, %union.rec** %105, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  store %union.rec* %100, %union.rec** %110, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 0
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 1
  store %union.rec* %100, %union.rec** %115, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 0
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 0
  store %union.rec* %100, %union.rec** %120, align 8
  store %union.rec* %100, %union.rec** @supplied, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintLength(i8* %buff, i32 %length, i32 %length_dim) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i8* %buff, i8** %1, align 8
  store i32 %length, i32* %2, align 4
  store i32 %length_dim, i32* %3, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to float
  %7 = fdiv float %6, 5.670000e+02
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), double %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPageSetupForFont(%union.rec* %face, i32 %font_curr_page, i8* %font_name, i8* %first_size_str) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %enc = alloca i8*, align 8
  %m = alloca i32, align 4
  store %union.rec* %face, %union.rec** %1, align 8
  store i32 %font_curr_page, i32* %2, align 4
  store i8* %font_name, i8** %3, align 8
  store i8* %first_size_str, i8** %4, align 8
  store i8* null, i8** %enc, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %6)
  %8 = load %union.rec*, %union.rec** %1, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 3
  %11 = bitcast %union.THIRD_UNION* %10 to %struct.anon.7*
  %12 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %11, i32 0, i32 3
  %13 = load i8, i8* %12, align 4
  %14 = lshr i8 %13, 7
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

; <label>:17                                      ; preds = %0
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 3
  %21 = bitcast %union.THIRD_UNION* %20 to %struct.anon.7*
  %22 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 4
  %24 = and i8 %23, 127
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %m, align 4
  %26 = load i32, i32* %m, align 4
  call void @MapEnsurePrinted(i32 %26, i32 1)
  %27 = load i32, i32* %m, align 4
  %28 = call i8* @MapEncodingName(i32 %27)
  store i8* %28, i8** %enc, align 8
  br label %29

; <label>:29                                      ; preds = %17, %0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %enc, align 8
  call void @PDFFont_AddFont(%struct._IO_FILE* %30, i8* %31, i8* %32, i8* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPageResourceForFont(i8* %font_name, i32 %first) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %font_name, i8** %1, align 8
  store i32 %first, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintMapping(i32 %m) #0 {
  %1 = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  %i = alloca i32, align 4
  store i32 %m, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %3
  %5 = load %struct.mapvec*, %struct.mapvec** %4, align 8
  store %struct.mapvec* %5, %struct.mapvec** %map, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %8 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %7, i32 0, i32 4
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 4
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i32 0, i32 0
  call void @PDFFile_BeginFontEncoding(%struct._IO_FILE* %6, i8* %12)
  store i32 0, i32* %i, align 4
  br label %13

; <label>:13                                      ; preds = %33, %0
  %14 = load i32, i32* %i, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %36

; <label>:16                                      ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %18 = load i32, i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %21 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %20, i32 0, i32 5
  %22 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %21, i32 0, i64 %19
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i32 0, i32 0
  %27 = load i32, i32* %i, align 4
  %28 = add nsw i32 %27, 1
  %29 = srem i32 %28, 8
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %30, i32 32, i32 10
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %26, i32 %31)
  br label %33

; <label>:33                                      ; preds = %16
  %34 = load i32, i32* %i, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4
  br label %13

; <label>:36                                      ; preds = %13
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFFile_EndFontEncoding(%struct._IO_FILE* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintBeforeFirstPage(i32 %h, i32 %v, i8* %label) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %h, i32* %1, align 4
  store i32 %v, i32* %2, align 4
  store i8* %label, i8** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sdiv i32 %5, 20
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 20
  call void @PDFFile_Init(%struct._IO_FILE* %4, i32 %6, i32 %8, i32 1440, i32 567, i32 20, i32 120)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Init(%struct._IO_FILE* %10, float 0x3FA99999A0000000, i32 10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %11)
  call void @FontAdvanceCurrentPage()
  store i32 1, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintBetweenPages(i32 %h, i32 %v, i8* %label) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %h, i32* %1, align 4
  store i32 %v, i32* %2, align 4
  store i8* %label, i8** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Cleanup(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Init(%struct._IO_FILE* %5, float 0x3FA99999A0000000, i32 10)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %7)
  call void @FontAdvanceCurrentPage()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintWord(%union.rec* %x, i32 %hpos, i32 %vpos) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %unacc = alloca i8*, align 8
  %ksize = alloca i32, align 4
  %command = alloca i8*, align 8
  %m = alloca i32, align 4
  %composite = alloca i16*, align 8
  %cmp = alloca %struct.composite_rec*, align 8
  %str = alloca [256 x i8], align 16
  %ua_ch1 = alloca i32, align 4
  %ua_ch2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %kc = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %hpos, i32* %2, align 4
  store i32 %vpos, i32* %3, align 4
  %4 = load i32, i32* @TotalWordCount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @TotalWordCount, align 4
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 2
  %9 = bitcast %union.SECOND_UNION* %8 to %struct.anon.1*
  %10 = bitcast %struct.anon.1* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 4095
  %13 = load i32, i32* @currentfont, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %32

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 2
  %19 = bitcast %union.SECOND_UNION* %18 to %struct.anon.1*
  %20 = bitcast %struct.anon.1* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 4095
  store i32 %22, i32* @currentfont, align 4
  %23 = load i32, i32* @currentfont, align 4
  %24 = call i32 @FontHalfXHeight(i32 %23)
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* @currentxheight2, align 2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %27 = load i32, i32* @currentfont, align 4
  %28 = load %union.rec*, %union.rec** %1, align 8
  %29 = call i32 @FontSize(i32 %27, %union.rec* %28)
  %30 = load i32, i32* @currentfont, align 4
  %31 = call i8* @FontName(i32 %30)
  call void @PDFFont_Set(%struct._IO_FILE* %26, i32 %29, i8* %31)
  br label %32

; <label>:32                                      ; preds = %15, %0
  %33 = load %union.rec*, %union.rec** %1, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 2
  %36 = bitcast %union.SECOND_UNION* %35 to %struct.anon.1*
  %37 = bitcast %struct.anon.1* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = lshr i32 %38, 12
  %40 = and i32 %39, 1023
  %41 = load i32, i32* @currentcolour, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %62

; <label>:43                                      ; preds = %32
  %44 = load %union.rec*, %union.rec** %1, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 2
  %47 = bitcast %union.SECOND_UNION* %46 to %struct.anon.1*
  %48 = bitcast %struct.anon.1* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = lshr i32 %49, 12
  %51 = and i32 %50, 1023
  store i32 %51, i32* @currentcolour, align 4
  %52 = load i32, i32* @currentcolour, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %43
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  %56 = load i32, i32* @currentcolour, align 4
  %57 = call i8* @ColourCommand(i32 %56)
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %57) #4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %59, i8* %60)
  br label %61

; <label>:61                                      ; preds = %54, %43
  br label %62

; <label>:62                                      ; preds = %61, %32
  %63 = load i32, i32* %3, align 4
  %64 = load i16, i16* @currentxheight2, align 2
  %65 = sext i16 %64 to i32
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* @cpexists, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %62
  %70 = load i32, i32* @currenty, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

; <label>:73                                      ; preds = %69
  %74 = call i32 @PDFHasValidTextMatrix()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %command, align 8
  br label %79

; <label>:77                                      ; preds = %73, %69, %62
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* @currenty, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8** %command, align 8
  store i32 1, i32* @cpexists, align 4
  br label %79

; <label>:79                                      ; preds = %77, %76
  %80 = load %union.rec*, %union.rec** %1, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 2
  %83 = bitcast %union.SECOND_UNION* %82 to %struct.anon.1*
  %84 = bitcast %struct.anon.1* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 4095
  %87 = zext i32 %86 to i64
  %88 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %89 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %88, i64 %87
  %90 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %lig, align 8
  %92 = load %union.rec*, %union.rec** %1, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 4
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %94, i32 0, i32 0
  store i8* %95, i8** %q, align 8
  store i8* %95, i8** %p, align 8
  br label %96

; <label>:96                                      ; preds = %195, %79
  %97 = load i8*, i8** %p, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %p, align 8
  %99 = load i8, i8* %97, align 1
  %100 = load i8*, i8** %q, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %q, align 8
  store i8 %99, i8* %100, align 1
  %102 = zext i8 %99 to i64
  %103 = load i8*, i8** %lig, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %194

; <label>:107                                     ; preds = %96
  %108 = load i8*, i8** %q, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i64
  %112 = load i8*, i8** %lig, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %107
  br label %195

; <label>:118                                     ; preds = %107
  %119 = load i8*, i8** %p, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i64
  %123 = load i8*, i8** %lig, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %126, 256
  %128 = sext i32 %127 to i64
  %129 = load i8*, i8** %lig, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %a, align 8
  br label %131

; <label>:131                                     ; preds = %191, %118
  %132 = load i8*, i8** %a, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %a, align 8
  %134 = load i8, i8* %132, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8*, i8** %p, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 -1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %135, %139
  br i1 %140, label %141, label %192

; <label>:141                                     ; preds = %131
  %142 = load i8*, i8** %p, align 8
  store i8* %142, i8** %b, align 8
  br label %143

; <label>:143                                     ; preds = %164, %141
  %144 = load i8*, i8** %a, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8*, i8** %b, align 8
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %162

; <label>:151                                     ; preds = %143
  %152 = load i8*, i8** %a, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

; <label>:157                                     ; preds = %151
  %158 = load i8*, i8** %b, align 8
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br label %162

; <label>:162                                     ; preds = %157, %151, %143
  %163 = phi i1 [ false, %151 ], [ false, %143 ], [ %161, %157 ]
  br i1 %163, label %164, label %169

; <label>:164                                     ; preds = %162
  %165 = load i8*, i8** %a, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %a, align 8
  %167 = load i8*, i8** %b, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %b, align 8
  br label %143

; <label>:169                                     ; preds = %162
  %170 = load i8*, i8** %a, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

; <label>:175                                     ; preds = %169
  %176 = load i8*, i8** %a, align 8
  %177 = load i8, i8* %176, align 1
  %178 = load i8*, i8** %q, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 -1
  store i8 %177, i8* %179, align 1
  %180 = load i8*, i8** %b, align 8
  store i8* %180, i8** %p, align 8
  br label %192

; <label>:181                                     ; preds = %169
  br label %182

; <label>:182                                     ; preds = %187, %181
  %183 = load i8*, i8** %a, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %a, align 8
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %182
  br label %182

; <label>:188                                     ; preds = %182
  %189 = load i8*, i8** %a, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %a, align 8
  br label %191

; <label>:191                                     ; preds = %188
  br label %131

; <label>:192                                     ; preds = %175, %131
  br label %193

; <label>:193                                     ; preds = %192
  br label %194

; <label>:194                                     ; preds = %193, %96
  br label %195

; <label>:195                                     ; preds = %194, %117
  %196 = load i8*, i8** %p, align 8
  %197 = load i8, i8* %196, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %96, label %199

; <label>:199                                     ; preds = %195
  %200 = load i8*, i8** %q, align 8
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %command, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  switch i32 %204, label %234 [
    i32 109, label %205
    i32 115, label %219
  ]

; <label>:205                                     ; preds = %199
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %207 = load i32, i32* %2, align 4
  %208 = load i32, i32* %3, align 4
  call void @PDFText_OpenXY(%struct._IO_FILE* %206, i32 %207, i32 %208)
  %209 = load i32, i32* %2, align 4
  store i32 %209, i32* @PDF_PrintWord.last_hpos, align 4
  %210 = load i32, i32* %2, align 4
  %211 = load %union.rec*, %union.rec** %1, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 3
  %214 = bitcast %union.THIRD_UNION* %213 to %struct.anon.6*
  %215 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %214, i32 0, i32 1
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %215, i32 0, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %210, %217
  store i32 %218, i32* @PDF_PrintWord.next_hpos, align 4
  br label %234

; <label>:219                                     ; preds = %199
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %221 = load i32, i32* %2, align 4
  %222 = load i32, i32* @PDF_PrintWord.last_hpos, align 4
  %223 = sub nsw i32 %221, %222
  call void @PDFText_OpenX(%struct._IO_FILE* %220, i32 %223)
  %224 = load i32, i32* %2, align 4
  store i32 %224, i32* @PDF_PrintWord.last_hpos, align 4
  %225 = load i32, i32* %2, align 4
  %226 = load %union.rec*, %union.rec** %1, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 3
  %229 = bitcast %union.THIRD_UNION* %228 to %struct.anon.6*
  %230 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %229, i32 0, i32 1
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %230, i32 0, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %225, %232
  store i32 %233, i32* @PDF_PrintWord.next_hpos, align 4
  br label %234

; <label>:234                                     ; preds = %199, %219, %205
  %235 = load %union.rec*, %union.rec** %1, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 4
  %238 = getelementptr inbounds [4 x i8], [4 x i8]* %237, i32 0, i32 0
  store i8* %238, i8** %p, align 8
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %240 = load i8*, i8** %p, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %242
  %244 = load i8*, i8** %243, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %239, i8* %244)
  %245 = load %union.rec*, %union.rec** %1, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 2
  %248 = bitcast %union.SECOND_UNION* %247 to %struct.anon.1*
  %249 = bitcast %struct.anon.1* %248 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 4095
  %252 = zext i32 %251 to i64
  %253 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %254 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %253, i64 %252
  %255 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %254, i32 0, i32 5
  %256 = load %union.rec*, %union.rec** %255, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 3
  %259 = bitcast %union.THIRD_UNION* %258 to %struct.anon.7*
  %260 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %259, i32 0, i32 3
  %261 = load i8, i8* %260, align 4
  %262 = and i8 %261, 127
  %263 = zext i8 %262 to i32
  store i32 %263, i32* %m, align 4
  %264 = load i32, i32* %m, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %265
  %267 = load %struct.mapvec*, %struct.mapvec** %266, align 8
  %268 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %267, i32 0, i32 7
  %269 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %268, i32 0, i64 2
  %270 = getelementptr inbounds [256 x i8], [256 x i8]* %269, i32 0, i32 0
  store i8* %270, i8** %unacc, align 8
  %271 = load i8*, i8** %p, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %p, align 8
  br label %273

; <label>:273                                     ; preds = %447, %234
  %274 = load i8*, i8** %p, align 8
  %275 = load i8, i8* %274, align 1
  %276 = icmp ne i8 %275, 0
  br i1 %276, label %277, label %450

; <label>:277                                     ; preds = %273
  %278 = load i8*, i8** %p, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 -1
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i64
  %282 = load i8*, i8** %unacc, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 %281
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  store i32 %285, i32* %ua_ch1, align 4
  %286 = load i8*, i8** %p, align 8
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i64
  %289 = load i8*, i8** %unacc, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 %288
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  store i32 %292, i32* %ua_ch2, align 4
  %293 = load i32, i32* %ua_ch1, align 4
  %294 = sext i32 %293 to i64
  %295 = load %union.rec*, %union.rec** %1, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 2
  %298 = bitcast %union.SECOND_UNION* %297 to %struct.anon.1*
  %299 = bitcast %struct.anon.1* %298 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 4095
  %302 = zext i32 %301 to i64
  %303 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %304 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %303, i64 %302
  %305 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %304, i32 0, i32 6
  %306 = load %union.rec*, %union.rec** %305, align 8
  %307 = bitcast %union.rec* %306 to %struct.word_type*
  %308 = getelementptr inbounds %struct.word_type, %struct.word_type* %307, i32 0, i32 2
  %309 = bitcast %union.SECOND_UNION* %308 to %struct.anon.4*
  %310 = bitcast %struct.anon.4* %309 to i16*
  %311 = load i16, i16* %310, align 4
  %312 = and i16 %311, 4095
  %313 = zext i16 %312 to i32
  %314 = zext i32 %313 to i64
  %315 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %316 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %315, i64 %314
  %317 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %316, i32 0, i32 9
  %318 = load i16*, i16** %317, align 8
  %319 = getelementptr inbounds i16, i16* %318, i64 %294
  %320 = load i16, i16* %319, align 2
  %321 = zext i16 %320 to i32
  store i32 %321, i32* %i, align 4
  %322 = load i32, i32* %j, align 4
  %323 = load i32, i32* %i, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %326

; <label>:325                                     ; preds = %277
  store i32 0, i32* %ksize, align 4
  br label %434

; <label>:326                                     ; preds = %277
  %327 = load %union.rec*, %union.rec** %1, align 8
  %328 = bitcast %union.rec* %327 to %struct.word_type*
  %329 = getelementptr inbounds %struct.word_type, %struct.word_type* %328, i32 0, i32 2
  %330 = bitcast %union.SECOND_UNION* %329 to %struct.anon.1*
  %331 = bitcast %struct.anon.1* %330 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 4095
  %334 = zext i32 %333 to i64
  %335 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %336 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %335, i64 %334
  %337 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %336, i32 0, i32 6
  %338 = load %union.rec*, %union.rec** %337, align 8
  %339 = bitcast %union.rec* %338 to %struct.word_type*
  %340 = getelementptr inbounds %struct.word_type, %struct.word_type* %339, i32 0, i32 2
  %341 = bitcast %union.SECOND_UNION* %340 to %struct.anon.4*
  %342 = bitcast %struct.anon.4* %341 to i16*
  %343 = load i16, i16* %342, align 4
  %344 = and i16 %343, 4095
  %345 = zext i16 %344 to i32
  %346 = zext i32 %345 to i64
  %347 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %348 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %347, i64 %346
  %349 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %348, i32 0, i32 10
  %350 = load i8*, i8** %349, align 8
  store i8* %350, i8** %kc, align 8
  %351 = load i32, i32* %i, align 4
  store i32 %351, i32* %j, align 4
  br label %352

; <label>:352                                     ; preds = %362, %326
  %353 = load i32, i32* %j, align 4
  %354 = sext i32 %353 to i64
  %355 = load i8*, i8** %kc, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 %354
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = load i32, i32* %ua_ch2, align 4
  %360 = icmp sgt i32 %358, %359
  br i1 %360, label %361, label %365

; <label>:361                                     ; preds = %352
  br label %362

; <label>:362                                     ; preds = %361
  %363 = load i32, i32* %j, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %j, align 4
  br label %352

; <label>:365                                     ; preds = %352
  %366 = load i32, i32* %j, align 4
  %367 = sext i32 %366 to i64
  %368 = load i8*, i8** %kc, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 %367
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = load i32, i32* %ua_ch2, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %431

; <label>:374                                     ; preds = %365
  %375 = load i32, i32* %j, align 4
  %376 = sext i32 %375 to i64
  %377 = load %union.rec*, %union.rec** %1, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 2
  %380 = bitcast %union.SECOND_UNION* %379 to %struct.anon.1*
  %381 = bitcast %struct.anon.1* %380 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, 4095
  %384 = zext i32 %383 to i64
  %385 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %386 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %385, i64 %384
  %387 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %386, i32 0, i32 6
  %388 = load %union.rec*, %union.rec** %387, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 2
  %391 = bitcast %union.SECOND_UNION* %390 to %struct.anon.4*
  %392 = bitcast %struct.anon.4* %391 to i16*
  %393 = load i16, i16* %392, align 4
  %394 = and i16 %393, 4095
  %395 = zext i16 %394 to i32
  %396 = zext i32 %395 to i64
  %397 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %398 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %397, i64 %396
  %399 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %398, i32 0, i32 11
  %400 = load i8*, i8** %399, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 %376
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i64
  %404 = load %union.rec*, %union.rec** %1, align 8
  %405 = bitcast %union.rec* %404 to %struct.word_type*
  %406 = getelementptr inbounds %struct.word_type, %struct.word_type* %405, i32 0, i32 2
  %407 = bitcast %union.SECOND_UNION* %406 to %struct.anon.1*
  %408 = bitcast %struct.anon.1* %407 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = and i32 %409, 4095
  %411 = zext i32 %410 to i64
  %412 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %413 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %412, i64 %411
  %414 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %413, i32 0, i32 6
  %415 = load %union.rec*, %union.rec** %414, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 2
  %418 = bitcast %union.SECOND_UNION* %417 to %struct.anon.4*
  %419 = bitcast %struct.anon.4* %418 to i16*
  %420 = load i16, i16* %419, align 4
  %421 = and i16 %420, 4095
  %422 = zext i16 %421 to i32
  %423 = zext i32 %422 to i64
  %424 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %425 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %424, i64 %423
  %426 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %425, i32 0, i32 12
  %427 = load i16*, i16** %426, align 8
  %428 = getelementptr inbounds i16, i16* %427, i64 %403
  %429 = load i16, i16* %428, align 2
  %430 = sext i16 %429 to i32
  br label %432

; <label>:431                                     ; preds = %365
  br label %432

; <label>:432                                     ; preds = %431, %374
  %433 = phi i32 [ %430, %374 ], [ 0, %431 ]
  store i32 %433, i32* %ksize, align 4
  br label %434

; <label>:434                                     ; preds = %432, %325
  %435 = load i32, i32* %ksize, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %440

; <label>:437                                     ; preds = %434
  %438 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %439 = load i32, i32* %ksize, align 4
  call void @PDFText_Kern(%struct._IO_FILE* %438, i32 %439)
  br label %440

; <label>:440                                     ; preds = %437, %434
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %442 = load i8*, i8** %p, align 8
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i64
  %445 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %444
  %446 = load i8*, i8** %445, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %441, i8* %446)
  br label %447

; <label>:447                                     ; preds = %440
  %448 = load i8*, i8** %p, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %p, align 8
  br label %273

; <label>:450                                     ; preds = %273
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFText_Close(%struct._IO_FILE* %451)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPlainGraphic(%union.rec* %x, i32 %xmk, i32 %ymk, %union.rec* %z) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xmk, i32* %2, align 4
  store i32 %ymk, i32* %3, align 4
  store %union.rec* %z, %union.rec** %4, align 8
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintUnderline(i32 %fnum, i32 %col, i32 %xstart, i32 %xstop, i32 %ymk) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %fnum, i32* %1, align 4
  store i32 %col, i32* %2, align 4
  store i32 %xstart, i32* %3, align 4
  store i32 %xstop, i32* %4, align 4
  store i32 %ymk, i32* %5, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %13 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %12, i64 %11
  %14 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %13, i32 0, i32 7
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %9, %16
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %21 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %20, i64 %19
  %22 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %21, i32 0, i32 8
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  call void @PDFPage_PrintUnderline(%struct._IO_FILE* %6, i32 %7, i32 %8, i32 %17, i32 %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordRotate(i32 %amount) #0 {
  %1 = alloca i32, align 4
  %theAmount = alloca i32, align 4
  store i32 %amount, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sdiv i32 %2, 128
  %4 = srem i32 %3, 360
  store i32 %4, i32* %theAmount, align 4
  %5 = load i32, i32* %theAmount, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %9 = load i32, i32* %theAmount, align 4
  %10 = sitofp i32 %9 to double
  %11 = fmul double %10, 0x400921FB54442D18
  %12 = fdiv double %11, 1.800000e+02
  %13 = fptrunc double %12 to float
  call void @PDFPage_Rotate(%struct._IO_FILE* %8, float %13)
  br label %14

; <label>:14                                      ; preds = %7, %0
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordScale(float %hfactor, float %vfactor) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %hfactor, float* %1, align 4
  store float %vfactor, float* %2, align 4
  %3 = load float, float* %1, align 4
  %4 = fpext float %3 to double
  %5 = fsub double %4, 1.000000e+00
  %6 = call double @fabs(double %5) #5
  %7 = fcmp ogt double %6, 1.000000e-02
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %0
  %9 = load float, float* %2, align 4
  %10 = fpext float %9 to double
  %11 = fsub double %10, 1.000000e+00
  %12 = call double @fabs(double %11) #5
  %13 = fcmp ogt double %12, 1.000000e-02
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %8, %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %16 = load float, float* %1, align 4
  %17 = load float, float* %2, align 4
  call void @PDFPage_Scale(%struct._IO_FILE* %15, float %16, float %17)
  br label %18

; <label>:18                                      ; preds = %14, %8
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_LinkSource(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.rec* %name, %union.rec** %1, align 8
  store i32 %llx, i32* %2, align 4
  store i32 %lly, i32* %3, align 4
  store i32 %urx, i32* %4, align 4
  store i32 %ury, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_LinkDest(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.rec* %name, %union.rec** %1, align 8
  store i32 %llx, i32* %2, align 4
  store i32 %lly, i32* %3, align 4
  store i32 %urx, i32* %4, align 4
  store i32 %ury, i32* %5, align 4
  ret void
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @MapEnsurePrinted(i32, i32) #1

declare i8* @MapEncodingName(i32) #1

declare void @PDFFont_AddFont(%struct._IO_FILE*, i8*, i8*, i8*) #1

declare void @PDFFile_BeginFontEncoding(%struct._IO_FILE*, i8*) #1

declare void @PDFFile_EndFontEncoding(%struct._IO_FILE*) #1

declare void @PDFFile_Init(%struct._IO_FILE*, i32, i32, i32, i32, i32, i32) #1

declare void @FontPrintPageSetup(%struct._IO_FILE*) #1

declare void @PDFPage_Init(%struct._IO_FILE*, float, i32) #1

declare void @FontPrintPageResources(%struct._IO_FILE*) #1

declare void @FontAdvanceCurrentPage() #1

declare i32 @PDFHasValidTextMatrix() #1

declare void @PDFText_OpenXY(%struct._IO_FILE*, i32, i32) #1

declare void @PDFText_OpenX(%struct._IO_FILE*, i32) #1

declare void @PDFText_Kern(%struct._IO_FILE*, i32) #1

declare void @PDFText_Close(%struct._IO_FILE*) #1

declare void @PDFPage_PrintUnderline(%struct._IO_FILE*, i32, i32, i32, i32) #1

declare void @PDFPage_Rotate(%struct._IO_FILE*, float) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @PDFPage_Scale(%struct._IO_FILE*, float, float) #1

; Function Attrs: nounwind uwtable
define internal void @PDF_LinkCheck() #0 {
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}