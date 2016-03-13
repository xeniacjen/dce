; ModuleID = 'z21.c'
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
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"SizeGalley: precondition!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SizeGalley: already sized!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@AllowCrossDb = external global i32, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SizeGalley: threads!\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"galley %s must have just one column mark\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s,%s object too wide for available space\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"SizeGalley: BreakObject failed to fit!\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@xx_tmp = external global %union.rec*, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"SizeGalley COL_THR: Up(y)!=LastUp(y)!\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"SizeGalley: missing COL_THR!\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"SizeGalley/SPLIT: hor != thor!\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"SizeGalley COL_THR: Up(y) != LastUp(y)!\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"SizeObject: type(z) != SCALE!\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"SizeObject: bc(constraint(z)) != 0\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"SizeObject SCALE: Down(z) == z!\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s with unspecified scale factor in horizontal galley\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"replacing infinite scale factor (unconstrained width) by 1.0\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"replacing infinite scale factor (zero width object) by 1.0\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"replacing very large scale factor (over 100) by 1.0\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"object deleted (scale factor is zero)\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"object deleted (scale factor is smaller than 0.01)\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GalleySym = external global %union.rec*, align 8
@ForceGalleySym = external global %union.rec*, align 8
@InputSym = external global %union.rec*, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"%s replaced by %s (mark not shared)\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"%s replaced by %s (infinite scale factor)\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"%s replaced by %s (zero scale factor)\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"%s replaced by %s (insufficient space)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"SizeGalley:\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"SizeG: extras!\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"unexpected absence of %s from the body of %s\00", align 1

; Function Attrs: nounwind uwtable
define void @SizeGalley(%union.rec* %hd, %union.rec* %env, i32 %rows, i32 %joined, i32 %nonblock, i32 %trig, %struct.STYLE* %style, %struct.CONSTRAINT* %c, %union.rec* %target, %union.rec** %dest_index, %union.rec** %recs, %union.rec** %inners, %union.rec* %enclose) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.STYLE*, align 8
  %8 = alloca %struct.CONSTRAINT*, align 8
  %9 = alloca %union.rec*, align 8
  %10 = alloca %union.rec**, align 8
  %11 = alloca %union.rec**, align 8
  %12 = alloca %union.rec**, align 8
  %13 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %crs = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %why = alloca %union.rec*, align 8
  %extras = alloca %union.rec*, align 8
  %tmp1 = alloca %union.rec*, align 8
  %tmp2 = alloca %union.rec*, align 8
  %bt = alloca [2 x %union.rec*], align 16
  %ft = alloca [2 x %union.rec*], align 16
  %hold_env = alloca %union.rec*, align 8
  %after_target = alloca i32, align 4
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %xxstart1 = alloca %union.rec*, align 8
  %xxstop2 = alloca %union.rec*, align 8
  %xxdest3 = alloca %union.rec*, align 8
  %hor = alloca %union.rec*, align 8
  %thor = alloca %union.rec*, align 8
  %clink = alloca %union.rec*, align 8
  %dlink = alloca %union.rec*, align 8
  %zc = alloca %struct.CONSTRAINT, align 4
  %t4 = alloca %union.rec*, align 8
  %b = alloca i32, align 4
  %f = alloca i32, align 4
  %cover = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %chld = alloca %union.rec*, align 8
  %dirn = alloca i32, align 4
  %thr_type = alloca i32, align 4
  %ok1 = alloca i32, align 4
  %ok2 = alloca i32, align 4
  %sf = alloca i32, align 4
  %subst = alloca i32, align 4
  %esubst = alloca i32, align 4
  %sf1 = alloca float, align 4
  %sf2 = alloca float, align 4
  %c5 = alloca %struct.CONSTRAINT, align 4
  %b6 = alloca i32, align 4
  %f7 = alloca i32, align 4
  %xxstart8 = alloca %union.rec*, align 8
  %xxstop9 = alloca %union.rec*, align 8
  %xxdest10 = alloca %union.rec*, align 8
  %xxstart11 = alloca %union.rec*, align 8
  %xxstop12 = alloca %union.rec*, align 8
  %xxdest13 = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %1, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %joined, i32* %4, align 4
  store i32 %nonblock, i32* %5, align 4
  store i32 %trig, i32* %6, align 4
  store %struct.STYLE* %style, %struct.STYLE** %7, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %8, align 8
  store %union.rec* %target, %union.rec** %9, align 8
  store %union.rec** %dest_index, %union.rec*** %10, align 8
  store %union.rec** %recs, %union.rec*** %11, align 8
  store %union.rec** %inners, %union.rec*** %12, align 8
  store %union.rec* %enclose, %union.rec** %13, align 8
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 1
  %17 = bitcast %union.FIRST_UNION* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %31

; <label>:22                                      ; preds = %0
  %23 = load %union.rec*, %union.rec** %1, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %27, align 8
  %29 = load %union.rec*, %union.rec** %1, align 8
  %30 = icmp ne %union.rec* %28, %29
  br i1 %30, label %34, label %31

; <label>:31                                      ; preds = %22, %0
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %33 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %34

; <label>:34                                      ; preds = %31, %22
  %35 = load %union.rec*, %union.rec** %1, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 2
  %38 = bitcast %union.SECOND_UNION* %37 to %struct.anon.2*
  %39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 2
  %40 = load i16, i16* %39, align 2
  %41 = lshr i16 %40, 1
  %42 = and i16 %41, 1
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %34
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %47 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %48

; <label>:48                                      ; preds = %45, %34
  %49 = load %union.rec*, %union.rec** %1, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %51, i32 0, i64 0
  %53 = getelementptr inbounds %struct.LIST, %struct.LIST* %52, i32 0, i32 1
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** %y, align 8
  br label %60

; <label>:60                                      ; preds = %70, %48
  %61 = load %union.rec*, %union.rec** %y, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 1
  %64 = bitcast %union.FIRST_UNION* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %60
  br label %70

; <label>:70                                      ; preds = %69
  %71 = load %union.rec*, %union.rec** %y, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 1
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %75, align 8
  store %union.rec* %76, %union.rec** %y, align 8
  br label %60

; <label>:77                                      ; preds = %60
  %78 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %78, %union.rec** %tmp1, align 8
  %79 = load %union.rec*, %union.rec** %13, align 8
  store %union.rec* %79, %union.rec** %tmp2, align 8
  store %union.rec* null, %union.rec** %crs, align 8
  %80 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 1
  store %union.rec* null, %union.rec** %80, align 8
  %81 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 1
  store %union.rec* null, %union.rec** %81, align 8
  %82 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  store %union.rec* null, %union.rec** %82, align 8
  %83 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  store %union.rec* null, %union.rec** %83, align 8
  %84 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* @zz_size, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp uge i64 %86, 265
  br i1 %87, label %88, label %91

; <label>:88                                      ; preds = %77
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %90 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %89)
  br label %116

; <label>:91                                      ; preds = %77
  %92 = load i32, i32* @zz_size, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %93
  %95 = load %union.rec*, %union.rec** %94, align 8
  %96 = icmp eq %union.rec* %95, null
  br i1 %96, label %97, label %101

; <label>:97                                      ; preds = %91
  %98 = load i32, i32* @zz_size, align 4
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %100 = call %union.rec* @GetMemory(i32 %98, %struct.FILE_POS* %99)
  store %union.rec* %100, %union.rec** @zz_hold, align 8
  br label %115

; <label>:101                                     ; preds = %91
  %102 = load i32, i32* @zz_size, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %103
  %105 = load %union.rec*, %union.rec** %104, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 0
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %110, align 8
  %112 = load i32, i32* @zz_size, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %113
  store %union.rec* %111, %union.rec** %114, align 8
  br label %115

; <label>:115                                     ; preds = %101, %97
  br label %116

; <label>:116                                     ; preds = %115, %88
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 1
  %120 = bitcast %union.FIRST_UNION* %119 to %struct.anon*
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 0
  store i8 17, i8* %121, align 1
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 1
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 1
  store %union.rec* %122, %union.rec** %127, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 1
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 0
  store %union.rec* %122, %union.rec** %132, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 0
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 1
  store %union.rec* %122, %union.rec** %137, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 0
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 0
  store %union.rec* %122, %union.rec** %142, align 8
  store %union.rec* %122, %union.rec** %hold_env, align 8
  %143 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %144 = zext i8 %143 to i32
  store i32 %144, i32* @zz_size, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp uge i64 %145, 265
  br i1 %146, label %147, label %150

; <label>:147                                     ; preds = %116
  %148 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %148)
  br label %175

; <label>:150                                     ; preds = %116
  %151 = load i32, i32* @zz_size, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %152
  %154 = load %union.rec*, %union.rec** %153, align 8
  %155 = icmp eq %union.rec* %154, null
  br i1 %155, label %156, label %160

; <label>:156                                     ; preds = %150
  %157 = load i32, i32* @zz_size, align 4
  %158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %159 = call %union.rec* @GetMemory(i32 %157, %struct.FILE_POS* %158)
  store %union.rec* %159, %union.rec** @zz_hold, align 8
  br label %174

; <label>:160                                     ; preds = %150
  %161 = load i32, i32* @zz_size, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %162
  %164 = load %union.rec*, %union.rec** %163, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 0
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %169, align 8
  %171 = load i32, i32* @zz_size, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %172
  store %union.rec* %170, %union.rec** %173, align 8
  br label %174

; <label>:174                                     ; preds = %160, %156
  br label %175

; <label>:175                                     ; preds = %174, %147
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 1
  %179 = bitcast %union.FIRST_UNION* %178 to %struct.anon*
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  store i8 0, i8* %180, align 1
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 1
  store %union.rec* %181, %union.rec** %186, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 0
  %190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %189, i32 0, i64 1
  %191 = getelementptr inbounds %struct.LIST, %struct.LIST* %190, i32 0, i32 0
  store %union.rec* %181, %union.rec** %191, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 0
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 1
  store %union.rec* %181, %union.rec** %196, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 0
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 0
  store %union.rec* %181, %union.rec** %201, align 8
  store %union.rec* %181, %union.rec** @xx_link, align 8
  %202 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %202, %union.rec** @zz_res, align 8
  %203 = load %union.rec*, %union.rec** %hold_env, align 8
  store %union.rec* %203, %union.rec** @zz_hold, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = icmp eq %union.rec* %204, null
  br i1 %205, label %206, label %208

; <label>:206                                     ; preds = %175
  %207 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %256

; <label>:208                                     ; preds = %175
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = icmp eq %union.rec* %209, null
  br i1 %210, label %211, label %213

; <label>:211                                     ; preds = %208
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %254

; <label>:213                                     ; preds = %208
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 0
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %218, align 8
  store %union.rec* %219, %union.rec** @zz_tmp, align 8
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %222, i32 0, i64 0
  %224 = getelementptr inbounds %struct.LIST, %struct.LIST* %223, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %224, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 0
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 0
  store %union.rec* %225, %union.rec** %230, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %233 = bitcast %union.rec* %232 to %struct.word_type*
  %234 = getelementptr inbounds %struct.word_type, %struct.word_type* %233, i32 0, i32 0
  %235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %234, i32 0, i64 0
  %236 = getelementptr inbounds %struct.LIST, %struct.LIST* %235, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %236, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 0
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 1
  store %union.rec* %231, %union.rec** %241, align 8
  %242 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 0
  %246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %245, i32 0, i64 0
  %247 = getelementptr inbounds %struct.LIST, %struct.LIST* %246, i32 0, i32 0
  store %union.rec* %242, %union.rec** %247, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %249 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 0
  %252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %251, i32 0, i64 0
  %253 = getelementptr inbounds %struct.LIST, %struct.LIST* %252, i32 0, i32 1
  store %union.rec* %248, %union.rec** %253, align 8
  br label %254

; <label>:254                                     ; preds = %213, %211
  %255 = phi %union.rec* [ %212, %211 ], [ %248, %213 ]
  br label %256

; <label>:256                                     ; preds = %254, %206
  %257 = phi %union.rec* [ %207, %206 ], [ %255, %254 ]
  %258 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %258, %union.rec** @zz_res, align 8
  %259 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %259, %union.rec** @zz_hold, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = icmp eq %union.rec* %260, null
  br i1 %261, label %262, label %264

; <label>:262                                     ; preds = %256
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %312

; <label>:264                                     ; preds = %256
  %265 = load %union.rec*, %union.rec** @zz_res, align 8
  %266 = icmp eq %union.rec* %265, null
  br i1 %266, label %267, label %269

; <label>:267                                     ; preds = %264
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %310

; <label>:269                                     ; preds = %264
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = bitcast %union.rec* %270 to %struct.word_type*
  %272 = getelementptr inbounds %struct.word_type, %struct.word_type* %271, i32 0, i32 0
  %273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %272, i32 0, i64 1
  %274 = getelementptr inbounds %struct.LIST, %struct.LIST* %273, i32 0, i32 0
  %275 = load %union.rec*, %union.rec** %274, align 8
  store %union.rec* %275, %union.rec** @zz_tmp, align 8
  %276 = load %union.rec*, %union.rec** @zz_res, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 0
  %279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %278, i32 0, i64 1
  %280 = getelementptr inbounds %struct.LIST, %struct.LIST* %279, i32 0, i32 0
  %281 = load %union.rec*, %union.rec** %280, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %283 = bitcast %union.rec* %282 to %struct.word_type*
  %284 = getelementptr inbounds %struct.word_type, %struct.word_type* %283, i32 0, i32 0
  %285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %284, i32 0, i64 1
  %286 = getelementptr inbounds %struct.LIST, %struct.LIST* %285, i32 0, i32 0
  store %union.rec* %281, %union.rec** %286, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %290, i32 0, i64 1
  %292 = getelementptr inbounds %struct.LIST, %struct.LIST* %291, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %292, align 8
  %294 = bitcast %union.rec* %293 to %struct.word_type*
  %295 = getelementptr inbounds %struct.word_type, %struct.word_type* %294, i32 0, i32 0
  %296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %295, i32 0, i64 1
  %297 = getelementptr inbounds %struct.LIST, %struct.LIST* %296, i32 0, i32 1
  store %union.rec* %287, %union.rec** %297, align 8
  %298 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 0
  %302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %301, i32 0, i64 1
  %303 = getelementptr inbounds %struct.LIST, %struct.LIST* %302, i32 0, i32 0
  store %union.rec* %298, %union.rec** %303, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %305 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 1
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 1
  store %union.rec* %304, %union.rec** %309, align 8
  br label %310

; <label>:310                                     ; preds = %269, %267
  %311 = phi %union.rec* [ %268, %267 ], [ %304, %269 ]
  br label %312

; <label>:312                                     ; preds = %310, %262
  %313 = phi %union.rec* [ %263, %262 ], [ %311, %310 ]
  %314 = load i32, i32* @AllowCrossDb, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %345

; <label>:316                                     ; preds = %312
  %317 = load %union.rec*, %union.rec** %y, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 1
  %320 = bitcast %union.FIRST_UNION* %319 to %struct.anon*
  %321 = getelementptr inbounds %struct.anon, %struct.anon* %320, i32 0, i32 0
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %345

; <label>:325                                     ; preds = %316
  %326 = load %union.rec*, %union.rec** %y, align 8
  %327 = bitcast %union.rec* %326 to %struct.closure_type*
  %328 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %327, i32 0, i32 5
  %329 = load %union.rec*, %union.rec** %328, align 8
  %330 = bitcast %union.rec* %329 to %struct.symbol_type*
  %331 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %330, i32 0, i32 16
  %332 = load i8, i8* %331, align 2
  %333 = lshr i8 %332, 1
  %334 = and i8 %333, 1
  %335 = zext i8 %334 to i32
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

; <label>:337                                     ; preds = %325
  %338 = load %union.rec*, %union.rec** %y, align 8
  %339 = load %union.rec*, %union.rec** %2, align 8
  %340 = call i32 @FindOptimize(%union.rec* %338, %union.rec* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

; <label>:342                                     ; preds = %337
  %343 = load %union.rec*, %union.rec** %1, align 8
  %344 = load %struct.STYLE*, %struct.STYLE** %7, align 8
  call void @SetOptimize(%union.rec* %343, %struct.STYLE* %344)
  br label %345

; <label>:345                                     ; preds = %342, %337, %325, %316, %312
  %346 = load i32, i32* %4, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %622

; <label>:348                                     ; preds = %345
  %349 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 139), align 1
  %350 = zext i8 %349 to i32
  store i32 %350, i32* @zz_size, align 4
  %351 = sext i32 %350 to i64
  %352 = icmp uge i64 %351, 265
  br i1 %352, label %353, label %356

; <label>:353                                     ; preds = %348
  %354 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %355 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %354)
  br label %381

; <label>:356                                     ; preds = %348
  %357 = load i32, i32* @zz_size, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %358
  %360 = load %union.rec*, %union.rec** %359, align 8
  %361 = icmp eq %union.rec* %360, null
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %356
  %363 = load i32, i32* @zz_size, align 4
  %364 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %365 = call %union.rec* @GetMemory(i32 %363, %struct.FILE_POS* %364)
  store %union.rec* %365, %union.rec** @zz_hold, align 8
  br label %380

; <label>:366                                     ; preds = %356
  %367 = load i32, i32* @zz_size, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %368
  %370 = load %union.rec*, %union.rec** %369, align 8
  store %union.rec* %370, %union.rec** @zz_hold, align 8
  store %union.rec* %370, %union.rec** @zz_hold, align 8
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 0
  %374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %373, i32 0, i64 0
  %375 = getelementptr inbounds %struct.LIST, %struct.LIST* %374, i32 0, i32 0
  %376 = load %union.rec*, %union.rec** %375, align 8
  %377 = load i32, i32* @zz_size, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %378
  store %union.rec* %376, %union.rec** %379, align 8
  br label %380

; <label>:380                                     ; preds = %366, %362
  br label %381

; <label>:381                                     ; preds = %380, %353
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 1
  %385 = bitcast %union.FIRST_UNION* %384 to %struct.anon*
  %386 = getelementptr inbounds %struct.anon, %struct.anon* %385, i32 0, i32 0
  store i8 -117, i8* %386, align 1
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 0
  %391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %390, i32 0, i64 1
  %392 = getelementptr inbounds %struct.LIST, %struct.LIST* %391, i32 0, i32 1
  store %union.rec* %387, %union.rec** %392, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 0
  %396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %395, i32 0, i64 1
  %397 = getelementptr inbounds %struct.LIST, %struct.LIST* %396, i32 0, i32 0
  store %union.rec* %387, %union.rec** %397, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 0
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 1
  store %union.rec* %387, %union.rec** %402, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 0
  %406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %405, i32 0, i64 0
  %407 = getelementptr inbounds %struct.LIST, %struct.LIST* %406, i32 0, i32 0
  store %union.rec* %387, %union.rec** %407, align 8
  %408 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  store %union.rec* %387, %union.rec** %408, align 8
  %409 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 139), align 1
  %410 = zext i8 %409 to i32
  store i32 %410, i32* @zz_size, align 4
  %411 = sext i32 %410 to i64
  %412 = icmp uge i64 %411, 265
  br i1 %412, label %413, label %416

; <label>:413                                     ; preds = %381
  %414 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %415 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %414)
  br label %441

; <label>:416                                     ; preds = %381
  %417 = load i32, i32* @zz_size, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %418
  %420 = load %union.rec*, %union.rec** %419, align 8
  %421 = icmp eq %union.rec* %420, null
  br i1 %421, label %422, label %426

; <label>:422                                     ; preds = %416
  %423 = load i32, i32* @zz_size, align 4
  %424 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %425 = call %union.rec* @GetMemory(i32 %423, %struct.FILE_POS* %424)
  store %union.rec* %425, %union.rec** @zz_hold, align 8
  br label %440

; <label>:426                                     ; preds = %416
  %427 = load i32, i32* @zz_size, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %428
  %430 = load %union.rec*, %union.rec** %429, align 8
  store %union.rec* %430, %union.rec** @zz_hold, align 8
  store %union.rec* %430, %union.rec** @zz_hold, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 0
  %434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %433, i32 0, i64 0
  %435 = getelementptr inbounds %struct.LIST, %struct.LIST* %434, i32 0, i32 0
  %436 = load %union.rec*, %union.rec** %435, align 8
  %437 = load i32, i32* @zz_size, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %438
  store %union.rec* %436, %union.rec** %439, align 8
  br label %440

; <label>:440                                     ; preds = %426, %422
  br label %441

; <label>:441                                     ; preds = %440, %413
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %443 = bitcast %union.rec* %442 to %struct.word_type*
  %444 = getelementptr inbounds %struct.word_type, %struct.word_type* %443, i32 0, i32 1
  %445 = bitcast %union.FIRST_UNION* %444 to %struct.anon*
  %446 = getelementptr inbounds %struct.anon, %struct.anon* %445, i32 0, i32 0
  store i8 -117, i8* %446, align 1
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %450, i32 0, i64 1
  %452 = getelementptr inbounds %struct.LIST, %struct.LIST* %451, i32 0, i32 1
  store %union.rec* %447, %union.rec** %452, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %454 = bitcast %union.rec* %453 to %struct.word_type*
  %455 = getelementptr inbounds %struct.word_type, %struct.word_type* %454, i32 0, i32 0
  %456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %455, i32 0, i64 1
  %457 = getelementptr inbounds %struct.LIST, %struct.LIST* %456, i32 0, i32 0
  store %union.rec* %447, %union.rec** %457, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %459 = bitcast %union.rec* %458 to %struct.word_type*
  %460 = getelementptr inbounds %struct.word_type, %struct.word_type* %459, i32 0, i32 0
  %461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %460, i32 0, i64 0
  %462 = getelementptr inbounds %struct.LIST, %struct.LIST* %461, i32 0, i32 1
  store %union.rec* %447, %union.rec** %462, align 8
  %463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %464 = bitcast %union.rec* %463 to %struct.word_type*
  %465 = getelementptr inbounds %struct.word_type, %struct.word_type* %464, i32 0, i32 0
  %466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %465, i32 0, i64 0
  %467 = getelementptr inbounds %struct.LIST, %struct.LIST* %466, i32 0, i32 0
  store %union.rec* %447, %union.rec** %467, align 8
  %468 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  store %union.rec* %447, %union.rec** %468, align 8
  %469 = load %union.rec*, %union.rec** %y, align 8
  %470 = load %union.rec*, %union.rec** %2, align 8
  %471 = load %struct.STYLE*, %struct.STYLE** %7, align 8
  %472 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i32 0
  %473 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i32 0
  %474 = load %union.rec*, %union.rec** %1, align 8
  %475 = bitcast %union.rec* %474 to %struct.word_type*
  %476 = getelementptr inbounds %struct.word_type, %struct.word_type* %475, i32 0, i32 2
  %477 = bitcast %union.SECOND_UNION* %476 to %struct.anon.2*
  %478 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %477, i32 0, i32 2
  %479 = load i16, i16* %478, align 2
  %480 = lshr i16 %479, 7
  %481 = and i16 %480, 1
  %482 = zext i16 %481 to i32
  %483 = call %union.rec* @Manifest(%union.rec* %469, %union.rec* %470, %struct.STYLE* %471, %union.rec** %472, %union.rec** %473, %union.rec** %tmp1, %union.rec** %crs, i32 1, i32 %482, %union.rec** %tmp2, i32 0)
  store %union.rec* %483, %union.rec** %y, align 8
  %484 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %485 = load %union.rec*, %union.rec** %484, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 0
  %488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %487, i32 0, i64 0
  %489 = getelementptr inbounds %struct.LIST, %struct.LIST* %488, i32 0, i32 1
  %490 = load %union.rec*, %union.rec** %489, align 8
  %491 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %492 = load %union.rec*, %union.rec** %491, align 8
  %493 = icmp ne %union.rec* %490, %492
  br i1 %493, label %494, label %505

; <label>:494                                     ; preds = %441
  %495 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %496 = load %union.rec*, %union.rec** %495, align 8
  %497 = bitcast %union.rec* %496 to %struct.word_type*
  %498 = getelementptr inbounds %struct.word_type, %struct.word_type* %497, i32 0, i32 0
  %499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %498, i32 0, i64 0
  %500 = getelementptr inbounds %struct.LIST, %struct.LIST* %499, i32 0, i32 1
  %501 = load %union.rec*, %union.rec** %500, align 8
  %502 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %503 = load %union.rec*, %union.rec** %502, align 8
  %504 = icmp ne %union.rec* %501, %503
  br i1 %504, label %508, label %505

; <label>:505                                     ; preds = %494, %441
  %506 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %507 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %506, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  br label %508

; <label>:508                                     ; preds = %505, %494
  %509 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %510 = load %union.rec*, %union.rec** %509, align 8
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 0
  %513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %512, i32 0, i64 0
  %514 = getelementptr inbounds %struct.LIST, %struct.LIST* %513, i32 0, i32 1
  %515 = load %union.rec*, %union.rec** %514, align 8
  %516 = bitcast %union.rec* %515 to %struct.word_type*
  %517 = getelementptr inbounds %struct.word_type, %struct.word_type* %516, i32 0, i32 0
  %518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %517, i32 0, i64 1
  %519 = getelementptr inbounds %struct.LIST, %struct.LIST* %518, i32 0, i32 0
  %520 = load %union.rec*, %union.rec** %519, align 8
  store %union.rec* %520, %union.rec** %tmp1, align 8
  br label %521

; <label>:521                                     ; preds = %531, %508
  %522 = load %union.rec*, %union.rec** %tmp1, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 1
  %525 = bitcast %union.FIRST_UNION* %524 to %struct.anon*
  %526 = getelementptr inbounds %struct.anon, %struct.anon* %525, i32 0, i32 0
  %527 = load i8, i8* %526, align 1
  %528 = zext i8 %527 to i32
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %538

; <label>:530                                     ; preds = %521
  br label %531

; <label>:531                                     ; preds = %530
  %532 = load %union.rec*, %union.rec** %tmp1, align 8
  %533 = bitcast %union.rec* %532 to %struct.word_type*
  %534 = getelementptr inbounds %struct.word_type, %struct.word_type* %533, i32 0, i32 0
  %535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %534, i32 0, i64 1
  %536 = getelementptr inbounds %struct.LIST, %struct.LIST* %535, i32 0, i32 0
  %537 = load %union.rec*, %union.rec** %536, align 8
  store %union.rec* %537, %union.rec** %tmp1, align 8
  br label %521

; <label>:538                                     ; preds = %521
  %539 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %540 = load %union.rec*, %union.rec** %539, align 8
  %541 = bitcast %union.rec* %540 to %struct.word_type*
  %542 = getelementptr inbounds %struct.word_type, %struct.word_type* %541, i32 0, i32 0
  %543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %542, i32 0, i64 0
  %544 = getelementptr inbounds %struct.LIST, %struct.LIST* %543, i32 0, i32 1
  %545 = load %union.rec*, %union.rec** %544, align 8
  %546 = bitcast %union.rec* %545 to %struct.word_type*
  %547 = getelementptr inbounds %struct.word_type, %struct.word_type* %546, i32 0, i32 0
  %548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %547, i32 0, i64 1
  %549 = getelementptr inbounds %struct.LIST, %struct.LIST* %548, i32 0, i32 0
  %550 = load %union.rec*, %union.rec** %549, align 8
  store %union.rec* %550, %union.rec** %tmp2, align 8
  br label %551

; <label>:551                                     ; preds = %561, %538
  %552 = load %union.rec*, %union.rec** %tmp2, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 1
  %555 = bitcast %union.FIRST_UNION* %554 to %struct.anon*
  %556 = getelementptr inbounds %struct.anon, %struct.anon* %555, i32 0, i32 0
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %568

; <label>:560                                     ; preds = %551
  br label %561

; <label>:561                                     ; preds = %560
  %562 = load %union.rec*, %union.rec** %tmp2, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 1
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  %567 = load %union.rec*, %union.rec** %566, align 8
  store %union.rec* %567, %union.rec** %tmp2, align 8
  br label %551

; <label>:568                                     ; preds = %551
  %569 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %570 = load %union.rec*, %union.rec** %569, align 8
  %571 = bitcast %union.rec* %570 to %struct.word_type*
  %572 = getelementptr inbounds %struct.word_type, %struct.word_type* %571, i32 0, i32 0
  %573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %572, i32 0, i64 0
  %574 = getelementptr inbounds %struct.LIST, %struct.LIST* %573, i32 0, i32 1
  %575 = load %union.rec*, %union.rec** %574, align 8
  %576 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %577 = load %union.rec*, %union.rec** %576, align 8
  %578 = bitcast %union.rec* %577 to %struct.word_type*
  %579 = getelementptr inbounds %struct.word_type, %struct.word_type* %578, i32 0, i32 0
  %580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %579, i32 0, i64 0
  %581 = getelementptr inbounds %struct.LIST, %struct.LIST* %580, i32 0, i32 0
  %582 = load %union.rec*, %union.rec** %581, align 8
  %583 = icmp ne %union.rec* %575, %582
  br i1 %583, label %604, label %584

; <label>:584                                     ; preds = %568
  %585 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %586 = load %union.rec*, %union.rec** %585, align 8
  %587 = bitcast %union.rec* %586 to %struct.word_type*
  %588 = getelementptr inbounds %struct.word_type, %struct.word_type* %587, i32 0, i32 0
  %589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %588, i32 0, i64 0
  %590 = getelementptr inbounds %struct.LIST, %struct.LIST* %589, i32 0, i32 1
  %591 = load %union.rec*, %union.rec** %590, align 8
  %592 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %593 = load %union.rec*, %union.rec** %592, align 8
  %594 = bitcast %union.rec* %593 to %struct.word_type*
  %595 = getelementptr inbounds %struct.word_type, %struct.word_type* %594, i32 0, i32 0
  %596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %595, i32 0, i64 0
  %597 = getelementptr inbounds %struct.LIST, %struct.LIST* %596, i32 0, i32 0
  %598 = load %union.rec*, %union.rec** %597, align 8
  %599 = icmp ne %union.rec* %591, %598
  br i1 %599, label %604, label %600

; <label>:600                                     ; preds = %584
  %601 = load %union.rec*, %union.rec** %tmp1, align 8
  %602 = load %union.rec*, %union.rec** %tmp2, align 8
  %603 = icmp ne %union.rec* %601, %602
  br i1 %603, label %604, label %615

; <label>:604                                     ; preds = %600, %584, %568
  %605 = load %union.rec*, %union.rec** %y, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 1
  %608 = bitcast %union.FIRST_UNION* %607 to %struct.FILE_POS*
  %609 = load %union.rec*, %union.rec** %1, align 8
  %610 = bitcast %union.rec* %609 to %struct.closure_type*
  %611 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %610, i32 0, i32 5
  %612 = load %union.rec*, %union.rec** %611, align 8
  %613 = call i8* @SymName(%union.rec* %612)
  %614 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %608, i8* %613)
  br label %615

; <label>:615                                     ; preds = %604, %600
  %616 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %617 = load %union.rec*, %union.rec** %616, align 8
  %618 = call i32 @DisposeObject(%union.rec* %617)
  %619 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %620 = load %union.rec*, %union.rec** %619, align 8
  %621 = call i32 @DisposeObject(%union.rec* %620)
  br label %638

; <label>:622                                     ; preds = %345
  %623 = load %union.rec*, %union.rec** %y, align 8
  %624 = load %union.rec*, %union.rec** %2, align 8
  %625 = load %struct.STYLE*, %struct.STYLE** %7, align 8
  %626 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i32 0
  %627 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i32 0
  %628 = load %union.rec*, %union.rec** %1, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 2
  %631 = bitcast %union.SECOND_UNION* %630 to %struct.anon.2*
  %632 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %631, i32 0, i32 2
  %633 = load i16, i16* %632, align 2
  %634 = lshr i16 %633, 7
  %635 = and i16 %634, 1
  %636 = zext i16 %635 to i32
  %637 = call %union.rec* @Manifest(%union.rec* %623, %union.rec* %624, %struct.STYLE* %625, %union.rec** %626, %union.rec** %627, %union.rec** %tmp1, %union.rec** %crs, i32 1, i32 %636, %union.rec** %tmp2, i32 0)
  store %union.rec* %637, %union.rec** %y, align 8
  br label %638

; <label>:638                                     ; preds = %622, %615
  %639 = load %union.rec*, %union.rec** %hold_env, align 8
  %640 = call i32 @DisposeObject(%union.rec* %639)
  %641 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %642 = zext i8 %641 to i32
  store i32 %642, i32* @zz_size, align 4
  %643 = sext i32 %642 to i64
  %644 = icmp uge i64 %643, 265
  br i1 %644, label %645, label %648

; <label>:645                                     ; preds = %638
  %646 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %647 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %646)
  br label %673

; <label>:648                                     ; preds = %638
  %649 = load i32, i32* @zz_size, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %650
  %652 = load %union.rec*, %union.rec** %651, align 8
  %653 = icmp eq %union.rec* %652, null
  br i1 %653, label %654, label %658

; <label>:654                                     ; preds = %648
  %655 = load i32, i32* @zz_size, align 4
  %656 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %657 = call %union.rec* @GetMemory(i32 %655, %struct.FILE_POS* %656)
  store %union.rec* %657, %union.rec** @zz_hold, align 8
  br label %672

; <label>:658                                     ; preds = %648
  %659 = load i32, i32* @zz_size, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %660
  %662 = load %union.rec*, %union.rec** %661, align 8
  store %union.rec* %662, %union.rec** @zz_hold, align 8
  store %union.rec* %662, %union.rec** @zz_hold, align 8
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %664 = bitcast %union.rec* %663 to %struct.word_type*
  %665 = getelementptr inbounds %struct.word_type, %struct.word_type* %664, i32 0, i32 0
  %666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %665, i32 0, i64 0
  %667 = getelementptr inbounds %struct.LIST, %struct.LIST* %666, i32 0, i32 0
  %668 = load %union.rec*, %union.rec** %667, align 8
  %669 = load i32, i32* @zz_size, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %670
  store %union.rec* %668, %union.rec** %671, align 8
  br label %672

; <label>:672                                     ; preds = %658, %654
  br label %673

; <label>:673                                     ; preds = %672, %645
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %675 = bitcast %union.rec* %674 to %struct.word_type*
  %676 = getelementptr inbounds %struct.word_type, %struct.word_type* %675, i32 0, i32 1
  %677 = bitcast %union.FIRST_UNION* %676 to %struct.anon*
  %678 = getelementptr inbounds %struct.anon, %struct.anon* %677, i32 0, i32 0
  store i8 17, i8* %678, align 1
  %679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %681 = bitcast %union.rec* %680 to %struct.word_type*
  %682 = getelementptr inbounds %struct.word_type, %struct.word_type* %681, i32 0, i32 0
  %683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %682, i32 0, i64 1
  %684 = getelementptr inbounds %struct.LIST, %struct.LIST* %683, i32 0, i32 1
  store %union.rec* %679, %union.rec** %684, align 8
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %686 = bitcast %union.rec* %685 to %struct.word_type*
  %687 = getelementptr inbounds %struct.word_type, %struct.word_type* %686, i32 0, i32 0
  %688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %687, i32 0, i64 1
  %689 = getelementptr inbounds %struct.LIST, %struct.LIST* %688, i32 0, i32 0
  store %union.rec* %679, %union.rec** %689, align 8
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %691 = bitcast %union.rec* %690 to %struct.word_type*
  %692 = getelementptr inbounds %struct.word_type, %struct.word_type* %691, i32 0, i32 0
  %693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %692, i32 0, i64 0
  %694 = getelementptr inbounds %struct.LIST, %struct.LIST* %693, i32 0, i32 1
  store %union.rec* %679, %union.rec** %694, align 8
  %695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %696 = bitcast %union.rec* %695 to %struct.word_type*
  %697 = getelementptr inbounds %struct.word_type, %struct.word_type* %696, i32 0, i32 0
  %698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %697, i32 0, i64 0
  %699 = getelementptr inbounds %struct.LIST, %struct.LIST* %698, i32 0, i32 0
  store %union.rec* %679, %union.rec** %699, align 8
  store %union.rec* %679, %union.rec** %extras, align 8
  %700 = load %union.rec*, %union.rec** %y, align 8
  %701 = call %union.rec* @MinSize(%union.rec* %700, i32 0, %union.rec** %extras)
  store %union.rec* %701, %union.rec** %y, align 8
  %702 = load %union.rec*, %union.rec** %1, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 2
  %705 = bitcast %union.SECOND_UNION* %704 to %struct.anon.2*
  %706 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %705, i32 0, i32 2
  %707 = load i16, i16* %706, align 2
  %708 = lshr i16 %707, 8
  %709 = and i16 %708, 1
  %710 = zext i16 %709 to i32
  %711 = icmp eq i32 %710, 1
  br i1 %711, label %712, label %879

; <label>:712                                     ; preds = %673
  %713 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %714 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 4
  %716 = load %union.rec*, %union.rec** %1, align 8
  %717 = bitcast %union.rec* %716 to %struct.closure_type*
  %718 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %717, i32 0, i32 4
  %719 = bitcast %union.FOURTH_UNION* %718 to %struct.CONSTRAINT*
  %720 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %719, i32 0, i32 0
  store i32 %715, i32* %720, align 4
  %721 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %722 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  %724 = load %union.rec*, %union.rec** %1, align 8
  %725 = bitcast %union.rec* %724 to %struct.closure_type*
  %726 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %725, i32 0, i32 4
  %727 = bitcast %union.FOURTH_UNION* %726 to %struct.CONSTRAINT*
  %728 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %727, i32 0, i32 1
  store i32 %723, i32* %728, align 4
  %729 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %730 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %729, i32 0, i32 2
  %731 = load i32, i32* %730, align 4
  %732 = load %union.rec*, %union.rec** %1, align 8
  %733 = bitcast %union.rec* %732 to %struct.closure_type*
  %734 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %733, i32 0, i32 4
  %735 = bitcast %union.FOURTH_UNION* %734 to %struct.CONSTRAINT*
  %736 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %735, i32 0, i32 2
  store i32 %731, i32* %736, align 4
  %737 = load %union.rec*, %union.rec** %y, align 8
  %738 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %739 = call %union.rec* @BreakObject(%union.rec* %737, %struct.CONSTRAINT* %738)
  store %union.rec* %739, %union.rec** %y, align 8
  %740 = load %union.rec*, %union.rec** %y, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 3
  %743 = bitcast %union.THIRD_UNION* %742 to %struct.anon.6*
  %744 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x i32], [2 x i32]* %744, i32 0, i64 0
  %746 = load i32, i32* %745, align 4
  %747 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %748 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %747, i32 0, i32 0
  %749 = load i32, i32* %748, align 4
  %750 = icmp sle i32 %746, %749
  br i1 %750, label %751, label %783

; <label>:751                                     ; preds = %712
  %752 = load %union.rec*, %union.rec** %y, align 8
  %753 = bitcast %union.rec* %752 to %struct.word_type*
  %754 = getelementptr inbounds %struct.word_type, %struct.word_type* %753, i32 0, i32 3
  %755 = bitcast %union.THIRD_UNION* %754 to %struct.anon.6*
  %756 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %755, i32 0, i32 0
  %757 = getelementptr inbounds [2 x i32], [2 x i32]* %756, i32 0, i64 0
  %758 = load i32, i32* %757, align 4
  %759 = load %union.rec*, %union.rec** %y, align 8
  %760 = bitcast %union.rec* %759 to %struct.word_type*
  %761 = getelementptr inbounds %struct.word_type, %struct.word_type* %760, i32 0, i32 3
  %762 = bitcast %union.THIRD_UNION* %761 to %struct.anon.6*
  %763 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %762, i32 0, i32 1
  %764 = getelementptr inbounds [2 x i32], [2 x i32]* %763, i32 0, i64 0
  %765 = load i32, i32* %764, align 4
  %766 = add nsw i32 %758, %765
  %767 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %768 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %767, i32 0, i32 1
  %769 = load i32, i32* %768, align 4
  %770 = icmp sle i32 %766, %769
  br i1 %770, label %771, label %783

; <label>:771                                     ; preds = %751
  %772 = load %union.rec*, %union.rec** %y, align 8
  %773 = bitcast %union.rec* %772 to %struct.word_type*
  %774 = getelementptr inbounds %struct.word_type, %struct.word_type* %773, i32 0, i32 3
  %775 = bitcast %union.THIRD_UNION* %774 to %struct.anon.6*
  %776 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %775, i32 0, i32 1
  %777 = getelementptr inbounds [2 x i32], [2 x i32]* %776, i32 0, i64 0
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %780 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %779, i32 0, i32 2
  %781 = load i32, i32* %780, align 4
  %782 = icmp sle i32 %778, %781
  br i1 %782, label %805, label %783

; <label>:783                                     ; preds = %771, %751, %712
  %784 = load %union.rec*, %union.rec** %y, align 8
  %785 = bitcast %union.rec* %784 to %struct.word_type*
  %786 = getelementptr inbounds %struct.word_type, %struct.word_type* %785, i32 0, i32 1
  %787 = bitcast %union.FIRST_UNION* %786 to %struct.FILE_POS*
  %788 = load %union.rec*, %union.rec** %y, align 8
  %789 = bitcast %union.rec* %788 to %struct.word_type*
  %790 = getelementptr inbounds %struct.word_type, %struct.word_type* %789, i32 0, i32 3
  %791 = bitcast %union.THIRD_UNION* %790 to %struct.anon.6*
  %792 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x i32], [2 x i32]* %792, i32 0, i64 0
  %794 = load i32, i32* %793, align 4
  %795 = call i8* @EchoLength(i32 %794)
  %796 = load %union.rec*, %union.rec** %y, align 8
  %797 = bitcast %union.rec* %796 to %struct.word_type*
  %798 = getelementptr inbounds %struct.word_type, %struct.word_type* %797, i32 0, i32 3
  %799 = bitcast %union.THIRD_UNION* %798 to %struct.anon.6*
  %800 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %799, i32 0, i32 1
  %801 = getelementptr inbounds [2 x i32], [2 x i32]* %800, i32 0, i64 0
  %802 = load i32, i32* %801, align 4
  %803 = call i8* @EchoLength(i32 %802)
  %804 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %787, i8* %795, i8* %803)
  br label %805

; <label>:805                                     ; preds = %783, %771
  %806 = load %union.rec*, %union.rec** %y, align 8
  %807 = bitcast %union.rec* %806 to %struct.word_type*
  %808 = getelementptr inbounds %struct.word_type, %struct.word_type* %807, i32 0, i32 3
  %809 = bitcast %union.THIRD_UNION* %808 to %struct.anon.6*
  %810 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %809, i32 0, i32 0
  %811 = getelementptr inbounds [2 x i32], [2 x i32]* %810, i32 0, i64 0
  %812 = load i32, i32* %811, align 4
  %813 = load %union.rec*, %union.rec** %1, align 8
  %814 = bitcast %union.rec* %813 to %struct.word_type*
  %815 = getelementptr inbounds %struct.word_type, %struct.word_type* %814, i32 0, i32 3
  %816 = bitcast %union.THIRD_UNION* %815 to %struct.anon.6*
  %817 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %816, i32 0, i32 0
  %818 = getelementptr inbounds [2 x i32], [2 x i32]* %817, i32 0, i64 0
  store i32 %812, i32* %818, align 4
  %819 = load %union.rec*, %union.rec** %y, align 8
  %820 = bitcast %union.rec* %819 to %struct.word_type*
  %821 = getelementptr inbounds %struct.word_type, %struct.word_type* %820, i32 0, i32 3
  %822 = bitcast %union.THIRD_UNION* %821 to %struct.anon.6*
  %823 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %822, i32 0, i32 1
  %824 = getelementptr inbounds [2 x i32], [2 x i32]* %823, i32 0, i64 0
  %825 = load i32, i32* %824, align 4
  %826 = load %union.rec*, %union.rec** %1, align 8
  %827 = bitcast %union.rec* %826 to %struct.word_type*
  %828 = getelementptr inbounds %struct.word_type, %struct.word_type* %827, i32 0, i32 3
  %829 = bitcast %union.THIRD_UNION* %828 to %struct.anon.6*
  %830 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %829, i32 0, i32 1
  %831 = getelementptr inbounds [2 x i32], [2 x i32]* %830, i32 0, i64 0
  store i32 %825, i32* %831, align 4
  %832 = load %union.rec*, %union.rec** %1, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 3
  %835 = bitcast %union.THIRD_UNION* %834 to %struct.anon.6*
  %836 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %835, i32 0, i32 0
  %837 = getelementptr inbounds [2 x i32], [2 x i32]* %836, i32 0, i64 0
  %838 = load i32, i32* %837, align 4
  %839 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %840 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %839, i32 0, i32 0
  %841 = load i32, i32* %840, align 4
  %842 = icmp sle i32 %838, %841
  br i1 %842, label %843, label %875

; <label>:843                                     ; preds = %805
  %844 = load %union.rec*, %union.rec** %1, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 3
  %847 = bitcast %union.THIRD_UNION* %846 to %struct.anon.6*
  %848 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %847, i32 0, i32 0
  %849 = getelementptr inbounds [2 x i32], [2 x i32]* %848, i32 0, i64 0
  %850 = load i32, i32* %849, align 4
  %851 = load %union.rec*, %union.rec** %1, align 8
  %852 = bitcast %union.rec* %851 to %struct.word_type*
  %853 = getelementptr inbounds %struct.word_type, %struct.word_type* %852, i32 0, i32 3
  %854 = bitcast %union.THIRD_UNION* %853 to %struct.anon.6*
  %855 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %854, i32 0, i32 1
  %856 = getelementptr inbounds [2 x i32], [2 x i32]* %855, i32 0, i64 0
  %857 = load i32, i32* %856, align 4
  %858 = add nsw i32 %850, %857
  %859 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %860 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %859, i32 0, i32 1
  %861 = load i32, i32* %860, align 4
  %862 = icmp sle i32 %858, %861
  br i1 %862, label %863, label %875

; <label>:863                                     ; preds = %843
  %864 = load %union.rec*, %union.rec** %1, align 8
  %865 = bitcast %union.rec* %864 to %struct.word_type*
  %866 = getelementptr inbounds %struct.word_type, %struct.word_type* %865, i32 0, i32 3
  %867 = bitcast %union.THIRD_UNION* %866 to %struct.anon.6*
  %868 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %867, i32 0, i32 1
  %869 = getelementptr inbounds [2 x i32], [2 x i32]* %868, i32 0, i64 0
  %870 = load i32, i32* %869, align 4
  %871 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %8, align 8
  %872 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %871, i32 0, i32 2
  %873 = load i32, i32* %872, align 4
  %874 = icmp sle i32 %870, %873
  br i1 %874, label %878, label %875

; <label>:875                                     ; preds = %863, %843, %805
  %876 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %877 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %876, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  br label %878

; <label>:878                                     ; preds = %875, %863
  br label %909

; <label>:879                                     ; preds = %673
  %880 = load %union.rec*, %union.rec** %1, align 8
  %881 = bitcast %union.rec* %880 to %struct.head_type*
  %882 = getelementptr inbounds %struct.head_type, %struct.head_type* %881, i32 0, i32 8
  %883 = load %union.rec*, %union.rec** %882, align 8
  %884 = icmp ne %union.rec* %883, null
  br i1 %884, label %885, label %908

; <label>:885                                     ; preds = %879
  %886 = load %union.rec*, %union.rec** %1, align 8
  %887 = bitcast %union.rec* %886 to %struct.word_type*
  %888 = getelementptr inbounds %struct.word_type, %struct.word_type* %887, i32 0, i32 2
  %889 = bitcast %union.SECOND_UNION* %888 to %struct.anon.2*
  %890 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %889, i32 0, i32 2
  %891 = load i16, i16* %890, align 2
  %892 = lshr i16 %891, 9
  %893 = and i16 %892, 1
  %894 = zext i16 %893 to i32
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %896, label %908

; <label>:896                                     ; preds = %885
  %897 = load %union.rec*, %union.rec** %y, align 8
  %898 = bitcast %union.rec* %897 to %struct.word_type*
  %899 = getelementptr inbounds %struct.word_type, %struct.word_type* %898, i32 0, i32 1
  %900 = bitcast %union.FIRST_UNION* %899 to %struct.anon*
  %901 = getelementptr inbounds %struct.anon, %struct.anon* %900, i32 0, i32 0
  %902 = load i8, i8* %901, align 1
  %903 = zext i8 %902 to i32
  %904 = icmp eq i32 %903, 17
  br i1 %904, label %905, label %908

; <label>:905                                     ; preds = %896
  %906 = load %union.rec*, %union.rec** %y, align 8
  %907 = call %union.rec* @Hyphenate(%union.rec* %906)
  store %union.rec* %907, %union.rec** %y, align 8
  br label %908

; <label>:908                                     ; preds = %905, %896, %885, %879
  br label %909

; <label>:909                                     ; preds = %908, %878
  %910 = load %union.rec*, %union.rec** %1, align 8
  %911 = bitcast %union.rec* %910 to %struct.word_type*
  %912 = getelementptr inbounds %struct.word_type, %struct.word_type* %911, i32 0, i32 2
  %913 = bitcast %union.SECOND_UNION* %912 to %struct.anon.2*
  %914 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %913, i32 0, i32 2
  %915 = load i16, i16* %914, align 2
  %916 = and i16 %915, -33
  store i16 %916, i16* %914, align 2
  %917 = load i32, i32* %3, align 4
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %3251

; <label>:919                                     ; preds = %909
  %920 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %920, %union.rec** %link, align 8
  br label %921

; <label>:921                                     ; preds = %3243, %919
  %922 = load %union.rec*, %union.rec** %link, align 8
  %923 = bitcast %union.rec* %922 to %struct.word_type*
  %924 = getelementptr inbounds %struct.word_type, %struct.word_type* %923, i32 0, i32 0
  %925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %924, i32 0, i64 0
  %926 = getelementptr inbounds %struct.LIST, %struct.LIST* %925, i32 0, i32 1
  %927 = load %union.rec*, %union.rec** %926, align 8
  %928 = load %union.rec*, %union.rec** %1, align 8
  %929 = icmp ne %union.rec* %927, %928
  br i1 %929, label %930, label %3250

; <label>:930                                     ; preds = %921
  %931 = load %union.rec*, %union.rec** %link, align 8
  %932 = bitcast %union.rec* %931 to %struct.word_type*
  %933 = getelementptr inbounds %struct.word_type, %struct.word_type* %932, i32 0, i32 0
  %934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %933, i32 0, i64 0
  %935 = getelementptr inbounds %struct.LIST, %struct.LIST* %934, i32 0, i32 1
  %936 = load %union.rec*, %union.rec** %935, align 8
  %937 = bitcast %union.rec* %936 to %struct.word_type*
  %938 = getelementptr inbounds %struct.word_type, %struct.word_type* %937, i32 0, i32 0
  %939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %938, i32 0, i64 1
  %940 = getelementptr inbounds %struct.LIST, %struct.LIST* %939, i32 0, i32 0
  %941 = load %union.rec*, %union.rec** %940, align 8
  store %union.rec* %941, %union.rec** %y, align 8
  br label %942

; <label>:942                                     ; preds = %952, %930
  %943 = load %union.rec*, %union.rec** %y, align 8
  %944 = bitcast %union.rec* %943 to %struct.word_type*
  %945 = getelementptr inbounds %struct.word_type, %struct.word_type* %944, i32 0, i32 1
  %946 = bitcast %union.FIRST_UNION* %945 to %struct.anon*
  %947 = getelementptr inbounds %struct.anon, %struct.anon* %946, i32 0, i32 0
  %948 = load i8, i8* %947, align 1
  %949 = zext i8 %948 to i32
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %959

; <label>:951                                     ; preds = %942
  br label %952

; <label>:952                                     ; preds = %951
  %953 = load %union.rec*, %union.rec** %y, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 0
  %956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %955, i32 0, i64 1
  %957 = getelementptr inbounds %struct.LIST, %struct.LIST* %956, i32 0, i32 0
  %958 = load %union.rec*, %union.rec** %957, align 8
  store %union.rec* %958, %union.rec** %y, align 8
  br label %942

; <label>:959                                     ; preds = %942
  %960 = load %union.rec*, %union.rec** %y, align 8
  %961 = bitcast %union.rec* %960 to %struct.word_type*
  %962 = getelementptr inbounds %struct.word_type, %struct.word_type* %961, i32 0, i32 1
  %963 = bitcast %union.FIRST_UNION* %962 to %struct.anon*
  %964 = getelementptr inbounds %struct.anon, %struct.anon* %963, i32 0, i32 0
  %965 = load i8, i8* %964, align 1
  %966 = zext i8 %965 to i32
  switch i32 %966, label %3241 [
    i32 1, label %967
    i32 19, label %987
    i32 17, label %1325
    i32 9, label %1663
    i32 2, label %3211
    i32 8, label %3211
  ]

; <label>:967                                     ; preds = %959
  %968 = load %union.rec*, %union.rec** %y, align 8
  %969 = bitcast %union.rec* %968 to %struct.gapobj_type*
  %970 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %969, i32 0, i32 3
  %971 = bitcast %struct.GAP* %970 to i16*
  %972 = load i16, i16* %971, align 4
  %973 = lshr i16 %972, 9
  %974 = and i16 %973, 1
  %975 = zext i16 %974 to i32
  %976 = icmp ne i32 %975, 0
  br i1 %976, label %986, label %977

; <label>:977                                     ; preds = %967
  %978 = load %union.rec*, %union.rec** %1, align 8
  %979 = bitcast %union.rec* %978 to %struct.word_type*
  %980 = getelementptr inbounds %struct.word_type, %struct.word_type* %979, i32 0, i32 2
  %981 = bitcast %union.SECOND_UNION* %980 to %struct.anon.2*
  %982 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %981, i32 0, i32 2
  %983 = load i16, i16* %982, align 2
  %984 = and i16 %983, -33
  %985 = or i16 %984, 32
  store i16 %985, i16* %982, align 2
  br label %986

; <label>:986                                     ; preds = %977, %967
  br label %3242

; <label>:987                                     ; preds = %959
  %988 = load %union.rec*, %union.rec** %1, align 8
  %989 = bitcast %union.rec* %988 to %struct.word_type*
  %990 = getelementptr inbounds %struct.word_type, %struct.word_type* %989, i32 0, i32 2
  %991 = bitcast %union.SECOND_UNION* %990 to %struct.anon.2*
  %992 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %991, i32 0, i32 2
  %993 = load i16, i16* %992, align 2
  %994 = lshr i16 %993, 8
  %995 = and i16 %994, 1
  %996 = zext i16 %995 to i32
  %997 = icmp eq i32 %996, 1
  br i1 %997, label %998, label %1324

; <label>:998                                     ; preds = %987
  %999 = load %union.rec*, %union.rec** %y, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 0
  %1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1001, i32 0, i64 0
  %1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %1002, i32 0, i32 1
  %1004 = load %union.rec*, %union.rec** %1003, align 8
  store %union.rec* %1004, %union.rec** %xxstart, align 8
  %1005 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1005, %union.rec** %xxstop, align 8
  %1006 = load %union.rec*, %union.rec** %y, align 8
  %1007 = bitcast %union.rec* %1006 to %struct.word_type*
  %1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %1007, i32 0, i32 0
  %1009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1008, i32 0, i64 1
  %1010 = getelementptr inbounds %struct.LIST, %struct.LIST* %1009, i32 0, i32 1
  %1011 = load %union.rec*, %union.rec** %1010, align 8
  store %union.rec* %1011, %union.rec** %xxdest, align 8
  %1012 = load %union.rec*, %union.rec** %xxstart, align 8
  %1013 = load %union.rec*, %union.rec** %xxstop, align 8
  %1014 = icmp ne %union.rec* %1012, %1013
  br i1 %1014, label %1015, label %1140

; <label>:1015                                    ; preds = %998
  %1016 = load %union.rec*, %union.rec** %xxstart, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 1
  %1019 = bitcast %union.FIRST_UNION* %1018 to %struct.anon*
  %1020 = getelementptr inbounds %struct.anon, %struct.anon* %1019, i32 0, i32 0
  %1021 = load i8, i8* %1020, align 1
  %1022 = zext i8 %1021 to i32
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1027, label %1024

; <label>:1024                                    ; preds = %1015
  %1025 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1026 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1025, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %1027

; <label>:1027                                    ; preds = %1024, %1015
  %1028 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %1028, %union.rec** @zz_res, align 8
  %1029 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %1029, %union.rec** @zz_hold, align 8
  %1030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1031 = icmp eq %union.rec* %1030, null
  br i1 %1031, label %1032, label %1034

; <label>:1032                                    ; preds = %1027
  %1033 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1082

; <label>:1034                                    ; preds = %1027
  %1035 = load %union.rec*, %union.rec** @zz_res, align 8
  %1036 = icmp eq %union.rec* %1035, null
  br i1 %1036, label %1037, label %1039

; <label>:1037                                    ; preds = %1034
  %1038 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1080

; <label>:1039                                    ; preds = %1034
  %1040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1041 = bitcast %union.rec* %1040 to %struct.word_type*
  %1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %1041, i32 0, i32 0
  %1043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1042, i32 0, i64 0
  %1044 = getelementptr inbounds %struct.LIST, %struct.LIST* %1043, i32 0, i32 0
  %1045 = load %union.rec*, %union.rec** %1044, align 8
  store %union.rec* %1045, %union.rec** @zz_tmp, align 8
  %1046 = load %union.rec*, %union.rec** @zz_res, align 8
  %1047 = bitcast %union.rec* %1046 to %struct.word_type*
  %1048 = getelementptr inbounds %struct.word_type, %struct.word_type* %1047, i32 0, i32 0
  %1049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1048, i32 0, i64 0
  %1050 = getelementptr inbounds %struct.LIST, %struct.LIST* %1049, i32 0, i32 0
  %1051 = load %union.rec*, %union.rec** %1050, align 8
  %1052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1053 = bitcast %union.rec* %1052 to %struct.word_type*
  %1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %1053, i32 0, i32 0
  %1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1054, i32 0, i64 0
  %1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %1055, i32 0, i32 0
  store %union.rec* %1051, %union.rec** %1056, align 8
  %1057 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1058 = load %union.rec*, %union.rec** @zz_res, align 8
  %1059 = bitcast %union.rec* %1058 to %struct.word_type*
  %1060 = getelementptr inbounds %struct.word_type, %struct.word_type* %1059, i32 0, i32 0
  %1061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1060, i32 0, i64 0
  %1062 = getelementptr inbounds %struct.LIST, %struct.LIST* %1061, i32 0, i32 0
  %1063 = load %union.rec*, %union.rec** %1062, align 8
  %1064 = bitcast %union.rec* %1063 to %struct.word_type*
  %1065 = getelementptr inbounds %struct.word_type, %struct.word_type* %1064, i32 0, i32 0
  %1066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1065, i32 0, i64 0
  %1067 = getelementptr inbounds %struct.LIST, %struct.LIST* %1066, i32 0, i32 1
  store %union.rec* %1057, %union.rec** %1067, align 8
  %1068 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1069 = load %union.rec*, %union.rec** @zz_res, align 8
  %1070 = bitcast %union.rec* %1069 to %struct.word_type*
  %1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %1070, i32 0, i32 0
  %1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1071, i32 0, i64 0
  %1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %1072, i32 0, i32 0
  store %union.rec* %1068, %union.rec** %1073, align 8
  %1074 = load %union.rec*, %union.rec** @zz_res, align 8
  %1075 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1076 = bitcast %union.rec* %1075 to %struct.word_type*
  %1077 = getelementptr inbounds %struct.word_type, %struct.word_type* %1076, i32 0, i32 0
  %1078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1077, i32 0, i64 0
  %1079 = getelementptr inbounds %struct.LIST, %struct.LIST* %1078, i32 0, i32 1
  store %union.rec* %1074, %union.rec** %1079, align 8
  br label %1080

; <label>:1080                                    ; preds = %1039, %1037
  %1081 = phi %union.rec* [ %1038, %1037 ], [ %1074, %1039 ]
  br label %1082

; <label>:1082                                    ; preds = %1080, %1032
  %1083 = phi %union.rec* [ %1033, %1032 ], [ %1081, %1080 ]
  %1084 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %1084, %union.rec** @zz_res, align 8
  %1085 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %1085, %union.rec** @zz_hold, align 8
  %1086 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1087 = icmp eq %union.rec* %1086, null
  br i1 %1087, label %1088, label %1090

; <label>:1088                                    ; preds = %1082
  %1089 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1138

; <label>:1090                                    ; preds = %1082
  %1091 = load %union.rec*, %union.rec** @zz_res, align 8
  %1092 = icmp eq %union.rec* %1091, null
  br i1 %1092, label %1093, label %1095

; <label>:1093                                    ; preds = %1090
  %1094 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1136

; <label>:1095                                    ; preds = %1090
  %1096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1097 = bitcast %union.rec* %1096 to %struct.word_type*
  %1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %1097, i32 0, i32 0
  %1099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1098, i32 0, i64 0
  %1100 = getelementptr inbounds %struct.LIST, %struct.LIST* %1099, i32 0, i32 0
  %1101 = load %union.rec*, %union.rec** %1100, align 8
  store %union.rec* %1101, %union.rec** @zz_tmp, align 8
  %1102 = load %union.rec*, %union.rec** @zz_res, align 8
  %1103 = bitcast %union.rec* %1102 to %struct.word_type*
  %1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %1103, i32 0, i32 0
  %1105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1104, i32 0, i64 0
  %1106 = getelementptr inbounds %struct.LIST, %struct.LIST* %1105, i32 0, i32 0
  %1107 = load %union.rec*, %union.rec** %1106, align 8
  %1108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1109 = bitcast %union.rec* %1108 to %struct.word_type*
  %1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %1109, i32 0, i32 0
  %1111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1110, i32 0, i64 0
  %1112 = getelementptr inbounds %struct.LIST, %struct.LIST* %1111, i32 0, i32 0
  store %union.rec* %1107, %union.rec** %1112, align 8
  %1113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1114 = load %union.rec*, %union.rec** @zz_res, align 8
  %1115 = bitcast %union.rec* %1114 to %struct.word_type*
  %1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %1115, i32 0, i32 0
  %1117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1116, i32 0, i64 0
  %1118 = getelementptr inbounds %struct.LIST, %struct.LIST* %1117, i32 0, i32 0
  %1119 = load %union.rec*, %union.rec** %1118, align 8
  %1120 = bitcast %union.rec* %1119 to %struct.word_type*
  %1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %1120, i32 0, i32 0
  %1122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1121, i32 0, i64 0
  %1123 = getelementptr inbounds %struct.LIST, %struct.LIST* %1122, i32 0, i32 1
  store %union.rec* %1113, %union.rec** %1123, align 8
  %1124 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1125 = load %union.rec*, %union.rec** @zz_res, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 0
  %1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1127, i32 0, i64 0
  %1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %1128, i32 0, i32 0
  store %union.rec* %1124, %union.rec** %1129, align 8
  %1130 = load %union.rec*, %union.rec** @zz_res, align 8
  %1131 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1132 = bitcast %union.rec* %1131 to %struct.word_type*
  %1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %1132, i32 0, i32 0
  %1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1133, i32 0, i64 0
  %1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %1134, i32 0, i32 1
  store %union.rec* %1130, %union.rec** %1135, align 8
  br label %1136

; <label>:1136                                    ; preds = %1095, %1093
  %1137 = phi %union.rec* [ %1094, %1093 ], [ %1130, %1095 ]
  br label %1138

; <label>:1138                                    ; preds = %1136, %1088
  %1139 = phi %union.rec* [ %1089, %1088 ], [ %1137, %1136 ]
  br label %1140

; <label>:1140                                    ; preds = %1138, %998
  %1141 = load %union.rec*, %union.rec** %y, align 8
  %1142 = bitcast %union.rec* %1141 to %struct.word_type*
  %1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %1142, i32 0, i32 0
  %1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1143, i32 0, i64 1
  %1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %1144, i32 0, i32 1
  %1146 = load %union.rec*, %union.rec** %1145, align 8
  store %union.rec* %1146, %union.rec** @xx_link, align 8
  %1147 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1147, %union.rec** @zz_hold, align 8
  %1148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1149 = bitcast %union.rec* %1148 to %struct.word_type*
  %1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %1149, i32 0, i32 0
  %1151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1150, i32 0, i64 1
  %1152 = getelementptr inbounds %struct.LIST, %struct.LIST* %1151, i32 0, i32 1
  %1153 = load %union.rec*, %union.rec** %1152, align 8
  %1154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1155 = icmp eq %union.rec* %1153, %1154
  br i1 %1155, label %1156, label %1157

; <label>:1156                                    ; preds = %1140
  br label %1198

; <label>:1157                                    ; preds = %1140
  %1158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1159 = bitcast %union.rec* %1158 to %struct.word_type*
  %1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %1159, i32 0, i32 0
  %1161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1160, i32 0, i64 1
  %1162 = getelementptr inbounds %struct.LIST, %struct.LIST* %1161, i32 0, i32 1
  %1163 = load %union.rec*, %union.rec** %1162, align 8
  store %union.rec* %1163, %union.rec** @zz_res, align 8
  %1164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1165 = bitcast %union.rec* %1164 to %struct.word_type*
  %1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %1165, i32 0, i32 0
  %1167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1166, i32 0, i64 1
  %1168 = getelementptr inbounds %struct.LIST, %struct.LIST* %1167, i32 0, i32 0
  %1169 = load %union.rec*, %union.rec** %1168, align 8
  %1170 = load %union.rec*, %union.rec** @zz_res, align 8
  %1171 = bitcast %union.rec* %1170 to %struct.word_type*
  %1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %1171, i32 0, i32 0
  %1173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1172, i32 0, i64 1
  %1174 = getelementptr inbounds %struct.LIST, %struct.LIST* %1173, i32 0, i32 0
  store %union.rec* %1169, %union.rec** %1174, align 8
  %1175 = load %union.rec*, %union.rec** @zz_res, align 8
  %1176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1177 = bitcast %union.rec* %1176 to %struct.word_type*
  %1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %1177, i32 0, i32 0
  %1179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1178, i32 0, i64 1
  %1180 = getelementptr inbounds %struct.LIST, %struct.LIST* %1179, i32 0, i32 0
  %1181 = load %union.rec*, %union.rec** %1180, align 8
  %1182 = bitcast %union.rec* %1181 to %struct.word_type*
  %1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %1182, i32 0, i32 0
  %1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1183, i32 0, i64 1
  %1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %1184, i32 0, i32 1
  store %union.rec* %1175, %union.rec** %1185, align 8
  %1186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1189, i32 0, i64 1
  %1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %1190, i32 0, i32 1
  store %union.rec* %1186, %union.rec** %1191, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1193 = bitcast %union.rec* %1192 to %struct.word_type*
  %1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1194, i32 0, i64 1
  %1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %1195, i32 0, i32 0
  store %union.rec* %1186, %union.rec** %1196, align 8
  %1197 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1198

; <label>:1198                                    ; preds = %1157, %1156
  %1199 = phi %union.rec* [ null, %1156 ], [ %1197, %1157 ]
  store %union.rec* %1199, %union.rec** @xx_tmp, align 8
  %1200 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1200, %union.rec** @zz_hold, align 8
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1202 = bitcast %union.rec* %1201 to %struct.word_type*
  %1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %1202, i32 0, i32 0
  %1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1203, i32 0, i64 0
  %1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %1204, i32 0, i32 1
  %1206 = load %union.rec*, %union.rec** %1205, align 8
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1208 = icmp eq %union.rec* %1206, %1207
  br i1 %1208, label %1209, label %1210

; <label>:1209                                    ; preds = %1198
  br label %1251

; <label>:1210                                    ; preds = %1198
  %1211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1212 = bitcast %union.rec* %1211 to %struct.word_type*
  %1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %1212, i32 0, i32 0
  %1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1213, i32 0, i64 0
  %1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %1214, i32 0, i32 1
  %1216 = load %union.rec*, %union.rec** %1215, align 8
  store %union.rec* %1216, %union.rec** @zz_res, align 8
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1218 = bitcast %union.rec* %1217 to %struct.word_type*
  %1219 = getelementptr inbounds %struct.word_type, %struct.word_type* %1218, i32 0, i32 0
  %1220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1219, i32 0, i64 0
  %1221 = getelementptr inbounds %struct.LIST, %struct.LIST* %1220, i32 0, i32 0
  %1222 = load %union.rec*, %union.rec** %1221, align 8
  %1223 = load %union.rec*, %union.rec** @zz_res, align 8
  %1224 = bitcast %union.rec* %1223 to %struct.word_type*
  %1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %1224, i32 0, i32 0
  %1226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1225, i32 0, i64 0
  %1227 = getelementptr inbounds %struct.LIST, %struct.LIST* %1226, i32 0, i32 0
  store %union.rec* %1222, %union.rec** %1227, align 8
  %1228 = load %union.rec*, %union.rec** @zz_res, align 8
  %1229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1230 = bitcast %union.rec* %1229 to %struct.word_type*
  %1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %1230, i32 0, i32 0
  %1232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1231, i32 0, i64 0
  %1233 = getelementptr inbounds %struct.LIST, %struct.LIST* %1232, i32 0, i32 0
  %1234 = load %union.rec*, %union.rec** %1233, align 8
  %1235 = bitcast %union.rec* %1234 to %struct.word_type*
  %1236 = getelementptr inbounds %struct.word_type, %struct.word_type* %1235, i32 0, i32 0
  %1237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1236, i32 0, i64 0
  %1238 = getelementptr inbounds %struct.LIST, %struct.LIST* %1237, i32 0, i32 1
  store %union.rec* %1228, %union.rec** %1238, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1241 = bitcast %union.rec* %1240 to %struct.word_type*
  %1242 = getelementptr inbounds %struct.word_type, %struct.word_type* %1241, i32 0, i32 0
  %1243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1242, i32 0, i64 0
  %1244 = getelementptr inbounds %struct.LIST, %struct.LIST* %1243, i32 0, i32 1
  store %union.rec* %1239, %union.rec** %1244, align 8
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1246 = bitcast %union.rec* %1245 to %struct.word_type*
  %1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %1246, i32 0, i32 0
  %1248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1247, i32 0, i64 0
  %1249 = getelementptr inbounds %struct.LIST, %struct.LIST* %1248, i32 0, i32 0
  store %union.rec* %1239, %union.rec** %1249, align 8
  %1250 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1251

; <label>:1251                                    ; preds = %1210, %1209
  %1252 = phi %union.rec* [ null, %1209 ], [ %1250, %1210 ]
  %1253 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1253, %union.rec** @zz_hold, align 8
  %1254 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1254, %union.rec** @zz_hold, align 8
  %1255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1256 = bitcast %union.rec* %1255 to %struct.word_type*
  %1257 = getelementptr inbounds %struct.word_type, %struct.word_type* %1256, i32 0, i32 1
  %1258 = bitcast %union.FIRST_UNION* %1257 to %struct.anon*
  %1259 = getelementptr inbounds %struct.anon, %struct.anon* %1258, i32 0, i32 0
  %1260 = load i8, i8* %1259, align 1
  %1261 = zext i8 %1260 to i32
  %1262 = icmp eq i32 %1261, 11
  br i1 %1262, label %1272, label %1263

; <label>:1263                                    ; preds = %1251
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1265 = bitcast %union.rec* %1264 to %struct.word_type*
  %1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %1265, i32 0, i32 1
  %1267 = bitcast %union.FIRST_UNION* %1266 to %struct.anon*
  %1268 = getelementptr inbounds %struct.anon, %struct.anon* %1267, i32 0, i32 0
  %1269 = load i8, i8* %1268, align 1
  %1270 = zext i8 %1269 to i32
  %1271 = icmp eq i32 %1270, 12
  br i1 %1271, label %1272, label %1280

; <label>:1272                                    ; preds = %1263, %1251
  %1273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1274 = bitcast %union.rec* %1273 to %struct.word_type*
  %1275 = getelementptr inbounds %struct.word_type, %struct.word_type* %1274, i32 0, i32 1
  %1276 = bitcast %union.FIRST_UNION* %1275 to %struct.anon*
  %1277 = getelementptr inbounds %struct.anon, %struct.anon* %1276, i32 0, i32 1
  %1278 = load i8, i8* %1277, align 1
  %1279 = zext i8 %1278 to i32
  br label %1291

; <label>:1280                                    ; preds = %1263
  %1281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 1
  %1284 = bitcast %union.FIRST_UNION* %1283 to %struct.anon*
  %1285 = getelementptr inbounds %struct.anon, %struct.anon* %1284, i32 0, i32 0
  %1286 = load i8, i8* %1285, align 1
  %1287 = zext i8 %1286 to i64
  %1288 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1287
  %1289 = load i8, i8* %1288, align 1
  %1290 = zext i8 %1289 to i32
  br label %1291

; <label>:1291                                    ; preds = %1280, %1272
  %1292 = phi i32 [ %1279, %1272 ], [ %1290, %1280 ]
  store i32 %1292, i32* @zz_size, align 4
  %1293 = load i32, i32* @zz_size, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1294
  %1296 = load %union.rec*, %union.rec** %1295, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1298 = bitcast %union.rec* %1297 to %struct.word_type*
  %1299 = getelementptr inbounds %struct.word_type, %struct.word_type* %1298, i32 0, i32 0
  %1300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1299, i32 0, i64 0
  %1301 = getelementptr inbounds %struct.LIST, %struct.LIST* %1300, i32 0, i32 0
  store %union.rec* %1296, %union.rec** %1301, align 8
  %1302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1303 = load i32, i32* @zz_size, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1304
  store %union.rec* %1302, %union.rec** %1305, align 8
  %1306 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1307 = bitcast %union.rec* %1306 to %struct.word_type*
  %1308 = getelementptr inbounds %struct.word_type, %struct.word_type* %1307, i32 0, i32 0
  %1309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1308, i32 0, i64 1
  %1310 = getelementptr inbounds %struct.LIST, %struct.LIST* %1309, i32 0, i32 1
  %1311 = load %union.rec*, %union.rec** %1310, align 8
  %1312 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1313 = icmp eq %union.rec* %1311, %1312
  br i1 %1313, label %1314, label %1317

; <label>:1314                                    ; preds = %1291
  %1315 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1316 = call i32 @DisposeObject(%union.rec* %1315)
  br label %1317

; <label>:1317                                    ; preds = %1314, %1291
  %1318 = load %union.rec*, %union.rec** %link, align 8
  %1319 = bitcast %union.rec* %1318 to %struct.word_type*
  %1320 = getelementptr inbounds %struct.word_type, %struct.word_type* %1319, i32 0, i32 0
  %1321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1320, i32 0, i64 0
  %1322 = getelementptr inbounds %struct.LIST, %struct.LIST* %1321, i32 0, i32 0
  %1323 = load %union.rec*, %union.rec** %1322, align 8
  store %union.rec* %1323, %union.rec** %link, align 8
  br label %1324

; <label>:1324                                    ; preds = %1317, %987
  br label %3242

; <label>:1325                                    ; preds = %959
  %1326 = load %union.rec*, %union.rec** %1, align 8
  %1327 = bitcast %union.rec* %1326 to %struct.word_type*
  %1328 = getelementptr inbounds %struct.word_type, %struct.word_type* %1327, i32 0, i32 2
  %1329 = bitcast %union.SECOND_UNION* %1328 to %struct.anon.2*
  %1330 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1329, i32 0, i32 2
  %1331 = load i16, i16* %1330, align 2
  %1332 = lshr i16 %1331, 8
  %1333 = and i16 %1332, 1
  %1334 = zext i16 %1333 to i32
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1336, label %1662

; <label>:1336                                    ; preds = %1325
  %1337 = load %union.rec*, %union.rec** %y, align 8
  %1338 = bitcast %union.rec* %1337 to %struct.word_type*
  %1339 = getelementptr inbounds %struct.word_type, %struct.word_type* %1338, i32 0, i32 0
  %1340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1339, i32 0, i64 0
  %1341 = getelementptr inbounds %struct.LIST, %struct.LIST* %1340, i32 0, i32 1
  %1342 = load %union.rec*, %union.rec** %1341, align 8
  store %union.rec* %1342, %union.rec** %xxstart1, align 8
  %1343 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1343, %union.rec** %xxstop2, align 8
  %1344 = load %union.rec*, %union.rec** %y, align 8
  %1345 = bitcast %union.rec* %1344 to %struct.word_type*
  %1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %1345, i32 0, i32 0
  %1347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1346, i32 0, i64 1
  %1348 = getelementptr inbounds %struct.LIST, %struct.LIST* %1347, i32 0, i32 1
  %1349 = load %union.rec*, %union.rec** %1348, align 8
  store %union.rec* %1349, %union.rec** %xxdest3, align 8
  %1350 = load %union.rec*, %union.rec** %xxstart1, align 8
  %1351 = load %union.rec*, %union.rec** %xxstop2, align 8
  %1352 = icmp ne %union.rec* %1350, %1351
  br i1 %1352, label %1353, label %1478

; <label>:1353                                    ; preds = %1336
  %1354 = load %union.rec*, %union.rec** %xxstart1, align 8
  %1355 = bitcast %union.rec* %1354 to %struct.word_type*
  %1356 = getelementptr inbounds %struct.word_type, %struct.word_type* %1355, i32 0, i32 1
  %1357 = bitcast %union.FIRST_UNION* %1356 to %struct.anon*
  %1358 = getelementptr inbounds %struct.anon, %struct.anon* %1357, i32 0, i32 0
  %1359 = load i8, i8* %1358, align 1
  %1360 = zext i8 %1359 to i32
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1365, label %1362

; <label>:1362                                    ; preds = %1353
  %1363 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1364 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %1365

; <label>:1365                                    ; preds = %1362, %1353
  %1366 = load %union.rec*, %union.rec** %xxstart1, align 8
  store %union.rec* %1366, %union.rec** @zz_res, align 8
  %1367 = load %union.rec*, %union.rec** %xxstop2, align 8
  store %union.rec* %1367, %union.rec** @zz_hold, align 8
  %1368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1369 = icmp eq %union.rec* %1368, null
  br i1 %1369, label %1370, label %1372

; <label>:1370                                    ; preds = %1365
  %1371 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1420

; <label>:1372                                    ; preds = %1365
  %1373 = load %union.rec*, %union.rec** @zz_res, align 8
  %1374 = icmp eq %union.rec* %1373, null
  br i1 %1374, label %1375, label %1377

; <label>:1375                                    ; preds = %1372
  %1376 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1418

; <label>:1377                                    ; preds = %1372
  %1378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1379 = bitcast %union.rec* %1378 to %struct.word_type*
  %1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %1379, i32 0, i32 0
  %1381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1380, i32 0, i64 0
  %1382 = getelementptr inbounds %struct.LIST, %struct.LIST* %1381, i32 0, i32 0
  %1383 = load %union.rec*, %union.rec** %1382, align 8
  store %union.rec* %1383, %union.rec** @zz_tmp, align 8
  %1384 = load %union.rec*, %union.rec** @zz_res, align 8
  %1385 = bitcast %union.rec* %1384 to %struct.word_type*
  %1386 = getelementptr inbounds %struct.word_type, %struct.word_type* %1385, i32 0, i32 0
  %1387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1386, i32 0, i64 0
  %1388 = getelementptr inbounds %struct.LIST, %struct.LIST* %1387, i32 0, i32 0
  %1389 = load %union.rec*, %union.rec** %1388, align 8
  %1390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1391 = bitcast %union.rec* %1390 to %struct.word_type*
  %1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %1391, i32 0, i32 0
  %1393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1392, i32 0, i64 0
  %1394 = getelementptr inbounds %struct.LIST, %struct.LIST* %1393, i32 0, i32 0
  store %union.rec* %1389, %union.rec** %1394, align 8
  %1395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1396 = load %union.rec*, %union.rec** @zz_res, align 8
  %1397 = bitcast %union.rec* %1396 to %struct.word_type*
  %1398 = getelementptr inbounds %struct.word_type, %struct.word_type* %1397, i32 0, i32 0
  %1399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1398, i32 0, i64 0
  %1400 = getelementptr inbounds %struct.LIST, %struct.LIST* %1399, i32 0, i32 0
  %1401 = load %union.rec*, %union.rec** %1400, align 8
  %1402 = bitcast %union.rec* %1401 to %struct.word_type*
  %1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %1402, i32 0, i32 0
  %1404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1403, i32 0, i64 0
  %1405 = getelementptr inbounds %struct.LIST, %struct.LIST* %1404, i32 0, i32 1
  store %union.rec* %1395, %union.rec** %1405, align 8
  %1406 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1407 = load %union.rec*, %union.rec** @zz_res, align 8
  %1408 = bitcast %union.rec* %1407 to %struct.word_type*
  %1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %1408, i32 0, i32 0
  %1410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1409, i32 0, i64 0
  %1411 = getelementptr inbounds %struct.LIST, %struct.LIST* %1410, i32 0, i32 0
  store %union.rec* %1406, %union.rec** %1411, align 8
  %1412 = load %union.rec*, %union.rec** @zz_res, align 8
  %1413 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1414 = bitcast %union.rec* %1413 to %struct.word_type*
  %1415 = getelementptr inbounds %struct.word_type, %struct.word_type* %1414, i32 0, i32 0
  %1416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1415, i32 0, i64 0
  %1417 = getelementptr inbounds %struct.LIST, %struct.LIST* %1416, i32 0, i32 1
  store %union.rec* %1412, %union.rec** %1417, align 8
  br label %1418

; <label>:1418                                    ; preds = %1377, %1375
  %1419 = phi %union.rec* [ %1376, %1375 ], [ %1412, %1377 ]
  br label %1420

; <label>:1420                                    ; preds = %1418, %1370
  %1421 = phi %union.rec* [ %1371, %1370 ], [ %1419, %1418 ]
  %1422 = load %union.rec*, %union.rec** %xxstart1, align 8
  store %union.rec* %1422, %union.rec** @zz_res, align 8
  %1423 = load %union.rec*, %union.rec** %xxdest3, align 8
  store %union.rec* %1423, %union.rec** @zz_hold, align 8
  %1424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1425 = icmp eq %union.rec* %1424, null
  br i1 %1425, label %1426, label %1428

; <label>:1426                                    ; preds = %1420
  %1427 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1476

; <label>:1428                                    ; preds = %1420
  %1429 = load %union.rec*, %union.rec** @zz_res, align 8
  %1430 = icmp eq %union.rec* %1429, null
  br i1 %1430, label %1431, label %1433

; <label>:1431                                    ; preds = %1428
  %1432 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1474

; <label>:1433                                    ; preds = %1428
  %1434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1435 = bitcast %union.rec* %1434 to %struct.word_type*
  %1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %1435, i32 0, i32 0
  %1437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1436, i32 0, i64 0
  %1438 = getelementptr inbounds %struct.LIST, %struct.LIST* %1437, i32 0, i32 0
  %1439 = load %union.rec*, %union.rec** %1438, align 8
  store %union.rec* %1439, %union.rec** @zz_tmp, align 8
  %1440 = load %union.rec*, %union.rec** @zz_res, align 8
  %1441 = bitcast %union.rec* %1440 to %struct.word_type*
  %1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1442, i32 0, i64 0
  %1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %1443, i32 0, i32 0
  %1445 = load %union.rec*, %union.rec** %1444, align 8
  %1446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1447 = bitcast %union.rec* %1446 to %struct.word_type*
  %1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %1447, i32 0, i32 0
  %1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1448, i32 0, i64 0
  %1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %1449, i32 0, i32 0
  store %union.rec* %1445, %union.rec** %1450, align 8
  %1451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1452 = load %union.rec*, %union.rec** @zz_res, align 8
  %1453 = bitcast %union.rec* %1452 to %struct.word_type*
  %1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %1453, i32 0, i32 0
  %1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1454, i32 0, i64 0
  %1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %1455, i32 0, i32 0
  %1457 = load %union.rec*, %union.rec** %1456, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 0
  %1460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1459, i32 0, i64 0
  %1461 = getelementptr inbounds %struct.LIST, %struct.LIST* %1460, i32 0, i32 1
  store %union.rec* %1451, %union.rec** %1461, align 8
  %1462 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1463 = load %union.rec*, %union.rec** @zz_res, align 8
  %1464 = bitcast %union.rec* %1463 to %struct.word_type*
  %1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %1464, i32 0, i32 0
  %1466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1465, i32 0, i64 0
  %1467 = getelementptr inbounds %struct.LIST, %struct.LIST* %1466, i32 0, i32 0
  store %union.rec* %1462, %union.rec** %1467, align 8
  %1468 = load %union.rec*, %union.rec** @zz_res, align 8
  %1469 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1470 = bitcast %union.rec* %1469 to %struct.word_type*
  %1471 = getelementptr inbounds %struct.word_type, %struct.word_type* %1470, i32 0, i32 0
  %1472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1471, i32 0, i64 0
  %1473 = getelementptr inbounds %struct.LIST, %struct.LIST* %1472, i32 0, i32 1
  store %union.rec* %1468, %union.rec** %1473, align 8
  br label %1474

; <label>:1474                                    ; preds = %1433, %1431
  %1475 = phi %union.rec* [ %1432, %1431 ], [ %1468, %1433 ]
  br label %1476

; <label>:1476                                    ; preds = %1474, %1426
  %1477 = phi %union.rec* [ %1427, %1426 ], [ %1475, %1474 ]
  br label %1478

; <label>:1478                                    ; preds = %1476, %1336
  %1479 = load %union.rec*, %union.rec** %y, align 8
  %1480 = bitcast %union.rec* %1479 to %struct.word_type*
  %1481 = getelementptr inbounds %struct.word_type, %struct.word_type* %1480, i32 0, i32 0
  %1482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1481, i32 0, i64 1
  %1483 = getelementptr inbounds %struct.LIST, %struct.LIST* %1482, i32 0, i32 1
  %1484 = load %union.rec*, %union.rec** %1483, align 8
  store %union.rec* %1484, %union.rec** @xx_link, align 8
  %1485 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1485, %union.rec** @zz_hold, align 8
  %1486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1487 = bitcast %union.rec* %1486 to %struct.word_type*
  %1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %1487, i32 0, i32 0
  %1489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1488, i32 0, i64 1
  %1490 = getelementptr inbounds %struct.LIST, %struct.LIST* %1489, i32 0, i32 1
  %1491 = load %union.rec*, %union.rec** %1490, align 8
  %1492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1493 = icmp eq %union.rec* %1491, %1492
  br i1 %1493, label %1494, label %1495

; <label>:1494                                    ; preds = %1478
  br label %1536

; <label>:1495                                    ; preds = %1478
  %1496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.word_type*
  %1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %1497, i32 0, i32 0
  %1499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1498, i32 0, i64 1
  %1500 = getelementptr inbounds %struct.LIST, %struct.LIST* %1499, i32 0, i32 1
  %1501 = load %union.rec*, %union.rec** %1500, align 8
  store %union.rec* %1501, %union.rec** @zz_res, align 8
  %1502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1503 = bitcast %union.rec* %1502 to %struct.word_type*
  %1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %1503, i32 0, i32 0
  %1505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1504, i32 0, i64 1
  %1506 = getelementptr inbounds %struct.LIST, %struct.LIST* %1505, i32 0, i32 0
  %1507 = load %union.rec*, %union.rec** %1506, align 8
  %1508 = load %union.rec*, %union.rec** @zz_res, align 8
  %1509 = bitcast %union.rec* %1508 to %struct.word_type*
  %1510 = getelementptr inbounds %struct.word_type, %struct.word_type* %1509, i32 0, i32 0
  %1511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1510, i32 0, i64 1
  %1512 = getelementptr inbounds %struct.LIST, %struct.LIST* %1511, i32 0, i32 0
  store %union.rec* %1507, %union.rec** %1512, align 8
  %1513 = load %union.rec*, %union.rec** @zz_res, align 8
  %1514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1515 = bitcast %union.rec* %1514 to %struct.word_type*
  %1516 = getelementptr inbounds %struct.word_type, %struct.word_type* %1515, i32 0, i32 0
  %1517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1516, i32 0, i64 1
  %1518 = getelementptr inbounds %struct.LIST, %struct.LIST* %1517, i32 0, i32 0
  %1519 = load %union.rec*, %union.rec** %1518, align 8
  %1520 = bitcast %union.rec* %1519 to %struct.word_type*
  %1521 = getelementptr inbounds %struct.word_type, %struct.word_type* %1520, i32 0, i32 0
  %1522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1521, i32 0, i64 1
  %1523 = getelementptr inbounds %struct.LIST, %struct.LIST* %1522, i32 0, i32 1
  store %union.rec* %1513, %union.rec** %1523, align 8
  %1524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1526 = bitcast %union.rec* %1525 to %struct.word_type*
  %1527 = getelementptr inbounds %struct.word_type, %struct.word_type* %1526, i32 0, i32 0
  %1528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1527, i32 0, i64 1
  %1529 = getelementptr inbounds %struct.LIST, %struct.LIST* %1528, i32 0, i32 1
  store %union.rec* %1524, %union.rec** %1529, align 8
  %1530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1531 = bitcast %union.rec* %1530 to %struct.word_type*
  %1532 = getelementptr inbounds %struct.word_type, %struct.word_type* %1531, i32 0, i32 0
  %1533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1532, i32 0, i64 1
  %1534 = getelementptr inbounds %struct.LIST, %struct.LIST* %1533, i32 0, i32 0
  store %union.rec* %1524, %union.rec** %1534, align 8
  %1535 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1536

; <label>:1536                                    ; preds = %1495, %1494
  %1537 = phi %union.rec* [ null, %1494 ], [ %1535, %1495 ]
  store %union.rec* %1537, %union.rec** @xx_tmp, align 8
  %1538 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1538, %union.rec** @zz_hold, align 8
  %1539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1540 = bitcast %union.rec* %1539 to %struct.word_type*
  %1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %1540, i32 0, i32 0
  %1542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1541, i32 0, i64 0
  %1543 = getelementptr inbounds %struct.LIST, %struct.LIST* %1542, i32 0, i32 1
  %1544 = load %union.rec*, %union.rec** %1543, align 8
  %1545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1546 = icmp eq %union.rec* %1544, %1545
  br i1 %1546, label %1547, label %1548

; <label>:1547                                    ; preds = %1536
  br label %1589

; <label>:1548                                    ; preds = %1536
  %1549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1550 = bitcast %union.rec* %1549 to %struct.word_type*
  %1551 = getelementptr inbounds %struct.word_type, %struct.word_type* %1550, i32 0, i32 0
  %1552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1551, i32 0, i64 0
  %1553 = getelementptr inbounds %struct.LIST, %struct.LIST* %1552, i32 0, i32 1
  %1554 = load %union.rec*, %union.rec** %1553, align 8
  store %union.rec* %1554, %union.rec** @zz_res, align 8
  %1555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1556 = bitcast %union.rec* %1555 to %struct.word_type*
  %1557 = getelementptr inbounds %struct.word_type, %struct.word_type* %1556, i32 0, i32 0
  %1558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1557, i32 0, i64 0
  %1559 = getelementptr inbounds %struct.LIST, %struct.LIST* %1558, i32 0, i32 0
  %1560 = load %union.rec*, %union.rec** %1559, align 8
  %1561 = load %union.rec*, %union.rec** @zz_res, align 8
  %1562 = bitcast %union.rec* %1561 to %struct.word_type*
  %1563 = getelementptr inbounds %struct.word_type, %struct.word_type* %1562, i32 0, i32 0
  %1564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1563, i32 0, i64 0
  %1565 = getelementptr inbounds %struct.LIST, %struct.LIST* %1564, i32 0, i32 0
  store %union.rec* %1560, %union.rec** %1565, align 8
  %1566 = load %union.rec*, %union.rec** @zz_res, align 8
  %1567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1568 = bitcast %union.rec* %1567 to %struct.word_type*
  %1569 = getelementptr inbounds %struct.word_type, %struct.word_type* %1568, i32 0, i32 0
  %1570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1569, i32 0, i64 0
  %1571 = getelementptr inbounds %struct.LIST, %struct.LIST* %1570, i32 0, i32 0
  %1572 = load %union.rec*, %union.rec** %1571, align 8
  %1573 = bitcast %union.rec* %1572 to %struct.word_type*
  %1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %1573, i32 0, i32 0
  %1575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1574, i32 0, i64 0
  %1576 = getelementptr inbounds %struct.LIST, %struct.LIST* %1575, i32 0, i32 1
  store %union.rec* %1566, %union.rec** %1576, align 8
  %1577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1579 = bitcast %union.rec* %1578 to %struct.word_type*
  %1580 = getelementptr inbounds %struct.word_type, %struct.word_type* %1579, i32 0, i32 0
  %1581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1580, i32 0, i64 0
  %1582 = getelementptr inbounds %struct.LIST, %struct.LIST* %1581, i32 0, i32 1
  store %union.rec* %1577, %union.rec** %1582, align 8
  %1583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1584 = bitcast %union.rec* %1583 to %struct.word_type*
  %1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %1584, i32 0, i32 0
  %1586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1585, i32 0, i64 0
  %1587 = getelementptr inbounds %struct.LIST, %struct.LIST* %1586, i32 0, i32 0
  store %union.rec* %1577, %union.rec** %1587, align 8
  %1588 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1589

; <label>:1589                                    ; preds = %1548, %1547
  %1590 = phi %union.rec* [ null, %1547 ], [ %1588, %1548 ]
  %1591 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1591, %union.rec** @zz_hold, align 8
  %1592 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1592, %union.rec** @zz_hold, align 8
  %1593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1594 = bitcast %union.rec* %1593 to %struct.word_type*
  %1595 = getelementptr inbounds %struct.word_type, %struct.word_type* %1594, i32 0, i32 1
  %1596 = bitcast %union.FIRST_UNION* %1595 to %struct.anon*
  %1597 = getelementptr inbounds %struct.anon, %struct.anon* %1596, i32 0, i32 0
  %1598 = load i8, i8* %1597, align 1
  %1599 = zext i8 %1598 to i32
  %1600 = icmp eq i32 %1599, 11
  br i1 %1600, label %1610, label %1601

; <label>:1601                                    ; preds = %1589
  %1602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1603 = bitcast %union.rec* %1602 to %struct.word_type*
  %1604 = getelementptr inbounds %struct.word_type, %struct.word_type* %1603, i32 0, i32 1
  %1605 = bitcast %union.FIRST_UNION* %1604 to %struct.anon*
  %1606 = getelementptr inbounds %struct.anon, %struct.anon* %1605, i32 0, i32 0
  %1607 = load i8, i8* %1606, align 1
  %1608 = zext i8 %1607 to i32
  %1609 = icmp eq i32 %1608, 12
  br i1 %1609, label %1610, label %1618

; <label>:1610                                    ; preds = %1601, %1589
  %1611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1612 = bitcast %union.rec* %1611 to %struct.word_type*
  %1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %1612, i32 0, i32 1
  %1614 = bitcast %union.FIRST_UNION* %1613 to %struct.anon*
  %1615 = getelementptr inbounds %struct.anon, %struct.anon* %1614, i32 0, i32 1
  %1616 = load i8, i8* %1615, align 1
  %1617 = zext i8 %1616 to i32
  br label %1629

; <label>:1618                                    ; preds = %1601
  %1619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1620 = bitcast %union.rec* %1619 to %struct.word_type*
  %1621 = getelementptr inbounds %struct.word_type, %struct.word_type* %1620, i32 0, i32 1
  %1622 = bitcast %union.FIRST_UNION* %1621 to %struct.anon*
  %1623 = getelementptr inbounds %struct.anon, %struct.anon* %1622, i32 0, i32 0
  %1624 = load i8, i8* %1623, align 1
  %1625 = zext i8 %1624 to i64
  %1626 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1625
  %1627 = load i8, i8* %1626, align 1
  %1628 = zext i8 %1627 to i32
  br label %1629

; <label>:1629                                    ; preds = %1618, %1610
  %1630 = phi i32 [ %1617, %1610 ], [ %1628, %1618 ]
  store i32 %1630, i32* @zz_size, align 4
  %1631 = load i32, i32* @zz_size, align 4
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1632
  %1634 = load %union.rec*, %union.rec** %1633, align 8
  %1635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1636 = bitcast %union.rec* %1635 to %struct.word_type*
  %1637 = getelementptr inbounds %struct.word_type, %struct.word_type* %1636, i32 0, i32 0
  %1638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1637, i32 0, i64 0
  %1639 = getelementptr inbounds %struct.LIST, %struct.LIST* %1638, i32 0, i32 0
  store %union.rec* %1634, %union.rec** %1639, align 8
  %1640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1641 = load i32, i32* @zz_size, align 4
  %1642 = sext i32 %1641 to i64
  %1643 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1642
  store %union.rec* %1640, %union.rec** %1643, align 8
  %1644 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1645 = bitcast %union.rec* %1644 to %struct.word_type*
  %1646 = getelementptr inbounds %struct.word_type, %struct.word_type* %1645, i32 0, i32 0
  %1647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1646, i32 0, i64 1
  %1648 = getelementptr inbounds %struct.LIST, %struct.LIST* %1647, i32 0, i32 1
  %1649 = load %union.rec*, %union.rec** %1648, align 8
  %1650 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1651 = icmp eq %union.rec* %1649, %1650
  br i1 %1651, label %1652, label %1655

; <label>:1652                                    ; preds = %1629
  %1653 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1654 = call i32 @DisposeObject(%union.rec* %1653)
  br label %1655

; <label>:1655                                    ; preds = %1652, %1629
  %1656 = load %union.rec*, %union.rec** %link, align 8
  %1657 = bitcast %union.rec* %1656 to %struct.word_type*
  %1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %1657, i32 0, i32 0
  %1659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1658, i32 0, i64 0
  %1660 = getelementptr inbounds %struct.LIST, %struct.LIST* %1659, i32 0, i32 0
  %1661 = load %union.rec*, %union.rec** %1660, align 8
  store %union.rec* %1661, %union.rec** %link, align 8
  br label %1662

; <label>:1662                                    ; preds = %1655, %1325
  br label %3242

; <label>:1663                                    ; preds = %959
  %1664 = load %union.rec*, %union.rec** %y, align 8
  %1665 = bitcast %union.rec* %1664 to %struct.word_type*
  %1666 = getelementptr inbounds %struct.word_type, %struct.word_type* %1665, i32 0, i32 0
  %1667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1666, i32 0, i64 1
  %1668 = getelementptr inbounds %struct.LIST, %struct.LIST* %1667, i32 0, i32 1
  %1669 = load %union.rec*, %union.rec** %1668, align 8
  %1670 = load %union.rec*, %union.rec** %y, align 8
  %1671 = bitcast %union.rec* %1670 to %struct.word_type*
  %1672 = getelementptr inbounds %struct.word_type, %struct.word_type* %1671, i32 0, i32 0
  %1673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1672, i32 0, i64 1
  %1674 = getelementptr inbounds %struct.LIST, %struct.LIST* %1673, i32 0, i32 0
  %1675 = load %union.rec*, %union.rec** %1674, align 8
  %1676 = icmp eq %union.rec* %1669, %1675
  br i1 %1676, label %1680, label %1677

; <label>:1677                                    ; preds = %1663
  %1678 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1679 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1678, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0))
  br label %1680

; <label>:1680                                    ; preds = %1677, %1663
  %1681 = load %union.rec*, %union.rec** %y, align 8
  %1682 = bitcast %union.rec* %1681 to %struct.word_type*
  %1683 = getelementptr inbounds %struct.word_type, %struct.word_type* %1682, i32 0, i32 0
  %1684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1683, i32 0, i64 0
  %1685 = getelementptr inbounds %struct.LIST, %struct.LIST* %1684, i32 0, i32 0
  %1686 = load %union.rec*, %union.rec** %1685, align 8
  %1687 = bitcast %union.rec* %1686 to %struct.word_type*
  %1688 = getelementptr inbounds %struct.word_type, %struct.word_type* %1687, i32 0, i32 0
  %1689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1688, i32 0, i64 1
  %1690 = getelementptr inbounds %struct.LIST, %struct.LIST* %1689, i32 0, i32 0
  %1691 = load %union.rec*, %union.rec** %1690, align 8
  store %union.rec* %1691, %union.rec** %z, align 8
  br label %1692

; <label>:1692                                    ; preds = %1702, %1680
  %1693 = load %union.rec*, %union.rec** %z, align 8
  %1694 = bitcast %union.rec* %1693 to %struct.word_type*
  %1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %1694, i32 0, i32 1
  %1696 = bitcast %union.FIRST_UNION* %1695 to %struct.anon*
  %1697 = getelementptr inbounds %struct.anon, %struct.anon* %1696, i32 0, i32 0
  %1698 = load i8, i8* %1697, align 1
  %1699 = zext i8 %1698 to i32
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1701, label %1709

; <label>:1701                                    ; preds = %1692
  br label %1702

; <label>:1702                                    ; preds = %1701
  %1703 = load %union.rec*, %union.rec** %z, align 8
  %1704 = bitcast %union.rec* %1703 to %struct.word_type*
  %1705 = getelementptr inbounds %struct.word_type, %struct.word_type* %1704, i32 0, i32 0
  %1706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1705, i32 0, i64 1
  %1707 = getelementptr inbounds %struct.LIST, %struct.LIST* %1706, i32 0, i32 0
  %1708 = load %union.rec*, %union.rec** %1707, align 8
  store %union.rec* %1708, %union.rec** %z, align 8
  br label %1692

; <label>:1709                                    ; preds = %1692
  %1710 = load %union.rec*, %union.rec** %z, align 8
  %1711 = bitcast %union.rec* %1710 to %struct.word_type*
  %1712 = getelementptr inbounds %struct.word_type, %struct.word_type* %1711, i32 0, i32 1
  %1713 = bitcast %union.FIRST_UNION* %1712 to %struct.anon*
  %1714 = getelementptr inbounds %struct.anon, %struct.anon* %1713, i32 0, i32 0
  %1715 = load i8, i8* %1714, align 1
  %1716 = zext i8 %1715 to i32
  %1717 = icmp sge i32 %1716, 2
  br i1 %1717, label %1718, label %1736

; <label>:1718                                    ; preds = %1709
  %1719 = load %union.rec*, %union.rec** %z, align 8
  %1720 = bitcast %union.rec* %1719 to %struct.word_type*
  %1721 = getelementptr inbounds %struct.word_type, %struct.word_type* %1720, i32 0, i32 1
  %1722 = bitcast %union.FIRST_UNION* %1721 to %struct.anon*
  %1723 = getelementptr inbounds %struct.anon, %struct.anon* %1722, i32 0, i32 0
  %1724 = load i8, i8* %1723, align 1
  %1725 = zext i8 %1724 to i32
  %1726 = icmp sle i32 %1725, 8
  br i1 %1726, label %1727, label %1736

; <label>:1727                                    ; preds = %1718
  %1728 = load %union.rec*, %union.rec** %z, align 8
  %1729 = bitcast %union.rec* %1728 to %struct.word_type*
  %1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %1729, i32 0, i32 2
  %1731 = bitcast %union.SECOND_UNION* %1730 to %struct.anon.2*
  %1732 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1731, i32 0, i32 2
  %1733 = load i16, i16* %1732, align 2
  %1734 = and i16 %1733, -17
  %1735 = or i16 %1734, 16
  store i16 %1735, i16* %1732, align 2
  br label %3210

; <label>:1736                                    ; preds = %1718, %1709
  %1737 = load %union.rec*, %union.rec** %z, align 8
  %1738 = bitcast %union.rec* %1737 to %struct.word_type*
  %1739 = getelementptr inbounds %struct.word_type, %struct.word_type* %1738, i32 0, i32 1
  %1740 = bitcast %union.FIRST_UNION* %1739 to %struct.anon*
  %1741 = getelementptr inbounds %struct.anon, %struct.anon* %1740, i32 0, i32 0
  %1742 = load i8, i8* %1741, align 1
  %1743 = zext i8 %1742 to i32
  %1744 = icmp eq i32 %1743, 19
  br i1 %1744, label %1745, label %3209

; <label>:1745                                    ; preds = %1736
  %1746 = load %union.rec*, %union.rec** %y, align 8
  %1747 = bitcast %union.rec* %1746 to %struct.word_type*
  %1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %1747, i32 0, i32 0
  %1749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1748, i32 0, i64 0
  %1750 = getelementptr inbounds %struct.LIST, %struct.LIST* %1749, i32 0, i32 1
  %1751 = load %union.rec*, %union.rec** %1750, align 8
  %1752 = bitcast %union.rec* %1751 to %struct.word_type*
  %1753 = getelementptr inbounds %struct.word_type, %struct.word_type* %1752, i32 0, i32 0
  %1754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1753, i32 0, i64 1
  %1755 = getelementptr inbounds %struct.LIST, %struct.LIST* %1754, i32 0, i32 0
  %1756 = load %union.rec*, %union.rec** %1755, align 8
  store %union.rec* %1756, %union.rec** %hor, align 8
  br label %1757

; <label>:1757                                    ; preds = %1767, %1745
  %1758 = load %union.rec*, %union.rec** %hor, align 8
  %1759 = bitcast %union.rec* %1758 to %struct.word_type*
  %1760 = getelementptr inbounds %struct.word_type, %struct.word_type* %1759, i32 0, i32 1
  %1761 = bitcast %union.FIRST_UNION* %1760 to %struct.anon*
  %1762 = getelementptr inbounds %struct.anon, %struct.anon* %1761, i32 0, i32 0
  %1763 = load i8, i8* %1762, align 1
  %1764 = zext i8 %1763 to i32
  %1765 = icmp eq i32 %1764, 0
  br i1 %1765, label %1766, label %1774

; <label>:1766                                    ; preds = %1757
  br label %1767

; <label>:1767                                    ; preds = %1766
  %1768 = load %union.rec*, %union.rec** %hor, align 8
  %1769 = bitcast %union.rec* %1768 to %struct.word_type*
  %1770 = getelementptr inbounds %struct.word_type, %struct.word_type* %1769, i32 0, i32 0
  %1771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1770, i32 0, i64 1
  %1772 = getelementptr inbounds %struct.LIST, %struct.LIST* %1771, i32 0, i32 0
  %1773 = load %union.rec*, %union.rec** %1772, align 8
  store %union.rec* %1773, %union.rec** %hor, align 8
  br label %1757

; <label>:1774                                    ; preds = %1757
  %1775 = load %union.rec*, %union.rec** %hor, align 8
  %1776 = bitcast %union.rec* %1775 to %struct.word_type*
  %1777 = getelementptr inbounds %struct.word_type, %struct.word_type* %1776, i32 0, i32 1
  %1778 = bitcast %union.FIRST_UNION* %1777 to %struct.anon*
  %1779 = getelementptr inbounds %struct.anon, %struct.anon* %1778, i32 0, i32 0
  %1780 = load i8, i8* %1779, align 1
  %1781 = zext i8 %1780 to i32
  %1782 = icmp eq i32 %1781, 16
  br i1 %1782, label %1786, label %1783

; <label>:1783                                    ; preds = %1774
  %1784 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1785 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1784, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %1786

; <label>:1786                                    ; preds = %1783, %1774
  %1787 = load %union.rec*, %union.rec** %z, align 8
  %1788 = bitcast %union.rec* %1787 to %struct.word_type*
  %1789 = getelementptr inbounds %struct.word_type, %struct.word_type* %1788, i32 0, i32 0
  %1790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1789, i32 0, i64 1
  %1791 = getelementptr inbounds %struct.LIST, %struct.LIST* %1790, i32 0, i32 1
  %1792 = load %union.rec*, %union.rec** %1791, align 8
  %1793 = bitcast %union.rec* %1792 to %struct.word_type*
  %1794 = getelementptr inbounds %struct.word_type, %struct.word_type* %1793, i32 0, i32 0
  %1795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1794, i32 0, i64 0
  %1796 = getelementptr inbounds %struct.LIST, %struct.LIST* %1795, i32 0, i32 0
  %1797 = load %union.rec*, %union.rec** %1796, align 8
  store %union.rec* %1797, %union.rec** %thor, align 8
  br label %1798

; <label>:1798                                    ; preds = %1808, %1786
  %1799 = load %union.rec*, %union.rec** %thor, align 8
  %1800 = bitcast %union.rec* %1799 to %struct.word_type*
  %1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %1800, i32 0, i32 1
  %1802 = bitcast %union.FIRST_UNION* %1801 to %struct.anon*
  %1803 = getelementptr inbounds %struct.anon, %struct.anon* %1802, i32 0, i32 0
  %1804 = load i8, i8* %1803, align 1
  %1805 = zext i8 %1804 to i32
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1807, label %1815

; <label>:1807                                    ; preds = %1798
  br label %1808

; <label>:1808                                    ; preds = %1807
  %1809 = load %union.rec*, %union.rec** %thor, align 8
  %1810 = bitcast %union.rec* %1809 to %struct.word_type*
  %1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %1810, i32 0, i32 0
  %1812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1811, i32 0, i64 0
  %1813 = getelementptr inbounds %struct.LIST, %struct.LIST* %1812, i32 0, i32 0
  %1814 = load %union.rec*, %union.rec** %1813, align 8
  store %union.rec* %1814, %union.rec** %thor, align 8
  br label %1798

; <label>:1815                                    ; preds = %1798
  %1816 = load %union.rec*, %union.rec** %hor, align 8
  %1817 = load %union.rec*, %union.rec** %thor, align 8
  %1818 = icmp eq %union.rec* %1816, %1817
  br i1 %1818, label %1822, label %1819

; <label>:1819                                    ; preds = %1815
  %1820 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1821 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1820, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  br label %1822

; <label>:1822                                    ; preds = %1819, %1815
  %1823 = load %union.rec*, %union.rec** %y, align 8
  %1824 = bitcast %union.rec* %1823 to %struct.word_type*
  %1825 = getelementptr inbounds %struct.word_type, %struct.word_type* %1824, i32 0, i32 0
  %1826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1825, i32 0, i64 0
  %1827 = getelementptr inbounds %struct.LIST, %struct.LIST* %1826, i32 0, i32 1
  %1828 = load %union.rec*, %union.rec** %1827, align 8
  store %union.rec* %1828, %union.rec** %clink, align 8
  %1829 = load %union.rec*, %union.rec** %z, align 8
  %1830 = bitcast %union.rec* %1829 to %struct.word_type*
  %1831 = getelementptr inbounds %struct.word_type, %struct.word_type* %1830, i32 0, i32 0
  %1832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1831, i32 0, i64 1
  %1833 = getelementptr inbounds %struct.LIST, %struct.LIST* %1832, i32 0, i32 1
  %1834 = load %union.rec*, %union.rec** %1833, align 8
  store %union.rec* %1834, %union.rec** %dlink, align 8
  %1835 = load %union.rec*, %union.rec** %z, align 8
  %1836 = bitcast %union.rec* %1835 to %struct.word_type*
  %1837 = getelementptr inbounds %struct.word_type, %struct.word_type* %1836, i32 0, i32 0
  %1838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1837, i32 0, i64 0
  %1839 = getelementptr inbounds %struct.LIST, %struct.LIST* %1838, i32 0, i32 0
  %1840 = load %union.rec*, %union.rec** %1839, align 8
  store %union.rec* %1840, %union.rec** %tlink, align 8
  br label %1841

; <label>:1841                                    ; preds = %2841, %1822
  %1842 = load %union.rec*, %union.rec** %tlink, align 8
  %1843 = load %union.rec*, %union.rec** %z, align 8
  %1844 = icmp ne %union.rec* %1842, %1843
  br i1 %1844, label %1845, label %2848

; <label>:1845                                    ; preds = %1841
  %1846 = load %union.rec*, %union.rec** %tlink, align 8
  %1847 = bitcast %union.rec* %1846 to %struct.word_type*
  %1848 = getelementptr inbounds %struct.word_type, %struct.word_type* %1847, i32 0, i32 0
  %1849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1848, i32 0, i64 1
  %1850 = getelementptr inbounds %struct.LIST, %struct.LIST* %1849, i32 0, i32 0
  %1851 = load %union.rec*, %union.rec** %1850, align 8
  store %union.rec* %1851, %union.rec** %t, align 8
  br label %1852

; <label>:1852                                    ; preds = %1862, %1845
  %1853 = load %union.rec*, %union.rec** %t, align 8
  %1854 = bitcast %union.rec* %1853 to %struct.word_type*
  %1855 = getelementptr inbounds %struct.word_type, %struct.word_type* %1854, i32 0, i32 1
  %1856 = bitcast %union.FIRST_UNION* %1855 to %struct.anon*
  %1857 = getelementptr inbounds %struct.anon, %struct.anon* %1856, i32 0, i32 0
  %1858 = load i8, i8* %1857, align 1
  %1859 = zext i8 %1858 to i32
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1861, label %1869

; <label>:1861                                    ; preds = %1852
  br label %1862

; <label>:1862                                    ; preds = %1861
  %1863 = load %union.rec*, %union.rec** %t, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.word_type*
  %1865 = getelementptr inbounds %struct.word_type, %struct.word_type* %1864, i32 0, i32 0
  %1866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1865, i32 0, i64 1
  %1867 = getelementptr inbounds %struct.LIST, %struct.LIST* %1866, i32 0, i32 0
  %1868 = load %union.rec*, %union.rec** %1867, align 8
  store %union.rec* %1868, %union.rec** %t, align 8
  br label %1852

; <label>:1869                                    ; preds = %1852
  %1870 = load %union.rec*, %union.rec** %t, align 8
  %1871 = bitcast %union.rec* %1870 to %struct.word_type*
  %1872 = getelementptr inbounds %struct.word_type, %struct.word_type* %1871, i32 0, i32 1
  %1873 = bitcast %union.FIRST_UNION* %1872 to %struct.anon*
  %1874 = getelementptr inbounds %struct.anon, %struct.anon* %1873, i32 0, i32 0
  %1875 = load i8, i8* %1874, align 1
  %1876 = zext i8 %1875 to i32
  %1877 = icmp eq i32 %1876, 1
  br i1 %1877, label %1878, label %2055

; <label>:1878                                    ; preds = %1869
  %1879 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1880 = zext i8 %1879 to i32
  store i32 %1880, i32* @zz_size, align 4
  %1881 = sext i32 %1880 to i64
  %1882 = icmp uge i64 %1881, 265
  br i1 %1882, label %1883, label %1886

; <label>:1883                                    ; preds = %1878
  %1884 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1885 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1884)
  br label %1911

; <label>:1886                                    ; preds = %1878
  %1887 = load i32, i32* @zz_size, align 4
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1888
  %1890 = load %union.rec*, %union.rec** %1889, align 8
  %1891 = icmp eq %union.rec* %1890, null
  br i1 %1891, label %1892, label %1896

; <label>:1892                                    ; preds = %1886
  %1893 = load i32, i32* @zz_size, align 4
  %1894 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1895 = call %union.rec* @GetMemory(i32 %1893, %struct.FILE_POS* %1894)
  store %union.rec* %1895, %union.rec** @zz_hold, align 8
  br label %1910

; <label>:1896                                    ; preds = %1886
  %1897 = load i32, i32* @zz_size, align 4
  %1898 = sext i32 %1897 to i64
  %1899 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1898
  %1900 = load %union.rec*, %union.rec** %1899, align 8
  store %union.rec* %1900, %union.rec** @zz_hold, align 8
  store %union.rec* %1900, %union.rec** @zz_hold, align 8
  %1901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1902 = bitcast %union.rec* %1901 to %struct.word_type*
  %1903 = getelementptr inbounds %struct.word_type, %struct.word_type* %1902, i32 0, i32 0
  %1904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1903, i32 0, i64 0
  %1905 = getelementptr inbounds %struct.LIST, %struct.LIST* %1904, i32 0, i32 0
  %1906 = load %union.rec*, %union.rec** %1905, align 8
  %1907 = load i32, i32* @zz_size, align 4
  %1908 = sext i32 %1907 to i64
  %1909 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1908
  store %union.rec* %1906, %union.rec** %1909, align 8
  br label %1910

; <label>:1910                                    ; preds = %1896, %1892
  br label %1911

; <label>:1911                                    ; preds = %1910, %1883
  %1912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1913 = bitcast %union.rec* %1912 to %struct.word_type*
  %1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %1913, i32 0, i32 1
  %1915 = bitcast %union.FIRST_UNION* %1914 to %struct.anon*
  %1916 = getelementptr inbounds %struct.anon, %struct.anon* %1915, i32 0, i32 0
  store i8 0, i8* %1916, align 1
  %1917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1919 = bitcast %union.rec* %1918 to %struct.word_type*
  %1920 = getelementptr inbounds %struct.word_type, %struct.word_type* %1919, i32 0, i32 0
  %1921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1920, i32 0, i64 1
  %1922 = getelementptr inbounds %struct.LIST, %struct.LIST* %1921, i32 0, i32 1
  store %union.rec* %1917, %union.rec** %1922, align 8
  %1923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1924 = bitcast %union.rec* %1923 to %struct.word_type*
  %1925 = getelementptr inbounds %struct.word_type, %struct.word_type* %1924, i32 0, i32 0
  %1926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1925, i32 0, i64 1
  %1927 = getelementptr inbounds %struct.LIST, %struct.LIST* %1926, i32 0, i32 0
  store %union.rec* %1917, %union.rec** %1927, align 8
  %1928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1929 = bitcast %union.rec* %1928 to %struct.word_type*
  %1930 = getelementptr inbounds %struct.word_type, %struct.word_type* %1929, i32 0, i32 0
  %1931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1930, i32 0, i64 0
  %1932 = getelementptr inbounds %struct.LIST, %struct.LIST* %1931, i32 0, i32 1
  store %union.rec* %1917, %union.rec** %1932, align 8
  %1933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1934 = bitcast %union.rec* %1933 to %struct.word_type*
  %1935 = getelementptr inbounds %struct.word_type, %struct.word_type* %1934, i32 0, i32 0
  %1936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1935, i32 0, i64 0
  %1937 = getelementptr inbounds %struct.LIST, %struct.LIST* %1936, i32 0, i32 0
  store %union.rec* %1917, %union.rec** %1937, align 8
  store %union.rec* %1917, %union.rec** @xx_link, align 8
  %1938 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1938, %union.rec** @zz_res, align 8
  %1939 = load %union.rec*, %union.rec** %link, align 8
  %1940 = bitcast %union.rec* %1939 to %struct.word_type*
  %1941 = getelementptr inbounds %struct.word_type, %struct.word_type* %1940, i32 0, i32 0
  %1942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1941, i32 0, i64 0
  %1943 = getelementptr inbounds %struct.LIST, %struct.LIST* %1942, i32 0, i32 1
  %1944 = load %union.rec*, %union.rec** %1943, align 8
  store %union.rec* %1944, %union.rec** @zz_hold, align 8
  %1945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1946 = icmp eq %union.rec* %1945, null
  br i1 %1946, label %1947, label %1949

; <label>:1947                                    ; preds = %1911
  %1948 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1997

; <label>:1949                                    ; preds = %1911
  %1950 = load %union.rec*, %union.rec** @zz_res, align 8
  %1951 = icmp eq %union.rec* %1950, null
  br i1 %1951, label %1952, label %1954

; <label>:1952                                    ; preds = %1949
  %1953 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1995

; <label>:1954                                    ; preds = %1949
  %1955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1956 = bitcast %union.rec* %1955 to %struct.word_type*
  %1957 = getelementptr inbounds %struct.word_type, %struct.word_type* %1956, i32 0, i32 0
  %1958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1957, i32 0, i64 0
  %1959 = getelementptr inbounds %struct.LIST, %struct.LIST* %1958, i32 0, i32 0
  %1960 = load %union.rec*, %union.rec** %1959, align 8
  store %union.rec* %1960, %union.rec** @zz_tmp, align 8
  %1961 = load %union.rec*, %union.rec** @zz_res, align 8
  %1962 = bitcast %union.rec* %1961 to %struct.word_type*
  %1963 = getelementptr inbounds %struct.word_type, %struct.word_type* %1962, i32 0, i32 0
  %1964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1963, i32 0, i64 0
  %1965 = getelementptr inbounds %struct.LIST, %struct.LIST* %1964, i32 0, i32 0
  %1966 = load %union.rec*, %union.rec** %1965, align 8
  %1967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1968 = bitcast %union.rec* %1967 to %struct.word_type*
  %1969 = getelementptr inbounds %struct.word_type, %struct.word_type* %1968, i32 0, i32 0
  %1970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1969, i32 0, i64 0
  %1971 = getelementptr inbounds %struct.LIST, %struct.LIST* %1970, i32 0, i32 0
  store %union.rec* %1966, %union.rec** %1971, align 8
  %1972 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1973 = load %union.rec*, %union.rec** @zz_res, align 8
  %1974 = bitcast %union.rec* %1973 to %struct.word_type*
  %1975 = getelementptr inbounds %struct.word_type, %struct.word_type* %1974, i32 0, i32 0
  %1976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1975, i32 0, i64 0
  %1977 = getelementptr inbounds %struct.LIST, %struct.LIST* %1976, i32 0, i32 0
  %1978 = load %union.rec*, %union.rec** %1977, align 8
  %1979 = bitcast %union.rec* %1978 to %struct.word_type*
  %1980 = getelementptr inbounds %struct.word_type, %struct.word_type* %1979, i32 0, i32 0
  %1981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1980, i32 0, i64 0
  %1982 = getelementptr inbounds %struct.LIST, %struct.LIST* %1981, i32 0, i32 1
  store %union.rec* %1972, %union.rec** %1982, align 8
  %1983 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1984 = load %union.rec*, %union.rec** @zz_res, align 8
  %1985 = bitcast %union.rec* %1984 to %struct.word_type*
  %1986 = getelementptr inbounds %struct.word_type, %struct.word_type* %1985, i32 0, i32 0
  %1987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1986, i32 0, i64 0
  %1988 = getelementptr inbounds %struct.LIST, %struct.LIST* %1987, i32 0, i32 0
  store %union.rec* %1983, %union.rec** %1988, align 8
  %1989 = load %union.rec*, %union.rec** @zz_res, align 8
  %1990 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1991 = bitcast %union.rec* %1990 to %struct.word_type*
  %1992 = getelementptr inbounds %struct.word_type, %struct.word_type* %1991, i32 0, i32 0
  %1993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1992, i32 0, i64 0
  %1994 = getelementptr inbounds %struct.LIST, %struct.LIST* %1993, i32 0, i32 1
  store %union.rec* %1989, %union.rec** %1994, align 8
  br label %1995

; <label>:1995                                    ; preds = %1954, %1952
  %1996 = phi %union.rec* [ %1953, %1952 ], [ %1989, %1954 ]
  br label %1997

; <label>:1997                                    ; preds = %1995, %1947
  %1998 = phi %union.rec* [ %1948, %1947 ], [ %1996, %1995 ]
  %1999 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1999, %union.rec** @zz_res, align 8
  %2000 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2000, %union.rec** @zz_hold, align 8
  %2001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2002 = icmp eq %union.rec* %2001, null
  br i1 %2002, label %2003, label %2005

; <label>:2003                                    ; preds = %1997
  %2004 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2053

; <label>:2005                                    ; preds = %1997
  %2006 = load %union.rec*, %union.rec** @zz_res, align 8
  %2007 = icmp eq %union.rec* %2006, null
  br i1 %2007, label %2008, label %2010

; <label>:2008                                    ; preds = %2005
  %2009 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2051

; <label>:2010                                    ; preds = %2005
  %2011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2012 = bitcast %union.rec* %2011 to %struct.word_type*
  %2013 = getelementptr inbounds %struct.word_type, %struct.word_type* %2012, i32 0, i32 0
  %2014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2013, i32 0, i64 1
  %2015 = getelementptr inbounds %struct.LIST, %struct.LIST* %2014, i32 0, i32 0
  %2016 = load %union.rec*, %union.rec** %2015, align 8
  store %union.rec* %2016, %union.rec** @zz_tmp, align 8
  %2017 = load %union.rec*, %union.rec** @zz_res, align 8
  %2018 = bitcast %union.rec* %2017 to %struct.word_type*
  %2019 = getelementptr inbounds %struct.word_type, %struct.word_type* %2018, i32 0, i32 0
  %2020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2019, i32 0, i64 1
  %2021 = getelementptr inbounds %struct.LIST, %struct.LIST* %2020, i32 0, i32 0
  %2022 = load %union.rec*, %union.rec** %2021, align 8
  %2023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2024 = bitcast %union.rec* %2023 to %struct.word_type*
  %2025 = getelementptr inbounds %struct.word_type, %struct.word_type* %2024, i32 0, i32 0
  %2026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2025, i32 0, i64 1
  %2027 = getelementptr inbounds %struct.LIST, %struct.LIST* %2026, i32 0, i32 0
  store %union.rec* %2022, %union.rec** %2027, align 8
  %2028 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2029 = load %union.rec*, %union.rec** @zz_res, align 8
  %2030 = bitcast %union.rec* %2029 to %struct.word_type*
  %2031 = getelementptr inbounds %struct.word_type, %struct.word_type* %2030, i32 0, i32 0
  %2032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2031, i32 0, i64 1
  %2033 = getelementptr inbounds %struct.LIST, %struct.LIST* %2032, i32 0, i32 0
  %2034 = load %union.rec*, %union.rec** %2033, align 8
  %2035 = bitcast %union.rec* %2034 to %struct.word_type*
  %2036 = getelementptr inbounds %struct.word_type, %struct.word_type* %2035, i32 0, i32 0
  %2037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2036, i32 0, i64 1
  %2038 = getelementptr inbounds %struct.LIST, %struct.LIST* %2037, i32 0, i32 1
  store %union.rec* %2028, %union.rec** %2038, align 8
  %2039 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2040 = load %union.rec*, %union.rec** @zz_res, align 8
  %2041 = bitcast %union.rec* %2040 to %struct.word_type*
  %2042 = getelementptr inbounds %struct.word_type, %struct.word_type* %2041, i32 0, i32 0
  %2043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2042, i32 0, i64 1
  %2044 = getelementptr inbounds %struct.LIST, %struct.LIST* %2043, i32 0, i32 0
  store %union.rec* %2039, %union.rec** %2044, align 8
  %2045 = load %union.rec*, %union.rec** @zz_res, align 8
  %2046 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2047 = bitcast %union.rec* %2046 to %struct.word_type*
  %2048 = getelementptr inbounds %struct.word_type, %struct.word_type* %2047, i32 0, i32 0
  %2049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2048, i32 0, i64 1
  %2050 = getelementptr inbounds %struct.LIST, %struct.LIST* %2049, i32 0, i32 1
  store %union.rec* %2045, %union.rec** %2050, align 8
  br label %2051

; <label>:2051                                    ; preds = %2010, %2008
  %2052 = phi %union.rec* [ %2009, %2008 ], [ %2045, %2010 ]
  br label %2053

; <label>:2053                                    ; preds = %2051, %2003
  %2054 = phi %union.rec* [ %2004, %2003 ], [ %2052, %2051 ]
  br label %2840

; <label>:2055                                    ; preds = %1869
  %2056 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 9), align 1
  %2057 = zext i8 %2056 to i32
  store i32 %2057, i32* @zz_size, align 4
  %2058 = sext i32 %2057 to i64
  %2059 = icmp uge i64 %2058, 265
  br i1 %2059, label %2060, label %2063

; <label>:2060                                    ; preds = %2055
  %2061 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2062 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2061)
  br label %2088

; <label>:2063                                    ; preds = %2055
  %2064 = load i32, i32* @zz_size, align 4
  %2065 = sext i32 %2064 to i64
  %2066 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2065
  %2067 = load %union.rec*, %union.rec** %2066, align 8
  %2068 = icmp eq %union.rec* %2067, null
  br i1 %2068, label %2069, label %2073

; <label>:2069                                    ; preds = %2063
  %2070 = load i32, i32* @zz_size, align 4
  %2071 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2072 = call %union.rec* @GetMemory(i32 %2070, %struct.FILE_POS* %2071)
  store %union.rec* %2072, %union.rec** @zz_hold, align 8
  br label %2087

; <label>:2073                                    ; preds = %2063
  %2074 = load i32, i32* @zz_size, align 4
  %2075 = sext i32 %2074 to i64
  %2076 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2075
  %2077 = load %union.rec*, %union.rec** %2076, align 8
  store %union.rec* %2077, %union.rec** @zz_hold, align 8
  store %union.rec* %2077, %union.rec** @zz_hold, align 8
  %2078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2079 = bitcast %union.rec* %2078 to %struct.word_type*
  %2080 = getelementptr inbounds %struct.word_type, %struct.word_type* %2079, i32 0, i32 0
  %2081 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2080, i32 0, i64 0
  %2082 = getelementptr inbounds %struct.LIST, %struct.LIST* %2081, i32 0, i32 0
  %2083 = load %union.rec*, %union.rec** %2082, align 8
  %2084 = load i32, i32* @zz_size, align 4
  %2085 = sext i32 %2084 to i64
  %2086 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2085
  store %union.rec* %2083, %union.rec** %2086, align 8
  br label %2087

; <label>:2087                                    ; preds = %2073, %2069
  br label %2088

; <label>:2088                                    ; preds = %2087, %2060
  %2089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2090 = bitcast %union.rec* %2089 to %struct.word_type*
  %2091 = getelementptr inbounds %struct.word_type, %struct.word_type* %2090, i32 0, i32 1
  %2092 = bitcast %union.FIRST_UNION* %2091 to %struct.anon*
  %2093 = getelementptr inbounds %struct.anon, %struct.anon* %2092, i32 0, i32 0
  store i8 9, i8* %2093, align 1
  %2094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2095 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2096 = bitcast %union.rec* %2095 to %struct.word_type*
  %2097 = getelementptr inbounds %struct.word_type, %struct.word_type* %2096, i32 0, i32 0
  %2098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2097, i32 0, i64 1
  %2099 = getelementptr inbounds %struct.LIST, %struct.LIST* %2098, i32 0, i32 1
  store %union.rec* %2094, %union.rec** %2099, align 8
  %2100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2101 = bitcast %union.rec* %2100 to %struct.word_type*
  %2102 = getelementptr inbounds %struct.word_type, %struct.word_type* %2101, i32 0, i32 0
  %2103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2102, i32 0, i64 1
  %2104 = getelementptr inbounds %struct.LIST, %struct.LIST* %2103, i32 0, i32 0
  store %union.rec* %2094, %union.rec** %2104, align 8
  %2105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2106 = bitcast %union.rec* %2105 to %struct.word_type*
  %2107 = getelementptr inbounds %struct.word_type, %struct.word_type* %2106, i32 0, i32 0
  %2108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2107, i32 0, i64 0
  %2109 = getelementptr inbounds %struct.LIST, %struct.LIST* %2108, i32 0, i32 1
  store %union.rec* %2094, %union.rec** %2109, align 8
  %2110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2111 = bitcast %union.rec* %2110 to %struct.word_type*
  %2112 = getelementptr inbounds %struct.word_type, %struct.word_type* %2111, i32 0, i32 0
  %2113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2112, i32 0, i64 0
  %2114 = getelementptr inbounds %struct.LIST, %struct.LIST* %2113, i32 0, i32 0
  store %union.rec* %2094, %union.rec** %2114, align 8
  store %union.rec* %2094, %union.rec** %tmp, align 8
  %2115 = load %union.rec*, %union.rec** %hor, align 8
  %2116 = bitcast %union.rec* %2115 to %struct.word_type*
  %2117 = getelementptr inbounds %struct.word_type, %struct.word_type* %2116, i32 0, i32 3
  %2118 = bitcast %union.THIRD_UNION* %2117 to %struct.anon.6*
  %2119 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2118, i32 0, i32 0
  %2120 = getelementptr inbounds [2 x i32], [2 x i32]* %2119, i32 0, i64 0
  %2121 = load i32, i32* %2120, align 4
  %2122 = load %union.rec*, %union.rec** %tmp, align 8
  %2123 = bitcast %union.rec* %2122 to %struct.word_type*
  %2124 = getelementptr inbounds %struct.word_type, %struct.word_type* %2123, i32 0, i32 3
  %2125 = bitcast %union.THIRD_UNION* %2124 to %struct.anon.6*
  %2126 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2125, i32 0, i32 0
  %2127 = getelementptr inbounds [2 x i32], [2 x i32]* %2126, i32 0, i64 0
  store i32 %2121, i32* %2127, align 4
  %2128 = load %union.rec*, %union.rec** %hor, align 8
  %2129 = bitcast %union.rec* %2128 to %struct.word_type*
  %2130 = getelementptr inbounds %struct.word_type, %struct.word_type* %2129, i32 0, i32 3
  %2131 = bitcast %union.THIRD_UNION* %2130 to %struct.anon.6*
  %2132 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2131, i32 0, i32 1
  %2133 = getelementptr inbounds [2 x i32], [2 x i32]* %2132, i32 0, i64 0
  %2134 = load i32, i32* %2133, align 4
  %2135 = load %union.rec*, %union.rec** %tmp, align 8
  %2136 = bitcast %union.rec* %2135 to %struct.word_type*
  %2137 = getelementptr inbounds %struct.word_type, %struct.word_type* %2136, i32 0, i32 3
  %2138 = bitcast %union.THIRD_UNION* %2137 to %struct.anon.6*
  %2139 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2138, i32 0, i32 1
  %2140 = getelementptr inbounds [2 x i32], [2 x i32]* %2139, i32 0, i64 0
  store i32 %2134, i32* %2140, align 4
  %2141 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2142 = zext i8 %2141 to i32
  store i32 %2142, i32* @zz_size, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = icmp uge i64 %2143, 265
  br i1 %2144, label %2145, label %2148

; <label>:2145                                    ; preds = %2088
  %2146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2146)
  br label %2173

; <label>:2148                                    ; preds = %2088
  %2149 = load i32, i32* @zz_size, align 4
  %2150 = sext i32 %2149 to i64
  %2151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2150
  %2152 = load %union.rec*, %union.rec** %2151, align 8
  %2153 = icmp eq %union.rec* %2152, null
  br i1 %2153, label %2154, label %2158

; <label>:2154                                    ; preds = %2148
  %2155 = load i32, i32* @zz_size, align 4
  %2156 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2157 = call %union.rec* @GetMemory(i32 %2155, %struct.FILE_POS* %2156)
  store %union.rec* %2157, %union.rec** @zz_hold, align 8
  br label %2172

; <label>:2158                                    ; preds = %2148
  %2159 = load i32, i32* @zz_size, align 4
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2160
  %2162 = load %union.rec*, %union.rec** %2161, align 8
  store %union.rec* %2162, %union.rec** @zz_hold, align 8
  store %union.rec* %2162, %union.rec** @zz_hold, align 8
  %2163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2164 = bitcast %union.rec* %2163 to %struct.word_type*
  %2165 = getelementptr inbounds %struct.word_type, %struct.word_type* %2164, i32 0, i32 0
  %2166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2165, i32 0, i64 0
  %2167 = getelementptr inbounds %struct.LIST, %struct.LIST* %2166, i32 0, i32 0
  %2168 = load %union.rec*, %union.rec** %2167, align 8
  %2169 = load i32, i32* @zz_size, align 4
  %2170 = sext i32 %2169 to i64
  %2171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2170
  store %union.rec* %2168, %union.rec** %2171, align 8
  br label %2172

; <label>:2172                                    ; preds = %2158, %2154
  br label %2173

; <label>:2173                                    ; preds = %2172, %2145
  %2174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2175 = bitcast %union.rec* %2174 to %struct.word_type*
  %2176 = getelementptr inbounds %struct.word_type, %struct.word_type* %2175, i32 0, i32 1
  %2177 = bitcast %union.FIRST_UNION* %2176 to %struct.anon*
  %2178 = getelementptr inbounds %struct.anon, %struct.anon* %2177, i32 0, i32 0
  store i8 0, i8* %2178, align 1
  %2179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2181 = bitcast %union.rec* %2180 to %struct.word_type*
  %2182 = getelementptr inbounds %struct.word_type, %struct.word_type* %2181, i32 0, i32 0
  %2183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2182, i32 0, i64 1
  %2184 = getelementptr inbounds %struct.LIST, %struct.LIST* %2183, i32 0, i32 1
  store %union.rec* %2179, %union.rec** %2184, align 8
  %2185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2186 = bitcast %union.rec* %2185 to %struct.word_type*
  %2187 = getelementptr inbounds %struct.word_type, %struct.word_type* %2186, i32 0, i32 0
  %2188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2187, i32 0, i64 1
  %2189 = getelementptr inbounds %struct.LIST, %struct.LIST* %2188, i32 0, i32 0
  store %union.rec* %2179, %union.rec** %2189, align 8
  %2190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2191 = bitcast %union.rec* %2190 to %struct.word_type*
  %2192 = getelementptr inbounds %struct.word_type, %struct.word_type* %2191, i32 0, i32 0
  %2193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2192, i32 0, i64 0
  %2194 = getelementptr inbounds %struct.LIST, %struct.LIST* %2193, i32 0, i32 1
  store %union.rec* %2179, %union.rec** %2194, align 8
  %2195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.word_type*
  %2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %2196, i32 0, i32 0
  %2198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2197, i32 0, i64 0
  %2199 = getelementptr inbounds %struct.LIST, %struct.LIST* %2198, i32 0, i32 0
  store %union.rec* %2179, %union.rec** %2199, align 8
  store %union.rec* %2179, %union.rec** @xx_link, align 8
  %2200 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2200, %union.rec** @zz_res, align 8
  %2201 = load %union.rec*, %union.rec** %link, align 8
  %2202 = bitcast %union.rec* %2201 to %struct.word_type*
  %2203 = getelementptr inbounds %struct.word_type, %struct.word_type* %2202, i32 0, i32 0
  %2204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2203, i32 0, i64 0
  %2205 = getelementptr inbounds %struct.LIST, %struct.LIST* %2204, i32 0, i32 1
  %2206 = load %union.rec*, %union.rec** %2205, align 8
  store %union.rec* %2206, %union.rec** @zz_hold, align 8
  %2207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2208 = icmp eq %union.rec* %2207, null
  br i1 %2208, label %2209, label %2211

; <label>:2209                                    ; preds = %2173
  %2210 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2259

; <label>:2211                                    ; preds = %2173
  %2212 = load %union.rec*, %union.rec** @zz_res, align 8
  %2213 = icmp eq %union.rec* %2212, null
  br i1 %2213, label %2214, label %2216

; <label>:2214                                    ; preds = %2211
  %2215 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2257

; <label>:2216                                    ; preds = %2211
  %2217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2218 = bitcast %union.rec* %2217 to %struct.word_type*
  %2219 = getelementptr inbounds %struct.word_type, %struct.word_type* %2218, i32 0, i32 0
  %2220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2219, i32 0, i64 0
  %2221 = getelementptr inbounds %struct.LIST, %struct.LIST* %2220, i32 0, i32 0
  %2222 = load %union.rec*, %union.rec** %2221, align 8
  store %union.rec* %2222, %union.rec** @zz_tmp, align 8
  %2223 = load %union.rec*, %union.rec** @zz_res, align 8
  %2224 = bitcast %union.rec* %2223 to %struct.word_type*
  %2225 = getelementptr inbounds %struct.word_type, %struct.word_type* %2224, i32 0, i32 0
  %2226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2225, i32 0, i64 0
  %2227 = getelementptr inbounds %struct.LIST, %struct.LIST* %2226, i32 0, i32 0
  %2228 = load %union.rec*, %union.rec** %2227, align 8
  %2229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2230 = bitcast %union.rec* %2229 to %struct.word_type*
  %2231 = getelementptr inbounds %struct.word_type, %struct.word_type* %2230, i32 0, i32 0
  %2232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2231, i32 0, i64 0
  %2233 = getelementptr inbounds %struct.LIST, %struct.LIST* %2232, i32 0, i32 0
  store %union.rec* %2228, %union.rec** %2233, align 8
  %2234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2235 = load %union.rec*, %union.rec** @zz_res, align 8
  %2236 = bitcast %union.rec* %2235 to %struct.word_type*
  %2237 = getelementptr inbounds %struct.word_type, %struct.word_type* %2236, i32 0, i32 0
  %2238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2237, i32 0, i64 0
  %2239 = getelementptr inbounds %struct.LIST, %struct.LIST* %2238, i32 0, i32 0
  %2240 = load %union.rec*, %union.rec** %2239, align 8
  %2241 = bitcast %union.rec* %2240 to %struct.word_type*
  %2242 = getelementptr inbounds %struct.word_type, %struct.word_type* %2241, i32 0, i32 0
  %2243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2242, i32 0, i64 0
  %2244 = getelementptr inbounds %struct.LIST, %struct.LIST* %2243, i32 0, i32 1
  store %union.rec* %2234, %union.rec** %2244, align 8
  %2245 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2246 = load %union.rec*, %union.rec** @zz_res, align 8
  %2247 = bitcast %union.rec* %2246 to %struct.word_type*
  %2248 = getelementptr inbounds %struct.word_type, %struct.word_type* %2247, i32 0, i32 0
  %2249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2248, i32 0, i64 0
  %2250 = getelementptr inbounds %struct.LIST, %struct.LIST* %2249, i32 0, i32 0
  store %union.rec* %2245, %union.rec** %2250, align 8
  %2251 = load %union.rec*, %union.rec** @zz_res, align 8
  %2252 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2253 = bitcast %union.rec* %2252 to %struct.word_type*
  %2254 = getelementptr inbounds %struct.word_type, %struct.word_type* %2253, i32 0, i32 0
  %2255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2254, i32 0, i64 0
  %2256 = getelementptr inbounds %struct.LIST, %struct.LIST* %2255, i32 0, i32 1
  store %union.rec* %2251, %union.rec** %2256, align 8
  br label %2257

; <label>:2257                                    ; preds = %2216, %2214
  %2258 = phi %union.rec* [ %2215, %2214 ], [ %2251, %2216 ]
  br label %2259

; <label>:2259                                    ; preds = %2257, %2209
  %2260 = phi %union.rec* [ %2210, %2209 ], [ %2258, %2257 ]
  %2261 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2261, %union.rec** @zz_res, align 8
  %2262 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2262, %union.rec** @zz_hold, align 8
  %2263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2264 = icmp eq %union.rec* %2263, null
  br i1 %2264, label %2265, label %2267

; <label>:2265                                    ; preds = %2259
  %2266 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2315

; <label>:2267                                    ; preds = %2259
  %2268 = load %union.rec*, %union.rec** @zz_res, align 8
  %2269 = icmp eq %union.rec* %2268, null
  br i1 %2269, label %2270, label %2272

; <label>:2270                                    ; preds = %2267
  %2271 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2313

; <label>:2272                                    ; preds = %2267
  %2273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2274 = bitcast %union.rec* %2273 to %struct.word_type*
  %2275 = getelementptr inbounds %struct.word_type, %struct.word_type* %2274, i32 0, i32 0
  %2276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2275, i32 0, i64 1
  %2277 = getelementptr inbounds %struct.LIST, %struct.LIST* %2276, i32 0, i32 0
  %2278 = load %union.rec*, %union.rec** %2277, align 8
  store %union.rec* %2278, %union.rec** @zz_tmp, align 8
  %2279 = load %union.rec*, %union.rec** @zz_res, align 8
  %2280 = bitcast %union.rec* %2279 to %struct.word_type*
  %2281 = getelementptr inbounds %struct.word_type, %struct.word_type* %2280, i32 0, i32 0
  %2282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2281, i32 0, i64 1
  %2283 = getelementptr inbounds %struct.LIST, %struct.LIST* %2282, i32 0, i32 0
  %2284 = load %union.rec*, %union.rec** %2283, align 8
  %2285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2286 = bitcast %union.rec* %2285 to %struct.word_type*
  %2287 = getelementptr inbounds %struct.word_type, %struct.word_type* %2286, i32 0, i32 0
  %2288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2287, i32 0, i64 1
  %2289 = getelementptr inbounds %struct.LIST, %struct.LIST* %2288, i32 0, i32 0
  store %union.rec* %2284, %union.rec** %2289, align 8
  %2290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2291 = load %union.rec*, %union.rec** @zz_res, align 8
  %2292 = bitcast %union.rec* %2291 to %struct.word_type*
  %2293 = getelementptr inbounds %struct.word_type, %struct.word_type* %2292, i32 0, i32 0
  %2294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2293, i32 0, i64 1
  %2295 = getelementptr inbounds %struct.LIST, %struct.LIST* %2294, i32 0, i32 0
  %2296 = load %union.rec*, %union.rec** %2295, align 8
  %2297 = bitcast %union.rec* %2296 to %struct.word_type*
  %2298 = getelementptr inbounds %struct.word_type, %struct.word_type* %2297, i32 0, i32 0
  %2299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2298, i32 0, i64 1
  %2300 = getelementptr inbounds %struct.LIST, %struct.LIST* %2299, i32 0, i32 1
  store %union.rec* %2290, %union.rec** %2300, align 8
  %2301 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2302 = load %union.rec*, %union.rec** @zz_res, align 8
  %2303 = bitcast %union.rec* %2302 to %struct.word_type*
  %2304 = getelementptr inbounds %struct.word_type, %struct.word_type* %2303, i32 0, i32 0
  %2305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2304, i32 0, i64 1
  %2306 = getelementptr inbounds %struct.LIST, %struct.LIST* %2305, i32 0, i32 0
  store %union.rec* %2301, %union.rec** %2306, align 8
  %2307 = load %union.rec*, %union.rec** @zz_res, align 8
  %2308 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2309 = bitcast %union.rec* %2308 to %struct.word_type*
  %2310 = getelementptr inbounds %struct.word_type, %struct.word_type* %2309, i32 0, i32 0
  %2311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2310, i32 0, i64 1
  %2312 = getelementptr inbounds %struct.LIST, %struct.LIST* %2311, i32 0, i32 1
  store %union.rec* %2307, %union.rec** %2312, align 8
  br label %2313

; <label>:2313                                    ; preds = %2272, %2270
  %2314 = phi %union.rec* [ %2271, %2270 ], [ %2307, %2272 ]
  br label %2315

; <label>:2315                                    ; preds = %2313, %2265
  %2316 = phi %union.rec* [ %2266, %2265 ], [ %2314, %2313 ]
  %2317 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2318 = zext i8 %2317 to i32
  store i32 %2318, i32* @zz_size, align 4
  %2319 = sext i32 %2318 to i64
  %2320 = icmp uge i64 %2319, 265
  br i1 %2320, label %2321, label %2324

; <label>:2321                                    ; preds = %2315
  %2322 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2323 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2322)
  br label %2349

; <label>:2324                                    ; preds = %2315
  %2325 = load i32, i32* @zz_size, align 4
  %2326 = sext i32 %2325 to i64
  %2327 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2326
  %2328 = load %union.rec*, %union.rec** %2327, align 8
  %2329 = icmp eq %union.rec* %2328, null
  br i1 %2329, label %2330, label %2334

; <label>:2330                                    ; preds = %2324
  %2331 = load i32, i32* @zz_size, align 4
  %2332 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2333 = call %union.rec* @GetMemory(i32 %2331, %struct.FILE_POS* %2332)
  store %union.rec* %2333, %union.rec** @zz_hold, align 8
  br label %2348

; <label>:2334                                    ; preds = %2324
  %2335 = load i32, i32* @zz_size, align 4
  %2336 = sext i32 %2335 to i64
  %2337 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2336
  %2338 = load %union.rec*, %union.rec** %2337, align 8
  store %union.rec* %2338, %union.rec** @zz_hold, align 8
  store %union.rec* %2338, %union.rec** @zz_hold, align 8
  %2339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2340 = bitcast %union.rec* %2339 to %struct.word_type*
  %2341 = getelementptr inbounds %struct.word_type, %struct.word_type* %2340, i32 0, i32 0
  %2342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2341, i32 0, i64 0
  %2343 = getelementptr inbounds %struct.LIST, %struct.LIST* %2342, i32 0, i32 0
  %2344 = load %union.rec*, %union.rec** %2343, align 8
  %2345 = load i32, i32* @zz_size, align 4
  %2346 = sext i32 %2345 to i64
  %2347 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2346
  store %union.rec* %2344, %union.rec** %2347, align 8
  br label %2348

; <label>:2348                                    ; preds = %2334, %2330
  br label %2349

; <label>:2349                                    ; preds = %2348, %2321
  %2350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2351 = bitcast %union.rec* %2350 to %struct.word_type*
  %2352 = getelementptr inbounds %struct.word_type, %struct.word_type* %2351, i32 0, i32 1
  %2353 = bitcast %union.FIRST_UNION* %2352 to %struct.anon*
  %2354 = getelementptr inbounds %struct.anon, %struct.anon* %2353, i32 0, i32 0
  store i8 0, i8* %2354, align 1
  %2355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2357 = bitcast %union.rec* %2356 to %struct.word_type*
  %2358 = getelementptr inbounds %struct.word_type, %struct.word_type* %2357, i32 0, i32 0
  %2359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2358, i32 0, i64 1
  %2360 = getelementptr inbounds %struct.LIST, %struct.LIST* %2359, i32 0, i32 1
  store %union.rec* %2355, %union.rec** %2360, align 8
  %2361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2362 = bitcast %union.rec* %2361 to %struct.word_type*
  %2363 = getelementptr inbounds %struct.word_type, %struct.word_type* %2362, i32 0, i32 0
  %2364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2363, i32 0, i64 1
  %2365 = getelementptr inbounds %struct.LIST, %struct.LIST* %2364, i32 0, i32 0
  store %union.rec* %2355, %union.rec** %2365, align 8
  %2366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2367 = bitcast %union.rec* %2366 to %struct.word_type*
  %2368 = getelementptr inbounds %struct.word_type, %struct.word_type* %2367, i32 0, i32 0
  %2369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2368, i32 0, i64 0
  %2370 = getelementptr inbounds %struct.LIST, %struct.LIST* %2369, i32 0, i32 1
  store %union.rec* %2355, %union.rec** %2370, align 8
  %2371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2372 = bitcast %union.rec* %2371 to %struct.word_type*
  %2373 = getelementptr inbounds %struct.word_type, %struct.word_type* %2372, i32 0, i32 0
  %2374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2373, i32 0, i64 0
  %2375 = getelementptr inbounds %struct.LIST, %struct.LIST* %2374, i32 0, i32 0
  store %union.rec* %2355, %union.rec** %2375, align 8
  store %union.rec* %2355, %union.rec** @xx_link, align 8
  %2376 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2376, %union.rec** @zz_res, align 8
  %2377 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2377, %union.rec** @zz_hold, align 8
  %2378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2379 = icmp eq %union.rec* %2378, null
  br i1 %2379, label %2380, label %2382

; <label>:2380                                    ; preds = %2349
  %2381 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2430

; <label>:2382                                    ; preds = %2349
  %2383 = load %union.rec*, %union.rec** @zz_res, align 8
  %2384 = icmp eq %union.rec* %2383, null
  br i1 %2384, label %2385, label %2387

; <label>:2385                                    ; preds = %2382
  %2386 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2428

; <label>:2387                                    ; preds = %2382
  %2388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2389 = bitcast %union.rec* %2388 to %struct.word_type*
  %2390 = getelementptr inbounds %struct.word_type, %struct.word_type* %2389, i32 0, i32 0
  %2391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2390, i32 0, i64 0
  %2392 = getelementptr inbounds %struct.LIST, %struct.LIST* %2391, i32 0, i32 0
  %2393 = load %union.rec*, %union.rec** %2392, align 8
  store %union.rec* %2393, %union.rec** @zz_tmp, align 8
  %2394 = load %union.rec*, %union.rec** @zz_res, align 8
  %2395 = bitcast %union.rec* %2394 to %struct.word_type*
  %2396 = getelementptr inbounds %struct.word_type, %struct.word_type* %2395, i32 0, i32 0
  %2397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2396, i32 0, i64 0
  %2398 = getelementptr inbounds %struct.LIST, %struct.LIST* %2397, i32 0, i32 0
  %2399 = load %union.rec*, %union.rec** %2398, align 8
  %2400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2401 = bitcast %union.rec* %2400 to %struct.word_type*
  %2402 = getelementptr inbounds %struct.word_type, %struct.word_type* %2401, i32 0, i32 0
  %2403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2402, i32 0, i64 0
  %2404 = getelementptr inbounds %struct.LIST, %struct.LIST* %2403, i32 0, i32 0
  store %union.rec* %2399, %union.rec** %2404, align 8
  %2405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2406 = load %union.rec*, %union.rec** @zz_res, align 8
  %2407 = bitcast %union.rec* %2406 to %struct.word_type*
  %2408 = getelementptr inbounds %struct.word_type, %struct.word_type* %2407, i32 0, i32 0
  %2409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2408, i32 0, i64 0
  %2410 = getelementptr inbounds %struct.LIST, %struct.LIST* %2409, i32 0, i32 0
  %2411 = load %union.rec*, %union.rec** %2410, align 8
  %2412 = bitcast %union.rec* %2411 to %struct.word_type*
  %2413 = getelementptr inbounds %struct.word_type, %struct.word_type* %2412, i32 0, i32 0
  %2414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2413, i32 0, i64 0
  %2415 = getelementptr inbounds %struct.LIST, %struct.LIST* %2414, i32 0, i32 1
  store %union.rec* %2405, %union.rec** %2415, align 8
  %2416 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2417 = load %union.rec*, %union.rec** @zz_res, align 8
  %2418 = bitcast %union.rec* %2417 to %struct.word_type*
  %2419 = getelementptr inbounds %struct.word_type, %struct.word_type* %2418, i32 0, i32 0
  %2420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2419, i32 0, i64 0
  %2421 = getelementptr inbounds %struct.LIST, %struct.LIST* %2420, i32 0, i32 0
  store %union.rec* %2416, %union.rec** %2421, align 8
  %2422 = load %union.rec*, %union.rec** @zz_res, align 8
  %2423 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2424 = bitcast %union.rec* %2423 to %struct.word_type*
  %2425 = getelementptr inbounds %struct.word_type, %struct.word_type* %2424, i32 0, i32 0
  %2426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2425, i32 0, i64 0
  %2427 = getelementptr inbounds %struct.LIST, %struct.LIST* %2426, i32 0, i32 1
  store %union.rec* %2422, %union.rec** %2427, align 8
  br label %2428

; <label>:2428                                    ; preds = %2387, %2385
  %2429 = phi %union.rec* [ %2386, %2385 ], [ %2422, %2387 ]
  br label %2430

; <label>:2430                                    ; preds = %2428, %2380
  %2431 = phi %union.rec* [ %2381, %2380 ], [ %2429, %2428 ]
  %2432 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2432, %union.rec** @zz_res, align 8
  %2433 = load %union.rec*, %union.rec** %clink, align 8
  %2434 = bitcast %union.rec* %2433 to %struct.word_type*
  %2435 = getelementptr inbounds %struct.word_type, %struct.word_type* %2434, i32 0, i32 0
  %2436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2435, i32 0, i64 1
  %2437 = getelementptr inbounds %struct.LIST, %struct.LIST* %2436, i32 0, i32 1
  %2438 = load %union.rec*, %union.rec** %2437, align 8
  store %union.rec* %2438, %union.rec** @zz_hold, align 8
  %2439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2440 = icmp eq %union.rec* %2439, null
  br i1 %2440, label %2441, label %2443

; <label>:2441                                    ; preds = %2430
  %2442 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2491

; <label>:2443                                    ; preds = %2430
  %2444 = load %union.rec*, %union.rec** @zz_res, align 8
  %2445 = icmp eq %union.rec* %2444, null
  br i1 %2445, label %2446, label %2448

; <label>:2446                                    ; preds = %2443
  %2447 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2489

; <label>:2448                                    ; preds = %2443
  %2449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2450 = bitcast %union.rec* %2449 to %struct.word_type*
  %2451 = getelementptr inbounds %struct.word_type, %struct.word_type* %2450, i32 0, i32 0
  %2452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2451, i32 0, i64 1
  %2453 = getelementptr inbounds %struct.LIST, %struct.LIST* %2452, i32 0, i32 0
  %2454 = load %union.rec*, %union.rec** %2453, align 8
  store %union.rec* %2454, %union.rec** @zz_tmp, align 8
  %2455 = load %union.rec*, %union.rec** @zz_res, align 8
  %2456 = bitcast %union.rec* %2455 to %struct.word_type*
  %2457 = getelementptr inbounds %struct.word_type, %struct.word_type* %2456, i32 0, i32 0
  %2458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2457, i32 0, i64 1
  %2459 = getelementptr inbounds %struct.LIST, %struct.LIST* %2458, i32 0, i32 0
  %2460 = load %union.rec*, %union.rec** %2459, align 8
  %2461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2462 = bitcast %union.rec* %2461 to %struct.word_type*
  %2463 = getelementptr inbounds %struct.word_type, %struct.word_type* %2462, i32 0, i32 0
  %2464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2463, i32 0, i64 1
  %2465 = getelementptr inbounds %struct.LIST, %struct.LIST* %2464, i32 0, i32 0
  store %union.rec* %2460, %union.rec** %2465, align 8
  %2466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2467 = load %union.rec*, %union.rec** @zz_res, align 8
  %2468 = bitcast %union.rec* %2467 to %struct.word_type*
  %2469 = getelementptr inbounds %struct.word_type, %struct.word_type* %2468, i32 0, i32 0
  %2470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2469, i32 0, i64 1
  %2471 = getelementptr inbounds %struct.LIST, %struct.LIST* %2470, i32 0, i32 0
  %2472 = load %union.rec*, %union.rec** %2471, align 8
  %2473 = bitcast %union.rec* %2472 to %struct.word_type*
  %2474 = getelementptr inbounds %struct.word_type, %struct.word_type* %2473, i32 0, i32 0
  %2475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2474, i32 0, i64 1
  %2476 = getelementptr inbounds %struct.LIST, %struct.LIST* %2475, i32 0, i32 1
  store %union.rec* %2466, %union.rec** %2476, align 8
  %2477 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2478 = load %union.rec*, %union.rec** @zz_res, align 8
  %2479 = bitcast %union.rec* %2478 to %struct.word_type*
  %2480 = getelementptr inbounds %struct.word_type, %struct.word_type* %2479, i32 0, i32 0
  %2481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2480, i32 0, i64 1
  %2482 = getelementptr inbounds %struct.LIST, %struct.LIST* %2481, i32 0, i32 0
  store %union.rec* %2477, %union.rec** %2482, align 8
  %2483 = load %union.rec*, %union.rec** @zz_res, align 8
  %2484 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2485 = bitcast %union.rec* %2484 to %struct.word_type*
  %2486 = getelementptr inbounds %struct.word_type, %struct.word_type* %2485, i32 0, i32 0
  %2487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2486, i32 0, i64 1
  %2488 = getelementptr inbounds %struct.LIST, %struct.LIST* %2487, i32 0, i32 1
  store %union.rec* %2483, %union.rec** %2488, align 8
  br label %2489

; <label>:2489                                    ; preds = %2448, %2446
  %2490 = phi %union.rec* [ %2447, %2446 ], [ %2483, %2448 ]
  br label %2491

; <label>:2491                                    ; preds = %2489, %2441
  %2492 = phi %union.rec* [ %2442, %2441 ], [ %2490, %2489 ]
  %2493 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2494 = zext i8 %2493 to i32
  store i32 %2494, i32* @zz_size, align 4
  %2495 = sext i32 %2494 to i64
  %2496 = icmp uge i64 %2495, 265
  br i1 %2496, label %2497, label %2500

; <label>:2497                                    ; preds = %2491
  %2498 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2499 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2498)
  br label %2525

; <label>:2500                                    ; preds = %2491
  %2501 = load i32, i32* @zz_size, align 4
  %2502 = sext i32 %2501 to i64
  %2503 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2502
  %2504 = load %union.rec*, %union.rec** %2503, align 8
  %2505 = icmp eq %union.rec* %2504, null
  br i1 %2505, label %2506, label %2510

; <label>:2506                                    ; preds = %2500
  %2507 = load i32, i32* @zz_size, align 4
  %2508 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2509 = call %union.rec* @GetMemory(i32 %2507, %struct.FILE_POS* %2508)
  store %union.rec* %2509, %union.rec** @zz_hold, align 8
  br label %2524

; <label>:2510                                    ; preds = %2500
  %2511 = load i32, i32* @zz_size, align 4
  %2512 = sext i32 %2511 to i64
  %2513 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2512
  %2514 = load %union.rec*, %union.rec** %2513, align 8
  store %union.rec* %2514, %union.rec** @zz_hold, align 8
  store %union.rec* %2514, %union.rec** @zz_hold, align 8
  %2515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2516 = bitcast %union.rec* %2515 to %struct.word_type*
  %2517 = getelementptr inbounds %struct.word_type, %struct.word_type* %2516, i32 0, i32 0
  %2518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2517, i32 0, i64 0
  %2519 = getelementptr inbounds %struct.LIST, %struct.LIST* %2518, i32 0, i32 0
  %2520 = load %union.rec*, %union.rec** %2519, align 8
  %2521 = load i32, i32* @zz_size, align 4
  %2522 = sext i32 %2521 to i64
  %2523 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2522
  store %union.rec* %2520, %union.rec** %2523, align 8
  br label %2524

; <label>:2524                                    ; preds = %2510, %2506
  br label %2525

; <label>:2525                                    ; preds = %2524, %2497
  %2526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2527 = bitcast %union.rec* %2526 to %struct.word_type*
  %2528 = getelementptr inbounds %struct.word_type, %struct.word_type* %2527, i32 0, i32 1
  %2529 = bitcast %union.FIRST_UNION* %2528 to %struct.anon*
  %2530 = getelementptr inbounds %struct.anon, %struct.anon* %2529, i32 0, i32 0
  store i8 0, i8* %2530, align 1
  %2531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2533 = bitcast %union.rec* %2532 to %struct.word_type*
  %2534 = getelementptr inbounds %struct.word_type, %struct.word_type* %2533, i32 0, i32 0
  %2535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2534, i32 0, i64 1
  %2536 = getelementptr inbounds %struct.LIST, %struct.LIST* %2535, i32 0, i32 1
  store %union.rec* %2531, %union.rec** %2536, align 8
  %2537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2538 = bitcast %union.rec* %2537 to %struct.word_type*
  %2539 = getelementptr inbounds %struct.word_type, %struct.word_type* %2538, i32 0, i32 0
  %2540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2539, i32 0, i64 1
  %2541 = getelementptr inbounds %struct.LIST, %struct.LIST* %2540, i32 0, i32 0
  store %union.rec* %2531, %union.rec** %2541, align 8
  %2542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2543 = bitcast %union.rec* %2542 to %struct.word_type*
  %2544 = getelementptr inbounds %struct.word_type, %struct.word_type* %2543, i32 0, i32 0
  %2545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2544, i32 0, i64 0
  %2546 = getelementptr inbounds %struct.LIST, %struct.LIST* %2545, i32 0, i32 1
  store %union.rec* %2531, %union.rec** %2546, align 8
  %2547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2548 = bitcast %union.rec* %2547 to %struct.word_type*
  %2549 = getelementptr inbounds %struct.word_type, %struct.word_type* %2548, i32 0, i32 0
  %2550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2549, i32 0, i64 0
  %2551 = getelementptr inbounds %struct.LIST, %struct.LIST* %2550, i32 0, i32 0
  store %union.rec* %2531, %union.rec** %2551, align 8
  store %union.rec* %2531, %union.rec** @xx_link, align 8
  %2552 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2552, %union.rec** @zz_res, align 8
  %2553 = load %union.rec*, %union.rec** %dlink, align 8
  %2554 = bitcast %union.rec* %2553 to %struct.word_type*
  %2555 = getelementptr inbounds %struct.word_type, %struct.word_type* %2554, i32 0, i32 0
  %2556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2555, i32 0, i64 0
  %2557 = getelementptr inbounds %struct.LIST, %struct.LIST* %2556, i32 0, i32 1
  %2558 = load %union.rec*, %union.rec** %2557, align 8
  store %union.rec* %2558, %union.rec** @zz_hold, align 8
  %2559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2560 = icmp eq %union.rec* %2559, null
  br i1 %2560, label %2561, label %2563

; <label>:2561                                    ; preds = %2525
  %2562 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2611

; <label>:2563                                    ; preds = %2525
  %2564 = load %union.rec*, %union.rec** @zz_res, align 8
  %2565 = icmp eq %union.rec* %2564, null
  br i1 %2565, label %2566, label %2568

; <label>:2566                                    ; preds = %2563
  %2567 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2609

; <label>:2568                                    ; preds = %2563
  %2569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2570 = bitcast %union.rec* %2569 to %struct.word_type*
  %2571 = getelementptr inbounds %struct.word_type, %struct.word_type* %2570, i32 0, i32 0
  %2572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2571, i32 0, i64 0
  %2573 = getelementptr inbounds %struct.LIST, %struct.LIST* %2572, i32 0, i32 0
  %2574 = load %union.rec*, %union.rec** %2573, align 8
  store %union.rec* %2574, %union.rec** @zz_tmp, align 8
  %2575 = load %union.rec*, %union.rec** @zz_res, align 8
  %2576 = bitcast %union.rec* %2575 to %struct.word_type*
  %2577 = getelementptr inbounds %struct.word_type, %struct.word_type* %2576, i32 0, i32 0
  %2578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2577, i32 0, i64 0
  %2579 = getelementptr inbounds %struct.LIST, %struct.LIST* %2578, i32 0, i32 0
  %2580 = load %union.rec*, %union.rec** %2579, align 8
  %2581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2582 = bitcast %union.rec* %2581 to %struct.word_type*
  %2583 = getelementptr inbounds %struct.word_type, %struct.word_type* %2582, i32 0, i32 0
  %2584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2583, i32 0, i64 0
  %2585 = getelementptr inbounds %struct.LIST, %struct.LIST* %2584, i32 0, i32 0
  store %union.rec* %2580, %union.rec** %2585, align 8
  %2586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2587 = load %union.rec*, %union.rec** @zz_res, align 8
  %2588 = bitcast %union.rec* %2587 to %struct.word_type*
  %2589 = getelementptr inbounds %struct.word_type, %struct.word_type* %2588, i32 0, i32 0
  %2590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2589, i32 0, i64 0
  %2591 = getelementptr inbounds %struct.LIST, %struct.LIST* %2590, i32 0, i32 0
  %2592 = load %union.rec*, %union.rec** %2591, align 8
  %2593 = bitcast %union.rec* %2592 to %struct.word_type*
  %2594 = getelementptr inbounds %struct.word_type, %struct.word_type* %2593, i32 0, i32 0
  %2595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2594, i32 0, i64 0
  %2596 = getelementptr inbounds %struct.LIST, %struct.LIST* %2595, i32 0, i32 1
  store %union.rec* %2586, %union.rec** %2596, align 8
  %2597 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2598 = load %union.rec*, %union.rec** @zz_res, align 8
  %2599 = bitcast %union.rec* %2598 to %struct.word_type*
  %2600 = getelementptr inbounds %struct.word_type, %struct.word_type* %2599, i32 0, i32 0
  %2601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2600, i32 0, i64 0
  %2602 = getelementptr inbounds %struct.LIST, %struct.LIST* %2601, i32 0, i32 0
  store %union.rec* %2597, %union.rec** %2602, align 8
  %2603 = load %union.rec*, %union.rec** @zz_res, align 8
  %2604 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2605 = bitcast %union.rec* %2604 to %struct.word_type*
  %2606 = getelementptr inbounds %struct.word_type, %struct.word_type* %2605, i32 0, i32 0
  %2607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2606, i32 0, i64 0
  %2608 = getelementptr inbounds %struct.LIST, %struct.LIST* %2607, i32 0, i32 1
  store %union.rec* %2603, %union.rec** %2608, align 8
  br label %2609

; <label>:2609                                    ; preds = %2568, %2566
  %2610 = phi %union.rec* [ %2567, %2566 ], [ %2603, %2568 ]
  br label %2611

; <label>:2611                                    ; preds = %2609, %2561
  %2612 = phi %union.rec* [ %2562, %2561 ], [ %2610, %2609 ]
  %2613 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2613, %union.rec** @zz_res, align 8
  %2614 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2614, %union.rec** @zz_hold, align 8
  %2615 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2616 = icmp eq %union.rec* %2615, null
  br i1 %2616, label %2617, label %2619

; <label>:2617                                    ; preds = %2611
  %2618 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2667

; <label>:2619                                    ; preds = %2611
  %2620 = load %union.rec*, %union.rec** @zz_res, align 8
  %2621 = icmp eq %union.rec* %2620, null
  br i1 %2621, label %2622, label %2624

; <label>:2622                                    ; preds = %2619
  %2623 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2665

; <label>:2624                                    ; preds = %2619
  %2625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2626 = bitcast %union.rec* %2625 to %struct.word_type*
  %2627 = getelementptr inbounds %struct.word_type, %struct.word_type* %2626, i32 0, i32 0
  %2628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2627, i32 0, i64 1
  %2629 = getelementptr inbounds %struct.LIST, %struct.LIST* %2628, i32 0, i32 0
  %2630 = load %union.rec*, %union.rec** %2629, align 8
  store %union.rec* %2630, %union.rec** @zz_tmp, align 8
  %2631 = load %union.rec*, %union.rec** @zz_res, align 8
  %2632 = bitcast %union.rec* %2631 to %struct.word_type*
  %2633 = getelementptr inbounds %struct.word_type, %struct.word_type* %2632, i32 0, i32 0
  %2634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2633, i32 0, i64 1
  %2635 = getelementptr inbounds %struct.LIST, %struct.LIST* %2634, i32 0, i32 0
  %2636 = load %union.rec*, %union.rec** %2635, align 8
  %2637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2638 = bitcast %union.rec* %2637 to %struct.word_type*
  %2639 = getelementptr inbounds %struct.word_type, %struct.word_type* %2638, i32 0, i32 0
  %2640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2639, i32 0, i64 1
  %2641 = getelementptr inbounds %struct.LIST, %struct.LIST* %2640, i32 0, i32 0
  store %union.rec* %2636, %union.rec** %2641, align 8
  %2642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2643 = load %union.rec*, %union.rec** @zz_res, align 8
  %2644 = bitcast %union.rec* %2643 to %struct.word_type*
  %2645 = getelementptr inbounds %struct.word_type, %struct.word_type* %2644, i32 0, i32 0
  %2646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2645, i32 0, i64 1
  %2647 = getelementptr inbounds %struct.LIST, %struct.LIST* %2646, i32 0, i32 0
  %2648 = load %union.rec*, %union.rec** %2647, align 8
  %2649 = bitcast %union.rec* %2648 to %struct.word_type*
  %2650 = getelementptr inbounds %struct.word_type, %struct.word_type* %2649, i32 0, i32 0
  %2651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2650, i32 0, i64 1
  %2652 = getelementptr inbounds %struct.LIST, %struct.LIST* %2651, i32 0, i32 1
  store %union.rec* %2642, %union.rec** %2652, align 8
  %2653 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2654 = load %union.rec*, %union.rec** @zz_res, align 8
  %2655 = bitcast %union.rec* %2654 to %struct.word_type*
  %2656 = getelementptr inbounds %struct.word_type, %struct.word_type* %2655, i32 0, i32 0
  %2657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2656, i32 0, i64 1
  %2658 = getelementptr inbounds %struct.LIST, %struct.LIST* %2657, i32 0, i32 0
  store %union.rec* %2653, %union.rec** %2658, align 8
  %2659 = load %union.rec*, %union.rec** @zz_res, align 8
  %2660 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2661 = bitcast %union.rec* %2660 to %struct.word_type*
  %2662 = getelementptr inbounds %struct.word_type, %struct.word_type* %2661, i32 0, i32 0
  %2663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2662, i32 0, i64 1
  %2664 = getelementptr inbounds %struct.LIST, %struct.LIST* %2663, i32 0, i32 1
  store %union.rec* %2659, %union.rec** %2664, align 8
  br label %2665

; <label>:2665                                    ; preds = %2624, %2622
  %2666 = phi %union.rec* [ %2623, %2622 ], [ %2659, %2624 ]
  br label %2667

; <label>:2667                                    ; preds = %2665, %2617
  %2668 = phi %union.rec* [ %2618, %2617 ], [ %2666, %2665 ]
  %2669 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2670 = zext i8 %2669 to i32
  store i32 %2670, i32* @zz_size, align 4
  %2671 = sext i32 %2670 to i64
  %2672 = icmp uge i64 %2671, 265
  br i1 %2672, label %2673, label %2676

; <label>:2673                                    ; preds = %2667
  %2674 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2675 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2674)
  br label %2701

; <label>:2676                                    ; preds = %2667
  %2677 = load i32, i32* @zz_size, align 4
  %2678 = sext i32 %2677 to i64
  %2679 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2678
  %2680 = load %union.rec*, %union.rec** %2679, align 8
  %2681 = icmp eq %union.rec* %2680, null
  br i1 %2681, label %2682, label %2686

; <label>:2682                                    ; preds = %2676
  %2683 = load i32, i32* @zz_size, align 4
  %2684 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2685 = call %union.rec* @GetMemory(i32 %2683, %struct.FILE_POS* %2684)
  store %union.rec* %2685, %union.rec** @zz_hold, align 8
  br label %2700

; <label>:2686                                    ; preds = %2676
  %2687 = load i32, i32* @zz_size, align 4
  %2688 = sext i32 %2687 to i64
  %2689 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2688
  %2690 = load %union.rec*, %union.rec** %2689, align 8
  store %union.rec* %2690, %union.rec** @zz_hold, align 8
  store %union.rec* %2690, %union.rec** @zz_hold, align 8
  %2691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2692 = bitcast %union.rec* %2691 to %struct.word_type*
  %2693 = getelementptr inbounds %struct.word_type, %struct.word_type* %2692, i32 0, i32 0
  %2694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2693, i32 0, i64 0
  %2695 = getelementptr inbounds %struct.LIST, %struct.LIST* %2694, i32 0, i32 0
  %2696 = load %union.rec*, %union.rec** %2695, align 8
  %2697 = load i32, i32* @zz_size, align 4
  %2698 = sext i32 %2697 to i64
  %2699 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2698
  store %union.rec* %2696, %union.rec** %2699, align 8
  br label %2700

; <label>:2700                                    ; preds = %2686, %2682
  br label %2701

; <label>:2701                                    ; preds = %2700, %2673
  %2702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2703 = bitcast %union.rec* %2702 to %struct.word_type*
  %2704 = getelementptr inbounds %struct.word_type, %struct.word_type* %2703, i32 0, i32 1
  %2705 = bitcast %union.FIRST_UNION* %2704 to %struct.anon*
  %2706 = getelementptr inbounds %struct.anon, %struct.anon* %2705, i32 0, i32 0
  store i8 0, i8* %2706, align 1
  %2707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2709 = bitcast %union.rec* %2708 to %struct.word_type*
  %2710 = getelementptr inbounds %struct.word_type, %struct.word_type* %2709, i32 0, i32 0
  %2711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2710, i32 0, i64 1
  %2712 = getelementptr inbounds %struct.LIST, %struct.LIST* %2711, i32 0, i32 1
  store %union.rec* %2707, %union.rec** %2712, align 8
  %2713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2714 = bitcast %union.rec* %2713 to %struct.word_type*
  %2715 = getelementptr inbounds %struct.word_type, %struct.word_type* %2714, i32 0, i32 0
  %2716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2715, i32 0, i64 1
  %2717 = getelementptr inbounds %struct.LIST, %struct.LIST* %2716, i32 0, i32 0
  store %union.rec* %2707, %union.rec** %2717, align 8
  %2718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2719 = bitcast %union.rec* %2718 to %struct.word_type*
  %2720 = getelementptr inbounds %struct.word_type, %struct.word_type* %2719, i32 0, i32 0
  %2721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2720, i32 0, i64 0
  %2722 = getelementptr inbounds %struct.LIST, %struct.LIST* %2721, i32 0, i32 1
  store %union.rec* %2707, %union.rec** %2722, align 8
  %2723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2724 = bitcast %union.rec* %2723 to %struct.word_type*
  %2725 = getelementptr inbounds %struct.word_type, %struct.word_type* %2724, i32 0, i32 0
  %2726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2725, i32 0, i64 0
  %2727 = getelementptr inbounds %struct.LIST, %struct.LIST* %2726, i32 0, i32 0
  store %union.rec* %2707, %union.rec** %2727, align 8
  store %union.rec* %2707, %union.rec** @xx_link, align 8
  %2728 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2728, %union.rec** @zz_res, align 8
  %2729 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2729, %union.rec** @zz_hold, align 8
  %2730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2731 = icmp eq %union.rec* %2730, null
  br i1 %2731, label %2732, label %2734

; <label>:2732                                    ; preds = %2701
  %2733 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2782

; <label>:2734                                    ; preds = %2701
  %2735 = load %union.rec*, %union.rec** @zz_res, align 8
  %2736 = icmp eq %union.rec* %2735, null
  br i1 %2736, label %2737, label %2739

; <label>:2737                                    ; preds = %2734
  %2738 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2780

; <label>:2739                                    ; preds = %2734
  %2740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2741 = bitcast %union.rec* %2740 to %struct.word_type*
  %2742 = getelementptr inbounds %struct.word_type, %struct.word_type* %2741, i32 0, i32 0
  %2743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2742, i32 0, i64 0
  %2744 = getelementptr inbounds %struct.LIST, %struct.LIST* %2743, i32 0, i32 0
  %2745 = load %union.rec*, %union.rec** %2744, align 8
  store %union.rec* %2745, %union.rec** @zz_tmp, align 8
  %2746 = load %union.rec*, %union.rec** @zz_res, align 8
  %2747 = bitcast %union.rec* %2746 to %struct.word_type*
  %2748 = getelementptr inbounds %struct.word_type, %struct.word_type* %2747, i32 0, i32 0
  %2749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2748, i32 0, i64 0
  %2750 = getelementptr inbounds %struct.LIST, %struct.LIST* %2749, i32 0, i32 0
  %2751 = load %union.rec*, %union.rec** %2750, align 8
  %2752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2753 = bitcast %union.rec* %2752 to %struct.word_type*
  %2754 = getelementptr inbounds %struct.word_type, %struct.word_type* %2753, i32 0, i32 0
  %2755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2754, i32 0, i64 0
  %2756 = getelementptr inbounds %struct.LIST, %struct.LIST* %2755, i32 0, i32 0
  store %union.rec* %2751, %union.rec** %2756, align 8
  %2757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2758 = load %union.rec*, %union.rec** @zz_res, align 8
  %2759 = bitcast %union.rec* %2758 to %struct.word_type*
  %2760 = getelementptr inbounds %struct.word_type, %struct.word_type* %2759, i32 0, i32 0
  %2761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2760, i32 0, i64 0
  %2762 = getelementptr inbounds %struct.LIST, %struct.LIST* %2761, i32 0, i32 0
  %2763 = load %union.rec*, %union.rec** %2762, align 8
  %2764 = bitcast %union.rec* %2763 to %struct.word_type*
  %2765 = getelementptr inbounds %struct.word_type, %struct.word_type* %2764, i32 0, i32 0
  %2766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2765, i32 0, i64 0
  %2767 = getelementptr inbounds %struct.LIST, %struct.LIST* %2766, i32 0, i32 1
  store %union.rec* %2757, %union.rec** %2767, align 8
  %2768 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2769 = load %union.rec*, %union.rec** @zz_res, align 8
  %2770 = bitcast %union.rec* %2769 to %struct.word_type*
  %2771 = getelementptr inbounds %struct.word_type, %struct.word_type* %2770, i32 0, i32 0
  %2772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2771, i32 0, i64 0
  %2773 = getelementptr inbounds %struct.LIST, %struct.LIST* %2772, i32 0, i32 0
  store %union.rec* %2768, %union.rec** %2773, align 8
  %2774 = load %union.rec*, %union.rec** @zz_res, align 8
  %2775 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2776 = bitcast %union.rec* %2775 to %struct.word_type*
  %2777 = getelementptr inbounds %struct.word_type, %struct.word_type* %2776, i32 0, i32 0
  %2778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2777, i32 0, i64 0
  %2779 = getelementptr inbounds %struct.LIST, %struct.LIST* %2778, i32 0, i32 1
  store %union.rec* %2774, %union.rec** %2779, align 8
  br label %2780

; <label>:2780                                    ; preds = %2739, %2737
  %2781 = phi %union.rec* [ %2738, %2737 ], [ %2774, %2739 ]
  br label %2782

; <label>:2782                                    ; preds = %2780, %2732
  %2783 = phi %union.rec* [ %2733, %2732 ], [ %2781, %2780 ]
  %2784 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2784, %union.rec** @zz_res, align 8
  %2785 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2785, %union.rec** @zz_hold, align 8
  %2786 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2787 = icmp eq %union.rec* %2786, null
  br i1 %2787, label %2788, label %2790

; <label>:2788                                    ; preds = %2782
  %2789 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2838

; <label>:2790                                    ; preds = %2782
  %2791 = load %union.rec*, %union.rec** @zz_res, align 8
  %2792 = icmp eq %union.rec* %2791, null
  br i1 %2792, label %2793, label %2795

; <label>:2793                                    ; preds = %2790
  %2794 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2836

; <label>:2795                                    ; preds = %2790
  %2796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2797 = bitcast %union.rec* %2796 to %struct.word_type*
  %2798 = getelementptr inbounds %struct.word_type, %struct.word_type* %2797, i32 0, i32 0
  %2799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2798, i32 0, i64 1
  %2800 = getelementptr inbounds %struct.LIST, %struct.LIST* %2799, i32 0, i32 0
  %2801 = load %union.rec*, %union.rec** %2800, align 8
  store %union.rec* %2801, %union.rec** @zz_tmp, align 8
  %2802 = load %union.rec*, %union.rec** @zz_res, align 8
  %2803 = bitcast %union.rec* %2802 to %struct.word_type*
  %2804 = getelementptr inbounds %struct.word_type, %struct.word_type* %2803, i32 0, i32 0
  %2805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2804, i32 0, i64 1
  %2806 = getelementptr inbounds %struct.LIST, %struct.LIST* %2805, i32 0, i32 0
  %2807 = load %union.rec*, %union.rec** %2806, align 8
  %2808 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2809 = bitcast %union.rec* %2808 to %struct.word_type*
  %2810 = getelementptr inbounds %struct.word_type, %struct.word_type* %2809, i32 0, i32 0
  %2811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2810, i32 0, i64 1
  %2812 = getelementptr inbounds %struct.LIST, %struct.LIST* %2811, i32 0, i32 0
  store %union.rec* %2807, %union.rec** %2812, align 8
  %2813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2814 = load %union.rec*, %union.rec** @zz_res, align 8
  %2815 = bitcast %union.rec* %2814 to %struct.word_type*
  %2816 = getelementptr inbounds %struct.word_type, %struct.word_type* %2815, i32 0, i32 0
  %2817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2816, i32 0, i64 1
  %2818 = getelementptr inbounds %struct.LIST, %struct.LIST* %2817, i32 0, i32 0
  %2819 = load %union.rec*, %union.rec** %2818, align 8
  %2820 = bitcast %union.rec* %2819 to %struct.word_type*
  %2821 = getelementptr inbounds %struct.word_type, %struct.word_type* %2820, i32 0, i32 0
  %2822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2821, i32 0, i64 1
  %2823 = getelementptr inbounds %struct.LIST, %struct.LIST* %2822, i32 0, i32 1
  store %union.rec* %2813, %union.rec** %2823, align 8
  %2824 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2825 = load %union.rec*, %union.rec** @zz_res, align 8
  %2826 = bitcast %union.rec* %2825 to %struct.word_type*
  %2827 = getelementptr inbounds %struct.word_type, %struct.word_type* %2826, i32 0, i32 0
  %2828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2827, i32 0, i64 1
  %2829 = getelementptr inbounds %struct.LIST, %struct.LIST* %2828, i32 0, i32 0
  store %union.rec* %2824, %union.rec** %2829, align 8
  %2830 = load %union.rec*, %union.rec** @zz_res, align 8
  %2831 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2832 = bitcast %union.rec* %2831 to %struct.word_type*
  %2833 = getelementptr inbounds %struct.word_type, %struct.word_type* %2832, i32 0, i32 0
  %2834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2833, i32 0, i64 1
  %2835 = getelementptr inbounds %struct.LIST, %struct.LIST* %2834, i32 0, i32 1
  store %union.rec* %2830, %union.rec** %2835, align 8
  br label %2836

; <label>:2836                                    ; preds = %2795, %2793
  %2837 = phi %union.rec* [ %2794, %2793 ], [ %2830, %2795 ]
  br label %2838

; <label>:2838                                    ; preds = %2836, %2788
  %2839 = phi %union.rec* [ %2789, %2788 ], [ %2837, %2836 ]
  br label %2840

; <label>:2840                                    ; preds = %2838, %2053
  br label %2841

; <label>:2841                                    ; preds = %2840
  %2842 = load %union.rec*, %union.rec** %tlink, align 8
  %2843 = bitcast %union.rec* %2842 to %struct.word_type*
  %2844 = getelementptr inbounds %struct.word_type, %struct.word_type* %2843, i32 0, i32 0
  %2845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2844, i32 0, i64 0
  %2846 = getelementptr inbounds %struct.LIST, %struct.LIST* %2845, i32 0, i32 0
  %2847 = load %union.rec*, %union.rec** %2846, align 8
  store %union.rec* %2847, %union.rec** %tlink, align 8
  br label %1841

; <label>:2848                                    ; preds = %1841
  %2849 = load %union.rec*, %union.rec** %dlink, align 8
  store %union.rec* %2849, %union.rec** @xx_link, align 8
  %2850 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2850, %union.rec** @zz_hold, align 8
  %2851 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2852 = bitcast %union.rec* %2851 to %struct.word_type*
  %2853 = getelementptr inbounds %struct.word_type, %struct.word_type* %2852, i32 0, i32 0
  %2854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2853, i32 0, i64 1
  %2855 = getelementptr inbounds %struct.LIST, %struct.LIST* %2854, i32 0, i32 1
  %2856 = load %union.rec*, %union.rec** %2855, align 8
  %2857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2858 = icmp eq %union.rec* %2856, %2857
  br i1 %2858, label %2859, label %2860

; <label>:2859                                    ; preds = %2848
  br label %2901

; <label>:2860                                    ; preds = %2848
  %2861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2862 = bitcast %union.rec* %2861 to %struct.word_type*
  %2863 = getelementptr inbounds %struct.word_type, %struct.word_type* %2862, i32 0, i32 0
  %2864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2863, i32 0, i64 1
  %2865 = getelementptr inbounds %struct.LIST, %struct.LIST* %2864, i32 0, i32 1
  %2866 = load %union.rec*, %union.rec** %2865, align 8
  store %union.rec* %2866, %union.rec** @zz_res, align 8
  %2867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2868 = bitcast %union.rec* %2867 to %struct.word_type*
  %2869 = getelementptr inbounds %struct.word_type, %struct.word_type* %2868, i32 0, i32 0
  %2870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2869, i32 0, i64 1
  %2871 = getelementptr inbounds %struct.LIST, %struct.LIST* %2870, i32 0, i32 0
  %2872 = load %union.rec*, %union.rec** %2871, align 8
  %2873 = load %union.rec*, %union.rec** @zz_res, align 8
  %2874 = bitcast %union.rec* %2873 to %struct.word_type*
  %2875 = getelementptr inbounds %struct.word_type, %struct.word_type* %2874, i32 0, i32 0
  %2876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2875, i32 0, i64 1
  %2877 = getelementptr inbounds %struct.LIST, %struct.LIST* %2876, i32 0, i32 0
  store %union.rec* %2872, %union.rec** %2877, align 8
  %2878 = load %union.rec*, %union.rec** @zz_res, align 8
  %2879 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2880 = bitcast %union.rec* %2879 to %struct.word_type*
  %2881 = getelementptr inbounds %struct.word_type, %struct.word_type* %2880, i32 0, i32 0
  %2882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2881, i32 0, i64 1
  %2883 = getelementptr inbounds %struct.LIST, %struct.LIST* %2882, i32 0, i32 0
  %2884 = load %union.rec*, %union.rec** %2883, align 8
  %2885 = bitcast %union.rec* %2884 to %struct.word_type*
  %2886 = getelementptr inbounds %struct.word_type, %struct.word_type* %2885, i32 0, i32 0
  %2887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2886, i32 0, i64 1
  %2888 = getelementptr inbounds %struct.LIST, %struct.LIST* %2887, i32 0, i32 1
  store %union.rec* %2878, %union.rec** %2888, align 8
  %2889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2891 = bitcast %union.rec* %2890 to %struct.word_type*
  %2892 = getelementptr inbounds %struct.word_type, %struct.word_type* %2891, i32 0, i32 0
  %2893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2892, i32 0, i64 1
  %2894 = getelementptr inbounds %struct.LIST, %struct.LIST* %2893, i32 0, i32 1
  store %union.rec* %2889, %union.rec** %2894, align 8
  %2895 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2896 = bitcast %union.rec* %2895 to %struct.word_type*
  %2897 = getelementptr inbounds %struct.word_type, %struct.word_type* %2896, i32 0, i32 0
  %2898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2897, i32 0, i64 1
  %2899 = getelementptr inbounds %struct.LIST, %struct.LIST* %2898, i32 0, i32 0
  store %union.rec* %2889, %union.rec** %2899, align 8
  %2900 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2901

; <label>:2901                                    ; preds = %2860, %2859
  %2902 = phi %union.rec* [ null, %2859 ], [ %2900, %2860 ]
  %2903 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2903, %union.rec** @zz_hold, align 8
  %2904 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2905 = bitcast %union.rec* %2904 to %struct.word_type*
  %2906 = getelementptr inbounds %struct.word_type, %struct.word_type* %2905, i32 0, i32 0
  %2907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2906, i32 0, i64 0
  %2908 = getelementptr inbounds %struct.LIST, %struct.LIST* %2907, i32 0, i32 1
  %2909 = load %union.rec*, %union.rec** %2908, align 8
  %2910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2911 = icmp eq %union.rec* %2909, %2910
  br i1 %2911, label %2912, label %2913

; <label>:2912                                    ; preds = %2901
  br label %2954

; <label>:2913                                    ; preds = %2901
  %2914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2915 = bitcast %union.rec* %2914 to %struct.word_type*
  %2916 = getelementptr inbounds %struct.word_type, %struct.word_type* %2915, i32 0, i32 0
  %2917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2916, i32 0, i64 0
  %2918 = getelementptr inbounds %struct.LIST, %struct.LIST* %2917, i32 0, i32 1
  %2919 = load %union.rec*, %union.rec** %2918, align 8
  store %union.rec* %2919, %union.rec** @zz_res, align 8
  %2920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2921 = bitcast %union.rec* %2920 to %struct.word_type*
  %2922 = getelementptr inbounds %struct.word_type, %struct.word_type* %2921, i32 0, i32 0
  %2923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2922, i32 0, i64 0
  %2924 = getelementptr inbounds %struct.LIST, %struct.LIST* %2923, i32 0, i32 0
  %2925 = load %union.rec*, %union.rec** %2924, align 8
  %2926 = load %union.rec*, %union.rec** @zz_res, align 8
  %2927 = bitcast %union.rec* %2926 to %struct.word_type*
  %2928 = getelementptr inbounds %struct.word_type, %struct.word_type* %2927, i32 0, i32 0
  %2929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2928, i32 0, i64 0
  %2930 = getelementptr inbounds %struct.LIST, %struct.LIST* %2929, i32 0, i32 0
  store %union.rec* %2925, %union.rec** %2930, align 8
  %2931 = load %union.rec*, %union.rec** @zz_res, align 8
  %2932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2933 = bitcast %union.rec* %2932 to %struct.word_type*
  %2934 = getelementptr inbounds %struct.word_type, %struct.word_type* %2933, i32 0, i32 0
  %2935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2934, i32 0, i64 0
  %2936 = getelementptr inbounds %struct.LIST, %struct.LIST* %2935, i32 0, i32 0
  %2937 = load %union.rec*, %union.rec** %2936, align 8
  %2938 = bitcast %union.rec* %2937 to %struct.word_type*
  %2939 = getelementptr inbounds %struct.word_type, %struct.word_type* %2938, i32 0, i32 0
  %2940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2939, i32 0, i64 0
  %2941 = getelementptr inbounds %struct.LIST, %struct.LIST* %2940, i32 0, i32 1
  store %union.rec* %2931, %union.rec** %2941, align 8
  %2942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2944 = bitcast %union.rec* %2943 to %struct.word_type*
  %2945 = getelementptr inbounds %struct.word_type, %struct.word_type* %2944, i32 0, i32 0
  %2946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2945, i32 0, i64 0
  %2947 = getelementptr inbounds %struct.LIST, %struct.LIST* %2946, i32 0, i32 1
  store %union.rec* %2942, %union.rec** %2947, align 8
  %2948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2949 = bitcast %union.rec* %2948 to %struct.word_type*
  %2950 = getelementptr inbounds %struct.word_type, %struct.word_type* %2949, i32 0, i32 0
  %2951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2950, i32 0, i64 0
  %2952 = getelementptr inbounds %struct.LIST, %struct.LIST* %2951, i32 0, i32 0
  store %union.rec* %2942, %union.rec** %2952, align 8
  %2953 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2954

; <label>:2954                                    ; preds = %2913, %2912
  %2955 = phi %union.rec* [ null, %2912 ], [ %2953, %2913 ]
  %2956 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2956, %union.rec** @zz_hold, align 8
  %2957 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2957, %union.rec** @zz_hold, align 8
  %2958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2959 = bitcast %union.rec* %2958 to %struct.word_type*
  %2960 = getelementptr inbounds %struct.word_type, %struct.word_type* %2959, i32 0, i32 1
  %2961 = bitcast %union.FIRST_UNION* %2960 to %struct.anon*
  %2962 = getelementptr inbounds %struct.anon, %struct.anon* %2961, i32 0, i32 0
  %2963 = load i8, i8* %2962, align 1
  %2964 = zext i8 %2963 to i32
  %2965 = icmp eq i32 %2964, 11
  br i1 %2965, label %2975, label %2966

; <label>:2966                                    ; preds = %2954
  %2967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2968 = bitcast %union.rec* %2967 to %struct.word_type*
  %2969 = getelementptr inbounds %struct.word_type, %struct.word_type* %2968, i32 0, i32 1
  %2970 = bitcast %union.FIRST_UNION* %2969 to %struct.anon*
  %2971 = getelementptr inbounds %struct.anon, %struct.anon* %2970, i32 0, i32 0
  %2972 = load i8, i8* %2971, align 1
  %2973 = zext i8 %2972 to i32
  %2974 = icmp eq i32 %2973, 12
  br i1 %2974, label %2975, label %2983

; <label>:2975                                    ; preds = %2966, %2954
  %2976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2977 = bitcast %union.rec* %2976 to %struct.word_type*
  %2978 = getelementptr inbounds %struct.word_type, %struct.word_type* %2977, i32 0, i32 1
  %2979 = bitcast %union.FIRST_UNION* %2978 to %struct.anon*
  %2980 = getelementptr inbounds %struct.anon, %struct.anon* %2979, i32 0, i32 1
  %2981 = load i8, i8* %2980, align 1
  %2982 = zext i8 %2981 to i32
  br label %2994

; <label>:2983                                    ; preds = %2966
  %2984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2985 = bitcast %union.rec* %2984 to %struct.word_type*
  %2986 = getelementptr inbounds %struct.word_type, %struct.word_type* %2985, i32 0, i32 1
  %2987 = bitcast %union.FIRST_UNION* %2986 to %struct.anon*
  %2988 = getelementptr inbounds %struct.anon, %struct.anon* %2987, i32 0, i32 0
  %2989 = load i8, i8* %2988, align 1
  %2990 = zext i8 %2989 to i64
  %2991 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2990
  %2992 = load i8, i8* %2991, align 1
  %2993 = zext i8 %2992 to i32
  br label %2994

; <label>:2994                                    ; preds = %2983, %2975
  %2995 = phi i32 [ %2982, %2975 ], [ %2993, %2983 ]
  store i32 %2995, i32* @zz_size, align 4
  %2996 = load i32, i32* @zz_size, align 4
  %2997 = sext i32 %2996 to i64
  %2998 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2997
  %2999 = load %union.rec*, %union.rec** %2998, align 8
  %3000 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3001 = bitcast %union.rec* %3000 to %struct.word_type*
  %3002 = getelementptr inbounds %struct.word_type, %struct.word_type* %3001, i32 0, i32 0
  %3003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3002, i32 0, i64 0
  %3004 = getelementptr inbounds %struct.LIST, %struct.LIST* %3003, i32 0, i32 0
  store %union.rec* %2999, %union.rec** %3004, align 8
  %3005 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3006 = load i32, i32* @zz_size, align 4
  %3007 = sext i32 %3006 to i64
  %3008 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3007
  store %union.rec* %3005, %union.rec** %3008, align 8
  %3009 = load %union.rec*, %union.rec** %y, align 8
  %3010 = bitcast %union.rec* %3009 to %struct.word_type*
  %3011 = getelementptr inbounds %struct.word_type, %struct.word_type* %3010, i32 0, i32 0
  %3012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3011, i32 0, i64 1
  %3013 = getelementptr inbounds %struct.LIST, %struct.LIST* %3012, i32 0, i32 1
  %3014 = load %union.rec*, %union.rec** %3013, align 8
  %3015 = load %union.rec*, %union.rec** %y, align 8
  %3016 = bitcast %union.rec* %3015 to %struct.word_type*
  %3017 = getelementptr inbounds %struct.word_type, %struct.word_type* %3016, i32 0, i32 0
  %3018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3017, i32 0, i64 1
  %3019 = getelementptr inbounds %struct.LIST, %struct.LIST* %3018, i32 0, i32 0
  %3020 = load %union.rec*, %union.rec** %3019, align 8
  %3021 = icmp eq %union.rec* %3014, %3020
  br i1 %3021, label %3025, label %3022

; <label>:3022                                    ; preds = %2994
  %3023 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3024 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3023, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  br label %3025

; <label>:3025                                    ; preds = %3022, %2994
  %3026 = load %union.rec*, %union.rec** %y, align 8
  %3027 = bitcast %union.rec* %3026 to %struct.word_type*
  %3028 = getelementptr inbounds %struct.word_type, %struct.word_type* %3027, i32 0, i32 0
  %3029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3028, i32 0, i64 1
  %3030 = getelementptr inbounds %struct.LIST, %struct.LIST* %3029, i32 0, i32 1
  %3031 = load %union.rec*, %union.rec** %3030, align 8
  store %union.rec* %3031, %union.rec** @xx_link, align 8
  %3032 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3032, %union.rec** @zz_hold, align 8
  %3033 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3034 = bitcast %union.rec* %3033 to %struct.word_type*
  %3035 = getelementptr inbounds %struct.word_type, %struct.word_type* %3034, i32 0, i32 0
  %3036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3035, i32 0, i64 1
  %3037 = getelementptr inbounds %struct.LIST, %struct.LIST* %3036, i32 0, i32 1
  %3038 = load %union.rec*, %union.rec** %3037, align 8
  %3039 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3040 = icmp eq %union.rec* %3038, %3039
  br i1 %3040, label %3041, label %3042

; <label>:3041                                    ; preds = %3025
  br label %3083

; <label>:3042                                    ; preds = %3025
  %3043 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3044 = bitcast %union.rec* %3043 to %struct.word_type*
  %3045 = getelementptr inbounds %struct.word_type, %struct.word_type* %3044, i32 0, i32 0
  %3046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3045, i32 0, i64 1
  %3047 = getelementptr inbounds %struct.LIST, %struct.LIST* %3046, i32 0, i32 1
  %3048 = load %union.rec*, %union.rec** %3047, align 8
  store %union.rec* %3048, %union.rec** @zz_res, align 8
  %3049 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3050 = bitcast %union.rec* %3049 to %struct.word_type*
  %3051 = getelementptr inbounds %struct.word_type, %struct.word_type* %3050, i32 0, i32 0
  %3052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3051, i32 0, i64 1
  %3053 = getelementptr inbounds %struct.LIST, %struct.LIST* %3052, i32 0, i32 0
  %3054 = load %union.rec*, %union.rec** %3053, align 8
  %3055 = load %union.rec*, %union.rec** @zz_res, align 8
  %3056 = bitcast %union.rec* %3055 to %struct.word_type*
  %3057 = getelementptr inbounds %struct.word_type, %struct.word_type* %3056, i32 0, i32 0
  %3058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3057, i32 0, i64 1
  %3059 = getelementptr inbounds %struct.LIST, %struct.LIST* %3058, i32 0, i32 0
  store %union.rec* %3054, %union.rec** %3059, align 8
  %3060 = load %union.rec*, %union.rec** @zz_res, align 8
  %3061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3062 = bitcast %union.rec* %3061 to %struct.word_type*
  %3063 = getelementptr inbounds %struct.word_type, %struct.word_type* %3062, i32 0, i32 0
  %3064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3063, i32 0, i64 1
  %3065 = getelementptr inbounds %struct.LIST, %struct.LIST* %3064, i32 0, i32 0
  %3066 = load %union.rec*, %union.rec** %3065, align 8
  %3067 = bitcast %union.rec* %3066 to %struct.word_type*
  %3068 = getelementptr inbounds %struct.word_type, %struct.word_type* %3067, i32 0, i32 0
  %3069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3068, i32 0, i64 1
  %3070 = getelementptr inbounds %struct.LIST, %struct.LIST* %3069, i32 0, i32 1
  store %union.rec* %3060, %union.rec** %3070, align 8
  %3071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3072 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3073 = bitcast %union.rec* %3072 to %struct.word_type*
  %3074 = getelementptr inbounds %struct.word_type, %struct.word_type* %3073, i32 0, i32 0
  %3075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3074, i32 0, i64 1
  %3076 = getelementptr inbounds %struct.LIST, %struct.LIST* %3075, i32 0, i32 1
  store %union.rec* %3071, %union.rec** %3076, align 8
  %3077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3078 = bitcast %union.rec* %3077 to %struct.word_type*
  %3079 = getelementptr inbounds %struct.word_type, %struct.word_type* %3078, i32 0, i32 0
  %3080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3079, i32 0, i64 1
  %3081 = getelementptr inbounds %struct.LIST, %struct.LIST* %3080, i32 0, i32 0
  store %union.rec* %3071, %union.rec** %3081, align 8
  %3082 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3083

; <label>:3083                                    ; preds = %3042, %3041
  %3084 = phi %union.rec* [ null, %3041 ], [ %3082, %3042 ]
  store %union.rec* %3084, %union.rec** @xx_tmp, align 8
  %3085 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3085, %union.rec** @zz_hold, align 8
  %3086 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3087 = bitcast %union.rec* %3086 to %struct.word_type*
  %3088 = getelementptr inbounds %struct.word_type, %struct.word_type* %3087, i32 0, i32 0
  %3089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3088, i32 0, i64 0
  %3090 = getelementptr inbounds %struct.LIST, %struct.LIST* %3089, i32 0, i32 1
  %3091 = load %union.rec*, %union.rec** %3090, align 8
  %3092 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3093 = icmp eq %union.rec* %3091, %3092
  br i1 %3093, label %3094, label %3095

; <label>:3094                                    ; preds = %3083
  br label %3136

; <label>:3095                                    ; preds = %3083
  %3096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3097 = bitcast %union.rec* %3096 to %struct.word_type*
  %3098 = getelementptr inbounds %struct.word_type, %struct.word_type* %3097, i32 0, i32 0
  %3099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3098, i32 0, i64 0
  %3100 = getelementptr inbounds %struct.LIST, %struct.LIST* %3099, i32 0, i32 1
  %3101 = load %union.rec*, %union.rec** %3100, align 8
  store %union.rec* %3101, %union.rec** @zz_res, align 8
  %3102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3103 = bitcast %union.rec* %3102 to %struct.word_type*
  %3104 = getelementptr inbounds %struct.word_type, %struct.word_type* %3103, i32 0, i32 0
  %3105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3104, i32 0, i64 0
  %3106 = getelementptr inbounds %struct.LIST, %struct.LIST* %3105, i32 0, i32 0
  %3107 = load %union.rec*, %union.rec** %3106, align 8
  %3108 = load %union.rec*, %union.rec** @zz_res, align 8
  %3109 = bitcast %union.rec* %3108 to %struct.word_type*
  %3110 = getelementptr inbounds %struct.word_type, %struct.word_type* %3109, i32 0, i32 0
  %3111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3110, i32 0, i64 0
  %3112 = getelementptr inbounds %struct.LIST, %struct.LIST* %3111, i32 0, i32 0
  store %union.rec* %3107, %union.rec** %3112, align 8
  %3113 = load %union.rec*, %union.rec** @zz_res, align 8
  %3114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3115 = bitcast %union.rec* %3114 to %struct.word_type*
  %3116 = getelementptr inbounds %struct.word_type, %struct.word_type* %3115, i32 0, i32 0
  %3117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3116, i32 0, i64 0
  %3118 = getelementptr inbounds %struct.LIST, %struct.LIST* %3117, i32 0, i32 0
  %3119 = load %union.rec*, %union.rec** %3118, align 8
  %3120 = bitcast %union.rec* %3119 to %struct.word_type*
  %3121 = getelementptr inbounds %struct.word_type, %struct.word_type* %3120, i32 0, i32 0
  %3122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3121, i32 0, i64 0
  %3123 = getelementptr inbounds %struct.LIST, %struct.LIST* %3122, i32 0, i32 1
  store %union.rec* %3113, %union.rec** %3123, align 8
  %3124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3126 = bitcast %union.rec* %3125 to %struct.word_type*
  %3127 = getelementptr inbounds %struct.word_type, %struct.word_type* %3126, i32 0, i32 0
  %3128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3127, i32 0, i64 0
  %3129 = getelementptr inbounds %struct.LIST, %struct.LIST* %3128, i32 0, i32 1
  store %union.rec* %3124, %union.rec** %3129, align 8
  %3130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3131 = bitcast %union.rec* %3130 to %struct.word_type*
  %3132 = getelementptr inbounds %struct.word_type, %struct.word_type* %3131, i32 0, i32 0
  %3133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3132, i32 0, i64 0
  %3134 = getelementptr inbounds %struct.LIST, %struct.LIST* %3133, i32 0, i32 0
  store %union.rec* %3124, %union.rec** %3134, align 8
  %3135 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3136

; <label>:3136                                    ; preds = %3095, %3094
  %3137 = phi %union.rec* [ null, %3094 ], [ %3135, %3095 ]
  %3138 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3138, %union.rec** @zz_hold, align 8
  %3139 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3139, %union.rec** @zz_hold, align 8
  %3140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3141 = bitcast %union.rec* %3140 to %struct.word_type*
  %3142 = getelementptr inbounds %struct.word_type, %struct.word_type* %3141, i32 0, i32 1
  %3143 = bitcast %union.FIRST_UNION* %3142 to %struct.anon*
  %3144 = getelementptr inbounds %struct.anon, %struct.anon* %3143, i32 0, i32 0
  %3145 = load i8, i8* %3144, align 1
  %3146 = zext i8 %3145 to i32
  %3147 = icmp eq i32 %3146, 11
  br i1 %3147, label %3157, label %3148

; <label>:3148                                    ; preds = %3136
  %3149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3150 = bitcast %union.rec* %3149 to %struct.word_type*
  %3151 = getelementptr inbounds %struct.word_type, %struct.word_type* %3150, i32 0, i32 1
  %3152 = bitcast %union.FIRST_UNION* %3151 to %struct.anon*
  %3153 = getelementptr inbounds %struct.anon, %struct.anon* %3152, i32 0, i32 0
  %3154 = load i8, i8* %3153, align 1
  %3155 = zext i8 %3154 to i32
  %3156 = icmp eq i32 %3155, 12
  br i1 %3156, label %3157, label %3165

; <label>:3157                                    ; preds = %3148, %3136
  %3158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3159 = bitcast %union.rec* %3158 to %struct.word_type*
  %3160 = getelementptr inbounds %struct.word_type, %struct.word_type* %3159, i32 0, i32 1
  %3161 = bitcast %union.FIRST_UNION* %3160 to %struct.anon*
  %3162 = getelementptr inbounds %struct.anon, %struct.anon* %3161, i32 0, i32 1
  %3163 = load i8, i8* %3162, align 1
  %3164 = zext i8 %3163 to i32
  br label %3176

; <label>:3165                                    ; preds = %3148
  %3166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3167 = bitcast %union.rec* %3166 to %struct.word_type*
  %3168 = getelementptr inbounds %struct.word_type, %struct.word_type* %3167, i32 0, i32 1
  %3169 = bitcast %union.FIRST_UNION* %3168 to %struct.anon*
  %3170 = getelementptr inbounds %struct.anon, %struct.anon* %3169, i32 0, i32 0
  %3171 = load i8, i8* %3170, align 1
  %3172 = zext i8 %3171 to i64
  %3173 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3172
  %3174 = load i8, i8* %3173, align 1
  %3175 = zext i8 %3174 to i32
  br label %3176

; <label>:3176                                    ; preds = %3165, %3157
  %3177 = phi i32 [ %3164, %3157 ], [ %3175, %3165 ]
  store i32 %3177, i32* @zz_size, align 4
  %3178 = load i32, i32* @zz_size, align 4
  %3179 = sext i32 %3178 to i64
  %3180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3179
  %3181 = load %union.rec*, %union.rec** %3180, align 8
  %3182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3183 = bitcast %union.rec* %3182 to %struct.word_type*
  %3184 = getelementptr inbounds %struct.word_type, %struct.word_type* %3183, i32 0, i32 0
  %3185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3184, i32 0, i64 0
  %3186 = getelementptr inbounds %struct.LIST, %struct.LIST* %3185, i32 0, i32 0
  store %union.rec* %3181, %union.rec** %3186, align 8
  %3187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3188 = load i32, i32* @zz_size, align 4
  %3189 = sext i32 %3188 to i64
  %3190 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3189
  store %union.rec* %3187, %union.rec** %3190, align 8
  %3191 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3192 = bitcast %union.rec* %3191 to %struct.word_type*
  %3193 = getelementptr inbounds %struct.word_type, %struct.word_type* %3192, i32 0, i32 0
  %3194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3193, i32 0, i64 1
  %3195 = getelementptr inbounds %struct.LIST, %struct.LIST* %3194, i32 0, i32 1
  %3196 = load %union.rec*, %union.rec** %3195, align 8
  %3197 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3198 = icmp eq %union.rec* %3196, %3197
  br i1 %3198, label %3199, label %3202

; <label>:3199                                    ; preds = %3176
  %3200 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3201 = call i32 @DisposeObject(%union.rec* %3200)
  br label %3202

; <label>:3202                                    ; preds = %3199, %3176
  %3203 = load %union.rec*, %union.rec** %link, align 8
  %3204 = bitcast %union.rec* %3203 to %struct.word_type*
  %3205 = getelementptr inbounds %struct.word_type, %struct.word_type* %3204, i32 0, i32 0
  %3206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3205, i32 0, i64 0
  %3207 = getelementptr inbounds %struct.LIST, %struct.LIST* %3206, i32 0, i32 0
  %3208 = load %union.rec*, %union.rec** %3207, align 8
  store %union.rec* %3208, %union.rec** %link, align 8
  br label %3209

; <label>:3209                                    ; preds = %3202, %1736
  br label %3210

; <label>:3210                                    ; preds = %3209, %1727
  br label %3242

; <label>:3211                                    ; preds = %959, %959
  %3212 = load %union.rec*, %union.rec** %1, align 8
  %3213 = bitcast %union.rec* %3212 to %struct.word_type*
  %3214 = getelementptr inbounds %struct.word_type, %struct.word_type* %3213, i32 0, i32 2
  %3215 = bitcast %union.SECOND_UNION* %3214 to %struct.anon.2*
  %3216 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3215, i32 0, i32 2
  %3217 = load i16, i16* %3216, align 2
  %3218 = lshr i16 %3217, 8
  %3219 = and i16 %3218, 1
  %3220 = zext i16 %3219 to i32
  %3221 = icmp eq i32 %3220, 0
  br i1 %3221, label %3222, label %3231

; <label>:3222                                    ; preds = %3211
  %3223 = load %union.rec*, %union.rec** %y, align 8
  %3224 = bitcast %union.rec* %3223 to %struct.word_type*
  %3225 = getelementptr inbounds %struct.word_type, %struct.word_type* %3224, i32 0, i32 2
  %3226 = bitcast %union.SECOND_UNION* %3225 to %struct.anon.2*
  %3227 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3226, i32 0, i32 2
  %3228 = load i16, i16* %3227, align 2
  %3229 = and i16 %3228, -9
  %3230 = or i16 %3229, 8
  store i16 %3230, i16* %3227, align 2
  br label %3240

; <label>:3231                                    ; preds = %3211
  %3232 = load %union.rec*, %union.rec** %y, align 8
  %3233 = bitcast %union.rec* %3232 to %struct.word_type*
  %3234 = getelementptr inbounds %struct.word_type, %struct.word_type* %3233, i32 0, i32 2
  %3235 = bitcast %union.SECOND_UNION* %3234 to %struct.anon.2*
  %3236 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3235, i32 0, i32 2
  %3237 = load i16, i16* %3236, align 2
  %3238 = and i16 %3237, -17
  %3239 = or i16 %3238, 16
  store i16 %3239, i16* %3236, align 2
  br label %3240

; <label>:3240                                    ; preds = %3231, %3222
  br label %3242

; <label>:3241                                    ; preds = %959
  br label %3242

; <label>:3242                                    ; preds = %3241, %3240, %3210, %1662, %1324, %986
  br label %3243

; <label>:3243                                    ; preds = %3242
  %3244 = load %union.rec*, %union.rec** %link, align 8
  %3245 = bitcast %union.rec* %3244 to %struct.word_type*
  %3246 = getelementptr inbounds %struct.word_type, %struct.word_type* %3245, i32 0, i32 0
  %3247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3246, i32 0, i64 0
  %3248 = getelementptr inbounds %struct.LIST, %struct.LIST* %3247, i32 0, i32 1
  %3249 = load %union.rec*, %union.rec** %3248, align 8
  store %union.rec* %3249, %union.rec** %link, align 8
  br label %921

; <label>:3250                                    ; preds = %921
  br label %3251

; <label>:3251                                    ; preds = %3250, %909
  %3252 = load %union.rec*, %union.rec** %extras, align 8
  %3253 = bitcast %union.rec* %3252 to %struct.word_type*
  %3254 = getelementptr inbounds %struct.word_type, %struct.word_type* %3253, i32 0, i32 0
  %3255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3254, i32 0, i64 0
  %3256 = getelementptr inbounds %struct.LIST, %struct.LIST* %3255, i32 0, i32 1
  %3257 = load %union.rec*, %union.rec** %3256, align 8
  store %union.rec* %3257, %union.rec** %link, align 8
  br label %3258

; <label>:3258                                    ; preds = %3819, %3251
  %3259 = load %union.rec*, %union.rec** %link, align 8
  %3260 = load %union.rec*, %union.rec** %extras, align 8
  %3261 = icmp ne %union.rec* %3259, %3260
  br i1 %3261, label %3262, label %3826

; <label>:3262                                    ; preds = %3258
  %3263 = load %union.rec*, %union.rec** %link, align 8
  %3264 = bitcast %union.rec* %3263 to %struct.word_type*
  %3265 = getelementptr inbounds %struct.word_type, %struct.word_type* %3264, i32 0, i32 0
  %3266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3265, i32 0, i64 1
  %3267 = getelementptr inbounds %struct.LIST, %struct.LIST* %3266, i32 0, i32 0
  %3268 = load %union.rec*, %union.rec** %3267, align 8
  store %union.rec* %3268, %union.rec** %y, align 8
  br label %3269

; <label>:3269                                    ; preds = %3279, %3262
  %3270 = load %union.rec*, %union.rec** %y, align 8
  %3271 = bitcast %union.rec* %3270 to %struct.word_type*
  %3272 = getelementptr inbounds %struct.word_type, %struct.word_type* %3271, i32 0, i32 1
  %3273 = bitcast %union.FIRST_UNION* %3272 to %struct.anon*
  %3274 = getelementptr inbounds %struct.anon, %struct.anon* %3273, i32 0, i32 0
  %3275 = load i8, i8* %3274, align 1
  %3276 = zext i8 %3275 to i32
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3278, label %3286

; <label>:3278                                    ; preds = %3269
  br label %3279

; <label>:3279                                    ; preds = %3278
  %3280 = load %union.rec*, %union.rec** %y, align 8
  %3281 = bitcast %union.rec* %3280 to %struct.word_type*
  %3282 = getelementptr inbounds %struct.word_type, %struct.word_type* %3281, i32 0, i32 0
  %3283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3282, i32 0, i64 1
  %3284 = getelementptr inbounds %struct.LIST, %struct.LIST* %3283, i32 0, i32 0
  %3285 = load %union.rec*, %union.rec** %3284, align 8
  store %union.rec* %3285, %union.rec** %y, align 8
  br label %3269

; <label>:3286                                    ; preds = %3269
  %3287 = load %union.rec*, %union.rec** %y, align 8
  %3288 = bitcast %union.rec* %3287 to %struct.word_type*
  %3289 = getelementptr inbounds %struct.word_type, %struct.word_type* %3288, i32 0, i32 1
  %3290 = bitcast %union.FIRST_UNION* %3289 to %struct.anon*
  %3291 = getelementptr inbounds %struct.anon, %struct.anon* %3290, i32 0, i32 0
  %3292 = load i8, i8* %3291, align 1
  %3293 = zext i8 %3292 to i32
  %3294 = icmp eq i32 %3293, 136
  br i1 %3294, label %3295, label %3818

; <label>:3295                                    ; preds = %3286
  %3296 = load %union.rec*, %union.rec** %y, align 8
  %3297 = bitcast %union.rec* %3296 to %struct.closure_type*
  %3298 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3297, i32 0, i32 5
  %3299 = load %union.rec*, %union.rec** %3298, align 8
  store %union.rec* %3299, %union.rec** %z, align 8
  %3300 = load %union.rec*, %union.rec** %z, align 8
  %3301 = bitcast %union.rec* %3300 to %struct.word_type*
  %3302 = getelementptr inbounds %struct.word_type, %struct.word_type* %3301, i32 0, i32 1
  %3303 = bitcast %union.FIRST_UNION* %3302 to %struct.anon*
  %3304 = getelementptr inbounds %struct.anon, %struct.anon* %3303, i32 0, i32 0
  %3305 = load i8, i8* %3304, align 1
  %3306 = zext i8 %3305 to i32
  %3307 = icmp eq i32 %3306, 34
  br i1 %3307, label %3311, label %3308

; <label>:3308                                    ; preds = %3295
  %3309 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3310 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3309, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %3311

; <label>:3311                                    ; preds = %3308, %3295
  %3312 = load %union.rec*, %union.rec** %z, align 8
  %3313 = bitcast %union.rec* %3312 to %struct.closure_type*
  %3314 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3313, i32 0, i32 4
  %3315 = bitcast %union.FOURTH_UNION* %3314 to %struct.CONSTRAINT*
  %3316 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3315, i32 0, i32 0
  %3317 = load i32, i32* %3316, align 4
  %3318 = icmp eq i32 %3317, 0
  br i1 %3318, label %3322, label %3319

; <label>:3319                                    ; preds = %3311
  %3320 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3321 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3320, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0))
  br label %3322

; <label>:3322                                    ; preds = %3319, %3311
  %3323 = load %union.rec*, %union.rec** %z, align 8
  %3324 = bitcast %union.rec* %3323 to %struct.word_type*
  %3325 = getelementptr inbounds %struct.word_type, %struct.word_type* %3324, i32 0, i32 0
  %3326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3325, i32 0, i64 0
  %3327 = getelementptr inbounds %struct.LIST, %struct.LIST* %3326, i32 0, i32 1
  %3328 = load %union.rec*, %union.rec** %3327, align 8
  %3329 = load %union.rec*, %union.rec** %z, align 8
  %3330 = icmp ne %union.rec* %3328, %3329
  br i1 %3330, label %3334, label %3331

; <label>:3331                                    ; preds = %3322
  %3332 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3333 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3332, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  br label %3334

; <label>:3334                                    ; preds = %3331, %3322
  %3335 = load %union.rec*, %union.rec** %z, align 8
  %3336 = bitcast %union.rec* %3335 to %struct.word_type*
  %3337 = getelementptr inbounds %struct.word_type, %struct.word_type* %3336, i32 0, i32 0
  %3338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3337, i32 0, i64 0
  %3339 = getelementptr inbounds %struct.LIST, %struct.LIST* %3338, i32 0, i32 1
  %3340 = load %union.rec*, %union.rec** %3339, align 8
  %3341 = bitcast %union.rec* %3340 to %struct.word_type*
  %3342 = getelementptr inbounds %struct.word_type, %struct.word_type* %3341, i32 0, i32 0
  %3343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3342, i32 0, i64 1
  %3344 = getelementptr inbounds %struct.LIST, %struct.LIST* %3343, i32 0, i32 0
  %3345 = load %union.rec*, %union.rec** %3344, align 8
  store %union.rec* %3345, %union.rec** %t4, align 8
  br label %3346

; <label>:3346                                    ; preds = %3356, %3334
  %3347 = load %union.rec*, %union.rec** %t4, align 8
  %3348 = bitcast %union.rec* %3347 to %struct.word_type*
  %3349 = getelementptr inbounds %struct.word_type, %struct.word_type* %3348, i32 0, i32 1
  %3350 = bitcast %union.FIRST_UNION* %3349 to %struct.anon*
  %3351 = getelementptr inbounds %struct.anon, %struct.anon* %3350, i32 0, i32 0
  %3352 = load i8, i8* %3351, align 1
  %3353 = zext i8 %3352 to i32
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %3355, label %3363

; <label>:3355                                    ; preds = %3346
  br label %3356

; <label>:3356                                    ; preds = %3355
  %3357 = load %union.rec*, %union.rec** %t4, align 8
  %3358 = bitcast %union.rec* %3357 to %struct.word_type*
  %3359 = getelementptr inbounds %struct.word_type, %struct.word_type* %3358, i32 0, i32 0
  %3360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3359, i32 0, i64 1
  %3361 = getelementptr inbounds %struct.LIST, %struct.LIST* %3360, i32 0, i32 0
  %3362 = load %union.rec*, %union.rec** %3361, align 8
  store %union.rec* %3362, %union.rec** %t4, align 8
  br label %3346

; <label>:3363                                    ; preds = %3346
  %3364 = load %union.rec*, %union.rec** %1, align 8
  %3365 = bitcast %union.rec* %3364 to %struct.word_type*
  %3366 = getelementptr inbounds %struct.word_type, %struct.word_type* %3365, i32 0, i32 2
  %3367 = bitcast %union.SECOND_UNION* %3366 to %struct.anon.2*
  %3368 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3367, i32 0, i32 2
  %3369 = load i16, i16* %3368, align 2
  %3370 = lshr i16 %3369, 8
  %3371 = and i16 %3370, 1
  %3372 = zext i16 %3371 to i32
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3374, label %3380

; <label>:3374                                    ; preds = %3363
  %3375 = load %union.rec*, %union.rec** %z, align 8
  %3376 = bitcast %union.rec* %3375 to %struct.word_type*
  %3377 = getelementptr inbounds %struct.word_type, %struct.word_type* %3376, i32 0, i32 1
  %3378 = bitcast %union.FIRST_UNION* %3377 to %struct.FILE_POS*
  %3379 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %3378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %3380

; <label>:3380                                    ; preds = %3374, %3363
  %3381 = load %union.rec*, %union.rec** %z, align 8
  call void @Constrained(%union.rec* %3381, %struct.CONSTRAINT* %zc, i32 0, %union.rec** %why)
  %3382 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 0
  %3383 = load i32, i32* %3382, align 4
  %3384 = icmp ne i32 %3383, 8388607
  br i1 %3384, label %3409, label %3385

; <label>:3385                                    ; preds = %3380
  %3386 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %3387 = load i32, i32* %3386, align 4
  %3388 = icmp ne i32 %3387, 8388607
  br i1 %3388, label %3409, label %3389

; <label>:3389                                    ; preds = %3385
  %3390 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 2
  %3391 = load i32, i32* %3390, align 4
  %3392 = icmp ne i32 %3391, 8388607
  br i1 %3392, label %3409, label %3393

; <label>:3393                                    ; preds = %3389
  %3394 = load %union.rec*, %union.rec** %z, align 8
  %3395 = bitcast %union.rec* %3394 to %struct.word_type*
  %3396 = getelementptr inbounds %struct.word_type, %struct.word_type* %3395, i32 0, i32 1
  %3397 = bitcast %union.FIRST_UNION* %3396 to %struct.FILE_POS*
  %3398 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %3397)
  %3399 = load %union.rec*, %union.rec** %z, align 8
  %3400 = bitcast %union.rec* %3399 to %struct.closure_type*
  %3401 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3400, i32 0, i32 4
  %3402 = bitcast %union.FOURTH_UNION* %3401 to %struct.CONSTRAINT*
  %3403 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3402, i32 0, i32 2
  store i32 128, i32* %3403, align 4
  %3404 = load %union.rec*, %union.rec** %z, align 8
  %3405 = bitcast %union.rec* %3404 to %struct.closure_type*
  %3406 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3405, i32 0, i32 4
  %3407 = bitcast %union.FOURTH_UNION* %3406 to %struct.CONSTRAINT*
  %3408 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3407, i32 0, i32 0
  store i32 128, i32* %3408, align 4
  br label %3740

; <label>:3409                                    ; preds = %3389, %3385, %3380
  %3410 = load %union.rec*, %union.rec** %t4, align 8
  %3411 = bitcast %union.rec* %3410 to %struct.word_type*
  %3412 = getelementptr inbounds %struct.word_type, %struct.word_type* %3411, i32 0, i32 3
  %3413 = bitcast %union.THIRD_UNION* %3412 to %struct.anon.6*
  %3414 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3413, i32 0, i32 0
  %3415 = getelementptr inbounds [2 x i32], [2 x i32]* %3414, i32 0, i64 0
  %3416 = load i32, i32* %3415, align 4
  %3417 = load %union.rec*, %union.rec** %t4, align 8
  %3418 = bitcast %union.rec* %3417 to %struct.word_type*
  %3419 = getelementptr inbounds %struct.word_type, %struct.word_type* %3418, i32 0, i32 3
  %3420 = bitcast %union.THIRD_UNION* %3419 to %struct.anon.6*
  %3421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds [2 x i32], [2 x i32]* %3421, i32 0, i64 0
  %3423 = load i32, i32* %3422, align 4
  %3424 = add nsw i32 %3416, %3423
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3426, label %3442

; <label>:3426                                    ; preds = %3409
  %3427 = load %union.rec*, %union.rec** %z, align 8
  %3428 = bitcast %union.rec* %3427 to %struct.word_type*
  %3429 = getelementptr inbounds %struct.word_type, %struct.word_type* %3428, i32 0, i32 1
  %3430 = bitcast %union.FIRST_UNION* %3429 to %struct.FILE_POS*
  %3431 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %3430)
  %3432 = load %union.rec*, %union.rec** %z, align 8
  %3433 = bitcast %union.rec* %3432 to %struct.closure_type*
  %3434 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3433, i32 0, i32 4
  %3435 = bitcast %union.FOURTH_UNION* %3434 to %struct.CONSTRAINT*
  %3436 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3435, i32 0, i32 2
  store i32 128, i32* %3436, align 4
  %3437 = load %union.rec*, %union.rec** %z, align 8
  %3438 = bitcast %union.rec* %3437 to %struct.closure_type*
  %3439 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3438, i32 0, i32 4
  %3440 = bitcast %union.FOURTH_UNION* %3439 to %struct.CONSTRAINT*
  %3441 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3440, i32 0, i32 0
  store i32 128, i32* %3441, align 4
  br label %3739

; <label>:3442                                    ; preds = %3409
  %3443 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %3444 = load i32, i32* %3443, align 4
  %3445 = sitofp i32 %3444 to float
  %3446 = load %union.rec*, %union.rec** %t4, align 8
  %3447 = bitcast %union.rec* %3446 to %struct.word_type*
  %3448 = getelementptr inbounds %struct.word_type, %struct.word_type* %3447, i32 0, i32 3
  %3449 = bitcast %union.THIRD_UNION* %3448 to %struct.anon.6*
  %3450 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3449, i32 0, i32 0
  %3451 = getelementptr inbounds [2 x i32], [2 x i32]* %3450, i32 0, i64 0
  %3452 = load i32, i32* %3451, align 4
  %3453 = load %union.rec*, %union.rec** %t4, align 8
  %3454 = bitcast %union.rec* %3453 to %struct.word_type*
  %3455 = getelementptr inbounds %struct.word_type, %struct.word_type* %3454, i32 0, i32 3
  %3456 = bitcast %union.THIRD_UNION* %3455 to %struct.anon.6*
  %3457 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3456, i32 0, i32 1
  %3458 = getelementptr inbounds [2 x i32], [2 x i32]* %3457, i32 0, i64 0
  %3459 = load i32, i32* %3458, align 4
  %3460 = add nsw i32 %3452, %3459
  %3461 = sitofp i32 %3460 to float
  %3462 = fdiv float %3445, %3461
  %3463 = fpext float %3462 to double
  %3464 = fcmp ogt double %3463, 1.000000e+02
  br i1 %3464, label %3465, label %3481

; <label>:3465                                    ; preds = %3442
  %3466 = load %union.rec*, %union.rec** %z, align 8
  %3467 = bitcast %union.rec* %3466 to %struct.word_type*
  %3468 = getelementptr inbounds %struct.word_type, %struct.word_type* %3467, i32 0, i32 1
  %3469 = bitcast %union.FIRST_UNION* %3468 to %struct.FILE_POS*
  %3470 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %3469)
  %3471 = load %union.rec*, %union.rec** %z, align 8
  %3472 = bitcast %union.rec* %3471 to %struct.closure_type*
  %3473 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3472, i32 0, i32 4
  %3474 = bitcast %union.FOURTH_UNION* %3473 to %struct.CONSTRAINT*
  %3475 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3474, i32 0, i32 2
  store i32 128, i32* %3475, align 4
  %3476 = load %union.rec*, %union.rec** %z, align 8
  %3477 = bitcast %union.rec* %3476 to %struct.closure_type*
  %3478 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3477, i32 0, i32 4
  %3479 = bitcast %union.FOURTH_UNION* %3478 to %struct.CONSTRAINT*
  %3480 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3479, i32 0, i32 0
  store i32 128, i32* %3480, align 4
  br label %3738

; <label>:3481                                    ; preds = %3442
  %3482 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %3483 = load i32, i32* %3482, align 4
  %3484 = sitofp i32 %3483 to float
  %3485 = load %union.rec*, %union.rec** %t4, align 8
  %3486 = bitcast %union.rec* %3485 to %struct.word_type*
  %3487 = getelementptr inbounds %struct.word_type, %struct.word_type* %3486, i32 0, i32 3
  %3488 = bitcast %union.THIRD_UNION* %3487 to %struct.anon.6*
  %3489 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3488, i32 0, i32 0
  %3490 = getelementptr inbounds [2 x i32], [2 x i32]* %3489, i32 0, i64 0
  %3491 = load i32, i32* %3490, align 4
  %3492 = load %union.rec*, %union.rec** %t4, align 8
  %3493 = bitcast %union.rec* %3492 to %struct.word_type*
  %3494 = getelementptr inbounds %struct.word_type, %struct.word_type* %3493, i32 0, i32 3
  %3495 = bitcast %union.THIRD_UNION* %3494 to %struct.anon.6*
  %3496 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds [2 x i32], [2 x i32]* %3496, i32 0, i64 0
  %3498 = load i32, i32* %3497, align 4
  %3499 = add nsw i32 %3491, %3498
  %3500 = sitofp i32 %3499 to float
  %3501 = fdiv float %3484, %3500
  %3502 = fpext float %3501 to double
  %3503 = fcmp olt double %3502, 1.000000e-02
  br i1 %3503, label %3504, label %3707

; <label>:3504                                    ; preds = %3481
  %3505 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %3506 = load i32, i32* %3505, align 4
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3508, label %3514

; <label>:3508                                    ; preds = %3504
  %3509 = load %union.rec*, %union.rec** %z, align 8
  %3510 = bitcast %union.rec* %3509 to %struct.word_type*
  %3511 = getelementptr inbounds %struct.word_type, %struct.word_type* %3510, i32 0, i32 1
  %3512 = bitcast %union.FIRST_UNION* %3511 to %struct.FILE_POS*
  %3513 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %3512)
  br label %3520

; <label>:3514                                    ; preds = %3504
  %3515 = load %union.rec*, %union.rec** %z, align 8
  %3516 = bitcast %union.rec* %3515 to %struct.word_type*
  %3517 = getelementptr inbounds %struct.word_type, %struct.word_type* %3516, i32 0, i32 1
  %3518 = bitcast %union.FIRST_UNION* %3517 to %struct.FILE_POS*
  %3519 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %3518)
  br label %3520

; <label>:3520                                    ; preds = %3514, %3508
  %3521 = load %union.rec*, %union.rec** %z, align 8
  %3522 = bitcast %union.rec* %3521 to %struct.closure_type*
  %3523 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3522, i32 0, i32 4
  %3524 = bitcast %union.FOURTH_UNION* %3523 to %struct.CONSTRAINT*
  %3525 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3524, i32 0, i32 2
  store i32 128, i32* %3525, align 4
  %3526 = load %union.rec*, %union.rec** %z, align 8
  %3527 = bitcast %union.rec* %3526 to %struct.closure_type*
  %3528 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3527, i32 0, i32 4
  %3529 = bitcast %union.FOURTH_UNION* %3528 to %struct.CONSTRAINT*
  %3530 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3529, i32 0, i32 0
  store i32 128, i32* %3530, align 4
  %3531 = load %union.rec*, %union.rec** %t4, align 8
  %3532 = bitcast %union.rec* %3531 to %struct.word_type*
  %3533 = getelementptr inbounds %struct.word_type, %struct.word_type* %3532, i32 0, i32 1
  %3534 = bitcast %union.FIRST_UNION* %3533 to %struct.FILE_POS*
  %3535 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %struct.FILE_POS* %3534)
  store %union.rec* %3535, %union.rec** %tmp, align 8
  %3536 = load %union.rec*, %union.rec** %tmp, align 8
  %3537 = bitcast %union.rec* %3536 to %struct.word_type*
  %3538 = getelementptr inbounds %struct.word_type, %struct.word_type* %3537, i32 0, i32 3
  %3539 = bitcast %union.THIRD_UNION* %3538 to %struct.anon.6*
  %3540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3539, i32 0, i32 1
  %3541 = getelementptr inbounds [2 x i32], [2 x i32]* %3540, i32 0, i64 0
  store i32 0, i32* %3541, align 4
  %3542 = load %union.rec*, %union.rec** %tmp, align 8
  %3543 = bitcast %union.rec* %3542 to %struct.word_type*
  %3544 = getelementptr inbounds %struct.word_type, %struct.word_type* %3543, i32 0, i32 3
  %3545 = bitcast %union.THIRD_UNION* %3544 to %struct.anon.6*
  %3546 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3545, i32 0, i32 0
  %3547 = getelementptr inbounds [2 x i32], [2 x i32]* %3546, i32 0, i64 0
  store i32 0, i32* %3547, align 4
  %3548 = load %union.rec*, %union.rec** %tmp, align 8
  %3549 = bitcast %union.rec* %3548 to %struct.word_type*
  %3550 = getelementptr inbounds %struct.word_type, %struct.word_type* %3549, i32 0, i32 3
  %3551 = bitcast %union.THIRD_UNION* %3550 to %struct.anon.6*
  %3552 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3551, i32 0, i32 1
  %3553 = getelementptr inbounds [2 x i32], [2 x i32]* %3552, i32 0, i64 1
  store i32 0, i32* %3553, align 4
  %3554 = load %union.rec*, %union.rec** %tmp, align 8
  %3555 = bitcast %union.rec* %3554 to %struct.word_type*
  %3556 = getelementptr inbounds %struct.word_type, %struct.word_type* %3555, i32 0, i32 3
  %3557 = bitcast %union.THIRD_UNION* %3556 to %struct.anon.6*
  %3558 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3557, i32 0, i32 0
  %3559 = getelementptr inbounds [2 x i32], [2 x i32]* %3558, i32 0, i64 1
  store i32 0, i32* %3559, align 4
  %3560 = load %union.rec*, %union.rec** %tmp, align 8
  %3561 = bitcast %union.rec* %3560 to %struct.word_type*
  %3562 = getelementptr inbounds %struct.word_type, %struct.word_type* %3561, i32 0, i32 2
  %3563 = bitcast %union.SECOND_UNION* %3562 to %struct.anon.1*
  %3564 = bitcast %struct.anon.1* %3563 to i32*
  %3565 = load i32, i32* %3564, align 4
  %3566 = and i32 %3565, -528482305
  store i32 %3566, i32* %3564, align 4
  %3567 = load %union.rec*, %union.rec** %tmp, align 8
  %3568 = bitcast %union.rec* %3567 to %struct.word_type*
  %3569 = getelementptr inbounds %struct.word_type, %struct.word_type* %3568, i32 0, i32 2
  %3570 = bitcast %union.SECOND_UNION* %3569 to %struct.anon.1*
  %3571 = bitcast %struct.anon.1* %3570 to i32*
  %3572 = load i32, i32* %3571, align 4
  %3573 = and i32 %3572, -4190209
  store i32 %3573, i32* %3571, align 4
  %3574 = load %union.rec*, %union.rec** %tmp, align 8
  %3575 = bitcast %union.rec* %3574 to %struct.word_type*
  %3576 = getelementptr inbounds %struct.word_type, %struct.word_type* %3575, i32 0, i32 2
  %3577 = bitcast %union.SECOND_UNION* %3576 to %struct.anon.1*
  %3578 = bitcast %struct.anon.1* %3577 to i32*
  %3579 = load i32, i32* %3578, align 4
  %3580 = and i32 %3579, -4096
  store i32 %3580, i32* %3578, align 4
  %3581 = load %union.rec*, %union.rec** %tmp, align 8
  %3582 = bitcast %union.rec* %3581 to %struct.word_type*
  %3583 = getelementptr inbounds %struct.word_type, %struct.word_type* %3582, i32 0, i32 2
  %3584 = bitcast %union.SECOND_UNION* %3583 to %struct.anon.1*
  %3585 = bitcast %struct.anon.1* %3584 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = and i32 %3586, -4194305
  store i32 %3587, i32* %3585, align 4
  %3588 = load %union.rec*, %union.rec** %tmp, align 8
  %3589 = bitcast %union.rec* %3588 to %struct.word_type*
  %3590 = getelementptr inbounds %struct.word_type, %struct.word_type* %3589, i32 0, i32 2
  %3591 = bitcast %union.SECOND_UNION* %3590 to %struct.anon.1*
  %3592 = bitcast %struct.anon.1* %3591 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = and i32 %3593, 2147483647
  store i32 %3594, i32* %3592, align 4
  %3595 = load %union.rec*, %union.rec** %t4, align 8
  store %union.rec* %3595, %union.rec** @zz_hold, align 8
  %3596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3597 = bitcast %union.rec* %3596 to %struct.word_type*
  %3598 = getelementptr inbounds %struct.word_type, %struct.word_type* %3597, i32 0, i32 0
  %3599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3598, i32 0, i64 1
  %3600 = getelementptr inbounds %struct.LIST, %struct.LIST* %3599, i32 0, i32 1
  %3601 = load %union.rec*, %union.rec** %3600, align 8
  %3602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3603 = icmp eq %union.rec* %3601, %3602
  br i1 %3603, label %3604, label %3605

; <label>:3604                                    ; preds = %3520
  br label %3646

; <label>:3605                                    ; preds = %3520
  %3606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3607 = bitcast %union.rec* %3606 to %struct.word_type*
  %3608 = getelementptr inbounds %struct.word_type, %struct.word_type* %3607, i32 0, i32 0
  %3609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3608, i32 0, i64 1
  %3610 = getelementptr inbounds %struct.LIST, %struct.LIST* %3609, i32 0, i32 1
  %3611 = load %union.rec*, %union.rec** %3610, align 8
  store %union.rec* %3611, %union.rec** @zz_res, align 8
  %3612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3613 = bitcast %union.rec* %3612 to %struct.word_type*
  %3614 = getelementptr inbounds %struct.word_type, %struct.word_type* %3613, i32 0, i32 0
  %3615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3614, i32 0, i64 1
  %3616 = getelementptr inbounds %struct.LIST, %struct.LIST* %3615, i32 0, i32 0
  %3617 = load %union.rec*, %union.rec** %3616, align 8
  %3618 = load %union.rec*, %union.rec** @zz_res, align 8
  %3619 = bitcast %union.rec* %3618 to %struct.word_type*
  %3620 = getelementptr inbounds %struct.word_type, %struct.word_type* %3619, i32 0, i32 0
  %3621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3620, i32 0, i64 1
  %3622 = getelementptr inbounds %struct.LIST, %struct.LIST* %3621, i32 0, i32 0
  store %union.rec* %3617, %union.rec** %3622, align 8
  %3623 = load %union.rec*, %union.rec** @zz_res, align 8
  %3624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3625 = bitcast %union.rec* %3624 to %struct.word_type*
  %3626 = getelementptr inbounds %struct.word_type, %struct.word_type* %3625, i32 0, i32 0
  %3627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3626, i32 0, i64 1
  %3628 = getelementptr inbounds %struct.LIST, %struct.LIST* %3627, i32 0, i32 0
  %3629 = load %union.rec*, %union.rec** %3628, align 8
  %3630 = bitcast %union.rec* %3629 to %struct.word_type*
  %3631 = getelementptr inbounds %struct.word_type, %struct.word_type* %3630, i32 0, i32 0
  %3632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3631, i32 0, i64 1
  %3633 = getelementptr inbounds %struct.LIST, %struct.LIST* %3632, i32 0, i32 1
  store %union.rec* %3623, %union.rec** %3633, align 8
  %3634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3636 = bitcast %union.rec* %3635 to %struct.word_type*
  %3637 = getelementptr inbounds %struct.word_type, %struct.word_type* %3636, i32 0, i32 0
  %3638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3637, i32 0, i64 1
  %3639 = getelementptr inbounds %struct.LIST, %struct.LIST* %3638, i32 0, i32 1
  store %union.rec* %3634, %union.rec** %3639, align 8
  %3640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3641 = bitcast %union.rec* %3640 to %struct.word_type*
  %3642 = getelementptr inbounds %struct.word_type, %struct.word_type* %3641, i32 0, i32 0
  %3643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3642, i32 0, i64 1
  %3644 = getelementptr inbounds %struct.LIST, %struct.LIST* %3643, i32 0, i32 0
  store %union.rec* %3634, %union.rec** %3644, align 8
  %3645 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3646

; <label>:3646                                    ; preds = %3605, %3604
  %3647 = phi %union.rec* [ null, %3604 ], [ %3645, %3605 ]
  store %union.rec* %3647, %union.rec** @xx_tmp, align 8
  %3648 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3648, %union.rec** @zz_res, align 8
  %3649 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %3649, %union.rec** @zz_hold, align 8
  %3650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3651 = icmp eq %union.rec* %3650, null
  br i1 %3651, label %3652, label %3654

; <label>:3652                                    ; preds = %3646
  %3653 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3702

; <label>:3654                                    ; preds = %3646
  %3655 = load %union.rec*, %union.rec** @zz_res, align 8
  %3656 = icmp eq %union.rec* %3655, null
  br i1 %3656, label %3657, label %3659

; <label>:3657                                    ; preds = %3654
  %3658 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3700

; <label>:3659                                    ; preds = %3654
  %3660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3661 = bitcast %union.rec* %3660 to %struct.word_type*
  %3662 = getelementptr inbounds %struct.word_type, %struct.word_type* %3661, i32 0, i32 0
  %3663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3662, i32 0, i64 1
  %3664 = getelementptr inbounds %struct.LIST, %struct.LIST* %3663, i32 0, i32 0
  %3665 = load %union.rec*, %union.rec** %3664, align 8
  store %union.rec* %3665, %union.rec** @zz_tmp, align 8
  %3666 = load %union.rec*, %union.rec** @zz_res, align 8
  %3667 = bitcast %union.rec* %3666 to %struct.word_type*
  %3668 = getelementptr inbounds %struct.word_type, %struct.word_type* %3667, i32 0, i32 0
  %3669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3668, i32 0, i64 1
  %3670 = getelementptr inbounds %struct.LIST, %struct.LIST* %3669, i32 0, i32 0
  %3671 = load %union.rec*, %union.rec** %3670, align 8
  %3672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3673 = bitcast %union.rec* %3672 to %struct.word_type*
  %3674 = getelementptr inbounds %struct.word_type, %struct.word_type* %3673, i32 0, i32 0
  %3675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3674, i32 0, i64 1
  %3676 = getelementptr inbounds %struct.LIST, %struct.LIST* %3675, i32 0, i32 0
  store %union.rec* %3671, %union.rec** %3676, align 8
  %3677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3678 = load %union.rec*, %union.rec** @zz_res, align 8
  %3679 = bitcast %union.rec* %3678 to %struct.word_type*
  %3680 = getelementptr inbounds %struct.word_type, %struct.word_type* %3679, i32 0, i32 0
  %3681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3680, i32 0, i64 1
  %3682 = getelementptr inbounds %struct.LIST, %struct.LIST* %3681, i32 0, i32 0
  %3683 = load %union.rec*, %union.rec** %3682, align 8
  %3684 = bitcast %union.rec* %3683 to %struct.word_type*
  %3685 = getelementptr inbounds %struct.word_type, %struct.word_type* %3684, i32 0, i32 0
  %3686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3685, i32 0, i64 1
  %3687 = getelementptr inbounds %struct.LIST, %struct.LIST* %3686, i32 0, i32 1
  store %union.rec* %3677, %union.rec** %3687, align 8
  %3688 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3689 = load %union.rec*, %union.rec** @zz_res, align 8
  %3690 = bitcast %union.rec* %3689 to %struct.word_type*
  %3691 = getelementptr inbounds %struct.word_type, %struct.word_type* %3690, i32 0, i32 0
  %3692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3691, i32 0, i64 1
  %3693 = getelementptr inbounds %struct.LIST, %struct.LIST* %3692, i32 0, i32 0
  store %union.rec* %3688, %union.rec** %3693, align 8
  %3694 = load %union.rec*, %union.rec** @zz_res, align 8
  %3695 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3696 = bitcast %union.rec* %3695 to %struct.word_type*
  %3697 = getelementptr inbounds %struct.word_type, %struct.word_type* %3696, i32 0, i32 0
  %3698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3697, i32 0, i64 1
  %3699 = getelementptr inbounds %struct.LIST, %struct.LIST* %3698, i32 0, i32 1
  store %union.rec* %3694, %union.rec** %3699, align 8
  br label %3700

; <label>:3700                                    ; preds = %3659, %3657
  %3701 = phi %union.rec* [ %3658, %3657 ], [ %3694, %3659 ]
  br label %3702

; <label>:3702                                    ; preds = %3700, %3652
  %3703 = phi %union.rec* [ %3653, %3652 ], [ %3701, %3700 ]
  %3704 = load %union.rec*, %union.rec** %t4, align 8
  %3705 = call i32 @DisposeObject(%union.rec* %3704)
  %3706 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3706, %union.rec** %t4, align 8
  br label %3737

; <label>:3707                                    ; preds = %3481
  %3708 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %3709 = load i32, i32* %3708, align 4
  %3710 = mul nsw i32 %3709, 128
  %3711 = load %union.rec*, %union.rec** %t4, align 8
  %3712 = bitcast %union.rec* %3711 to %struct.word_type*
  %3713 = getelementptr inbounds %struct.word_type, %struct.word_type* %3712, i32 0, i32 3
  %3714 = bitcast %union.THIRD_UNION* %3713 to %struct.anon.6*
  %3715 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3714, i32 0, i32 0
  %3716 = getelementptr inbounds [2 x i32], [2 x i32]* %3715, i32 0, i64 0
  %3717 = load i32, i32* %3716, align 4
  %3718 = load %union.rec*, %union.rec** %t4, align 8
  %3719 = bitcast %union.rec* %3718 to %struct.word_type*
  %3720 = getelementptr inbounds %struct.word_type, %struct.word_type* %3719, i32 0, i32 3
  %3721 = bitcast %union.THIRD_UNION* %3720 to %struct.anon.6*
  %3722 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3721, i32 0, i32 1
  %3723 = getelementptr inbounds [2 x i32], [2 x i32]* %3722, i32 0, i64 0
  %3724 = load i32, i32* %3723, align 4
  %3725 = add nsw i32 %3717, %3724
  %3726 = sdiv i32 %3710, %3725
  %3727 = load %union.rec*, %union.rec** %z, align 8
  %3728 = bitcast %union.rec* %3727 to %struct.closure_type*
  %3729 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3728, i32 0, i32 4
  %3730 = bitcast %union.FOURTH_UNION* %3729 to %struct.CONSTRAINT*
  %3731 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3730, i32 0, i32 2
  store i32 %3726, i32* %3731, align 4
  %3732 = load %union.rec*, %union.rec** %z, align 8
  %3733 = bitcast %union.rec* %3732 to %struct.closure_type*
  %3734 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3733, i32 0, i32 4
  %3735 = bitcast %union.FOURTH_UNION* %3734 to %struct.CONSTRAINT*
  %3736 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3735, i32 0, i32 0
  store i32 %3726, i32* %3736, align 4
  br label %3737

; <label>:3737                                    ; preds = %3707, %3702
  br label %3738

; <label>:3738                                    ; preds = %3737, %3465
  br label %3739

; <label>:3739                                    ; preds = %3738, %3426
  br label %3740

; <label>:3740                                    ; preds = %3739, %3393
  %3741 = load %union.rec*, %union.rec** %t4, align 8
  %3742 = bitcast %union.rec* %3741 to %struct.word_type*
  %3743 = getelementptr inbounds %struct.word_type, %struct.word_type* %3742, i32 0, i32 3
  %3744 = bitcast %union.THIRD_UNION* %3743 to %struct.anon.6*
  %3745 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3744, i32 0, i32 0
  %3746 = getelementptr inbounds [2 x i32], [2 x i32]* %3745, i32 0, i64 0
  %3747 = load i32, i32* %3746, align 4
  %3748 = load %union.rec*, %union.rec** %z, align 8
  %3749 = bitcast %union.rec* %3748 to %struct.closure_type*
  %3750 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3749, i32 0, i32 4
  %3751 = bitcast %union.FOURTH_UNION* %3750 to %struct.CONSTRAINT*
  %3752 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3751, i32 0, i32 2
  %3753 = load i32, i32* %3752, align 4
  %3754 = mul nsw i32 %3747, %3753
  %3755 = sdiv i32 %3754, 128
  store i32 %3755, i32* %b, align 4
  %3756 = load %union.rec*, %union.rec** %t4, align 8
  %3757 = bitcast %union.rec* %3756 to %struct.word_type*
  %3758 = getelementptr inbounds %struct.word_type, %struct.word_type* %3757, i32 0, i32 3
  %3759 = bitcast %union.THIRD_UNION* %3758 to %struct.anon.6*
  %3760 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3759, i32 0, i32 1
  %3761 = getelementptr inbounds [2 x i32], [2 x i32]* %3760, i32 0, i64 0
  %3762 = load i32, i32* %3761, align 4
  %3763 = load %union.rec*, %union.rec** %z, align 8
  %3764 = bitcast %union.rec* %3763 to %struct.closure_type*
  %3765 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3764, i32 0, i32 4
  %3766 = bitcast %union.FOURTH_UNION* %3765 to %struct.CONSTRAINT*
  %3767 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3766, i32 0, i32 2
  %3768 = load i32, i32* %3767, align 4
  %3769 = mul nsw i32 %3762, %3768
  %3770 = sdiv i32 %3769, 128
  store i32 %3770, i32* %f, align 4
  %3771 = load %union.rec*, %union.rec** %z, align 8
  %3772 = load i32, i32* %b, align 4
  %3773 = load i32, i32* %f, align 4
  call void @AdjustSize(%union.rec* %3771, i32 %3772, i32 %3773, i32 0)
  %3774 = load %union.rec*, %union.rec** %z, align 8
  %3775 = bitcast %union.rec* %3774 to %struct.word_type*
  %3776 = getelementptr inbounds %struct.word_type, %struct.word_type* %3775, i32 0, i32 2
  %3777 = bitcast %union.SECOND_UNION* %3776 to %struct.anon.2*
  %3778 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3777, i32 0, i32 2
  %3779 = load i16, i16* %3778, align 2
  %3780 = and i16 %3779, 1
  %3781 = zext i16 %3780 to i32
  %3782 = icmp ne i32 %3781, 0
  br i1 %3782, label %3783, label %3817

; <label>:3783                                    ; preds = %3740
  %3784 = load %union.rec*, %union.rec** %t4, align 8
  %3785 = bitcast %union.rec* %3784 to %struct.word_type*
  %3786 = getelementptr inbounds %struct.word_type, %struct.word_type* %3785, i32 0, i32 3
  %3787 = bitcast %union.THIRD_UNION* %3786 to %struct.anon.6*
  %3788 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3787, i32 0, i32 0
  %3789 = getelementptr inbounds [2 x i32], [2 x i32]* %3788, i32 0, i64 1
  %3790 = load i32, i32* %3789, align 4
  %3791 = load %union.rec*, %union.rec** %z, align 8
  %3792 = bitcast %union.rec* %3791 to %struct.closure_type*
  %3793 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3792, i32 0, i32 4
  %3794 = bitcast %union.FOURTH_UNION* %3793 to %struct.CONSTRAINT*
  %3795 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3794, i32 0, i32 2
  %3796 = load i32, i32* %3795, align 4
  %3797 = mul nsw i32 %3790, %3796
  %3798 = sdiv i32 %3797, 128
  store i32 %3798, i32* %b, align 4
  %3799 = load %union.rec*, %union.rec** %t4, align 8
  %3800 = bitcast %union.rec* %3799 to %struct.word_type*
  %3801 = getelementptr inbounds %struct.word_type, %struct.word_type* %3800, i32 0, i32 3
  %3802 = bitcast %union.THIRD_UNION* %3801 to %struct.anon.6*
  %3803 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3802, i32 0, i32 1
  %3804 = getelementptr inbounds [2 x i32], [2 x i32]* %3803, i32 0, i64 1
  %3805 = load i32, i32* %3804, align 4
  %3806 = load %union.rec*, %union.rec** %z, align 8
  %3807 = bitcast %union.rec* %3806 to %struct.closure_type*
  %3808 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3807, i32 0, i32 4
  %3809 = bitcast %union.FOURTH_UNION* %3808 to %struct.CONSTRAINT*
  %3810 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3809, i32 0, i32 2
  %3811 = load i32, i32* %3810, align 4
  %3812 = mul nsw i32 %3805, %3811
  %3813 = sdiv i32 %3812, 128
  store i32 %3813, i32* %f, align 4
  %3814 = load %union.rec*, %union.rec** %z, align 8
  %3815 = load i32, i32* %b, align 4
  %3816 = load i32, i32* %f, align 4
  call void @AdjustSize(%union.rec* %3814, i32 %3815, i32 %3816, i32 1)
  br label %3817

; <label>:3817                                    ; preds = %3783, %3740
  br label %3818

; <label>:3818                                    ; preds = %3817, %3286
  br label %3819

; <label>:3819                                    ; preds = %3818
  %3820 = load %union.rec*, %union.rec** %link, align 8
  %3821 = bitcast %union.rec* %3820 to %struct.word_type*
  %3822 = getelementptr inbounds %struct.word_type, %struct.word_type* %3821, i32 0, i32 0
  %3823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3822, i32 0, i64 0
  %3824 = getelementptr inbounds %struct.LIST, %struct.LIST* %3823, i32 0, i32 1
  %3825 = load %union.rec*, %union.rec** %3824, align 8
  store %union.rec* %3825, %union.rec** %link, align 8
  br label %3258

; <label>:3826                                    ; preds = %3258
  %3827 = load %union.rec*, %union.rec** %extras, align 8
  %3828 = call i32 @DisposeObject(%union.rec* %3827)
  %3829 = load %union.rec**, %union.rec*** %10, align 8
  store %union.rec* null, %union.rec** %3829, align 8
  %3830 = load %union.rec**, %union.rec*** %12, align 8
  store %union.rec* null, %union.rec** %3830, align 8
  %3831 = load %union.rec**, %union.rec*** %11, align 8
  store %union.rec* null, %union.rec** %3831, align 8
  store i32 0, i32* %after_target, align 4
  %3832 = load %union.rec*, %union.rec** %1, align 8
  %3833 = bitcast %union.rec* %3832 to %struct.word_type*
  %3834 = getelementptr inbounds %struct.word_type, %struct.word_type* %3833, i32 0, i32 0
  %3835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3834, i32 0, i64 0
  %3836 = getelementptr inbounds %struct.LIST, %struct.LIST* %3835, i32 0, i32 1
  %3837 = load %union.rec*, %union.rec** %3836, align 8
  store %union.rec* %3837, %union.rec** %link, align 8
  br label %3838

; <label>:3838                                    ; preds = %5291, %3826
  %3839 = load %union.rec*, %union.rec** %link, align 8
  %3840 = load %union.rec*, %union.rec** %1, align 8
  %3841 = icmp ne %union.rec* %3839, %3840
  br i1 %3841, label %3842, label %5298

; <label>:3842                                    ; preds = %3838
  %3843 = load %union.rec*, %union.rec** %link, align 8
  %3844 = bitcast %union.rec* %3843 to %struct.word_type*
  %3845 = getelementptr inbounds %struct.word_type, %struct.word_type* %3844, i32 0, i32 0
  %3846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3845, i32 0, i64 1
  %3847 = getelementptr inbounds %struct.LIST, %struct.LIST* %3846, i32 0, i32 0
  %3848 = load %union.rec*, %union.rec** %3847, align 8
  store %union.rec* %3848, %union.rec** %y, align 8
  br label %3849

; <label>:3849                                    ; preds = %3859, %3842
  %3850 = load %union.rec*, %union.rec** %y, align 8
  %3851 = bitcast %union.rec* %3850 to %struct.word_type*
  %3852 = getelementptr inbounds %struct.word_type, %struct.word_type* %3851, i32 0, i32 1
  %3853 = bitcast %union.FIRST_UNION* %3852 to %struct.anon*
  %3854 = getelementptr inbounds %struct.anon, %struct.anon* %3853, i32 0, i32 0
  %3855 = load i8, i8* %3854, align 1
  %3856 = zext i8 %3855 to i32
  %3857 = icmp eq i32 %3856, 0
  br i1 %3857, label %3858, label %3866

; <label>:3858                                    ; preds = %3849
  br label %3859

; <label>:3859                                    ; preds = %3858
  %3860 = load %union.rec*, %union.rec** %y, align 8
  %3861 = bitcast %union.rec* %3860 to %struct.word_type*
  %3862 = getelementptr inbounds %struct.word_type, %struct.word_type* %3861, i32 0, i32 0
  %3863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3862, i32 0, i64 1
  %3864 = getelementptr inbounds %struct.LIST, %struct.LIST* %3863, i32 0, i32 0
  %3865 = load %union.rec*, %union.rec** %3864, align 8
  store %union.rec* %3865, %union.rec** %y, align 8
  br label %3849

; <label>:3866                                    ; preds = %3849
  %3867 = load %union.rec*, %union.rec** %y, align 8
  %3868 = bitcast %union.rec* %3867 to %struct.word_type*
  %3869 = getelementptr inbounds %struct.word_type, %struct.word_type* %3868, i32 0, i32 1
  %3870 = bitcast %union.FIRST_UNION* %3869 to %struct.anon*
  %3871 = getelementptr inbounds %struct.anon, %struct.anon* %3870, i32 0, i32 0
  %3872 = load i8, i8* %3871, align 1
  %3873 = zext i8 %3872 to i32
  %3874 = icmp eq i32 %3873, 1
  br i1 %3874, label %3893, label %3875

; <label>:3875                                    ; preds = %3866
  %3876 = load %union.rec*, %union.rec** %y, align 8
  %3877 = bitcast %union.rec* %3876 to %struct.word_type*
  %3878 = getelementptr inbounds %struct.word_type, %struct.word_type* %3877, i32 0, i32 1
  %3879 = bitcast %union.FIRST_UNION* %3878 to %struct.anon*
  %3880 = getelementptr inbounds %struct.anon, %struct.anon* %3879, i32 0, i32 0
  %3881 = load i8, i8* %3880, align 1
  %3882 = zext i8 %3881 to i32
  %3883 = icmp sge i32 %3882, 119
  br i1 %3883, label %3884, label %3894

; <label>:3884                                    ; preds = %3875
  %3885 = load %union.rec*, %union.rec** %y, align 8
  %3886 = bitcast %union.rec* %3885 to %struct.word_type*
  %3887 = getelementptr inbounds %struct.word_type, %struct.word_type* %3886, i32 0, i32 1
  %3888 = bitcast %union.FIRST_UNION* %3887 to %struct.anon*
  %3889 = getelementptr inbounds %struct.anon, %struct.anon* %3888, i32 0, i32 0
  %3890 = load i8, i8* %3889, align 1
  %3891 = zext i8 %3890 to i32
  %3892 = icmp sle i32 %3891, 138
  br i1 %3892, label %3893, label %3894

; <label>:3893                                    ; preds = %3884, %3866
  br label %5291

; <label>:3894                                    ; preds = %3884, %3875
  %3895 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %3896 = zext i8 %3895 to i32
  store i32 %3896, i32* @zz_size, align 4
  %3897 = sext i32 %3896 to i64
  %3898 = icmp uge i64 %3897, 265
  br i1 %3898, label %3899, label %3902

; <label>:3899                                    ; preds = %3894
  %3900 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3901 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %3900)
  br label %3927

; <label>:3902                                    ; preds = %3894
  %3903 = load i32, i32* @zz_size, align 4
  %3904 = sext i32 %3903 to i64
  %3905 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3904
  %3906 = load %union.rec*, %union.rec** %3905, align 8
  %3907 = icmp eq %union.rec* %3906, null
  br i1 %3907, label %3908, label %3912

; <label>:3908                                    ; preds = %3902
  %3909 = load i32, i32* @zz_size, align 4
  %3910 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3911 = call %union.rec* @GetMemory(i32 %3909, %struct.FILE_POS* %3910)
  store %union.rec* %3911, %union.rec** @zz_hold, align 8
  br label %3926

; <label>:3912                                    ; preds = %3902
  %3913 = load i32, i32* @zz_size, align 4
  %3914 = sext i32 %3913 to i64
  %3915 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3914
  %3916 = load %union.rec*, %union.rec** %3915, align 8
  store %union.rec* %3916, %union.rec** @zz_hold, align 8
  store %union.rec* %3916, %union.rec** @zz_hold, align 8
  %3917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3918 = bitcast %union.rec* %3917 to %struct.word_type*
  %3919 = getelementptr inbounds %struct.word_type, %struct.word_type* %3918, i32 0, i32 0
  %3920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3919, i32 0, i64 0
  %3921 = getelementptr inbounds %struct.LIST, %struct.LIST* %3920, i32 0, i32 0
  %3922 = load %union.rec*, %union.rec** %3921, align 8
  %3923 = load i32, i32* @zz_size, align 4
  %3924 = sext i32 %3923 to i64
  %3925 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3924
  store %union.rec* %3922, %union.rec** %3925, align 8
  br label %3926

; <label>:3926                                    ; preds = %3912, %3908
  br label %3927

; <label>:3927                                    ; preds = %3926, %3899
  %3928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3929 = bitcast %union.rec* %3928 to %struct.word_type*
  %3930 = getelementptr inbounds %struct.word_type, %struct.word_type* %3929, i32 0, i32 1
  %3931 = bitcast %union.FIRST_UNION* %3930 to %struct.anon*
  %3932 = getelementptr inbounds %struct.anon, %struct.anon* %3931, i32 0, i32 0
  store i8 17, i8* %3932, align 1
  %3933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3935 = bitcast %union.rec* %3934 to %struct.word_type*
  %3936 = getelementptr inbounds %struct.word_type, %struct.word_type* %3935, i32 0, i32 0
  %3937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3936, i32 0, i64 1
  %3938 = getelementptr inbounds %struct.LIST, %struct.LIST* %3937, i32 0, i32 1
  store %union.rec* %3933, %union.rec** %3938, align 8
  %3939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3940 = bitcast %union.rec* %3939 to %struct.word_type*
  %3941 = getelementptr inbounds %struct.word_type, %struct.word_type* %3940, i32 0, i32 0
  %3942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3941, i32 0, i64 1
  %3943 = getelementptr inbounds %struct.LIST, %struct.LIST* %3942, i32 0, i32 0
  store %union.rec* %3933, %union.rec** %3943, align 8
  %3944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3945 = bitcast %union.rec* %3944 to %struct.word_type*
  %3946 = getelementptr inbounds %struct.word_type, %struct.word_type* %3945, i32 0, i32 0
  %3947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3946, i32 0, i64 0
  %3948 = getelementptr inbounds %struct.LIST, %struct.LIST* %3947, i32 0, i32 1
  store %union.rec* %3933, %union.rec** %3948, align 8
  %3949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3950 = bitcast %union.rec* %3949 to %struct.word_type*
  %3951 = getelementptr inbounds %struct.word_type, %struct.word_type* %3950, i32 0, i32 0
  %3952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3951, i32 0, i64 0
  %3953 = getelementptr inbounds %struct.LIST, %struct.LIST* %3952, i32 0, i32 0
  store %union.rec* %3933, %union.rec** %3953, align 8
  store %union.rec* %3933, %union.rec** %extras, align 8
  %3954 = load %union.rec*, %union.rec** %y, align 8
  %3955 = call %union.rec* @MinSize(%union.rec* %3954, i32 1, %union.rec** %extras)
  store %union.rec* %3955, %union.rec** %y, align 8
  %3956 = load %union.rec*, %union.rec** %extras, align 8
  %3957 = bitcast %union.rec* %3956 to %struct.word_type*
  %3958 = getelementptr inbounds %struct.word_type, %struct.word_type* %3957, i32 0, i32 0
  %3959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3958, i32 0, i64 0
  %3960 = getelementptr inbounds %struct.LIST, %struct.LIST* %3959, i32 0, i32 1
  %3961 = load %union.rec*, %union.rec** %3960, align 8
  store %union.rec* %3961, %union.rec** %zlink, align 8
  br label %3962

; <label>:3962                                    ; preds = %5072, %3927
  %3963 = load %union.rec*, %union.rec** %zlink, align 8
  %3964 = load %union.rec*, %union.rec** %extras, align 8
  %3965 = icmp ne %union.rec* %3963, %3964
  br i1 %3965, label %3966, label %5079

; <label>:3966                                    ; preds = %3962
  %3967 = load %union.rec*, %union.rec** %zlink, align 8
  %3968 = bitcast %union.rec* %3967 to %struct.word_type*
  %3969 = getelementptr inbounds %struct.word_type, %struct.word_type* %3968, i32 0, i32 0
  %3970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3969, i32 0, i64 1
  %3971 = getelementptr inbounds %struct.LIST, %struct.LIST* %3970, i32 0, i32 0
  %3972 = load %union.rec*, %union.rec** %3971, align 8
  store %union.rec* %3972, %union.rec** %z, align 8
  br label %3973

; <label>:3973                                    ; preds = %3983, %3966
  %3974 = load %union.rec*, %union.rec** %z, align 8
  %3975 = bitcast %union.rec* %3974 to %struct.word_type*
  %3976 = getelementptr inbounds %struct.word_type, %struct.word_type* %3975, i32 0, i32 1
  %3977 = bitcast %union.FIRST_UNION* %3976 to %struct.anon*
  %3978 = getelementptr inbounds %struct.anon, %struct.anon* %3977, i32 0, i32 0
  %3979 = load i8, i8* %3978, align 1
  %3980 = zext i8 %3979 to i32
  %3981 = icmp eq i32 %3980, 0
  br i1 %3981, label %3982, label %3990

; <label>:3982                                    ; preds = %3973
  br label %3983

; <label>:3983                                    ; preds = %3982
  %3984 = load %union.rec*, %union.rec** %z, align 8
  %3985 = bitcast %union.rec* %3984 to %struct.word_type*
  %3986 = getelementptr inbounds %struct.word_type, %struct.word_type* %3985, i32 0, i32 0
  %3987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3986, i32 0, i64 1
  %3988 = getelementptr inbounds %struct.LIST, %struct.LIST* %3987, i32 0, i32 0
  %3989 = load %union.rec*, %union.rec** %3988, align 8
  store %union.rec* %3989, %union.rec** %z, align 8
  br label %3973

; <label>:3990                                    ; preds = %3973
  %3991 = load %union.rec*, %union.rec** %z, align 8
  %3992 = bitcast %union.rec* %3991 to %struct.word_type*
  %3993 = getelementptr inbounds %struct.word_type, %struct.word_type* %3992, i32 0, i32 2
  %3994 = bitcast %union.SECOND_UNION* %3993 to %struct.anon.2*
  %3995 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3994, i32 0, i32 2
  %3996 = load i16, i16* %3995, align 2
  %3997 = and i16 %3996, -33
  store i16 %3997, i16* %3995, align 2
  %3998 = load %union.rec*, %union.rec** %z, align 8
  %3999 = bitcast %union.rec* %3998 to %struct.word_type*
  %4000 = getelementptr inbounds %struct.word_type, %struct.word_type* %3999, i32 0, i32 1
  %4001 = bitcast %union.FIRST_UNION* %4000 to %struct.anon*
  %4002 = getelementptr inbounds %struct.anon, %struct.anon* %4001, i32 0, i32 0
  %4003 = load i8, i8* %4002, align 1
  %4004 = zext i8 %4003 to i32
  switch i32 %4004, label %5060 [
    i32 121, label %4005
    i32 123, label %4107
    i32 120, label %4345
    i32 136, label %4587
    i32 138, label %4587
    i32 133, label %4587
    i32 129, label %4587
    i32 130, label %4587
    i32 132, label %4587
    i32 134, label %4587
    i32 127, label %4587
    i32 128, label %4587
    i32 131, label %4587
    i32 135, label %4587
    i32 137, label %4588
  ]

; <label>:4005                                    ; preds = %3990
  %4006 = load %union.rec*, %union.rec** %z, align 8
  %4007 = bitcast %union.rec* %4006 to %struct.closure_type*
  %4008 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4007, i32 0, i32 5
  %4009 = load %union.rec*, %union.rec** %4008, align 8
  %4010 = bitcast %union.rec* %4009 to %struct.closure_type*
  %4011 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4010, i32 0, i32 5
  %4012 = load %union.rec*, %union.rec** %4011, align 8
  %4013 = bitcast %union.rec* %4012 to %struct.word_type*
  %4014 = getelementptr inbounds %struct.word_type, %struct.word_type* %4013, i32 0, i32 2
  %4015 = bitcast %union.SECOND_UNION* %4014 to %struct.anon.5*
  %4016 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %4015, i32 0, i32 1
  %4017 = bitcast [3 x i8]* %4016 to i24*
  %4018 = load i24, i24* %4017, align 1
  %4019 = lshr i24 %4018, 11
  %4020 = and i24 %4019, 1
  %4021 = zext i24 %4020 to i32
  %4022 = icmp ne i32 %4021, 0
  br i1 %4022, label %4023, label %4026

; <label>:4023                                    ; preds = %4005
  %4024 = load i32, i32* %6, align 4
  %4025 = icmp ne i32 %4024, 0
  br label %4026

; <label>:4026                                    ; preds = %4023, %4005
  %4027 = phi i1 [ false, %4005 ], [ %4025, %4023 ]
  %4028 = zext i1 %4027 to i32
  %4029 = load %union.rec*, %union.rec** %z, align 8
  %4030 = bitcast %union.rec* %4029 to %struct.word_type*
  %4031 = getelementptr inbounds %struct.word_type, %struct.word_type* %4030, i32 0, i32 2
  %4032 = bitcast %union.SECOND_UNION* %4031 to %struct.anon.2*
  %4033 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4032, i32 0, i32 2
  %4034 = trunc i32 %4028 to i16
  %4035 = load i16, i16* %4033, align 2
  %4036 = and i16 %4034, 1
  %4037 = shl i16 %4036, 6
  %4038 = and i16 %4035, -65
  %4039 = or i16 %4038, %4037
  store i16 %4039, i16* %4033, align 2
  %4040 = zext i16 %4036 to i32
  %4041 = load i32, i32* %5, align 4
  %4042 = load %union.rec*, %union.rec** %z, align 8
  %4043 = bitcast %union.rec* %4042 to %struct.word_type*
  %4044 = getelementptr inbounds %struct.word_type, %struct.word_type* %4043, i32 0, i32 2
  %4045 = bitcast %union.SECOND_UNION* %4044 to %struct.anon.2*
  %4046 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4045, i32 0, i32 2
  %4047 = trunc i32 %4041 to i16
  %4048 = load i16, i16* %4046, align 2
  %4049 = and i16 %4047, 1
  %4050 = and i16 %4048, -2
  %4051 = or i16 %4050, %4049
  store i16 %4051, i16* %4046, align 2
  %4052 = zext i16 %4049 to i32
  %4053 = load %union.rec*, %union.rec** %z, align 8
  %4054 = bitcast %union.rec* %4053 to %struct.closure_type*
  %4055 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4054, i32 0, i32 5
  %4056 = load %union.rec*, %union.rec** %4055, align 8
  %4057 = bitcast %union.rec* %4056 to %struct.closure_type*
  %4058 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4057, i32 0, i32 5
  %4059 = load %union.rec*, %union.rec** %4058, align 8
  %4060 = load %union.rec*, %union.rec** @GalleySym, align 8
  %4061 = icmp eq %union.rec* %4059, %4060
  br i1 %4061, label %4072, label %4062

; <label>:4062                                    ; preds = %4026
  %4063 = load %union.rec*, %union.rec** %z, align 8
  %4064 = bitcast %union.rec* %4063 to %struct.closure_type*
  %4065 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4064, i32 0, i32 5
  %4066 = load %union.rec*, %union.rec** %4065, align 8
  %4067 = bitcast %union.rec* %4066 to %struct.closure_type*
  %4068 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4067, i32 0, i32 5
  %4069 = load %union.rec*, %union.rec** %4068, align 8
  %4070 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %4071 = icmp eq %union.rec* %4069, %4070
  br i1 %4071, label %4072, label %4075

; <label>:4072                                    ; preds = %4062, %4026
  %4073 = load %union.rec*, %union.rec** %z, align 8
  %4074 = load %union.rec**, %union.rec*** %10, align 8
  store %union.rec* %4073, %union.rec** %4074, align 8
  br label %4075

; <label>:4075                                    ; preds = %4072, %4062
  %4076 = load %union.rec*, %union.rec** %z, align 8
  %4077 = bitcast %union.rec* %4076 to %struct.closure_type*
  %4078 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4077, i32 0, i32 5
  %4079 = load %union.rec*, %union.rec** %4078, align 8
  %4080 = bitcast %union.rec* %4079 to %struct.closure_type*
  %4081 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4080, i32 0, i32 5
  %4082 = load %union.rec*, %union.rec** %4081, align 8
  %4083 = load %union.rec*, %union.rec** @GalleySym, align 8
  %4084 = icmp eq %union.rec* %4082, %4083
  br i1 %4084, label %4105, label %4085

; <label>:4085                                    ; preds = %4075
  %4086 = load %union.rec*, %union.rec** %z, align 8
  %4087 = bitcast %union.rec* %4086 to %struct.closure_type*
  %4088 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4087, i32 0, i32 5
  %4089 = load %union.rec*, %union.rec** %4088, align 8
  %4090 = bitcast %union.rec* %4089 to %struct.closure_type*
  %4091 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4090, i32 0, i32 5
  %4092 = load %union.rec*, %union.rec** %4091, align 8
  %4093 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %4094 = icmp eq %union.rec* %4092, %4093
  br i1 %4094, label %4105, label %4095

; <label>:4095                                    ; preds = %4085
  %4096 = load %union.rec*, %union.rec** %z, align 8
  %4097 = bitcast %union.rec* %4096 to %struct.closure_type*
  %4098 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4097, i32 0, i32 5
  %4099 = load %union.rec*, %union.rec** %4098, align 8
  %4100 = bitcast %union.rec* %4099 to %struct.closure_type*
  %4101 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4100, i32 0, i32 5
  %4102 = load %union.rec*, %union.rec** %4101, align 8
  %4103 = load %union.rec*, %union.rec** @InputSym, align 8
  %4104 = icmp eq %union.rec* %4102, %4103
  br i1 %4104, label %4105, label %4106

; <label>:4105                                    ; preds = %4095, %4085, %4075
  store i32 1, i32* %after_target, align 4
  br label %4106

; <label>:4106                                    ; preds = %4105, %4095
  br label %5071

; <label>:4107                                    ; preds = %3990
  %4108 = load %union.rec**, %union.rec*** %11, align 8
  %4109 = load %union.rec*, %union.rec** %4108, align 8
  %4110 = icmp eq %union.rec* %4109, null
  br i1 %4110, label %4111, label %4172

; <label>:4111                                    ; preds = %4107
  %4112 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %4113 = zext i8 %4112 to i32
  store i32 %4113, i32* @zz_size, align 4
  %4114 = sext i32 %4113 to i64
  %4115 = icmp uge i64 %4114, 265
  br i1 %4115, label %4116, label %4119

; <label>:4116                                    ; preds = %4111
  %4117 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4118 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %4117)
  br label %4144

; <label>:4119                                    ; preds = %4111
  %4120 = load i32, i32* @zz_size, align 4
  %4121 = sext i32 %4120 to i64
  %4122 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4121
  %4123 = load %union.rec*, %union.rec** %4122, align 8
  %4124 = icmp eq %union.rec* %4123, null
  br i1 %4124, label %4125, label %4129

; <label>:4125                                    ; preds = %4119
  %4126 = load i32, i32* @zz_size, align 4
  %4127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4128 = call %union.rec* @GetMemory(i32 %4126, %struct.FILE_POS* %4127)
  store %union.rec* %4128, %union.rec** @zz_hold, align 8
  br label %4143

; <label>:4129                                    ; preds = %4119
  %4130 = load i32, i32* @zz_size, align 4
  %4131 = sext i32 %4130 to i64
  %4132 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4131
  %4133 = load %union.rec*, %union.rec** %4132, align 8
  store %union.rec* %4133, %union.rec** @zz_hold, align 8
  store %union.rec* %4133, %union.rec** @zz_hold, align 8
  %4134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4135 = bitcast %union.rec* %4134 to %struct.word_type*
  %4136 = getelementptr inbounds %struct.word_type, %struct.word_type* %4135, i32 0, i32 0
  %4137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4136, i32 0, i64 0
  %4138 = getelementptr inbounds %struct.LIST, %struct.LIST* %4137, i32 0, i32 0
  %4139 = load %union.rec*, %union.rec** %4138, align 8
  %4140 = load i32, i32* @zz_size, align 4
  %4141 = sext i32 %4140 to i64
  %4142 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4141
  store %union.rec* %4139, %union.rec** %4142, align 8
  br label %4143

; <label>:4143                                    ; preds = %4129, %4125
  br label %4144

; <label>:4144                                    ; preds = %4143, %4116
  %4145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4146 = bitcast %union.rec* %4145 to %struct.word_type*
  %4147 = getelementptr inbounds %struct.word_type, %struct.word_type* %4146, i32 0, i32 1
  %4148 = bitcast %union.FIRST_UNION* %4147 to %struct.anon*
  %4149 = getelementptr inbounds %struct.anon, %struct.anon* %4148, i32 0, i32 0
  store i8 17, i8* %4149, align 1
  %4150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4152 = bitcast %union.rec* %4151 to %struct.word_type*
  %4153 = getelementptr inbounds %struct.word_type, %struct.word_type* %4152, i32 0, i32 0
  %4154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4153, i32 0, i64 1
  %4155 = getelementptr inbounds %struct.LIST, %struct.LIST* %4154, i32 0, i32 1
  store %union.rec* %4150, %union.rec** %4155, align 8
  %4156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4157 = bitcast %union.rec* %4156 to %struct.word_type*
  %4158 = getelementptr inbounds %struct.word_type, %struct.word_type* %4157, i32 0, i32 0
  %4159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4158, i32 0, i64 1
  %4160 = getelementptr inbounds %struct.LIST, %struct.LIST* %4159, i32 0, i32 0
  store %union.rec* %4150, %union.rec** %4160, align 8
  %4161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4162 = bitcast %union.rec* %4161 to %struct.word_type*
  %4163 = getelementptr inbounds %struct.word_type, %struct.word_type* %4162, i32 0, i32 0
  %4164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4163, i32 0, i64 0
  %4165 = getelementptr inbounds %struct.LIST, %struct.LIST* %4164, i32 0, i32 1
  store %union.rec* %4150, %union.rec** %4165, align 8
  %4166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4167 = bitcast %union.rec* %4166 to %struct.word_type*
  %4168 = getelementptr inbounds %struct.word_type, %struct.word_type* %4167, i32 0, i32 0
  %4169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4168, i32 0, i64 0
  %4170 = getelementptr inbounds %struct.LIST, %struct.LIST* %4169, i32 0, i32 0
  store %union.rec* %4150, %union.rec** %4170, align 8
  %4171 = load %union.rec**, %union.rec*** %11, align 8
  store %union.rec* %4150, %union.rec** %4171, align 8
  br label %4172

; <label>:4172                                    ; preds = %4144, %4107
  %4173 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4174 = zext i8 %4173 to i32
  store i32 %4174, i32* @zz_size, align 4
  %4175 = sext i32 %4174 to i64
  %4176 = icmp uge i64 %4175, 265
  br i1 %4176, label %4177, label %4180

; <label>:4177                                    ; preds = %4172
  %4178 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4179 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %4178)
  br label %4205

; <label>:4180                                    ; preds = %4172
  %4181 = load i32, i32* @zz_size, align 4
  %4182 = sext i32 %4181 to i64
  %4183 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4182
  %4184 = load %union.rec*, %union.rec** %4183, align 8
  %4185 = icmp eq %union.rec* %4184, null
  br i1 %4185, label %4186, label %4190

; <label>:4186                                    ; preds = %4180
  %4187 = load i32, i32* @zz_size, align 4
  %4188 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4189 = call %union.rec* @GetMemory(i32 %4187, %struct.FILE_POS* %4188)
  store %union.rec* %4189, %union.rec** @zz_hold, align 8
  br label %4204

; <label>:4190                                    ; preds = %4180
  %4191 = load i32, i32* @zz_size, align 4
  %4192 = sext i32 %4191 to i64
  %4193 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4192
  %4194 = load %union.rec*, %union.rec** %4193, align 8
  store %union.rec* %4194, %union.rec** @zz_hold, align 8
  store %union.rec* %4194, %union.rec** @zz_hold, align 8
  %4195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4196 = bitcast %union.rec* %4195 to %struct.word_type*
  %4197 = getelementptr inbounds %struct.word_type, %struct.word_type* %4196, i32 0, i32 0
  %4198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4197, i32 0, i64 0
  %4199 = getelementptr inbounds %struct.LIST, %struct.LIST* %4198, i32 0, i32 0
  %4200 = load %union.rec*, %union.rec** %4199, align 8
  %4201 = load i32, i32* @zz_size, align 4
  %4202 = sext i32 %4201 to i64
  %4203 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4202
  store %union.rec* %4200, %union.rec** %4203, align 8
  br label %4204

; <label>:4204                                    ; preds = %4190, %4186
  br label %4205

; <label>:4205                                    ; preds = %4204, %4177
  %4206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4207 = bitcast %union.rec* %4206 to %struct.word_type*
  %4208 = getelementptr inbounds %struct.word_type, %struct.word_type* %4207, i32 0, i32 1
  %4209 = bitcast %union.FIRST_UNION* %4208 to %struct.anon*
  %4210 = getelementptr inbounds %struct.anon, %struct.anon* %4209, i32 0, i32 0
  store i8 0, i8* %4210, align 1
  %4211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4213 = bitcast %union.rec* %4212 to %struct.word_type*
  %4214 = getelementptr inbounds %struct.word_type, %struct.word_type* %4213, i32 0, i32 0
  %4215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4214, i32 0, i64 1
  %4216 = getelementptr inbounds %struct.LIST, %struct.LIST* %4215, i32 0, i32 1
  store %union.rec* %4211, %union.rec** %4216, align 8
  %4217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4218 = bitcast %union.rec* %4217 to %struct.word_type*
  %4219 = getelementptr inbounds %struct.word_type, %struct.word_type* %4218, i32 0, i32 0
  %4220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4219, i32 0, i64 1
  %4221 = getelementptr inbounds %struct.LIST, %struct.LIST* %4220, i32 0, i32 0
  store %union.rec* %4211, %union.rec** %4221, align 8
  %4222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4223 = bitcast %union.rec* %4222 to %struct.word_type*
  %4224 = getelementptr inbounds %struct.word_type, %struct.word_type* %4223, i32 0, i32 0
  %4225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4224, i32 0, i64 0
  %4226 = getelementptr inbounds %struct.LIST, %struct.LIST* %4225, i32 0, i32 1
  store %union.rec* %4211, %union.rec** %4226, align 8
  %4227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4228 = bitcast %union.rec* %4227 to %struct.word_type*
  %4229 = getelementptr inbounds %struct.word_type, %struct.word_type* %4228, i32 0, i32 0
  %4230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4229, i32 0, i64 0
  %4231 = getelementptr inbounds %struct.LIST, %struct.LIST* %4230, i32 0, i32 0
  store %union.rec* %4211, %union.rec** %4231, align 8
  store %union.rec* %4211, %union.rec** @xx_link, align 8
  %4232 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4232, %union.rec** @zz_res, align 8
  %4233 = load %union.rec**, %union.rec*** %11, align 8
  %4234 = load %union.rec*, %union.rec** %4233, align 8
  store %union.rec* %4234, %union.rec** @zz_hold, align 8
  %4235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4236 = icmp eq %union.rec* %4235, null
  br i1 %4236, label %4237, label %4239

; <label>:4237                                    ; preds = %4205
  %4238 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4287

; <label>:4239                                    ; preds = %4205
  %4240 = load %union.rec*, %union.rec** @zz_res, align 8
  %4241 = icmp eq %union.rec* %4240, null
  br i1 %4241, label %4242, label %4244

; <label>:4242                                    ; preds = %4239
  %4243 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4285

; <label>:4244                                    ; preds = %4239
  %4245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4246 = bitcast %union.rec* %4245 to %struct.word_type*
  %4247 = getelementptr inbounds %struct.word_type, %struct.word_type* %4246, i32 0, i32 0
  %4248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4247, i32 0, i64 0
  %4249 = getelementptr inbounds %struct.LIST, %struct.LIST* %4248, i32 0, i32 0
  %4250 = load %union.rec*, %union.rec** %4249, align 8
  store %union.rec* %4250, %union.rec** @zz_tmp, align 8
  %4251 = load %union.rec*, %union.rec** @zz_res, align 8
  %4252 = bitcast %union.rec* %4251 to %struct.word_type*
  %4253 = getelementptr inbounds %struct.word_type, %struct.word_type* %4252, i32 0, i32 0
  %4254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4253, i32 0, i64 0
  %4255 = getelementptr inbounds %struct.LIST, %struct.LIST* %4254, i32 0, i32 0
  %4256 = load %union.rec*, %union.rec** %4255, align 8
  %4257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4258 = bitcast %union.rec* %4257 to %struct.word_type*
  %4259 = getelementptr inbounds %struct.word_type, %struct.word_type* %4258, i32 0, i32 0
  %4260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4259, i32 0, i64 0
  %4261 = getelementptr inbounds %struct.LIST, %struct.LIST* %4260, i32 0, i32 0
  store %union.rec* %4256, %union.rec** %4261, align 8
  %4262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4263 = load %union.rec*, %union.rec** @zz_res, align 8
  %4264 = bitcast %union.rec* %4263 to %struct.word_type*
  %4265 = getelementptr inbounds %struct.word_type, %struct.word_type* %4264, i32 0, i32 0
  %4266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4265, i32 0, i64 0
  %4267 = getelementptr inbounds %struct.LIST, %struct.LIST* %4266, i32 0, i32 0
  %4268 = load %union.rec*, %union.rec** %4267, align 8
  %4269 = bitcast %union.rec* %4268 to %struct.word_type*
  %4270 = getelementptr inbounds %struct.word_type, %struct.word_type* %4269, i32 0, i32 0
  %4271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4270, i32 0, i64 0
  %4272 = getelementptr inbounds %struct.LIST, %struct.LIST* %4271, i32 0, i32 1
  store %union.rec* %4262, %union.rec** %4272, align 8
  %4273 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4274 = load %union.rec*, %union.rec** @zz_res, align 8
  %4275 = bitcast %union.rec* %4274 to %struct.word_type*
  %4276 = getelementptr inbounds %struct.word_type, %struct.word_type* %4275, i32 0, i32 0
  %4277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4276, i32 0, i64 0
  %4278 = getelementptr inbounds %struct.LIST, %struct.LIST* %4277, i32 0, i32 0
  store %union.rec* %4273, %union.rec** %4278, align 8
  %4279 = load %union.rec*, %union.rec** @zz_res, align 8
  %4280 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4281 = bitcast %union.rec* %4280 to %struct.word_type*
  %4282 = getelementptr inbounds %struct.word_type, %struct.word_type* %4281, i32 0, i32 0
  %4283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4282, i32 0, i64 0
  %4284 = getelementptr inbounds %struct.LIST, %struct.LIST* %4283, i32 0, i32 1
  store %union.rec* %4279, %union.rec** %4284, align 8
  br label %4285

; <label>:4285                                    ; preds = %4244, %4242
  %4286 = phi %union.rec* [ %4243, %4242 ], [ %4279, %4244 ]
  br label %4287

; <label>:4287                                    ; preds = %4285, %4237
  %4288 = phi %union.rec* [ %4238, %4237 ], [ %4286, %4285 ]
  %4289 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4289, %union.rec** @zz_res, align 8
  %4290 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %4290, %union.rec** @zz_hold, align 8
  %4291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4292 = icmp eq %union.rec* %4291, null
  br i1 %4292, label %4293, label %4295

; <label>:4293                                    ; preds = %4287
  %4294 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4343

; <label>:4295                                    ; preds = %4287
  %4296 = load %union.rec*, %union.rec** @zz_res, align 8
  %4297 = icmp eq %union.rec* %4296, null
  br i1 %4297, label %4298, label %4300

; <label>:4298                                    ; preds = %4295
  %4299 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4341

; <label>:4300                                    ; preds = %4295
  %4301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4302 = bitcast %union.rec* %4301 to %struct.word_type*
  %4303 = getelementptr inbounds %struct.word_type, %struct.word_type* %4302, i32 0, i32 0
  %4304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4303, i32 0, i64 1
  %4305 = getelementptr inbounds %struct.LIST, %struct.LIST* %4304, i32 0, i32 0
  %4306 = load %union.rec*, %union.rec** %4305, align 8
  store %union.rec* %4306, %union.rec** @zz_tmp, align 8
  %4307 = load %union.rec*, %union.rec** @zz_res, align 8
  %4308 = bitcast %union.rec* %4307 to %struct.word_type*
  %4309 = getelementptr inbounds %struct.word_type, %struct.word_type* %4308, i32 0, i32 0
  %4310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4309, i32 0, i64 1
  %4311 = getelementptr inbounds %struct.LIST, %struct.LIST* %4310, i32 0, i32 0
  %4312 = load %union.rec*, %union.rec** %4311, align 8
  %4313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4314 = bitcast %union.rec* %4313 to %struct.word_type*
  %4315 = getelementptr inbounds %struct.word_type, %struct.word_type* %4314, i32 0, i32 0
  %4316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4315, i32 0, i64 1
  %4317 = getelementptr inbounds %struct.LIST, %struct.LIST* %4316, i32 0, i32 0
  store %union.rec* %4312, %union.rec** %4317, align 8
  %4318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4319 = load %union.rec*, %union.rec** @zz_res, align 8
  %4320 = bitcast %union.rec* %4319 to %struct.word_type*
  %4321 = getelementptr inbounds %struct.word_type, %struct.word_type* %4320, i32 0, i32 0
  %4322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4321, i32 0, i64 1
  %4323 = getelementptr inbounds %struct.LIST, %struct.LIST* %4322, i32 0, i32 0
  %4324 = load %union.rec*, %union.rec** %4323, align 8
  %4325 = bitcast %union.rec* %4324 to %struct.word_type*
  %4326 = getelementptr inbounds %struct.word_type, %struct.word_type* %4325, i32 0, i32 0
  %4327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4326, i32 0, i64 1
  %4328 = getelementptr inbounds %struct.LIST, %struct.LIST* %4327, i32 0, i32 1
  store %union.rec* %4318, %union.rec** %4328, align 8
  %4329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4330 = load %union.rec*, %union.rec** @zz_res, align 8
  %4331 = bitcast %union.rec* %4330 to %struct.word_type*
  %4332 = getelementptr inbounds %struct.word_type, %struct.word_type* %4331, i32 0, i32 0
  %4333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4332, i32 0, i64 1
  %4334 = getelementptr inbounds %struct.LIST, %struct.LIST* %4333, i32 0, i32 0
  store %union.rec* %4329, %union.rec** %4334, align 8
  %4335 = load %union.rec*, %union.rec** @zz_res, align 8
  %4336 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4337 = bitcast %union.rec* %4336 to %struct.word_type*
  %4338 = getelementptr inbounds %struct.word_type, %struct.word_type* %4337, i32 0, i32 0
  %4339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4338, i32 0, i64 1
  %4340 = getelementptr inbounds %struct.LIST, %struct.LIST* %4339, i32 0, i32 1
  store %union.rec* %4335, %union.rec** %4340, align 8
  br label %4341

; <label>:4341                                    ; preds = %4300, %4298
  %4342 = phi %union.rec* [ %4299, %4298 ], [ %4335, %4300 ]
  br label %4343

; <label>:4343                                    ; preds = %4341, %4293
  %4344 = phi %union.rec* [ %4294, %4293 ], [ %4342, %4341 ]
  br label %5071

; <label>:4345                                    ; preds = %3990
  %4346 = load i32, i32* %after_target, align 4
  %4347 = icmp ne i32 %4346, 0
  br i1 %4347, label %4586, label %4348

; <label>:4348                                    ; preds = %4345
  %4349 = load %union.rec**, %union.rec*** %12, align 8
  %4350 = load %union.rec*, %union.rec** %4349, align 8
  %4351 = icmp eq %union.rec* %4350, null
  br i1 %4351, label %4352, label %4413

; <label>:4352                                    ; preds = %4348
  %4353 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %4354 = zext i8 %4353 to i32
  store i32 %4354, i32* @zz_size, align 4
  %4355 = sext i32 %4354 to i64
  %4356 = icmp uge i64 %4355, 265
  br i1 %4356, label %4357, label %4360

; <label>:4357                                    ; preds = %4352
  %4358 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4359 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %4358)
  br label %4385

; <label>:4360                                    ; preds = %4352
  %4361 = load i32, i32* @zz_size, align 4
  %4362 = sext i32 %4361 to i64
  %4363 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4362
  %4364 = load %union.rec*, %union.rec** %4363, align 8
  %4365 = icmp eq %union.rec* %4364, null
  br i1 %4365, label %4366, label %4370

; <label>:4366                                    ; preds = %4360
  %4367 = load i32, i32* @zz_size, align 4
  %4368 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4369 = call %union.rec* @GetMemory(i32 %4367, %struct.FILE_POS* %4368)
  store %union.rec* %4369, %union.rec** @zz_hold, align 8
  br label %4384

; <label>:4370                                    ; preds = %4360
  %4371 = load i32, i32* @zz_size, align 4
  %4372 = sext i32 %4371 to i64
  %4373 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4372
  %4374 = load %union.rec*, %union.rec** %4373, align 8
  store %union.rec* %4374, %union.rec** @zz_hold, align 8
  store %union.rec* %4374, %union.rec** @zz_hold, align 8
  %4375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4376 = bitcast %union.rec* %4375 to %struct.word_type*
  %4377 = getelementptr inbounds %struct.word_type, %struct.word_type* %4376, i32 0, i32 0
  %4378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4377, i32 0, i64 0
  %4379 = getelementptr inbounds %struct.LIST, %struct.LIST* %4378, i32 0, i32 0
  %4380 = load %union.rec*, %union.rec** %4379, align 8
  %4381 = load i32, i32* @zz_size, align 4
  %4382 = sext i32 %4381 to i64
  %4383 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4382
  store %union.rec* %4380, %union.rec** %4383, align 8
  br label %4384

; <label>:4384                                    ; preds = %4370, %4366
  br label %4385

; <label>:4385                                    ; preds = %4384, %4357
  %4386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4387 = bitcast %union.rec* %4386 to %struct.word_type*
  %4388 = getelementptr inbounds %struct.word_type, %struct.word_type* %4387, i32 0, i32 1
  %4389 = bitcast %union.FIRST_UNION* %4388 to %struct.anon*
  %4390 = getelementptr inbounds %struct.anon, %struct.anon* %4389, i32 0, i32 0
  store i8 17, i8* %4390, align 1
  %4391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4393 = bitcast %union.rec* %4392 to %struct.word_type*
  %4394 = getelementptr inbounds %struct.word_type, %struct.word_type* %4393, i32 0, i32 0
  %4395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4394, i32 0, i64 1
  %4396 = getelementptr inbounds %struct.LIST, %struct.LIST* %4395, i32 0, i32 1
  store %union.rec* %4391, %union.rec** %4396, align 8
  %4397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4398 = bitcast %union.rec* %4397 to %struct.word_type*
  %4399 = getelementptr inbounds %struct.word_type, %struct.word_type* %4398, i32 0, i32 0
  %4400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4399, i32 0, i64 1
  %4401 = getelementptr inbounds %struct.LIST, %struct.LIST* %4400, i32 0, i32 0
  store %union.rec* %4391, %union.rec** %4401, align 8
  %4402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4403 = bitcast %union.rec* %4402 to %struct.word_type*
  %4404 = getelementptr inbounds %struct.word_type, %struct.word_type* %4403, i32 0, i32 0
  %4405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4404, i32 0, i64 0
  %4406 = getelementptr inbounds %struct.LIST, %struct.LIST* %4405, i32 0, i32 1
  store %union.rec* %4391, %union.rec** %4406, align 8
  %4407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4408 = bitcast %union.rec* %4407 to %struct.word_type*
  %4409 = getelementptr inbounds %struct.word_type, %struct.word_type* %4408, i32 0, i32 0
  %4410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4409, i32 0, i64 0
  %4411 = getelementptr inbounds %struct.LIST, %struct.LIST* %4410, i32 0, i32 0
  store %union.rec* %4391, %union.rec** %4411, align 8
  %4412 = load %union.rec**, %union.rec*** %12, align 8
  store %union.rec* %4391, %union.rec** %4412, align 8
  br label %4413

; <label>:4413                                    ; preds = %4385, %4348
  %4414 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4415 = zext i8 %4414 to i32
  store i32 %4415, i32* @zz_size, align 4
  %4416 = sext i32 %4415 to i64
  %4417 = icmp uge i64 %4416, 265
  br i1 %4417, label %4418, label %4421

; <label>:4418                                    ; preds = %4413
  %4419 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4420 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %4419)
  br label %4446

; <label>:4421                                    ; preds = %4413
  %4422 = load i32, i32* @zz_size, align 4
  %4423 = sext i32 %4422 to i64
  %4424 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4423
  %4425 = load %union.rec*, %union.rec** %4424, align 8
  %4426 = icmp eq %union.rec* %4425, null
  br i1 %4426, label %4427, label %4431

; <label>:4427                                    ; preds = %4421
  %4428 = load i32, i32* @zz_size, align 4
  %4429 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4430 = call %union.rec* @GetMemory(i32 %4428, %struct.FILE_POS* %4429)
  store %union.rec* %4430, %union.rec** @zz_hold, align 8
  br label %4445

; <label>:4431                                    ; preds = %4421
  %4432 = load i32, i32* @zz_size, align 4
  %4433 = sext i32 %4432 to i64
  %4434 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4433
  %4435 = load %union.rec*, %union.rec** %4434, align 8
  store %union.rec* %4435, %union.rec** @zz_hold, align 8
  store %union.rec* %4435, %union.rec** @zz_hold, align 8
  %4436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4437 = bitcast %union.rec* %4436 to %struct.word_type*
  %4438 = getelementptr inbounds %struct.word_type, %struct.word_type* %4437, i32 0, i32 0
  %4439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4438, i32 0, i64 0
  %4440 = getelementptr inbounds %struct.LIST, %struct.LIST* %4439, i32 0, i32 0
  %4441 = load %union.rec*, %union.rec** %4440, align 8
  %4442 = load i32, i32* @zz_size, align 4
  %4443 = sext i32 %4442 to i64
  %4444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4443
  store %union.rec* %4441, %union.rec** %4444, align 8
  br label %4445

; <label>:4445                                    ; preds = %4431, %4427
  br label %4446

; <label>:4446                                    ; preds = %4445, %4418
  %4447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4448 = bitcast %union.rec* %4447 to %struct.word_type*
  %4449 = getelementptr inbounds %struct.word_type, %struct.word_type* %4448, i32 0, i32 1
  %4450 = bitcast %union.FIRST_UNION* %4449 to %struct.anon*
  %4451 = getelementptr inbounds %struct.anon, %struct.anon* %4450, i32 0, i32 0
  store i8 0, i8* %4451, align 1
  %4452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4454 = bitcast %union.rec* %4453 to %struct.word_type*
  %4455 = getelementptr inbounds %struct.word_type, %struct.word_type* %4454, i32 0, i32 0
  %4456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4455, i32 0, i64 1
  %4457 = getelementptr inbounds %struct.LIST, %struct.LIST* %4456, i32 0, i32 1
  store %union.rec* %4452, %union.rec** %4457, align 8
  %4458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4459 = bitcast %union.rec* %4458 to %struct.word_type*
  %4460 = getelementptr inbounds %struct.word_type, %struct.word_type* %4459, i32 0, i32 0
  %4461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4460, i32 0, i64 1
  %4462 = getelementptr inbounds %struct.LIST, %struct.LIST* %4461, i32 0, i32 0
  store %union.rec* %4452, %union.rec** %4462, align 8
  %4463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4464 = bitcast %union.rec* %4463 to %struct.word_type*
  %4465 = getelementptr inbounds %struct.word_type, %struct.word_type* %4464, i32 0, i32 0
  %4466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4465, i32 0, i64 0
  %4467 = getelementptr inbounds %struct.LIST, %struct.LIST* %4466, i32 0, i32 1
  store %union.rec* %4452, %union.rec** %4467, align 8
  %4468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4469 = bitcast %union.rec* %4468 to %struct.word_type*
  %4470 = getelementptr inbounds %struct.word_type, %struct.word_type* %4469, i32 0, i32 0
  %4471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4470, i32 0, i64 0
  %4472 = getelementptr inbounds %struct.LIST, %struct.LIST* %4471, i32 0, i32 0
  store %union.rec* %4452, %union.rec** %4472, align 8
  store %union.rec* %4452, %union.rec** @xx_link, align 8
  %4473 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4473, %union.rec** @zz_res, align 8
  %4474 = load %union.rec**, %union.rec*** %12, align 8
  %4475 = load %union.rec*, %union.rec** %4474, align 8
  store %union.rec* %4475, %union.rec** @zz_hold, align 8
  %4476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4477 = icmp eq %union.rec* %4476, null
  br i1 %4477, label %4478, label %4480

; <label>:4478                                    ; preds = %4446
  %4479 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4528

; <label>:4480                                    ; preds = %4446
  %4481 = load %union.rec*, %union.rec** @zz_res, align 8
  %4482 = icmp eq %union.rec* %4481, null
  br i1 %4482, label %4483, label %4485

; <label>:4483                                    ; preds = %4480
  %4484 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4526

; <label>:4485                                    ; preds = %4480
  %4486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4487 = bitcast %union.rec* %4486 to %struct.word_type*
  %4488 = getelementptr inbounds %struct.word_type, %struct.word_type* %4487, i32 0, i32 0
  %4489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4488, i32 0, i64 0
  %4490 = getelementptr inbounds %struct.LIST, %struct.LIST* %4489, i32 0, i32 0
  %4491 = load %union.rec*, %union.rec** %4490, align 8
  store %union.rec* %4491, %union.rec** @zz_tmp, align 8
  %4492 = load %union.rec*, %union.rec** @zz_res, align 8
  %4493 = bitcast %union.rec* %4492 to %struct.word_type*
  %4494 = getelementptr inbounds %struct.word_type, %struct.word_type* %4493, i32 0, i32 0
  %4495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4494, i32 0, i64 0
  %4496 = getelementptr inbounds %struct.LIST, %struct.LIST* %4495, i32 0, i32 0
  %4497 = load %union.rec*, %union.rec** %4496, align 8
  %4498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4499 = bitcast %union.rec* %4498 to %struct.word_type*
  %4500 = getelementptr inbounds %struct.word_type, %struct.word_type* %4499, i32 0, i32 0
  %4501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4500, i32 0, i64 0
  %4502 = getelementptr inbounds %struct.LIST, %struct.LIST* %4501, i32 0, i32 0
  store %union.rec* %4497, %union.rec** %4502, align 8
  %4503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4504 = load %union.rec*, %union.rec** @zz_res, align 8
  %4505 = bitcast %union.rec* %4504 to %struct.word_type*
  %4506 = getelementptr inbounds %struct.word_type, %struct.word_type* %4505, i32 0, i32 0
  %4507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4506, i32 0, i64 0
  %4508 = getelementptr inbounds %struct.LIST, %struct.LIST* %4507, i32 0, i32 0
  %4509 = load %union.rec*, %union.rec** %4508, align 8
  %4510 = bitcast %union.rec* %4509 to %struct.word_type*
  %4511 = getelementptr inbounds %struct.word_type, %struct.word_type* %4510, i32 0, i32 0
  %4512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4511, i32 0, i64 0
  %4513 = getelementptr inbounds %struct.LIST, %struct.LIST* %4512, i32 0, i32 1
  store %union.rec* %4503, %union.rec** %4513, align 8
  %4514 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4515 = load %union.rec*, %union.rec** @zz_res, align 8
  %4516 = bitcast %union.rec* %4515 to %struct.word_type*
  %4517 = getelementptr inbounds %struct.word_type, %struct.word_type* %4516, i32 0, i32 0
  %4518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4517, i32 0, i64 0
  %4519 = getelementptr inbounds %struct.LIST, %struct.LIST* %4518, i32 0, i32 0
  store %union.rec* %4514, %union.rec** %4519, align 8
  %4520 = load %union.rec*, %union.rec** @zz_res, align 8
  %4521 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4522 = bitcast %union.rec* %4521 to %struct.word_type*
  %4523 = getelementptr inbounds %struct.word_type, %struct.word_type* %4522, i32 0, i32 0
  %4524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4523, i32 0, i64 0
  %4525 = getelementptr inbounds %struct.LIST, %struct.LIST* %4524, i32 0, i32 1
  store %union.rec* %4520, %union.rec** %4525, align 8
  br label %4526

; <label>:4526                                    ; preds = %4485, %4483
  %4527 = phi %union.rec* [ %4484, %4483 ], [ %4520, %4485 ]
  br label %4528

; <label>:4528                                    ; preds = %4526, %4478
  %4529 = phi %union.rec* [ %4479, %4478 ], [ %4527, %4526 ]
  %4530 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4530, %union.rec** @zz_res, align 8
  %4531 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %4531, %union.rec** @zz_hold, align 8
  %4532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4533 = icmp eq %union.rec* %4532, null
  br i1 %4533, label %4534, label %4536

; <label>:4534                                    ; preds = %4528
  %4535 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4584

; <label>:4536                                    ; preds = %4528
  %4537 = load %union.rec*, %union.rec** @zz_res, align 8
  %4538 = icmp eq %union.rec* %4537, null
  br i1 %4538, label %4539, label %4541

; <label>:4539                                    ; preds = %4536
  %4540 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4582

; <label>:4541                                    ; preds = %4536
  %4542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4543 = bitcast %union.rec* %4542 to %struct.word_type*
  %4544 = getelementptr inbounds %struct.word_type, %struct.word_type* %4543, i32 0, i32 0
  %4545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4544, i32 0, i64 1
  %4546 = getelementptr inbounds %struct.LIST, %struct.LIST* %4545, i32 0, i32 0
  %4547 = load %union.rec*, %union.rec** %4546, align 8
  store %union.rec* %4547, %union.rec** @zz_tmp, align 8
  %4548 = load %union.rec*, %union.rec** @zz_res, align 8
  %4549 = bitcast %union.rec* %4548 to %struct.word_type*
  %4550 = getelementptr inbounds %struct.word_type, %struct.word_type* %4549, i32 0, i32 0
  %4551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4550, i32 0, i64 1
  %4552 = getelementptr inbounds %struct.LIST, %struct.LIST* %4551, i32 0, i32 0
  %4553 = load %union.rec*, %union.rec** %4552, align 8
  %4554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4555 = bitcast %union.rec* %4554 to %struct.word_type*
  %4556 = getelementptr inbounds %struct.word_type, %struct.word_type* %4555, i32 0, i32 0
  %4557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4556, i32 0, i64 1
  %4558 = getelementptr inbounds %struct.LIST, %struct.LIST* %4557, i32 0, i32 0
  store %union.rec* %4553, %union.rec** %4558, align 8
  %4559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4560 = load %union.rec*, %union.rec** @zz_res, align 8
  %4561 = bitcast %union.rec* %4560 to %struct.word_type*
  %4562 = getelementptr inbounds %struct.word_type, %struct.word_type* %4561, i32 0, i32 0
  %4563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4562, i32 0, i64 1
  %4564 = getelementptr inbounds %struct.LIST, %struct.LIST* %4563, i32 0, i32 0
  %4565 = load %union.rec*, %union.rec** %4564, align 8
  %4566 = bitcast %union.rec* %4565 to %struct.word_type*
  %4567 = getelementptr inbounds %struct.word_type, %struct.word_type* %4566, i32 0, i32 0
  %4568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4567, i32 0, i64 1
  %4569 = getelementptr inbounds %struct.LIST, %struct.LIST* %4568, i32 0, i32 1
  store %union.rec* %4559, %union.rec** %4569, align 8
  %4570 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4571 = load %union.rec*, %union.rec** @zz_res, align 8
  %4572 = bitcast %union.rec* %4571 to %struct.word_type*
  %4573 = getelementptr inbounds %struct.word_type, %struct.word_type* %4572, i32 0, i32 0
  %4574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4573, i32 0, i64 1
  %4575 = getelementptr inbounds %struct.LIST, %struct.LIST* %4574, i32 0, i32 0
  store %union.rec* %4570, %union.rec** %4575, align 8
  %4576 = load %union.rec*, %union.rec** @zz_res, align 8
  %4577 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4578 = bitcast %union.rec* %4577 to %struct.word_type*
  %4579 = getelementptr inbounds %struct.word_type, %struct.word_type* %4578, i32 0, i32 0
  %4580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4579, i32 0, i64 1
  %4581 = getelementptr inbounds %struct.LIST, %struct.LIST* %4580, i32 0, i32 1
  store %union.rec* %4576, %union.rec** %4581, align 8
  br label %4582

; <label>:4582                                    ; preds = %4541, %4539
  %4583 = phi %union.rec* [ %4540, %4539 ], [ %4576, %4541 ]
  br label %4584

; <label>:4584                                    ; preds = %4582, %4534
  %4585 = phi %union.rec* [ %4535, %4534 ], [ %4583, %4582 ]
  br label %4586

; <label>:4586                                    ; preds = %4584, %4345
  br label %5071

; <label>:4587                                    ; preds = %3990, %3990, %3990, %3990, %3990, %3990, %3990, %3990, %3990, %3990, %3990
  br label %5071

; <label>:4588                                    ; preds = %3990
  %4589 = load %union.rec*, %union.rec** %z, align 8
  %4590 = bitcast %union.rec* %4589 to %struct.closure_type*
  %4591 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4590, i32 0, i32 5
  %4592 = load %union.rec*, %union.rec** %4591, align 8
  store %union.rec* %4592, %union.rec** %cover, align 8
  %4593 = load %union.rec*, %union.rec** %cover, align 8
  %4594 = bitcast %union.rec* %4593 to %struct.word_type*
  %4595 = getelementptr inbounds %struct.word_type, %struct.word_type* %4594, i32 0, i32 1
  %4596 = bitcast %union.FIRST_UNION* %4595 to %struct.anon*
  %4597 = getelementptr inbounds %struct.anon, %struct.anon* %4596, i32 0, i32 0
  %4598 = load i8, i8* %4597, align 1
  %4599 = zext i8 %4598 to i32
  %4600 = icmp eq i32 %4599, 32
  br i1 %4600, label %4601, label %4602

; <label>:4601                                    ; preds = %4588
  store i32 0, i32* %dirn, align 4
  store i32 16, i32* %thr_type, align 4
  store i32 19, i32* %ok1, align 4
  store i32 19, i32* %ok2, align 4
  store i32 30, i32* %subst, align 4
  store i32 24, i32* %esubst, align 4
  br label %4603

; <label>:4602                                    ; preds = %4588
  store i32 1, i32* %dirn, align 4
  store i32 15, i32* %thr_type, align 4
  store i32 17, i32* %ok1, align 4
  store i32 18, i32* %ok2, align 4
  store i32 31, i32* %subst, align 4
  store i32 25, i32* %esubst, align 4
  br label %4603

; <label>:4603                                    ; preds = %4602, %4601
  %4604 = load i32, i32* %dirn, align 4
  %4605 = icmp eq i32 %4604, 0
  br i1 %4605, label %4606, label %4613

; <label>:4606                                    ; preds = %4603
  %4607 = load %union.rec*, %union.rec** %cover, align 8
  %4608 = bitcast %union.rec* %4607 to %struct.word_type*
  %4609 = getelementptr inbounds %struct.word_type, %struct.word_type* %4608, i32 0, i32 0
  %4610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4609, i32 0, i64 1
  %4611 = getelementptr inbounds %struct.LIST, %struct.LIST* %4610, i32 0, i32 1
  %4612 = load %union.rec*, %union.rec** %4611, align 8
  br label %4620

; <label>:4613                                    ; preds = %4603
  %4614 = load %union.rec*, %union.rec** %cover, align 8
  %4615 = bitcast %union.rec* %4614 to %struct.word_type*
  %4616 = getelementptr inbounds %struct.word_type, %struct.word_type* %4615, i32 0, i32 0
  %4617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4616, i32 0, i64 1
  %4618 = getelementptr inbounds %struct.LIST, %struct.LIST* %4617, i32 0, i32 0
  %4619 = load %union.rec*, %union.rec** %4618, align 8
  br label %4620

; <label>:4620                                    ; preds = %4613, %4606
  %4621 = phi %union.rec* [ %4612, %4606 ], [ %4619, %4613 ]
  %4622 = bitcast %union.rec* %4621 to %struct.word_type*
  %4623 = getelementptr inbounds %struct.word_type, %struct.word_type* %4622, i32 0, i32 0
  %4624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4623, i32 0, i64 0
  %4625 = getelementptr inbounds %struct.LIST, %struct.LIST* %4624, i32 0, i32 0
  %4626 = load %union.rec*, %union.rec** %4625, align 8
  store %union.rec* %4626, %union.rec** %prnt, align 8
  br label %4627

; <label>:4627                                    ; preds = %4637, %4620
  %4628 = load %union.rec*, %union.rec** %prnt, align 8
  %4629 = bitcast %union.rec* %4628 to %struct.word_type*
  %4630 = getelementptr inbounds %struct.word_type, %struct.word_type* %4629, i32 0, i32 1
  %4631 = bitcast %union.FIRST_UNION* %4630 to %struct.anon*
  %4632 = getelementptr inbounds %struct.anon, %struct.anon* %4631, i32 0, i32 0
  %4633 = load i8, i8* %4632, align 1
  %4634 = zext i8 %4633 to i32
  %4635 = icmp eq i32 %4634, 0
  br i1 %4635, label %4636, label %4644

; <label>:4636                                    ; preds = %4627
  br label %4637

; <label>:4637                                    ; preds = %4636
  %4638 = load %union.rec*, %union.rec** %prnt, align 8
  %4639 = bitcast %union.rec* %4638 to %struct.word_type*
  %4640 = getelementptr inbounds %struct.word_type, %struct.word_type* %4639, i32 0, i32 0
  %4641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4640, i32 0, i64 0
  %4642 = getelementptr inbounds %struct.LIST, %struct.LIST* %4641, i32 0, i32 0
  %4643 = load %union.rec*, %union.rec** %4642, align 8
  store %union.rec* %4643, %union.rec** %prnt, align 8
  br label %4627

; <label>:4644                                    ; preds = %4627
  br label %4645

; <label>:4645                                    ; preds = %4707, %4644
  %4646 = load %union.rec*, %union.rec** %prnt, align 8
  %4647 = bitcast %union.rec* %4646 to %struct.word_type*
  %4648 = getelementptr inbounds %struct.word_type, %struct.word_type* %4647, i32 0, i32 1
  %4649 = bitcast %union.FIRST_UNION* %4648 to %struct.anon*
  %4650 = getelementptr inbounds %struct.anon, %struct.anon* %4649, i32 0, i32 0
  %4651 = load i8, i8* %4650, align 1
  %4652 = zext i8 %4651 to i32
  %4653 = icmp eq i32 %4652, 9
  br i1 %4653, label %4664, label %4654

; <label>:4654                                    ; preds = %4645
  %4655 = load %union.rec*, %union.rec** %prnt, align 8
  %4656 = bitcast %union.rec* %4655 to %struct.word_type*
  %4657 = getelementptr inbounds %struct.word_type, %struct.word_type* %4656, i32 0, i32 1
  %4658 = bitcast %union.FIRST_UNION* %4657 to %struct.anon*
  %4659 = getelementptr inbounds %struct.anon, %struct.anon* %4658, i32 0, i32 0
  %4660 = load i8, i8* %4659, align 1
  %4661 = zext i8 %4660 to i32
  %4662 = load i32, i32* %thr_type, align 4
  %4663 = icmp eq i32 %4661, %4662
  br label %4664

; <label>:4664                                    ; preds = %4654, %4645
  %4665 = phi i1 [ true, %4645 ], [ %4663, %4654 ]
  br i1 %4665, label %4666, label %4708

; <label>:4666                                    ; preds = %4664
  %4667 = load i32, i32* %dirn, align 4
  %4668 = icmp eq i32 %4667, 0
  br i1 %4668, label %4669, label %4676

; <label>:4669                                    ; preds = %4666
  %4670 = load %union.rec*, %union.rec** %prnt, align 8
  %4671 = bitcast %union.rec* %4670 to %struct.word_type*
  %4672 = getelementptr inbounds %struct.word_type, %struct.word_type* %4671, i32 0, i32 0
  %4673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4672, i32 0, i64 1
  %4674 = getelementptr inbounds %struct.LIST, %struct.LIST* %4673, i32 0, i32 1
  %4675 = load %union.rec*, %union.rec** %4674, align 8
  br label %4683

; <label>:4676                                    ; preds = %4666
  %4677 = load %union.rec*, %union.rec** %prnt, align 8
  %4678 = bitcast %union.rec* %4677 to %struct.word_type*
  %4679 = getelementptr inbounds %struct.word_type, %struct.word_type* %4678, i32 0, i32 0
  %4680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4679, i32 0, i64 1
  %4681 = getelementptr inbounds %struct.LIST, %struct.LIST* %4680, i32 0, i32 0
  %4682 = load %union.rec*, %union.rec** %4681, align 8
  br label %4683

; <label>:4683                                    ; preds = %4676, %4669
  %4684 = phi %union.rec* [ %4675, %4669 ], [ %4682, %4676 ]
  %4685 = bitcast %union.rec* %4684 to %struct.word_type*
  %4686 = getelementptr inbounds %struct.word_type, %struct.word_type* %4685, i32 0, i32 0
  %4687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4686, i32 0, i64 0
  %4688 = getelementptr inbounds %struct.LIST, %struct.LIST* %4687, i32 0, i32 0
  %4689 = load %union.rec*, %union.rec** %4688, align 8
  store %union.rec* %4689, %union.rec** %prnt, align 8
  br label %4690

; <label>:4690                                    ; preds = %4700, %4683
  %4691 = load %union.rec*, %union.rec** %prnt, align 8
  %4692 = bitcast %union.rec* %4691 to %struct.word_type*
  %4693 = getelementptr inbounds %struct.word_type, %struct.word_type* %4692, i32 0, i32 1
  %4694 = bitcast %union.FIRST_UNION* %4693 to %struct.anon*
  %4695 = getelementptr inbounds %struct.anon, %struct.anon* %4694, i32 0, i32 0
  %4696 = load i8, i8* %4695, align 1
  %4697 = zext i8 %4696 to i32
  %4698 = icmp eq i32 %4697, 0
  br i1 %4698, label %4699, label %4707

; <label>:4699                                    ; preds = %4690
  br label %4700

; <label>:4700                                    ; preds = %4699
  %4701 = load %union.rec*, %union.rec** %prnt, align 8
  %4702 = bitcast %union.rec* %4701 to %struct.word_type*
  %4703 = getelementptr inbounds %struct.word_type, %struct.word_type* %4702, i32 0, i32 0
  %4704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4703, i32 0, i64 0
  %4705 = getelementptr inbounds %struct.LIST, %struct.LIST* %4704, i32 0, i32 0
  %4706 = load %union.rec*, %union.rec** %4705, align 8
  store %union.rec* %4706, %union.rec** %prnt, align 8
  br label %4690

; <label>:4707                                    ; preds = %4690
  br label %4645

; <label>:4708                                    ; preds = %4664
  %4709 = load %union.rec*, %union.rec** %cover, align 8
  %4710 = bitcast %union.rec* %4709 to %struct.word_type*
  %4711 = getelementptr inbounds %struct.word_type, %struct.word_type* %4710, i32 0, i32 0
  %4712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4711, i32 0, i64 0
  %4713 = getelementptr inbounds %struct.LIST, %struct.LIST* %4712, i32 0, i32 1
  %4714 = load %union.rec*, %union.rec** %4713, align 8
  %4715 = bitcast %union.rec* %4714 to %struct.word_type*
  %4716 = getelementptr inbounds %struct.word_type, %struct.word_type* %4715, i32 0, i32 0
  %4717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4716, i32 0, i64 1
  %4718 = getelementptr inbounds %struct.LIST, %struct.LIST* %4717, i32 0, i32 0
  %4719 = load %union.rec*, %union.rec** %4718, align 8
  store %union.rec* %4719, %union.rec** %chld, align 8
  br label %4720

; <label>:4720                                    ; preds = %4730, %4708
  %4721 = load %union.rec*, %union.rec** %chld, align 8
  %4722 = bitcast %union.rec* %4721 to %struct.word_type*
  %4723 = getelementptr inbounds %struct.word_type, %struct.word_type* %4722, i32 0, i32 1
  %4724 = bitcast %union.FIRST_UNION* %4723 to %struct.anon*
  %4725 = getelementptr inbounds %struct.anon, %struct.anon* %4724, i32 0, i32 0
  %4726 = load i8, i8* %4725, align 1
  %4727 = zext i8 %4726 to i32
  %4728 = icmp eq i32 %4727, 0
  br i1 %4728, label %4729, label %4737

; <label>:4729                                    ; preds = %4720
  br label %4730

; <label>:4730                                    ; preds = %4729
  %4731 = load %union.rec*, %union.rec** %chld, align 8
  %4732 = bitcast %union.rec* %4731 to %struct.word_type*
  %4733 = getelementptr inbounds %struct.word_type, %struct.word_type* %4732, i32 0, i32 0
  %4734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4733, i32 0, i64 1
  %4735 = getelementptr inbounds %struct.LIST, %struct.LIST* %4734, i32 0, i32 0
  %4736 = load %union.rec*, %union.rec** %4735, align 8
  store %union.rec* %4736, %union.rec** %chld, align 8
  br label %4720

; <label>:4737                                    ; preds = %4720
  %4738 = load %union.rec*, %union.rec** %prnt, align 8
  %4739 = bitcast %union.rec* %4738 to %struct.word_type*
  %4740 = getelementptr inbounds %struct.word_type, %struct.word_type* %4739, i32 0, i32 1
  %4741 = bitcast %union.FIRST_UNION* %4740 to %struct.anon*
  %4742 = getelementptr inbounds %struct.anon, %struct.anon* %4741, i32 0, i32 0
  %4743 = load i8, i8* %4742, align 1
  %4744 = zext i8 %4743 to i32
  %4745 = load i32, i32* %ok1, align 4
  %4746 = icmp ne i32 %4744, %4745
  br i1 %4746, label %4747, label %4780

; <label>:4747                                    ; preds = %4737
  %4748 = load %union.rec*, %union.rec** %prnt, align 8
  %4749 = bitcast %union.rec* %4748 to %struct.word_type*
  %4750 = getelementptr inbounds %struct.word_type, %struct.word_type* %4749, i32 0, i32 1
  %4751 = bitcast %union.FIRST_UNION* %4750 to %struct.anon*
  %4752 = getelementptr inbounds %struct.anon, %struct.anon* %4751, i32 0, i32 0
  %4753 = load i8, i8* %4752, align 1
  %4754 = zext i8 %4753 to i32
  %4755 = load i32, i32* %ok2, align 4
  %4756 = icmp ne i32 %4754, %4755
  br i1 %4756, label %4757, label %4780

; <label>:4757                                    ; preds = %4747
  %4758 = load %union.rec*, %union.rec** %cover, align 8
  %4759 = bitcast %union.rec* %4758 to %struct.word_type*
  %4760 = getelementptr inbounds %struct.word_type, %struct.word_type* %4759, i32 0, i32 1
  %4761 = bitcast %union.FIRST_UNION* %4760 to %struct.FILE_POS*
  %4762 = load %union.rec*, %union.rec** %cover, align 8
  %4763 = bitcast %union.rec* %4762 to %struct.word_type*
  %4764 = getelementptr inbounds %struct.word_type, %struct.word_type* %4763, i32 0, i32 1
  %4765 = bitcast %union.FIRST_UNION* %4764 to %struct.anon*
  %4766 = getelementptr inbounds %struct.anon, %struct.anon* %4765, i32 0, i32 0
  %4767 = load i8, i8* %4766, align 1
  %4768 = zext i8 %4767 to i32
  %4769 = call i8* @Image(i32 %4768)
  %4770 = load i32, i32* %subst, align 4
  %4771 = call i8* @Image(i32 %4770)
  %4772 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0), i32 2, %struct.FILE_POS* %4761, i8* %4769, i8* %4771)
  %4773 = load i32, i32* %subst, align 4
  %4774 = trunc i32 %4773 to i8
  %4775 = load %union.rec*, %union.rec** %cover, align 8
  %4776 = bitcast %union.rec* %4775 to %struct.word_type*
  %4777 = getelementptr inbounds %struct.word_type, %struct.word_type* %4776, i32 0, i32 1
  %4778 = bitcast %union.FIRST_UNION* %4777 to %struct.anon*
  %4779 = getelementptr inbounds %struct.anon, %struct.anon* %4778, i32 0, i32 0
  store i8 %4774, i8* %4779, align 1
  br label %5059

; <label>:4780                                    ; preds = %4747, %4737
  %4781 = load i32, i32* %dirn, align 4
  %4782 = sext i32 %4781 to i64
  %4783 = load %union.rec*, %union.rec** %chld, align 8
  %4784 = bitcast %union.rec* %4783 to %struct.word_type*
  %4785 = getelementptr inbounds %struct.word_type, %struct.word_type* %4784, i32 0, i32 3
  %4786 = bitcast %union.THIRD_UNION* %4785 to %struct.anon.6*
  %4787 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4786, i32 0, i32 0
  %4788 = getelementptr inbounds [2 x i32], [2 x i32]* %4787, i32 0, i64 %4782
  %4789 = load i32, i32* %4788, align 4
  %4790 = icmp eq i32 %4789, 0
  br i1 %4790, label %4791, label %4810

; <label>:4791                                    ; preds = %4780
  %4792 = load i32, i32* %dirn, align 4
  %4793 = sext i32 %4792 to i64
  %4794 = load %union.rec*, %union.rec** %chld, align 8
  %4795 = bitcast %union.rec* %4794 to %struct.word_type*
  %4796 = getelementptr inbounds %struct.word_type, %struct.word_type* %4795, i32 0, i32 3
  %4797 = bitcast %union.THIRD_UNION* %4796 to %struct.anon.6*
  %4798 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4797, i32 0, i32 1
  %4799 = getelementptr inbounds [2 x i32], [2 x i32]* %4798, i32 0, i64 %4793
  %4800 = load i32, i32* %4799, align 4
  %4801 = icmp eq i32 %4800, 0
  br i1 %4801, label %4802, label %4810

; <label>:4802                                    ; preds = %4791
  %4803 = load i32, i32* %esubst, align 4
  %4804 = trunc i32 %4803 to i8
  %4805 = load %union.rec*, %union.rec** %cover, align 8
  %4806 = bitcast %union.rec* %4805 to %struct.word_type*
  %4807 = getelementptr inbounds %struct.word_type, %struct.word_type* %4806, i32 0, i32 1
  %4808 = bitcast %union.FIRST_UNION* %4807 to %struct.anon*
  %4809 = getelementptr inbounds %struct.anon, %struct.anon* %4808, i32 0, i32 0
  store i8 %4804, i8* %4809, align 1
  br label %5058

; <label>:4810                                    ; preds = %4791, %4780
  %4811 = load i32, i32* %dirn, align 4
  %4812 = sext i32 %4811 to i64
  %4813 = load %union.rec*, %union.rec** %chld, align 8
  %4814 = bitcast %union.rec* %4813 to %struct.word_type*
  %4815 = getelementptr inbounds %struct.word_type, %struct.word_type* %4814, i32 0, i32 3
  %4816 = bitcast %union.THIRD_UNION* %4815 to %struct.anon.6*
  %4817 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4816, i32 0, i32 0
  %4818 = getelementptr inbounds [2 x i32], [2 x i32]* %4817, i32 0, i64 %4812
  %4819 = load i32, i32* %4818, align 4
  %4820 = icmp eq i32 %4819, 0
  br i1 %4820, label %4832, label %4821

; <label>:4821                                    ; preds = %4810
  %4822 = load i32, i32* %dirn, align 4
  %4823 = sext i32 %4822 to i64
  %4824 = load %union.rec*, %union.rec** %chld, align 8
  %4825 = bitcast %union.rec* %4824 to %struct.word_type*
  %4826 = getelementptr inbounds %struct.word_type, %struct.word_type* %4825, i32 0, i32 3
  %4827 = bitcast %union.THIRD_UNION* %4826 to %struct.anon.6*
  %4828 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4827, i32 0, i32 1
  %4829 = getelementptr inbounds [2 x i32], [2 x i32]* %4828, i32 0, i64 %4823
  %4830 = load i32, i32* %4829, align 4
  %4831 = icmp eq i32 %4830, 0
  br i1 %4831, label %4832, label %4855

; <label>:4832                                    ; preds = %4821, %4810
  %4833 = load %union.rec*, %union.rec** %cover, align 8
  %4834 = bitcast %union.rec* %4833 to %struct.word_type*
  %4835 = getelementptr inbounds %struct.word_type, %struct.word_type* %4834, i32 0, i32 1
  %4836 = bitcast %union.FIRST_UNION* %4835 to %struct.FILE_POS*
  %4837 = load %union.rec*, %union.rec** %cover, align 8
  %4838 = bitcast %union.rec* %4837 to %struct.word_type*
  %4839 = getelementptr inbounds %struct.word_type, %struct.word_type* %4838, i32 0, i32 1
  %4840 = bitcast %union.FIRST_UNION* %4839 to %struct.anon*
  %4841 = getelementptr inbounds %struct.anon, %struct.anon* %4840, i32 0, i32 0
  %4842 = load i8, i8* %4841, align 1
  %4843 = zext i8 %4842 to i32
  %4844 = call i8* @Image(i32 %4843)
  %4845 = load i32, i32* %subst, align 4
  %4846 = call i8* @Image(i32 %4845)
  %4847 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.FILE_POS* %4836, i8* %4844, i8* %4846)
  %4848 = load i32, i32* %subst, align 4
  %4849 = trunc i32 %4848 to i8
  %4850 = load %union.rec*, %union.rec** %cover, align 8
  %4851 = bitcast %union.rec* %4850 to %struct.word_type*
  %4852 = getelementptr inbounds %struct.word_type, %struct.word_type* %4851, i32 0, i32 1
  %4853 = bitcast %union.FIRST_UNION* %4852 to %struct.anon*
  %4854 = getelementptr inbounds %struct.anon, %struct.anon* %4853, i32 0, i32 0
  store i8 %4849, i8* %4854, align 1
  br label %5057

; <label>:4855                                    ; preds = %4821
  %4856 = load i32, i32* %dirn, align 4
  %4857 = sext i32 %4856 to i64
  %4858 = load %union.rec*, %union.rec** %prnt, align 8
  %4859 = bitcast %union.rec* %4858 to %struct.word_type*
  %4860 = getelementptr inbounds %struct.word_type, %struct.word_type* %4859, i32 0, i32 3
  %4861 = bitcast %union.THIRD_UNION* %4860 to %struct.anon.6*
  %4862 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4861, i32 0, i32 0
  %4863 = getelementptr inbounds [2 x i32], [2 x i32]* %4862, i32 0, i64 %4857
  %4864 = load i32, i32* %4863, align 4
  %4865 = load i32, i32* %dirn, align 4
  %4866 = sext i32 %4865 to i64
  %4867 = load %union.rec*, %union.rec** %prnt, align 8
  %4868 = bitcast %union.rec* %4867 to %struct.word_type*
  %4869 = getelementptr inbounds %struct.word_type, %struct.word_type* %4868, i32 0, i32 3
  %4870 = bitcast %union.THIRD_UNION* %4869 to %struct.anon.6*
  %4871 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4870, i32 0, i32 1
  %4872 = getelementptr inbounds [2 x i32], [2 x i32]* %4871, i32 0, i64 %4866
  %4873 = load i32, i32* %4872, align 4
  %4874 = add nsw i32 %4864, %4873
  %4875 = icmp eq i32 %4874, 0
  br i1 %4875, label %4876, label %4899

; <label>:4876                                    ; preds = %4855
  %4877 = load %union.rec*, %union.rec** %cover, align 8
  %4878 = bitcast %union.rec* %4877 to %struct.word_type*
  %4879 = getelementptr inbounds %struct.word_type, %struct.word_type* %4878, i32 0, i32 1
  %4880 = bitcast %union.FIRST_UNION* %4879 to %struct.FILE_POS*
  %4881 = load %union.rec*, %union.rec** %cover, align 8
  %4882 = bitcast %union.rec* %4881 to %struct.word_type*
  %4883 = getelementptr inbounds %struct.word_type, %struct.word_type* %4882, i32 0, i32 1
  %4884 = bitcast %union.FIRST_UNION* %4883 to %struct.anon*
  %4885 = getelementptr inbounds %struct.anon, %struct.anon* %4884, i32 0, i32 0
  %4886 = load i8, i8* %4885, align 1
  %4887 = zext i8 %4886 to i32
  %4888 = call i8* @Image(i32 %4887)
  %4889 = load i32, i32* %subst, align 4
  %4890 = call i8* @Image(i32 %4889)
  %4891 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), i32 2, %struct.FILE_POS* %4880, i8* %4888, i8* %4890)
  %4892 = load i32, i32* %subst, align 4
  %4893 = trunc i32 %4892 to i8
  %4894 = load %union.rec*, %union.rec** %cover, align 8
  %4895 = bitcast %union.rec* %4894 to %struct.word_type*
  %4896 = getelementptr inbounds %struct.word_type, %struct.word_type* %4895, i32 0, i32 1
  %4897 = bitcast %union.FIRST_UNION* %4896 to %struct.anon*
  %4898 = getelementptr inbounds %struct.anon, %struct.anon* %4897, i32 0, i32 0
  store i8 %4893, i8* %4898, align 1
  br label %5056

; <label>:4899                                    ; preds = %4855
  %4900 = load i32, i32* %dirn, align 4
  %4901 = sext i32 %4900 to i64
  %4902 = load %union.rec*, %union.rec** %prnt, align 8
  %4903 = bitcast %union.rec* %4902 to %struct.word_type*
  %4904 = getelementptr inbounds %struct.word_type, %struct.word_type* %4903, i32 0, i32 3
  %4905 = bitcast %union.THIRD_UNION* %4904 to %struct.anon.6*
  %4906 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4905, i32 0, i32 0
  %4907 = getelementptr inbounds [2 x i32], [2 x i32]* %4906, i32 0, i64 %4901
  %4908 = load i32, i32* %4907, align 4
  %4909 = sitofp i32 %4908 to float
  %4910 = load i32, i32* %dirn, align 4
  %4911 = sext i32 %4910 to i64
  %4912 = load %union.rec*, %union.rec** %chld, align 8
  %4913 = bitcast %union.rec* %4912 to %struct.word_type*
  %4914 = getelementptr inbounds %struct.word_type, %struct.word_type* %4913, i32 0, i32 3
  %4915 = bitcast %union.THIRD_UNION* %4914 to %struct.anon.6*
  %4916 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4915, i32 0, i32 0
  %4917 = getelementptr inbounds [2 x i32], [2 x i32]* %4916, i32 0, i64 %4911
  %4918 = load i32, i32* %4917, align 4
  %4919 = sitofp i32 %4918 to float
  %4920 = fdiv float %4909, %4919
  store float %4920, float* %sf1, align 4
  %4921 = load i32, i32* %dirn, align 4
  %4922 = sext i32 %4921 to i64
  %4923 = load %union.rec*, %union.rec** %prnt, align 8
  %4924 = bitcast %union.rec* %4923 to %struct.word_type*
  %4925 = getelementptr inbounds %struct.word_type, %struct.word_type* %4924, i32 0, i32 3
  %4926 = bitcast %union.THIRD_UNION* %4925 to %struct.anon.6*
  %4927 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4926, i32 0, i32 1
  %4928 = getelementptr inbounds [2 x i32], [2 x i32]* %4927, i32 0, i64 %4922
  %4929 = load i32, i32* %4928, align 4
  %4930 = sitofp i32 %4929 to float
  %4931 = load i32, i32* %dirn, align 4
  %4932 = sext i32 %4931 to i64
  %4933 = load %union.rec*, %union.rec** %chld, align 8
  %4934 = bitcast %union.rec* %4933 to %struct.word_type*
  %4935 = getelementptr inbounds %struct.word_type, %struct.word_type* %4934, i32 0, i32 3
  %4936 = bitcast %union.THIRD_UNION* %4935 to %struct.anon.6*
  %4937 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4936, i32 0, i32 1
  %4938 = getelementptr inbounds [2 x i32], [2 x i32]* %4937, i32 0, i64 %4932
  %4939 = load i32, i32* %4938, align 4
  %4940 = sitofp i32 %4939 to float
  %4941 = fdiv float %4930, %4940
  store float %4941, float* %sf2, align 4
  %4942 = load float, float* %sf1, align 4
  %4943 = load float, float* %sf2, align 4
  %4944 = fcmp olt float %4942, %4943
  br i1 %4944, label %4945, label %4947

; <label>:4945                                    ; preds = %4899
  %4946 = load float, float* %sf2, align 4
  br label %4949

; <label>:4947                                    ; preds = %4899
  %4948 = load float, float* %sf1, align 4
  br label %4949

; <label>:4949                                    ; preds = %4947, %4945
  %4950 = phi float [ %4946, %4945 ], [ %4948, %4947 ]
  %4951 = fmul float %4950, 1.280000e+02
  %4952 = fptosi float %4951 to i32
  store i32 %4952, i32* %sf, align 4
  %4953 = load i32, i32* %dirn, align 4
  %4954 = sext i32 %4953 to i64
  %4955 = load %union.rec*, %union.rec** %chld, align 8
  %4956 = bitcast %union.rec* %4955 to %struct.word_type*
  %4957 = getelementptr inbounds %struct.word_type, %struct.word_type* %4956, i32 0, i32 3
  %4958 = bitcast %union.THIRD_UNION* %4957 to %struct.anon.6*
  %4959 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4958, i32 0, i32 0
  %4960 = getelementptr inbounds [2 x i32], [2 x i32]* %4959, i32 0, i64 %4954
  %4961 = load i32, i32* %4960, align 4
  %4962 = load i32, i32* %sf, align 4
  %4963 = mul nsw i32 %4961, %4962
  %4964 = sdiv i32 %4963, 128
  store i32 %4964, i32* %b6, align 4
  %4965 = load i32, i32* %dirn, align 4
  %4966 = sext i32 %4965 to i64
  %4967 = load %union.rec*, %union.rec** %chld, align 8
  %4968 = bitcast %union.rec* %4967 to %struct.word_type*
  %4969 = getelementptr inbounds %struct.word_type, %struct.word_type* %4968, i32 0, i32 3
  %4970 = bitcast %union.THIRD_UNION* %4969 to %struct.anon.6*
  %4971 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4970, i32 0, i32 1
  %4972 = getelementptr inbounds [2 x i32], [2 x i32]* %4971, i32 0, i64 %4966
  %4973 = load i32, i32* %4972, align 4
  %4974 = load i32, i32* %sf, align 4
  %4975 = mul nsw i32 %4973, %4974
  %4976 = sdiv i32 %4975, 128
  store i32 %4976, i32* %f7, align 4
  %4977 = load %union.rec*, %union.rec** %cover, align 8
  %4978 = load i32, i32* %dirn, align 4
  call void @Constrained(%union.rec* %4977, %struct.CONSTRAINT* %c5, i32 %4978, %union.rec** %why)
  %4979 = load i32, i32* %b6, align 4
  %4980 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c5, i32 0, i32 0
  %4981 = load i32, i32* %4980, align 4
  %4982 = icmp sle i32 %4979, %4981
  br i1 %4982, label %4983, label %5032

; <label>:4983                                    ; preds = %4949
  %4984 = load i32, i32* %b6, align 4
  %4985 = load i32, i32* %f7, align 4
  %4986 = add nsw i32 %4984, %4985
  %4987 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c5, i32 0, i32 1
  %4988 = load i32, i32* %4987, align 4
  %4989 = icmp sle i32 %4986, %4988
  br i1 %4989, label %4990, label %5032

; <label>:4990                                    ; preds = %4983
  %4991 = load i32, i32* %f7, align 4
  %4992 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c5, i32 0, i32 2
  %4993 = load i32, i32* %4992, align 4
  %4994 = icmp sle i32 %4991, %4993
  br i1 %4994, label %4995, label %5032

; <label>:4995                                    ; preds = %4990
  %4996 = load %union.rec*, %union.rec** %cover, align 8
  %4997 = bitcast %union.rec* %4996 to %struct.word_type*
  %4998 = getelementptr inbounds %struct.word_type, %struct.word_type* %4997, i32 0, i32 1
  %4999 = bitcast %union.FIRST_UNION* %4998 to %struct.anon*
  %5000 = getelementptr inbounds %struct.anon, %struct.anon* %4999, i32 0, i32 0
  store i8 34, i8* %5000, align 1
  %5001 = load i32, i32* %dirn, align 4
  %5002 = icmp eq i32 %5001, 0
  br i1 %5002, label %5003, label %5015

; <label>:5003                                    ; preds = %4995
  %5004 = load i32, i32* %sf, align 4
  %5005 = load %union.rec*, %union.rec** %cover, align 8
  %5006 = bitcast %union.rec* %5005 to %struct.closure_type*
  %5007 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5006, i32 0, i32 4
  %5008 = bitcast %union.FOURTH_UNION* %5007 to %struct.CONSTRAINT*
  %5009 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5008, i32 0, i32 0
  store i32 %5004, i32* %5009, align 4
  %5010 = load %union.rec*, %union.rec** %cover, align 8
  %5011 = bitcast %union.rec* %5010 to %struct.closure_type*
  %5012 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5011, i32 0, i32 4
  %5013 = bitcast %union.FOURTH_UNION* %5012 to %struct.CONSTRAINT*
  %5014 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5013, i32 0, i32 2
  store i32 128, i32* %5014, align 4
  br label %5027

; <label>:5015                                    ; preds = %4995
  %5016 = load %union.rec*, %union.rec** %cover, align 8
  %5017 = bitcast %union.rec* %5016 to %struct.closure_type*
  %5018 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5017, i32 0, i32 4
  %5019 = bitcast %union.FOURTH_UNION* %5018 to %struct.CONSTRAINT*
  %5020 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5019, i32 0, i32 0
  store i32 128, i32* %5020, align 4
  %5021 = load i32, i32* %sf, align 4
  %5022 = load %union.rec*, %union.rec** %cover, align 8
  %5023 = bitcast %union.rec* %5022 to %struct.closure_type*
  %5024 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5023, i32 0, i32 4
  %5025 = bitcast %union.FOURTH_UNION* %5024 to %struct.CONSTRAINT*
  %5026 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5025, i32 0, i32 2
  store i32 %5021, i32* %5026, align 4
  br label %5027

; <label>:5027                                    ; preds = %5015, %5003
  %5028 = load %union.rec*, %union.rec** %cover, align 8
  %5029 = load i32, i32* %b6, align 4
  %5030 = load i32, i32* %f7, align 4
  %5031 = load i32, i32* %dirn, align 4
  call void @AdjustSize(%union.rec* %5028, i32 %5029, i32 %5030, i32 %5031)
  br label %5055

; <label>:5032                                    ; preds = %4990, %4983, %4949
  %5033 = load %union.rec*, %union.rec** %cover, align 8
  %5034 = bitcast %union.rec* %5033 to %struct.word_type*
  %5035 = getelementptr inbounds %struct.word_type, %struct.word_type* %5034, i32 0, i32 1
  %5036 = bitcast %union.FIRST_UNION* %5035 to %struct.FILE_POS*
  %5037 = load %union.rec*, %union.rec** %cover, align 8
  %5038 = bitcast %union.rec* %5037 to %struct.word_type*
  %5039 = getelementptr inbounds %struct.word_type, %struct.word_type* %5038, i32 0, i32 1
  %5040 = bitcast %union.FIRST_UNION* %5039 to %struct.anon*
  %5041 = getelementptr inbounds %struct.anon, %struct.anon* %5040, i32 0, i32 0
  %5042 = load i8, i8* %5041, align 1
  %5043 = zext i8 %5042 to i32
  %5044 = call i8* @Image(i32 %5043)
  %5045 = load i32, i32* %subst, align 4
  %5046 = call i8* @Image(i32 %5045)
  %5047 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* %5036, i8* %5044, i8* %5046)
  %5048 = load i32, i32* %subst, align 4
  %5049 = trunc i32 %5048 to i8
  %5050 = load %union.rec*, %union.rec** %cover, align 8
  %5051 = bitcast %union.rec* %5050 to %struct.word_type*
  %5052 = getelementptr inbounds %struct.word_type, %struct.word_type* %5051, i32 0, i32 1
  %5053 = bitcast %union.FIRST_UNION* %5052 to %struct.anon*
  %5054 = getelementptr inbounds %struct.anon, %struct.anon* %5053, i32 0, i32 0
  store i8 %5049, i8* %5054, align 1
  br label %5055

; <label>:5055                                    ; preds = %5032, %5027
  br label %5056

; <label>:5056                                    ; preds = %5055, %4876
  br label %5057

; <label>:5057                                    ; preds = %5056, %4832
  br label %5058

; <label>:5058                                    ; preds = %5057, %4802
  br label %5059

; <label>:5059                                    ; preds = %5058, %4757
  br label %5071

; <label>:5060                                    ; preds = %3990
  %5061 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5062 = load %union.rec*, %union.rec** %z, align 8
  %5063 = bitcast %union.rec* %5062 to %struct.word_type*
  %5064 = getelementptr inbounds %struct.word_type, %struct.word_type* %5063, i32 0, i32 1
  %5065 = bitcast %union.FIRST_UNION* %5064 to %struct.anon*
  %5066 = getelementptr inbounds %struct.anon, %struct.anon* %5065, i32 0, i32 0
  %5067 = load i8, i8* %5066, align 1
  %5068 = zext i8 %5067 to i32
  %5069 = call i8* @Image(i32 %5068)
  %5070 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32 0, %struct.FILE_POS* %5061, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* %5069)
  br label %5071

; <label>:5071                                    ; preds = %5060, %5059, %4587, %4586, %4343, %4106
  br label %5072

; <label>:5072                                    ; preds = %5071
  %5073 = load %union.rec*, %union.rec** %zlink, align 8
  %5074 = bitcast %union.rec* %5073 to %struct.word_type*
  %5075 = getelementptr inbounds %struct.word_type, %struct.word_type* %5074, i32 0, i32 0
  %5076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5075, i32 0, i64 0
  %5077 = getelementptr inbounds %struct.LIST, %struct.LIST* %5076, i32 0, i32 1
  %5078 = load %union.rec*, %union.rec** %5077, align 8
  store %union.rec* %5078, %union.rec** %zlink, align 8
  br label %3962

; <label>:5079                                    ; preds = %3962
  %5080 = load %union.rec*, %union.rec** %extras, align 8
  %5081 = bitcast %union.rec* %5080 to %struct.word_type*
  %5082 = getelementptr inbounds %struct.word_type, %struct.word_type* %5081, i32 0, i32 0
  %5083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5082, i32 0, i64 0
  %5084 = getelementptr inbounds %struct.LIST, %struct.LIST* %5083, i32 0, i32 1
  %5085 = load %union.rec*, %union.rec** %5084, align 8
  store %union.rec* %5085, %union.rec** %xxstart8, align 8
  %5086 = load %union.rec*, %union.rec** %extras, align 8
  store %union.rec* %5086, %union.rec** %xxstop9, align 8
  %5087 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %5087, %union.rec** %xxdest10, align 8
  %5088 = load %union.rec*, %union.rec** %xxstart8, align 8
  %5089 = load %union.rec*, %union.rec** %xxstop9, align 8
  %5090 = icmp ne %union.rec* %5088, %5089
  br i1 %5090, label %5091, label %5216

; <label>:5091                                    ; preds = %5079
  %5092 = load %union.rec*, %union.rec** %xxstart8, align 8
  %5093 = bitcast %union.rec* %5092 to %struct.word_type*
  %5094 = getelementptr inbounds %struct.word_type, %struct.word_type* %5093, i32 0, i32 1
  %5095 = bitcast %union.FIRST_UNION* %5094 to %struct.anon*
  %5096 = getelementptr inbounds %struct.anon, %struct.anon* %5095, i32 0, i32 0
  %5097 = load i8, i8* %5096, align 1
  %5098 = zext i8 %5097 to i32
  %5099 = icmp eq i32 %5098, 0
  br i1 %5099, label %5103, label %5100

; <label>:5100                                    ; preds = %5091
  %5101 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5102 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %5103

; <label>:5103                                    ; preds = %5100, %5091
  %5104 = load %union.rec*, %union.rec** %xxstart8, align 8
  store %union.rec* %5104, %union.rec** @zz_res, align 8
  %5105 = load %union.rec*, %union.rec** %xxstop9, align 8
  store %union.rec* %5105, %union.rec** @zz_hold, align 8
  %5106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5107 = icmp eq %union.rec* %5106, null
  br i1 %5107, label %5108, label %5110

; <label>:5108                                    ; preds = %5103
  %5109 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5158

; <label>:5110                                    ; preds = %5103
  %5111 = load %union.rec*, %union.rec** @zz_res, align 8
  %5112 = icmp eq %union.rec* %5111, null
  br i1 %5112, label %5113, label %5115

; <label>:5113                                    ; preds = %5110
  %5114 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5156

; <label>:5115                                    ; preds = %5110
  %5116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5117 = bitcast %union.rec* %5116 to %struct.word_type*
  %5118 = getelementptr inbounds %struct.word_type, %struct.word_type* %5117, i32 0, i32 0
  %5119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5118, i32 0, i64 0
  %5120 = getelementptr inbounds %struct.LIST, %struct.LIST* %5119, i32 0, i32 0
  %5121 = load %union.rec*, %union.rec** %5120, align 8
  store %union.rec* %5121, %union.rec** @zz_tmp, align 8
  %5122 = load %union.rec*, %union.rec** @zz_res, align 8
  %5123 = bitcast %union.rec* %5122 to %struct.word_type*
  %5124 = getelementptr inbounds %struct.word_type, %struct.word_type* %5123, i32 0, i32 0
  %5125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5124, i32 0, i64 0
  %5126 = getelementptr inbounds %struct.LIST, %struct.LIST* %5125, i32 0, i32 0
  %5127 = load %union.rec*, %union.rec** %5126, align 8
  %5128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5129 = bitcast %union.rec* %5128 to %struct.word_type*
  %5130 = getelementptr inbounds %struct.word_type, %struct.word_type* %5129, i32 0, i32 0
  %5131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5130, i32 0, i64 0
  %5132 = getelementptr inbounds %struct.LIST, %struct.LIST* %5131, i32 0, i32 0
  store %union.rec* %5127, %union.rec** %5132, align 8
  %5133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5134 = load %union.rec*, %union.rec** @zz_res, align 8
  %5135 = bitcast %union.rec* %5134 to %struct.word_type*
  %5136 = getelementptr inbounds %struct.word_type, %struct.word_type* %5135, i32 0, i32 0
  %5137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5136, i32 0, i64 0
  %5138 = getelementptr inbounds %struct.LIST, %struct.LIST* %5137, i32 0, i32 0
  %5139 = load %union.rec*, %union.rec** %5138, align 8
  %5140 = bitcast %union.rec* %5139 to %struct.word_type*
  %5141 = getelementptr inbounds %struct.word_type, %struct.word_type* %5140, i32 0, i32 0
  %5142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5141, i32 0, i64 0
  %5143 = getelementptr inbounds %struct.LIST, %struct.LIST* %5142, i32 0, i32 1
  store %union.rec* %5133, %union.rec** %5143, align 8
  %5144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5145 = load %union.rec*, %union.rec** @zz_res, align 8
  %5146 = bitcast %union.rec* %5145 to %struct.word_type*
  %5147 = getelementptr inbounds %struct.word_type, %struct.word_type* %5146, i32 0, i32 0
  %5148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5147, i32 0, i64 0
  %5149 = getelementptr inbounds %struct.LIST, %struct.LIST* %5148, i32 0, i32 0
  store %union.rec* %5144, %union.rec** %5149, align 8
  %5150 = load %union.rec*, %union.rec** @zz_res, align 8
  %5151 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5152 = bitcast %union.rec* %5151 to %struct.word_type*
  %5153 = getelementptr inbounds %struct.word_type, %struct.word_type* %5152, i32 0, i32 0
  %5154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5153, i32 0, i64 0
  %5155 = getelementptr inbounds %struct.LIST, %struct.LIST* %5154, i32 0, i32 1
  store %union.rec* %5150, %union.rec** %5155, align 8
  br label %5156

; <label>:5156                                    ; preds = %5115, %5113
  %5157 = phi %union.rec* [ %5114, %5113 ], [ %5150, %5115 ]
  br label %5158

; <label>:5158                                    ; preds = %5156, %5108
  %5159 = phi %union.rec* [ %5109, %5108 ], [ %5157, %5156 ]
  %5160 = load %union.rec*, %union.rec** %xxstart8, align 8
  store %union.rec* %5160, %union.rec** @zz_res, align 8
  %5161 = load %union.rec*, %union.rec** %xxdest10, align 8
  store %union.rec* %5161, %union.rec** @zz_hold, align 8
  %5162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5163 = icmp eq %union.rec* %5162, null
  br i1 %5163, label %5164, label %5166

; <label>:5164                                    ; preds = %5158
  %5165 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5214

; <label>:5166                                    ; preds = %5158
  %5167 = load %union.rec*, %union.rec** @zz_res, align 8
  %5168 = icmp eq %union.rec* %5167, null
  br i1 %5168, label %5169, label %5171

; <label>:5169                                    ; preds = %5166
  %5170 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5212

; <label>:5171                                    ; preds = %5166
  %5172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5173 = bitcast %union.rec* %5172 to %struct.word_type*
  %5174 = getelementptr inbounds %struct.word_type, %struct.word_type* %5173, i32 0, i32 0
  %5175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5174, i32 0, i64 0
  %5176 = getelementptr inbounds %struct.LIST, %struct.LIST* %5175, i32 0, i32 0
  %5177 = load %union.rec*, %union.rec** %5176, align 8
  store %union.rec* %5177, %union.rec** @zz_tmp, align 8
  %5178 = load %union.rec*, %union.rec** @zz_res, align 8
  %5179 = bitcast %union.rec* %5178 to %struct.word_type*
  %5180 = getelementptr inbounds %struct.word_type, %struct.word_type* %5179, i32 0, i32 0
  %5181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5180, i32 0, i64 0
  %5182 = getelementptr inbounds %struct.LIST, %struct.LIST* %5181, i32 0, i32 0
  %5183 = load %union.rec*, %union.rec** %5182, align 8
  %5184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5185 = bitcast %union.rec* %5184 to %struct.word_type*
  %5186 = getelementptr inbounds %struct.word_type, %struct.word_type* %5185, i32 0, i32 0
  %5187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5186, i32 0, i64 0
  %5188 = getelementptr inbounds %struct.LIST, %struct.LIST* %5187, i32 0, i32 0
  store %union.rec* %5183, %union.rec** %5188, align 8
  %5189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5190 = load %union.rec*, %union.rec** @zz_res, align 8
  %5191 = bitcast %union.rec* %5190 to %struct.word_type*
  %5192 = getelementptr inbounds %struct.word_type, %struct.word_type* %5191, i32 0, i32 0
  %5193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5192, i32 0, i64 0
  %5194 = getelementptr inbounds %struct.LIST, %struct.LIST* %5193, i32 0, i32 0
  %5195 = load %union.rec*, %union.rec** %5194, align 8
  %5196 = bitcast %union.rec* %5195 to %struct.word_type*
  %5197 = getelementptr inbounds %struct.word_type, %struct.word_type* %5196, i32 0, i32 0
  %5198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5197, i32 0, i64 0
  %5199 = getelementptr inbounds %struct.LIST, %struct.LIST* %5198, i32 0, i32 1
  store %union.rec* %5189, %union.rec** %5199, align 8
  %5200 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5201 = load %union.rec*, %union.rec** @zz_res, align 8
  %5202 = bitcast %union.rec* %5201 to %struct.word_type*
  %5203 = getelementptr inbounds %struct.word_type, %struct.word_type* %5202, i32 0, i32 0
  %5204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5203, i32 0, i64 0
  %5205 = getelementptr inbounds %struct.LIST, %struct.LIST* %5204, i32 0, i32 0
  store %union.rec* %5200, %union.rec** %5205, align 8
  %5206 = load %union.rec*, %union.rec** @zz_res, align 8
  %5207 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5208 = bitcast %union.rec* %5207 to %struct.word_type*
  %5209 = getelementptr inbounds %struct.word_type, %struct.word_type* %5208, i32 0, i32 0
  %5210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5209, i32 0, i64 0
  %5211 = getelementptr inbounds %struct.LIST, %struct.LIST* %5210, i32 0, i32 1
  store %union.rec* %5206, %union.rec** %5211, align 8
  br label %5212

; <label>:5212                                    ; preds = %5171, %5169
  %5213 = phi %union.rec* [ %5170, %5169 ], [ %5206, %5171 ]
  br label %5214

; <label>:5214                                    ; preds = %5212, %5164
  %5215 = phi %union.rec* [ %5165, %5164 ], [ %5213, %5212 ]
  br label %5216

; <label>:5216                                    ; preds = %5214, %5079
  %5217 = load %union.rec*, %union.rec** %extras, align 8
  %5218 = bitcast %union.rec* %5217 to %struct.word_type*
  %5219 = getelementptr inbounds %struct.word_type, %struct.word_type* %5218, i32 0, i32 0
  %5220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5219, i32 0, i64 0
  %5221 = getelementptr inbounds %struct.LIST, %struct.LIST* %5220, i32 0, i32 1
  %5222 = load %union.rec*, %union.rec** %5221, align 8
  %5223 = load %union.rec*, %union.rec** %extras, align 8
  %5224 = icmp eq %union.rec* %5222, %5223
  br i1 %5224, label %5225, label %5234

; <label>:5225                                    ; preds = %5216
  %5226 = load %union.rec*, %union.rec** %extras, align 8
  %5227 = bitcast %union.rec* %5226 to %struct.word_type*
  %5228 = getelementptr inbounds %struct.word_type, %struct.word_type* %5227, i32 0, i32 0
  %5229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5228, i32 0, i64 1
  %5230 = getelementptr inbounds %struct.LIST, %struct.LIST* %5229, i32 0, i32 1
  %5231 = load %union.rec*, %union.rec** %5230, align 8
  %5232 = load %union.rec*, %union.rec** %extras, align 8
  %5233 = icmp eq %union.rec* %5231, %5232
  br i1 %5233, label %5237, label %5234

; <label>:5234                                    ; preds = %5225, %5216
  %5235 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5236 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  br label %5237

; <label>:5237                                    ; preds = %5234, %5225
  %5238 = load %union.rec*, %union.rec** %extras, align 8
  store %union.rec* %5238, %union.rec** @zz_hold, align 8
  %5239 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %5239, %union.rec** @zz_hold, align 8
  %5240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5241 = bitcast %union.rec* %5240 to %struct.word_type*
  %5242 = getelementptr inbounds %struct.word_type, %struct.word_type* %5241, i32 0, i32 1
  %5243 = bitcast %union.FIRST_UNION* %5242 to %struct.anon*
  %5244 = getelementptr inbounds %struct.anon, %struct.anon* %5243, i32 0, i32 0
  %5245 = load i8, i8* %5244, align 1
  %5246 = zext i8 %5245 to i32
  %5247 = icmp eq i32 %5246, 11
  br i1 %5247, label %5257, label %5248

; <label>:5248                                    ; preds = %5237
  %5249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5250 = bitcast %union.rec* %5249 to %struct.word_type*
  %5251 = getelementptr inbounds %struct.word_type, %struct.word_type* %5250, i32 0, i32 1
  %5252 = bitcast %union.FIRST_UNION* %5251 to %struct.anon*
  %5253 = getelementptr inbounds %struct.anon, %struct.anon* %5252, i32 0, i32 0
  %5254 = load i8, i8* %5253, align 1
  %5255 = zext i8 %5254 to i32
  %5256 = icmp eq i32 %5255, 12
  br i1 %5256, label %5257, label %5265

; <label>:5257                                    ; preds = %5248, %5237
  %5258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5259 = bitcast %union.rec* %5258 to %struct.word_type*
  %5260 = getelementptr inbounds %struct.word_type, %struct.word_type* %5259, i32 0, i32 1
  %5261 = bitcast %union.FIRST_UNION* %5260 to %struct.anon*
  %5262 = getelementptr inbounds %struct.anon, %struct.anon* %5261, i32 0, i32 1
  %5263 = load i8, i8* %5262, align 1
  %5264 = zext i8 %5263 to i32
  br label %5276

; <label>:5265                                    ; preds = %5248
  %5266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5267 = bitcast %union.rec* %5266 to %struct.word_type*
  %5268 = getelementptr inbounds %struct.word_type, %struct.word_type* %5267, i32 0, i32 1
  %5269 = bitcast %union.FIRST_UNION* %5268 to %struct.anon*
  %5270 = getelementptr inbounds %struct.anon, %struct.anon* %5269, i32 0, i32 0
  %5271 = load i8, i8* %5270, align 1
  %5272 = zext i8 %5271 to i64
  %5273 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %5272
  %5274 = load i8, i8* %5273, align 1
  %5275 = zext i8 %5274 to i32
  br label %5276

; <label>:5276                                    ; preds = %5265, %5257
  %5277 = phi i32 [ %5264, %5257 ], [ %5275, %5265 ]
  store i32 %5277, i32* @zz_size, align 4
  %5278 = load i32, i32* @zz_size, align 4
  %5279 = sext i32 %5278 to i64
  %5280 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5279
  %5281 = load %union.rec*, %union.rec** %5280, align 8
  %5282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5283 = bitcast %union.rec* %5282 to %struct.word_type*
  %5284 = getelementptr inbounds %struct.word_type, %struct.word_type* %5283, i32 0, i32 0
  %5285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5284, i32 0, i64 0
  %5286 = getelementptr inbounds %struct.LIST, %struct.LIST* %5285, i32 0, i32 0
  store %union.rec* %5281, %union.rec** %5286, align 8
  %5287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5288 = load i32, i32* @zz_size, align 4
  %5289 = sext i32 %5288 to i64
  %5290 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %5289
  store %union.rec* %5287, %union.rec** %5290, align 8
  br label %5291

; <label>:5291                                    ; preds = %5276, %3893
  %5292 = load %union.rec*, %union.rec** %link, align 8
  %5293 = bitcast %union.rec* %5292 to %struct.word_type*
  %5294 = getelementptr inbounds %struct.word_type, %struct.word_type* %5293, i32 0, i32 0
  %5295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5294, i32 0, i64 0
  %5296 = getelementptr inbounds %struct.LIST, %struct.LIST* %5295, i32 0, i32 1
  %5297 = load %union.rec*, %union.rec** %5296, align 8
  store %union.rec* %5297, %union.rec** %link, align 8
  br label %3838

; <label>:5298                                    ; preds = %3838
  %5299 = load %union.rec*, %union.rec** %crs, align 8
  %5300 = icmp ne %union.rec* %5299, null
  br i1 %5300, label %5301, label %5446

; <label>:5301                                    ; preds = %5298
  %5302 = load %union.rec*, %union.rec** %crs, align 8
  %5303 = bitcast %union.rec* %5302 to %struct.word_type*
  %5304 = getelementptr inbounds %struct.word_type, %struct.word_type* %5303, i32 0, i32 0
  %5305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5304, i32 0, i64 0
  %5306 = getelementptr inbounds %struct.LIST, %struct.LIST* %5305, i32 0, i32 1
  %5307 = load %union.rec*, %union.rec** %5306, align 8
  store %union.rec* %5307, %union.rec** %xxstart11, align 8
  %5308 = load %union.rec*, %union.rec** %crs, align 8
  store %union.rec* %5308, %union.rec** %xxstop12, align 8
  %5309 = load %union.rec*, %union.rec** %1, align 8
  %5310 = bitcast %union.rec* %5309 to %struct.word_type*
  %5311 = getelementptr inbounds %struct.word_type, %struct.word_type* %5310, i32 0, i32 0
  %5312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5311, i32 0, i64 0
  %5313 = getelementptr inbounds %struct.LIST, %struct.LIST* %5312, i32 0, i32 1
  %5314 = load %union.rec*, %union.rec** %5313, align 8
  store %union.rec* %5314, %union.rec** %xxdest13, align 8
  %5315 = load %union.rec*, %union.rec** %xxstart11, align 8
  %5316 = load %union.rec*, %union.rec** %xxstop12, align 8
  %5317 = icmp ne %union.rec* %5315, %5316
  br i1 %5317, label %5318, label %5443

; <label>:5318                                    ; preds = %5301
  %5319 = load %union.rec*, %union.rec** %xxstart11, align 8
  %5320 = bitcast %union.rec* %5319 to %struct.word_type*
  %5321 = getelementptr inbounds %struct.word_type, %struct.word_type* %5320, i32 0, i32 1
  %5322 = bitcast %union.FIRST_UNION* %5321 to %struct.anon*
  %5323 = getelementptr inbounds %struct.anon, %struct.anon* %5322, i32 0, i32 0
  %5324 = load i8, i8* %5323, align 1
  %5325 = zext i8 %5324 to i32
  %5326 = icmp eq i32 %5325, 0
  br i1 %5326, label %5330, label %5327

; <label>:5327                                    ; preds = %5318
  %5328 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5329 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5328, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %5330

; <label>:5330                                    ; preds = %5327, %5318
  %5331 = load %union.rec*, %union.rec** %xxstart11, align 8
  store %union.rec* %5331, %union.rec** @zz_res, align 8
  %5332 = load %union.rec*, %union.rec** %xxstop12, align 8
  store %union.rec* %5332, %union.rec** @zz_hold, align 8
  %5333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5334 = icmp eq %union.rec* %5333, null
  br i1 %5334, label %5335, label %5337

; <label>:5335                                    ; preds = %5330
  %5336 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5385

; <label>:5337                                    ; preds = %5330
  %5338 = load %union.rec*, %union.rec** @zz_res, align 8
  %5339 = icmp eq %union.rec* %5338, null
  br i1 %5339, label %5340, label %5342

; <label>:5340                                    ; preds = %5337
  %5341 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5383

; <label>:5342                                    ; preds = %5337
  %5343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5344 = bitcast %union.rec* %5343 to %struct.word_type*
  %5345 = getelementptr inbounds %struct.word_type, %struct.word_type* %5344, i32 0, i32 0
  %5346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5345, i32 0, i64 0
  %5347 = getelementptr inbounds %struct.LIST, %struct.LIST* %5346, i32 0, i32 0
  %5348 = load %union.rec*, %union.rec** %5347, align 8
  store %union.rec* %5348, %union.rec** @zz_tmp, align 8
  %5349 = load %union.rec*, %union.rec** @zz_res, align 8
  %5350 = bitcast %union.rec* %5349 to %struct.word_type*
  %5351 = getelementptr inbounds %struct.word_type, %struct.word_type* %5350, i32 0, i32 0
  %5352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5351, i32 0, i64 0
  %5353 = getelementptr inbounds %struct.LIST, %struct.LIST* %5352, i32 0, i32 0
  %5354 = load %union.rec*, %union.rec** %5353, align 8
  %5355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5356 = bitcast %union.rec* %5355 to %struct.word_type*
  %5357 = getelementptr inbounds %struct.word_type, %struct.word_type* %5356, i32 0, i32 0
  %5358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5357, i32 0, i64 0
  %5359 = getelementptr inbounds %struct.LIST, %struct.LIST* %5358, i32 0, i32 0
  store %union.rec* %5354, %union.rec** %5359, align 8
  %5360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5361 = load %union.rec*, %union.rec** @zz_res, align 8
  %5362 = bitcast %union.rec* %5361 to %struct.word_type*
  %5363 = getelementptr inbounds %struct.word_type, %struct.word_type* %5362, i32 0, i32 0
  %5364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5363, i32 0, i64 0
  %5365 = getelementptr inbounds %struct.LIST, %struct.LIST* %5364, i32 0, i32 0
  %5366 = load %union.rec*, %union.rec** %5365, align 8
  %5367 = bitcast %union.rec* %5366 to %struct.word_type*
  %5368 = getelementptr inbounds %struct.word_type, %struct.word_type* %5367, i32 0, i32 0
  %5369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5368, i32 0, i64 0
  %5370 = getelementptr inbounds %struct.LIST, %struct.LIST* %5369, i32 0, i32 1
  store %union.rec* %5360, %union.rec** %5370, align 8
  %5371 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5372 = load %union.rec*, %union.rec** @zz_res, align 8
  %5373 = bitcast %union.rec* %5372 to %struct.word_type*
  %5374 = getelementptr inbounds %struct.word_type, %struct.word_type* %5373, i32 0, i32 0
  %5375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5374, i32 0, i64 0
  %5376 = getelementptr inbounds %struct.LIST, %struct.LIST* %5375, i32 0, i32 0
  store %union.rec* %5371, %union.rec** %5376, align 8
  %5377 = load %union.rec*, %union.rec** @zz_res, align 8
  %5378 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5379 = bitcast %union.rec* %5378 to %struct.word_type*
  %5380 = getelementptr inbounds %struct.word_type, %struct.word_type* %5379, i32 0, i32 0
  %5381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5380, i32 0, i64 0
  %5382 = getelementptr inbounds %struct.LIST, %struct.LIST* %5381, i32 0, i32 1
  store %union.rec* %5377, %union.rec** %5382, align 8
  br label %5383

; <label>:5383                                    ; preds = %5342, %5340
  %5384 = phi %union.rec* [ %5341, %5340 ], [ %5377, %5342 ]
  br label %5385

; <label>:5385                                    ; preds = %5383, %5335
  %5386 = phi %union.rec* [ %5336, %5335 ], [ %5384, %5383 ]
  %5387 = load %union.rec*, %union.rec** %xxstart11, align 8
  store %union.rec* %5387, %union.rec** @zz_res, align 8
  %5388 = load %union.rec*, %union.rec** %xxdest13, align 8
  store %union.rec* %5388, %union.rec** @zz_hold, align 8
  %5389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5390 = icmp eq %union.rec* %5389, null
  br i1 %5390, label %5391, label %5393

; <label>:5391                                    ; preds = %5385
  %5392 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %5441

; <label>:5393                                    ; preds = %5385
  %5394 = load %union.rec*, %union.rec** @zz_res, align 8
  %5395 = icmp eq %union.rec* %5394, null
  br i1 %5395, label %5396, label %5398

; <label>:5396                                    ; preds = %5393
  %5397 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %5439

; <label>:5398                                    ; preds = %5393
  %5399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5400 = bitcast %union.rec* %5399 to %struct.word_type*
  %5401 = getelementptr inbounds %struct.word_type, %struct.word_type* %5400, i32 0, i32 0
  %5402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5401, i32 0, i64 0
  %5403 = getelementptr inbounds %struct.LIST, %struct.LIST* %5402, i32 0, i32 0
  %5404 = load %union.rec*, %union.rec** %5403, align 8
  store %union.rec* %5404, %union.rec** @zz_tmp, align 8
  %5405 = load %union.rec*, %union.rec** @zz_res, align 8
  %5406 = bitcast %union.rec* %5405 to %struct.word_type*
  %5407 = getelementptr inbounds %struct.word_type, %struct.word_type* %5406, i32 0, i32 0
  %5408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5407, i32 0, i64 0
  %5409 = getelementptr inbounds %struct.LIST, %struct.LIST* %5408, i32 0, i32 0
  %5410 = load %union.rec*, %union.rec** %5409, align 8
  %5411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5412 = bitcast %union.rec* %5411 to %struct.word_type*
  %5413 = getelementptr inbounds %struct.word_type, %struct.word_type* %5412, i32 0, i32 0
  %5414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5413, i32 0, i64 0
  %5415 = getelementptr inbounds %struct.LIST, %struct.LIST* %5414, i32 0, i32 0
  store %union.rec* %5410, %union.rec** %5415, align 8
  %5416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %5417 = load %union.rec*, %union.rec** @zz_res, align 8
  %5418 = bitcast %union.rec* %5417 to %struct.word_type*
  %5419 = getelementptr inbounds %struct.word_type, %struct.word_type* %5418, i32 0, i32 0
  %5420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5419, i32 0, i64 0
  %5421 = getelementptr inbounds %struct.LIST, %struct.LIST* %5420, i32 0, i32 0
  %5422 = load %union.rec*, %union.rec** %5421, align 8
  %5423 = bitcast %union.rec* %5422 to %struct.word_type*
  %5424 = getelementptr inbounds %struct.word_type, %struct.word_type* %5423, i32 0, i32 0
  %5425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5424, i32 0, i64 0
  %5426 = getelementptr inbounds %struct.LIST, %struct.LIST* %5425, i32 0, i32 1
  store %union.rec* %5416, %union.rec** %5426, align 8
  %5427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5428 = load %union.rec*, %union.rec** @zz_res, align 8
  %5429 = bitcast %union.rec* %5428 to %struct.word_type*
  %5430 = getelementptr inbounds %struct.word_type, %struct.word_type* %5429, i32 0, i32 0
  %5431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5430, i32 0, i64 0
  %5432 = getelementptr inbounds %struct.LIST, %struct.LIST* %5431, i32 0, i32 0
  store %union.rec* %5427, %union.rec** %5432, align 8
  %5433 = load %union.rec*, %union.rec** @zz_res, align 8
  %5434 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %5435 = bitcast %union.rec* %5434 to %struct.word_type*
  %5436 = getelementptr inbounds %struct.word_type, %struct.word_type* %5435, i32 0, i32 0
  %5437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5436, i32 0, i64 0
  %5438 = getelementptr inbounds %struct.LIST, %struct.LIST* %5437, i32 0, i32 1
  store %union.rec* %5433, %union.rec** %5438, align 8
  br label %5439

; <label>:5439                                    ; preds = %5398, %5396
  %5440 = phi %union.rec* [ %5397, %5396 ], [ %5433, %5398 ]
  br label %5441

; <label>:5441                                    ; preds = %5439, %5391
  %5442 = phi %union.rec* [ %5392, %5391 ], [ %5440, %5439 ]
  br label %5443

; <label>:5443                                    ; preds = %5441, %5301
  %5444 = load %union.rec*, %union.rec** %crs, align 8
  %5445 = call i32 @DisposeObject(%union.rec* %5444)
  br label %5446

; <label>:5446                                    ; preds = %5443, %5298
  %5447 = load %union.rec*, %union.rec** %9, align 8
  %5448 = icmp ne %union.rec* %5447, null
  br i1 %5448, label %5449, label %5466

; <label>:5449                                    ; preds = %5446
  %5450 = load %union.rec**, %union.rec*** %10, align 8
  %5451 = load %union.rec*, %union.rec** %5450, align 8
  %5452 = icmp eq %union.rec* %5451, null
  br i1 %5452, label %5453, label %5466

; <label>:5453                                    ; preds = %5449
  %5454 = load %union.rec*, %union.rec** %1, align 8
  %5455 = bitcast %union.rec* %5454 to %struct.word_type*
  %5456 = getelementptr inbounds %struct.word_type, %struct.word_type* %5455, i32 0, i32 1
  %5457 = bitcast %union.FIRST_UNION* %5456 to %struct.FILE_POS*
  %5458 = load %union.rec*, %union.rec** %9, align 8
  %5459 = call i8* @SymName(%union.rec* %5458)
  %5460 = load %union.rec*, %union.rec** %1, align 8
  %5461 = bitcast %union.rec* %5460 to %struct.closure_type*
  %5462 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5461, i32 0, i32 5
  %5463 = load %union.rec*, %union.rec** %5462, align 8
  %5464 = call i8* @SymName(%union.rec* %5463)
  %5465 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %5457, i8* %5459, i8* %5464)
  br label %5466

; <label>:5466                                    ; preds = %5453, %5449, %5446
  %5467 = load %union.rec*, %union.rec** %1, align 8
  %5468 = bitcast %union.rec* %5467 to %struct.word_type*
  %5469 = getelementptr inbounds %struct.word_type, %struct.word_type* %5468, i32 0, i32 2
  %5470 = bitcast %union.SECOND_UNION* %5469 to %struct.anon.2*
  %5471 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5470, i32 0, i32 2
  %5472 = load i16, i16* %5471, align 2
  %5473 = and i16 %5472, -3
  %5474 = or i16 %5473, 2
  store i16 %5474, i16* %5471, align 2
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @FindOptimize(%union.rec*, %union.rec*) #1

declare void @SetOptimize(%union.rec*, %struct.STYLE*) #1

declare %union.rec* @Manifest(%union.rec*, %union.rec*, %struct.STYLE*, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32, i32, %union.rec**, i32) #1

declare i8* @SymName(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @MinSize(%union.rec*, i32, %union.rec**) #1

declare %union.rec* @BreakObject(%union.rec*, %struct.CONSTRAINT*) #1

declare i8* @EchoLength(i32) #1

declare %union.rec* @Hyphenate(%union.rec*) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

declare i8* @Image(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
