; ModuleID = 'z02.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i8, i8*, i16, %struct._IO_FILE*, %struct.FILE_POS, i16, %union.rec*, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.0 = type { i8, i8, i32 }
%struct.anon.6 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.1 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }

@chtbl = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\C0\C1\C2\C3\C4\C5\C6\C7\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\C8\C9\CA\CB\CC\CD\CE\CF\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\D0\D1\D2\D3\D4\D5\D6\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\D8\D9\DA\DB\DC\DD\DE\DF\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\E0\E1\E2\E3\E4\E5\E6\E7\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\E8\E9\EA\EB\EC\ED\EE\EF\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\F0\F1\F2\F3\F4\F5\F6\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\F8\F9\FA\FB\FC\FD\FE\FF\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stack_free = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [66 x i8] c"too many open files when opening include file %s; open files are:\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"too many open files when opening database file %s; open files are:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@lex_stack = internal global [10 x %struct.anon] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"exiting now\00", align 1
@chpt = internal global i8* null, align 8
@frst = internal global i8* null, align 8
@limit = internal global i8* null, align 8
@buf = internal global i8* null, align 8
@blksize = internal global i32 0, align 4
@last_char = internal global i8 0, align 1
@startline = internal global i8* null, align 8
@this_file = internal global i16 0, align 2
@fp = internal global %struct._IO_FILE* null, align 8
@ftype = internal global i16 0, align 2
@next_token = internal global %union.rec* null, align 8
@offset = internal global i32 0, align 4
@first_line_num = internal global i32 0, align 4
@same_file = internal global i32 0, align 4
@mem_block = internal global i8* null, align 8
@file_pos = internal global %struct.FILE_POS zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"run out of memory when opening file %s\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"LexPop: stack_free <= 0!\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"illegal macro invocation in database\00", align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@StartSym = external global %union.rec*, align 8
@.str.27 = private unnamed_addr constant [35 x i8] c"character %c outside quoted string\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"cannot open file %s\00", align 1
@FilterOutSym = external global %union.rec*, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"unknown file type\00", align 1
@zz_size = external global i32, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@.str.31 = private unnamed_addr constant [19 x i8] c"recursion in macro\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"%s expected (after %s)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"name of include file expected here\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"skipping null character in string\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"LexGetToken: error in quoted string\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"LexGetToken: bad chtbl[]\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"line is too long (or final newline missing)\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"filter parameter in macro\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"end of file reached while reading %s\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"end of file reached while reading filter parameter\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"expected %s here (after %s)\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"expected file name here\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"cannot open include file %s\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"unreadable character (octal %o)\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"LexScanVerbatim: bad chtbl[]\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"a database file must end with a newline; this one doesn't\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"1vx\00", align 1

; Function Attrs: nounwind uwtable
define i32 @LexLegalName(i8* %str) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store i8* %str, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %59 [
    i32 3, label %9
    i32 1, label %9
    i32 0, label %34
  ]

; <label>:9                                       ; preds = %0, %0
  store i32 1, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %22, %9
  %11 = load i32, i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %12
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %10
  br label %22

; <label>:22                                      ; preds = %21
  %23 = load i32, i32* %i, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4
  br label %10

; <label>:25                                      ; preds = %10
  %26 = load i32, i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = load i8*, i8** %1, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %res, align 4
  br label %60

; <label>:34                                      ; preds = %0
  store i32 1, i32* %i, align 4
  br label %35

; <label>:35                                      ; preds = %47, %34
  %36 = load i32, i32* %i, align 4
  %37 = sext i32 %36 to i64
  %38 = load i8*, i8** %1, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46                                      ; preds = %35
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i32, i32* %i, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %i, align 4
  br label %35

; <label>:50                                      ; preds = %35
  %51 = load i32, i32* %i, align 4
  %52 = sext i32 %51 to i64
  %53 = load i8*, i8** %1, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %res, align 4
  br label %60

; <label>:59                                      ; preds = %0
  store i32 0, i32* %res, align 4
  br label %60

; <label>:60                                      ; preds = %59, %50, %25
  %61 = load i32, i32* %res, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define void @LexInit() #0 {
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  call void @initchtbl(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  call void @initchtbl(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  call void @initchtbl(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  call void @initchtbl(i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  call void @initchtbl(i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  call void @initchtbl(i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  call void @initchtbl(i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  store i8 9, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @chtbl, i32 0, i64 0), align 1
  store i32 -1, i32* @stack_free, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initchtbl(i32 %val, i8* %str) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %val, i32* %1, align 4
  store i8* %str, i8** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %21, %0
  %4 = load i32, i32* %i, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 %5
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

; <label>:11                                      ; preds = %3
  %12 = load i32, i32* %1, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %19
  store i8 %13, i8* %20, align 1
  br label %21

; <label>:21                                      ; preds = %11
  %22 = load i32, i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %3

; <label>:24                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @LexPush(i16 zeroext %x, i32 %offs, i32 %ftyp, i32 %lnum, i32 %same) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %i = alloca i32, align 4
  store i16 %x, i16* %1, align 2
  store i32 %offs, i32* %2, align 4
  store i32 %ftyp, i32* %3, align 4
  store i32 %lnum, i32* %4, align 4
  store i32 %same, i32* %5, align 4
  %6 = load i32, i32* @stack_free, align 4
  %7 = icmp sge i32 %6, 9
  br i1 %7, label %8, label %44

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %8
  %12 = load i16, i16* %1, align 2
  %13 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %12)
  %14 = load i16, i16* %1, align 2
  %15 = call i8* @FullFileName(i16 zeroext %14)
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %13, i8* %15)
  br label %23

; <label>:17                                      ; preds = %8
  %18 = load i16, i16* %1, align 2
  %19 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %18)
  %20 = load i16, i16* %1, align 2
  %21 = call i8* @FileName(i16 zeroext %20)
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %19, i8* %21)
  br label %23

; <label>:23                                      ; preds = %17, %11
  %24 = load i32, i32* @stack_free, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %i, align 4
  br label %26

; <label>:26                                      ; preds = %38, %23
  %27 = load i32, i32* %i, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %41

; <label>:29                                      ; preds = %26
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %31 = load i32, i32* %i, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 7
  %35 = load i16, i16* %34, align 2
  %36 = call i8* @EchoFileSource(i16 zeroext %35)
  %37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %30, i8* %36)
  br label %38

; <label>:38                                      ; preds = %29
  %39 = load i32, i32* %i, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %i, align 4
  br label %26

; <label>:41                                      ; preds = %26
  %42 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %42)
  br label %44

; <label>:44                                      ; preds = %41, %0
  %45 = load i32, i32* @stack_free, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %152

; <label>:47                                      ; preds = %44
  %48 = load i8*, i8** @chpt, align 8
  %49 = load i32, i32* @stack_free, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %50
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  %53 = load i8*, i8** @frst, align 8
  %54 = load i32, i32* @stack_free, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %55
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load i8*, i8** @limit, align 8
  %59 = load i32, i32* @stack_free, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %60
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 2
  store i8* %58, i8** %62, align 8
  %63 = load i8*, i8** @buf, align 8
  %64 = load i32, i32* @stack_free, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %65
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 3
  store i8* %63, i8** %67, align 8
  %68 = load i32, i32* @blksize, align 4
  %69 = load i32, i32* @stack_free, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %70
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 4
  store i32 %68, i32* %72, align 4
  %73 = load i8, i8* @last_char, align 1
  %74 = load i32, i32* @stack_free, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 5
  store i8 %73, i8* %77, align 1
  %78 = load i8*, i8** @startline, align 8
  %79 = load i32, i32* @stack_free, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %80
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 6
  store i8* %78, i8** %82, align 8
  %83 = load i16, i16* @this_file, align 2
  %84 = load i32, i32* @stack_free, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %85
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 7
  store i16 %83, i16* %87, align 2
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %89 = load i32, i32* @stack_free, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %90
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 8
  store %struct._IO_FILE* %88, %struct._IO_FILE** %92, align 8
  %93 = load i16, i16* @ftype, align 2
  %94 = load i32, i32* @stack_free, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %95
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 10
  store i16 %93, i16* %97, align 2
  %98 = load %union.rec*, %union.rec** @next_token, align 8
  %99 = load i32, i32* @stack_free, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %100
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 11
  store %union.rec* %98, %union.rec** %102, align 8
  %103 = load i32, i32* @offset, align 4
  %104 = load i32, i32* @stack_free, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %105
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 12
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @first_line_num, align 4
  %109 = load i32, i32* @stack_free, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %110
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 13
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @same_file, align 4
  %114 = load i32, i32* @stack_free, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %115
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 14
  store i32 %113, i32* %117, align 4
  %118 = load i8*, i8** @mem_block, align 8
  %119 = load i32, i32* @stack_free, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %120
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %121, i32 0, i32 16
  store i8* %118, i8** %122, align 8
  %123 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %124 = load i32, i32* @stack_free, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %125
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %127, i32 0, i32 2
  store i16 %123, i16* %128, align 2
  %129 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %130 = and i32 %129, 1048575
  %131 = load i32, i32* @stack_free, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %132
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %130, 1048575
  %138 = and i32 %136, -1048576
  %139 = or i32 %138, %137
  store i32 %139, i32* %135, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %141 = lshr i32 %140, 20
  %142 = load i32, i32* @stack_free, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %143
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %141, 4095
  %149 = shl i32 %148, 20
  %150 = and i32 %147, 1048575
  %151 = or i32 %150, %149
  store i32 %151, i32* %146, align 4
  br label %152

; <label>:152                                     ; preds = %47, %44
  %153 = load i32, i32* @stack_free, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @stack_free, align 4
  %155 = call noalias i8* @malloc(i64 10242) #4
  store i8* %155, i8** @mem_block, align 8
  %156 = load i8*, i8** @mem_block, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %164

; <label>:158                                     ; preds = %152
  %159 = load i16, i16* %1, align 2
  %160 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %159)
  %161 = load i16, i16* %1, align 2
  %162 = call i8* @FullFileName(i16 zeroext %161)
  %163 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 1, %struct.FILE_POS* %160, i8* %162)
  br label %164

; <label>:164                                     ; preds = %158, %152
  %165 = load i8*, i8** @mem_block, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2048
  store i8* %166, i8** @chpt, align 8
  store i8* %166, i8** @buf, align 8
  store i8 10, i8* @last_char, align 1
  %167 = load i16, i16* %1, align 2
  store i16 %167, i16* @this_file, align 2
  %168 = load i32, i32* %2, align 4
  store i32 %168, i32* @offset, align 4
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* @first_line_num, align 4
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* @same_file, align 4
  %171 = load i32, i32* %3, align 4
  %172 = trunc i32 %171 to i16
  store i16 %172, i16* @ftype, align 2
  store %union.rec* null, %union.rec** @next_token, align 8
  %173 = load i8*, i8** @chpt, align 8
  store i8 0, i8* %173, align 1
  %174 = load i32, i32* @same_file, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

; <label>:176                                     ; preds = %164
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %178 = call i64 @ftell(%struct._IO_FILE* %177)
  %179 = load i32, i32* @stack_free, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %181
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %182, i32 0, i32 15
  store i64 %178, i64* %183, align 8
  br label %185

; <label>:184                                     ; preds = %164
  store %struct._IO_FILE* null, %struct._IO_FILE** @fp, align 8
  br label %185

; <label>:185                                     ; preds = %184, %176
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #1

declare i8* @FullFileName(i16 zeroext) #1

declare i8* @FileName(i16 zeroext) #1

declare i8* @EchoFileSource(i16 zeroext) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @LexPop() #0 {
  %1 = load i32, i32* @stack_free, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = load i32, i32* @stack_free, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @stack_free, align 4
  %9 = load i32, i32* @same_file, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %13 = load i32, i32* @stack_free, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @fseek(%struct._IO_FILE* %12, i64 %17, i32 0)
  br label %26

; <label>:19                                      ; preds = %6
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %21 = icmp ne %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %24 = call i32 @fclose(%struct._IO_FILE* %23)
  br label %25

; <label>:25                                      ; preds = %22, %19
  br label %26

; <label>:26                                      ; preds = %25, %11
  %27 = load i8*, i8** @mem_block, align 8
  call void @free(i8* %27) #4
  %28 = load i32, i32* @stack_free, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 16
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @mem_block, align 8
  %33 = load i32, i32* @stack_free, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** @chpt, align 8
  %38 = load i32, i32* @stack_free, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %39
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** @frst, align 8
  %43 = load i32, i32* @stack_free, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** @limit, align 8
  %48 = load i32, i32* @stack_free, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %49
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** @buf, align 8
  %53 = load i32, i32* @stack_free, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %54
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @blksize, align 4
  %58 = load i32, i32* @stack_free, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %59
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 5
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* @last_char, align 1
  %63 = load i32, i32* @stack_free, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %64
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** @startline, align 8
  %68 = load i32, i32* @stack_free, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %69
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 7
  %72 = load i16, i16* %71, align 2
  store i16 %72, i16* @this_file, align 2
  %73 = load i32, i32* @stack_free, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %76, align 8
  store %struct._IO_FILE* %77, %struct._IO_FILE** @fp, align 8
  %78 = load i32, i32* @stack_free, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 10
  %82 = load i16, i16* %81, align 2
  store i16 %82, i16* @ftype, align 2
  %83 = load i32, i32* @stack_free, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %84
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 11
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** @next_token, align 8
  %88 = load i32, i32* @stack_free, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %89
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* @offset, align 4
  %93 = load i32, i32* @stack_free, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %94
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* @first_line_num, align 4
  %98 = load i32, i32* @stack_free, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %99
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* @same_file, align 4
  %103 = load i32, i32* @stack_free, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %104
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %106, i32 0, i32 2
  %108 = load i16, i16* %107, align 2
  store i16 %108, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %109 = load i32, i32* @stack_free, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %110
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 1048575
  %116 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %117 = and i32 %115, 1048575
  %118 = and i32 %116, -1048576
  %119 = or i32 %118, %117
  store i32 %119, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %120 = load i32, i32* @stack_free, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %121
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = lshr i32 %125, 20
  %127 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %128 = and i32 %126, 4095
  %129 = shl i32 %128, 20
  %130 = and i32 %127, 1048575
  %131 = or i32 %130, %129
  store i32 %131, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @LexNextTokenPos() #0 {
  %res = alloca i64, align 8
  %1 = load %union.rec*, %union.rec** @next_token, align 8
  %2 = icmp ne %union.rec* %1, null
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = load %union.rec*, %union.rec** @next_token, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.FILE_POS*
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %9

; <label>:9                                       ; preds = %3, %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %11 = call i64 @ftell(%struct._IO_FILE* %10)
  %12 = load i8*, i8** @limit, align 8
  %13 = load i8*, i8** @chpt, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sub nsw i64 %11, %16
  %18 = load i8*, i8** @buf, align 8
  %19 = load i8*, i8** @frst, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sub nsw i64 %17, %22
  store i64 %23, i64* %res, align 8
  %24 = load i64, i64* %res, align 8
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define %union.rec* @LexGetToken() #0 {
  %1 = alloca %union.rec*, align 8
  %startpos = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  %vcount = alloca i32, align 4
  %hcount = alloca i32, align 4
  %t = alloca %union.rec*, align 8
  %fname = alloca %union.rec*, align 8
  %fnum = alloca i16, align 2
  %len = alloca i32, align 4
  %scope_suppressed = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i32, align 4
  %2 = load %union.rec*, %union.rec** @next_token, align 8
  %3 = icmp ne %union.rec* %2, null
  br i1 %3, label %4, label %59

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** @next_token, align 8
  store %union.rec* %5, %union.rec** %res, align 8
  store %union.rec* %5, %union.rec** @zz_hold, align 8
  %6 = load %union.rec*, %union.rec** @zz_hold, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 0
  %9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8, i32 0, i64 1
  %10 = getelementptr inbounds %struct.LIST, %struct.LIST* %9, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %10, align 8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = icmp eq %union.rec* %11, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %4
  br label %56

; <label>:15                                      ; preds = %4
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 0
  %19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %18, i32 0, i64 1
  %20 = getelementptr inbounds %struct.LIST, %struct.LIST* %19, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %20, align 8
  store %union.rec* %21, %union.rec** @zz_res, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 0
  %25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %24, i32 0, i64 1
  %26 = getelementptr inbounds %struct.LIST, %struct.LIST* %25, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %26, align 8
  %28 = load %union.rec*, %union.rec** @zz_res, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 1
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 0
  store %union.rec* %27, %union.rec** %32, align 8
  %33 = load %union.rec*, %union.rec** @zz_res, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 1
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %38, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 0
  %42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %41, i32 0, i64 1
  %43 = getelementptr inbounds %struct.LIST, %struct.LIST* %42, i32 0, i32 1
  store %union.rec* %33, %union.rec** %43, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 1
  store %union.rec* %44, %union.rec** %49, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 1
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 0
  store %union.rec* %44, %union.rec** %54, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %56

; <label>:56                                      ; preds = %15, %14
  %57 = phi %union.rec* [ null, %14 ], [ %55, %15 ]
  store %union.rec* %57, %union.rec** @next_token, align 8
  %58 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %58, %union.rec** %1
  br label %1741

; <label>:59                                      ; preds = %0
  store %union.rec* null, %union.rec** %res, align 8
  %60 = load i8*, i8** @chpt, align 8
  store i8* %60, i8** %p, align 8
  store i32 0, i32* %hcount, align 4
  store i32 0, i32* %vcount, align 4
  br label %61

; <label>:61                                      ; preds = %1709, %59
  %62 = load i8*, i8** %p, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %p, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  switch i32 %68, label %1705 [
    i32 3, label %69
    i32 4, label %116
    i32 5, label %149
    i32 6, label %149
    i32 7, label %152
    i32 8, label %155
    i32 9, label %170
    i32 0, label %266
    i32 1, label %314
    i32 2, label %1178
  ]

; <label>:69                                      ; preds = %61
  %70 = load i16, i16* @ftype, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %98

; <label>:73                                      ; preds = %69
  %74 = load i8*, i8** %p, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sge i32 %76, 97
  br i1 %77, label %78, label %98

; <label>:78                                      ; preds = %73
  %79 = load i8*, i8** %p, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sle i32 %81, 122
  br i1 %82, label %83, label %98

; <label>:83                                      ; preds = %78
  %84 = load i8*, i8** %p, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 123
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %83
  %90 = load i8*, i8** %p, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = trunc i32 %92 to i8
  %94 = load %union.rec*, %union.rec** @StartSym, align 8
  %95 = call %union.rec* @NewToken(i8 zeroext 102, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %93, %union.rec* %94)
  store %union.rec* %95, %union.rec** %res, align 8
  %96 = load i8*, i8** %p, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %p, align 8
  br label %115

; <label>:98                                      ; preds = %83, %78, %73, %69
  %99 = load i8*, i8** %p, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  store i8* %100, i8** %startpos, align 8
  %101 = load i8*, i8** @startline, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %107 = and i32 %105, 4095
  %108 = shl i32 %107, 20
  %109 = and i32 %106, 1048575
  %110 = or i32 %109, %108
  store i32 %110, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %111 = load i8*, i8** %startpos, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos, i32 %113)
  br label %115

; <label>:115                                     ; preds = %98, %89
  br label %1708

; <label>:116                                     ; preds = %61
  br label %117

; <label>:117                                     ; preds = %128, %116
  %118 = load i8*, i8** %p, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %p, align 8
  %120 = load i8, i8* %118, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %c, align 4
  %122 = icmp ne i32 %121, 10
  br i1 %122, label %123, label %126

; <label>:123                                     ; preds = %117
  %124 = load i32, i32* %c, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

; <label>:126                                     ; preds = %123, %117
  %127 = phi i1 [ false, %117 ], [ %125, %123 ]
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %126
  br label %117

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* %c, align 4
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %145

; <label>:132                                     ; preds = %129
  %133 = load i8*, i8** %p, align 8
  store i8* %133, i8** @chpt, align 8
  call void @srcnext()
  %134 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %135 = and i32 %134, 1048575
  %136 = add i32 %135, 1
  %137 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %138 = and i32 %136, 1048575
  %139 = and i32 %137, -1048576
  %140 = or i32 %139, %138
  store i32 %140, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %142 = and i32 %141, 1048575
  store i32 %142, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %143 = load i8*, i8** @chpt, align 8
  store i8* %143, i8** %p, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 -1
  store i8* %144, i8** @startline, align 8
  br label %148

; <label>:145                                     ; preds = %129
  %146 = load i8*, i8** %p, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %147, i8** %p, align 8
  br label %148

; <label>:148                                     ; preds = %145, %132
  br label %1708

; <label>:149                                     ; preds = %61, %61
  %150 = load i32, i32* %hcount, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %hcount, align 4
  br label %1708

; <label>:152                                     ; preds = %61
  %153 = load i32, i32* %hcount, align 4
  %154 = add nsw i32 %153, 8
  store i32 %154, i32* %hcount, align 4
  br label %1708

; <label>:155                                     ; preds = %61
  %156 = load i8*, i8** %p, align 8
  store i8* %156, i8** @chpt, align 8
  call void @srcnext()
  %157 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %158 = and i32 %157, 1048575
  %159 = add i32 %158, 1
  %160 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %161 = and i32 %159, 1048575
  %162 = and i32 %160, -1048576
  %163 = or i32 %162, %161
  store i32 %163, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %165 = and i32 %164, 1048575
  store i32 %165, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %166 = load i32, i32* %vcount, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %vcount, align 4
  store i32 0, i32* %hcount, align 4
  %168 = load i8*, i8** @chpt, align 8
  store i8* %168, i8** %p, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 -1
  store i8* %169, i8** @startline, align 8
  br label %1708

; <label>:170                                     ; preds = %61
  %171 = load i32, i32* @same_file, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %223, label %173

; <label>:173                                     ; preds = %170
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %175 = icmp ne %struct._IO_FILE* %174, null
  br i1 %175, label %176, label %190

; <label>:176                                     ; preds = %173
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %178 = call i32 @fclose(%struct._IO_FILE* %177)
  store %struct._IO_FILE* null, %struct._IO_FILE** @fp, align 8
  %179 = load i16, i16* @ftype, align 2
  %180 = sext i16 %179 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

; <label>:182                                     ; preds = %176
  %183 = load i16, i16* @this_file, align 2
  %184 = call zeroext i16 @NextFile(i16 zeroext %183)
  %185 = zext i16 %184 to i32
  br label %187

; <label>:186                                     ; preds = %176
  br label %187

; <label>:187                                     ; preds = %186, %182
  %188 = phi i32 [ %185, %182 ], [ 0, %186 ]
  %189 = trunc i32 %188 to i16
  store i16 %189, i16* @this_file, align 2
  br label %190

; <label>:190                                     ; preds = %187, %173
  br label %191

; <label>:191                                     ; preds = %219, %190
  %192 = load i16, i16* @this_file, align 2
  %193 = zext i16 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %222

; <label>:195                                     ; preds = %191
  %196 = load i16, i16* @this_file, align 2
  store i16 %196, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %197 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %198 = and i32 %197, -1048576
  %199 = or i32 %198, 1
  store i32 %199, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %200 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %201 = and i32 %200, 1048575
  store i32 %201, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %202 = load i16, i16* @this_file, align 2
  %203 = call %struct._IO_FILE* @OpenFile(i16 zeroext %202, i32 0, i32 1)
  store %struct._IO_FILE* %203, %struct._IO_FILE** @fp, align 8
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %205 = icmp ne %struct._IO_FILE* %204, null
  br i1 %205, label %206, label %207

; <label>:206                                     ; preds = %195
  br label %222

; <label>:207                                     ; preds = %195
  %208 = load i16, i16* @this_file, align 2
  %209 = call i8* @FullFileName(i16 zeroext %208)
  %210 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos, i8* %209)
  %211 = load i16, i16* @ftype, align 2
  %212 = sext i16 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

; <label>:214                                     ; preds = %207
  %215 = load i16, i16* @this_file, align 2
  %216 = call zeroext i16 @NextFile(i16 zeroext %215)
  %217 = zext i16 %216 to i32
  br label %219

; <label>:218                                     ; preds = %207
  br label %219

; <label>:219                                     ; preds = %218, %214
  %220 = phi i32 [ %217, %214 ], [ 0, %218 ]
  %221 = trunc i32 %220 to i16
  store i16 %221, i16* @this_file, align 2
  br label %191

; <label>:222                                     ; preds = %206, %191
  br label %223

; <label>:223                                     ; preds = %222, %170
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %225 = icmp ne %struct._IO_FILE* %224, null
  br i1 %225, label %226, label %243

; <label>:226                                     ; preds = %223
  %227 = load i32, i32* @offset, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

; <label>:229                                     ; preds = %226
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %231 = load i32, i32* @offset, align 4
  %232 = sext i32 %231 to i64
  %233 = call i32 @fseek(%struct._IO_FILE* %230, i64 %232, i32 0)
  store i32 0, i32* @offset, align 4
  %234 = load i32, i32* @first_line_num, align 4
  %235 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %236 = and i32 %234, 1048575
  %237 = and i32 %235, -1048576
  %238 = or i32 %237, %236
  store i32 %238, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %239

; <label>:239                                     ; preds = %229, %226
  %240 = load i8*, i8** @buf, align 8
  store i8* %240, i8** @chpt, align 8
  store i8* %240, i8** @limit, align 8
  store i8* %240, i8** @frst, align 8
  store i32 0, i32* @blksize, align 4
  store i8 10, i8* @last_char, align 1
  call void @srcnext()
  %241 = load i8*, i8** @chpt, align 8
  store i8* %241, i8** %p, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 -1
  store i8* %242, i8** @startline, align 8
  store i32 0, i32* %hcount, align 4
  br label %265

; <label>:243                                     ; preds = %223
  %244 = load i16, i16* @ftype, align 2
  %245 = sext i16 %244 to i32
  switch i32 %245, label %261 [
    i32 0, label %246
    i32 3, label %246
    i32 10, label %253
    i32 1, label %259
  ]

; <label>:246                                     ; preds = %243, %243
  %247 = load %union.rec*, %union.rec** @StartSym, align 8
  %248 = call %union.rec* @NewToken(i8 zeroext 105, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext 2, %union.rec* %247)
  store %union.rec* %248, %union.rec** %res, align 8
  %249 = call %union.rec* @NewToken(i8 zeroext 111, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, %union.rec* null)
  store %union.rec* %249, %union.rec** @next_token, align 8
  %250 = load i8*, i8** %p, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 -1
  store i8* %251, i8** %p, align 8
  %252 = load i8*, i8** %p, align 8
  store i8* %252, i8** @startline, align 8
  br label %264

; <label>:253                                     ; preds = %243
  %254 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %255 = call %union.rec* @NewToken(i8 zeroext 105, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext 2, %union.rec* %254)
  store %union.rec* %255, %union.rec** %res, align 8
  %256 = load i8*, i8** %p, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 -1
  store i8* %257, i8** %p, align 8
  %258 = load i8*, i8** %p, align 8
  store i8* %258, i8** @startline, align 8
  br label %264

; <label>:259                                     ; preds = %243
  call void @LexPop()
  %260 = load i8*, i8** @chpt, align 8
  store i8* %260, i8** %p, align 8
  store i32 0, i32* %hcount, align 4
  br label %264

; <label>:261                                     ; preds = %243
  %262 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %263 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %262, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0))
  br label %264

; <label>:264                                     ; preds = %261, %259, %253, %246
  br label %265

; <label>:265                                     ; preds = %264, %239
  br label %1708

; <label>:266                                     ; preds = %61
  %267 = load i8*, i8** %p, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 -1
  store i8* %268, i8** %startpos, align 8
  %269 = load i8*, i8** @startline, align 8
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = trunc i64 %272 to i32
  %274 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %275 = and i32 %273, 4095
  %276 = shl i32 %275, 20
  %277 = and i32 %274, 1048575
  %278 = or i32 %277, %276
  store i32 %278, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %279

; <label>:279                                     ; preds = %288, %266
  %280 = load i8*, i8** %p, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %p, align 8
  %282 = load i8, i8* %280, align 1
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %289

; <label>:288                                     ; preds = %279
  br label %279

; <label>:289                                     ; preds = %279
  %290 = load i8*, i8** %p, align 8
  %291 = load i8*, i8** %startpos, align 8
  %292 = ptrtoint i8* %290 to i64
  %293 = ptrtoint i8* %291 to i64
  %294 = sub i64 %292, %293
  %295 = sub nsw i64 %294, 1
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %c, align 4
  br label %297

; <label>:297                                     ; preds = %311, %289
  %298 = load i8*, i8** %startpos, align 8
  %299 = load i32, i32* %c, align 4
  %300 = call %union.rec* @SearchSym(i8* %298, i32 %299)
  store %union.rec* %300, %union.rec** %res, align 8
  %301 = load i32, i32* %c, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %c, align 4
  %303 = load i8*, i8** %p, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 -1
  store i8* %304, i8** %p, align 8
  br label %305

; <label>:305                                     ; preds = %297
  %306 = load i32, i32* %c, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %311

; <label>:308                                     ; preds = %305
  %309 = load %union.rec*, %union.rec** %res, align 8
  %310 = icmp eq %union.rec* %309, null
  br label %311

; <label>:311                                     ; preds = %308, %305
  %312 = phi i1 [ false, %305 ], [ %310, %308 ]
  br i1 %312, label %297, label %313

; <label>:313                                     ; preds = %311
  br label %348

; <label>:314                                     ; preds = %61
  %315 = load i8*, i8** %p, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 -1
  store i8* %316, i8** %startpos, align 8
  %317 = load i8*, i8** @startline, align 8
  %318 = ptrtoint i8* %316 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = trunc i64 %320 to i32
  %322 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %323 = and i32 %321, 4095
  %324 = shl i32 %323, 20
  %325 = and i32 %322, 1048575
  %326 = or i32 %325, %324
  store i32 %326, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %327

; <label>:327                                     ; preds = %336, %314
  %328 = load i8*, i8** %p, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %p, align 8
  %330 = load i8, i8* %328, align 1
  %331 = zext i8 %330 to i64
  %332 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %337

; <label>:336                                     ; preds = %327
  br label %327

; <label>:337                                     ; preds = %327
  %338 = load i8*, i8** %p, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 -1
  store i8* %339, i8** %p, align 8
  %340 = load i8*, i8** %startpos, align 8
  %341 = load i8*, i8** %p, align 8
  %342 = load i8*, i8** %startpos, align 8
  %343 = ptrtoint i8* %341 to i64
  %344 = ptrtoint i8* %342 to i64
  %345 = sub i64 %343, %344
  %346 = trunc i64 %345 to i32
  %347 = call %union.rec* @SearchSym(i8* %340, i32 %346)
  store %union.rec* %347, %union.rec** %res, align 8
  br label %348

; <label>:348                                     ; preds = %337, %313
  %349 = load %union.rec*, %union.rec** %res, align 8
  %350 = icmp eq %union.rec* %349, null
  br i1 %350, label %351, label %489

; <label>:351                                     ; preds = %348
  %352 = load i8*, i8** %p, align 8
  %353 = load i8*, i8** %startpos, align 8
  %354 = ptrtoint i8* %352 to i64
  %355 = ptrtoint i8* %353 to i64
  %356 = sub i64 %354, %355
  %357 = add nsw i64 %356, 1
  %358 = mul i64 %357, 1
  %359 = add i64 68, %358
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* @zz_size, align 4
  %361 = load i32, i32* @zz_size, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = udiv i64 %363, 8
  %365 = add i64 %364, 1
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* @zz_size, align 4
  %367 = sext i32 %366 to i64
  %368 = icmp uge i64 %367, 265
  br i1 %368, label %369, label %371

; <label>:369                                     ; preds = %351
  %370 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %395

; <label>:371                                     ; preds = %351
  %372 = load i32, i32* @zz_size, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %373
  %375 = load %union.rec*, %union.rec** %374, align 8
  %376 = icmp eq %union.rec* %375, null
  br i1 %376, label %377, label %380

; <label>:377                                     ; preds = %371
  %378 = load i32, i32* @zz_size, align 4
  %379 = call %union.rec* @GetMemory(i32 %378, %struct.FILE_POS* @file_pos)
  store %union.rec* %379, %union.rec** @zz_hold, align 8
  br label %394

; <label>:380                                     ; preds = %371
  %381 = load i32, i32* @zz_size, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %382
  %384 = load %union.rec*, %union.rec** %383, align 8
  store %union.rec* %384, %union.rec** @zz_hold, align 8
  store %union.rec* %384, %union.rec** @zz_hold, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 0
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 0
  %390 = load %union.rec*, %union.rec** %389, align 8
  %391 = load i32, i32* @zz_size, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %392
  store %union.rec* %390, %union.rec** %393, align 8
  br label %394

; <label>:394                                     ; preds = %380, %377
  br label %395

; <label>:395                                     ; preds = %394, %369
  %396 = load i32, i32* @zz_size, align 4
  %397 = trunc i32 %396 to i8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 1
  %401 = bitcast %union.FIRST_UNION* %400 to %struct.anon.0*
  %402 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %401, i32 0, i32 1
  store i8 %397, i8* %402, align 1
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 1
  %406 = bitcast %union.FIRST_UNION* %405 to %struct.anon.0*
  %407 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %406, i32 0, i32 0
  store i8 11, i8* %407, align 1
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %410 = bitcast %union.rec* %409 to %struct.word_type*
  %411 = getelementptr inbounds %struct.word_type, %struct.word_type* %410, i32 0, i32 0
  %412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %411, i32 0, i64 1
  %413 = getelementptr inbounds %struct.LIST, %struct.LIST* %412, i32 0, i32 1
  store %union.rec* %408, %union.rec** %413, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 0
  %417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %416, i32 0, i64 1
  %418 = getelementptr inbounds %struct.LIST, %struct.LIST* %417, i32 0, i32 0
  store %union.rec* %408, %union.rec** %418, align 8
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %420 = bitcast %union.rec* %419 to %struct.word_type*
  %421 = getelementptr inbounds %struct.word_type, %struct.word_type* %420, i32 0, i32 0
  %422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %421, i32 0, i64 0
  %423 = getelementptr inbounds %struct.LIST, %struct.LIST* %422, i32 0, i32 1
  store %union.rec* %408, %union.rec** %423, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %425 = bitcast %union.rec* %424 to %struct.word_type*
  %426 = getelementptr inbounds %struct.word_type, %struct.word_type* %425, i32 0, i32 0
  %427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %426, i32 0, i64 0
  %428 = getelementptr inbounds %struct.LIST, %struct.LIST* %427, i32 0, i32 0
  store %union.rec* %408, %union.rec** %428, align 8
  store %union.rec* %408, %union.rec** %res, align 8
  %429 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %430 = load %union.rec*, %union.rec** %res, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 1
  %433 = bitcast %union.FIRST_UNION* %432 to %struct.FILE_POS*
  %434 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %433, i32 0, i32 2
  store i16 %429, i16* %434, align 2
  %435 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %436 = and i32 %435, 1048575
  %437 = load %union.rec*, %union.rec** %res, align 8
  %438 = bitcast %union.rec* %437 to %struct.word_type*
  %439 = getelementptr inbounds %struct.word_type, %struct.word_type* %438, i32 0, i32 1
  %440 = bitcast %union.FIRST_UNION* %439 to %struct.FILE_POS*
  %441 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %436, 1048575
  %444 = and i32 %442, -1048576
  %445 = or i32 %444, %443
  store i32 %445, i32* %441, align 4
  %446 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %447 = lshr i32 %446, 20
  %448 = load %union.rec*, %union.rec** %res, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 1
  %451 = bitcast %union.FIRST_UNION* %450 to %struct.FILE_POS*
  %452 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = and i32 %447, 4095
  %455 = shl i32 %454, 20
  %456 = and i32 %453, 1048575
  %457 = or i32 %456, %455
  store i32 %457, i32* %452, align 4
  store i32 0, i32* %c, align 4
  br label %458

; <label>:458                                     ; preds = %479, %395
  %459 = load i32, i32* %c, align 4
  %460 = sext i32 %459 to i64
  %461 = load i8*, i8** %p, align 8
  %462 = load i8*, i8** %startpos, align 8
  %463 = ptrtoint i8* %461 to i64
  %464 = ptrtoint i8* %462 to i64
  %465 = sub i64 %463, %464
  %466 = icmp slt i64 %460, %465
  br i1 %466, label %467, label %482

; <label>:467                                     ; preds = %458
  %468 = load i32, i32* %c, align 4
  %469 = sext i32 %468 to i64
  %470 = load i8*, i8** %startpos, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 %469
  %472 = load i8, i8* %471, align 1
  %473 = load i32, i32* %c, align 4
  %474 = sext i32 %473 to i64
  %475 = load %union.rec*, %union.rec** %res, align 8
  %476 = bitcast %union.rec* %475 to %struct.word_type*
  %477 = getelementptr inbounds %struct.word_type, %struct.word_type* %476, i32 0, i32 4
  %478 = getelementptr inbounds [4 x i8], [4 x i8]* %477, i32 0, i64 %474
  store i8 %472, i8* %478, align 1
  br label %479

; <label>:479                                     ; preds = %467
  %480 = load i32, i32* %c, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %c, align 4
  br label %458

; <label>:482                                     ; preds = %458
  %483 = load i32, i32* %c, align 4
  %484 = sext i32 %483 to i64
  %485 = load %union.rec*, %union.rec** %res, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 4
  %488 = getelementptr inbounds [4 x i8], [4 x i8]* %487, i32 0, i64 %484
  store i8 0, i8* %488, align 1
  br label %1177

; <label>:489                                     ; preds = %348
  %490 = load %union.rec*, %union.rec** %res, align 8
  %491 = bitcast %union.rec* %490 to %struct.word_type*
  %492 = getelementptr inbounds %struct.word_type, %struct.word_type* %491, i32 0, i32 1
  %493 = bitcast %union.FIRST_UNION* %492 to %struct.anon.0*
  %494 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %493, i32 0, i32 0
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  %497 = icmp eq i32 %496, 142
  br i1 %497, label %498, label %714

; <label>:498                                     ; preds = %489
  %499 = load %union.rec*, %union.rec** %res, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 2
  %502 = bitcast %union.SECOND_UNION* %501 to %struct.anon.6*
  %503 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %502, i32 0, i32 1
  %504 = bitcast [3 x i8]* %503 to i24*
  %505 = load i24, i24* %504, align 1
  %506 = lshr i24 %505, 10
  %507 = and i24 %506, 1
  %508 = zext i24 %507 to i32
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %649

; <label>:510                                     ; preds = %498
  %511 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  %512 = load i8*, i8** %p, align 8
  %513 = load i8*, i8** %startpos, align 8
  %514 = ptrtoint i8* %512 to i64
  %515 = ptrtoint i8* %513 to i64
  %516 = sub i64 %514, %515
  %517 = add nsw i64 %516, 1
  %518 = mul i64 %517, 1
  %519 = add i64 68, %518
  %520 = trunc i64 %519 to i32
  store i32 %520, i32* @zz_size, align 4
  %521 = load i32, i32* @zz_size, align 4
  %522 = sub nsw i32 %521, 1
  %523 = sext i32 %522 to i64
  %524 = udiv i64 %523, 8
  %525 = add i64 %524, 1
  %526 = trunc i64 %525 to i32
  store i32 %526, i32* @zz_size, align 4
  %527 = sext i32 %526 to i64
  %528 = icmp uge i64 %527, 265
  br i1 %528, label %529, label %531

; <label>:529                                     ; preds = %510
  %530 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %555

; <label>:531                                     ; preds = %510
  %532 = load i32, i32* @zz_size, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %533
  %535 = load %union.rec*, %union.rec** %534, align 8
  %536 = icmp eq %union.rec* %535, null
  br i1 %536, label %537, label %540

; <label>:537                                     ; preds = %531
  %538 = load i32, i32* @zz_size, align 4
  %539 = call %union.rec* @GetMemory(i32 %538, %struct.FILE_POS* @file_pos)
  store %union.rec* %539, %union.rec** @zz_hold, align 8
  br label %554

; <label>:540                                     ; preds = %531
  %541 = load i32, i32* @zz_size, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %542
  %544 = load %union.rec*, %union.rec** %543, align 8
  store %union.rec* %544, %union.rec** @zz_hold, align 8
  store %union.rec* %544, %union.rec** @zz_hold, align 8
  %545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %546 = bitcast %union.rec* %545 to %struct.word_type*
  %547 = getelementptr inbounds %struct.word_type, %struct.word_type* %546, i32 0, i32 0
  %548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %547, i32 0, i64 0
  %549 = getelementptr inbounds %struct.LIST, %struct.LIST* %548, i32 0, i32 0
  %550 = load %union.rec*, %union.rec** %549, align 8
  %551 = load i32, i32* @zz_size, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %552
  store %union.rec* %550, %union.rec** %553, align 8
  br label %554

; <label>:554                                     ; preds = %540, %537
  br label %555

; <label>:555                                     ; preds = %554, %529
  %556 = load i32, i32* @zz_size, align 4
  %557 = trunc i32 %556 to i8
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %559 = bitcast %union.rec* %558 to %struct.word_type*
  %560 = getelementptr inbounds %struct.word_type, %struct.word_type* %559, i32 0, i32 1
  %561 = bitcast %union.FIRST_UNION* %560 to %struct.anon.0*
  %562 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %561, i32 0, i32 1
  store i8 %557, i8* %562, align 1
  %563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %564 = bitcast %union.rec* %563 to %struct.word_type*
  %565 = getelementptr inbounds %struct.word_type, %struct.word_type* %564, i32 0, i32 1
  %566 = bitcast %union.FIRST_UNION* %565 to %struct.anon.0*
  %567 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %566, i32 0, i32 0
  store i8 11, i8* %567, align 1
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %570 = bitcast %union.rec* %569 to %struct.word_type*
  %571 = getelementptr inbounds %struct.word_type, %struct.word_type* %570, i32 0, i32 0
  %572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %571, i32 0, i64 1
  %573 = getelementptr inbounds %struct.LIST, %struct.LIST* %572, i32 0, i32 1
  store %union.rec* %568, %union.rec** %573, align 8
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %575 = bitcast %union.rec* %574 to %struct.word_type*
  %576 = getelementptr inbounds %struct.word_type, %struct.word_type* %575, i32 0, i32 0
  %577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %576, i32 0, i64 1
  %578 = getelementptr inbounds %struct.LIST, %struct.LIST* %577, i32 0, i32 0
  store %union.rec* %568, %union.rec** %578, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 0
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 1
  store %union.rec* %568, %union.rec** %583, align 8
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %585 = bitcast %union.rec* %584 to %struct.word_type*
  %586 = getelementptr inbounds %struct.word_type, %struct.word_type* %585, i32 0, i32 0
  %587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %586, i32 0, i64 0
  %588 = getelementptr inbounds %struct.LIST, %struct.LIST* %587, i32 0, i32 0
  store %union.rec* %568, %union.rec** %588, align 8
  store %union.rec* %568, %union.rec** %res, align 8
  %589 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %590 = load %union.rec*, %union.rec** %res, align 8
  %591 = bitcast %union.rec* %590 to %struct.word_type*
  %592 = getelementptr inbounds %struct.word_type, %struct.word_type* %591, i32 0, i32 1
  %593 = bitcast %union.FIRST_UNION* %592 to %struct.FILE_POS*
  %594 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %593, i32 0, i32 2
  store i16 %589, i16* %594, align 2
  %595 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %596 = and i32 %595, 1048575
  %597 = load %union.rec*, %union.rec** %res, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 1
  %600 = bitcast %union.FIRST_UNION* %599 to %struct.FILE_POS*
  %601 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %600, i32 0, i32 3
  %602 = load i32, i32* %601, align 4
  %603 = and i32 %596, 1048575
  %604 = and i32 %602, -1048576
  %605 = or i32 %604, %603
  store i32 %605, i32* %601, align 4
  %606 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %607 = lshr i32 %606, 20
  %608 = load %union.rec*, %union.rec** %res, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 1
  %611 = bitcast %union.FIRST_UNION* %610 to %struct.FILE_POS*
  %612 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 4
  %614 = and i32 %607, 4095
  %615 = shl i32 %614, 20
  %616 = and i32 %613, 1048575
  %617 = or i32 %616, %615
  store i32 %617, i32* %612, align 4
  store i32 0, i32* %c, align 4
  br label %618

; <label>:618                                     ; preds = %639, %555
  %619 = load i32, i32* %c, align 4
  %620 = sext i32 %619 to i64
  %621 = load i8*, i8** %p, align 8
  %622 = load i8*, i8** %startpos, align 8
  %623 = ptrtoint i8* %621 to i64
  %624 = ptrtoint i8* %622 to i64
  %625 = sub i64 %623, %624
  %626 = icmp slt i64 %620, %625
  br i1 %626, label %627, label %642

; <label>:627                                     ; preds = %618
  %628 = load i32, i32* %c, align 4
  %629 = sext i32 %628 to i64
  %630 = load i8*, i8** %startpos, align 8
  %631 = getelementptr inbounds i8, i8* %630, i64 %629
  %632 = load i8, i8* %631, align 1
  %633 = load i32, i32* %c, align 4
  %634 = sext i32 %633 to i64
  %635 = load %union.rec*, %union.rec** %res, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 4
  %638 = getelementptr inbounds [4 x i8], [4 x i8]* %637, i32 0, i64 %634
  store i8 %632, i8* %638, align 1
  br label %639

; <label>:639                                     ; preds = %627
  %640 = load i32, i32* %c, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %c, align 4
  br label %618

; <label>:642                                     ; preds = %618
  %643 = load i32, i32* %c, align 4
  %644 = sext i32 %643 to i64
  %645 = load %union.rec*, %union.rec** %res, align 8
  %646 = bitcast %union.rec* %645 to %struct.word_type*
  %647 = getelementptr inbounds %struct.word_type, %struct.word_type* %646, i32 0, i32 4
  %648 = getelementptr inbounds [4 x i8], [4 x i8]* %647, i32 0, i64 %644
  store i8 0, i8* %648, align 1
  br label %713

; <label>:649                                     ; preds = %498
  %650 = load %union.rec*, %union.rec** %res, align 8
  %651 = bitcast %union.rec* %650 to %struct.symbol_type*
  %652 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %651, i32 0, i32 4
  %653 = load %union.rec*, %union.rec** %652, align 8
  %654 = call %union.rec* @CopyTokenList(%union.rec* %653, %struct.FILE_POS* @file_pos)
  store %union.rec* %654, %union.rec** %res, align 8
  %655 = load %union.rec*, %union.rec** %res, align 8
  %656 = icmp ne %union.rec* %655, null
  br i1 %656, label %657, label %711

; <label>:657                                     ; preds = %649
  %658 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %658, %union.rec** @zz_hold, align 8
  %659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 0
  %662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %661, i32 0, i64 1
  %663 = getelementptr inbounds %struct.LIST, %struct.LIST* %662, i32 0, i32 1
  %664 = load %union.rec*, %union.rec** %663, align 8
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %666 = icmp eq %union.rec* %664, %665
  br i1 %666, label %667, label %668

; <label>:667                                     ; preds = %657
  br label %709

; <label>:668                                     ; preds = %657
  %669 = load %union.rec*, %union.rec** @zz_hold, align 8
  %670 = bitcast %union.rec* %669 to %struct.word_type*
  %671 = getelementptr inbounds %struct.word_type, %struct.word_type* %670, i32 0, i32 0
  %672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %671, i32 0, i64 1
  %673 = getelementptr inbounds %struct.LIST, %struct.LIST* %672, i32 0, i32 1
  %674 = load %union.rec*, %union.rec** %673, align 8
  store %union.rec* %674, %union.rec** @zz_res, align 8
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %676 = bitcast %union.rec* %675 to %struct.word_type*
  %677 = getelementptr inbounds %struct.word_type, %struct.word_type* %676, i32 0, i32 0
  %678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %677, i32 0, i64 1
  %679 = getelementptr inbounds %struct.LIST, %struct.LIST* %678, i32 0, i32 0
  %680 = load %union.rec*, %union.rec** %679, align 8
  %681 = load %union.rec*, %union.rec** @zz_res, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 0
  %684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %683, i32 0, i64 1
  %685 = getelementptr inbounds %struct.LIST, %struct.LIST* %684, i32 0, i32 0
  store %union.rec* %680, %union.rec** %685, align 8
  %686 = load %union.rec*, %union.rec** @zz_res, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 0
  %690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %689, i32 0, i64 1
  %691 = getelementptr inbounds %struct.LIST, %struct.LIST* %690, i32 0, i32 0
  %692 = load %union.rec*, %union.rec** %691, align 8
  %693 = bitcast %union.rec* %692 to %struct.word_type*
  %694 = getelementptr inbounds %struct.word_type, %struct.word_type* %693, i32 0, i32 0
  %695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %694, i32 0, i64 1
  %696 = getelementptr inbounds %struct.LIST, %struct.LIST* %695, i32 0, i32 1
  store %union.rec* %686, %union.rec** %696, align 8
  %697 = load %union.rec*, %union.rec** @zz_hold, align 8
  %698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %699 = bitcast %union.rec* %698 to %struct.word_type*
  %700 = getelementptr inbounds %struct.word_type, %struct.word_type* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %700, i32 0, i64 1
  %702 = getelementptr inbounds %struct.LIST, %struct.LIST* %701, i32 0, i32 1
  store %union.rec* %697, %union.rec** %702, align 8
  %703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %704 = bitcast %union.rec* %703 to %struct.word_type*
  %705 = getelementptr inbounds %struct.word_type, %struct.word_type* %704, i32 0, i32 0
  %706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %705, i32 0, i64 1
  %707 = getelementptr inbounds %struct.LIST, %struct.LIST* %706, i32 0, i32 0
  store %union.rec* %697, %union.rec** %707, align 8
  %708 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %709

; <label>:709                                     ; preds = %668, %667
  %710 = phi %union.rec* [ null, %667 ], [ %708, %668 ]
  store %union.rec* %710, %union.rec** @next_token, align 8
  br label %712

; <label>:711                                     ; preds = %649
  store i32 0, i32* %hcount, align 4
  br label %712

; <label>:712                                     ; preds = %711, %709
  br label %713

; <label>:713                                     ; preds = %712, %642
  br label %1176

; <label>:714                                     ; preds = %489
  %715 = load %union.rec*, %union.rec** %res, align 8
  %716 = bitcast %union.rec* %715 to %struct.symbol_type*
  %717 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %716, i32 0, i32 12
  %718 = load i16, i16* %717, align 2
  %719 = zext i16 %718 to i32
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %730

; <label>:721                                     ; preds = %714
  %722 = load %union.rec*, %union.rec** %res, align 8
  %723 = bitcast %union.rec* %722 to %struct.word_type*
  %724 = getelementptr inbounds %struct.word_type, %struct.word_type* %723, i32 0, i32 2
  %725 = bitcast %union.SECOND_UNION* %724 to %struct.anon.1*
  %726 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %725, i32 0, i32 0
  %727 = load i8, i8* %726, align 1
  %728 = load %union.rec*, %union.rec** %res, align 8
  %729 = call %union.rec* @NewToken(i8 zeroext 2, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %727, %union.rec* %728)
  store %union.rec* %729, %union.rec** %res, align 8
  br label %1175

; <label>:730                                     ; preds = %714
  %731 = load %union.rec*, %union.rec** %res, align 8
  %732 = bitcast %union.rec* %731 to %struct.symbol_type*
  %733 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %732, i32 0, i32 12
  %734 = load i16, i16* %733, align 2
  %735 = zext i16 %734 to i32
  %736 = icmp eq i32 %735, 112
  br i1 %736, label %744, label %737

; <label>:737                                     ; preds = %730
  %738 = load %union.rec*, %union.rec** %res, align 8
  %739 = bitcast %union.rec* %738 to %struct.symbol_type*
  %740 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %739, i32 0, i32 12
  %741 = load i16, i16* %740, align 2
  %742 = zext i16 %741 to i32
  %743 = icmp eq i32 %742, 113
  br i1 %743, label %744, label %1139

; <label>:744                                     ; preds = %737, %730
  %745 = load i8*, i8** %p, align 8
  store i8* %745, i8** @chpt, align 8
  %746 = call %union.rec* @LexGetToken()
  store %union.rec* %746, %union.rec** %t, align 8
  %747 = load %union.rec*, %union.rec** %t, align 8
  %748 = bitcast %union.rec* %747 to %struct.word_type*
  %749 = getelementptr inbounds %struct.word_type, %struct.word_type* %748, i32 0, i32 1
  %750 = bitcast %union.FIRST_UNION* %749 to %struct.anon.0*
  %751 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %750, i32 0, i32 0
  %752 = load i8, i8* %751, align 1
  %753 = zext i8 %752 to i32
  %754 = icmp eq i32 %753, 11
  br i1 %754, label %755, label %762

; <label>:755                                     ; preds = %744
  %756 = load %union.rec*, %union.rec** %t, align 8
  %757 = bitcast %union.rec* %756 to %struct.word_type*
  %758 = getelementptr inbounds %struct.word_type, %struct.word_type* %757, i32 0, i32 4
  %759 = getelementptr inbounds [4 x i8], [4 x i8]* %758, i32 0, i32 0
  %760 = call i32 @strcmp(i8* %759, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %761 = icmp eq i32 %760, 0
  br label %762

; <label>:762                                     ; preds = %755, %744
  %763 = phi i1 [ false, %744 ], [ %761, %755 ]
  %764 = zext i1 %763 to i32
  store i32 %764, i32* %scope_suppressed, align 4
  %765 = load %union.rec*, %union.rec** %t, align 8
  %766 = bitcast %union.rec* %765 to %struct.word_type*
  %767 = getelementptr inbounds %struct.word_type, %struct.word_type* %766, i32 0, i32 1
  %768 = bitcast %union.FIRST_UNION* %767 to %struct.anon.0*
  %769 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %768, i32 0, i32 0
  %770 = load i8, i8* %769, align 1
  %771 = zext i8 %770 to i32
  %772 = icmp ne i32 %771, 102
  br i1 %772, label %773, label %837

; <label>:773                                     ; preds = %762
  %774 = load i32, i32* %scope_suppressed, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %837, label %776

; <label>:776                                     ; preds = %773
  %777 = load %union.rec*, %union.rec** %t, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 1
  %780 = bitcast %union.FIRST_UNION* %779 to %struct.FILE_POS*
  %781 = load %union.rec*, %union.rec** %res, align 8
  %782 = call i8* @SymName(%union.rec* %781)
  %783 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i32 2, %struct.FILE_POS* %780, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* %782)
  %784 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %784, %union.rec** @zz_hold, align 8
  %785 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %785, %union.rec** @zz_hold, align 8
  %786 = load %union.rec*, %union.rec** @zz_hold, align 8
  %787 = bitcast %union.rec* %786 to %struct.word_type*
  %788 = getelementptr inbounds %struct.word_type, %struct.word_type* %787, i32 0, i32 1
  %789 = bitcast %union.FIRST_UNION* %788 to %struct.anon.0*
  %790 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %789, i32 0, i32 0
  %791 = load i8, i8* %790, align 1
  %792 = zext i8 %791 to i32
  %793 = icmp eq i32 %792, 11
  br i1 %793, label %803, label %794

; <label>:794                                     ; preds = %776
  %795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %796 = bitcast %union.rec* %795 to %struct.word_type*
  %797 = getelementptr inbounds %struct.word_type, %struct.word_type* %796, i32 0, i32 1
  %798 = bitcast %union.FIRST_UNION* %797 to %struct.anon.0*
  %799 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %798, i32 0, i32 0
  %800 = load i8, i8* %799, align 1
  %801 = zext i8 %800 to i32
  %802 = icmp eq i32 %801, 12
  br i1 %802, label %803, label %811

; <label>:803                                     ; preds = %794, %776
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 1
  %807 = bitcast %union.FIRST_UNION* %806 to %struct.anon.0*
  %808 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %807, i32 0, i32 1
  %809 = load i8, i8* %808, align 1
  %810 = zext i8 %809 to i32
  br label %822

; <label>:811                                     ; preds = %794
  %812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %813 = bitcast %union.rec* %812 to %struct.word_type*
  %814 = getelementptr inbounds %struct.word_type, %struct.word_type* %813, i32 0, i32 1
  %815 = bitcast %union.FIRST_UNION* %814 to %struct.anon.0*
  %816 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %815, i32 0, i32 0
  %817 = load i8, i8* %816, align 1
  %818 = zext i8 %817 to i64
  %819 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %818
  %820 = load i8, i8* %819, align 1
  %821 = zext i8 %820 to i32
  br label %822

; <label>:822                                     ; preds = %811, %803
  %823 = phi i32 [ %810, %803 ], [ %821, %811 ]
  store i32 %823, i32* @zz_size, align 4
  %824 = load i32, i32* @zz_size, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %825
  %827 = load %union.rec*, %union.rec** %826, align 8
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %829 = bitcast %union.rec* %828 to %struct.word_type*
  %830 = getelementptr inbounds %struct.word_type, %struct.word_type* %829, i32 0, i32 0
  %831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %830, i32 0, i64 0
  %832 = getelementptr inbounds %struct.LIST, %struct.LIST* %831, i32 0, i32 0
  store %union.rec* %827, %union.rec** %832, align 8
  %833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %834 = load i32, i32* @zz_size, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %835
  store %union.rec* %833, %union.rec** %836, align 8
  store %union.rec* null, %union.rec** %res, align 8
  br label %1708

; <label>:837                                     ; preds = %773, %762
  %838 = load i32, i32* %scope_suppressed, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %953

; <label>:840                                     ; preds = %837
  call void @UnSuppressScope()
  %841 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %841, %union.rec** @zz_hold, align 8
  %842 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %842, %union.rec** @zz_hold, align 8
  %843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %844 = bitcast %union.rec* %843 to %struct.word_type*
  %845 = getelementptr inbounds %struct.word_type, %struct.word_type* %844, i32 0, i32 1
  %846 = bitcast %union.FIRST_UNION* %845 to %struct.anon.0*
  %847 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %846, i32 0, i32 0
  %848 = load i8, i8* %847, align 1
  %849 = zext i8 %848 to i32
  %850 = icmp eq i32 %849, 11
  br i1 %850, label %860, label %851

; <label>:851                                     ; preds = %840
  %852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %853 = bitcast %union.rec* %852 to %struct.word_type*
  %854 = getelementptr inbounds %struct.word_type, %struct.word_type* %853, i32 0, i32 1
  %855 = bitcast %union.FIRST_UNION* %854 to %struct.anon.0*
  %856 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %855, i32 0, i32 0
  %857 = load i8, i8* %856, align 1
  %858 = zext i8 %857 to i32
  %859 = icmp eq i32 %858, 12
  br i1 %859, label %860, label %868

; <label>:860                                     ; preds = %851, %840
  %861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %862 = bitcast %union.rec* %861 to %struct.word_type*
  %863 = getelementptr inbounds %struct.word_type, %struct.word_type* %862, i32 0, i32 1
  %864 = bitcast %union.FIRST_UNION* %863 to %struct.anon.0*
  %865 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %864, i32 0, i32 1
  %866 = load i8, i8* %865, align 1
  %867 = zext i8 %866 to i32
  br label %879

; <label>:868                                     ; preds = %851
  %869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %870 = bitcast %union.rec* %869 to %struct.word_type*
  %871 = getelementptr inbounds %struct.word_type, %struct.word_type* %870, i32 0, i32 1
  %872 = bitcast %union.FIRST_UNION* %871 to %struct.anon.0*
  %873 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %872, i32 0, i32 0
  %874 = load i8, i8* %873, align 1
  %875 = zext i8 %874 to i64
  %876 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %875
  %877 = load i8, i8* %876, align 1
  %878 = zext i8 %877 to i32
  br label %879

; <label>:879                                     ; preds = %868, %860
  %880 = phi i32 [ %867, %860 ], [ %878, %868 ]
  store i32 %880, i32* @zz_size, align 4
  %881 = load i32, i32* @zz_size, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %882
  %884 = load %union.rec*, %union.rec** %883, align 8
  %885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %886 = bitcast %union.rec* %885 to %struct.word_type*
  %887 = getelementptr inbounds %struct.word_type, %struct.word_type* %886, i32 0, i32 0
  %888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %887, i32 0, i64 0
  %889 = getelementptr inbounds %struct.LIST, %struct.LIST* %888, i32 0, i32 0
  store %union.rec* %884, %union.rec** %889, align 8
  %890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %891 = load i32, i32* @zz_size, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %892
  store %union.rec* %890, %union.rec** %893, align 8
  %894 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 102), align 1
  %895 = zext i8 %894 to i32
  store i32 %895, i32* @zz_size, align 4
  %896 = sext i32 %895 to i64
  %897 = icmp uge i64 %896, 265
  br i1 %897, label %898, label %901

; <label>:898                                     ; preds = %879
  %899 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %900 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %899)
  br label %926

; <label>:901                                     ; preds = %879
  %902 = load i32, i32* @zz_size, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %903
  %905 = load %union.rec*, %union.rec** %904, align 8
  %906 = icmp eq %union.rec* %905, null
  br i1 %906, label %907, label %911

; <label>:907                                     ; preds = %901
  %908 = load i32, i32* @zz_size, align 4
  %909 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %910 = call %union.rec* @GetMemory(i32 %908, %struct.FILE_POS* %909)
  store %union.rec* %910, %union.rec** @zz_hold, align 8
  br label %925

; <label>:911                                     ; preds = %901
  %912 = load i32, i32* @zz_size, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %913
  %915 = load %union.rec*, %union.rec** %914, align 8
  store %union.rec* %915, %union.rec** @zz_hold, align 8
  store %union.rec* %915, %union.rec** @zz_hold, align 8
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 0
  %919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %918, i32 0, i64 0
  %920 = getelementptr inbounds %struct.LIST, %struct.LIST* %919, i32 0, i32 0
  %921 = load %union.rec*, %union.rec** %920, align 8
  %922 = load i32, i32* @zz_size, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %923
  store %union.rec* %921, %union.rec** %924, align 8
  br label %925

; <label>:925                                     ; preds = %911, %907
  br label %926

; <label>:926                                     ; preds = %925, %898
  %927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 1
  %930 = bitcast %union.FIRST_UNION* %929 to %struct.anon.0*
  %931 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %930, i32 0, i32 0
  store i8 102, i8* %931, align 1
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %934 = bitcast %union.rec* %933 to %struct.word_type*
  %935 = getelementptr inbounds %struct.word_type, %struct.word_type* %934, i32 0, i32 0
  %936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %935, i32 0, i64 1
  %937 = getelementptr inbounds %struct.LIST, %struct.LIST* %936, i32 0, i32 1
  store %union.rec* %932, %union.rec** %937, align 8
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 1
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 0
  store %union.rec* %932, %union.rec** %942, align 8
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %944 = bitcast %union.rec* %943 to %struct.word_type*
  %945 = getelementptr inbounds %struct.word_type, %struct.word_type* %944, i32 0, i32 0
  %946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %945, i32 0, i64 0
  %947 = getelementptr inbounds %struct.LIST, %struct.LIST* %946, i32 0, i32 1
  store %union.rec* %932, %union.rec** %947, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %949 = bitcast %union.rec* %948 to %struct.word_type*
  %950 = getelementptr inbounds %struct.word_type, %struct.word_type* %949, i32 0, i32 0
  %951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %950, i32 0, i64 0
  %952 = getelementptr inbounds %struct.LIST, %struct.LIST* %951, i32 0, i32 0
  store %union.rec* %932, %union.rec** %952, align 8
  store %union.rec* %932, %union.rec** %t, align 8
  br label %953

; <label>:953                                     ; preds = %926, %837
  %954 = call %union.rec* @Parse(%union.rec** %t, %union.rec* null, i32 0, i32 0)
  store %union.rec* %954, %union.rec** %fname, align 8
  %955 = load %union.rec*, %union.rec** %fname, align 8
  %956 = call %union.rec* @ReplaceWithTidy(%union.rec* %955, i32 0)
  store %union.rec* %956, %union.rec** %fname, align 8
  %957 = load i32, i32* %scope_suppressed, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %960

; <label>:959                                     ; preds = %953
  call void @SuppressScope()
  br label %960

; <label>:960                                     ; preds = %959, %953
  %961 = load %union.rec*, %union.rec** %fname, align 8
  %962 = bitcast %union.rec* %961 to %struct.word_type*
  %963 = getelementptr inbounds %struct.word_type, %struct.word_type* %962, i32 0, i32 1
  %964 = bitcast %union.FIRST_UNION* %963 to %struct.anon.0*
  %965 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %964, i32 0, i32 0
  %966 = load i8, i8* %965, align 1
  %967 = zext i8 %966 to i32
  %968 = icmp eq i32 %967, 11
  br i1 %968, label %1037, label %969

; <label>:969                                     ; preds = %960
  %970 = load %union.rec*, %union.rec** %fname, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 1
  %973 = bitcast %union.FIRST_UNION* %972 to %struct.anon.0*
  %974 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %973, i32 0, i32 0
  %975 = load i8, i8* %974, align 1
  %976 = zext i8 %975 to i32
  %977 = icmp eq i32 %976, 12
  br i1 %977, label %1037, label %978

; <label>:978                                     ; preds = %969
  %979 = load %union.rec*, %union.rec** %fname, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 1
  %982 = bitcast %union.FIRST_UNION* %981 to %struct.FILE_POS*
  %983 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0), i32 2, %struct.FILE_POS* %982)
  %984 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %984, %union.rec** @zz_hold, align 8
  %985 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %985, %union.rec** @zz_hold, align 8
  %986 = load %union.rec*, %union.rec** @zz_hold, align 8
  %987 = bitcast %union.rec* %986 to %struct.word_type*
  %988 = getelementptr inbounds %struct.word_type, %struct.word_type* %987, i32 0, i32 1
  %989 = bitcast %union.FIRST_UNION* %988 to %struct.anon.0*
  %990 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %989, i32 0, i32 0
  %991 = load i8, i8* %990, align 1
  %992 = zext i8 %991 to i32
  %993 = icmp eq i32 %992, 11
  br i1 %993, label %1003, label %994

; <label>:994                                     ; preds = %978
  %995 = load %union.rec*, %union.rec** @zz_hold, align 8
  %996 = bitcast %union.rec* %995 to %struct.word_type*
  %997 = getelementptr inbounds %struct.word_type, %struct.word_type* %996, i32 0, i32 1
  %998 = bitcast %union.FIRST_UNION* %997 to %struct.anon.0*
  %999 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %998, i32 0, i32 0
  %1000 = load i8, i8* %999, align 1
  %1001 = zext i8 %1000 to i32
  %1002 = icmp eq i32 %1001, 12
  br i1 %1002, label %1003, label %1011

; <label>:1003                                    ; preds = %994, %978
  %1004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1005 = bitcast %union.rec* %1004 to %struct.word_type*
  %1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %1005, i32 0, i32 1
  %1007 = bitcast %union.FIRST_UNION* %1006 to %struct.anon.0*
  %1008 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1007, i32 0, i32 1
  %1009 = load i8, i8* %1008, align 1
  %1010 = zext i8 %1009 to i32
  br label %1022

; <label>:1011                                    ; preds = %994
  %1012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1013 = bitcast %union.rec* %1012 to %struct.word_type*
  %1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %1013, i32 0, i32 1
  %1015 = bitcast %union.FIRST_UNION* %1014 to %struct.anon.0*
  %1016 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1015, i32 0, i32 0
  %1017 = load i8, i8* %1016, align 1
  %1018 = zext i8 %1017 to i64
  %1019 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1018
  %1020 = load i8, i8* %1019, align 1
  %1021 = zext i8 %1020 to i32
  br label %1022

; <label>:1022                                    ; preds = %1011, %1003
  %1023 = phi i32 [ %1010, %1003 ], [ %1021, %1011 ]
  store i32 %1023, i32* @zz_size, align 4
  %1024 = load i32, i32* @zz_size, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1025
  %1027 = load %union.rec*, %union.rec** %1026, align 8
  %1028 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1029 = bitcast %union.rec* %1028 to %struct.word_type*
  %1030 = getelementptr inbounds %struct.word_type, %struct.word_type* %1029, i32 0, i32 0
  %1031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1030, i32 0, i64 0
  %1032 = getelementptr inbounds %struct.LIST, %struct.LIST* %1031, i32 0, i32 0
  store %union.rec* %1027, %union.rec** %1032, align 8
  %1033 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1034 = load i32, i32* @zz_size, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1035
  store %union.rec* %1033, %union.rec** %1036, align 8
  store %union.rec* null, %union.rec** %res, align 8
  br label %1708

; <label>:1037                                    ; preds = %969, %960
  %1038 = load %union.rec*, %union.rec** %fname, align 8
  %1039 = bitcast %union.rec* %1038 to %struct.word_type*
  %1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %1039, i32 0, i32 4
  %1041 = getelementptr inbounds [4 x i8], [4 x i8]* %1040, i32 0, i32 0
  %1042 = call i64 @strlen(i8* %1041) #5
  %1043 = sub i64 %1042, 3
  %1044 = trunc i64 %1043 to i32
  store i32 %1044, i32* %len, align 4
  %1045 = load i32, i32* %len, align 4
  %1046 = icmp sge i32 %1045, 0
  br i1 %1046, label %1047, label %1064

; <label>:1047                                    ; preds = %1037
  %1048 = load i32, i32* %len, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = load %union.rec*, %union.rec** %fname, align 8
  %1051 = bitcast %union.rec* %1050 to %struct.word_type*
  %1052 = getelementptr inbounds %struct.word_type, %struct.word_type* %1051, i32 0, i32 4
  %1053 = getelementptr inbounds [4 x i8], [4 x i8]* %1052, i32 0, i64 %1049
  %1054 = call i32 @strcmp(i8* %1053, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #5
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1064

; <label>:1056                                    ; preds = %1047
  %1057 = load i32, i32* %len, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = load %union.rec*, %union.rec** %fname, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 4
  %1062 = getelementptr inbounds [4 x i8], [4 x i8]* %1061, i32 0, i64 %1058
  %1063 = call i8* @strcpy(i8* %1062, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0)) #4
  br label %1064

; <label>:1064                                    ; preds = %1056, %1047, %1037
  %1065 = load %union.rec*, %union.rec** %fname, align 8
  %1066 = bitcast %union.rec* %1065 to %struct.word_type*
  %1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %1066, i32 0, i32 4
  %1068 = getelementptr inbounds [4 x i8], [4 x i8]* %1067, i32 0, i32 0
  %1069 = load %union.rec*, %union.rec** %fname, align 8
  %1070 = bitcast %union.rec* %1069 to %struct.word_type*
  %1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %1070, i32 0, i32 1
  %1072 = bitcast %union.FIRST_UNION* %1071 to %struct.FILE_POS*
  %1073 = load %union.rec*, %union.rec** %res, align 8
  %1074 = bitcast %union.rec* %1073 to %struct.symbol_type*
  %1075 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1074, i32 0, i32 12
  %1076 = load i16, i16* %1075, align 2
  %1077 = zext i16 %1076 to i32
  %1078 = icmp eq i32 %1077, 112
  %1079 = select i1 %1078, i32 1, i32 2
  %1080 = call zeroext i16 @DefineFile(i8* %1068, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %1072, i32 1, i32 %1079)
  store i16 %1080, i16* %fnum, align 2
  %1081 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %1081, %union.rec** @zz_hold, align 8
  %1082 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1082, %union.rec** @zz_hold, align 8
  %1083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 1
  %1086 = bitcast %union.FIRST_UNION* %1085 to %struct.anon.0*
  %1087 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1086, i32 0, i32 0
  %1088 = load i8, i8* %1087, align 1
  %1089 = zext i8 %1088 to i32
  %1090 = icmp eq i32 %1089, 11
  br i1 %1090, label %1100, label %1091

; <label>:1091                                    ; preds = %1064
  %1092 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1093 = bitcast %union.rec* %1092 to %struct.word_type*
  %1094 = getelementptr inbounds %struct.word_type, %struct.word_type* %1093, i32 0, i32 1
  %1095 = bitcast %union.FIRST_UNION* %1094 to %struct.anon.0*
  %1096 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1095, i32 0, i32 0
  %1097 = load i8, i8* %1096, align 1
  %1098 = zext i8 %1097 to i32
  %1099 = icmp eq i32 %1098, 12
  br i1 %1099, label %1100, label %1108

; <label>:1100                                    ; preds = %1091, %1064
  %1101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1102 = bitcast %union.rec* %1101 to %struct.word_type*
  %1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %1102, i32 0, i32 1
  %1104 = bitcast %union.FIRST_UNION* %1103 to %struct.anon.0*
  %1105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1104, i32 0, i32 1
  %1106 = load i8, i8* %1105, align 1
  %1107 = zext i8 %1106 to i32
  br label %1119

; <label>:1108                                    ; preds = %1091
  %1109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1110 = bitcast %union.rec* %1109 to %struct.word_type*
  %1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %1110, i32 0, i32 1
  %1112 = bitcast %union.FIRST_UNION* %1111 to %struct.anon.0*
  %1113 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1112, i32 0, i32 0
  %1114 = load i8, i8* %1113, align 1
  %1115 = zext i8 %1114 to i64
  %1116 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1115
  %1117 = load i8, i8* %1116, align 1
  %1118 = zext i8 %1117 to i32
  br label %1119

; <label>:1119                                    ; preds = %1108, %1100
  %1120 = phi i32 [ %1107, %1100 ], [ %1118, %1108 ]
  store i32 %1120, i32* @zz_size, align 4
  %1121 = load i32, i32* @zz_size, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1122
  %1124 = load %union.rec*, %union.rec** %1123, align 8
  %1125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 0
  %1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1127, i32 0, i64 0
  %1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %1128, i32 0, i32 0
  store %union.rec* %1124, %union.rec** %1129, align 8
  %1130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1131 = load i32, i32* @zz_size, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1132
  store %union.rec* %1130, %union.rec** %1133, align 8
  %1134 = load i16, i16* %fnum, align 2
  call void @LexPush(i16 zeroext %1134, i32 0, i32 1, i32 1, i32 0)
  %1135 = call %union.rec* @LexGetToken()
  store %union.rec* %1135, %union.rec** %res, align 8
  %1136 = load i32, i32* %vcount, align 4
  %1137 = add nsw i32 %1136, 1
  store i32 %1137, i32* %vcount, align 4
  %1138 = load i8*, i8** @chpt, align 8
  store i8* %1138, i8** %p, align 8
  br label %1174

; <label>:1139                                    ; preds = %737
  %1140 = load %union.rec*, %union.rec** %res, align 8
  %1141 = bitcast %union.rec* %1140 to %struct.symbol_type*
  %1142 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1141, i32 0, i32 12
  %1143 = load i16, i16* %1142, align 2
  %1144 = zext i16 %1143 to i32
  %1145 = icmp eq i32 %1144, 105
  br i1 %1145, label %1146, label %1159

; <label>:1146                                    ; preds = %1139
  %1147 = load %union.rec*, %union.rec** %res, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.symbol_type*
  %1149 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1148, i32 0, i32 12
  %1150 = load i16, i16* %1149, align 2
  %1151 = trunc i16 %1150 to i8
  %1152 = load %union.rec*, %union.rec** %res, align 8
  %1153 = bitcast %union.rec* %1152 to %struct.word_type*
  %1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %1153, i32 0, i32 2
  %1155 = bitcast %union.SECOND_UNION* %1154 to %struct.anon.1*
  %1156 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1155, i32 0, i32 0
  %1157 = load i8, i8* %1156, align 1
  %1158 = call %union.rec* @NewToken(i8 zeroext %1151, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %1157, %union.rec* null)
  store %union.rec* %1158, %union.rec** %res, align 8
  br label %1173

; <label>:1159                                    ; preds = %1139
  %1160 = load %union.rec*, %union.rec** %res, align 8
  %1161 = bitcast %union.rec* %1160 to %struct.symbol_type*
  %1162 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1161, i32 0, i32 12
  %1163 = load i16, i16* %1162, align 2
  %1164 = trunc i16 %1163 to i8
  %1165 = load %union.rec*, %union.rec** %res, align 8
  %1166 = bitcast %union.rec* %1165 to %struct.word_type*
  %1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %1166, i32 0, i32 2
  %1168 = bitcast %union.SECOND_UNION* %1167 to %struct.anon.1*
  %1169 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1168, i32 0, i32 0
  %1170 = load i8, i8* %1169, align 1
  %1171 = load %union.rec*, %union.rec** %res, align 8
  %1172 = call %union.rec* @NewToken(i8 zeroext %1164, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %1170, %union.rec* %1171)
  store %union.rec* %1172, %union.rec** %res, align 8
  br label %1173

; <label>:1173                                    ; preds = %1159, %1146
  br label %1174

; <label>:1174                                    ; preds = %1173, %1119
  br label %1175

; <label>:1175                                    ; preds = %1174, %721
  br label %1176

; <label>:1176                                    ; preds = %1175, %713
  br label %1177

; <label>:1177                                    ; preds = %1176, %482
  br label %1708

; <label>:1178                                    ; preds = %61
  %1179 = load i8*, i8** %p, align 8
  store i8* %1179, i8** %q, align 8
  store i8* %1179, i8** %startpos, align 8
  %1180 = getelementptr inbounds i8, i8* %1179, i64 -1
  %1181 = load i8*, i8** @startline, align 8
  %1182 = ptrtoint i8* %1180 to i64
  %1183 = ptrtoint i8* %1181 to i64
  %1184 = sub i64 %1182, %1183
  %1185 = trunc i64 %1184 to i32
  %1186 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1187 = and i32 %1185, 4095
  %1188 = shl i32 %1187, 20
  %1189 = and i32 %1186, 1048575
  %1190 = or i32 %1189, %1188
  store i32 %1190, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %1191

; <label>:1191                                    ; preds = %1701, %1178
  %1192 = load i8*, i8** %p, align 8
  %1193 = getelementptr inbounds i8, i8* %1192, i32 1
  store i8* %1193, i8** %p, align 8
  %1194 = load i8, i8* %1192, align 1
  %1195 = load i8*, i8** %q, align 8
  %1196 = getelementptr inbounds i8, i8* %1195, i32 1
  store i8* %1196, i8** %q, align 8
  store i8 %1194, i8* %1195, align 1
  %1197 = zext i8 %1194 to i64
  %1198 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %1197
  %1199 = load i8, i8* %1198, align 1
  %1200 = zext i8 %1199 to i32
  switch i32 %1200, label %1698 [
    i32 0, label %1201
    i32 1, label %1201
    i32 4, label %1201
    i32 5, label %1201
    i32 6, label %1201
    i32 7, label %1201
    i32 8, label %1202
    i32 9, label %1202
    i32 2, label %1345
    i32 3, label %1485
  ]

; <label>:1201                                    ; preds = %1191, %1191, %1191, %1191, %1191, %1191
  br label %1700

; <label>:1202                                    ; preds = %1191, %1191
  %1203 = load i8*, i8** %p, align 8
  %1204 = getelementptr inbounds i8, i8* %1203, i32 -1
  store i8* %1204, i8** %p, align 8
  %1205 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  %1206 = load i8*, i8** %q, align 8
  %1207 = getelementptr inbounds i8, i8* %1206, i64 -1
  %1208 = load i8*, i8** %startpos, align 8
  %1209 = ptrtoint i8* %1207 to i64
  %1210 = ptrtoint i8* %1208 to i64
  %1211 = sub i64 %1209, %1210
  %1212 = add nsw i64 %1211, 1
  %1213 = mul i64 %1212, 1
  %1214 = add i64 68, %1213
  %1215 = trunc i64 %1214 to i32
  store i32 %1215, i32* @zz_size, align 4
  %1216 = load i32, i32* @zz_size, align 4
  %1217 = sub nsw i32 %1216, 1
  %1218 = sext i32 %1217 to i64
  %1219 = udiv i64 %1218, 8
  %1220 = add i64 %1219, 1
  %1221 = trunc i64 %1220 to i32
  store i32 %1221, i32* @zz_size, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = icmp uge i64 %1222, 265
  br i1 %1223, label %1224, label %1226

; <label>:1224                                    ; preds = %1202
  %1225 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %1250

; <label>:1226                                    ; preds = %1202
  %1227 = load i32, i32* @zz_size, align 4
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1228
  %1230 = load %union.rec*, %union.rec** %1229, align 8
  %1231 = icmp eq %union.rec* %1230, null
  br i1 %1231, label %1232, label %1235

; <label>:1232                                    ; preds = %1226
  %1233 = load i32, i32* @zz_size, align 4
  %1234 = call %union.rec* @GetMemory(i32 %1233, %struct.FILE_POS* @file_pos)
  store %union.rec* %1234, %union.rec** @zz_hold, align 8
  br label %1249

; <label>:1235                                    ; preds = %1226
  %1236 = load i32, i32* @zz_size, align 4
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1237
  %1239 = load %union.rec*, %union.rec** %1238, align 8
  store %union.rec* %1239, %union.rec** @zz_hold, align 8
  store %union.rec* %1239, %union.rec** @zz_hold, align 8
  %1240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1241 = bitcast %union.rec* %1240 to %struct.word_type*
  %1242 = getelementptr inbounds %struct.word_type, %struct.word_type* %1241, i32 0, i32 0
  %1243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1242, i32 0, i64 0
  %1244 = getelementptr inbounds %struct.LIST, %struct.LIST* %1243, i32 0, i32 0
  %1245 = load %union.rec*, %union.rec** %1244, align 8
  %1246 = load i32, i32* @zz_size, align 4
  %1247 = sext i32 %1246 to i64
  %1248 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1247
  store %union.rec* %1245, %union.rec** %1248, align 8
  br label %1249

; <label>:1249                                    ; preds = %1235, %1232
  br label %1250

; <label>:1250                                    ; preds = %1249, %1224
  %1251 = load i32, i32* @zz_size, align 4
  %1252 = trunc i32 %1251 to i8
  %1253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1254 = bitcast %union.rec* %1253 to %struct.word_type*
  %1255 = getelementptr inbounds %struct.word_type, %struct.word_type* %1254, i32 0, i32 1
  %1256 = bitcast %union.FIRST_UNION* %1255 to %struct.anon.0*
  %1257 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1256, i32 0, i32 1
  store i8 %1252, i8* %1257, align 1
  %1258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1259 = bitcast %union.rec* %1258 to %struct.word_type*
  %1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %1259, i32 0, i32 1
  %1261 = bitcast %union.FIRST_UNION* %1260 to %struct.anon.0*
  %1262 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1261, i32 0, i32 0
  store i8 12, i8* %1262, align 1
  %1263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1265 = bitcast %union.rec* %1264 to %struct.word_type*
  %1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %1265, i32 0, i32 0
  %1267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1266, i32 0, i64 1
  %1268 = getelementptr inbounds %struct.LIST, %struct.LIST* %1267, i32 0, i32 1
  store %union.rec* %1263, %union.rec** %1268, align 8
  %1269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1270 = bitcast %union.rec* %1269 to %struct.word_type*
  %1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %1270, i32 0, i32 0
  %1272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1271, i32 0, i64 1
  %1273 = getelementptr inbounds %struct.LIST, %struct.LIST* %1272, i32 0, i32 0
  store %union.rec* %1263, %union.rec** %1273, align 8
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 0
  %1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1276, i32 0, i64 0
  %1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %1277, i32 0, i32 1
  store %union.rec* %1263, %union.rec** %1278, align 8
  %1279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1280 = bitcast %union.rec* %1279 to %struct.word_type*
  %1281 = getelementptr inbounds %struct.word_type, %struct.word_type* %1280, i32 0, i32 0
  %1282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1281, i32 0, i64 0
  %1283 = getelementptr inbounds %struct.LIST, %struct.LIST* %1282, i32 0, i32 0
  store %union.rec* %1263, %union.rec** %1283, align 8
  store %union.rec* %1263, %union.rec** %res, align 8
  %1284 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %1285 = load %union.rec*, %union.rec** %res, align 8
  %1286 = bitcast %union.rec* %1285 to %struct.word_type*
  %1287 = getelementptr inbounds %struct.word_type, %struct.word_type* %1286, i32 0, i32 1
  %1288 = bitcast %union.FIRST_UNION* %1287 to %struct.FILE_POS*
  %1289 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1288, i32 0, i32 2
  store i16 %1284, i16* %1289, align 2
  %1290 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1291 = and i32 %1290, 1048575
  %1292 = load %union.rec*, %union.rec** %res, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 1
  %1295 = bitcast %union.FIRST_UNION* %1294 to %struct.FILE_POS*
  %1296 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1295, i32 0, i32 3
  %1297 = load i32, i32* %1296, align 4
  %1298 = and i32 %1291, 1048575
  %1299 = and i32 %1297, -1048576
  %1300 = or i32 %1299, %1298
  store i32 %1300, i32* %1296, align 4
  %1301 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1302 = lshr i32 %1301, 20
  %1303 = load %union.rec*, %union.rec** %res, align 8
  %1304 = bitcast %union.rec* %1303 to %struct.word_type*
  %1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %1304, i32 0, i32 1
  %1306 = bitcast %union.FIRST_UNION* %1305 to %struct.FILE_POS*
  %1307 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1306, i32 0, i32 3
  %1308 = load i32, i32* %1307, align 4
  %1309 = and i32 %1302, 4095
  %1310 = shl i32 %1309, 20
  %1311 = and i32 %1308, 1048575
  %1312 = or i32 %1311, %1310
  store i32 %1312, i32* %1307, align 4
  store i32 0, i32* %c, align 4
  br label %1313

; <label>:1313                                    ; preds = %1335, %1250
  %1314 = load i32, i32* %c, align 4
  %1315 = sext i32 %1314 to i64
  %1316 = load i8*, i8** %q, align 8
  %1317 = getelementptr inbounds i8, i8* %1316, i64 -1
  %1318 = load i8*, i8** %startpos, align 8
  %1319 = ptrtoint i8* %1317 to i64
  %1320 = ptrtoint i8* %1318 to i64
  %1321 = sub i64 %1319, %1320
  %1322 = icmp slt i64 %1315, %1321
  br i1 %1322, label %1323, label %1338

; <label>:1323                                    ; preds = %1313
  %1324 = load i32, i32* %c, align 4
  %1325 = sext i32 %1324 to i64
  %1326 = load i8*, i8** %startpos, align 8
  %1327 = getelementptr inbounds i8, i8* %1326, i64 %1325
  %1328 = load i8, i8* %1327, align 1
  %1329 = load i32, i32* %c, align 4
  %1330 = sext i32 %1329 to i64
  %1331 = load %union.rec*, %union.rec** %res, align 8
  %1332 = bitcast %union.rec* %1331 to %struct.word_type*
  %1333 = getelementptr inbounds %struct.word_type, %struct.word_type* %1332, i32 0, i32 4
  %1334 = getelementptr inbounds [4 x i8], [4 x i8]* %1333, i32 0, i64 %1330
  store i8 %1328, i8* %1334, align 1
  br label %1335

; <label>:1335                                    ; preds = %1323
  %1336 = load i32, i32* %c, align 4
  %1337 = add nsw i32 %1336, 1
  store i32 %1337, i32* %c, align 4
  br label %1313

; <label>:1338                                    ; preds = %1313
  %1339 = load i32, i32* %c, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = load %union.rec*, %union.rec** %res, align 8
  %1342 = bitcast %union.rec* %1341 to %struct.word_type*
  %1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %1342, i32 0, i32 4
  %1344 = getelementptr inbounds [4 x i8], [4 x i8]* %1343, i32 0, i64 %1340
  store i8 0, i8* %1344, align 1
  br label %1700

; <label>:1345                                    ; preds = %1191
  %1346 = load i8*, i8** %q, align 8
  %1347 = getelementptr inbounds i8, i8* %1346, i64 -1
  %1348 = load i8*, i8** %startpos, align 8
  %1349 = ptrtoint i8* %1347 to i64
  %1350 = ptrtoint i8* %1348 to i64
  %1351 = sub i64 %1349, %1350
  %1352 = add nsw i64 %1351, 1
  %1353 = mul i64 %1352, 1
  %1354 = add i64 68, %1353
  %1355 = trunc i64 %1354 to i32
  store i32 %1355, i32* @zz_size, align 4
  %1356 = load i32, i32* @zz_size, align 4
  %1357 = sub nsw i32 %1356, 1
  %1358 = sext i32 %1357 to i64
  %1359 = udiv i64 %1358, 8
  %1360 = add i64 %1359, 1
  %1361 = trunc i64 %1360 to i32
  store i32 %1361, i32* @zz_size, align 4
  %1362 = sext i32 %1361 to i64
  %1363 = icmp uge i64 %1362, 265
  br i1 %1363, label %1364, label %1366

; <label>:1364                                    ; preds = %1345
  %1365 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %1390

; <label>:1366                                    ; preds = %1345
  %1367 = load i32, i32* @zz_size, align 4
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1368
  %1370 = load %union.rec*, %union.rec** %1369, align 8
  %1371 = icmp eq %union.rec* %1370, null
  br i1 %1371, label %1372, label %1375

; <label>:1372                                    ; preds = %1366
  %1373 = load i32, i32* @zz_size, align 4
  %1374 = call %union.rec* @GetMemory(i32 %1373, %struct.FILE_POS* @file_pos)
  store %union.rec* %1374, %union.rec** @zz_hold, align 8
  br label %1389

; <label>:1375                                    ; preds = %1366
  %1376 = load i32, i32* @zz_size, align 4
  %1377 = sext i32 %1376 to i64
  %1378 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1377
  %1379 = load %union.rec*, %union.rec** %1378, align 8
  store %union.rec* %1379, %union.rec** @zz_hold, align 8
  store %union.rec* %1379, %union.rec** @zz_hold, align 8
  %1380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1381 = bitcast %union.rec* %1380 to %struct.word_type*
  %1382 = getelementptr inbounds %struct.word_type, %struct.word_type* %1381, i32 0, i32 0
  %1383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1382, i32 0, i64 0
  %1384 = getelementptr inbounds %struct.LIST, %struct.LIST* %1383, i32 0, i32 0
  %1385 = load %union.rec*, %union.rec** %1384, align 8
  %1386 = load i32, i32* @zz_size, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1387
  store %union.rec* %1385, %union.rec** %1388, align 8
  br label %1389

; <label>:1389                                    ; preds = %1375, %1372
  br label %1390

; <label>:1390                                    ; preds = %1389, %1364
  %1391 = load i32, i32* @zz_size, align 4
  %1392 = trunc i32 %1391 to i8
  %1393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1394 = bitcast %union.rec* %1393 to %struct.word_type*
  %1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %1394, i32 0, i32 1
  %1396 = bitcast %union.FIRST_UNION* %1395 to %struct.anon.0*
  %1397 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1396, i32 0, i32 1
  store i8 %1392, i8* %1397, align 1
  %1398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1399 = bitcast %union.rec* %1398 to %struct.word_type*
  %1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %1399, i32 0, i32 1
  %1401 = bitcast %union.FIRST_UNION* %1400 to %struct.anon.0*
  %1402 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1401, i32 0, i32 0
  store i8 12, i8* %1402, align 1
  %1403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1405 = bitcast %union.rec* %1404 to %struct.word_type*
  %1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %1405, i32 0, i32 0
  %1407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1406, i32 0, i64 1
  %1408 = getelementptr inbounds %struct.LIST, %struct.LIST* %1407, i32 0, i32 1
  store %union.rec* %1403, %union.rec** %1408, align 8
  %1409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1410 = bitcast %union.rec* %1409 to %struct.word_type*
  %1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %1410, i32 0, i32 0
  %1412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1411, i32 0, i64 1
  %1413 = getelementptr inbounds %struct.LIST, %struct.LIST* %1412, i32 0, i32 0
  store %union.rec* %1403, %union.rec** %1413, align 8
  %1414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1415 = bitcast %union.rec* %1414 to %struct.word_type*
  %1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %1415, i32 0, i32 0
  %1417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1416, i32 0, i64 0
  %1418 = getelementptr inbounds %struct.LIST, %struct.LIST* %1417, i32 0, i32 1
  store %union.rec* %1403, %union.rec** %1418, align 8
  %1419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1420 = bitcast %union.rec* %1419 to %struct.word_type*
  %1421 = getelementptr inbounds %struct.word_type, %struct.word_type* %1420, i32 0, i32 0
  %1422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1421, i32 0, i64 0
  %1423 = getelementptr inbounds %struct.LIST, %struct.LIST* %1422, i32 0, i32 0
  store %union.rec* %1403, %union.rec** %1423, align 8
  store %union.rec* %1403, %union.rec** %res, align 8
  %1424 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %1425 = load %union.rec*, %union.rec** %res, align 8
  %1426 = bitcast %union.rec* %1425 to %struct.word_type*
  %1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %1426, i32 0, i32 1
  %1428 = bitcast %union.FIRST_UNION* %1427 to %struct.FILE_POS*
  %1429 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1428, i32 0, i32 2
  store i16 %1424, i16* %1429, align 2
  %1430 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1431 = and i32 %1430, 1048575
  %1432 = load %union.rec*, %union.rec** %res, align 8
  %1433 = bitcast %union.rec* %1432 to %struct.word_type*
  %1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %1433, i32 0, i32 1
  %1435 = bitcast %union.FIRST_UNION* %1434 to %struct.FILE_POS*
  %1436 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1435, i32 0, i32 3
  %1437 = load i32, i32* %1436, align 4
  %1438 = and i32 %1431, 1048575
  %1439 = and i32 %1437, -1048576
  %1440 = or i32 %1439, %1438
  store i32 %1440, i32* %1436, align 4
  %1441 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1442 = lshr i32 %1441, 20
  %1443 = load %union.rec*, %union.rec** %res, align 8
  %1444 = bitcast %union.rec* %1443 to %struct.word_type*
  %1445 = getelementptr inbounds %struct.word_type, %struct.word_type* %1444, i32 0, i32 1
  %1446 = bitcast %union.FIRST_UNION* %1445 to %struct.FILE_POS*
  %1447 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1446, i32 0, i32 3
  %1448 = load i32, i32* %1447, align 4
  %1449 = and i32 %1442, 4095
  %1450 = shl i32 %1449, 20
  %1451 = and i32 %1448, 1048575
  %1452 = or i32 %1451, %1450
  store i32 %1452, i32* %1447, align 4
  store i32 0, i32* %c, align 4
  br label %1453

; <label>:1453                                    ; preds = %1475, %1390
  %1454 = load i32, i32* %c, align 4
  %1455 = sext i32 %1454 to i64
  %1456 = load i8*, i8** %q, align 8
  %1457 = getelementptr inbounds i8, i8* %1456, i64 -1
  %1458 = load i8*, i8** %startpos, align 8
  %1459 = ptrtoint i8* %1457 to i64
  %1460 = ptrtoint i8* %1458 to i64
  %1461 = sub i64 %1459, %1460
  %1462 = icmp slt i64 %1455, %1461
  br i1 %1462, label %1463, label %1478

; <label>:1463                                    ; preds = %1453
  %1464 = load i32, i32* %c, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = load i8*, i8** %startpos, align 8
  %1467 = getelementptr inbounds i8, i8* %1466, i64 %1465
  %1468 = load i8, i8* %1467, align 1
  %1469 = load i32, i32* %c, align 4
  %1470 = sext i32 %1469 to i64
  %1471 = load %union.rec*, %union.rec** %res, align 8
  %1472 = bitcast %union.rec* %1471 to %struct.word_type*
  %1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %1472, i32 0, i32 4
  %1474 = getelementptr inbounds [4 x i8], [4 x i8]* %1473, i32 0, i64 %1470
  store i8 %1468, i8* %1474, align 1
  br label %1475

; <label>:1475                                    ; preds = %1463
  %1476 = load i32, i32* %c, align 4
  %1477 = add nsw i32 %1476, 1
  store i32 %1477, i32* %c, align 4
  br label %1453

; <label>:1478                                    ; preds = %1453
  %1479 = load i32, i32* %c, align 4
  %1480 = sext i32 %1479 to i64
  %1481 = load %union.rec*, %union.rec** %res, align 8
  %1482 = bitcast %union.rec* %1481 to %struct.word_type*
  %1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %1482, i32 0, i32 4
  %1484 = getelementptr inbounds [4 x i8], [4 x i8]* %1483, i32 0, i64 %1480
  store i8 0, i8* %1484, align 1
  br label %1700

; <label>:1485                                    ; preds = %1191
  %1486 = load i8*, i8** %q, align 8
  %1487 = getelementptr inbounds i8, i8* %1486, i32 -1
  store i8* %1487, i8** %q, align 8
  %1488 = load i8*, i8** %p, align 8
  %1489 = load i8, i8* %1488, align 1
  %1490 = zext i8 %1489 to i64
  %1491 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %1490
  %1492 = load i8, i8* %1491, align 1
  %1493 = zext i8 %1492 to i32
  %1494 = icmp eq i32 %1493, 8
  br i1 %1494, label %1503, label %1495

; <label>:1495                                    ; preds = %1485
  %1496 = load i8*, i8** %p, align 8
  %1497 = load i8, i8* %1496, align 1
  %1498 = zext i8 %1497 to i64
  %1499 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %1498
  %1500 = load i8, i8* %1499, align 1
  %1501 = zext i8 %1500 to i32
  %1502 = icmp eq i32 %1501, 9
  br i1 %1502, label %1503, label %1642

; <label>:1503                                    ; preds = %1495, %1485
  %1504 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  %1505 = load i8*, i8** %q, align 8
  %1506 = load i8*, i8** %startpos, align 8
  %1507 = ptrtoint i8* %1505 to i64
  %1508 = ptrtoint i8* %1506 to i64
  %1509 = sub i64 %1507, %1508
  %1510 = add nsw i64 %1509, 1
  %1511 = mul i64 %1510, 1
  %1512 = add i64 68, %1511
  %1513 = trunc i64 %1512 to i32
  store i32 %1513, i32* @zz_size, align 4
  %1514 = load i32, i32* @zz_size, align 4
  %1515 = sub nsw i32 %1514, 1
  %1516 = sext i32 %1515 to i64
  %1517 = udiv i64 %1516, 8
  %1518 = add i64 %1517, 1
  %1519 = trunc i64 %1518 to i32
  store i32 %1519, i32* @zz_size, align 4
  %1520 = sext i32 %1519 to i64
  %1521 = icmp uge i64 %1520, 265
  br i1 %1521, label %1522, label %1524

; <label>:1522                                    ; preds = %1503
  %1523 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %1548

; <label>:1524                                    ; preds = %1503
  %1525 = load i32, i32* @zz_size, align 4
  %1526 = sext i32 %1525 to i64
  %1527 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1526
  %1528 = load %union.rec*, %union.rec** %1527, align 8
  %1529 = icmp eq %union.rec* %1528, null
  br i1 %1529, label %1530, label %1533

; <label>:1530                                    ; preds = %1524
  %1531 = load i32, i32* @zz_size, align 4
  %1532 = call %union.rec* @GetMemory(i32 %1531, %struct.FILE_POS* @file_pos)
  store %union.rec* %1532, %union.rec** @zz_hold, align 8
  br label %1547

; <label>:1533                                    ; preds = %1524
  %1534 = load i32, i32* @zz_size, align 4
  %1535 = sext i32 %1534 to i64
  %1536 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1535
  %1537 = load %union.rec*, %union.rec** %1536, align 8
  store %union.rec* %1537, %union.rec** @zz_hold, align 8
  store %union.rec* %1537, %union.rec** @zz_hold, align 8
  %1538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1539 = bitcast %union.rec* %1538 to %struct.word_type*
  %1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %1539, i32 0, i32 0
  %1541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1540, i32 0, i64 0
  %1542 = getelementptr inbounds %struct.LIST, %struct.LIST* %1541, i32 0, i32 0
  %1543 = load %union.rec*, %union.rec** %1542, align 8
  %1544 = load i32, i32* @zz_size, align 4
  %1545 = sext i32 %1544 to i64
  %1546 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1545
  store %union.rec* %1543, %union.rec** %1546, align 8
  br label %1547

; <label>:1547                                    ; preds = %1533, %1530
  br label %1548

; <label>:1548                                    ; preds = %1547, %1522
  %1549 = load i32, i32* @zz_size, align 4
  %1550 = trunc i32 %1549 to i8
  %1551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1552 = bitcast %union.rec* %1551 to %struct.word_type*
  %1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %1552, i32 0, i32 1
  %1554 = bitcast %union.FIRST_UNION* %1553 to %struct.anon.0*
  %1555 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1554, i32 0, i32 1
  store i8 %1550, i8* %1555, align 1
  %1556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1557 = bitcast %union.rec* %1556 to %struct.word_type*
  %1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %1557, i32 0, i32 1
  %1559 = bitcast %union.FIRST_UNION* %1558 to %struct.anon.0*
  %1560 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1559, i32 0, i32 0
  store i8 12, i8* %1560, align 1
  %1561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1563 = bitcast %union.rec* %1562 to %struct.word_type*
  %1564 = getelementptr inbounds %struct.word_type, %struct.word_type* %1563, i32 0, i32 0
  %1565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1564, i32 0, i64 1
  %1566 = getelementptr inbounds %struct.LIST, %struct.LIST* %1565, i32 0, i32 1
  store %union.rec* %1561, %union.rec** %1566, align 8
  %1567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1568 = bitcast %union.rec* %1567 to %struct.word_type*
  %1569 = getelementptr inbounds %struct.word_type, %struct.word_type* %1568, i32 0, i32 0
  %1570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1569, i32 0, i64 1
  %1571 = getelementptr inbounds %struct.LIST, %struct.LIST* %1570, i32 0, i32 0
  store %union.rec* %1561, %union.rec** %1571, align 8
  %1572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1573 = bitcast %union.rec* %1572 to %struct.word_type*
  %1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %1573, i32 0, i32 0
  %1575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1574, i32 0, i64 0
  %1576 = getelementptr inbounds %struct.LIST, %struct.LIST* %1575, i32 0, i32 1
  store %union.rec* %1561, %union.rec** %1576, align 8
  %1577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1578 = bitcast %union.rec* %1577 to %struct.word_type*
  %1579 = getelementptr inbounds %struct.word_type, %struct.word_type* %1578, i32 0, i32 0
  %1580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1579, i32 0, i64 0
  %1581 = getelementptr inbounds %struct.LIST, %struct.LIST* %1580, i32 0, i32 0
  store %union.rec* %1561, %union.rec** %1581, align 8
  store %union.rec* %1561, %union.rec** %res, align 8
  %1582 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %1583 = load %union.rec*, %union.rec** %res, align 8
  %1584 = bitcast %union.rec* %1583 to %struct.word_type*
  %1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %1584, i32 0, i32 1
  %1586 = bitcast %union.FIRST_UNION* %1585 to %struct.FILE_POS*
  %1587 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1586, i32 0, i32 2
  store i16 %1582, i16* %1587, align 2
  %1588 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1589 = and i32 %1588, 1048575
  %1590 = load %union.rec*, %union.rec** %res, align 8
  %1591 = bitcast %union.rec* %1590 to %struct.word_type*
  %1592 = getelementptr inbounds %struct.word_type, %struct.word_type* %1591, i32 0, i32 1
  %1593 = bitcast %union.FIRST_UNION* %1592 to %struct.FILE_POS*
  %1594 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1593, i32 0, i32 3
  %1595 = load i32, i32* %1594, align 4
  %1596 = and i32 %1589, 1048575
  %1597 = and i32 %1595, -1048576
  %1598 = or i32 %1597, %1596
  store i32 %1598, i32* %1594, align 4
  %1599 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1600 = lshr i32 %1599, 20
  %1601 = load %union.rec*, %union.rec** %res, align 8
  %1602 = bitcast %union.rec* %1601 to %struct.word_type*
  %1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %1602, i32 0, i32 1
  %1604 = bitcast %union.FIRST_UNION* %1603 to %struct.FILE_POS*
  %1605 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1604, i32 0, i32 3
  %1606 = load i32, i32* %1605, align 4
  %1607 = and i32 %1600, 4095
  %1608 = shl i32 %1607, 20
  %1609 = and i32 %1606, 1048575
  %1610 = or i32 %1609, %1608
  store i32 %1610, i32* %1605, align 4
  store i32 0, i32* %c, align 4
  br label %1611

; <label>:1611                                    ; preds = %1632, %1548
  %1612 = load i32, i32* %c, align 4
  %1613 = sext i32 %1612 to i64
  %1614 = load i8*, i8** %q, align 8
  %1615 = load i8*, i8** %startpos, align 8
  %1616 = ptrtoint i8* %1614 to i64
  %1617 = ptrtoint i8* %1615 to i64
  %1618 = sub i64 %1616, %1617
  %1619 = icmp slt i64 %1613, %1618
  br i1 %1619, label %1620, label %1635

; <label>:1620                                    ; preds = %1611
  %1621 = load i32, i32* %c, align 4
  %1622 = sext i32 %1621 to i64
  %1623 = load i8*, i8** %startpos, align 8
  %1624 = getelementptr inbounds i8, i8* %1623, i64 %1622
  %1625 = load i8, i8* %1624, align 1
  %1626 = load i32, i32* %c, align 4
  %1627 = sext i32 %1626 to i64
  %1628 = load %union.rec*, %union.rec** %res, align 8
  %1629 = bitcast %union.rec* %1628 to %struct.word_type*
  %1630 = getelementptr inbounds %struct.word_type, %struct.word_type* %1629, i32 0, i32 4
  %1631 = getelementptr inbounds [4 x i8], [4 x i8]* %1630, i32 0, i64 %1627
  store i8 %1625, i8* %1631, align 1
  br label %1632

; <label>:1632                                    ; preds = %1620
  %1633 = load i32, i32* %c, align 4
  %1634 = add nsw i32 %1633, 1
  store i32 %1634, i32* %c, align 4
  br label %1611

; <label>:1635                                    ; preds = %1611
  %1636 = load i32, i32* %c, align 4
  %1637 = sext i32 %1636 to i64
  %1638 = load %union.rec*, %union.rec** %res, align 8
  %1639 = bitcast %union.rec* %1638 to %struct.word_type*
  %1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %1639, i32 0, i32 4
  %1641 = getelementptr inbounds [4 x i8], [4 x i8]* %1640, i32 0, i64 %1637
  store i8 0, i8* %1641, align 1
  br label %1697

; <label>:1642                                    ; preds = %1495
  %1643 = load i8*, i8** %p, align 8
  %1644 = load i8, i8* %1643, align 1
  %1645 = zext i8 %1644 to i32
  %1646 = icmp sge i32 %1645, 48
  br i1 %1646, label %1647, label %1690

; <label>:1647                                    ; preds = %1642
  %1648 = load i8*, i8** %p, align 8
  %1649 = load i8, i8* %1648, align 1
  %1650 = zext i8 %1649 to i32
  %1651 = icmp sle i32 %1650, 55
  br i1 %1651, label %1652, label %1690

; <label>:1652                                    ; preds = %1647
  store i32 0, i32* %ch, align 4
  store i32 0, i32* %count, align 4
  br label %1653

; <label>:1653                                    ; preds = %1677, %1652
  %1654 = load i32, i32* %ch, align 4
  %1655 = mul nsw i32 %1654, 8
  %1656 = load i8*, i8** %p, align 8
  %1657 = getelementptr inbounds i8, i8* %1656, i32 1
  store i8* %1657, i8** %p, align 8
  %1658 = load i8, i8* %1656, align 1
  %1659 = zext i8 %1658 to i32
  %1660 = sub nsw i32 %1659, 48
  %1661 = add nsw i32 %1655, %1660
  store i32 %1661, i32* %ch, align 4
  %1662 = load i32, i32* %count, align 4
  %1663 = add nsw i32 %1662, 1
  store i32 %1663, i32* %count, align 4
  br label %1664

; <label>:1664                                    ; preds = %1653
  %1665 = load i8*, i8** %p, align 8
  %1666 = load i8, i8* %1665, align 1
  %1667 = zext i8 %1666 to i32
  %1668 = icmp sge i32 %1667, 48
  br i1 %1668, label %1669, label %1677

; <label>:1669                                    ; preds = %1664
  %1670 = load i8*, i8** %p, align 8
  %1671 = load i8, i8* %1670, align 1
  %1672 = zext i8 %1671 to i32
  %1673 = icmp sle i32 %1672, 55
  br i1 %1673, label %1674, label %1677

; <label>:1674                                    ; preds = %1669
  %1675 = load i32, i32* %count, align 4
  %1676 = icmp slt i32 %1675, 3
  br label %1677

; <label>:1677                                    ; preds = %1674, %1669, %1664
  %1678 = phi i1 [ false, %1669 ], [ false, %1664 ], [ %1676, %1674 ]
  br i1 %1678, label %1653, label %1679

; <label>:1679                                    ; preds = %1677
  %1680 = load i32, i32* %ch, align 4
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1682, label %1684

; <label>:1682                                    ; preds = %1679
  %1683 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  br label %1689

; <label>:1684                                    ; preds = %1679
  %1685 = load i32, i32* %ch, align 4
  %1686 = trunc i32 %1685 to i8
  %1687 = load i8*, i8** %q, align 8
  %1688 = getelementptr inbounds i8, i8* %1687, i32 1
  store i8* %1688, i8** %q, align 8
  store i8 %1686, i8* %1687, align 1
  br label %1689

; <label>:1689                                    ; preds = %1684, %1682
  br label %1696

; <label>:1690                                    ; preds = %1647, %1642
  %1691 = load i8*, i8** %p, align 8
  %1692 = getelementptr inbounds i8, i8* %1691, i32 1
  store i8* %1692, i8** %p, align 8
  %1693 = load i8, i8* %1691, align 1
  %1694 = load i8*, i8** %q, align 8
  %1695 = getelementptr inbounds i8, i8* %1694, i32 1
  store i8* %1695, i8** %q, align 8
  store i8 %1693, i8* %1694, align 1
  br label %1696

; <label>:1696                                    ; preds = %1690, %1689
  br label %1697

; <label>:1697                                    ; preds = %1696, %1635
  br label %1700

; <label>:1698                                    ; preds = %1191
  %1699 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i32 0, %struct.FILE_POS* @file_pos)
  br label %1700

; <label>:1700                                    ; preds = %1698, %1697, %1478, %1338, %1201
  br label %1701

; <label>:1701                                    ; preds = %1700
  %1702 = load %union.rec*, %union.rec** %res, align 8
  %1703 = icmp eq %union.rec* %1702, null
  br i1 %1703, label %1191, label %1704

; <label>:1704                                    ; preds = %1701
  br label %1708

; <label>:1705                                    ; preds = %61
  %1706 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1707 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %1706, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0))
  br label %1708

; <label>:1708                                    ; preds = %1705, %1704, %1177, %1022, %822, %265, %155, %152, %149, %148, %115
  br label %1709

; <label>:1709                                    ; preds = %1708
  %1710 = load %union.rec*, %union.rec** %res, align 8
  %1711 = icmp eq %union.rec* %1710, null
  br i1 %1711, label %61, label %1712

; <label>:1712                                    ; preds = %1709
  %1713 = load i8*, i8** %p, align 8
  %1714 = load i8*, i8** @startline, align 8
  %1715 = ptrtoint i8* %1713 to i64
  %1716 = ptrtoint i8* %1714 to i64
  %1717 = sub i64 %1715, %1716
  %1718 = icmp sge i64 %1717, 2048
  br i1 %1718, label %1719, label %1724

; <label>:1719                                    ; preds = %1712
  %1720 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1721 = and i32 %1720, 1048575
  %1722 = or i32 %1721, 1048576
  store i32 %1722, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1723 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %1724

; <label>:1724                                    ; preds = %1719, %1712
  %1725 = load i8*, i8** %p, align 8
  store i8* %1725, i8** @chpt, align 8
  %1726 = load i32, i32* %vcount, align 4
  %1727 = trunc i32 %1726 to i8
  %1728 = load %union.rec*, %union.rec** %res, align 8
  %1729 = bitcast %union.rec* %1728 to %struct.word_type*
  %1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %1729, i32 0, i32 2
  %1731 = bitcast %union.SECOND_UNION* %1730 to %struct.anon.1*
  %1732 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1731, i32 0, i32 2
  store i8 %1727, i8* %1732, align 1
  %1733 = load i32, i32* %hcount, align 4
  %1734 = trunc i32 %1733 to i8
  %1735 = load %union.rec*, %union.rec** %res, align 8
  %1736 = bitcast %union.rec* %1735 to %struct.word_type*
  %1737 = getelementptr inbounds %struct.word_type, %struct.word_type* %1736, i32 0, i32 2
  %1738 = bitcast %union.SECOND_UNION* %1737 to %struct.anon.1*
  %1739 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1738, i32 0, i32 1
  store i8 %1734, i8* %1739, align 1
  %1740 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1740, %union.rec** %1
  br label %1741

; <label>:1741                                    ; preds = %1724, %56
  %1742 = load %union.rec*, %union.rec** %1
  ret %union.rec* %1742
}

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

; Function Attrs: nounwind uwtable
define internal void @srcnext() #0 {
  %col = alloca i8*, align 8
  %1 = load i32, i32* @blksize, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %23

; <label>:3                                       ; preds = %0
  %4 = load i8*, i8** @chpt, align 8
  %5 = load i8*, i8** @limit, align 8
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %3
  %8 = load i8*, i8** @buf, align 8
  store i8* %8, i8** %col, align 8
  br label %9

; <label>:9                                       ; preds = %17, %7
  %10 = load i8*, i8** @limit, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %11, i8** @limit, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %col, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %14, i8** %col, align 8
  store i8 %12, i8* %14, align 1
  %15 = zext i8 %12 to i32
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %9

; <label>:18                                      ; preds = %9
  %19 = load i8*, i8** %col, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** @frst, align 8
  %21 = load i8*, i8** @limit, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** @limit, align 8
  store i32 0, i32* @blksize, align 4
  br label %23

; <label>:23                                      ; preds = %18, %3, %0
  %24 = load i8*, i8** @chpt, align 8
  %25 = load i8*, i8** @limit, align 8
  %26 = icmp uge i8* %24, %25
  br i1 %26, label %27, label %83

; <label>:27                                      ; preds = %23
  %28 = load i8*, i8** @chpt, align 8
  %29 = load i8*, i8** @limit, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %36

; <label>:31                                      ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %33 = and i32 %32, 1048575
  %34 = or i32 %33, 1048576
  store i32 %34, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %36

; <label>:36                                      ; preds = %31, %27
  %37 = load i8*, i8** @frst, align 8
  store i8* %37, i8** @chpt, align 8
  %38 = load i8*, i8** @buf, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %40 = call i64 @fread(i8* %38, i64 1, i64 8192, %struct._IO_FILE* %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @blksize, align 4
  %42 = load i32, i32* @blksize, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %51

; <label>:44                                      ; preds = %36
  %45 = load i8*, i8** @buf, align 8
  %46 = load i32, i32* @blksize, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* @last_char, align 1
  br label %51

; <label>:51                                      ; preds = %44, %36
  %52 = load i32, i32* @blksize, align 4
  %53 = icmp slt i32 %52, 8192
  br i1 %53, label %54, label %76

; <label>:54                                      ; preds = %51
  %55 = load i8, i8* @last_char, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 10
  br i1 %57, label %58, label %76

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* @blksize, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @blksize, align 4
  %61 = load i8*, i8** @buf, align 8
  %62 = load i32, i32* @blksize, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8 10, i8* %65, align 1
  store i8 10, i8* @last_char, align 1
  %66 = load i16, i16* @ftype, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %75

; <label>:69                                      ; preds = %58
  %70 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %71 = and i32 %70, 1048575
  store i32 %71, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %73 = and i32 %72, -1048576
  store i32 %73, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.55, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %75

; <label>:75                                      ; preds = %69, %58
  br label %76

; <label>:76                                      ; preds = %75, %54, %51
  %77 = load i8*, i8** @buf, align 8
  store i8* %77, i8** @frst, align 8
  %78 = load i8*, i8** @buf, align 8
  %79 = load i32, i32* @blksize, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** @limit, align 8
  %82 = load i8*, i8** @limit, align 8
  store i8 10, i8* %82, align 1
  br label %83

; <label>:83                                      ; preds = %76, %23
  %84 = load i8*, i8** @chpt, align 8
  %85 = load i8*, i8** @limit, align 8
  %86 = icmp uge i8* %84, %85
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %83
  %88 = load i8*, i8** @buf, align 8
  store i8* %88, i8** @limit, align 8
  store i8* %88, i8** @chpt, align 8
  %89 = load i8*, i8** @limit, align 8
  store i8 0, i8* %89, align 1
  br label %90

; <label>:90                                      ; preds = %87, %83
  ret void
}

declare zeroext i16 @NextFile(i16 zeroext) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare %union.rec* @SearchSym(i8*, i32) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @CopyTokenList(%union.rec*, %struct.FILE_POS*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @SymName(%union.rec*) #1

declare void @UnSuppressScope() #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare void @SuppressScope() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %union.rec* @LexScanVerbatim(%struct._IO_FILE* %fp, i32 %end_stop, %struct.FILE_POS* %err_pos, i32 %lessskip) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.FILE_POS*, align 8
  %4 = alloca i32, align 4
  %p = alloca i8*, align 8
  %depth = alloca i32, align 4
  %finished = alloca i32, align 4
  %skipping = alloca i32, align 4
  %hs_buff = alloca [512 x i8], align 16
  %hs_top = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %bufftop = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %incl_fname = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %incl_fp = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %fnum = alloca i16, align 2
  %sysinc = alloca i32, align 4
  %i6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i32 %end_stop, i32* %2, align 4
  store %struct.FILE_POS* %err_pos, %struct.FILE_POS** %3, align 8
  store i32 %lessskip, i32* %4, align 4
  store %union.rec* null, %union.rec** %res, align 8
  %5 = load %union.rec*, %union.rec** @next_token, align 8
  %6 = icmp ne %union.rec* %5, null
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i32 1, %struct.FILE_POS* %8)
  br label %10

; <label>:10                                      ; preds = %7, %0
  %11 = load i8*, i8** @chpt, align 8
  store i8* %11, i8** %p, align 8
  store i32 0, i32* %depth, align 4
  store i32 0, i32* %finished, align 4
  store i32 1, i32* %skipping, align 4
  store i32 0, i32* %hs_top, align 4
  store i32 0, i32* %bufftop, align 4
  br label %12

; <label>:12                                      ; preds = %971, %10
  %13 = load i32, i32* %finished, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %972

; <label>:16                                      ; preds = %12
  %17 = load i8*, i8** %p, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %p, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  switch i32 %23, label %963 [
    i32 3, label %24
    i32 4, label %24
    i32 2, label %24
    i32 5, label %109
    i32 7, label %109
    i32 6, label %109
    i32 8, label %173
    i32 9, label %253
    i32 0, label %266
    i32 1, label %549
  ]

; <label>:24                                      ; preds = %16, %16, %16
  store i32 0, i32* %skipping, align 4
  store i32 0, i32* %i, align 4
  br label %25

; <label>:25                                      ; preds = %69, %24
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %hs_top, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %72

; <label>:29                                      ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %60

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %bufftop, align 4
  %34 = icmp slt i32 %33, 512
  br i1 %34, label %35, label %59

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %i, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %35
  %46 = load %union.rec*, %union.rec** %res, align 8
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %48 = call %union.rec* @BuildLines(%union.rec* %46, i8* %47, i32* %bufftop)
  store %union.rec* %48, %union.rec** %res, align 8
  br label %58

; <label>:49                                      ; preds = %35
  %50 = load i32, i32* %i, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i32, i32* %bufftop, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %bufftop, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %56
  store i8 %53, i8* %57, align 1
  br label %58

; <label>:58                                      ; preds = %49, %45
  br label %59

; <label>:59                                      ; preds = %58, %32
  br label %68

; <label>:60                                      ; preds = %29
  %61 = load i32, i32* %i, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %67 = call i32 @_IO_putc(i32 %65, %struct._IO_FILE* %66)
  br label %68

; <label>:68                                      ; preds = %60, %59
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32, i32* %i, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %i, align 4
  br label %25

; <label>:72                                      ; preds = %25
  store i32 0, i32* %hs_top, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %74 = icmp eq %struct._IO_FILE* %73, null
  br i1 %74, label %75, label %101

; <label>:75                                      ; preds = %72
  %76 = load i32, i32* %bufftop, align 4
  %77 = icmp slt i32 %76, 512
  br i1 %77, label %78, label %100

; <label>:78                                      ; preds = %75
  %79 = load i8*, i8** %p, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %91

; <label>:87                                      ; preds = %78
  %88 = load %union.rec*, %union.rec** %res, align 8
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %90 = call %union.rec* @BuildLines(%union.rec* %88, i8* %89, i32* %bufftop)
  store %union.rec* %90, %union.rec** %res, align 8
  br label %99

; <label>:91                                      ; preds = %78
  %92 = load i8*, i8** %p, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  %94 = load i8, i8* %93, align 1
  %95 = load i32, i32* %bufftop, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %bufftop, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %97
  store i8 %94, i8* %98, align 1
  br label %99

; <label>:99                                      ; preds = %91, %87
  br label %100

; <label>:100                                     ; preds = %99, %75
  br label %108

; <label>:101                                     ; preds = %72
  %102 = load i8*, i8** %p, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 -1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %107 = call i32 @_IO_putc(i32 %105, %struct._IO_FILE* %106)
  br label %108

; <label>:108                                     ; preds = %101, %100
  br label %971

; <label>:109                                     ; preds = %16, %16, %16
  %110 = load i32, i32* %skipping, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %172, label %112

; <label>:112                                     ; preds = %109
  %113 = load i32, i32* %hs_top, align 4
  %114 = icmp eq i32 %113, 512
  br i1 %114, label %115, label %164

; <label>:115                                     ; preds = %112
  store i32 0, i32* %i1, align 4
  br label %116

; <label>:116                                     ; preds = %160, %115
  %117 = load i32, i32* %i1, align 4
  %118 = load i32, i32* %hs_top, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %163

; <label>:120                                     ; preds = %116
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %122 = icmp eq %struct._IO_FILE* %121, null
  br i1 %122, label %123, label %151

; <label>:123                                     ; preds = %120
  %124 = load i32, i32* %bufftop, align 4
  %125 = icmp slt i32 %124, 512
  br i1 %125, label %126, label %150

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 8
  br i1 %135, label %136, label %140

; <label>:136                                     ; preds = %126
  %137 = load %union.rec*, %union.rec** %res, align 8
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %139 = call %union.rec* @BuildLines(%union.rec* %137, i8* %138, i32* %bufftop)
  store %union.rec* %139, %union.rec** %res, align 8
  br label %149

; <label>:140                                     ; preds = %126
  %141 = load i32, i32* %i1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = load i32, i32* %bufftop, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %bufftop, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %147
  store i8 %144, i8* %148, align 1
  br label %149

; <label>:149                                     ; preds = %140, %136
  br label %150

; <label>:150                                     ; preds = %149, %123
  br label %159

; <label>:151                                     ; preds = %120
  %152 = load i32, i32* %i1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %158 = call i32 @_IO_putc(i32 %156, %struct._IO_FILE* %157)
  br label %159

; <label>:159                                     ; preds = %151, %150
  br label %160

; <label>:160                                     ; preds = %159
  %161 = load i32, i32* %i1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %i1, align 4
  br label %116

; <label>:163                                     ; preds = %116
  store i32 0, i32* %hs_top, align 4
  br label %164

; <label>:164                                     ; preds = %163, %112
  %165 = load i8*, i8** %p, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 -1
  %167 = load i8, i8* %166, align 1
  %168 = load i32, i32* %hs_top, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %hs_top, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %170
  store i8 %167, i8* %171, align 1
  br label %172

; <label>:172                                     ; preds = %164, %109
  br label %971

; <label>:173                                     ; preds = %16
  %174 = load i32, i32* %skipping, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %236, label %176

; <label>:176                                     ; preds = %173
  %177 = load i32, i32* %hs_top, align 4
  %178 = icmp eq i32 %177, 512
  br i1 %178, label %179, label %228

; <label>:179                                     ; preds = %176
  store i32 0, i32* %i2, align 4
  br label %180

; <label>:180                                     ; preds = %224, %179
  %181 = load i32, i32* %i2, align 4
  %182 = load i32, i32* %hs_top, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %227

; <label>:184                                     ; preds = %180
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %186 = icmp eq %struct._IO_FILE* %185, null
  br i1 %186, label %187, label %215

; <label>:187                                     ; preds = %184
  %188 = load i32, i32* %bufftop, align 4
  %189 = icmp slt i32 %188, 512
  br i1 %189, label %190, label %214

; <label>:190                                     ; preds = %187
  %191 = load i32, i32* %i2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 8
  br i1 %199, label %200, label %204

; <label>:200                                     ; preds = %190
  %201 = load %union.rec*, %union.rec** %res, align 8
  %202 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %203 = call %union.rec* @BuildLines(%union.rec* %201, i8* %202, i32* %bufftop)
  store %union.rec* %203, %union.rec** %res, align 8
  br label %213

; <label>:204                                     ; preds = %190
  %205 = load i32, i32* %i2, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = load i32, i32* %bufftop, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %bufftop, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %211
  store i8 %208, i8* %212, align 1
  br label %213

; <label>:213                                     ; preds = %204, %200
  br label %214

; <label>:214                                     ; preds = %213, %187
  br label %223

; <label>:215                                     ; preds = %184
  %216 = load i32, i32* %i2, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %222 = call i32 @_IO_putc(i32 %220, %struct._IO_FILE* %221)
  br label %223

; <label>:223                                     ; preds = %215, %214
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i32, i32* %i2, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %i2, align 4
  br label %180

; <label>:227                                     ; preds = %180
  store i32 0, i32* %hs_top, align 4
  br label %228

; <label>:228                                     ; preds = %227, %176
  %229 = load i8*, i8** %p, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 -1
  %231 = load i8, i8* %230, align 1
  %232 = load i32, i32* %hs_top, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %hs_top, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %234
  store i8 %231, i8* %235, align 1
  br label %236

; <label>:236                                     ; preds = %228, %173
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

; <label>:239                                     ; preds = %236
  store i32 0, i32* %skipping, align 4
  br label %240

; <label>:240                                     ; preds = %239, %236
  %241 = load i8*, i8** %p, align 8
  store i8* %241, i8** @chpt, align 8
  call void @srcnext()
  %242 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %243 = and i32 %242, 1048575
  %244 = add i32 %243, 1
  %245 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %246 = and i32 %244, 1048575
  %247 = and i32 %245, -1048576
  %248 = or i32 %247, %246
  store i32 %248, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %249 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %250 = and i32 %249, 1048575
  store i32 %250, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %251 = load i8*, i8** @chpt, align 8
  store i8* %251, i8** %p, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 -1
  store i8* %252, i8** @startline, align 8
  br label %971

; <label>:253                                     ; preds = %16
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %255 = icmp eq %struct._IO_FILE* %254, null
  br i1 %255, label %256, label %262

; <label>:256                                     ; preds = %253
  %257 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %258 = load i32, i32* %4, align 4
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %259, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0)
  %261 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i32 1, %struct.FILE_POS* %257, i8* %260)
  br label %265

; <label>:262                                     ; preds = %253
  %263 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %264 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i32 0, i32 0), i32 1, %struct.FILE_POS* %263)
  br label %265

; <label>:265                                     ; preds = %262, %256
  br label %971

; <label>:266                                     ; preds = %16
  store i32 0, i32* %skipping, align 4
  %267 = load i8*, i8** %p, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 -1
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = icmp eq i32 %270, 123
  br i1 %271, label %272, label %359

; <label>:272                                     ; preds = %266
  store i32 0, i32* %i3, align 4
  br label %273

; <label>:273                                     ; preds = %317, %272
  %274 = load i32, i32* %i3, align 4
  %275 = load i32, i32* %hs_top, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %320

; <label>:277                                     ; preds = %273
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %279 = icmp eq %struct._IO_FILE* %278, null
  br i1 %279, label %280, label %308

; <label>:280                                     ; preds = %277
  %281 = load i32, i32* %bufftop, align 4
  %282 = icmp slt i32 %281, 512
  br i1 %282, label %283, label %307

; <label>:283                                     ; preds = %280
  %284 = load i32, i32* %i3, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = icmp eq i32 %291, 8
  br i1 %292, label %293, label %297

; <label>:293                                     ; preds = %283
  %294 = load %union.rec*, %union.rec** %res, align 8
  %295 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %296 = call %union.rec* @BuildLines(%union.rec* %294, i8* %295, i32* %bufftop)
  store %union.rec* %296, %union.rec** %res, align 8
  br label %306

; <label>:297                                     ; preds = %283
  %298 = load i32, i32* %i3, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = load i32, i32* %bufftop, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %bufftop, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %304
  store i8 %301, i8* %305, align 1
  br label %306

; <label>:306                                     ; preds = %297, %293
  br label %307

; <label>:307                                     ; preds = %306, %280
  br label %316

; <label>:308                                     ; preds = %277
  %309 = load i32, i32* %i3, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %315 = call i32 @_IO_putc(i32 %313, %struct._IO_FILE* %314)
  br label %316

; <label>:316                                     ; preds = %308, %307
  br label %317

; <label>:317                                     ; preds = %316
  %318 = load i32, i32* %i3, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %i3, align 4
  br label %273

; <label>:320                                     ; preds = %273
  store i32 0, i32* %hs_top, align 4
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %322 = icmp eq %struct._IO_FILE* %321, null
  br i1 %322, label %323, label %349

; <label>:323                                     ; preds = %320
  %324 = load i32, i32* %bufftop, align 4
  %325 = icmp slt i32 %324, 512
  br i1 %325, label %326, label %348

; <label>:326                                     ; preds = %323
  %327 = load i8*, i8** %p, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 -1
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp eq i32 %333, 8
  br i1 %334, label %335, label %339

; <label>:335                                     ; preds = %326
  %336 = load %union.rec*, %union.rec** %res, align 8
  %337 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %338 = call %union.rec* @BuildLines(%union.rec* %336, i8* %337, i32* %bufftop)
  store %union.rec* %338, %union.rec** %res, align 8
  br label %347

; <label>:339                                     ; preds = %326
  %340 = load i8*, i8** %p, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 -1
  %342 = load i8, i8* %341, align 1
  %343 = load i32, i32* %bufftop, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %bufftop, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %345
  store i8 %342, i8* %346, align 1
  br label %347

; <label>:347                                     ; preds = %339, %335
  br label %348

; <label>:348                                     ; preds = %347, %323
  br label %356

; <label>:349                                     ; preds = %320
  %350 = load i8*, i8** %p, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 -1
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %355 = call i32 @_IO_putc(i32 %353, %struct._IO_FILE* %354)
  br label %356

; <label>:356                                     ; preds = %349, %348
  %357 = load i32, i32* %depth, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %depth, align 4
  br label %548

; <label>:359                                     ; preds = %266
  %360 = load i8*, i8** %p, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 -1
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = icmp eq i32 %363, 125
  br i1 %364, label %365, label %462

; <label>:365                                     ; preds = %359
  %366 = load i32, i32* %2, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %374, label %368

; <label>:368                                     ; preds = %365
  %369 = load i32, i32* %depth, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %374

; <label>:371                                     ; preds = %368
  %372 = load i8*, i8** %p, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 -1
  store i8* %373, i8** %p, align 8
  store i32 1, i32* %finished, align 4
  br label %461

; <label>:374                                     ; preds = %368, %365
  store i32 0, i32* %i4, align 4
  br label %375

; <label>:375                                     ; preds = %419, %374
  %376 = load i32, i32* %i4, align 4
  %377 = load i32, i32* %hs_top, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %422

; <label>:379                                     ; preds = %375
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %381 = icmp eq %struct._IO_FILE* %380, null
  br i1 %381, label %382, label %410

; <label>:382                                     ; preds = %379
  %383 = load i32, i32* %bufftop, align 4
  %384 = icmp slt i32 %383, 512
  br i1 %384, label %385, label %409

; <label>:385                                     ; preds = %382
  %386 = load i32, i32* %i4, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 8
  br i1 %394, label %395, label %399

; <label>:395                                     ; preds = %385
  %396 = load %union.rec*, %union.rec** %res, align 8
  %397 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %398 = call %union.rec* @BuildLines(%union.rec* %396, i8* %397, i32* %bufftop)
  store %union.rec* %398, %union.rec** %res, align 8
  br label %408

; <label>:399                                     ; preds = %385
  %400 = load i32, i32* %i4, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = load i32, i32* %bufftop, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %bufftop, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %406
  store i8 %403, i8* %407, align 1
  br label %408

; <label>:408                                     ; preds = %399, %395
  br label %409

; <label>:409                                     ; preds = %408, %382
  br label %418

; <label>:410                                     ; preds = %379
  %411 = load i32, i32* %i4, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %417 = call i32 @_IO_putc(i32 %415, %struct._IO_FILE* %416)
  br label %418

; <label>:418                                     ; preds = %410, %409
  br label %419

; <label>:419                                     ; preds = %418
  %420 = load i32, i32* %i4, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %i4, align 4
  br label %375

; <label>:422                                     ; preds = %375
  store i32 0, i32* %hs_top, align 4
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %424 = icmp eq %struct._IO_FILE* %423, null
  br i1 %424, label %425, label %451

; <label>:425                                     ; preds = %422
  %426 = load i32, i32* %bufftop, align 4
  %427 = icmp slt i32 %426, 512
  br i1 %427, label %428, label %450

; <label>:428                                     ; preds = %425
  %429 = load i8*, i8** %p, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 -1
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i64
  %433 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp eq i32 %435, 8
  br i1 %436, label %437, label %441

; <label>:437                                     ; preds = %428
  %438 = load %union.rec*, %union.rec** %res, align 8
  %439 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %440 = call %union.rec* @BuildLines(%union.rec* %438, i8* %439, i32* %bufftop)
  store %union.rec* %440, %union.rec** %res, align 8
  br label %449

; <label>:441                                     ; preds = %428
  %442 = load i8*, i8** %p, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 -1
  %444 = load i8, i8* %443, align 1
  %445 = load i32, i32* %bufftop, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %bufftop, align 4
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %447
  store i8 %444, i8* %448, align 1
  br label %449

; <label>:449                                     ; preds = %441, %437
  br label %450

; <label>:450                                     ; preds = %449, %425
  br label %458

; <label>:451                                     ; preds = %422
  %452 = load i8*, i8** %p, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 -1
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i32
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %457 = call i32 @_IO_putc(i32 %455, %struct._IO_FILE* %456)
  br label %458

; <label>:458                                     ; preds = %451, %450
  %459 = load i32, i32* %depth, align 4
  %460 = add nsw i32 %459, -1
  store i32 %460, i32* %depth, align 4
  br label %461

; <label>:461                                     ; preds = %458, %371
  br label %547

; <label>:462                                     ; preds = %359
  store i32 0, i32* %i5, align 4
  br label %463

; <label>:463                                     ; preds = %507, %462
  %464 = load i32, i32* %i5, align 4
  %465 = load i32, i32* %hs_top, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %510

; <label>:467                                     ; preds = %463
  %468 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %469 = icmp eq %struct._IO_FILE* %468, null
  br i1 %469, label %470, label %498

; <label>:470                                     ; preds = %467
  %471 = load i32, i32* %bufftop, align 4
  %472 = icmp slt i32 %471, 512
  br i1 %472, label %473, label %497

; <label>:473                                     ; preds = %470
  %474 = load i32, i32* %i5, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  %482 = icmp eq i32 %481, 8
  br i1 %482, label %483, label %487

; <label>:483                                     ; preds = %473
  %484 = load %union.rec*, %union.rec** %res, align 8
  %485 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %486 = call %union.rec* @BuildLines(%union.rec* %484, i8* %485, i32* %bufftop)
  store %union.rec* %486, %union.rec** %res, align 8
  br label %496

; <label>:487                                     ; preds = %473
  %488 = load i32, i32* %i5, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %489
  %491 = load i8, i8* %490, align 1
  %492 = load i32, i32* %bufftop, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %bufftop, align 4
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %494
  store i8 %491, i8* %495, align 1
  br label %496

; <label>:496                                     ; preds = %487, %483
  br label %497

; <label>:497                                     ; preds = %496, %470
  br label %506

; <label>:498                                     ; preds = %467
  %499 = load i32, i32* %i5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %500
  %502 = load i8, i8* %501, align 1
  %503 = zext i8 %502 to i32
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %505 = call i32 @_IO_putc(i32 %503, %struct._IO_FILE* %504)
  br label %506

; <label>:506                                     ; preds = %498, %497
  br label %507

; <label>:507                                     ; preds = %506
  %508 = load i32, i32* %i5, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %i5, align 4
  br label %463

; <label>:510                                     ; preds = %463
  store i32 0, i32* %hs_top, align 4
  %511 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %512 = icmp eq %struct._IO_FILE* %511, null
  br i1 %512, label %513, label %539

; <label>:513                                     ; preds = %510
  %514 = load i32, i32* %bufftop, align 4
  %515 = icmp slt i32 %514, 512
  br i1 %515, label %516, label %538

; <label>:516                                     ; preds = %513
  %517 = load i8*, i8** %p, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 -1
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i64
  %521 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %520
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i32
  %524 = icmp eq i32 %523, 8
  br i1 %524, label %525, label %529

; <label>:525                                     ; preds = %516
  %526 = load %union.rec*, %union.rec** %res, align 8
  %527 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %528 = call %union.rec* @BuildLines(%union.rec* %526, i8* %527, i32* %bufftop)
  store %union.rec* %528, %union.rec** %res, align 8
  br label %537

; <label>:529                                     ; preds = %516
  %530 = load i8*, i8** %p, align 8
  %531 = getelementptr inbounds i8, i8* %530, i64 -1
  %532 = load i8, i8* %531, align 1
  %533 = load i32, i32* %bufftop, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %bufftop, align 4
  %535 = sext i32 %533 to i64
  %536 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %535
  store i8 %532, i8* %536, align 1
  br label %537

; <label>:537                                     ; preds = %529, %525
  br label %538

; <label>:538                                     ; preds = %537, %513
  br label %546

; <label>:539                                     ; preds = %510
  %540 = load i8*, i8** %p, align 8
  %541 = getelementptr inbounds i8, i8* %540, i64 -1
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %545 = call i32 @_IO_putc(i32 %543, %struct._IO_FILE* %544)
  br label %546

; <label>:546                                     ; preds = %539, %538
  br label %547

; <label>:547                                     ; preds = %546, %461
  br label %548

; <label>:548                                     ; preds = %547, %356
  br label %971

; <label>:549                                     ; preds = %16
  store i32 0, i32* %skipping, align 4
  %550 = load i8*, i8** %p, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 -1
  %552 = load i8, i8* %551, align 1
  %553 = zext i8 %552 to i32
  %554 = icmp eq i32 %553, 64
  br i1 %554, label %555, label %877

; <label>:555                                     ; preds = %549
  %556 = load i8*, i8** %p, align 8
  %557 = getelementptr inbounds i8, i8* %556, i32 -1
  store i8* %557, i8** %p, align 8
  %558 = load i32, i32* %2, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %565

; <label>:560                                     ; preds = %555
  %561 = load i8*, i8** %p, align 8
  %562 = call i32 @StringBeginsWith(i8* %561, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %565

; <label>:564                                     ; preds = %560
  store i32 1, i32* %finished, align 4
  br label %876

; <label>:565                                     ; preds = %560, %555
  %566 = load i8*, i8** %p, align 8
  %567 = call i32 @StringBeginsWith(i8* %566, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0))
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %573, label %569

; <label>:569                                     ; preds = %565
  %570 = load i8*, i8** %p, align 8
  %571 = call i32 @StringBeginsWith(i8* %570, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %791

; <label>:573                                     ; preds = %569, %565
  %574 = load i8*, i8** %p, align 8
  %575 = call i32 @StringBeginsWith(i8* %574, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  store i32 %575, i32* %sysinc, align 4
  store i32 0, i32* %i6, align 4
  br label %576

; <label>:576                                     ; preds = %620, %573
  %577 = load i32, i32* %i6, align 4
  %578 = load i32, i32* %hs_top, align 4
  %579 = icmp slt i32 %577, %578
  br i1 %579, label %580, label %623

; <label>:580                                     ; preds = %576
  %581 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %582 = icmp eq %struct._IO_FILE* %581, null
  br i1 %582, label %583, label %611

; <label>:583                                     ; preds = %580
  %584 = load i32, i32* %bufftop, align 4
  %585 = icmp slt i32 %584, 512
  br i1 %585, label %586, label %610

; <label>:586                                     ; preds = %583
  %587 = load i32, i32* %i6, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %588
  %590 = load i8, i8* %589, align 1
  %591 = zext i8 %590 to i64
  %592 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %591
  %593 = load i8, i8* %592, align 1
  %594 = zext i8 %593 to i32
  %595 = icmp eq i32 %594, 8
  br i1 %595, label %596, label %600

; <label>:596                                     ; preds = %586
  %597 = load %union.rec*, %union.rec** %res, align 8
  %598 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %599 = call %union.rec* @BuildLines(%union.rec* %597, i8* %598, i32* %bufftop)
  store %union.rec* %599, %union.rec** %res, align 8
  br label %609

; <label>:600                                     ; preds = %586
  %601 = load i32, i32* %i6, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %602
  %604 = load i8, i8* %603, align 1
  %605 = load i32, i32* %bufftop, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %bufftop, align 4
  %607 = sext i32 %605 to i64
  %608 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %607
  store i8 %604, i8* %608, align 1
  br label %609

; <label>:609                                     ; preds = %600, %596
  br label %610

; <label>:610                                     ; preds = %609, %583
  br label %619

; <label>:611                                     ; preds = %580
  %612 = load i32, i32* %i6, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %613
  %615 = load i8, i8* %614, align 1
  %616 = zext i8 %615 to i32
  %617 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %618 = call i32 @_IO_putc(i32 %616, %struct._IO_FILE* %617)
  br label %619

; <label>:619                                     ; preds = %611, %610
  br label %620

; <label>:620                                     ; preds = %619
  %621 = load i32, i32* %i6, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %i6, align 4
  br label %576

; <label>:623                                     ; preds = %576
  store i32 0, i32* %hs_top, align 4
  %624 = load i32, i32* %sysinc, align 4
  %625 = icmp ne i32 %624, 0
  %626 = select i1 %625, i64 11, i64 8
  %627 = load i8*, i8** %p, align 8
  %628 = getelementptr inbounds i8, i8* %627, i64 %626
  store i8* %628, i8** %p, align 8
  %629 = load i8*, i8** %p, align 8
  store i8* %629, i8** @chpt, align 8
  %630 = call %union.rec* @LexGetToken()
  store %union.rec* %630, %union.rec** %t, align 8
  %631 = load %union.rec*, %union.rec** %t, align 8
  %632 = bitcast %union.rec* %631 to %struct.word_type*
  %633 = getelementptr inbounds %struct.word_type, %struct.word_type* %632, i32 0, i32 1
  %634 = bitcast %union.FIRST_UNION* %633 to %struct.anon.0*
  %635 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %634, i32 0, i32 0
  %636 = load i8, i8* %635, align 1
  %637 = zext i8 %636 to i32
  %638 = icmp ne i32 %637, 102
  br i1 %638, label %639, label %648

; <label>:639                                     ; preds = %623
  %640 = load %union.rec*, %union.rec** %t, align 8
  %641 = bitcast %union.rec* %640 to %struct.word_type*
  %642 = getelementptr inbounds %struct.word_type, %struct.word_type* %641, i32 0, i32 1
  %643 = bitcast %union.FIRST_UNION* %642 to %struct.FILE_POS*
  %644 = load i32, i32* %sysinc, align 4
  %645 = icmp ne i32 %644, 0
  %646 = select i1 %645, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)
  %647 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i32 1, %struct.FILE_POS* %643, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* %646)
  br label %648

; <label>:648                                     ; preds = %639, %623
  %649 = call %union.rec* @Parse(%union.rec** %t, %union.rec* null, i32 0, i32 0)
  store %union.rec* %649, %union.rec** %incl_fname, align 8
  %650 = load i8*, i8** @chpt, align 8
  store i8* %650, i8** %p, align 8
  %651 = load %union.rec*, %union.rec** %incl_fname, align 8
  %652 = call %union.rec* @ReplaceWithTidy(%union.rec* %651, i32 0)
  store %union.rec* %652, %union.rec** %incl_fname, align 8
  %653 = load %union.rec*, %union.rec** %incl_fname, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 1
  %656 = bitcast %union.FIRST_UNION* %655 to %struct.anon.0*
  %657 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %656, i32 0, i32 0
  %658 = load i8, i8* %657, align 1
  %659 = zext i8 %658 to i32
  %660 = icmp eq i32 %659, 11
  br i1 %660, label %676, label %661

; <label>:661                                     ; preds = %648
  %662 = load %union.rec*, %union.rec** %incl_fname, align 8
  %663 = bitcast %union.rec* %662 to %struct.word_type*
  %664 = getelementptr inbounds %struct.word_type, %struct.word_type* %663, i32 0, i32 1
  %665 = bitcast %union.FIRST_UNION* %664 to %struct.anon.0*
  %666 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %665, i32 0, i32 0
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i32
  %669 = icmp eq i32 %668, 12
  br i1 %669, label %676, label %670

; <label>:670                                     ; preds = %661
  %671 = load %union.rec*, %union.rec** %incl_fname, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 1
  %674 = bitcast %union.FIRST_UNION* %673 to %struct.FILE_POS*
  %675 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i32 1, %struct.FILE_POS* %674)
  br label %676

; <label>:676                                     ; preds = %670, %661, %648
  %677 = load %union.rec*, %union.rec** %incl_fname, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 4
  %680 = getelementptr inbounds [4 x i8], [4 x i8]* %679, i32 0, i32 0
  %681 = load %union.rec*, %union.rec** %incl_fname, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 1
  %684 = bitcast %union.FIRST_UNION* %683 to %struct.FILE_POS*
  %685 = load i32, i32* %sysinc, align 4
  %686 = icmp ne i32 %685, 0
  %687 = select i1 %686, i32 2, i32 1
  %688 = call zeroext i16 @DefineFile(i8* %680, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %684, i32 1, i32 %687)
  store i16 %688, i16* %fnum, align 2
  %689 = load %union.rec*, %union.rec** %incl_fname, align 8
  store %union.rec* %689, %union.rec** @zz_hold, align 8
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %690, %union.rec** @zz_hold, align 8
  %691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %692 = bitcast %union.rec* %691 to %struct.word_type*
  %693 = getelementptr inbounds %struct.word_type, %struct.word_type* %692, i32 0, i32 1
  %694 = bitcast %union.FIRST_UNION* %693 to %struct.anon.0*
  %695 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %694, i32 0, i32 0
  %696 = load i8, i8* %695, align 1
  %697 = zext i8 %696 to i32
  %698 = icmp eq i32 %697, 11
  br i1 %698, label %708, label %699

; <label>:699                                     ; preds = %676
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 1
  %703 = bitcast %union.FIRST_UNION* %702 to %struct.anon.0*
  %704 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %703, i32 0, i32 0
  %705 = load i8, i8* %704, align 1
  %706 = zext i8 %705 to i32
  %707 = icmp eq i32 %706, 12
  br i1 %707, label %708, label %716

; <label>:708                                     ; preds = %699, %676
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %710 = bitcast %union.rec* %709 to %struct.word_type*
  %711 = getelementptr inbounds %struct.word_type, %struct.word_type* %710, i32 0, i32 1
  %712 = bitcast %union.FIRST_UNION* %711 to %struct.anon.0*
  %713 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %712, i32 0, i32 1
  %714 = load i8, i8* %713, align 1
  %715 = zext i8 %714 to i32
  br label %727

; <label>:716                                     ; preds = %699
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %718 = bitcast %union.rec* %717 to %struct.word_type*
  %719 = getelementptr inbounds %struct.word_type, %struct.word_type* %718, i32 0, i32 1
  %720 = bitcast %union.FIRST_UNION* %719 to %struct.anon.0*
  %721 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %720, i32 0, i32 0
  %722 = load i8, i8* %721, align 1
  %723 = zext i8 %722 to i64
  %724 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %723
  %725 = load i8, i8* %724, align 1
  %726 = zext i8 %725 to i32
  br label %727

; <label>:727                                     ; preds = %716, %708
  %728 = phi i32 [ %715, %708 ], [ %726, %716 ]
  store i32 %728, i32* @zz_size, align 4
  %729 = load i32, i32* @zz_size, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %730
  %732 = load %union.rec*, %union.rec** %731, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %734 = bitcast %union.rec* %733 to %struct.word_type*
  %735 = getelementptr inbounds %struct.word_type, %struct.word_type* %734, i32 0, i32 0
  %736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %735, i32 0, i64 0
  %737 = getelementptr inbounds %struct.LIST, %struct.LIST* %736, i32 0, i32 0
  store %union.rec* %732, %union.rec** %737, align 8
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %739 = load i32, i32* @zz_size, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %740
  store %union.rec* %738, %union.rec** %741, align 8
  %742 = load i16, i16* %fnum, align 2
  %743 = call %struct._IO_FILE* @OpenFile(i16 zeroext %742, i32 0, i32 1)
  store %struct._IO_FILE* %743, %struct._IO_FILE** %incl_fp, align 8
  %744 = load %struct._IO_FILE*, %struct._IO_FILE** %incl_fp, align 8
  %745 = icmp eq %struct._IO_FILE* %744, null
  br i1 %745, label %746, label %752

; <label>:746                                     ; preds = %727
  %747 = load i16, i16* %fnum, align 2
  %748 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %747)
  %749 = load i16, i16* %fnum, align 2
  %750 = call i8* @FullFileName(i16 zeroext %749)
  %751 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i32 0, i32 0), i32 1, %struct.FILE_POS* %748, i8* %750)
  br label %752

; <label>:752                                     ; preds = %746, %727
  br label %753

; <label>:753                                     ; preds = %787, %752
  %754 = load %struct._IO_FILE*, %struct._IO_FILE** %incl_fp, align 8
  %755 = call i32 @_IO_getc(%struct._IO_FILE* %754)
  store i32 %755, i32* %ch, align 4
  %756 = icmp ne i32 %755, -1
  br i1 %756, label %757, label %788

; <label>:757                                     ; preds = %753
  %758 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %759 = icmp eq %struct._IO_FILE* %758, null
  br i1 %759, label %760, label %783

; <label>:760                                     ; preds = %757
  %761 = load i32, i32* %bufftop, align 4
  %762 = icmp slt i32 %761, 512
  br i1 %762, label %763, label %782

; <label>:763                                     ; preds = %760
  %764 = load i32, i32* %ch, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %765
  %767 = load i8, i8* %766, align 1
  %768 = zext i8 %767 to i32
  %769 = icmp eq i32 %768, 8
  br i1 %769, label %770, label %774

; <label>:770                                     ; preds = %763
  %771 = load %union.rec*, %union.rec** %res, align 8
  %772 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %773 = call %union.rec* @BuildLines(%union.rec* %771, i8* %772, i32* %bufftop)
  store %union.rec* %773, %union.rec** %res, align 8
  br label %781

; <label>:774                                     ; preds = %763
  %775 = load i32, i32* %ch, align 4
  %776 = trunc i32 %775 to i8
  %777 = load i32, i32* %bufftop, align 4
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %bufftop, align 4
  %779 = sext i32 %777 to i64
  %780 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %779
  store i8 %776, i8* %780, align 1
  br label %781

; <label>:781                                     ; preds = %774, %770
  br label %782

; <label>:782                                     ; preds = %781, %760
  br label %787

; <label>:783                                     ; preds = %757
  %784 = load i32, i32* %ch, align 4
  %785 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %786 = call i32 @_IO_putc(i32 %784, %struct._IO_FILE* %785)
  br label %787

; <label>:787                                     ; preds = %783, %782
  br label %753

; <label>:788                                     ; preds = %753
  %789 = load %struct._IO_FILE*, %struct._IO_FILE** %incl_fp, align 8
  %790 = call i32 @fclose(%struct._IO_FILE* %789)
  br label %875

; <label>:791                                     ; preds = %569
  store i32 0, i32* %i7, align 4
  br label %792

; <label>:792                                     ; preds = %836, %791
  %793 = load i32, i32* %i7, align 4
  %794 = load i32, i32* %hs_top, align 4
  %795 = icmp slt i32 %793, %794
  br i1 %795, label %796, label %839

; <label>:796                                     ; preds = %792
  %797 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %798 = icmp eq %struct._IO_FILE* %797, null
  br i1 %798, label %799, label %827

; <label>:799                                     ; preds = %796
  %800 = load i32, i32* %bufftop, align 4
  %801 = icmp slt i32 %800, 512
  br i1 %801, label %802, label %826

; <label>:802                                     ; preds = %799
  %803 = load i32, i32* %i7, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %804
  %806 = load i8, i8* %805, align 1
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %807
  %809 = load i8, i8* %808, align 1
  %810 = zext i8 %809 to i32
  %811 = icmp eq i32 %810, 8
  br i1 %811, label %812, label %816

; <label>:812                                     ; preds = %802
  %813 = load %union.rec*, %union.rec** %res, align 8
  %814 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %815 = call %union.rec* @BuildLines(%union.rec* %813, i8* %814, i32* %bufftop)
  store %union.rec* %815, %union.rec** %res, align 8
  br label %825

; <label>:816                                     ; preds = %802
  %817 = load i32, i32* %i7, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %818
  %820 = load i8, i8* %819, align 1
  %821 = load i32, i32* %bufftop, align 4
  %822 = add nsw i32 %821, 1
  store i32 %822, i32* %bufftop, align 4
  %823 = sext i32 %821 to i64
  %824 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %823
  store i8 %820, i8* %824, align 1
  br label %825

; <label>:825                                     ; preds = %816, %812
  br label %826

; <label>:826                                     ; preds = %825, %799
  br label %835

; <label>:827                                     ; preds = %796
  %828 = load i32, i32* %i7, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %829
  %831 = load i8, i8* %830, align 1
  %832 = zext i8 %831 to i32
  %833 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %834 = call i32 @_IO_putc(i32 %832, %struct._IO_FILE* %833)
  br label %835

; <label>:835                                     ; preds = %827, %826
  br label %836

; <label>:836                                     ; preds = %835
  %837 = load i32, i32* %i7, align 4
  %838 = add nsw i32 %837, 1
  store i32 %838, i32* %i7, align 4
  br label %792

; <label>:839                                     ; preds = %792
  store i32 0, i32* %hs_top, align 4
  %840 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %841 = icmp eq %struct._IO_FILE* %840, null
  br i1 %841, label %842, label %866

; <label>:842                                     ; preds = %839
  %843 = load i32, i32* %bufftop, align 4
  %844 = icmp slt i32 %843, 512
  br i1 %844, label %845, label %865

; <label>:845                                     ; preds = %842
  %846 = load i8*, i8** %p, align 8
  %847 = load i8, i8* %846, align 1
  %848 = zext i8 %847 to i64
  %849 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %848
  %850 = load i8, i8* %849, align 1
  %851 = zext i8 %850 to i32
  %852 = icmp eq i32 %851, 8
  br i1 %852, label %853, label %857

; <label>:853                                     ; preds = %845
  %854 = load %union.rec*, %union.rec** %res, align 8
  %855 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %856 = call %union.rec* @BuildLines(%union.rec* %854, i8* %855, i32* %bufftop)
  store %union.rec* %856, %union.rec** %res, align 8
  br label %864

; <label>:857                                     ; preds = %845
  %858 = load i8*, i8** %p, align 8
  %859 = load i8, i8* %858, align 1
  %860 = load i32, i32* %bufftop, align 4
  %861 = add nsw i32 %860, 1
  store i32 %861, i32* %bufftop, align 4
  %862 = sext i32 %860 to i64
  %863 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %862
  store i8 %859, i8* %863, align 1
  br label %864

; <label>:864                                     ; preds = %857, %853
  br label %865

; <label>:865                                     ; preds = %864, %842
  br label %872

; <label>:866                                     ; preds = %839
  %867 = load i8*, i8** %p, align 8
  %868 = load i8, i8* %867, align 1
  %869 = zext i8 %868 to i32
  %870 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %871 = call i32 @_IO_putc(i32 %869, %struct._IO_FILE* %870)
  br label %872

; <label>:872                                     ; preds = %866, %865
  %873 = load i8*, i8** %p, align 8
  %874 = getelementptr inbounds i8, i8* %873, i32 1
  store i8* %874, i8** %p, align 8
  br label %875

; <label>:875                                     ; preds = %872, %788
  br label %876

; <label>:876                                     ; preds = %875, %564
  br label %962

; <label>:877                                     ; preds = %549
  store i32 0, i32* %i8, align 4
  br label %878

; <label>:878                                     ; preds = %922, %877
  %879 = load i32, i32* %i8, align 4
  %880 = load i32, i32* %hs_top, align 4
  %881 = icmp slt i32 %879, %880
  br i1 %881, label %882, label %925

; <label>:882                                     ; preds = %878
  %883 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %884 = icmp eq %struct._IO_FILE* %883, null
  br i1 %884, label %885, label %913

; <label>:885                                     ; preds = %882
  %886 = load i32, i32* %bufftop, align 4
  %887 = icmp slt i32 %886, 512
  br i1 %887, label %888, label %912

; <label>:888                                     ; preds = %885
  %889 = load i32, i32* %i8, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %890
  %892 = load i8, i8* %891, align 1
  %893 = zext i8 %892 to i64
  %894 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %893
  %895 = load i8, i8* %894, align 1
  %896 = zext i8 %895 to i32
  %897 = icmp eq i32 %896, 8
  br i1 %897, label %898, label %902

; <label>:898                                     ; preds = %888
  %899 = load %union.rec*, %union.rec** %res, align 8
  %900 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %901 = call %union.rec* @BuildLines(%union.rec* %899, i8* %900, i32* %bufftop)
  store %union.rec* %901, %union.rec** %res, align 8
  br label %911

; <label>:902                                     ; preds = %888
  %903 = load i32, i32* %i8, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %904
  %906 = load i8, i8* %905, align 1
  %907 = load i32, i32* %bufftop, align 4
  %908 = add nsw i32 %907, 1
  store i32 %908, i32* %bufftop, align 4
  %909 = sext i32 %907 to i64
  %910 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %909
  store i8 %906, i8* %910, align 1
  br label %911

; <label>:911                                     ; preds = %902, %898
  br label %912

; <label>:912                                     ; preds = %911, %885
  br label %921

; <label>:913                                     ; preds = %882
  %914 = load i32, i32* %i8, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %915
  %917 = load i8, i8* %916, align 1
  %918 = zext i8 %917 to i32
  %919 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %920 = call i32 @_IO_putc(i32 %918, %struct._IO_FILE* %919)
  br label %921

; <label>:921                                     ; preds = %913, %912
  br label %922

; <label>:922                                     ; preds = %921
  %923 = load i32, i32* %i8, align 4
  %924 = add nsw i32 %923, 1
  store i32 %924, i32* %i8, align 4
  br label %878

; <label>:925                                     ; preds = %878
  store i32 0, i32* %hs_top, align 4
  %926 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %927 = icmp eq %struct._IO_FILE* %926, null
  br i1 %927, label %928, label %954

; <label>:928                                     ; preds = %925
  %929 = load i32, i32* %bufftop, align 4
  %930 = icmp slt i32 %929, 512
  br i1 %930, label %931, label %953

; <label>:931                                     ; preds = %928
  %932 = load i8*, i8** %p, align 8
  %933 = getelementptr inbounds i8, i8* %932, i64 -1
  %934 = load i8, i8* %933, align 1
  %935 = zext i8 %934 to i64
  %936 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %935
  %937 = load i8, i8* %936, align 1
  %938 = zext i8 %937 to i32
  %939 = icmp eq i32 %938, 8
  br i1 %939, label %940, label %944

; <label>:940                                     ; preds = %931
  %941 = load %union.rec*, %union.rec** %res, align 8
  %942 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %943 = call %union.rec* @BuildLines(%union.rec* %941, i8* %942, i32* %bufftop)
  store %union.rec* %943, %union.rec** %res, align 8
  br label %952

; <label>:944                                     ; preds = %931
  %945 = load i8*, i8** %p, align 8
  %946 = getelementptr inbounds i8, i8* %945, i64 -1
  %947 = load i8, i8* %946, align 1
  %948 = load i32, i32* %bufftop, align 4
  %949 = add nsw i32 %948, 1
  store i32 %949, i32* %bufftop, align 4
  %950 = sext i32 %948 to i64
  %951 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %950
  store i8 %947, i8* %951, align 1
  br label %952

; <label>:952                                     ; preds = %944, %940
  br label %953

; <label>:953                                     ; preds = %952, %928
  br label %961

; <label>:954                                     ; preds = %925
  %955 = load i8*, i8** %p, align 8
  %956 = getelementptr inbounds i8, i8* %955, i64 -1
  %957 = load i8, i8* %956, align 1
  %958 = zext i8 %957 to i32
  %959 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %960 = call i32 @_IO_putc(i32 %958, %struct._IO_FILE* %959)
  br label %961

; <label>:961                                     ; preds = %954, %953
  br label %962

; <label>:962                                     ; preds = %961, %876
  br label %971

; <label>:963                                     ; preds = %16
  %964 = load i8*, i8** %p, align 8
  %965 = getelementptr inbounds i8, i8* %964, i64 -1
  %966 = load i8, i8* %965, align 1
  %967 = zext i8 %966 to i32
  %968 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0), i32 0, %struct.FILE_POS* @file_pos, i32 %967)
  %969 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %970 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %969, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0))
  br label %971

; <label>:971                                     ; preds = %963, %962, %548, %265, %240, %172, %108
  br label %12

; <label>:972                                     ; preds = %12
  %973 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %974 = icmp eq %struct._IO_FILE* %973, null
  br i1 %974, label %975, label %993

; <label>:975                                     ; preds = %972
  %976 = load i32, i32* %bufftop, align 4
  %977 = icmp slt i32 %976, 512
  br i1 %977, label %978, label %992

; <label>:978                                     ; preds = %975
  %979 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @chtbl, i32 0, i64 10), align 1
  %980 = zext i8 %979 to i32
  %981 = icmp eq i32 %980, 8
  br i1 %981, label %982, label %986

; <label>:982                                     ; preds = %978
  %983 = load %union.rec*, %union.rec** %res, align 8
  %984 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %985 = call %union.rec* @BuildLines(%union.rec* %983, i8* %984, i32* %bufftop)
  store %union.rec* %985, %union.rec** %res, align 8
  br label %991

; <label>:986                                     ; preds = %978
  %987 = load i32, i32* %bufftop, align 4
  %988 = add nsw i32 %987, 1
  store i32 %988, i32* %bufftop, align 4
  %989 = sext i32 %987 to i64
  %990 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %989
  store i8 10, i8* %990, align 1
  br label %991

; <label>:991                                     ; preds = %986, %982
  br label %992

; <label>:992                                     ; preds = %991, %975
  br label %996

; <label>:993                                     ; preds = %972
  %994 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %995 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %994)
  br label %996

; <label>:996                                     ; preds = %993, %992
  %997 = load i8*, i8** %p, align 8
  %998 = load i8*, i8** @startline, align 8
  %999 = ptrtoint i8* %997 to i64
  %1000 = ptrtoint i8* %998 to i64
  %1001 = sub i64 %999, %1000
  %1002 = icmp sge i64 %1001, 2048
  br i1 %1002, label %1003, label %1008

; <label>:1003                                    ; preds = %996
  %1004 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1005 = and i32 %1004, 1048575
  %1006 = or i32 %1005, 1048576
  store i32 %1006, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %1007 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %1008

; <label>:1008                                    ; preds = %1003, %996
  %1009 = load i8*, i8** %p, align 8
  store i8* %1009, i8** @chpt, align 8
  %1010 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %1011 = icmp eq %struct._IO_FILE* %1010, null
  br i1 %1011, label %1012, label %1017

; <label>:1012                                    ; preds = %1008
  %1013 = load %union.rec*, %union.rec** %res, align 8
  %1014 = icmp eq %union.rec* %1013, null
  br i1 %1014, label %1015, label %1017

; <label>:1015                                    ; preds = %1012
  %1016 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* @file_pos)
  store %union.rec* %1016, %union.rec** %res, align 8
  br label %1017

; <label>:1017                                    ; preds = %1015, %1012, %1008
  %1018 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1018
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @BuildLines(%union.rec* %current, i8* %buff, i32* %bufftop) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %wd = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %gp = alloca %union.rec*, align 8
  %gpword = alloca %union.rec*, align 8
  %c = alloca i32, align 4
  store %union.rec* %current, %union.rec** %1, align 8
  store i8* %buff, i8** %2, align 8
  store i32* %bufftop, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 1
  %9 = add i64 68, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @zz_size, align 4
  %11 = load i32, i32* @zz_size, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 8
  %15 = add i64 %14, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @zz_size, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 265
  br i1 %18, label %19, label %21

; <label>:19                                      ; preds = %0
  %20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %45

; <label>:21                                      ; preds = %0
  %22 = load i32, i32* @zz_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %23
  %25 = load %union.rec*, %union.rec** %24, align 8
  %26 = icmp eq %union.rec* %25, null
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %21
  %28 = load i32, i32* @zz_size, align 4
  %29 = call %union.rec* @GetMemory(i32 %28, %struct.FILE_POS* @file_pos)
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  br label %44

; <label>:30                                      ; preds = %21
  %31 = load i32, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %32
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %39, align 8
  %41 = load i32, i32* @zz_size, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %42
  store %union.rec* %40, %union.rec** %43, align 8
  br label %44

; <label>:44                                      ; preds = %30, %27
  br label %45

; <label>:45                                      ; preds = %44, %19
  %46 = load i32, i32* @zz_size, align 4
  %47 = trunc i32 %46 to i8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 1
  %51 = bitcast %union.FIRST_UNION* %50 to %struct.anon.0*
  %52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %51, i32 0, i32 1
  store i8 %47, i8* %52, align 1
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 1
  %56 = bitcast %union.FIRST_UNION* %55 to %struct.anon.0*
  %57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %56, i32 0, i32 0
  store i8 11, i8* %57, align 1
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 1
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 1
  store %union.rec* %58, %union.rec** %63, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 0
  store %union.rec* %58, %union.rec** %68, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 0
  %72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %71, i32 0, i64 0
  %73 = getelementptr inbounds %struct.LIST, %struct.LIST* %72, i32 0, i32 1
  store %union.rec* %58, %union.rec** %73, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 0
  %77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %76, i32 0, i64 0
  %78 = getelementptr inbounds %struct.LIST, %struct.LIST* %77, i32 0, i32 0
  store %union.rec* %58, %union.rec** %78, align 8
  store %union.rec* %58, %union.rec** %wd, align 8
  %79 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %80 = load %union.rec*, %union.rec** %wd, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 1
  %83 = bitcast %union.FIRST_UNION* %82 to %struct.FILE_POS*
  %84 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %83, i32 0, i32 2
  store i16 %79, i16* %84, align 2
  %85 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %86 = and i32 %85, 1048575
  %87 = load %union.rec*, %union.rec** %wd, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 1
  %90 = bitcast %union.FIRST_UNION* %89 to %struct.FILE_POS*
  %91 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %86, 1048575
  %94 = and i32 %92, -1048576
  %95 = or i32 %94, %93
  store i32 %95, i32* %91, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %97 = lshr i32 %96, 20
  %98 = load %union.rec*, %union.rec** %wd, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 1
  %101 = bitcast %union.FIRST_UNION* %100 to %struct.FILE_POS*
  %102 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %97, 4095
  %105 = shl i32 %104, 20
  %106 = and i32 %103, 1048575
  %107 = or i32 %106, %105
  store i32 %107, i32* %102, align 4
  store i32 0, i32* %c, align 4
  br label %108

; <label>:108                                     ; preds = %125, %45
  %109 = load i32, i32* %c, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %128

; <label>:113                                     ; preds = %108
  %114 = load i32, i32* %c, align 4
  %115 = sext i32 %114 to i64
  %116 = load i8*, i8** %2, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  %118 = load i8, i8* %117, align 1
  %119 = load i32, i32* %c, align 4
  %120 = sext i32 %119 to i64
  %121 = load %union.rec*, %union.rec** %wd, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 4
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i32 0, i64 %120
  store i8 %118, i8* %124, align 1
  br label %125

; <label>:125                                     ; preds = %113
  %126 = load i32, i32* %c, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %c, align 4
  br label %108

; <label>:128                                     ; preds = %108
  %129 = load i32, i32* %c, align 4
  %130 = sext i32 %129 to i64
  %131 = load %union.rec*, %union.rec** %wd, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 4
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %133, i32 0, i64 %130
  store i8 0, i8* %134, align 1
  %135 = load i32*, i32** %3, align 8
  store i32 0, i32* %135, align 4
  %136 = load %union.rec*, %union.rec** %1, align 8
  %137 = icmp eq %union.rec* %136, null
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %128
  %139 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %139, %union.rec** %res, align 8
  br label %1041

; <label>:140                                     ; preds = %128
  %141 = load %union.rec*, %union.rec** %1, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 1
  %144 = bitcast %union.FIRST_UNION* %143 to %struct.anon.0*
  %145 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %144, i32 0, i32 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 11
  br i1 %148, label %149, label %424

; <label>:149                                     ; preds = %140
  %150 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 19), align 1
  %151 = zext i8 %150 to i32
  store i32 %151, i32* @zz_size, align 4
  %152 = sext i32 %151 to i64
  %153 = icmp uge i64 %152, 265
  br i1 %153, label %154, label %157

; <label>:154                                     ; preds = %149
  %155 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %156 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %155)
  br label %182

; <label>:157                                     ; preds = %149
  %158 = load i32, i32* @zz_size, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %159
  %161 = load %union.rec*, %union.rec** %160, align 8
  %162 = icmp eq %union.rec* %161, null
  br i1 %162, label %163, label %167

; <label>:163                                     ; preds = %157
  %164 = load i32, i32* @zz_size, align 4
  %165 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %166 = call %union.rec* @GetMemory(i32 %164, %struct.FILE_POS* %165)
  store %union.rec* %166, %union.rec** @zz_hold, align 8
  br label %181

; <label>:167                                     ; preds = %157
  %168 = load i32, i32* @zz_size, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %169
  %171 = load %union.rec*, %union.rec** %170, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 0
  %175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %174, i32 0, i64 0
  %176 = getelementptr inbounds %struct.LIST, %struct.LIST* %175, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %176, align 8
  %178 = load i32, i32* @zz_size, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %179
  store %union.rec* %177, %union.rec** %180, align 8
  br label %181

; <label>:181                                     ; preds = %167, %163
  br label %182

; <label>:182                                     ; preds = %181, %154
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 1
  %186 = bitcast %union.FIRST_UNION* %185 to %struct.anon.0*
  %187 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %186, i32 0, i32 0
  store i8 19, i8* %187, align 1
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %191, i32 0, i64 1
  %193 = getelementptr inbounds %struct.LIST, %struct.LIST* %192, i32 0, i32 1
  store %union.rec* %188, %union.rec** %193, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 0
  %197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %196, i32 0, i64 1
  %198 = getelementptr inbounds %struct.LIST, %struct.LIST* %197, i32 0, i32 0
  store %union.rec* %188, %union.rec** %198, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 0
  %202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %201, i32 0, i64 0
  %203 = getelementptr inbounds %struct.LIST, %struct.LIST* %202, i32 0, i32 1
  store %union.rec* %188, %union.rec** %203, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 0
  %207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %206, i32 0, i64 0
  %208 = getelementptr inbounds %struct.LIST, %struct.LIST* %207, i32 0, i32 0
  store %union.rec* %188, %union.rec** %208, align 8
  store %union.rec* %188, %union.rec** %res, align 8
  %209 = load %union.rec*, %union.rec** %1, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 1
  %212 = bitcast %union.FIRST_UNION* %211 to %struct.FILE_POS*
  %213 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %212, i32 0, i32 2
  %214 = load i16, i16* %213, align 2
  %215 = load %union.rec*, %union.rec** %res, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 1
  %218 = bitcast %union.FIRST_UNION* %217 to %struct.FILE_POS*
  %219 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %218, i32 0, i32 2
  store i16 %214, i16* %219, align 2
  %220 = load %union.rec*, %union.rec** %1, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 1
  %223 = bitcast %union.FIRST_UNION* %222 to %struct.FILE_POS*
  %224 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 1048575
  %227 = load %union.rec*, %union.rec** %res, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 1
  %230 = bitcast %union.FIRST_UNION* %229 to %struct.FILE_POS*
  %231 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %226, 1048575
  %234 = and i32 %232, -1048576
  %235 = or i32 %234, %233
  store i32 %235, i32* %231, align 4
  %236 = load %union.rec*, %union.rec** %1, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 1
  %239 = bitcast %union.FIRST_UNION* %238 to %struct.FILE_POS*
  %240 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = lshr i32 %241, 20
  %243 = load %union.rec*, %union.rec** %res, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 1
  %246 = bitcast %union.FIRST_UNION* %245 to %struct.FILE_POS*
  %247 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %242, 4095
  %250 = shl i32 %249, 20
  %251 = and i32 %248, 1048575
  %252 = or i32 %251, %250
  store i32 %252, i32* %247, align 4
  %253 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %254 = zext i8 %253 to i32
  store i32 %254, i32* @zz_size, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp uge i64 %255, 265
  br i1 %256, label %257, label %260

; <label>:257                                     ; preds = %182
  %258 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %259 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %258)
  br label %285

; <label>:260                                     ; preds = %182
  %261 = load i32, i32* @zz_size, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %262
  %264 = load %union.rec*, %union.rec** %263, align 8
  %265 = icmp eq %union.rec* %264, null
  br i1 %265, label %266, label %270

; <label>:266                                     ; preds = %260
  %267 = load i32, i32* @zz_size, align 4
  %268 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %269 = call %union.rec* @GetMemory(i32 %267, %struct.FILE_POS* %268)
  store %union.rec* %269, %union.rec** @zz_hold, align 8
  br label %284

; <label>:270                                     ; preds = %260
  %271 = load i32, i32* @zz_size, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %272
  %274 = load %union.rec*, %union.rec** %273, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 0
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %279, align 8
  %281 = load i32, i32* @zz_size, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %282
  store %union.rec* %280, %union.rec** %283, align 8
  br label %284

; <label>:284                                     ; preds = %270, %266
  br label %285

; <label>:285                                     ; preds = %284, %257
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 1
  %289 = bitcast %union.FIRST_UNION* %288 to %struct.anon.0*
  %290 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %289, i32 0, i32 0
  store i8 0, i8* %290, align 1
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %294, i32 0, i64 1
  %296 = getelementptr inbounds %struct.LIST, %struct.LIST* %295, i32 0, i32 1
  store %union.rec* %291, %union.rec** %296, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %298 = bitcast %union.rec* %297 to %struct.word_type*
  %299 = getelementptr inbounds %struct.word_type, %struct.word_type* %298, i32 0, i32 0
  %300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %299, i32 0, i64 1
  %301 = getelementptr inbounds %struct.LIST, %struct.LIST* %300, i32 0, i32 0
  store %union.rec* %291, %union.rec** %301, align 8
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %303 = bitcast %union.rec* %302 to %struct.word_type*
  %304 = getelementptr inbounds %struct.word_type, %struct.word_type* %303, i32 0, i32 0
  %305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %304, i32 0, i64 0
  %306 = getelementptr inbounds %struct.LIST, %struct.LIST* %305, i32 0, i32 1
  store %union.rec* %291, %union.rec** %306, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  store %union.rec* %291, %union.rec** %311, align 8
  store %union.rec* %291, %union.rec** @xx_link, align 8
  %312 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %312, %union.rec** @zz_res, align 8
  %313 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %313, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = icmp eq %union.rec* %314, null
  br i1 %315, label %316, label %318

; <label>:316                                     ; preds = %285
  %317 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %366

; <label>:318                                     ; preds = %285
  %319 = load %union.rec*, %union.rec** @zz_res, align 8
  %320 = icmp eq %union.rec* %319, null
  br i1 %320, label %321, label %323

; <label>:321                                     ; preds = %318
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %364

; <label>:323                                     ; preds = %318
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 0
  %327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %326, i32 0, i64 0
  %328 = getelementptr inbounds %struct.LIST, %struct.LIST* %327, i32 0, i32 0
  %329 = load %union.rec*, %union.rec** %328, align 8
  store %union.rec* %329, %union.rec** @zz_tmp, align 8
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 0
  %333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %332, i32 0, i64 0
  %334 = getelementptr inbounds %struct.LIST, %struct.LIST* %333, i32 0, i32 0
  %335 = load %union.rec*, %union.rec** %334, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %337 = bitcast %union.rec* %336 to %struct.word_type*
  %338 = getelementptr inbounds %struct.word_type, %struct.word_type* %337, i32 0, i32 0
  %339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %338, i32 0, i64 0
  %340 = getelementptr inbounds %struct.LIST, %struct.LIST* %339, i32 0, i32 0
  store %union.rec* %335, %union.rec** %340, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = load %union.rec*, %union.rec** @zz_res, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 0
  %345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %344, i32 0, i64 0
  %346 = getelementptr inbounds %struct.LIST, %struct.LIST* %345, i32 0, i32 0
  %347 = load %union.rec*, %union.rec** %346, align 8
  %348 = bitcast %union.rec* %347 to %struct.word_type*
  %349 = getelementptr inbounds %struct.word_type, %struct.word_type* %348, i32 0, i32 0
  %350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %349, i32 0, i64 0
  %351 = getelementptr inbounds %struct.LIST, %struct.LIST* %350, i32 0, i32 1
  store %union.rec* %341, %union.rec** %351, align 8
  %352 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %353 = load %union.rec*, %union.rec** @zz_res, align 8
  %354 = bitcast %union.rec* %353 to %struct.word_type*
  %355 = getelementptr inbounds %struct.word_type, %struct.word_type* %354, i32 0, i32 0
  %356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %355, i32 0, i64 0
  %357 = getelementptr inbounds %struct.LIST, %struct.LIST* %356, i32 0, i32 0
  store %union.rec* %352, %union.rec** %357, align 8
  %358 = load %union.rec*, %union.rec** @zz_res, align 8
  %359 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 0
  %362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %361, i32 0, i64 0
  %363 = getelementptr inbounds %struct.LIST, %struct.LIST* %362, i32 0, i32 1
  store %union.rec* %358, %union.rec** %363, align 8
  br label %364

; <label>:364                                     ; preds = %323, %321
  %365 = phi %union.rec* [ %322, %321 ], [ %358, %323 ]
  br label %366

; <label>:366                                     ; preds = %364, %316
  %367 = phi %union.rec* [ %317, %316 ], [ %365, %364 ]
  %368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %368, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %369, %union.rec** @zz_hold, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %371 = icmp eq %union.rec* %370, null
  br i1 %371, label %372, label %374

; <label>:372                                     ; preds = %366
  %373 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %422

; <label>:374                                     ; preds = %366
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  %376 = icmp eq %union.rec* %375, null
  br i1 %376, label %377, label %379

; <label>:377                                     ; preds = %374
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %420

; <label>:379                                     ; preds = %374
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %381 = bitcast %union.rec* %380 to %struct.word_type*
  %382 = getelementptr inbounds %struct.word_type, %struct.word_type* %381, i32 0, i32 0
  %383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %382, i32 0, i64 1
  %384 = getelementptr inbounds %struct.LIST, %struct.LIST* %383, i32 0, i32 0
  %385 = load %union.rec*, %union.rec** %384, align 8
  store %union.rec* %385, %union.rec** @zz_tmp, align 8
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 0
  %389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %388, i32 0, i64 1
  %390 = getelementptr inbounds %struct.LIST, %struct.LIST* %389, i32 0, i32 0
  %391 = load %union.rec*, %union.rec** %390, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 0
  %395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %394, i32 0, i64 1
  %396 = getelementptr inbounds %struct.LIST, %struct.LIST* %395, i32 0, i32 0
  store %union.rec* %391, %union.rec** %396, align 8
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %398 = load %union.rec*, %union.rec** @zz_res, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 1
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 0
  %403 = load %union.rec*, %union.rec** %402, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 0
  %406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %405, i32 0, i64 1
  %407 = getelementptr inbounds %struct.LIST, %struct.LIST* %406, i32 0, i32 1
  store %union.rec* %397, %union.rec** %407, align 8
  %408 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %409 = load %union.rec*, %union.rec** @zz_res, align 8
  %410 = bitcast %union.rec* %409 to %struct.word_type*
  %411 = getelementptr inbounds %struct.word_type, %struct.word_type* %410, i32 0, i32 0
  %412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %411, i32 0, i64 1
  %413 = getelementptr inbounds %struct.LIST, %struct.LIST* %412, i32 0, i32 0
  store %union.rec* %408, %union.rec** %413, align 8
  %414 = load %union.rec*, %union.rec** @zz_res, align 8
  %415 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 0
  %418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %417, i32 0, i64 1
  %419 = getelementptr inbounds %struct.LIST, %struct.LIST* %418, i32 0, i32 1
  store %union.rec* %414, %union.rec** %419, align 8
  br label %420

; <label>:420                                     ; preds = %379, %377
  %421 = phi %union.rec* [ %378, %377 ], [ %414, %379 ]
  br label %422

; <label>:422                                     ; preds = %420, %372
  %423 = phi %union.rec* [ %373, %372 ], [ %421, %420 ]
  br label %426

; <label>:424                                     ; preds = %140
  %425 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %425, %union.rec** %res, align 8
  br label %426

; <label>:426                                     ; preds = %424, %422
  %427 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %428 = zext i8 %427 to i32
  store i32 %428, i32* @zz_size, align 4
  %429 = sext i32 %428 to i64
  %430 = icmp uge i64 %429, 265
  br i1 %430, label %431, label %434

; <label>:431                                     ; preds = %426
  %432 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %433 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %432)
  br label %459

; <label>:434                                     ; preds = %426
  %435 = load i32, i32* @zz_size, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %436
  %438 = load %union.rec*, %union.rec** %437, align 8
  %439 = icmp eq %union.rec* %438, null
  br i1 %439, label %440, label %444

; <label>:440                                     ; preds = %434
  %441 = load i32, i32* @zz_size, align 4
  %442 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %443 = call %union.rec* @GetMemory(i32 %441, %struct.FILE_POS* %442)
  store %union.rec* %443, %union.rec** @zz_hold, align 8
  br label %458

; <label>:444                                     ; preds = %434
  %445 = load i32, i32* @zz_size, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %446
  %448 = load %union.rec*, %union.rec** %447, align 8
  store %union.rec* %448, %union.rec** @zz_hold, align 8
  store %union.rec* %448, %union.rec** @zz_hold, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 0
  %452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %451, i32 0, i64 0
  %453 = getelementptr inbounds %struct.LIST, %struct.LIST* %452, i32 0, i32 0
  %454 = load %union.rec*, %union.rec** %453, align 8
  %455 = load i32, i32* @zz_size, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %456
  store %union.rec* %454, %union.rec** %457, align 8
  br label %458

; <label>:458                                     ; preds = %444, %440
  br label %459

; <label>:459                                     ; preds = %458, %431
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 1
  %463 = bitcast %union.FIRST_UNION* %462 to %struct.anon.0*
  %464 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %463, i32 0, i32 0
  store i8 1, i8* %464, align 1
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %468, i32 0, i64 1
  %470 = getelementptr inbounds %struct.LIST, %struct.LIST* %469, i32 0, i32 1
  store %union.rec* %465, %union.rec** %470, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %472 = bitcast %union.rec* %471 to %struct.word_type*
  %473 = getelementptr inbounds %struct.word_type, %struct.word_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %473, i32 0, i64 1
  %475 = getelementptr inbounds %struct.LIST, %struct.LIST* %474, i32 0, i32 0
  store %union.rec* %465, %union.rec** %475, align 8
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %477 = bitcast %union.rec* %476 to %struct.word_type*
  %478 = getelementptr inbounds %struct.word_type, %struct.word_type* %477, i32 0, i32 0
  %479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %478, i32 0, i64 0
  %480 = getelementptr inbounds %struct.LIST, %struct.LIST* %479, i32 0, i32 1
  store %union.rec* %465, %union.rec** %480, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %482 = bitcast %union.rec* %481 to %struct.word_type*
  %483 = getelementptr inbounds %struct.word_type, %struct.word_type* %482, i32 0, i32 0
  %484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %483, i32 0, i64 0
  %485 = getelementptr inbounds %struct.LIST, %struct.LIST* %484, i32 0, i32 0
  store %union.rec* %465, %union.rec** %485, align 8
  store %union.rec* %465, %union.rec** %gp, align 8
  %486 = load %union.rec*, %union.rec** %gp, align 8
  %487 = bitcast %union.rec* %486 to %struct.gapobj_type*
  %488 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %487, i32 0, i32 3
  %489 = bitcast %struct.GAP* %488 to i16*
  %490 = load i16, i16* %489, align 4
  %491 = and i16 %490, -257
  store i16 %491, i16* %489, align 4
  %492 = load %union.rec*, %union.rec** %gp, align 8
  %493 = bitcast %union.rec* %492 to %struct.gapobj_type*
  %494 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %493, i32 0, i32 3
  %495 = bitcast %struct.GAP* %494 to i16*
  %496 = load i16, i16* %495, align 4
  %497 = and i16 %496, -513
  store i16 %497, i16* %495, align 4
  %498 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %499 = load %union.rec*, %union.rec** %gp, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 1
  %502 = bitcast %union.FIRST_UNION* %501 to %struct.FILE_POS*
  %503 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %502, i32 0, i32 2
  store i16 %498, i16* %503, align 2
  %504 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %505 = and i32 %504, 1048575
  %506 = load %union.rec*, %union.rec** %gp, align 8
  %507 = bitcast %union.rec* %506 to %struct.word_type*
  %508 = getelementptr inbounds %struct.word_type, %struct.word_type* %507, i32 0, i32 1
  %509 = bitcast %union.FIRST_UNION* %508 to %struct.FILE_POS*
  %510 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 4
  %512 = and i32 %505, 1048575
  %513 = and i32 %511, -1048576
  %514 = or i32 %513, %512
  store i32 %514, i32* %510, align 4
  %515 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %516 = lshr i32 %515, 20
  %517 = load %union.rec*, %union.rec** %gp, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 1
  %520 = bitcast %union.FIRST_UNION* %519 to %struct.FILE_POS*
  %521 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = and i32 %516, 4095
  %524 = shl i32 %523, 20
  %525 = and i32 %522, 1048575
  %526 = or i32 %525, %524
  store i32 %526, i32* %521, align 4
  %527 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), %struct.FILE_POS* @file_pos)
  store %union.rec* %527, %union.rec** %gpword, align 8
  %528 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %529 = zext i8 %528 to i32
  store i32 %529, i32* @zz_size, align 4
  %530 = sext i32 %529 to i64
  %531 = icmp uge i64 %530, 265
  br i1 %531, label %532, label %535

; <label>:532                                     ; preds = %459
  %533 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %534 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %533)
  br label %560

; <label>:535                                     ; preds = %459
  %536 = load i32, i32* @zz_size, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %537
  %539 = load %union.rec*, %union.rec** %538, align 8
  %540 = icmp eq %union.rec* %539, null
  br i1 %540, label %541, label %545

; <label>:541                                     ; preds = %535
  %542 = load i32, i32* @zz_size, align 4
  %543 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %544 = call %union.rec* @GetMemory(i32 %542, %struct.FILE_POS* %543)
  store %union.rec* %544, %union.rec** @zz_hold, align 8
  br label %559

; <label>:545                                     ; preds = %535
  %546 = load i32, i32* @zz_size, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %547
  %549 = load %union.rec*, %union.rec** %548, align 8
  store %union.rec* %549, %union.rec** @zz_hold, align 8
  store %union.rec* %549, %union.rec** @zz_hold, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %551 = bitcast %union.rec* %550 to %struct.word_type*
  %552 = getelementptr inbounds %struct.word_type, %struct.word_type* %551, i32 0, i32 0
  %553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %552, i32 0, i64 0
  %554 = getelementptr inbounds %struct.LIST, %struct.LIST* %553, i32 0, i32 0
  %555 = load %union.rec*, %union.rec** %554, align 8
  %556 = load i32, i32* @zz_size, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %557
  store %union.rec* %555, %union.rec** %558, align 8
  br label %559

; <label>:559                                     ; preds = %545, %541
  br label %560

; <label>:560                                     ; preds = %559, %532
  %561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %562 = bitcast %union.rec* %561 to %struct.word_type*
  %563 = getelementptr inbounds %struct.word_type, %struct.word_type* %562, i32 0, i32 1
  %564 = bitcast %union.FIRST_UNION* %563 to %struct.anon.0*
  %565 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %564, i32 0, i32 0
  store i8 0, i8* %565, align 1
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 0
  %570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %569, i32 0, i64 1
  %571 = getelementptr inbounds %struct.LIST, %struct.LIST* %570, i32 0, i32 1
  store %union.rec* %566, %union.rec** %571, align 8
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 0
  %575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %574, i32 0, i64 1
  %576 = getelementptr inbounds %struct.LIST, %struct.LIST* %575, i32 0, i32 0
  store %union.rec* %566, %union.rec** %576, align 8
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %578 = bitcast %union.rec* %577 to %struct.word_type*
  %579 = getelementptr inbounds %struct.word_type, %struct.word_type* %578, i32 0, i32 0
  %580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %579, i32 0, i64 0
  %581 = getelementptr inbounds %struct.LIST, %struct.LIST* %580, i32 0, i32 1
  store %union.rec* %566, %union.rec** %581, align 8
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 0
  %585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %584, i32 0, i64 0
  %586 = getelementptr inbounds %struct.LIST, %struct.LIST* %585, i32 0, i32 0
  store %union.rec* %566, %union.rec** %586, align 8
  store %union.rec* %566, %union.rec** @xx_link, align 8
  %587 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %587, %union.rec** @zz_res, align 8
  %588 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %588, %union.rec** @zz_hold, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = icmp eq %union.rec* %589, null
  br i1 %590, label %591, label %593

; <label>:591                                     ; preds = %560
  %592 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %641

; <label>:593                                     ; preds = %560
  %594 = load %union.rec*, %union.rec** @zz_res, align 8
  %595 = icmp eq %union.rec* %594, null
  br i1 %595, label %596, label %598

; <label>:596                                     ; preds = %593
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %639

; <label>:598                                     ; preds = %593
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 0
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 0
  %604 = load %union.rec*, %union.rec** %603, align 8
  store %union.rec* %604, %union.rec** @zz_tmp, align 8
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 0
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %612 = bitcast %union.rec* %611 to %struct.word_type*
  %613 = getelementptr inbounds %struct.word_type, %struct.word_type* %612, i32 0, i32 0
  %614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %613, i32 0, i64 0
  %615 = getelementptr inbounds %struct.LIST, %struct.LIST* %614, i32 0, i32 0
  store %union.rec* %610, %union.rec** %615, align 8
  %616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %617 = load %union.rec*, %union.rec** @zz_res, align 8
  %618 = bitcast %union.rec* %617 to %struct.word_type*
  %619 = getelementptr inbounds %struct.word_type, %struct.word_type* %618, i32 0, i32 0
  %620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %619, i32 0, i64 0
  %621 = getelementptr inbounds %struct.LIST, %struct.LIST* %620, i32 0, i32 0
  %622 = load %union.rec*, %union.rec** %621, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 0
  %625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %624, i32 0, i64 0
  %626 = getelementptr inbounds %struct.LIST, %struct.LIST* %625, i32 0, i32 1
  store %union.rec* %616, %union.rec** %626, align 8
  %627 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %628 = load %union.rec*, %union.rec** @zz_res, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 0
  %631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %630, i32 0, i64 0
  %632 = getelementptr inbounds %struct.LIST, %struct.LIST* %631, i32 0, i32 0
  store %union.rec* %627, %union.rec** %632, align 8
  %633 = load %union.rec*, %union.rec** @zz_res, align 8
  %634 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %635 = bitcast %union.rec* %634 to %struct.word_type*
  %636 = getelementptr inbounds %struct.word_type, %struct.word_type* %635, i32 0, i32 0
  %637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %636, i32 0, i64 0
  %638 = getelementptr inbounds %struct.LIST, %struct.LIST* %637, i32 0, i32 1
  store %union.rec* %633, %union.rec** %638, align 8
  br label %639

; <label>:639                                     ; preds = %598, %596
  %640 = phi %union.rec* [ %597, %596 ], [ %633, %598 ]
  br label %641

; <label>:641                                     ; preds = %639, %591
  %642 = phi %union.rec* [ %592, %591 ], [ %640, %639 ]
  %643 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %643, %union.rec** @zz_res, align 8
  %644 = load %union.rec*, %union.rec** %gpword, align 8
  store %union.rec* %644, %union.rec** @zz_hold, align 8
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %646 = icmp eq %union.rec* %645, null
  br i1 %646, label %647, label %649

; <label>:647                                     ; preds = %641
  %648 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %697

; <label>:649                                     ; preds = %641
  %650 = load %union.rec*, %union.rec** @zz_res, align 8
  %651 = icmp eq %union.rec* %650, null
  br i1 %651, label %652, label %654

; <label>:652                                     ; preds = %649
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %695

; <label>:654                                     ; preds = %649
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %656 = bitcast %union.rec* %655 to %struct.word_type*
  %657 = getelementptr inbounds %struct.word_type, %struct.word_type* %656, i32 0, i32 0
  %658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %657, i32 0, i64 1
  %659 = getelementptr inbounds %struct.LIST, %struct.LIST* %658, i32 0, i32 0
  %660 = load %union.rec*, %union.rec** %659, align 8
  store %union.rec* %660, %union.rec** @zz_tmp, align 8
  %661 = load %union.rec*, %union.rec** @zz_res, align 8
  %662 = bitcast %union.rec* %661 to %struct.word_type*
  %663 = getelementptr inbounds %struct.word_type, %struct.word_type* %662, i32 0, i32 0
  %664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %663, i32 0, i64 1
  %665 = getelementptr inbounds %struct.LIST, %struct.LIST* %664, i32 0, i32 0
  %666 = load %union.rec*, %union.rec** %665, align 8
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %668 = bitcast %union.rec* %667 to %struct.word_type*
  %669 = getelementptr inbounds %struct.word_type, %struct.word_type* %668, i32 0, i32 0
  %670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %669, i32 0, i64 1
  %671 = getelementptr inbounds %struct.LIST, %struct.LIST* %670, i32 0, i32 0
  store %union.rec* %666, %union.rec** %671, align 8
  %672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %673 = load %union.rec*, %union.rec** @zz_res, align 8
  %674 = bitcast %union.rec* %673 to %struct.word_type*
  %675 = getelementptr inbounds %struct.word_type, %struct.word_type* %674, i32 0, i32 0
  %676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %675, i32 0, i64 1
  %677 = getelementptr inbounds %struct.LIST, %struct.LIST* %676, i32 0, i32 0
  %678 = load %union.rec*, %union.rec** %677, align 8
  %679 = bitcast %union.rec* %678 to %struct.word_type*
  %680 = getelementptr inbounds %struct.word_type, %struct.word_type* %679, i32 0, i32 0
  %681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %680, i32 0, i64 1
  %682 = getelementptr inbounds %struct.LIST, %struct.LIST* %681, i32 0, i32 1
  store %union.rec* %672, %union.rec** %682, align 8
  %683 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %684 = load %union.rec*, %union.rec** @zz_res, align 8
  %685 = bitcast %union.rec* %684 to %struct.word_type*
  %686 = getelementptr inbounds %struct.word_type, %struct.word_type* %685, i32 0, i32 0
  %687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %686, i32 0, i64 1
  %688 = getelementptr inbounds %struct.LIST, %struct.LIST* %687, i32 0, i32 0
  store %union.rec* %683, %union.rec** %688, align 8
  %689 = load %union.rec*, %union.rec** @zz_res, align 8
  %690 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %691 = bitcast %union.rec* %690 to %struct.word_type*
  %692 = getelementptr inbounds %struct.word_type, %struct.word_type* %691, i32 0, i32 0
  %693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %692, i32 0, i64 1
  %694 = getelementptr inbounds %struct.LIST, %struct.LIST* %693, i32 0, i32 1
  store %union.rec* %689, %union.rec** %694, align 8
  br label %695

; <label>:695                                     ; preds = %654, %652
  %696 = phi %union.rec* [ %653, %652 ], [ %689, %654 ]
  br label %697

; <label>:697                                     ; preds = %695, %647
  %698 = phi %union.rec* [ %648, %647 ], [ %696, %695 ]
  %699 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %700 = zext i8 %699 to i32
  store i32 %700, i32* @zz_size, align 4
  %701 = sext i32 %700 to i64
  %702 = icmp uge i64 %701, 265
  br i1 %702, label %703, label %706

; <label>:703                                     ; preds = %697
  %704 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %705 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %704)
  br label %731

; <label>:706                                     ; preds = %697
  %707 = load i32, i32* @zz_size, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %708
  %710 = load %union.rec*, %union.rec** %709, align 8
  %711 = icmp eq %union.rec* %710, null
  br i1 %711, label %712, label %716

; <label>:712                                     ; preds = %706
  %713 = load i32, i32* @zz_size, align 4
  %714 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %715 = call %union.rec* @GetMemory(i32 %713, %struct.FILE_POS* %714)
  store %union.rec* %715, %union.rec** @zz_hold, align 8
  br label %730

; <label>:716                                     ; preds = %706
  %717 = load i32, i32* @zz_size, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %718
  %720 = load %union.rec*, %union.rec** %719, align 8
  store %union.rec* %720, %union.rec** @zz_hold, align 8
  store %union.rec* %720, %union.rec** @zz_hold, align 8
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %722 = bitcast %union.rec* %721 to %struct.word_type*
  %723 = getelementptr inbounds %struct.word_type, %struct.word_type* %722, i32 0, i32 0
  %724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %723, i32 0, i64 0
  %725 = getelementptr inbounds %struct.LIST, %struct.LIST* %724, i32 0, i32 0
  %726 = load %union.rec*, %union.rec** %725, align 8
  %727 = load i32, i32* @zz_size, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %728
  store %union.rec* %726, %union.rec** %729, align 8
  br label %730

; <label>:730                                     ; preds = %716, %712
  br label %731

; <label>:731                                     ; preds = %730, %703
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %733 = bitcast %union.rec* %732 to %struct.word_type*
  %734 = getelementptr inbounds %struct.word_type, %struct.word_type* %733, i32 0, i32 1
  %735 = bitcast %union.FIRST_UNION* %734 to %struct.anon.0*
  %736 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %735, i32 0, i32 0
  store i8 0, i8* %736, align 1
  %737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %739 = bitcast %union.rec* %738 to %struct.word_type*
  %740 = getelementptr inbounds %struct.word_type, %struct.word_type* %739, i32 0, i32 0
  %741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %740, i32 0, i64 1
  %742 = getelementptr inbounds %struct.LIST, %struct.LIST* %741, i32 0, i32 1
  store %union.rec* %737, %union.rec** %742, align 8
  %743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %744 = bitcast %union.rec* %743 to %struct.word_type*
  %745 = getelementptr inbounds %struct.word_type, %struct.word_type* %744, i32 0, i32 0
  %746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %745, i32 0, i64 1
  %747 = getelementptr inbounds %struct.LIST, %struct.LIST* %746, i32 0, i32 0
  store %union.rec* %737, %union.rec** %747, align 8
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %749 = bitcast %union.rec* %748 to %struct.word_type*
  %750 = getelementptr inbounds %struct.word_type, %struct.word_type* %749, i32 0, i32 0
  %751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %750, i32 0, i64 0
  %752 = getelementptr inbounds %struct.LIST, %struct.LIST* %751, i32 0, i32 1
  store %union.rec* %737, %union.rec** %752, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %754 = bitcast %union.rec* %753 to %struct.word_type*
  %755 = getelementptr inbounds %struct.word_type, %struct.word_type* %754, i32 0, i32 0
  %756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %755, i32 0, i64 0
  %757 = getelementptr inbounds %struct.LIST, %struct.LIST* %756, i32 0, i32 0
  store %union.rec* %737, %union.rec** %757, align 8
  store %union.rec* %737, %union.rec** @xx_link, align 8
  %758 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %758, %union.rec** @zz_res, align 8
  %759 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %759, %union.rec** @zz_hold, align 8
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %761 = icmp eq %union.rec* %760, null
  br i1 %761, label %762, label %764

; <label>:762                                     ; preds = %731
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %812

; <label>:764                                     ; preds = %731
  %765 = load %union.rec*, %union.rec** @zz_res, align 8
  %766 = icmp eq %union.rec* %765, null
  br i1 %766, label %767, label %769

; <label>:767                                     ; preds = %764
  %768 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %810

; <label>:769                                     ; preds = %764
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %771 = bitcast %union.rec* %770 to %struct.word_type*
  %772 = getelementptr inbounds %struct.word_type, %struct.word_type* %771, i32 0, i32 0
  %773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %772, i32 0, i64 0
  %774 = getelementptr inbounds %struct.LIST, %struct.LIST* %773, i32 0, i32 0
  %775 = load %union.rec*, %union.rec** %774, align 8
  store %union.rec* %775, %union.rec** @zz_tmp, align 8
  %776 = load %union.rec*, %union.rec** @zz_res, align 8
  %777 = bitcast %union.rec* %776 to %struct.word_type*
  %778 = getelementptr inbounds %struct.word_type, %struct.word_type* %777, i32 0, i32 0
  %779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %778, i32 0, i64 0
  %780 = getelementptr inbounds %struct.LIST, %struct.LIST* %779, i32 0, i32 0
  %781 = load %union.rec*, %union.rec** %780, align 8
  %782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 0
  %785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %784, i32 0, i64 0
  %786 = getelementptr inbounds %struct.LIST, %struct.LIST* %785, i32 0, i32 0
  store %union.rec* %781, %union.rec** %786, align 8
  %787 = load %union.rec*, %union.rec** @zz_hold, align 8
  %788 = load %union.rec*, %union.rec** @zz_res, align 8
  %789 = bitcast %union.rec* %788 to %struct.word_type*
  %790 = getelementptr inbounds %struct.word_type, %struct.word_type* %789, i32 0, i32 0
  %791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %790, i32 0, i64 0
  %792 = getelementptr inbounds %struct.LIST, %struct.LIST* %791, i32 0, i32 0
  %793 = load %union.rec*, %union.rec** %792, align 8
  %794 = bitcast %union.rec* %793 to %struct.word_type*
  %795 = getelementptr inbounds %struct.word_type, %struct.word_type* %794, i32 0, i32 0
  %796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %795, i32 0, i64 0
  %797 = getelementptr inbounds %struct.LIST, %struct.LIST* %796, i32 0, i32 1
  store %union.rec* %787, %union.rec** %797, align 8
  %798 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %799 = load %union.rec*, %union.rec** @zz_res, align 8
  %800 = bitcast %union.rec* %799 to %struct.word_type*
  %801 = getelementptr inbounds %struct.word_type, %struct.word_type* %800, i32 0, i32 0
  %802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %801, i32 0, i64 0
  %803 = getelementptr inbounds %struct.LIST, %struct.LIST* %802, i32 0, i32 0
  store %union.rec* %798, %union.rec** %803, align 8
  %804 = load %union.rec*, %union.rec** @zz_res, align 8
  %805 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %806 = bitcast %union.rec* %805 to %struct.word_type*
  %807 = getelementptr inbounds %struct.word_type, %struct.word_type* %806, i32 0, i32 0
  %808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %807, i32 0, i64 0
  %809 = getelementptr inbounds %struct.LIST, %struct.LIST* %808, i32 0, i32 1
  store %union.rec* %804, %union.rec** %809, align 8
  br label %810

; <label>:810                                     ; preds = %769, %767
  %811 = phi %union.rec* [ %768, %767 ], [ %804, %769 ]
  br label %812

; <label>:812                                     ; preds = %810, %762
  %813 = phi %union.rec* [ %763, %762 ], [ %811, %810 ]
  %814 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %814, %union.rec** @zz_res, align 8
  %815 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %815, %union.rec** @zz_hold, align 8
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %817 = icmp eq %union.rec* %816, null
  br i1 %817, label %818, label %820

; <label>:818                                     ; preds = %812
  %819 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %868

; <label>:820                                     ; preds = %812
  %821 = load %union.rec*, %union.rec** @zz_res, align 8
  %822 = icmp eq %union.rec* %821, null
  br i1 %822, label %823, label %825

; <label>:823                                     ; preds = %820
  %824 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %866

; <label>:825                                     ; preds = %820
  %826 = load %union.rec*, %union.rec** @zz_hold, align 8
  %827 = bitcast %union.rec* %826 to %struct.word_type*
  %828 = getelementptr inbounds %struct.word_type, %struct.word_type* %827, i32 0, i32 0
  %829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %828, i32 0, i64 1
  %830 = getelementptr inbounds %struct.LIST, %struct.LIST* %829, i32 0, i32 0
  %831 = load %union.rec*, %union.rec** %830, align 8
  store %union.rec* %831, %union.rec** @zz_tmp, align 8
  %832 = load %union.rec*, %union.rec** @zz_res, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 0
  %835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %834, i32 0, i64 1
  %836 = getelementptr inbounds %struct.LIST, %struct.LIST* %835, i32 0, i32 0
  %837 = load %union.rec*, %union.rec** %836, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 0
  %841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %840, i32 0, i64 1
  %842 = getelementptr inbounds %struct.LIST, %struct.LIST* %841, i32 0, i32 0
  store %union.rec* %837, %union.rec** %842, align 8
  %843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %844 = load %union.rec*, %union.rec** @zz_res, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 0
  %847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %846, i32 0, i64 1
  %848 = getelementptr inbounds %struct.LIST, %struct.LIST* %847, i32 0, i32 0
  %849 = load %union.rec*, %union.rec** %848, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 0
  %852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %851, i32 0, i64 1
  %853 = getelementptr inbounds %struct.LIST, %struct.LIST* %852, i32 0, i32 1
  store %union.rec* %843, %union.rec** %853, align 8
  %854 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %855 = load %union.rec*, %union.rec** @zz_res, align 8
  %856 = bitcast %union.rec* %855 to %struct.word_type*
  %857 = getelementptr inbounds %struct.word_type, %struct.word_type* %856, i32 0, i32 0
  %858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %857, i32 0, i64 1
  %859 = getelementptr inbounds %struct.LIST, %struct.LIST* %858, i32 0, i32 0
  store %union.rec* %854, %union.rec** %859, align 8
  %860 = load %union.rec*, %union.rec** @zz_res, align 8
  %861 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %862 = bitcast %union.rec* %861 to %struct.word_type*
  %863 = getelementptr inbounds %struct.word_type, %struct.word_type* %862, i32 0, i32 0
  %864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %863, i32 0, i64 1
  %865 = getelementptr inbounds %struct.LIST, %struct.LIST* %864, i32 0, i32 1
  store %union.rec* %860, %union.rec** %865, align 8
  br label %866

; <label>:866                                     ; preds = %825, %823
  %867 = phi %union.rec* [ %824, %823 ], [ %860, %825 ]
  br label %868

; <label>:868                                     ; preds = %866, %818
  %869 = phi %union.rec* [ %819, %818 ], [ %867, %866 ]
  %870 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %871 = zext i8 %870 to i32
  store i32 %871, i32* @zz_size, align 4
  %872 = sext i32 %871 to i64
  %873 = icmp uge i64 %872, 265
  br i1 %873, label %874, label %877

; <label>:874                                     ; preds = %868
  %875 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %876 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %875)
  br label %902

; <label>:877                                     ; preds = %868
  %878 = load i32, i32* @zz_size, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %879
  %881 = load %union.rec*, %union.rec** %880, align 8
  %882 = icmp eq %union.rec* %881, null
  br i1 %882, label %883, label %887

; <label>:883                                     ; preds = %877
  %884 = load i32, i32* @zz_size, align 4
  %885 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %886 = call %union.rec* @GetMemory(i32 %884, %struct.FILE_POS* %885)
  store %union.rec* %886, %union.rec** @zz_hold, align 8
  br label %901

; <label>:887                                     ; preds = %877
  %888 = load i32, i32* @zz_size, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %889
  %891 = load %union.rec*, %union.rec** %890, align 8
  store %union.rec* %891, %union.rec** @zz_hold, align 8
  store %union.rec* %891, %union.rec** @zz_hold, align 8
  %892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %893 = bitcast %union.rec* %892 to %struct.word_type*
  %894 = getelementptr inbounds %struct.word_type, %struct.word_type* %893, i32 0, i32 0
  %895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %894, i32 0, i64 0
  %896 = getelementptr inbounds %struct.LIST, %struct.LIST* %895, i32 0, i32 0
  %897 = load %union.rec*, %union.rec** %896, align 8
  %898 = load i32, i32* @zz_size, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %899
  store %union.rec* %897, %union.rec** %900, align 8
  br label %901

; <label>:901                                     ; preds = %887, %883
  br label %902

; <label>:902                                     ; preds = %901, %874
  %903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %904 = bitcast %union.rec* %903 to %struct.word_type*
  %905 = getelementptr inbounds %struct.word_type, %struct.word_type* %904, i32 0, i32 1
  %906 = bitcast %union.FIRST_UNION* %905 to %struct.anon.0*
  %907 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %906, i32 0, i32 0
  store i8 0, i8* %907, align 1
  %908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %910 = bitcast %union.rec* %909 to %struct.word_type*
  %911 = getelementptr inbounds %struct.word_type, %struct.word_type* %910, i32 0, i32 0
  %912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %911, i32 0, i64 1
  %913 = getelementptr inbounds %struct.LIST, %struct.LIST* %912, i32 0, i32 1
  store %union.rec* %908, %union.rec** %913, align 8
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %915 = bitcast %union.rec* %914 to %struct.word_type*
  %916 = getelementptr inbounds %struct.word_type, %struct.word_type* %915, i32 0, i32 0
  %917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %916, i32 0, i64 1
  %918 = getelementptr inbounds %struct.LIST, %struct.LIST* %917, i32 0, i32 0
  store %union.rec* %908, %union.rec** %918, align 8
  %919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %920 = bitcast %union.rec* %919 to %struct.word_type*
  %921 = getelementptr inbounds %struct.word_type, %struct.word_type* %920, i32 0, i32 0
  %922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %921, i32 0, i64 0
  %923 = getelementptr inbounds %struct.LIST, %struct.LIST* %922, i32 0, i32 1
  store %union.rec* %908, %union.rec** %923, align 8
  %924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %925 = bitcast %union.rec* %924 to %struct.word_type*
  %926 = getelementptr inbounds %struct.word_type, %struct.word_type* %925, i32 0, i32 0
  %927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %926, i32 0, i64 0
  %928 = getelementptr inbounds %struct.LIST, %struct.LIST* %927, i32 0, i32 0
  store %union.rec* %908, %union.rec** %928, align 8
  store %union.rec* %908, %union.rec** @xx_link, align 8
  %929 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %929, %union.rec** @zz_res, align 8
  %930 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %930, %union.rec** @zz_hold, align 8
  %931 = load %union.rec*, %union.rec** @zz_hold, align 8
  %932 = icmp eq %union.rec* %931, null
  br i1 %932, label %933, label %935

; <label>:933                                     ; preds = %902
  %934 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %983

; <label>:935                                     ; preds = %902
  %936 = load %union.rec*, %union.rec** @zz_res, align 8
  %937 = icmp eq %union.rec* %936, null
  br i1 %937, label %938, label %940

; <label>:938                                     ; preds = %935
  %939 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %981

; <label>:940                                     ; preds = %935
  %941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %942 = bitcast %union.rec* %941 to %struct.word_type*
  %943 = getelementptr inbounds %struct.word_type, %struct.word_type* %942, i32 0, i32 0
  %944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %943, i32 0, i64 0
  %945 = getelementptr inbounds %struct.LIST, %struct.LIST* %944, i32 0, i32 0
  %946 = load %union.rec*, %union.rec** %945, align 8
  store %union.rec* %946, %union.rec** @zz_tmp, align 8
  %947 = load %union.rec*, %union.rec** @zz_res, align 8
  %948 = bitcast %union.rec* %947 to %struct.word_type*
  %949 = getelementptr inbounds %struct.word_type, %struct.word_type* %948, i32 0, i32 0
  %950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %949, i32 0, i64 0
  %951 = getelementptr inbounds %struct.LIST, %struct.LIST* %950, i32 0, i32 0
  %952 = load %union.rec*, %union.rec** %951, align 8
  %953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 0
  %956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %955, i32 0, i64 0
  %957 = getelementptr inbounds %struct.LIST, %struct.LIST* %956, i32 0, i32 0
  store %union.rec* %952, %union.rec** %957, align 8
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %959 = load %union.rec*, %union.rec** @zz_res, align 8
  %960 = bitcast %union.rec* %959 to %struct.word_type*
  %961 = getelementptr inbounds %struct.word_type, %struct.word_type* %960, i32 0, i32 0
  %962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %961, i32 0, i64 0
  %963 = getelementptr inbounds %struct.LIST, %struct.LIST* %962, i32 0, i32 0
  %964 = load %union.rec*, %union.rec** %963, align 8
  %965 = bitcast %union.rec* %964 to %struct.word_type*
  %966 = getelementptr inbounds %struct.word_type, %struct.word_type* %965, i32 0, i32 0
  %967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %966, i32 0, i64 0
  %968 = getelementptr inbounds %struct.LIST, %struct.LIST* %967, i32 0, i32 1
  store %union.rec* %958, %union.rec** %968, align 8
  %969 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %970 = load %union.rec*, %union.rec** @zz_res, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 0
  %973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %972, i32 0, i64 0
  %974 = getelementptr inbounds %struct.LIST, %struct.LIST* %973, i32 0, i32 0
  store %union.rec* %969, %union.rec** %974, align 8
  %975 = load %union.rec*, %union.rec** @zz_res, align 8
  %976 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %978, i32 0, i64 0
  %980 = getelementptr inbounds %struct.LIST, %struct.LIST* %979, i32 0, i32 1
  store %union.rec* %975, %union.rec** %980, align 8
  br label %981

; <label>:981                                     ; preds = %940, %938
  %982 = phi %union.rec* [ %939, %938 ], [ %975, %940 ]
  br label %983

; <label>:983                                     ; preds = %981, %933
  %984 = phi %union.rec* [ %934, %933 ], [ %982, %981 ]
  %985 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %985, %union.rec** @zz_res, align 8
  %986 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %986, %union.rec** @zz_hold, align 8
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %988 = icmp eq %union.rec* %987, null
  br i1 %988, label %989, label %991

; <label>:989                                     ; preds = %983
  %990 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1039

; <label>:991                                     ; preds = %983
  %992 = load %union.rec*, %union.rec** @zz_res, align 8
  %993 = icmp eq %union.rec* %992, null
  br i1 %993, label %994, label %996

; <label>:994                                     ; preds = %991
  %995 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1037

; <label>:996                                     ; preds = %991
  %997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %998 = bitcast %union.rec* %997 to %struct.word_type*
  %999 = getelementptr inbounds %struct.word_type, %struct.word_type* %998, i32 0, i32 0
  %1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %999, i32 0, i64 1
  %1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %1000, i32 0, i32 0
  %1002 = load %union.rec*, %union.rec** %1001, align 8
  store %union.rec* %1002, %union.rec** @zz_tmp, align 8
  %1003 = load %union.rec*, %union.rec** @zz_res, align 8
  %1004 = bitcast %union.rec* %1003 to %struct.word_type*
  %1005 = getelementptr inbounds %struct.word_type, %struct.word_type* %1004, i32 0, i32 0
  %1006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1005, i32 0, i64 1
  %1007 = getelementptr inbounds %struct.LIST, %struct.LIST* %1006, i32 0, i32 0
  %1008 = load %union.rec*, %union.rec** %1007, align 8
  %1009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 0
  %1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1011, i32 0, i64 1
  %1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %1012, i32 0, i32 0
  store %union.rec* %1008, %union.rec** %1013, align 8
  %1014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1015 = load %union.rec*, %union.rec** @zz_res, align 8
  %1016 = bitcast %union.rec* %1015 to %struct.word_type*
  %1017 = getelementptr inbounds %struct.word_type, %struct.word_type* %1016, i32 0, i32 0
  %1018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1017, i32 0, i64 1
  %1019 = getelementptr inbounds %struct.LIST, %struct.LIST* %1018, i32 0, i32 0
  %1020 = load %union.rec*, %union.rec** %1019, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 0
  %1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1022, i32 0, i64 1
  %1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %1023, i32 0, i32 1
  store %union.rec* %1014, %union.rec** %1024, align 8
  %1025 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1026 = load %union.rec*, %union.rec** @zz_res, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 1
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 0
  store %union.rec* %1025, %union.rec** %1030, align 8
  %1031 = load %union.rec*, %union.rec** @zz_res, align 8
  %1032 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1033 = bitcast %union.rec* %1032 to %struct.word_type*
  %1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %1033, i32 0, i32 0
  %1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1034, i32 0, i64 1
  %1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %1035, i32 0, i32 1
  store %union.rec* %1031, %union.rec** %1036, align 8
  br label %1037

; <label>:1037                                    ; preds = %996, %994
  %1038 = phi %union.rec* [ %995, %994 ], [ %1031, %996 ]
  br label %1039

; <label>:1039                                    ; preds = %1037, %989
  %1040 = phi %union.rec* [ %990, %989 ], [ %1038, %1037 ]
  br label %1041

; <label>:1041                                    ; preds = %1039, %138
  %1042 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1042
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
