; ModuleID = 'z35.c'
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@MomentSym = global %union.rec* null, align 8
@time_string = internal global [30 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"@Moment\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@StartSym = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@Second\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"@Minute\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"@Hour\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"@Day\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"@Month\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"@Year\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"@Century\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"@WeekDay\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"@YearDay\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"@DaylightSaving\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"unable to obtain the current time\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@current_moment = internal global %union.rec* null, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"%.2d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"StartMoment: current_moment == nilobj!\00", align 1

; Function Attrs: nounwind uwtable
define i8* @TimeString() #0 {
  ret i8* getelementptr inbounds ([30 x i8], [30 x i8]* @time_string, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @InitTime() #0 {
  %raw_time = alloca i64, align 8
  %now = alloca %struct.tm*, align 8
  %buff = alloca [20 x i8], align 16
  %par = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %second = alloca %union.rec*, align 8
  %minute = alloca %union.rec*, align 8
  %hour = alloca %union.rec*, align 8
  %weekday = alloca %union.rec*, align 8
  %monthday = alloca %union.rec*, align 8
  %yearday = alloca %union.rec*, align 8
  %month = alloca %union.rec*, align 8
  %year = alloca %union.rec*, align 8
  %century = alloca %union.rec*, align 8
  %dst = alloca %union.rec*, align 8
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2 = load %union.rec*, %union.rec** @StartSym, align 8
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %3)
  %5 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 zeroext -113, %struct.FILE_POS* %1, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %2, %union.rec* %4)
  store %union.rec* %5, %union.rec** %sym, align 8
  store %union.rec* %5, %union.rec** @MomentSym, align 8
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = load %union.rec*, %union.rec** @MomentSym, align 8
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %8)
  %10 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %6, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %7, %union.rec* %9)
  store %union.rec* %10, %union.rec** %sym, align 8
  store %union.rec* %10, %union.rec** %tag, align 8
  %11 = load %union.rec*, %union.rec** %sym, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 2
  %14 = bitcast %union.SECOND_UNION* %13 to %struct.anon.5*
  %15 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %14, i32 0, i32 1
  %16 = bitcast [3 x i8]* %15 to i24*
  %17 = load i24, i24* %16, align 1
  %18 = and i24 %17, -65537
  %19 = or i24 %18, 65536
  store i24 %19, i24* %16, align 1
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %21 = load %union.rec*, %union.rec** @MomentSym, align 8
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %23 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %22)
  %24 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %20, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %21, %union.rec* %23)
  store %union.rec* %24, %union.rec** %sym, align 8
  store %union.rec* %24, %union.rec** %second, align 8
  %25 = load %union.rec*, %union.rec** %sym, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 2
  %28 = bitcast %union.SECOND_UNION* %27 to %struct.anon.5*
  %29 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %28, i32 0, i32 1
  %30 = bitcast [3 x i8]* %29 to i24*
  %31 = load i24, i24* %30, align 1
  %32 = and i24 %31, -65537
  %33 = or i24 %32, 65536
  store i24 %33, i24* %30, align 1
  %34 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %35 = load %union.rec*, %union.rec** @MomentSym, align 8
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %37 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %36)
  %38 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %34, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %35, %union.rec* %37)
  store %union.rec* %38, %union.rec** %sym, align 8
  store %union.rec* %38, %union.rec** %minute, align 8
  %39 = load %union.rec*, %union.rec** %sym, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 2
  %42 = bitcast %union.SECOND_UNION* %41 to %struct.anon.5*
  %43 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %42, i32 0, i32 1
  %44 = bitcast [3 x i8]* %43 to i24*
  %45 = load i24, i24* %44, align 1
  %46 = and i24 %45, -65537
  %47 = or i24 %46, 65536
  store i24 %47, i24* %44, align 1
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %49 = load %union.rec*, %union.rec** @MomentSym, align 8
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %51 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %50)
  %52 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %48, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %49, %union.rec* %51)
  store %union.rec* %52, %union.rec** %sym, align 8
  store %union.rec* %52, %union.rec** %hour, align 8
  %53 = load %union.rec*, %union.rec** %sym, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 2
  %56 = bitcast %union.SECOND_UNION* %55 to %struct.anon.5*
  %57 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %56, i32 0, i32 1
  %58 = bitcast [3 x i8]* %57 to i24*
  %59 = load i24, i24* %58, align 1
  %60 = and i24 %59, -65537
  %61 = or i24 %60, 65536
  store i24 %61, i24* %58, align 1
  %62 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %63 = load %union.rec*, %union.rec** @MomentSym, align 8
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %64)
  %66 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %62, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %63, %union.rec* %65)
  store %union.rec* %66, %union.rec** %sym, align 8
  store %union.rec* %66, %union.rec** %monthday, align 8
  %67 = load %union.rec*, %union.rec** %sym, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 2
  %70 = bitcast %union.SECOND_UNION* %69 to %struct.anon.5*
  %71 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %70, i32 0, i32 1
  %72 = bitcast [3 x i8]* %71 to i24*
  %73 = load i24, i24* %72, align 1
  %74 = and i24 %73, -65537
  %75 = or i24 %74, 65536
  store i24 %75, i24* %72, align 1
  %76 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %77 = load %union.rec*, %union.rec** @MomentSym, align 8
  %78 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %79 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %78)
  %80 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %76, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %77, %union.rec* %79)
  store %union.rec* %80, %union.rec** %sym, align 8
  store %union.rec* %80, %union.rec** %month, align 8
  %81 = load %union.rec*, %union.rec** %sym, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 2
  %84 = bitcast %union.SECOND_UNION* %83 to %struct.anon.5*
  %85 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %84, i32 0, i32 1
  %86 = bitcast [3 x i8]* %85 to i24*
  %87 = load i24, i24* %86, align 1
  %88 = and i24 %87, -65537
  %89 = or i24 %88, 65536
  store i24 %89, i24* %86, align 1
  %90 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %91 = load %union.rec*, %union.rec** @MomentSym, align 8
  %92 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %93 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %92)
  %94 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %90, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %91, %union.rec* %93)
  store %union.rec* %94, %union.rec** %sym, align 8
  store %union.rec* %94, %union.rec** %year, align 8
  %95 = load %union.rec*, %union.rec** %sym, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 2
  %98 = bitcast %union.SECOND_UNION* %97 to %struct.anon.5*
  %99 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %98, i32 0, i32 1
  %100 = bitcast [3 x i8]* %99 to i24*
  %101 = load i24, i24* %100, align 1
  %102 = and i24 %101, -65537
  %103 = or i24 %102, 65536
  store i24 %103, i24* %100, align 1
  %104 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %105 = load %union.rec*, %union.rec** @MomentSym, align 8
  %106 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %107 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %106)
  %108 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %104, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %105, %union.rec* %107)
  store %union.rec* %108, %union.rec** %sym, align 8
  store %union.rec* %108, %union.rec** %century, align 8
  %109 = load %union.rec*, %union.rec** %sym, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 2
  %112 = bitcast %union.SECOND_UNION* %111 to %struct.anon.5*
  %113 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %112, i32 0, i32 1
  %114 = bitcast [3 x i8]* %113 to i24*
  %115 = load i24, i24* %114, align 1
  %116 = and i24 %115, -65537
  %117 = or i24 %116, 65536
  store i24 %117, i24* %114, align 1
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %119 = load %union.rec*, %union.rec** @MomentSym, align 8
  %120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %121 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %120)
  %122 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %118, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %119, %union.rec* %121)
  store %union.rec* %122, %union.rec** %sym, align 8
  store %union.rec* %122, %union.rec** %weekday, align 8
  %123 = load %union.rec*, %union.rec** %sym, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 2
  %126 = bitcast %union.SECOND_UNION* %125 to %struct.anon.5*
  %127 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %126, i32 0, i32 1
  %128 = bitcast [3 x i8]* %127 to i24*
  %129 = load i24, i24* %128, align 1
  %130 = and i24 %129, -65537
  %131 = or i24 %130, 65536
  store i24 %131, i24* %128, align 1
  %132 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %133 = load %union.rec*, %union.rec** @MomentSym, align 8
  %134 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %135 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %134)
  %136 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %132, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %133, %union.rec* %135)
  store %union.rec* %136, %union.rec** %sym, align 8
  store %union.rec* %136, %union.rec** %yearday, align 8
  %137 = load %union.rec*, %union.rec** %sym, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 2
  %140 = bitcast %union.SECOND_UNION* %139 to %struct.anon.5*
  %141 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %140, i32 0, i32 1
  %142 = bitcast [3 x i8]* %141 to i24*
  %143 = load i24, i24* %142, align 1
  %144 = and i24 %143, -65537
  %145 = or i24 %144, 65536
  store i24 %145, i24* %142, align 1
  %146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %147 = load %union.rec*, %union.rec** @MomentSym, align 8
  %148 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %149 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %148)
  %150 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %146, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %147, %union.rec* %149)
  store %union.rec* %150, %union.rec** %sym, align 8
  store %union.rec* %150, %union.rec** %dst, align 8
  %151 = load %union.rec*, %union.rec** %sym, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 2
  %154 = bitcast %union.SECOND_UNION* %153 to %struct.anon.5*
  %155 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %154, i32 0, i32 1
  %156 = bitcast [3 x i8]* %155 to i24*
  %157 = load i24, i24* %156, align 1
  %158 = and i24 %157, -65537
  %159 = or i24 %158, 65536
  store i24 %159, i24* %156, align 1
  %160 = call i64 @time(i64* %raw_time) #3
  %161 = icmp eq i64 %160, -1
  br i1 %161, label %162, label %165

; <label>:162                                     ; preds = %0
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 35, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %163)
  br label %165

; <label>:165                                     ; preds = %162, %0
  %166 = call %struct.tm* @localtime(i64* %raw_time) #3
  store %struct.tm* %166, %struct.tm** %now, align 8
  %167 = load %struct.tm*, %struct.tm** %now, align 8
  %168 = call i8* @asctime(%struct.tm* %167) #3
  %169 = call i8* @strcpy(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @time_string, i32 0, i32 0), i8* %168) #3
  %170 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %171 = zext i8 %170 to i32
  store i32 %171, i32* @zz_size, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp uge i64 %172, 265
  br i1 %173, label %174, label %177

; <label>:174                                     ; preds = %165
  %175 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %176 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %175)
  br label %202

; <label>:177                                     ; preds = %165
  %178 = load i32, i32* @zz_size, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %179
  %181 = load %union.rec*, %union.rec** %180, align 8
  %182 = icmp eq %union.rec* %181, null
  br i1 %182, label %183, label %187

; <label>:183                                     ; preds = %177
  %184 = load i32, i32* @zz_size, align 4
  %185 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %186 = call %union.rec* @GetMemory(i32 %184, %struct.FILE_POS* %185)
  store %union.rec* %186, %union.rec** @zz_hold, align 8
  br label %201

; <label>:187                                     ; preds = %177
  %188 = load i32, i32* @zz_size, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %189
  %191 = load %union.rec*, %union.rec** %190, align 8
  store %union.rec* %191, %union.rec** @zz_hold, align 8
  store %union.rec* %191, %union.rec** @zz_hold, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 0
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %196, align 8
  %198 = load i32, i32* @zz_size, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %199
  store %union.rec* %197, %union.rec** %200, align 8
  br label %201

; <label>:201                                     ; preds = %187, %183
  br label %202

; <label>:202                                     ; preds = %201, %174
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 1
  %206 = bitcast %union.FIRST_UNION* %205 to %struct.anon*
  %207 = getelementptr inbounds %struct.anon, %struct.anon* %206, i32 0, i32 0
  store i8 2, i8* %207, align 1
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 1
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 1
  store %union.rec* %208, %union.rec** %213, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 1
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 0
  store %union.rec* %208, %union.rec** %218, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 0
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 1
  store %union.rec* %208, %union.rec** %223, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 0
  store %union.rec* %208, %union.rec** %228, align 8
  store %union.rec* %208, %union.rec** @current_moment, align 8
  %229 = load %union.rec*, %union.rec** @MomentSym, align 8
  %230 = load %union.rec*, %union.rec** @current_moment, align 8
  %231 = bitcast %union.rec* %230 to %struct.closure_type*
  %232 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %231, i32 0, i32 5
  store %union.rec* %229, %union.rec** %232, align 8
  %233 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %234 = call i32 (i8*, i8*, ...) @sprintf(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #3
  %235 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %236 = zext i8 %235 to i32
  store i32 %236, i32* @zz_size, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp uge i64 %237, 265
  br i1 %238, label %239, label %242

; <label>:239                                     ; preds = %202
  %240 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %241 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %240)
  br label %267

; <label>:242                                     ; preds = %202
  %243 = load i32, i32* @zz_size, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %244
  %246 = load %union.rec*, %union.rec** %245, align 8
  %247 = icmp eq %union.rec* %246, null
  br i1 %247, label %248, label %252

; <label>:248                                     ; preds = %242
  %249 = load i32, i32* @zz_size, align 4
  %250 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %251 = call %union.rec* @GetMemory(i32 %249, %struct.FILE_POS* %250)
  store %union.rec* %251, %union.rec** @zz_hold, align 8
  br label %266

; <label>:252                                     ; preds = %242
  %253 = load i32, i32* @zz_size, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %254
  %256 = load %union.rec*, %union.rec** %255, align 8
  store %union.rec* %256, %union.rec** @zz_hold, align 8
  store %union.rec* %256, %union.rec** @zz_hold, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %261, align 8
  %263 = load i32, i32* @zz_size, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %264
  store %union.rec* %262, %union.rec** %265, align 8
  br label %266

; <label>:266                                     ; preds = %252, %248
  br label %267

; <label>:267                                     ; preds = %266, %239
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 1
  %271 = bitcast %union.FIRST_UNION* %270 to %struct.anon*
  %272 = getelementptr inbounds %struct.anon, %struct.anon* %271, i32 0, i32 0
  store i8 10, i8* %272, align 1
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 1
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 1
  store %union.rec* %273, %union.rec** %278, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %281, i32 0, i64 1
  %283 = getelementptr inbounds %struct.LIST, %struct.LIST* %282, i32 0, i32 0
  store %union.rec* %273, %union.rec** %283, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %286, i32 0, i64 0
  %288 = getelementptr inbounds %struct.LIST, %struct.LIST* %287, i32 0, i32 1
  store %union.rec* %273, %union.rec** %288, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 0
  %292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %291, i32 0, i64 0
  %293 = getelementptr inbounds %struct.LIST, %struct.LIST* %292, i32 0, i32 0
  store %union.rec* %273, %union.rec** %293, align 8
  store %union.rec* %273, %union.rec** %par, align 8
  %294 = load %union.rec*, %union.rec** %tag, align 8
  %295 = load %union.rec*, %union.rec** %par, align 8
  %296 = bitcast %union.rec* %295 to %struct.closure_type*
  %297 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %296, i32 0, i32 5
  store %union.rec* %294, %union.rec** %297, align 8
  %298 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %299 = zext i8 %298 to i32
  store i32 %299, i32* @zz_size, align 4
  %300 = sext i32 %299 to i64
  %301 = icmp uge i64 %300, 265
  br i1 %301, label %302, label %305

; <label>:302                                     ; preds = %267
  %303 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %304 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %303)
  br label %330

; <label>:305                                     ; preds = %267
  %306 = load i32, i32* @zz_size, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %307
  %309 = load %union.rec*, %union.rec** %308, align 8
  %310 = icmp eq %union.rec* %309, null
  br i1 %310, label %311, label %315

; <label>:311                                     ; preds = %305
  %312 = load i32, i32* @zz_size, align 4
  %313 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %314 = call %union.rec* @GetMemory(i32 %312, %struct.FILE_POS* %313)
  store %union.rec* %314, %union.rec** @zz_hold, align 8
  br label %329

; <label>:315                                     ; preds = %305
  %316 = load i32, i32* @zz_size, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %317
  %319 = load %union.rec*, %union.rec** %318, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 0
  %323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %322, i32 0, i64 0
  %324 = getelementptr inbounds %struct.LIST, %struct.LIST* %323, i32 0, i32 0
  %325 = load %union.rec*, %union.rec** %324, align 8
  %326 = load i32, i32* @zz_size, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %327
  store %union.rec* %325, %union.rec** %328, align 8
  br label %329

; <label>:329                                     ; preds = %315, %311
  br label %330

; <label>:330                                     ; preds = %329, %302
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %332 = bitcast %union.rec* %331 to %struct.word_type*
  %333 = getelementptr inbounds %struct.word_type, %struct.word_type* %332, i32 0, i32 1
  %334 = bitcast %union.FIRST_UNION* %333 to %struct.anon*
  %335 = getelementptr inbounds %struct.anon, %struct.anon* %334, i32 0, i32 0
  store i8 0, i8* %335, align 1
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 0
  %340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %339, i32 0, i64 1
  %341 = getelementptr inbounds %struct.LIST, %struct.LIST* %340, i32 0, i32 1
  store %union.rec* %336, %union.rec** %341, align 8
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 0
  %345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %344, i32 0, i64 1
  %346 = getelementptr inbounds %struct.LIST, %struct.LIST* %345, i32 0, i32 0
  store %union.rec* %336, %union.rec** %346, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = bitcast %union.rec* %347 to %struct.word_type*
  %349 = getelementptr inbounds %struct.word_type, %struct.word_type* %348, i32 0, i32 0
  %350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %349, i32 0, i64 0
  %351 = getelementptr inbounds %struct.LIST, %struct.LIST* %350, i32 0, i32 1
  store %union.rec* %336, %union.rec** %351, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 0
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  store %union.rec* %336, %union.rec** %356, align 8
  store %union.rec* %336, %union.rec** @xx_link, align 8
  %357 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %357, %union.rec** @zz_res, align 8
  %358 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = icmp eq %union.rec* %359, null
  br i1 %360, label %361, label %363

; <label>:361                                     ; preds = %330
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %411

; <label>:363                                     ; preds = %330
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %365 = icmp eq %union.rec* %364, null
  br i1 %365, label %366, label %368

; <label>:366                                     ; preds = %363
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %409

; <label>:368                                     ; preds = %363
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 0
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 0
  %374 = load %union.rec*, %union.rec** %373, align 8
  store %union.rec* %374, %union.rec** @zz_tmp, align 8
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  %376 = bitcast %union.rec* %375 to %struct.word_type*
  %377 = getelementptr inbounds %struct.word_type, %struct.word_type* %376, i32 0, i32 0
  %378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %377, i32 0, i64 0
  %379 = getelementptr inbounds %struct.LIST, %struct.LIST* %378, i32 0, i32 0
  %380 = load %union.rec*, %union.rec** %379, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %382 = bitcast %union.rec* %381 to %struct.word_type*
  %383 = getelementptr inbounds %struct.word_type, %struct.word_type* %382, i32 0, i32 0
  %384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %383, i32 0, i64 0
  %385 = getelementptr inbounds %struct.LIST, %struct.LIST* %384, i32 0, i32 0
  store %union.rec* %380, %union.rec** %385, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  %388 = bitcast %union.rec* %387 to %struct.word_type*
  %389 = getelementptr inbounds %struct.word_type, %struct.word_type* %388, i32 0, i32 0
  %390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %389, i32 0, i64 0
  %391 = getelementptr inbounds %struct.LIST, %struct.LIST* %390, i32 0, i32 0
  %392 = load %union.rec*, %union.rec** %391, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 0
  %395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %394, i32 0, i64 0
  %396 = getelementptr inbounds %struct.LIST, %struct.LIST* %395, i32 0, i32 1
  store %union.rec* %386, %union.rec** %396, align 8
  %397 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %398 = load %union.rec*, %union.rec** @zz_res, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 0
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 0
  store %union.rec* %397, %union.rec** %402, align 8
  %403 = load %union.rec*, %union.rec** @zz_res, align 8
  %404 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %405 = bitcast %union.rec* %404 to %struct.word_type*
  %406 = getelementptr inbounds %struct.word_type, %struct.word_type* %405, i32 0, i32 0
  %407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %406, i32 0, i64 0
  %408 = getelementptr inbounds %struct.LIST, %struct.LIST* %407, i32 0, i32 1
  store %union.rec* %403, %union.rec** %408, align 8
  br label %409

; <label>:409                                     ; preds = %368, %366
  %410 = phi %union.rec* [ %367, %366 ], [ %403, %368 ]
  br label %411

; <label>:411                                     ; preds = %409, %361
  %412 = phi %union.rec* [ %362, %361 ], [ %410, %409 ]
  %413 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %413, %union.rec** @zz_res, align 8
  %414 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %414, %union.rec** @zz_hold, align 8
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %416 = icmp eq %union.rec* %415, null
  br i1 %416, label %417, label %419

; <label>:417                                     ; preds = %411
  %418 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %467

; <label>:419                                     ; preds = %411
  %420 = load %union.rec*, %union.rec** @zz_res, align 8
  %421 = icmp eq %union.rec* %420, null
  br i1 %421, label %422, label %424

; <label>:422                                     ; preds = %419
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %465

; <label>:424                                     ; preds = %419
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %426 = bitcast %union.rec* %425 to %struct.word_type*
  %427 = getelementptr inbounds %struct.word_type, %struct.word_type* %426, i32 0, i32 0
  %428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %427, i32 0, i64 1
  %429 = getelementptr inbounds %struct.LIST, %struct.LIST* %428, i32 0, i32 0
  %430 = load %union.rec*, %union.rec** %429, align 8
  store %union.rec* %430, %union.rec** @zz_tmp, align 8
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 0
  %434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %433, i32 0, i64 1
  %435 = getelementptr inbounds %struct.LIST, %struct.LIST* %434, i32 0, i32 0
  %436 = load %union.rec*, %union.rec** %435, align 8
  %437 = load %union.rec*, %union.rec** @zz_hold, align 8
  %438 = bitcast %union.rec* %437 to %struct.word_type*
  %439 = getelementptr inbounds %struct.word_type, %struct.word_type* %438, i32 0, i32 0
  %440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %439, i32 0, i64 1
  %441 = getelementptr inbounds %struct.LIST, %struct.LIST* %440, i32 0, i32 0
  store %union.rec* %436, %union.rec** %441, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %443 = load %union.rec*, %union.rec** @zz_res, align 8
  %444 = bitcast %union.rec* %443 to %struct.word_type*
  %445 = getelementptr inbounds %struct.word_type, %struct.word_type* %444, i32 0, i32 0
  %446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %445, i32 0, i64 1
  %447 = getelementptr inbounds %struct.LIST, %struct.LIST* %446, i32 0, i32 0
  %448 = load %union.rec*, %union.rec** %447, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %450, i32 0, i64 1
  %452 = getelementptr inbounds %struct.LIST, %struct.LIST* %451, i32 0, i32 1
  store %union.rec* %442, %union.rec** %452, align 8
  %453 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %454 = load %union.rec*, %union.rec** @zz_res, align 8
  %455 = bitcast %union.rec* %454 to %struct.word_type*
  %456 = getelementptr inbounds %struct.word_type, %struct.word_type* %455, i32 0, i32 0
  %457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %456, i32 0, i64 1
  %458 = getelementptr inbounds %struct.LIST, %struct.LIST* %457, i32 0, i32 0
  store %union.rec* %453, %union.rec** %458, align 8
  %459 = load %union.rec*, %union.rec** @zz_res, align 8
  %460 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 0
  %463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %462, i32 0, i64 1
  %464 = getelementptr inbounds %struct.LIST, %struct.LIST* %463, i32 0, i32 1
  store %union.rec* %459, %union.rec** %464, align 8
  br label %465

; <label>:465                                     ; preds = %424, %422
  %466 = phi %union.rec* [ %423, %422 ], [ %459, %424 ]
  br label %467

; <label>:467                                     ; preds = %465, %417
  %468 = phi %union.rec* [ %418, %417 ], [ %466, %465 ]
  %469 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %470 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %471 = call %union.rec* @MakeWord(i32 11, i8* %469, %struct.FILE_POS* %470)
  store %union.rec* %471, %union.rec** %tmp, align 8
  %472 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %473 = zext i8 %472 to i32
  store i32 %473, i32* @zz_size, align 4
  %474 = sext i32 %473 to i64
  %475 = icmp uge i64 %474, 265
  br i1 %475, label %476, label %479

; <label>:476                                     ; preds = %467
  %477 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %478 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %477)
  br label %504

; <label>:479                                     ; preds = %467
  %480 = load i32, i32* @zz_size, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %481
  %483 = load %union.rec*, %union.rec** %482, align 8
  %484 = icmp eq %union.rec* %483, null
  br i1 %484, label %485, label %489

; <label>:485                                     ; preds = %479
  %486 = load i32, i32* @zz_size, align 4
  %487 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %488 = call %union.rec* @GetMemory(i32 %486, %struct.FILE_POS* %487)
  store %union.rec* %488, %union.rec** @zz_hold, align 8
  br label %503

; <label>:489                                     ; preds = %479
  %490 = load i32, i32* @zz_size, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %491
  %493 = load %union.rec*, %union.rec** %492, align 8
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = bitcast %union.rec* %494 to %struct.word_type*
  %496 = getelementptr inbounds %struct.word_type, %struct.word_type* %495, i32 0, i32 0
  %497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %496, i32 0, i64 0
  %498 = getelementptr inbounds %struct.LIST, %struct.LIST* %497, i32 0, i32 0
  %499 = load %union.rec*, %union.rec** %498, align 8
  %500 = load i32, i32* @zz_size, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %501
  store %union.rec* %499, %union.rec** %502, align 8
  br label %503

; <label>:503                                     ; preds = %489, %485
  br label %504

; <label>:504                                     ; preds = %503, %476
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 1
  %508 = bitcast %union.FIRST_UNION* %507 to %struct.anon*
  %509 = getelementptr inbounds %struct.anon, %struct.anon* %508, i32 0, i32 0
  store i8 0, i8* %509, align 1
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 0
  %514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %513, i32 0, i64 1
  %515 = getelementptr inbounds %struct.LIST, %struct.LIST* %514, i32 0, i32 1
  store %union.rec* %510, %union.rec** %515, align 8
  %516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %518, i32 0, i64 1
  %520 = getelementptr inbounds %struct.LIST, %struct.LIST* %519, i32 0, i32 0
  store %union.rec* %510, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %522 = bitcast %union.rec* %521 to %struct.word_type*
  %523 = getelementptr inbounds %struct.word_type, %struct.word_type* %522, i32 0, i32 0
  %524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %523, i32 0, i64 0
  %525 = getelementptr inbounds %struct.LIST, %struct.LIST* %524, i32 0, i32 1
  store %union.rec* %510, %union.rec** %525, align 8
  %526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %527 = bitcast %union.rec* %526 to %struct.word_type*
  %528 = getelementptr inbounds %struct.word_type, %struct.word_type* %527, i32 0, i32 0
  %529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %528, i32 0, i64 0
  %530 = getelementptr inbounds %struct.LIST, %struct.LIST* %529, i32 0, i32 0
  store %union.rec* %510, %union.rec** %530, align 8
  store %union.rec* %510, %union.rec** @xx_link, align 8
  %531 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %531, %union.rec** @zz_res, align 8
  %532 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %532, %union.rec** @zz_hold, align 8
  %533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %534 = icmp eq %union.rec* %533, null
  br i1 %534, label %535, label %537

; <label>:535                                     ; preds = %504
  %536 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %585

; <label>:537                                     ; preds = %504
  %538 = load %union.rec*, %union.rec** @zz_res, align 8
  %539 = icmp eq %union.rec* %538, null
  br i1 %539, label %540, label %542

; <label>:540                                     ; preds = %537
  %541 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %583

; <label>:542                                     ; preds = %537
  %543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 0
  %546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %545, i32 0, i64 0
  %547 = getelementptr inbounds %struct.LIST, %struct.LIST* %546, i32 0, i32 0
  %548 = load %union.rec*, %union.rec** %547, align 8
  store %union.rec* %548, %union.rec** @zz_tmp, align 8
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 0
  %552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %551, i32 0, i64 0
  %553 = getelementptr inbounds %struct.LIST, %struct.LIST* %552, i32 0, i32 0
  %554 = load %union.rec*, %union.rec** %553, align 8
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 0
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 0
  store %union.rec* %554, %union.rec** %559, align 8
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %561 = load %union.rec*, %union.rec** @zz_res, align 8
  %562 = bitcast %union.rec* %561 to %struct.word_type*
  %563 = getelementptr inbounds %struct.word_type, %struct.word_type* %562, i32 0, i32 0
  %564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %563, i32 0, i64 0
  %565 = getelementptr inbounds %struct.LIST, %struct.LIST* %564, i32 0, i32 0
  %566 = load %union.rec*, %union.rec** %565, align 8
  %567 = bitcast %union.rec* %566 to %struct.word_type*
  %568 = getelementptr inbounds %struct.word_type, %struct.word_type* %567, i32 0, i32 0
  %569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %568, i32 0, i64 0
  %570 = getelementptr inbounds %struct.LIST, %struct.LIST* %569, i32 0, i32 1
  store %union.rec* %560, %union.rec** %570, align 8
  %571 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %572 = load %union.rec*, %union.rec** @zz_res, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 0
  %575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %574, i32 0, i64 0
  %576 = getelementptr inbounds %struct.LIST, %struct.LIST* %575, i32 0, i32 0
  store %union.rec* %571, %union.rec** %576, align 8
  %577 = load %union.rec*, %union.rec** @zz_res, align 8
  %578 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %579 = bitcast %union.rec* %578 to %struct.word_type*
  %580 = getelementptr inbounds %struct.word_type, %struct.word_type* %579, i32 0, i32 0
  %581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %580, i32 0, i64 0
  %582 = getelementptr inbounds %struct.LIST, %struct.LIST* %581, i32 0, i32 1
  store %union.rec* %577, %union.rec** %582, align 8
  br label %583

; <label>:583                                     ; preds = %542, %540
  %584 = phi %union.rec* [ %541, %540 ], [ %577, %542 ]
  br label %585

; <label>:585                                     ; preds = %583, %535
  %586 = phi %union.rec* [ %536, %535 ], [ %584, %583 ]
  %587 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %587, %union.rec** @zz_res, align 8
  %588 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %588, %union.rec** @zz_hold, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = icmp eq %union.rec* %589, null
  br i1 %590, label %591, label %593

; <label>:591                                     ; preds = %585
  %592 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %641

; <label>:593                                     ; preds = %585
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
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 1
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 0
  %604 = load %union.rec*, %union.rec** %603, align 8
  store %union.rec* %604, %union.rec** @zz_tmp, align 8
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 1
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %612 = bitcast %union.rec* %611 to %struct.word_type*
  %613 = getelementptr inbounds %struct.word_type, %struct.word_type* %612, i32 0, i32 0
  %614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %613, i32 0, i64 1
  %615 = getelementptr inbounds %struct.LIST, %struct.LIST* %614, i32 0, i32 0
  store %union.rec* %610, %union.rec** %615, align 8
  %616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %617 = load %union.rec*, %union.rec** @zz_res, align 8
  %618 = bitcast %union.rec* %617 to %struct.word_type*
  %619 = getelementptr inbounds %struct.word_type, %struct.word_type* %618, i32 0, i32 0
  %620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %619, i32 0, i64 1
  %621 = getelementptr inbounds %struct.LIST, %struct.LIST* %620, i32 0, i32 0
  %622 = load %union.rec*, %union.rec** %621, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 0
  %625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %624, i32 0, i64 1
  %626 = getelementptr inbounds %struct.LIST, %struct.LIST* %625, i32 0, i32 1
  store %union.rec* %616, %union.rec** %626, align 8
  %627 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %628 = load %union.rec*, %union.rec** @zz_res, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 0
  %631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %630, i32 0, i64 1
  %632 = getelementptr inbounds %struct.LIST, %struct.LIST* %631, i32 0, i32 0
  store %union.rec* %627, %union.rec** %632, align 8
  %633 = load %union.rec*, %union.rec** @zz_res, align 8
  %634 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %635 = bitcast %union.rec* %634 to %struct.word_type*
  %636 = getelementptr inbounds %struct.word_type, %struct.word_type* %635, i32 0, i32 0
  %637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %636, i32 0, i64 1
  %638 = getelementptr inbounds %struct.LIST, %struct.LIST* %637, i32 0, i32 1
  store %union.rec* %633, %union.rec** %638, align 8
  br label %639

; <label>:639                                     ; preds = %598, %596
  %640 = phi %union.rec* [ %597, %596 ], [ %633, %598 ]
  br label %641

; <label>:641                                     ; preds = %639, %591
  %642 = phi %union.rec* [ %592, %591 ], [ %640, %639 ]
  %643 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %644 = load %struct.tm*, %struct.tm** %now, align 8
  %645 = getelementptr inbounds %struct.tm, %struct.tm* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = call i32 (i8*, i8*, ...) @sprintf(i8* %643, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %646) #3
  %648 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %649 = zext i8 %648 to i32
  store i32 %649, i32* @zz_size, align 4
  %650 = sext i32 %649 to i64
  %651 = icmp uge i64 %650, 265
  br i1 %651, label %652, label %655

; <label>:652                                     ; preds = %641
  %653 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %654 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %653)
  br label %680

; <label>:655                                     ; preds = %641
  %656 = load i32, i32* @zz_size, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %657
  %659 = load %union.rec*, %union.rec** %658, align 8
  %660 = icmp eq %union.rec* %659, null
  br i1 %660, label %661, label %665

; <label>:661                                     ; preds = %655
  %662 = load i32, i32* @zz_size, align 4
  %663 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %664 = call %union.rec* @GetMemory(i32 %662, %struct.FILE_POS* %663)
  store %union.rec* %664, %union.rec** @zz_hold, align 8
  br label %679

; <label>:665                                     ; preds = %655
  %666 = load i32, i32* @zz_size, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %667
  %669 = load %union.rec*, %union.rec** %668, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 0
  %673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %672, i32 0, i64 0
  %674 = getelementptr inbounds %struct.LIST, %struct.LIST* %673, i32 0, i32 0
  %675 = load %union.rec*, %union.rec** %674, align 8
  %676 = load i32, i32* @zz_size, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %677
  store %union.rec* %675, %union.rec** %678, align 8
  br label %679

; <label>:679                                     ; preds = %665, %661
  br label %680

; <label>:680                                     ; preds = %679, %652
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 1
  %684 = bitcast %union.FIRST_UNION* %683 to %struct.anon*
  %685 = getelementptr inbounds %struct.anon, %struct.anon* %684, i32 0, i32 0
  store i8 10, i8* %685, align 1
  %686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 0
  %690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %689, i32 0, i64 1
  %691 = getelementptr inbounds %struct.LIST, %struct.LIST* %690, i32 0, i32 1
  store %union.rec* %686, %union.rec** %691, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %693 = bitcast %union.rec* %692 to %struct.word_type*
  %694 = getelementptr inbounds %struct.word_type, %struct.word_type* %693, i32 0, i32 0
  %695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %694, i32 0, i64 1
  %696 = getelementptr inbounds %struct.LIST, %struct.LIST* %695, i32 0, i32 0
  store %union.rec* %686, %union.rec** %696, align 8
  %697 = load %union.rec*, %union.rec** @zz_hold, align 8
  %698 = bitcast %union.rec* %697 to %struct.word_type*
  %699 = getelementptr inbounds %struct.word_type, %struct.word_type* %698, i32 0, i32 0
  %700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %699, i32 0, i64 0
  %701 = getelementptr inbounds %struct.LIST, %struct.LIST* %700, i32 0, i32 1
  store %union.rec* %686, %union.rec** %701, align 8
  %702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 0
  %705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %704, i32 0, i64 0
  %706 = getelementptr inbounds %struct.LIST, %struct.LIST* %705, i32 0, i32 0
  store %union.rec* %686, %union.rec** %706, align 8
  store %union.rec* %686, %union.rec** %par, align 8
  %707 = load %union.rec*, %union.rec** %second, align 8
  %708 = load %union.rec*, %union.rec** %par, align 8
  %709 = bitcast %union.rec* %708 to %struct.closure_type*
  %710 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %709, i32 0, i32 5
  store %union.rec* %707, %union.rec** %710, align 8
  %711 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %712 = zext i8 %711 to i32
  store i32 %712, i32* @zz_size, align 4
  %713 = sext i32 %712 to i64
  %714 = icmp uge i64 %713, 265
  br i1 %714, label %715, label %718

; <label>:715                                     ; preds = %680
  %716 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %717 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %716)
  br label %743

; <label>:718                                     ; preds = %680
  %719 = load i32, i32* @zz_size, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %720
  %722 = load %union.rec*, %union.rec** %721, align 8
  %723 = icmp eq %union.rec* %722, null
  br i1 %723, label %724, label %728

; <label>:724                                     ; preds = %718
  %725 = load i32, i32* @zz_size, align 4
  %726 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %727 = call %union.rec* @GetMemory(i32 %725, %struct.FILE_POS* %726)
  store %union.rec* %727, %union.rec** @zz_hold, align 8
  br label %742

; <label>:728                                     ; preds = %718
  %729 = load i32, i32* @zz_size, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %730
  %732 = load %union.rec*, %union.rec** %731, align 8
  store %union.rec* %732, %union.rec** @zz_hold, align 8
  store %union.rec* %732, %union.rec** @zz_hold, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %734 = bitcast %union.rec* %733 to %struct.word_type*
  %735 = getelementptr inbounds %struct.word_type, %struct.word_type* %734, i32 0, i32 0
  %736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %735, i32 0, i64 0
  %737 = getelementptr inbounds %struct.LIST, %struct.LIST* %736, i32 0, i32 0
  %738 = load %union.rec*, %union.rec** %737, align 8
  %739 = load i32, i32* @zz_size, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %740
  store %union.rec* %738, %union.rec** %741, align 8
  br label %742

; <label>:742                                     ; preds = %728, %724
  br label %743

; <label>:743                                     ; preds = %742, %715
  %744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %745 = bitcast %union.rec* %744 to %struct.word_type*
  %746 = getelementptr inbounds %struct.word_type, %struct.word_type* %745, i32 0, i32 1
  %747 = bitcast %union.FIRST_UNION* %746 to %struct.anon*
  %748 = getelementptr inbounds %struct.anon, %struct.anon* %747, i32 0, i32 0
  store i8 0, i8* %748, align 1
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 0
  %753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %752, i32 0, i64 1
  %754 = getelementptr inbounds %struct.LIST, %struct.LIST* %753, i32 0, i32 1
  store %union.rec* %749, %union.rec** %754, align 8
  %755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %756 = bitcast %union.rec* %755 to %struct.word_type*
  %757 = getelementptr inbounds %struct.word_type, %struct.word_type* %756, i32 0, i32 0
  %758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %757, i32 0, i64 1
  %759 = getelementptr inbounds %struct.LIST, %struct.LIST* %758, i32 0, i32 0
  store %union.rec* %749, %union.rec** %759, align 8
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %761 = bitcast %union.rec* %760 to %struct.word_type*
  %762 = getelementptr inbounds %struct.word_type, %struct.word_type* %761, i32 0, i32 0
  %763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %762, i32 0, i64 0
  %764 = getelementptr inbounds %struct.LIST, %struct.LIST* %763, i32 0, i32 1
  store %union.rec* %749, %union.rec** %764, align 8
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %766 = bitcast %union.rec* %765 to %struct.word_type*
  %767 = getelementptr inbounds %struct.word_type, %struct.word_type* %766, i32 0, i32 0
  %768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %767, i32 0, i64 0
  %769 = getelementptr inbounds %struct.LIST, %struct.LIST* %768, i32 0, i32 0
  store %union.rec* %749, %union.rec** %769, align 8
  store %union.rec* %749, %union.rec** @xx_link, align 8
  %770 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %770, %union.rec** @zz_res, align 8
  %771 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %771, %union.rec** @zz_hold, align 8
  %772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %773 = icmp eq %union.rec* %772, null
  br i1 %773, label %774, label %776

; <label>:774                                     ; preds = %743
  %775 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %824

; <label>:776                                     ; preds = %743
  %777 = load %union.rec*, %union.rec** @zz_res, align 8
  %778 = icmp eq %union.rec* %777, null
  br i1 %778, label %779, label %781

; <label>:779                                     ; preds = %776
  %780 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %822

; <label>:781                                     ; preds = %776
  %782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 0
  %785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %784, i32 0, i64 0
  %786 = getelementptr inbounds %struct.LIST, %struct.LIST* %785, i32 0, i32 0
  %787 = load %union.rec*, %union.rec** %786, align 8
  store %union.rec* %787, %union.rec** @zz_tmp, align 8
  %788 = load %union.rec*, %union.rec** @zz_res, align 8
  %789 = bitcast %union.rec* %788 to %struct.word_type*
  %790 = getelementptr inbounds %struct.word_type, %struct.word_type* %789, i32 0, i32 0
  %791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %790, i32 0, i64 0
  %792 = getelementptr inbounds %struct.LIST, %struct.LIST* %791, i32 0, i32 0
  %793 = load %union.rec*, %union.rec** %792, align 8
  %794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %795 = bitcast %union.rec* %794 to %struct.word_type*
  %796 = getelementptr inbounds %struct.word_type, %struct.word_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %796, i32 0, i64 0
  %798 = getelementptr inbounds %struct.LIST, %struct.LIST* %797, i32 0, i32 0
  store %union.rec* %793, %union.rec** %798, align 8
  %799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %800 = load %union.rec*, %union.rec** @zz_res, align 8
  %801 = bitcast %union.rec* %800 to %struct.word_type*
  %802 = getelementptr inbounds %struct.word_type, %struct.word_type* %801, i32 0, i32 0
  %803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %802, i32 0, i64 0
  %804 = getelementptr inbounds %struct.LIST, %struct.LIST* %803, i32 0, i32 0
  %805 = load %union.rec*, %union.rec** %804, align 8
  %806 = bitcast %union.rec* %805 to %struct.word_type*
  %807 = getelementptr inbounds %struct.word_type, %struct.word_type* %806, i32 0, i32 0
  %808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %807, i32 0, i64 0
  %809 = getelementptr inbounds %struct.LIST, %struct.LIST* %808, i32 0, i32 1
  store %union.rec* %799, %union.rec** %809, align 8
  %810 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %811 = load %union.rec*, %union.rec** @zz_res, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 0
  %814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %813, i32 0, i64 0
  %815 = getelementptr inbounds %struct.LIST, %struct.LIST* %814, i32 0, i32 0
  store %union.rec* %810, %union.rec** %815, align 8
  %816 = load %union.rec*, %union.rec** @zz_res, align 8
  %817 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %818 = bitcast %union.rec* %817 to %struct.word_type*
  %819 = getelementptr inbounds %struct.word_type, %struct.word_type* %818, i32 0, i32 0
  %820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %819, i32 0, i64 0
  %821 = getelementptr inbounds %struct.LIST, %struct.LIST* %820, i32 0, i32 1
  store %union.rec* %816, %union.rec** %821, align 8
  br label %822

; <label>:822                                     ; preds = %781, %779
  %823 = phi %union.rec* [ %780, %779 ], [ %816, %781 ]
  br label %824

; <label>:824                                     ; preds = %822, %774
  %825 = phi %union.rec* [ %775, %774 ], [ %823, %822 ]
  %826 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %826, %union.rec** @zz_res, align 8
  %827 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %827, %union.rec** @zz_hold, align 8
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %829 = icmp eq %union.rec* %828, null
  br i1 %829, label %830, label %832

; <label>:830                                     ; preds = %824
  %831 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %880

; <label>:832                                     ; preds = %824
  %833 = load %union.rec*, %union.rec** @zz_res, align 8
  %834 = icmp eq %union.rec* %833, null
  br i1 %834, label %835, label %837

; <label>:835                                     ; preds = %832
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %878

; <label>:837                                     ; preds = %832
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 0
  %841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %840, i32 0, i64 1
  %842 = getelementptr inbounds %struct.LIST, %struct.LIST* %841, i32 0, i32 0
  %843 = load %union.rec*, %union.rec** %842, align 8
  store %union.rec* %843, %union.rec** @zz_tmp, align 8
  %844 = load %union.rec*, %union.rec** @zz_res, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 0
  %847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %846, i32 0, i64 1
  %848 = getelementptr inbounds %struct.LIST, %struct.LIST* %847, i32 0, i32 0
  %849 = load %union.rec*, %union.rec** %848, align 8
  %850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %851 = bitcast %union.rec* %850 to %struct.word_type*
  %852 = getelementptr inbounds %struct.word_type, %struct.word_type* %851, i32 0, i32 0
  %853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %852, i32 0, i64 1
  %854 = getelementptr inbounds %struct.LIST, %struct.LIST* %853, i32 0, i32 0
  store %union.rec* %849, %union.rec** %854, align 8
  %855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %856 = load %union.rec*, %union.rec** @zz_res, align 8
  %857 = bitcast %union.rec* %856 to %struct.word_type*
  %858 = getelementptr inbounds %struct.word_type, %struct.word_type* %857, i32 0, i32 0
  %859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %858, i32 0, i64 1
  %860 = getelementptr inbounds %struct.LIST, %struct.LIST* %859, i32 0, i32 0
  %861 = load %union.rec*, %union.rec** %860, align 8
  %862 = bitcast %union.rec* %861 to %struct.word_type*
  %863 = getelementptr inbounds %struct.word_type, %struct.word_type* %862, i32 0, i32 0
  %864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %863, i32 0, i64 1
  %865 = getelementptr inbounds %struct.LIST, %struct.LIST* %864, i32 0, i32 1
  store %union.rec* %855, %union.rec** %865, align 8
  %866 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %867 = load %union.rec*, %union.rec** @zz_res, align 8
  %868 = bitcast %union.rec* %867 to %struct.word_type*
  %869 = getelementptr inbounds %struct.word_type, %struct.word_type* %868, i32 0, i32 0
  %870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %869, i32 0, i64 1
  %871 = getelementptr inbounds %struct.LIST, %struct.LIST* %870, i32 0, i32 0
  store %union.rec* %866, %union.rec** %871, align 8
  %872 = load %union.rec*, %union.rec** @zz_res, align 8
  %873 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %874 = bitcast %union.rec* %873 to %struct.word_type*
  %875 = getelementptr inbounds %struct.word_type, %struct.word_type* %874, i32 0, i32 0
  %876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %875, i32 0, i64 1
  %877 = getelementptr inbounds %struct.LIST, %struct.LIST* %876, i32 0, i32 1
  store %union.rec* %872, %union.rec** %877, align 8
  br label %878

; <label>:878                                     ; preds = %837, %835
  %879 = phi %union.rec* [ %836, %835 ], [ %872, %837 ]
  br label %880

; <label>:880                                     ; preds = %878, %830
  %881 = phi %union.rec* [ %831, %830 ], [ %879, %878 ]
  %882 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %883 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %884 = call %union.rec* @MakeWord(i32 11, i8* %882, %struct.FILE_POS* %883)
  store %union.rec* %884, %union.rec** %tmp, align 8
  %885 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %886 = zext i8 %885 to i32
  store i32 %886, i32* @zz_size, align 4
  %887 = sext i32 %886 to i64
  %888 = icmp uge i64 %887, 265
  br i1 %888, label %889, label %892

; <label>:889                                     ; preds = %880
  %890 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %891 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %890)
  br label %917

; <label>:892                                     ; preds = %880
  %893 = load i32, i32* @zz_size, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %894
  %896 = load %union.rec*, %union.rec** %895, align 8
  %897 = icmp eq %union.rec* %896, null
  br i1 %897, label %898, label %902

; <label>:898                                     ; preds = %892
  %899 = load i32, i32* @zz_size, align 4
  %900 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %901 = call %union.rec* @GetMemory(i32 %899, %struct.FILE_POS* %900)
  store %union.rec* %901, %union.rec** @zz_hold, align 8
  br label %916

; <label>:902                                     ; preds = %892
  %903 = load i32, i32* @zz_size, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %904
  %906 = load %union.rec*, %union.rec** %905, align 8
  store %union.rec* %906, %union.rec** @zz_hold, align 8
  store %union.rec* %906, %union.rec** @zz_hold, align 8
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %908 = bitcast %union.rec* %907 to %struct.word_type*
  %909 = getelementptr inbounds %struct.word_type, %struct.word_type* %908, i32 0, i32 0
  %910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %909, i32 0, i64 0
  %911 = getelementptr inbounds %struct.LIST, %struct.LIST* %910, i32 0, i32 0
  %912 = load %union.rec*, %union.rec** %911, align 8
  %913 = load i32, i32* @zz_size, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %914
  store %union.rec* %912, %union.rec** %915, align 8
  br label %916

; <label>:916                                     ; preds = %902, %898
  br label %917

; <label>:917                                     ; preds = %916, %889
  %918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %919 = bitcast %union.rec* %918 to %struct.word_type*
  %920 = getelementptr inbounds %struct.word_type, %struct.word_type* %919, i32 0, i32 1
  %921 = bitcast %union.FIRST_UNION* %920 to %struct.anon*
  %922 = getelementptr inbounds %struct.anon, %struct.anon* %921, i32 0, i32 0
  store i8 0, i8* %922, align 1
  %923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %925 = bitcast %union.rec* %924 to %struct.word_type*
  %926 = getelementptr inbounds %struct.word_type, %struct.word_type* %925, i32 0, i32 0
  %927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %926, i32 0, i64 1
  %928 = getelementptr inbounds %struct.LIST, %struct.LIST* %927, i32 0, i32 1
  store %union.rec* %923, %union.rec** %928, align 8
  %929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %930 = bitcast %union.rec* %929 to %struct.word_type*
  %931 = getelementptr inbounds %struct.word_type, %struct.word_type* %930, i32 0, i32 0
  %932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %931, i32 0, i64 1
  %933 = getelementptr inbounds %struct.LIST, %struct.LIST* %932, i32 0, i32 0
  store %union.rec* %923, %union.rec** %933, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %935 = bitcast %union.rec* %934 to %struct.word_type*
  %936 = getelementptr inbounds %struct.word_type, %struct.word_type* %935, i32 0, i32 0
  %937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %936, i32 0, i64 0
  %938 = getelementptr inbounds %struct.LIST, %struct.LIST* %937, i32 0, i32 1
  store %union.rec* %923, %union.rec** %938, align 8
  %939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %940 = bitcast %union.rec* %939 to %struct.word_type*
  %941 = getelementptr inbounds %struct.word_type, %struct.word_type* %940, i32 0, i32 0
  %942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %941, i32 0, i64 0
  %943 = getelementptr inbounds %struct.LIST, %struct.LIST* %942, i32 0, i32 0
  store %union.rec* %923, %union.rec** %943, align 8
  store %union.rec* %923, %union.rec** @xx_link, align 8
  %944 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %944, %union.rec** @zz_res, align 8
  %945 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %945, %union.rec** @zz_hold, align 8
  %946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %947 = icmp eq %union.rec* %946, null
  br i1 %947, label %948, label %950

; <label>:948                                     ; preds = %917
  %949 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %998

; <label>:950                                     ; preds = %917
  %951 = load %union.rec*, %union.rec** @zz_res, align 8
  %952 = icmp eq %union.rec* %951, null
  br i1 %952, label %953, label %955

; <label>:953                                     ; preds = %950
  %954 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %996

; <label>:955                                     ; preds = %950
  %956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %957 = bitcast %union.rec* %956 to %struct.word_type*
  %958 = getelementptr inbounds %struct.word_type, %struct.word_type* %957, i32 0, i32 0
  %959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %958, i32 0, i64 0
  %960 = getelementptr inbounds %struct.LIST, %struct.LIST* %959, i32 0, i32 0
  %961 = load %union.rec*, %union.rec** %960, align 8
  store %union.rec* %961, %union.rec** @zz_tmp, align 8
  %962 = load %union.rec*, %union.rec** @zz_res, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 0
  %965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %964, i32 0, i64 0
  %966 = getelementptr inbounds %struct.LIST, %struct.LIST* %965, i32 0, i32 0
  %967 = load %union.rec*, %union.rec** %966, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 0
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 0
  store %union.rec* %967, %union.rec** %972, align 8
  %973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %974 = load %union.rec*, %union.rec** @zz_res, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 0
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 0
  %979 = load %union.rec*, %union.rec** %978, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 0
  %982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %981, i32 0, i64 0
  %983 = getelementptr inbounds %struct.LIST, %struct.LIST* %982, i32 0, i32 1
  store %union.rec* %973, %union.rec** %983, align 8
  %984 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %985 = load %union.rec*, %union.rec** @zz_res, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 0
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 0
  store %union.rec* %984, %union.rec** %989, align 8
  %990 = load %union.rec*, %union.rec** @zz_res, align 8
  %991 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %992 = bitcast %union.rec* %991 to %struct.word_type*
  %993 = getelementptr inbounds %struct.word_type, %struct.word_type* %992, i32 0, i32 0
  %994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %993, i32 0, i64 0
  %995 = getelementptr inbounds %struct.LIST, %struct.LIST* %994, i32 0, i32 1
  store %union.rec* %990, %union.rec** %995, align 8
  br label %996

; <label>:996                                     ; preds = %955, %953
  %997 = phi %union.rec* [ %954, %953 ], [ %990, %955 ]
  br label %998

; <label>:998                                     ; preds = %996, %948
  %999 = phi %union.rec* [ %949, %948 ], [ %997, %996 ]
  %1000 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1000, %union.rec** @zz_res, align 8
  %1001 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1001, %union.rec** @zz_hold, align 8
  %1002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1003 = icmp eq %union.rec* %1002, null
  br i1 %1003, label %1004, label %1006

; <label>:1004                                    ; preds = %998
  %1005 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1054

; <label>:1006                                    ; preds = %998
  %1007 = load %union.rec*, %union.rec** @zz_res, align 8
  %1008 = icmp eq %union.rec* %1007, null
  br i1 %1008, label %1009, label %1011

; <label>:1009                                    ; preds = %1006
  %1010 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1052

; <label>:1011                                    ; preds = %1006
  %1012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1013 = bitcast %union.rec* %1012 to %struct.word_type*
  %1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %1013, i32 0, i32 0
  %1015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1014, i32 0, i64 1
  %1016 = getelementptr inbounds %struct.LIST, %struct.LIST* %1015, i32 0, i32 0
  %1017 = load %union.rec*, %union.rec** %1016, align 8
  store %union.rec* %1017, %union.rec** @zz_tmp, align 8
  %1018 = load %union.rec*, %union.rec** @zz_res, align 8
  %1019 = bitcast %union.rec* %1018 to %struct.word_type*
  %1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %1019, i32 0, i32 0
  %1021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1020, i32 0, i64 1
  %1022 = getelementptr inbounds %struct.LIST, %struct.LIST* %1021, i32 0, i32 0
  %1023 = load %union.rec*, %union.rec** %1022, align 8
  %1024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1025 = bitcast %union.rec* %1024 to %struct.word_type*
  %1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1026, i32 0, i64 1
  %1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %1027, i32 0, i32 0
  store %union.rec* %1023, %union.rec** %1028, align 8
  %1029 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1030 = load %union.rec*, %union.rec** @zz_res, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.word_type*
  %1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %1031, i32 0, i32 0
  %1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1032, i32 0, i64 1
  %1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %1033, i32 0, i32 0
  %1035 = load %union.rec*, %union.rec** %1034, align 8
  %1036 = bitcast %union.rec* %1035 to %struct.word_type*
  %1037 = getelementptr inbounds %struct.word_type, %struct.word_type* %1036, i32 0, i32 0
  %1038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1037, i32 0, i64 1
  %1039 = getelementptr inbounds %struct.LIST, %struct.LIST* %1038, i32 0, i32 1
  store %union.rec* %1029, %union.rec** %1039, align 8
  %1040 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1041 = load %union.rec*, %union.rec** @zz_res, align 8
  %1042 = bitcast %union.rec* %1041 to %struct.word_type*
  %1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %1042, i32 0, i32 0
  %1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1043, i32 0, i64 1
  %1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %1044, i32 0, i32 0
  store %union.rec* %1040, %union.rec** %1045, align 8
  %1046 = load %union.rec*, %union.rec** @zz_res, align 8
  %1047 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.word_type*
  %1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %1048, i32 0, i32 0
  %1050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1049, i32 0, i64 1
  %1051 = getelementptr inbounds %struct.LIST, %struct.LIST* %1050, i32 0, i32 1
  store %union.rec* %1046, %union.rec** %1051, align 8
  br label %1052

; <label>:1052                                    ; preds = %1011, %1009
  %1053 = phi %union.rec* [ %1010, %1009 ], [ %1046, %1011 ]
  br label %1054

; <label>:1054                                    ; preds = %1052, %1004
  %1055 = phi %union.rec* [ %1005, %1004 ], [ %1053, %1052 ]
  %1056 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1057 = load %struct.tm*, %struct.tm** %now, align 8
  %1058 = getelementptr inbounds %struct.tm, %struct.tm* %1057, i32 0, i32 1
  %1059 = load i32, i32* %1058, align 4
  %1060 = call i32 (i8*, i8*, ...) @sprintf(i8* %1056, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %1059) #3
  %1061 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %1062 = zext i8 %1061 to i32
  store i32 %1062, i32* @zz_size, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = icmp uge i64 %1063, 265
  br i1 %1064, label %1065, label %1068

; <label>:1065                                    ; preds = %1054
  %1066 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1067 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1066)
  br label %1093

; <label>:1068                                    ; preds = %1054
  %1069 = load i32, i32* @zz_size, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1070
  %1072 = load %union.rec*, %union.rec** %1071, align 8
  %1073 = icmp eq %union.rec* %1072, null
  br i1 %1073, label %1074, label %1078

; <label>:1074                                    ; preds = %1068
  %1075 = load i32, i32* @zz_size, align 4
  %1076 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1077 = call %union.rec* @GetMemory(i32 %1075, %struct.FILE_POS* %1076)
  store %union.rec* %1077, %union.rec** @zz_hold, align 8
  br label %1092

; <label>:1078                                    ; preds = %1068
  %1079 = load i32, i32* @zz_size, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1080
  %1082 = load %union.rec*, %union.rec** %1081, align 8
  store %union.rec* %1082, %union.rec** @zz_hold, align 8
  store %union.rec* %1082, %union.rec** @zz_hold, align 8
  %1083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 0
  %1086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1085, i32 0, i64 0
  %1087 = getelementptr inbounds %struct.LIST, %struct.LIST* %1086, i32 0, i32 0
  %1088 = load %union.rec*, %union.rec** %1087, align 8
  %1089 = load i32, i32* @zz_size, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1090
  store %union.rec* %1088, %union.rec** %1091, align 8
  br label %1092

; <label>:1092                                    ; preds = %1078, %1074
  br label %1093

; <label>:1093                                    ; preds = %1092, %1065
  %1094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 1
  %1097 = bitcast %union.FIRST_UNION* %1096 to %struct.anon*
  %1098 = getelementptr inbounds %struct.anon, %struct.anon* %1097, i32 0, i32 0
  store i8 10, i8* %1098, align 1
  %1099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.word_type*
  %1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %1101, i32 0, i32 0
  %1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1102, i32 0, i64 1
  %1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %1103, i32 0, i32 1
  store %union.rec* %1099, %union.rec** %1104, align 8
  %1105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1106 = bitcast %union.rec* %1105 to %struct.word_type*
  %1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %1106, i32 0, i32 0
  %1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1107, i32 0, i64 1
  %1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %1108, i32 0, i32 0
  store %union.rec* %1099, %union.rec** %1109, align 8
  %1110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.word_type*
  %1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %1111, i32 0, i32 0
  %1113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1112, i32 0, i64 0
  %1114 = getelementptr inbounds %struct.LIST, %struct.LIST* %1113, i32 0, i32 1
  store %union.rec* %1099, %union.rec** %1114, align 8
  %1115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1116 = bitcast %union.rec* %1115 to %struct.word_type*
  %1117 = getelementptr inbounds %struct.word_type, %struct.word_type* %1116, i32 0, i32 0
  %1118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1117, i32 0, i64 0
  %1119 = getelementptr inbounds %struct.LIST, %struct.LIST* %1118, i32 0, i32 0
  store %union.rec* %1099, %union.rec** %1119, align 8
  store %union.rec* %1099, %union.rec** %par, align 8
  %1120 = load %union.rec*, %union.rec** %minute, align 8
  %1121 = load %union.rec*, %union.rec** %par, align 8
  %1122 = bitcast %union.rec* %1121 to %struct.closure_type*
  %1123 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1122, i32 0, i32 5
  store %union.rec* %1120, %union.rec** %1123, align 8
  %1124 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1125 = zext i8 %1124 to i32
  store i32 %1125, i32* @zz_size, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = icmp uge i64 %1126, 265
  br i1 %1127, label %1128, label %1131

; <label>:1128                                    ; preds = %1093
  %1129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1130 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1129)
  br label %1156

; <label>:1131                                    ; preds = %1093
  %1132 = load i32, i32* @zz_size, align 4
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1133
  %1135 = load %union.rec*, %union.rec** %1134, align 8
  %1136 = icmp eq %union.rec* %1135, null
  br i1 %1136, label %1137, label %1141

; <label>:1137                                    ; preds = %1131
  %1138 = load i32, i32* @zz_size, align 4
  %1139 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1140 = call %union.rec* @GetMemory(i32 %1138, %struct.FILE_POS* %1139)
  store %union.rec* %1140, %union.rec** @zz_hold, align 8
  br label %1155

; <label>:1141                                    ; preds = %1131
  %1142 = load i32, i32* @zz_size, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1143
  %1145 = load %union.rec*, %union.rec** %1144, align 8
  store %union.rec* %1145, %union.rec** @zz_hold, align 8
  store %union.rec* %1145, %union.rec** @zz_hold, align 8
  %1146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1147 = bitcast %union.rec* %1146 to %struct.word_type*
  %1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %1147, i32 0, i32 0
  %1149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1148, i32 0, i64 0
  %1150 = getelementptr inbounds %struct.LIST, %struct.LIST* %1149, i32 0, i32 0
  %1151 = load %union.rec*, %union.rec** %1150, align 8
  %1152 = load i32, i32* @zz_size, align 4
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1153
  store %union.rec* %1151, %union.rec** %1154, align 8
  br label %1155

; <label>:1155                                    ; preds = %1141, %1137
  br label %1156

; <label>:1156                                    ; preds = %1155, %1128
  %1157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1158 = bitcast %union.rec* %1157 to %struct.word_type*
  %1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %1158, i32 0, i32 1
  %1160 = bitcast %union.FIRST_UNION* %1159 to %struct.anon*
  %1161 = getelementptr inbounds %struct.anon, %struct.anon* %1160, i32 0, i32 0
  store i8 0, i8* %1161, align 1
  %1162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1164 = bitcast %union.rec* %1163 to %struct.word_type*
  %1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %1164, i32 0, i32 0
  %1166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1165, i32 0, i64 1
  %1167 = getelementptr inbounds %struct.LIST, %struct.LIST* %1166, i32 0, i32 1
  store %union.rec* %1162, %union.rec** %1167, align 8
  %1168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1169 = bitcast %union.rec* %1168 to %struct.word_type*
  %1170 = getelementptr inbounds %struct.word_type, %struct.word_type* %1169, i32 0, i32 0
  %1171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1170, i32 0, i64 1
  %1172 = getelementptr inbounds %struct.LIST, %struct.LIST* %1171, i32 0, i32 0
  store %union.rec* %1162, %union.rec** %1172, align 8
  %1173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1174 = bitcast %union.rec* %1173 to %struct.word_type*
  %1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %1174, i32 0, i32 0
  %1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1175, i32 0, i64 0
  %1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %1176, i32 0, i32 1
  store %union.rec* %1162, %union.rec** %1177, align 8
  %1178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1179 = bitcast %union.rec* %1178 to %struct.word_type*
  %1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %1179, i32 0, i32 0
  %1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1180, i32 0, i64 0
  %1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %1181, i32 0, i32 0
  store %union.rec* %1162, %union.rec** %1182, align 8
  store %union.rec* %1162, %union.rec** @xx_link, align 8
  %1183 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1183, %union.rec** @zz_res, align 8
  %1184 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %1184, %union.rec** @zz_hold, align 8
  %1185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1186 = icmp eq %union.rec* %1185, null
  br i1 %1186, label %1187, label %1189

; <label>:1187                                    ; preds = %1156
  %1188 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1237

; <label>:1189                                    ; preds = %1156
  %1190 = load %union.rec*, %union.rec** @zz_res, align 8
  %1191 = icmp eq %union.rec* %1190, null
  br i1 %1191, label %1192, label %1194

; <label>:1192                                    ; preds = %1189
  %1193 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1235

; <label>:1194                                    ; preds = %1189
  %1195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1196 = bitcast %union.rec* %1195 to %struct.word_type*
  %1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %1196, i32 0, i32 0
  %1198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1197, i32 0, i64 0
  %1199 = getelementptr inbounds %struct.LIST, %struct.LIST* %1198, i32 0, i32 0
  %1200 = load %union.rec*, %union.rec** %1199, align 8
  store %union.rec* %1200, %union.rec** @zz_tmp, align 8
  %1201 = load %union.rec*, %union.rec** @zz_res, align 8
  %1202 = bitcast %union.rec* %1201 to %struct.word_type*
  %1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %1202, i32 0, i32 0
  %1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1203, i32 0, i64 0
  %1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %1204, i32 0, i32 0
  %1206 = load %union.rec*, %union.rec** %1205, align 8
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1208 = bitcast %union.rec* %1207 to %struct.word_type*
  %1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %1208, i32 0, i32 0
  %1210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1209, i32 0, i64 0
  %1211 = getelementptr inbounds %struct.LIST, %struct.LIST* %1210, i32 0, i32 0
  store %union.rec* %1206, %union.rec** %1211, align 8
  %1212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1213 = load %union.rec*, %union.rec** @zz_res, align 8
  %1214 = bitcast %union.rec* %1213 to %struct.word_type*
  %1215 = getelementptr inbounds %struct.word_type, %struct.word_type* %1214, i32 0, i32 0
  %1216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1215, i32 0, i64 0
  %1217 = getelementptr inbounds %struct.LIST, %struct.LIST* %1216, i32 0, i32 0
  %1218 = load %union.rec*, %union.rec** %1217, align 8
  %1219 = bitcast %union.rec* %1218 to %struct.word_type*
  %1220 = getelementptr inbounds %struct.word_type, %struct.word_type* %1219, i32 0, i32 0
  %1221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1220, i32 0, i64 0
  %1222 = getelementptr inbounds %struct.LIST, %struct.LIST* %1221, i32 0, i32 1
  store %union.rec* %1212, %union.rec** %1222, align 8
  %1223 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1224 = load %union.rec*, %union.rec** @zz_res, align 8
  %1225 = bitcast %union.rec* %1224 to %struct.word_type*
  %1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %1225, i32 0, i32 0
  %1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1226, i32 0, i64 0
  %1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %1227, i32 0, i32 0
  store %union.rec* %1223, %union.rec** %1228, align 8
  %1229 = load %union.rec*, %union.rec** @zz_res, align 8
  %1230 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1231 = bitcast %union.rec* %1230 to %struct.word_type*
  %1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %1231, i32 0, i32 0
  %1233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1232, i32 0, i64 0
  %1234 = getelementptr inbounds %struct.LIST, %struct.LIST* %1233, i32 0, i32 1
  store %union.rec* %1229, %union.rec** %1234, align 8
  br label %1235

; <label>:1235                                    ; preds = %1194, %1192
  %1236 = phi %union.rec* [ %1193, %1192 ], [ %1229, %1194 ]
  br label %1237

; <label>:1237                                    ; preds = %1235, %1187
  %1238 = phi %union.rec* [ %1188, %1187 ], [ %1236, %1235 ]
  %1239 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1239, %union.rec** @zz_res, align 8
  %1240 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1240, %union.rec** @zz_hold, align 8
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1242 = icmp eq %union.rec* %1241, null
  br i1 %1242, label %1243, label %1245

; <label>:1243                                    ; preds = %1237
  %1244 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1293

; <label>:1245                                    ; preds = %1237
  %1246 = load %union.rec*, %union.rec** @zz_res, align 8
  %1247 = icmp eq %union.rec* %1246, null
  br i1 %1247, label %1248, label %1250

; <label>:1248                                    ; preds = %1245
  %1249 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1291

; <label>:1250                                    ; preds = %1245
  %1251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1252 = bitcast %union.rec* %1251 to %struct.word_type*
  %1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %1252, i32 0, i32 0
  %1254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1253, i32 0, i64 1
  %1255 = getelementptr inbounds %struct.LIST, %struct.LIST* %1254, i32 0, i32 0
  %1256 = load %union.rec*, %union.rec** %1255, align 8
  store %union.rec* %1256, %union.rec** @zz_tmp, align 8
  %1257 = load %union.rec*, %union.rec** @zz_res, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 0
  %1260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1259, i32 0, i64 1
  %1261 = getelementptr inbounds %struct.LIST, %struct.LIST* %1260, i32 0, i32 0
  %1262 = load %union.rec*, %union.rec** %1261, align 8
  %1263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1264 = bitcast %union.rec* %1263 to %struct.word_type*
  %1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %1264, i32 0, i32 0
  %1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1265, i32 0, i64 1
  %1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %1266, i32 0, i32 0
  store %union.rec* %1262, %union.rec** %1267, align 8
  %1268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1269 = load %union.rec*, %union.rec** @zz_res, align 8
  %1270 = bitcast %union.rec* %1269 to %struct.word_type*
  %1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %1270, i32 0, i32 0
  %1272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1271, i32 0, i64 1
  %1273 = getelementptr inbounds %struct.LIST, %struct.LIST* %1272, i32 0, i32 0
  %1274 = load %union.rec*, %union.rec** %1273, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 0
  %1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1276, i32 0, i64 1
  %1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %1277, i32 0, i32 1
  store %union.rec* %1268, %union.rec** %1278, align 8
  %1279 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1280 = load %union.rec*, %union.rec** @zz_res, align 8
  %1281 = bitcast %union.rec* %1280 to %struct.word_type*
  %1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %1281, i32 0, i32 0
  %1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1282, i32 0, i64 1
  %1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %1283, i32 0, i32 0
  store %union.rec* %1279, %union.rec** %1284, align 8
  %1285 = load %union.rec*, %union.rec** @zz_res, align 8
  %1286 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1287 = bitcast %union.rec* %1286 to %struct.word_type*
  %1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %1287, i32 0, i32 0
  %1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1288, i32 0, i64 1
  %1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %1289, i32 0, i32 1
  store %union.rec* %1285, %union.rec** %1290, align 8
  br label %1291

; <label>:1291                                    ; preds = %1250, %1248
  %1292 = phi %union.rec* [ %1249, %1248 ], [ %1285, %1250 ]
  br label %1293

; <label>:1293                                    ; preds = %1291, %1243
  %1294 = phi %union.rec* [ %1244, %1243 ], [ %1292, %1291 ]
  %1295 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1296 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1297 = call %union.rec* @MakeWord(i32 11, i8* %1295, %struct.FILE_POS* %1296)
  store %union.rec* %1297, %union.rec** %tmp, align 8
  %1298 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1299 = zext i8 %1298 to i32
  store i32 %1299, i32* @zz_size, align 4
  %1300 = sext i32 %1299 to i64
  %1301 = icmp uge i64 %1300, 265
  br i1 %1301, label %1302, label %1305

; <label>:1302                                    ; preds = %1293
  %1303 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1304 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1303)
  br label %1330

; <label>:1305                                    ; preds = %1293
  %1306 = load i32, i32* @zz_size, align 4
  %1307 = sext i32 %1306 to i64
  %1308 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1307
  %1309 = load %union.rec*, %union.rec** %1308, align 8
  %1310 = icmp eq %union.rec* %1309, null
  br i1 %1310, label %1311, label %1315

; <label>:1311                                    ; preds = %1305
  %1312 = load i32, i32* @zz_size, align 4
  %1313 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1314 = call %union.rec* @GetMemory(i32 %1312, %struct.FILE_POS* %1313)
  store %union.rec* %1314, %union.rec** @zz_hold, align 8
  br label %1329

; <label>:1315                                    ; preds = %1305
  %1316 = load i32, i32* @zz_size, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1317
  %1319 = load %union.rec*, %union.rec** %1318, align 8
  store %union.rec* %1319, %union.rec** @zz_hold, align 8
  store %union.rec* %1319, %union.rec** @zz_hold, align 8
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1321 = bitcast %union.rec* %1320 to %struct.word_type*
  %1322 = getelementptr inbounds %struct.word_type, %struct.word_type* %1321, i32 0, i32 0
  %1323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1322, i32 0, i64 0
  %1324 = getelementptr inbounds %struct.LIST, %struct.LIST* %1323, i32 0, i32 0
  %1325 = load %union.rec*, %union.rec** %1324, align 8
  %1326 = load i32, i32* @zz_size, align 4
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1327
  store %union.rec* %1325, %union.rec** %1328, align 8
  br label %1329

; <label>:1329                                    ; preds = %1315, %1311
  br label %1330

; <label>:1330                                    ; preds = %1329, %1302
  %1331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1332 = bitcast %union.rec* %1331 to %struct.word_type*
  %1333 = getelementptr inbounds %struct.word_type, %struct.word_type* %1332, i32 0, i32 1
  %1334 = bitcast %union.FIRST_UNION* %1333 to %struct.anon*
  %1335 = getelementptr inbounds %struct.anon, %struct.anon* %1334, i32 0, i32 0
  store i8 0, i8* %1335, align 1
  %1336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1338 = bitcast %union.rec* %1337 to %struct.word_type*
  %1339 = getelementptr inbounds %struct.word_type, %struct.word_type* %1338, i32 0, i32 0
  %1340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1339, i32 0, i64 1
  %1341 = getelementptr inbounds %struct.LIST, %struct.LIST* %1340, i32 0, i32 1
  store %union.rec* %1336, %union.rec** %1341, align 8
  %1342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1343 = bitcast %union.rec* %1342 to %struct.word_type*
  %1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %1343, i32 0, i32 0
  %1345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1344, i32 0, i64 1
  %1346 = getelementptr inbounds %struct.LIST, %struct.LIST* %1345, i32 0, i32 0
  store %union.rec* %1336, %union.rec** %1346, align 8
  %1347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1348 = bitcast %union.rec* %1347 to %struct.word_type*
  %1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %1348, i32 0, i32 0
  %1350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1349, i32 0, i64 0
  %1351 = getelementptr inbounds %struct.LIST, %struct.LIST* %1350, i32 0, i32 1
  store %union.rec* %1336, %union.rec** %1351, align 8
  %1352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1353 = bitcast %union.rec* %1352 to %struct.word_type*
  %1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %1353, i32 0, i32 0
  %1355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1354, i32 0, i64 0
  %1356 = getelementptr inbounds %struct.LIST, %struct.LIST* %1355, i32 0, i32 0
  store %union.rec* %1336, %union.rec** %1356, align 8
  store %union.rec* %1336, %union.rec** @xx_link, align 8
  %1357 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1357, %union.rec** @zz_res, align 8
  %1358 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1358, %union.rec** @zz_hold, align 8
  %1359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1360 = icmp eq %union.rec* %1359, null
  br i1 %1360, label %1361, label %1363

; <label>:1361                                    ; preds = %1330
  %1362 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1411

; <label>:1363                                    ; preds = %1330
  %1364 = load %union.rec*, %union.rec** @zz_res, align 8
  %1365 = icmp eq %union.rec* %1364, null
  br i1 %1365, label %1366, label %1368

; <label>:1366                                    ; preds = %1363
  %1367 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1409

; <label>:1368                                    ; preds = %1363
  %1369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1370 = bitcast %union.rec* %1369 to %struct.word_type*
  %1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %1370, i32 0, i32 0
  %1372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1371, i32 0, i64 0
  %1373 = getelementptr inbounds %struct.LIST, %struct.LIST* %1372, i32 0, i32 0
  %1374 = load %union.rec*, %union.rec** %1373, align 8
  store %union.rec* %1374, %union.rec** @zz_tmp, align 8
  %1375 = load %union.rec*, %union.rec** @zz_res, align 8
  %1376 = bitcast %union.rec* %1375 to %struct.word_type*
  %1377 = getelementptr inbounds %struct.word_type, %struct.word_type* %1376, i32 0, i32 0
  %1378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1377, i32 0, i64 0
  %1379 = getelementptr inbounds %struct.LIST, %struct.LIST* %1378, i32 0, i32 0
  %1380 = load %union.rec*, %union.rec** %1379, align 8
  %1381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1382 = bitcast %union.rec* %1381 to %struct.word_type*
  %1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %1382, i32 0, i32 0
  %1384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1383, i32 0, i64 0
  %1385 = getelementptr inbounds %struct.LIST, %struct.LIST* %1384, i32 0, i32 0
  store %union.rec* %1380, %union.rec** %1385, align 8
  %1386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1387 = load %union.rec*, %union.rec** @zz_res, align 8
  %1388 = bitcast %union.rec* %1387 to %struct.word_type*
  %1389 = getelementptr inbounds %struct.word_type, %struct.word_type* %1388, i32 0, i32 0
  %1390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1389, i32 0, i64 0
  %1391 = getelementptr inbounds %struct.LIST, %struct.LIST* %1390, i32 0, i32 0
  %1392 = load %union.rec*, %union.rec** %1391, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.word_type*
  %1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %1393, i32 0, i32 0
  %1395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1394, i32 0, i64 0
  %1396 = getelementptr inbounds %struct.LIST, %struct.LIST* %1395, i32 0, i32 1
  store %union.rec* %1386, %union.rec** %1396, align 8
  %1397 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1398 = load %union.rec*, %union.rec** @zz_res, align 8
  %1399 = bitcast %union.rec* %1398 to %struct.word_type*
  %1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %1399, i32 0, i32 0
  %1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1400, i32 0, i64 0
  %1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %1401, i32 0, i32 0
  store %union.rec* %1397, %union.rec** %1402, align 8
  %1403 = load %union.rec*, %union.rec** @zz_res, align 8
  %1404 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1405 = bitcast %union.rec* %1404 to %struct.word_type*
  %1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %1405, i32 0, i32 0
  %1407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1406, i32 0, i64 0
  %1408 = getelementptr inbounds %struct.LIST, %struct.LIST* %1407, i32 0, i32 1
  store %union.rec* %1403, %union.rec** %1408, align 8
  br label %1409

; <label>:1409                                    ; preds = %1368, %1366
  %1410 = phi %union.rec* [ %1367, %1366 ], [ %1403, %1368 ]
  br label %1411

; <label>:1411                                    ; preds = %1409, %1361
  %1412 = phi %union.rec* [ %1362, %1361 ], [ %1410, %1409 ]
  %1413 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1413, %union.rec** @zz_res, align 8
  %1414 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1414, %union.rec** @zz_hold, align 8
  %1415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1416 = icmp eq %union.rec* %1415, null
  br i1 %1416, label %1417, label %1419

; <label>:1417                                    ; preds = %1411
  %1418 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1467

; <label>:1419                                    ; preds = %1411
  %1420 = load %union.rec*, %union.rec** @zz_res, align 8
  %1421 = icmp eq %union.rec* %1420, null
  br i1 %1421, label %1422, label %1424

; <label>:1422                                    ; preds = %1419
  %1423 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1465

; <label>:1424                                    ; preds = %1419
  %1425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1426 = bitcast %union.rec* %1425 to %struct.word_type*
  %1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %1426, i32 0, i32 0
  %1428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1427, i32 0, i64 1
  %1429 = getelementptr inbounds %struct.LIST, %struct.LIST* %1428, i32 0, i32 0
  %1430 = load %union.rec*, %union.rec** %1429, align 8
  store %union.rec* %1430, %union.rec** @zz_tmp, align 8
  %1431 = load %union.rec*, %union.rec** @zz_res, align 8
  %1432 = bitcast %union.rec* %1431 to %struct.word_type*
  %1433 = getelementptr inbounds %struct.word_type, %struct.word_type* %1432, i32 0, i32 0
  %1434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1433, i32 0, i64 1
  %1435 = getelementptr inbounds %struct.LIST, %struct.LIST* %1434, i32 0, i32 0
  %1436 = load %union.rec*, %union.rec** %1435, align 8
  %1437 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1438 = bitcast %union.rec* %1437 to %struct.word_type*
  %1439 = getelementptr inbounds %struct.word_type, %struct.word_type* %1438, i32 0, i32 0
  %1440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1439, i32 0, i64 1
  %1441 = getelementptr inbounds %struct.LIST, %struct.LIST* %1440, i32 0, i32 0
  store %union.rec* %1436, %union.rec** %1441, align 8
  %1442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1443 = load %union.rec*, %union.rec** @zz_res, align 8
  %1444 = bitcast %union.rec* %1443 to %struct.word_type*
  %1445 = getelementptr inbounds %struct.word_type, %struct.word_type* %1444, i32 0, i32 0
  %1446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1445, i32 0, i64 1
  %1447 = getelementptr inbounds %struct.LIST, %struct.LIST* %1446, i32 0, i32 0
  %1448 = load %union.rec*, %union.rec** %1447, align 8
  %1449 = bitcast %union.rec* %1448 to %struct.word_type*
  %1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %1449, i32 0, i32 0
  %1451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1450, i32 0, i64 1
  %1452 = getelementptr inbounds %struct.LIST, %struct.LIST* %1451, i32 0, i32 1
  store %union.rec* %1442, %union.rec** %1452, align 8
  %1453 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1454 = load %union.rec*, %union.rec** @zz_res, align 8
  %1455 = bitcast %union.rec* %1454 to %struct.word_type*
  %1456 = getelementptr inbounds %struct.word_type, %struct.word_type* %1455, i32 0, i32 0
  %1457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1456, i32 0, i64 1
  %1458 = getelementptr inbounds %struct.LIST, %struct.LIST* %1457, i32 0, i32 0
  store %union.rec* %1453, %union.rec** %1458, align 8
  %1459 = load %union.rec*, %union.rec** @zz_res, align 8
  %1460 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1461 = bitcast %union.rec* %1460 to %struct.word_type*
  %1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %1461, i32 0, i32 0
  %1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1462, i32 0, i64 1
  %1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %1463, i32 0, i32 1
  store %union.rec* %1459, %union.rec** %1464, align 8
  br label %1465

; <label>:1465                                    ; preds = %1424, %1422
  %1466 = phi %union.rec* [ %1423, %1422 ], [ %1459, %1424 ]
  br label %1467

; <label>:1467                                    ; preds = %1465, %1417
  %1468 = phi %union.rec* [ %1418, %1417 ], [ %1466, %1465 ]
  %1469 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1470 = load %struct.tm*, %struct.tm** %now, align 8
  %1471 = getelementptr inbounds %struct.tm, %struct.tm* %1470, i32 0, i32 2
  %1472 = load i32, i32* %1471, align 4
  %1473 = call i32 (i8*, i8*, ...) @sprintf(i8* %1469, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %1472) #3
  %1474 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %1475 = zext i8 %1474 to i32
  store i32 %1475, i32* @zz_size, align 4
  %1476 = sext i32 %1475 to i64
  %1477 = icmp uge i64 %1476, 265
  br i1 %1477, label %1478, label %1481

; <label>:1478                                    ; preds = %1467
  %1479 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1480 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1479)
  br label %1506

; <label>:1481                                    ; preds = %1467
  %1482 = load i32, i32* @zz_size, align 4
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1483
  %1485 = load %union.rec*, %union.rec** %1484, align 8
  %1486 = icmp eq %union.rec* %1485, null
  br i1 %1486, label %1487, label %1491

; <label>:1487                                    ; preds = %1481
  %1488 = load i32, i32* @zz_size, align 4
  %1489 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1490 = call %union.rec* @GetMemory(i32 %1488, %struct.FILE_POS* %1489)
  store %union.rec* %1490, %union.rec** @zz_hold, align 8
  br label %1505

; <label>:1491                                    ; preds = %1481
  %1492 = load i32, i32* @zz_size, align 4
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1493
  %1495 = load %union.rec*, %union.rec** %1494, align 8
  store %union.rec* %1495, %union.rec** @zz_hold, align 8
  store %union.rec* %1495, %union.rec** @zz_hold, align 8
  %1496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.word_type*
  %1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %1497, i32 0, i32 0
  %1499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1498, i32 0, i64 0
  %1500 = getelementptr inbounds %struct.LIST, %struct.LIST* %1499, i32 0, i32 0
  %1501 = load %union.rec*, %union.rec** %1500, align 8
  %1502 = load i32, i32* @zz_size, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1503
  store %union.rec* %1501, %union.rec** %1504, align 8
  br label %1505

; <label>:1505                                    ; preds = %1491, %1487
  br label %1506

; <label>:1506                                    ; preds = %1505, %1478
  %1507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1508 = bitcast %union.rec* %1507 to %struct.word_type*
  %1509 = getelementptr inbounds %struct.word_type, %struct.word_type* %1508, i32 0, i32 1
  %1510 = bitcast %union.FIRST_UNION* %1509 to %struct.anon*
  %1511 = getelementptr inbounds %struct.anon, %struct.anon* %1510, i32 0, i32 0
  store i8 10, i8* %1511, align 1
  %1512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1514 = bitcast %union.rec* %1513 to %struct.word_type*
  %1515 = getelementptr inbounds %struct.word_type, %struct.word_type* %1514, i32 0, i32 0
  %1516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1515, i32 0, i64 1
  %1517 = getelementptr inbounds %struct.LIST, %struct.LIST* %1516, i32 0, i32 1
  store %union.rec* %1512, %union.rec** %1517, align 8
  %1518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1519 = bitcast %union.rec* %1518 to %struct.word_type*
  %1520 = getelementptr inbounds %struct.word_type, %struct.word_type* %1519, i32 0, i32 0
  %1521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1520, i32 0, i64 1
  %1522 = getelementptr inbounds %struct.LIST, %struct.LIST* %1521, i32 0, i32 0
  store %union.rec* %1512, %union.rec** %1522, align 8
  %1523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1524 = bitcast %union.rec* %1523 to %struct.word_type*
  %1525 = getelementptr inbounds %struct.word_type, %struct.word_type* %1524, i32 0, i32 0
  %1526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1525, i32 0, i64 0
  %1527 = getelementptr inbounds %struct.LIST, %struct.LIST* %1526, i32 0, i32 1
  store %union.rec* %1512, %union.rec** %1527, align 8
  %1528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1529 = bitcast %union.rec* %1528 to %struct.word_type*
  %1530 = getelementptr inbounds %struct.word_type, %struct.word_type* %1529, i32 0, i32 0
  %1531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1530, i32 0, i64 0
  %1532 = getelementptr inbounds %struct.LIST, %struct.LIST* %1531, i32 0, i32 0
  store %union.rec* %1512, %union.rec** %1532, align 8
  store %union.rec* %1512, %union.rec** %par, align 8
  %1533 = load %union.rec*, %union.rec** %hour, align 8
  %1534 = load %union.rec*, %union.rec** %par, align 8
  %1535 = bitcast %union.rec* %1534 to %struct.closure_type*
  %1536 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1535, i32 0, i32 5
  store %union.rec* %1533, %union.rec** %1536, align 8
  %1537 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1538 = zext i8 %1537 to i32
  store i32 %1538, i32* @zz_size, align 4
  %1539 = sext i32 %1538 to i64
  %1540 = icmp uge i64 %1539, 265
  br i1 %1540, label %1541, label %1544

; <label>:1541                                    ; preds = %1506
  %1542 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1543 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1542)
  br label %1569

; <label>:1544                                    ; preds = %1506
  %1545 = load i32, i32* @zz_size, align 4
  %1546 = sext i32 %1545 to i64
  %1547 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1546
  %1548 = load %union.rec*, %union.rec** %1547, align 8
  %1549 = icmp eq %union.rec* %1548, null
  br i1 %1549, label %1550, label %1554

; <label>:1550                                    ; preds = %1544
  %1551 = load i32, i32* @zz_size, align 4
  %1552 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1553 = call %union.rec* @GetMemory(i32 %1551, %struct.FILE_POS* %1552)
  store %union.rec* %1553, %union.rec** @zz_hold, align 8
  br label %1568

; <label>:1554                                    ; preds = %1544
  %1555 = load i32, i32* @zz_size, align 4
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1556
  %1558 = load %union.rec*, %union.rec** %1557, align 8
  store %union.rec* %1558, %union.rec** @zz_hold, align 8
  store %union.rec* %1558, %union.rec** @zz_hold, align 8
  %1559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1560 = bitcast %union.rec* %1559 to %struct.word_type*
  %1561 = getelementptr inbounds %struct.word_type, %struct.word_type* %1560, i32 0, i32 0
  %1562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1561, i32 0, i64 0
  %1563 = getelementptr inbounds %struct.LIST, %struct.LIST* %1562, i32 0, i32 0
  %1564 = load %union.rec*, %union.rec** %1563, align 8
  %1565 = load i32, i32* @zz_size, align 4
  %1566 = sext i32 %1565 to i64
  %1567 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1566
  store %union.rec* %1564, %union.rec** %1567, align 8
  br label %1568

; <label>:1568                                    ; preds = %1554, %1550
  br label %1569

; <label>:1569                                    ; preds = %1568, %1541
  %1570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1571 = bitcast %union.rec* %1570 to %struct.word_type*
  %1572 = getelementptr inbounds %struct.word_type, %struct.word_type* %1571, i32 0, i32 1
  %1573 = bitcast %union.FIRST_UNION* %1572 to %struct.anon*
  %1574 = getelementptr inbounds %struct.anon, %struct.anon* %1573, i32 0, i32 0
  store i8 0, i8* %1574, align 1
  %1575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1577 = bitcast %union.rec* %1576 to %struct.word_type*
  %1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %1577, i32 0, i32 0
  %1579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1578, i32 0, i64 1
  %1580 = getelementptr inbounds %struct.LIST, %struct.LIST* %1579, i32 0, i32 1
  store %union.rec* %1575, %union.rec** %1580, align 8
  %1581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1582 = bitcast %union.rec* %1581 to %struct.word_type*
  %1583 = getelementptr inbounds %struct.word_type, %struct.word_type* %1582, i32 0, i32 0
  %1584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1583, i32 0, i64 1
  %1585 = getelementptr inbounds %struct.LIST, %struct.LIST* %1584, i32 0, i32 0
  store %union.rec* %1575, %union.rec** %1585, align 8
  %1586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1587 = bitcast %union.rec* %1586 to %struct.word_type*
  %1588 = getelementptr inbounds %struct.word_type, %struct.word_type* %1587, i32 0, i32 0
  %1589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1588, i32 0, i64 0
  %1590 = getelementptr inbounds %struct.LIST, %struct.LIST* %1589, i32 0, i32 1
  store %union.rec* %1575, %union.rec** %1590, align 8
  %1591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1592 = bitcast %union.rec* %1591 to %struct.word_type*
  %1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %1592, i32 0, i32 0
  %1594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1593, i32 0, i64 0
  %1595 = getelementptr inbounds %struct.LIST, %struct.LIST* %1594, i32 0, i32 0
  store %union.rec* %1575, %union.rec** %1595, align 8
  store %union.rec* %1575, %union.rec** @xx_link, align 8
  %1596 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1596, %union.rec** @zz_res, align 8
  %1597 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %1597, %union.rec** @zz_hold, align 8
  %1598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1599 = icmp eq %union.rec* %1598, null
  br i1 %1599, label %1600, label %1602

; <label>:1600                                    ; preds = %1569
  %1601 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1650

; <label>:1602                                    ; preds = %1569
  %1603 = load %union.rec*, %union.rec** @zz_res, align 8
  %1604 = icmp eq %union.rec* %1603, null
  br i1 %1604, label %1605, label %1607

; <label>:1605                                    ; preds = %1602
  %1606 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1648

; <label>:1607                                    ; preds = %1602
  %1608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1609 = bitcast %union.rec* %1608 to %struct.word_type*
  %1610 = getelementptr inbounds %struct.word_type, %struct.word_type* %1609, i32 0, i32 0
  %1611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1610, i32 0, i64 0
  %1612 = getelementptr inbounds %struct.LIST, %struct.LIST* %1611, i32 0, i32 0
  %1613 = load %union.rec*, %union.rec** %1612, align 8
  store %union.rec* %1613, %union.rec** @zz_tmp, align 8
  %1614 = load %union.rec*, %union.rec** @zz_res, align 8
  %1615 = bitcast %union.rec* %1614 to %struct.word_type*
  %1616 = getelementptr inbounds %struct.word_type, %struct.word_type* %1615, i32 0, i32 0
  %1617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1616, i32 0, i64 0
  %1618 = getelementptr inbounds %struct.LIST, %struct.LIST* %1617, i32 0, i32 0
  %1619 = load %union.rec*, %union.rec** %1618, align 8
  %1620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1621 = bitcast %union.rec* %1620 to %struct.word_type*
  %1622 = getelementptr inbounds %struct.word_type, %struct.word_type* %1621, i32 0, i32 0
  %1623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1622, i32 0, i64 0
  %1624 = getelementptr inbounds %struct.LIST, %struct.LIST* %1623, i32 0, i32 0
  store %union.rec* %1619, %union.rec** %1624, align 8
  %1625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1626 = load %union.rec*, %union.rec** @zz_res, align 8
  %1627 = bitcast %union.rec* %1626 to %struct.word_type*
  %1628 = getelementptr inbounds %struct.word_type, %struct.word_type* %1627, i32 0, i32 0
  %1629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1628, i32 0, i64 0
  %1630 = getelementptr inbounds %struct.LIST, %struct.LIST* %1629, i32 0, i32 0
  %1631 = load %union.rec*, %union.rec** %1630, align 8
  %1632 = bitcast %union.rec* %1631 to %struct.word_type*
  %1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %1632, i32 0, i32 0
  %1634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1633, i32 0, i64 0
  %1635 = getelementptr inbounds %struct.LIST, %struct.LIST* %1634, i32 0, i32 1
  store %union.rec* %1625, %union.rec** %1635, align 8
  %1636 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1637 = load %union.rec*, %union.rec** @zz_res, align 8
  %1638 = bitcast %union.rec* %1637 to %struct.word_type*
  %1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %1638, i32 0, i32 0
  %1640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1639, i32 0, i64 0
  %1641 = getelementptr inbounds %struct.LIST, %struct.LIST* %1640, i32 0, i32 0
  store %union.rec* %1636, %union.rec** %1641, align 8
  %1642 = load %union.rec*, %union.rec** @zz_res, align 8
  %1643 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1644 = bitcast %union.rec* %1643 to %struct.word_type*
  %1645 = getelementptr inbounds %struct.word_type, %struct.word_type* %1644, i32 0, i32 0
  %1646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1645, i32 0, i64 0
  %1647 = getelementptr inbounds %struct.LIST, %struct.LIST* %1646, i32 0, i32 1
  store %union.rec* %1642, %union.rec** %1647, align 8
  br label %1648

; <label>:1648                                    ; preds = %1607, %1605
  %1649 = phi %union.rec* [ %1606, %1605 ], [ %1642, %1607 ]
  br label %1650

; <label>:1650                                    ; preds = %1648, %1600
  %1651 = phi %union.rec* [ %1601, %1600 ], [ %1649, %1648 ]
  %1652 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1652, %union.rec** @zz_res, align 8
  %1653 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1653, %union.rec** @zz_hold, align 8
  %1654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1655 = icmp eq %union.rec* %1654, null
  br i1 %1655, label %1656, label %1658

; <label>:1656                                    ; preds = %1650
  %1657 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1706

; <label>:1658                                    ; preds = %1650
  %1659 = load %union.rec*, %union.rec** @zz_res, align 8
  %1660 = icmp eq %union.rec* %1659, null
  br i1 %1660, label %1661, label %1663

; <label>:1661                                    ; preds = %1658
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1704

; <label>:1663                                    ; preds = %1658
  %1664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1665 = bitcast %union.rec* %1664 to %struct.word_type*
  %1666 = getelementptr inbounds %struct.word_type, %struct.word_type* %1665, i32 0, i32 0
  %1667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1666, i32 0, i64 1
  %1668 = getelementptr inbounds %struct.LIST, %struct.LIST* %1667, i32 0, i32 0
  %1669 = load %union.rec*, %union.rec** %1668, align 8
  store %union.rec* %1669, %union.rec** @zz_tmp, align 8
  %1670 = load %union.rec*, %union.rec** @zz_res, align 8
  %1671 = bitcast %union.rec* %1670 to %struct.word_type*
  %1672 = getelementptr inbounds %struct.word_type, %struct.word_type* %1671, i32 0, i32 0
  %1673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1672, i32 0, i64 1
  %1674 = getelementptr inbounds %struct.LIST, %struct.LIST* %1673, i32 0, i32 0
  %1675 = load %union.rec*, %union.rec** %1674, align 8
  %1676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1677 = bitcast %union.rec* %1676 to %struct.word_type*
  %1678 = getelementptr inbounds %struct.word_type, %struct.word_type* %1677, i32 0, i32 0
  %1679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1678, i32 0, i64 1
  %1680 = getelementptr inbounds %struct.LIST, %struct.LIST* %1679, i32 0, i32 0
  store %union.rec* %1675, %union.rec** %1680, align 8
  %1681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1682 = load %union.rec*, %union.rec** @zz_res, align 8
  %1683 = bitcast %union.rec* %1682 to %struct.word_type*
  %1684 = getelementptr inbounds %struct.word_type, %struct.word_type* %1683, i32 0, i32 0
  %1685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1684, i32 0, i64 1
  %1686 = getelementptr inbounds %struct.LIST, %struct.LIST* %1685, i32 0, i32 0
  %1687 = load %union.rec*, %union.rec** %1686, align 8
  %1688 = bitcast %union.rec* %1687 to %struct.word_type*
  %1689 = getelementptr inbounds %struct.word_type, %struct.word_type* %1688, i32 0, i32 0
  %1690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1689, i32 0, i64 1
  %1691 = getelementptr inbounds %struct.LIST, %struct.LIST* %1690, i32 0, i32 1
  store %union.rec* %1681, %union.rec** %1691, align 8
  %1692 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1693 = load %union.rec*, %union.rec** @zz_res, align 8
  %1694 = bitcast %union.rec* %1693 to %struct.word_type*
  %1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %1694, i32 0, i32 0
  %1696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1695, i32 0, i64 1
  %1697 = getelementptr inbounds %struct.LIST, %struct.LIST* %1696, i32 0, i32 0
  store %union.rec* %1692, %union.rec** %1697, align 8
  %1698 = load %union.rec*, %union.rec** @zz_res, align 8
  %1699 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1700 = bitcast %union.rec* %1699 to %struct.word_type*
  %1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %1700, i32 0, i32 0
  %1702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1701, i32 0, i64 1
  %1703 = getelementptr inbounds %struct.LIST, %struct.LIST* %1702, i32 0, i32 1
  store %union.rec* %1698, %union.rec** %1703, align 8
  br label %1704

; <label>:1704                                    ; preds = %1663, %1661
  %1705 = phi %union.rec* [ %1662, %1661 ], [ %1698, %1663 ]
  br label %1706

; <label>:1706                                    ; preds = %1704, %1656
  %1707 = phi %union.rec* [ %1657, %1656 ], [ %1705, %1704 ]
  %1708 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1709 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1710 = call %union.rec* @MakeWord(i32 11, i8* %1708, %struct.FILE_POS* %1709)
  store %union.rec* %1710, %union.rec** %tmp, align 8
  %1711 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1712 = zext i8 %1711 to i32
  store i32 %1712, i32* @zz_size, align 4
  %1713 = sext i32 %1712 to i64
  %1714 = icmp uge i64 %1713, 265
  br i1 %1714, label %1715, label %1718

; <label>:1715                                    ; preds = %1706
  %1716 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1717 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1716)
  br label %1743

; <label>:1718                                    ; preds = %1706
  %1719 = load i32, i32* @zz_size, align 4
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1720
  %1722 = load %union.rec*, %union.rec** %1721, align 8
  %1723 = icmp eq %union.rec* %1722, null
  br i1 %1723, label %1724, label %1728

; <label>:1724                                    ; preds = %1718
  %1725 = load i32, i32* @zz_size, align 4
  %1726 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1727 = call %union.rec* @GetMemory(i32 %1725, %struct.FILE_POS* %1726)
  store %union.rec* %1727, %union.rec** @zz_hold, align 8
  br label %1742

; <label>:1728                                    ; preds = %1718
  %1729 = load i32, i32* @zz_size, align 4
  %1730 = sext i32 %1729 to i64
  %1731 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1730
  %1732 = load %union.rec*, %union.rec** %1731, align 8
  store %union.rec* %1732, %union.rec** @zz_hold, align 8
  store %union.rec* %1732, %union.rec** @zz_hold, align 8
  %1733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1734 = bitcast %union.rec* %1733 to %struct.word_type*
  %1735 = getelementptr inbounds %struct.word_type, %struct.word_type* %1734, i32 0, i32 0
  %1736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1735, i32 0, i64 0
  %1737 = getelementptr inbounds %struct.LIST, %struct.LIST* %1736, i32 0, i32 0
  %1738 = load %union.rec*, %union.rec** %1737, align 8
  %1739 = load i32, i32* @zz_size, align 4
  %1740 = sext i32 %1739 to i64
  %1741 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1740
  store %union.rec* %1738, %union.rec** %1741, align 8
  br label %1742

; <label>:1742                                    ; preds = %1728, %1724
  br label %1743

; <label>:1743                                    ; preds = %1742, %1715
  %1744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1745 = bitcast %union.rec* %1744 to %struct.word_type*
  %1746 = getelementptr inbounds %struct.word_type, %struct.word_type* %1745, i32 0, i32 1
  %1747 = bitcast %union.FIRST_UNION* %1746 to %struct.anon*
  %1748 = getelementptr inbounds %struct.anon, %struct.anon* %1747, i32 0, i32 0
  store i8 0, i8* %1748, align 1
  %1749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1751 = bitcast %union.rec* %1750 to %struct.word_type*
  %1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %1751, i32 0, i32 0
  %1753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1752, i32 0, i64 1
  %1754 = getelementptr inbounds %struct.LIST, %struct.LIST* %1753, i32 0, i32 1
  store %union.rec* %1749, %union.rec** %1754, align 8
  %1755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1756 = bitcast %union.rec* %1755 to %struct.word_type*
  %1757 = getelementptr inbounds %struct.word_type, %struct.word_type* %1756, i32 0, i32 0
  %1758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1757, i32 0, i64 1
  %1759 = getelementptr inbounds %struct.LIST, %struct.LIST* %1758, i32 0, i32 0
  store %union.rec* %1749, %union.rec** %1759, align 8
  %1760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1761 = bitcast %union.rec* %1760 to %struct.word_type*
  %1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %1761, i32 0, i32 0
  %1763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1762, i32 0, i64 0
  %1764 = getelementptr inbounds %struct.LIST, %struct.LIST* %1763, i32 0, i32 1
  store %union.rec* %1749, %union.rec** %1764, align 8
  %1765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1766 = bitcast %union.rec* %1765 to %struct.word_type*
  %1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %1766, i32 0, i32 0
  %1768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1767, i32 0, i64 0
  %1769 = getelementptr inbounds %struct.LIST, %struct.LIST* %1768, i32 0, i32 0
  store %union.rec* %1749, %union.rec** %1769, align 8
  store %union.rec* %1749, %union.rec** @xx_link, align 8
  %1770 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1770, %union.rec** @zz_res, align 8
  %1771 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1771, %union.rec** @zz_hold, align 8
  %1772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1773 = icmp eq %union.rec* %1772, null
  br i1 %1773, label %1774, label %1776

; <label>:1774                                    ; preds = %1743
  %1775 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1824

; <label>:1776                                    ; preds = %1743
  %1777 = load %union.rec*, %union.rec** @zz_res, align 8
  %1778 = icmp eq %union.rec* %1777, null
  br i1 %1778, label %1779, label %1781

; <label>:1779                                    ; preds = %1776
  %1780 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1822

; <label>:1781                                    ; preds = %1776
  %1782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1783 = bitcast %union.rec* %1782 to %struct.word_type*
  %1784 = getelementptr inbounds %struct.word_type, %struct.word_type* %1783, i32 0, i32 0
  %1785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1784, i32 0, i64 0
  %1786 = getelementptr inbounds %struct.LIST, %struct.LIST* %1785, i32 0, i32 0
  %1787 = load %union.rec*, %union.rec** %1786, align 8
  store %union.rec* %1787, %union.rec** @zz_tmp, align 8
  %1788 = load %union.rec*, %union.rec** @zz_res, align 8
  %1789 = bitcast %union.rec* %1788 to %struct.word_type*
  %1790 = getelementptr inbounds %struct.word_type, %struct.word_type* %1789, i32 0, i32 0
  %1791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1790, i32 0, i64 0
  %1792 = getelementptr inbounds %struct.LIST, %struct.LIST* %1791, i32 0, i32 0
  %1793 = load %union.rec*, %union.rec** %1792, align 8
  %1794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1795 = bitcast %union.rec* %1794 to %struct.word_type*
  %1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %1795, i32 0, i32 0
  %1797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1796, i32 0, i64 0
  %1798 = getelementptr inbounds %struct.LIST, %struct.LIST* %1797, i32 0, i32 0
  store %union.rec* %1793, %union.rec** %1798, align 8
  %1799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1800 = load %union.rec*, %union.rec** @zz_res, align 8
  %1801 = bitcast %union.rec* %1800 to %struct.word_type*
  %1802 = getelementptr inbounds %struct.word_type, %struct.word_type* %1801, i32 0, i32 0
  %1803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1802, i32 0, i64 0
  %1804 = getelementptr inbounds %struct.LIST, %struct.LIST* %1803, i32 0, i32 0
  %1805 = load %union.rec*, %union.rec** %1804, align 8
  %1806 = bitcast %union.rec* %1805 to %struct.word_type*
  %1807 = getelementptr inbounds %struct.word_type, %struct.word_type* %1806, i32 0, i32 0
  %1808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1807, i32 0, i64 0
  %1809 = getelementptr inbounds %struct.LIST, %struct.LIST* %1808, i32 0, i32 1
  store %union.rec* %1799, %union.rec** %1809, align 8
  %1810 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1811 = load %union.rec*, %union.rec** @zz_res, align 8
  %1812 = bitcast %union.rec* %1811 to %struct.word_type*
  %1813 = getelementptr inbounds %struct.word_type, %struct.word_type* %1812, i32 0, i32 0
  %1814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1813, i32 0, i64 0
  %1815 = getelementptr inbounds %struct.LIST, %struct.LIST* %1814, i32 0, i32 0
  store %union.rec* %1810, %union.rec** %1815, align 8
  %1816 = load %union.rec*, %union.rec** @zz_res, align 8
  %1817 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1818 = bitcast %union.rec* %1817 to %struct.word_type*
  %1819 = getelementptr inbounds %struct.word_type, %struct.word_type* %1818, i32 0, i32 0
  %1820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1819, i32 0, i64 0
  %1821 = getelementptr inbounds %struct.LIST, %struct.LIST* %1820, i32 0, i32 1
  store %union.rec* %1816, %union.rec** %1821, align 8
  br label %1822

; <label>:1822                                    ; preds = %1781, %1779
  %1823 = phi %union.rec* [ %1780, %1779 ], [ %1816, %1781 ]
  br label %1824

; <label>:1824                                    ; preds = %1822, %1774
  %1825 = phi %union.rec* [ %1775, %1774 ], [ %1823, %1822 ]
  %1826 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1826, %union.rec** @zz_res, align 8
  %1827 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1827, %union.rec** @zz_hold, align 8
  %1828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1829 = icmp eq %union.rec* %1828, null
  br i1 %1829, label %1830, label %1832

; <label>:1830                                    ; preds = %1824
  %1831 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1880

; <label>:1832                                    ; preds = %1824
  %1833 = load %union.rec*, %union.rec** @zz_res, align 8
  %1834 = icmp eq %union.rec* %1833, null
  br i1 %1834, label %1835, label %1837

; <label>:1835                                    ; preds = %1832
  %1836 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1878

; <label>:1837                                    ; preds = %1832
  %1838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1839 = bitcast %union.rec* %1838 to %struct.word_type*
  %1840 = getelementptr inbounds %struct.word_type, %struct.word_type* %1839, i32 0, i32 0
  %1841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1840, i32 0, i64 1
  %1842 = getelementptr inbounds %struct.LIST, %struct.LIST* %1841, i32 0, i32 0
  %1843 = load %union.rec*, %union.rec** %1842, align 8
  store %union.rec* %1843, %union.rec** @zz_tmp, align 8
  %1844 = load %union.rec*, %union.rec** @zz_res, align 8
  %1845 = bitcast %union.rec* %1844 to %struct.word_type*
  %1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %1845, i32 0, i32 0
  %1847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1846, i32 0, i64 1
  %1848 = getelementptr inbounds %struct.LIST, %struct.LIST* %1847, i32 0, i32 0
  %1849 = load %union.rec*, %union.rec** %1848, align 8
  %1850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1851 = bitcast %union.rec* %1850 to %struct.word_type*
  %1852 = getelementptr inbounds %struct.word_type, %struct.word_type* %1851, i32 0, i32 0
  %1853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1852, i32 0, i64 1
  %1854 = getelementptr inbounds %struct.LIST, %struct.LIST* %1853, i32 0, i32 0
  store %union.rec* %1849, %union.rec** %1854, align 8
  %1855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1856 = load %union.rec*, %union.rec** @zz_res, align 8
  %1857 = bitcast %union.rec* %1856 to %struct.word_type*
  %1858 = getelementptr inbounds %struct.word_type, %struct.word_type* %1857, i32 0, i32 0
  %1859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1858, i32 0, i64 1
  %1860 = getelementptr inbounds %struct.LIST, %struct.LIST* %1859, i32 0, i32 0
  %1861 = load %union.rec*, %union.rec** %1860, align 8
  %1862 = bitcast %union.rec* %1861 to %struct.word_type*
  %1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %1862, i32 0, i32 0
  %1864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1863, i32 0, i64 1
  %1865 = getelementptr inbounds %struct.LIST, %struct.LIST* %1864, i32 0, i32 1
  store %union.rec* %1855, %union.rec** %1865, align 8
  %1866 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1867 = load %union.rec*, %union.rec** @zz_res, align 8
  %1868 = bitcast %union.rec* %1867 to %struct.word_type*
  %1869 = getelementptr inbounds %struct.word_type, %struct.word_type* %1868, i32 0, i32 0
  %1870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1869, i32 0, i64 1
  %1871 = getelementptr inbounds %struct.LIST, %struct.LIST* %1870, i32 0, i32 0
  store %union.rec* %1866, %union.rec** %1871, align 8
  %1872 = load %union.rec*, %union.rec** @zz_res, align 8
  %1873 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1874 = bitcast %union.rec* %1873 to %struct.word_type*
  %1875 = getelementptr inbounds %struct.word_type, %struct.word_type* %1874, i32 0, i32 0
  %1876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1875, i32 0, i64 1
  %1877 = getelementptr inbounds %struct.LIST, %struct.LIST* %1876, i32 0, i32 1
  store %union.rec* %1872, %union.rec** %1877, align 8
  br label %1878

; <label>:1878                                    ; preds = %1837, %1835
  %1879 = phi %union.rec* [ %1836, %1835 ], [ %1872, %1837 ]
  br label %1880

; <label>:1880                                    ; preds = %1878, %1830
  %1881 = phi %union.rec* [ %1831, %1830 ], [ %1879, %1878 ]
  %1882 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1883 = load %struct.tm*, %struct.tm** %now, align 8
  %1884 = getelementptr inbounds %struct.tm, %struct.tm* %1883, i32 0, i32 3
  %1885 = load i32, i32* %1884, align 4
  %1886 = call i32 (i8*, i8*, ...) @sprintf(i8* %1882, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %1885) #3
  %1887 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %1888 = zext i8 %1887 to i32
  store i32 %1888, i32* @zz_size, align 4
  %1889 = sext i32 %1888 to i64
  %1890 = icmp uge i64 %1889, 265
  br i1 %1890, label %1891, label %1894

; <label>:1891                                    ; preds = %1880
  %1892 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1893 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1892)
  br label %1919

; <label>:1894                                    ; preds = %1880
  %1895 = load i32, i32* @zz_size, align 4
  %1896 = sext i32 %1895 to i64
  %1897 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1896
  %1898 = load %union.rec*, %union.rec** %1897, align 8
  %1899 = icmp eq %union.rec* %1898, null
  br i1 %1899, label %1900, label %1904

; <label>:1900                                    ; preds = %1894
  %1901 = load i32, i32* @zz_size, align 4
  %1902 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1903 = call %union.rec* @GetMemory(i32 %1901, %struct.FILE_POS* %1902)
  store %union.rec* %1903, %union.rec** @zz_hold, align 8
  br label %1918

; <label>:1904                                    ; preds = %1894
  %1905 = load i32, i32* @zz_size, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1906
  %1908 = load %union.rec*, %union.rec** %1907, align 8
  store %union.rec* %1908, %union.rec** @zz_hold, align 8
  store %union.rec* %1908, %union.rec** @zz_hold, align 8
  %1909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1910 = bitcast %union.rec* %1909 to %struct.word_type*
  %1911 = getelementptr inbounds %struct.word_type, %struct.word_type* %1910, i32 0, i32 0
  %1912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1911, i32 0, i64 0
  %1913 = getelementptr inbounds %struct.LIST, %struct.LIST* %1912, i32 0, i32 0
  %1914 = load %union.rec*, %union.rec** %1913, align 8
  %1915 = load i32, i32* @zz_size, align 4
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1916
  store %union.rec* %1914, %union.rec** %1917, align 8
  br label %1918

; <label>:1918                                    ; preds = %1904, %1900
  br label %1919

; <label>:1919                                    ; preds = %1918, %1891
  %1920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1921 = bitcast %union.rec* %1920 to %struct.word_type*
  %1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %1921, i32 0, i32 1
  %1923 = bitcast %union.FIRST_UNION* %1922 to %struct.anon*
  %1924 = getelementptr inbounds %struct.anon, %struct.anon* %1923, i32 0, i32 0
  store i8 10, i8* %1924, align 1
  %1925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1927 = bitcast %union.rec* %1926 to %struct.word_type*
  %1928 = getelementptr inbounds %struct.word_type, %struct.word_type* %1927, i32 0, i32 0
  %1929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1928, i32 0, i64 1
  %1930 = getelementptr inbounds %struct.LIST, %struct.LIST* %1929, i32 0, i32 1
  store %union.rec* %1925, %union.rec** %1930, align 8
  %1931 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1932 = bitcast %union.rec* %1931 to %struct.word_type*
  %1933 = getelementptr inbounds %struct.word_type, %struct.word_type* %1932, i32 0, i32 0
  %1934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1933, i32 0, i64 1
  %1935 = getelementptr inbounds %struct.LIST, %struct.LIST* %1934, i32 0, i32 0
  store %union.rec* %1925, %union.rec** %1935, align 8
  %1936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1937 = bitcast %union.rec* %1936 to %struct.word_type*
  %1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %1937, i32 0, i32 0
  %1939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1938, i32 0, i64 0
  %1940 = getelementptr inbounds %struct.LIST, %struct.LIST* %1939, i32 0, i32 1
  store %union.rec* %1925, %union.rec** %1940, align 8
  %1941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1942 = bitcast %union.rec* %1941 to %struct.word_type*
  %1943 = getelementptr inbounds %struct.word_type, %struct.word_type* %1942, i32 0, i32 0
  %1944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1943, i32 0, i64 0
  %1945 = getelementptr inbounds %struct.LIST, %struct.LIST* %1944, i32 0, i32 0
  store %union.rec* %1925, %union.rec** %1945, align 8
  store %union.rec* %1925, %union.rec** %par, align 8
  %1946 = load %union.rec*, %union.rec** %monthday, align 8
  %1947 = load %union.rec*, %union.rec** %par, align 8
  %1948 = bitcast %union.rec* %1947 to %struct.closure_type*
  %1949 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1948, i32 0, i32 5
  store %union.rec* %1946, %union.rec** %1949, align 8
  %1950 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1951 = zext i8 %1950 to i32
  store i32 %1951, i32* @zz_size, align 4
  %1952 = sext i32 %1951 to i64
  %1953 = icmp uge i64 %1952, 265
  br i1 %1953, label %1954, label %1957

; <label>:1954                                    ; preds = %1919
  %1955 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1956 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1955)
  br label %1982

; <label>:1957                                    ; preds = %1919
  %1958 = load i32, i32* @zz_size, align 4
  %1959 = sext i32 %1958 to i64
  %1960 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1959
  %1961 = load %union.rec*, %union.rec** %1960, align 8
  %1962 = icmp eq %union.rec* %1961, null
  br i1 %1962, label %1963, label %1967

; <label>:1963                                    ; preds = %1957
  %1964 = load i32, i32* @zz_size, align 4
  %1965 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1966 = call %union.rec* @GetMemory(i32 %1964, %struct.FILE_POS* %1965)
  store %union.rec* %1966, %union.rec** @zz_hold, align 8
  br label %1981

; <label>:1967                                    ; preds = %1957
  %1968 = load i32, i32* @zz_size, align 4
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1969
  %1971 = load %union.rec*, %union.rec** %1970, align 8
  store %union.rec* %1971, %union.rec** @zz_hold, align 8
  store %union.rec* %1971, %union.rec** @zz_hold, align 8
  %1972 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1973 = bitcast %union.rec* %1972 to %struct.word_type*
  %1974 = getelementptr inbounds %struct.word_type, %struct.word_type* %1973, i32 0, i32 0
  %1975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1974, i32 0, i64 0
  %1976 = getelementptr inbounds %struct.LIST, %struct.LIST* %1975, i32 0, i32 0
  %1977 = load %union.rec*, %union.rec** %1976, align 8
  %1978 = load i32, i32* @zz_size, align 4
  %1979 = sext i32 %1978 to i64
  %1980 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1979
  store %union.rec* %1977, %union.rec** %1980, align 8
  br label %1981

; <label>:1981                                    ; preds = %1967, %1963
  br label %1982

; <label>:1982                                    ; preds = %1981, %1954
  %1983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1984 = bitcast %union.rec* %1983 to %struct.word_type*
  %1985 = getelementptr inbounds %struct.word_type, %struct.word_type* %1984, i32 0, i32 1
  %1986 = bitcast %union.FIRST_UNION* %1985 to %struct.anon*
  %1987 = getelementptr inbounds %struct.anon, %struct.anon* %1986, i32 0, i32 0
  store i8 0, i8* %1987, align 1
  %1988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1990 = bitcast %union.rec* %1989 to %struct.word_type*
  %1991 = getelementptr inbounds %struct.word_type, %struct.word_type* %1990, i32 0, i32 0
  %1992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1991, i32 0, i64 1
  %1993 = getelementptr inbounds %struct.LIST, %struct.LIST* %1992, i32 0, i32 1
  store %union.rec* %1988, %union.rec** %1993, align 8
  %1994 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1995 = bitcast %union.rec* %1994 to %struct.word_type*
  %1996 = getelementptr inbounds %struct.word_type, %struct.word_type* %1995, i32 0, i32 0
  %1997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1996, i32 0, i64 1
  %1998 = getelementptr inbounds %struct.LIST, %struct.LIST* %1997, i32 0, i32 0
  store %union.rec* %1988, %union.rec** %1998, align 8
  %1999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2000 = bitcast %union.rec* %1999 to %struct.word_type*
  %2001 = getelementptr inbounds %struct.word_type, %struct.word_type* %2000, i32 0, i32 0
  %2002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2001, i32 0, i64 0
  %2003 = getelementptr inbounds %struct.LIST, %struct.LIST* %2002, i32 0, i32 1
  store %union.rec* %1988, %union.rec** %2003, align 8
  %2004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2005 = bitcast %union.rec* %2004 to %struct.word_type*
  %2006 = getelementptr inbounds %struct.word_type, %struct.word_type* %2005, i32 0, i32 0
  %2007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2006, i32 0, i64 0
  %2008 = getelementptr inbounds %struct.LIST, %struct.LIST* %2007, i32 0, i32 0
  store %union.rec* %1988, %union.rec** %2008, align 8
  store %union.rec* %1988, %union.rec** @xx_link, align 8
  %2009 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2009, %union.rec** @zz_res, align 8
  %2010 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %2010, %union.rec** @zz_hold, align 8
  %2011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2012 = icmp eq %union.rec* %2011, null
  br i1 %2012, label %2013, label %2015

; <label>:2013                                    ; preds = %1982
  %2014 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2063

; <label>:2015                                    ; preds = %1982
  %2016 = load %union.rec*, %union.rec** @zz_res, align 8
  %2017 = icmp eq %union.rec* %2016, null
  br i1 %2017, label %2018, label %2020

; <label>:2018                                    ; preds = %2015
  %2019 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2061

; <label>:2020                                    ; preds = %2015
  %2021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2022 = bitcast %union.rec* %2021 to %struct.word_type*
  %2023 = getelementptr inbounds %struct.word_type, %struct.word_type* %2022, i32 0, i32 0
  %2024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2023, i32 0, i64 0
  %2025 = getelementptr inbounds %struct.LIST, %struct.LIST* %2024, i32 0, i32 0
  %2026 = load %union.rec*, %union.rec** %2025, align 8
  store %union.rec* %2026, %union.rec** @zz_tmp, align 8
  %2027 = load %union.rec*, %union.rec** @zz_res, align 8
  %2028 = bitcast %union.rec* %2027 to %struct.word_type*
  %2029 = getelementptr inbounds %struct.word_type, %struct.word_type* %2028, i32 0, i32 0
  %2030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2029, i32 0, i64 0
  %2031 = getelementptr inbounds %struct.LIST, %struct.LIST* %2030, i32 0, i32 0
  %2032 = load %union.rec*, %union.rec** %2031, align 8
  %2033 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2034 = bitcast %union.rec* %2033 to %struct.word_type*
  %2035 = getelementptr inbounds %struct.word_type, %struct.word_type* %2034, i32 0, i32 0
  %2036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2035, i32 0, i64 0
  %2037 = getelementptr inbounds %struct.LIST, %struct.LIST* %2036, i32 0, i32 0
  store %union.rec* %2032, %union.rec** %2037, align 8
  %2038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2039 = load %union.rec*, %union.rec** @zz_res, align 8
  %2040 = bitcast %union.rec* %2039 to %struct.word_type*
  %2041 = getelementptr inbounds %struct.word_type, %struct.word_type* %2040, i32 0, i32 0
  %2042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2041, i32 0, i64 0
  %2043 = getelementptr inbounds %struct.LIST, %struct.LIST* %2042, i32 0, i32 0
  %2044 = load %union.rec*, %union.rec** %2043, align 8
  %2045 = bitcast %union.rec* %2044 to %struct.word_type*
  %2046 = getelementptr inbounds %struct.word_type, %struct.word_type* %2045, i32 0, i32 0
  %2047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2046, i32 0, i64 0
  %2048 = getelementptr inbounds %struct.LIST, %struct.LIST* %2047, i32 0, i32 1
  store %union.rec* %2038, %union.rec** %2048, align 8
  %2049 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2050 = load %union.rec*, %union.rec** @zz_res, align 8
  %2051 = bitcast %union.rec* %2050 to %struct.word_type*
  %2052 = getelementptr inbounds %struct.word_type, %struct.word_type* %2051, i32 0, i32 0
  %2053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2052, i32 0, i64 0
  %2054 = getelementptr inbounds %struct.LIST, %struct.LIST* %2053, i32 0, i32 0
  store %union.rec* %2049, %union.rec** %2054, align 8
  %2055 = load %union.rec*, %union.rec** @zz_res, align 8
  %2056 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2057 = bitcast %union.rec* %2056 to %struct.word_type*
  %2058 = getelementptr inbounds %struct.word_type, %struct.word_type* %2057, i32 0, i32 0
  %2059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2058, i32 0, i64 0
  %2060 = getelementptr inbounds %struct.LIST, %struct.LIST* %2059, i32 0, i32 1
  store %union.rec* %2055, %union.rec** %2060, align 8
  br label %2061

; <label>:2061                                    ; preds = %2020, %2018
  %2062 = phi %union.rec* [ %2019, %2018 ], [ %2055, %2020 ]
  br label %2063

; <label>:2063                                    ; preds = %2061, %2013
  %2064 = phi %union.rec* [ %2014, %2013 ], [ %2062, %2061 ]
  %2065 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2065, %union.rec** @zz_res, align 8
  %2066 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %2066, %union.rec** @zz_hold, align 8
  %2067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2068 = icmp eq %union.rec* %2067, null
  br i1 %2068, label %2069, label %2071

; <label>:2069                                    ; preds = %2063
  %2070 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2119

; <label>:2071                                    ; preds = %2063
  %2072 = load %union.rec*, %union.rec** @zz_res, align 8
  %2073 = icmp eq %union.rec* %2072, null
  br i1 %2073, label %2074, label %2076

; <label>:2074                                    ; preds = %2071
  %2075 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2117

; <label>:2076                                    ; preds = %2071
  %2077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2078 = bitcast %union.rec* %2077 to %struct.word_type*
  %2079 = getelementptr inbounds %struct.word_type, %struct.word_type* %2078, i32 0, i32 0
  %2080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2079, i32 0, i64 1
  %2081 = getelementptr inbounds %struct.LIST, %struct.LIST* %2080, i32 0, i32 0
  %2082 = load %union.rec*, %union.rec** %2081, align 8
  store %union.rec* %2082, %union.rec** @zz_tmp, align 8
  %2083 = load %union.rec*, %union.rec** @zz_res, align 8
  %2084 = bitcast %union.rec* %2083 to %struct.word_type*
  %2085 = getelementptr inbounds %struct.word_type, %struct.word_type* %2084, i32 0, i32 0
  %2086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2085, i32 0, i64 1
  %2087 = getelementptr inbounds %struct.LIST, %struct.LIST* %2086, i32 0, i32 0
  %2088 = load %union.rec*, %union.rec** %2087, align 8
  %2089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2090 = bitcast %union.rec* %2089 to %struct.word_type*
  %2091 = getelementptr inbounds %struct.word_type, %struct.word_type* %2090, i32 0, i32 0
  %2092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2091, i32 0, i64 1
  %2093 = getelementptr inbounds %struct.LIST, %struct.LIST* %2092, i32 0, i32 0
  store %union.rec* %2088, %union.rec** %2093, align 8
  %2094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2095 = load %union.rec*, %union.rec** @zz_res, align 8
  %2096 = bitcast %union.rec* %2095 to %struct.word_type*
  %2097 = getelementptr inbounds %struct.word_type, %struct.word_type* %2096, i32 0, i32 0
  %2098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2097, i32 0, i64 1
  %2099 = getelementptr inbounds %struct.LIST, %struct.LIST* %2098, i32 0, i32 0
  %2100 = load %union.rec*, %union.rec** %2099, align 8
  %2101 = bitcast %union.rec* %2100 to %struct.word_type*
  %2102 = getelementptr inbounds %struct.word_type, %struct.word_type* %2101, i32 0, i32 0
  %2103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2102, i32 0, i64 1
  %2104 = getelementptr inbounds %struct.LIST, %struct.LIST* %2103, i32 0, i32 1
  store %union.rec* %2094, %union.rec** %2104, align 8
  %2105 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2106 = load %union.rec*, %union.rec** @zz_res, align 8
  %2107 = bitcast %union.rec* %2106 to %struct.word_type*
  %2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %2107, i32 0, i32 0
  %2109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2108, i32 0, i64 1
  %2110 = getelementptr inbounds %struct.LIST, %struct.LIST* %2109, i32 0, i32 0
  store %union.rec* %2105, %union.rec** %2110, align 8
  %2111 = load %union.rec*, %union.rec** @zz_res, align 8
  %2112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2113 = bitcast %union.rec* %2112 to %struct.word_type*
  %2114 = getelementptr inbounds %struct.word_type, %struct.word_type* %2113, i32 0, i32 0
  %2115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2114, i32 0, i64 1
  %2116 = getelementptr inbounds %struct.LIST, %struct.LIST* %2115, i32 0, i32 1
  store %union.rec* %2111, %union.rec** %2116, align 8
  br label %2117

; <label>:2117                                    ; preds = %2076, %2074
  %2118 = phi %union.rec* [ %2075, %2074 ], [ %2111, %2076 ]
  br label %2119

; <label>:2119                                    ; preds = %2117, %2069
  %2120 = phi %union.rec* [ %2070, %2069 ], [ %2118, %2117 ]
  %2121 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %2122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2123 = call %union.rec* @MakeWord(i32 11, i8* %2121, %struct.FILE_POS* %2122)
  store %union.rec* %2123, %union.rec** %tmp, align 8
  %2124 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2125 = zext i8 %2124 to i32
  store i32 %2125, i32* @zz_size, align 4
  %2126 = sext i32 %2125 to i64
  %2127 = icmp uge i64 %2126, 265
  br i1 %2127, label %2128, label %2131

; <label>:2128                                    ; preds = %2119
  %2129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2130 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2129)
  br label %2156

; <label>:2131                                    ; preds = %2119
  %2132 = load i32, i32* @zz_size, align 4
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2133
  %2135 = load %union.rec*, %union.rec** %2134, align 8
  %2136 = icmp eq %union.rec* %2135, null
  br i1 %2136, label %2137, label %2141

; <label>:2137                                    ; preds = %2131
  %2138 = load i32, i32* @zz_size, align 4
  %2139 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2140 = call %union.rec* @GetMemory(i32 %2138, %struct.FILE_POS* %2139)
  store %union.rec* %2140, %union.rec** @zz_hold, align 8
  br label %2155

; <label>:2141                                    ; preds = %2131
  %2142 = load i32, i32* @zz_size, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2143
  %2145 = load %union.rec*, %union.rec** %2144, align 8
  store %union.rec* %2145, %union.rec** @zz_hold, align 8
  store %union.rec* %2145, %union.rec** @zz_hold, align 8
  %2146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2147 = bitcast %union.rec* %2146 to %struct.word_type*
  %2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %2147, i32 0, i32 0
  %2149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2148, i32 0, i64 0
  %2150 = getelementptr inbounds %struct.LIST, %struct.LIST* %2149, i32 0, i32 0
  %2151 = load %union.rec*, %union.rec** %2150, align 8
  %2152 = load i32, i32* @zz_size, align 4
  %2153 = sext i32 %2152 to i64
  %2154 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2153
  store %union.rec* %2151, %union.rec** %2154, align 8
  br label %2155

; <label>:2155                                    ; preds = %2141, %2137
  br label %2156

; <label>:2156                                    ; preds = %2155, %2128
  %2157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2158 = bitcast %union.rec* %2157 to %struct.word_type*
  %2159 = getelementptr inbounds %struct.word_type, %struct.word_type* %2158, i32 0, i32 1
  %2160 = bitcast %union.FIRST_UNION* %2159 to %struct.anon*
  %2161 = getelementptr inbounds %struct.anon, %struct.anon* %2160, i32 0, i32 0
  store i8 0, i8* %2161, align 1
  %2162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2164 = bitcast %union.rec* %2163 to %struct.word_type*
  %2165 = getelementptr inbounds %struct.word_type, %struct.word_type* %2164, i32 0, i32 0
  %2166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2165, i32 0, i64 1
  %2167 = getelementptr inbounds %struct.LIST, %struct.LIST* %2166, i32 0, i32 1
  store %union.rec* %2162, %union.rec** %2167, align 8
  %2168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2169 = bitcast %union.rec* %2168 to %struct.word_type*
  %2170 = getelementptr inbounds %struct.word_type, %struct.word_type* %2169, i32 0, i32 0
  %2171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2170, i32 0, i64 1
  %2172 = getelementptr inbounds %struct.LIST, %struct.LIST* %2171, i32 0, i32 0
  store %union.rec* %2162, %union.rec** %2172, align 8
  %2173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2174 = bitcast %union.rec* %2173 to %struct.word_type*
  %2175 = getelementptr inbounds %struct.word_type, %struct.word_type* %2174, i32 0, i32 0
  %2176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2175, i32 0, i64 0
  %2177 = getelementptr inbounds %struct.LIST, %struct.LIST* %2176, i32 0, i32 1
  store %union.rec* %2162, %union.rec** %2177, align 8
  %2178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2179 = bitcast %union.rec* %2178 to %struct.word_type*
  %2180 = getelementptr inbounds %struct.word_type, %struct.word_type* %2179, i32 0, i32 0
  %2181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2180, i32 0, i64 0
  %2182 = getelementptr inbounds %struct.LIST, %struct.LIST* %2181, i32 0, i32 0
  store %union.rec* %2162, %union.rec** %2182, align 8
  store %union.rec* %2162, %union.rec** @xx_link, align 8
  %2183 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2183, %union.rec** @zz_res, align 8
  %2184 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %2184, %union.rec** @zz_hold, align 8
  %2185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2186 = icmp eq %union.rec* %2185, null
  br i1 %2186, label %2187, label %2189

; <label>:2187                                    ; preds = %2156
  %2188 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2237

; <label>:2189                                    ; preds = %2156
  %2190 = load %union.rec*, %union.rec** @zz_res, align 8
  %2191 = icmp eq %union.rec* %2190, null
  br i1 %2191, label %2192, label %2194

; <label>:2192                                    ; preds = %2189
  %2193 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2235

; <label>:2194                                    ; preds = %2189
  %2195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.word_type*
  %2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %2196, i32 0, i32 0
  %2198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2197, i32 0, i64 0
  %2199 = getelementptr inbounds %struct.LIST, %struct.LIST* %2198, i32 0, i32 0
  %2200 = load %union.rec*, %union.rec** %2199, align 8
  store %union.rec* %2200, %union.rec** @zz_tmp, align 8
  %2201 = load %union.rec*, %union.rec** @zz_res, align 8
  %2202 = bitcast %union.rec* %2201 to %struct.word_type*
  %2203 = getelementptr inbounds %struct.word_type, %struct.word_type* %2202, i32 0, i32 0
  %2204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2203, i32 0, i64 0
  %2205 = getelementptr inbounds %struct.LIST, %struct.LIST* %2204, i32 0, i32 0
  %2206 = load %union.rec*, %union.rec** %2205, align 8
  %2207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2208 = bitcast %union.rec* %2207 to %struct.word_type*
  %2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %2208, i32 0, i32 0
  %2210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2209, i32 0, i64 0
  %2211 = getelementptr inbounds %struct.LIST, %struct.LIST* %2210, i32 0, i32 0
  store %union.rec* %2206, %union.rec** %2211, align 8
  %2212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2213 = load %union.rec*, %union.rec** @zz_res, align 8
  %2214 = bitcast %union.rec* %2213 to %struct.word_type*
  %2215 = getelementptr inbounds %struct.word_type, %struct.word_type* %2214, i32 0, i32 0
  %2216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2215, i32 0, i64 0
  %2217 = getelementptr inbounds %struct.LIST, %struct.LIST* %2216, i32 0, i32 0
  %2218 = load %union.rec*, %union.rec** %2217, align 8
  %2219 = bitcast %union.rec* %2218 to %struct.word_type*
  %2220 = getelementptr inbounds %struct.word_type, %struct.word_type* %2219, i32 0, i32 0
  %2221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2220, i32 0, i64 0
  %2222 = getelementptr inbounds %struct.LIST, %struct.LIST* %2221, i32 0, i32 1
  store %union.rec* %2212, %union.rec** %2222, align 8
  %2223 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2224 = load %union.rec*, %union.rec** @zz_res, align 8
  %2225 = bitcast %union.rec* %2224 to %struct.word_type*
  %2226 = getelementptr inbounds %struct.word_type, %struct.word_type* %2225, i32 0, i32 0
  %2227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2226, i32 0, i64 0
  %2228 = getelementptr inbounds %struct.LIST, %struct.LIST* %2227, i32 0, i32 0
  store %union.rec* %2223, %union.rec** %2228, align 8
  %2229 = load %union.rec*, %union.rec** @zz_res, align 8
  %2230 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2231 = bitcast %union.rec* %2230 to %struct.word_type*
  %2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %2231, i32 0, i32 0
  %2233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2232, i32 0, i64 0
  %2234 = getelementptr inbounds %struct.LIST, %struct.LIST* %2233, i32 0, i32 1
  store %union.rec* %2229, %union.rec** %2234, align 8
  br label %2235

; <label>:2235                                    ; preds = %2194, %2192
  %2236 = phi %union.rec* [ %2193, %2192 ], [ %2229, %2194 ]
  br label %2237

; <label>:2237                                    ; preds = %2235, %2187
  %2238 = phi %union.rec* [ %2188, %2187 ], [ %2236, %2235 ]
  %2239 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2239, %union.rec** @zz_res, align 8
  %2240 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2240, %union.rec** @zz_hold, align 8
  %2241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2242 = icmp eq %union.rec* %2241, null
  br i1 %2242, label %2243, label %2245

; <label>:2243                                    ; preds = %2237
  %2244 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2293

; <label>:2245                                    ; preds = %2237
  %2246 = load %union.rec*, %union.rec** @zz_res, align 8
  %2247 = icmp eq %union.rec* %2246, null
  br i1 %2247, label %2248, label %2250

; <label>:2248                                    ; preds = %2245
  %2249 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2291

; <label>:2250                                    ; preds = %2245
  %2251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2252 = bitcast %union.rec* %2251 to %struct.word_type*
  %2253 = getelementptr inbounds %struct.word_type, %struct.word_type* %2252, i32 0, i32 0
  %2254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2253, i32 0, i64 1
  %2255 = getelementptr inbounds %struct.LIST, %struct.LIST* %2254, i32 0, i32 0
  %2256 = load %union.rec*, %union.rec** %2255, align 8
  store %union.rec* %2256, %union.rec** @zz_tmp, align 8
  %2257 = load %union.rec*, %union.rec** @zz_res, align 8
  %2258 = bitcast %union.rec* %2257 to %struct.word_type*
  %2259 = getelementptr inbounds %struct.word_type, %struct.word_type* %2258, i32 0, i32 0
  %2260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2259, i32 0, i64 1
  %2261 = getelementptr inbounds %struct.LIST, %struct.LIST* %2260, i32 0, i32 0
  %2262 = load %union.rec*, %union.rec** %2261, align 8
  %2263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2264 = bitcast %union.rec* %2263 to %struct.word_type*
  %2265 = getelementptr inbounds %struct.word_type, %struct.word_type* %2264, i32 0, i32 0
  %2266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2265, i32 0, i64 1
  %2267 = getelementptr inbounds %struct.LIST, %struct.LIST* %2266, i32 0, i32 0
  store %union.rec* %2262, %union.rec** %2267, align 8
  %2268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2269 = load %union.rec*, %union.rec** @zz_res, align 8
  %2270 = bitcast %union.rec* %2269 to %struct.word_type*
  %2271 = getelementptr inbounds %struct.word_type, %struct.word_type* %2270, i32 0, i32 0
  %2272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2271, i32 0, i64 1
  %2273 = getelementptr inbounds %struct.LIST, %struct.LIST* %2272, i32 0, i32 0
  %2274 = load %union.rec*, %union.rec** %2273, align 8
  %2275 = bitcast %union.rec* %2274 to %struct.word_type*
  %2276 = getelementptr inbounds %struct.word_type, %struct.word_type* %2275, i32 0, i32 0
  %2277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2276, i32 0, i64 1
  %2278 = getelementptr inbounds %struct.LIST, %struct.LIST* %2277, i32 0, i32 1
  store %union.rec* %2268, %union.rec** %2278, align 8
  %2279 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2280 = load %union.rec*, %union.rec** @zz_res, align 8
  %2281 = bitcast %union.rec* %2280 to %struct.word_type*
  %2282 = getelementptr inbounds %struct.word_type, %struct.word_type* %2281, i32 0, i32 0
  %2283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2282, i32 0, i64 1
  %2284 = getelementptr inbounds %struct.LIST, %struct.LIST* %2283, i32 0, i32 0
  store %union.rec* %2279, %union.rec** %2284, align 8
  %2285 = load %union.rec*, %union.rec** @zz_res, align 8
  %2286 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2287 = bitcast %union.rec* %2286 to %struct.word_type*
  %2288 = getelementptr inbounds %struct.word_type, %struct.word_type* %2287, i32 0, i32 0
  %2289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2288, i32 0, i64 1
  %2290 = getelementptr inbounds %struct.LIST, %struct.LIST* %2289, i32 0, i32 1
  store %union.rec* %2285, %union.rec** %2290, align 8
  br label %2291

; <label>:2291                                    ; preds = %2250, %2248
  %2292 = phi %union.rec* [ %2249, %2248 ], [ %2285, %2250 ]
  br label %2293

; <label>:2293                                    ; preds = %2291, %2243
  %2294 = phi %union.rec* [ %2244, %2243 ], [ %2292, %2291 ]
  %2295 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %2296 = load %struct.tm*, %struct.tm** %now, align 8
  %2297 = getelementptr inbounds %struct.tm, %struct.tm* %2296, i32 0, i32 4
  %2298 = load i32, i32* %2297, align 4
  %2299 = add nsw i32 %2298, 1
  %2300 = call i32 (i8*, i8*, ...) @sprintf(i8* %2295, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %2299) #3
  %2301 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %2302 = zext i8 %2301 to i32
  store i32 %2302, i32* @zz_size, align 4
  %2303 = sext i32 %2302 to i64
  %2304 = icmp uge i64 %2303, 265
  br i1 %2304, label %2305, label %2308

; <label>:2305                                    ; preds = %2293
  %2306 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2307 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2306)
  br label %2333

; <label>:2308                                    ; preds = %2293
  %2309 = load i32, i32* @zz_size, align 4
  %2310 = sext i32 %2309 to i64
  %2311 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2310
  %2312 = load %union.rec*, %union.rec** %2311, align 8
  %2313 = icmp eq %union.rec* %2312, null
  br i1 %2313, label %2314, label %2318

; <label>:2314                                    ; preds = %2308
  %2315 = load i32, i32* @zz_size, align 4
  %2316 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2317 = call %union.rec* @GetMemory(i32 %2315, %struct.FILE_POS* %2316)
  store %union.rec* %2317, %union.rec** @zz_hold, align 8
  br label %2332

; <label>:2318                                    ; preds = %2308
  %2319 = load i32, i32* @zz_size, align 4
  %2320 = sext i32 %2319 to i64
  %2321 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2320
  %2322 = load %union.rec*, %union.rec** %2321, align 8
  store %union.rec* %2322, %union.rec** @zz_hold, align 8
  store %union.rec* %2322, %union.rec** @zz_hold, align 8
  %2323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2324 = bitcast %union.rec* %2323 to %struct.word_type*
  %2325 = getelementptr inbounds %struct.word_type, %struct.word_type* %2324, i32 0, i32 0
  %2326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2325, i32 0, i64 0
  %2327 = getelementptr inbounds %struct.LIST, %struct.LIST* %2326, i32 0, i32 0
  %2328 = load %union.rec*, %union.rec** %2327, align 8
  %2329 = load i32, i32* @zz_size, align 4
  %2330 = sext i32 %2329 to i64
  %2331 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2330
  store %union.rec* %2328, %union.rec** %2331, align 8
  br label %2332

; <label>:2332                                    ; preds = %2318, %2314
  br label %2333

; <label>:2333                                    ; preds = %2332, %2305
  %2334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2335 = bitcast %union.rec* %2334 to %struct.word_type*
  %2336 = getelementptr inbounds %struct.word_type, %struct.word_type* %2335, i32 0, i32 1
  %2337 = bitcast %union.FIRST_UNION* %2336 to %struct.anon*
  %2338 = getelementptr inbounds %struct.anon, %struct.anon* %2337, i32 0, i32 0
  store i8 10, i8* %2338, align 1
  %2339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2341 = bitcast %union.rec* %2340 to %struct.word_type*
  %2342 = getelementptr inbounds %struct.word_type, %struct.word_type* %2341, i32 0, i32 0
  %2343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2342, i32 0, i64 1
  %2344 = getelementptr inbounds %struct.LIST, %struct.LIST* %2343, i32 0, i32 1
  store %union.rec* %2339, %union.rec** %2344, align 8
  %2345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2346 = bitcast %union.rec* %2345 to %struct.word_type*
  %2347 = getelementptr inbounds %struct.word_type, %struct.word_type* %2346, i32 0, i32 0
  %2348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2347, i32 0, i64 1
  %2349 = getelementptr inbounds %struct.LIST, %struct.LIST* %2348, i32 0, i32 0
  store %union.rec* %2339, %union.rec** %2349, align 8
  %2350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2351 = bitcast %union.rec* %2350 to %struct.word_type*
  %2352 = getelementptr inbounds %struct.word_type, %struct.word_type* %2351, i32 0, i32 0
  %2353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2352, i32 0, i64 0
  %2354 = getelementptr inbounds %struct.LIST, %struct.LIST* %2353, i32 0, i32 1
  store %union.rec* %2339, %union.rec** %2354, align 8
  %2355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2356 = bitcast %union.rec* %2355 to %struct.word_type*
  %2357 = getelementptr inbounds %struct.word_type, %struct.word_type* %2356, i32 0, i32 0
  %2358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2357, i32 0, i64 0
  %2359 = getelementptr inbounds %struct.LIST, %struct.LIST* %2358, i32 0, i32 0
  store %union.rec* %2339, %union.rec** %2359, align 8
  store %union.rec* %2339, %union.rec** %par, align 8
  %2360 = load %union.rec*, %union.rec** %month, align 8
  %2361 = load %union.rec*, %union.rec** %par, align 8
  %2362 = bitcast %union.rec* %2361 to %struct.closure_type*
  %2363 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2362, i32 0, i32 5
  store %union.rec* %2360, %union.rec** %2363, align 8
  %2364 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2365 = zext i8 %2364 to i32
  store i32 %2365, i32* @zz_size, align 4
  %2366 = sext i32 %2365 to i64
  %2367 = icmp uge i64 %2366, 265
  br i1 %2367, label %2368, label %2371

; <label>:2368                                    ; preds = %2333
  %2369 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2370 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2369)
  br label %2396

; <label>:2371                                    ; preds = %2333
  %2372 = load i32, i32* @zz_size, align 4
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2373
  %2375 = load %union.rec*, %union.rec** %2374, align 8
  %2376 = icmp eq %union.rec* %2375, null
  br i1 %2376, label %2377, label %2381

; <label>:2377                                    ; preds = %2371
  %2378 = load i32, i32* @zz_size, align 4
  %2379 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2380 = call %union.rec* @GetMemory(i32 %2378, %struct.FILE_POS* %2379)
  store %union.rec* %2380, %union.rec** @zz_hold, align 8
  br label %2395

; <label>:2381                                    ; preds = %2371
  %2382 = load i32, i32* @zz_size, align 4
  %2383 = sext i32 %2382 to i64
  %2384 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2383
  %2385 = load %union.rec*, %union.rec** %2384, align 8
  store %union.rec* %2385, %union.rec** @zz_hold, align 8
  store %union.rec* %2385, %union.rec** @zz_hold, align 8
  %2386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2387 = bitcast %union.rec* %2386 to %struct.word_type*
  %2388 = getelementptr inbounds %struct.word_type, %struct.word_type* %2387, i32 0, i32 0
  %2389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2388, i32 0, i64 0
  %2390 = getelementptr inbounds %struct.LIST, %struct.LIST* %2389, i32 0, i32 0
  %2391 = load %union.rec*, %union.rec** %2390, align 8
  %2392 = load i32, i32* @zz_size, align 4
  %2393 = sext i32 %2392 to i64
  %2394 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2393
  store %union.rec* %2391, %union.rec** %2394, align 8
  br label %2395

; <label>:2395                                    ; preds = %2381, %2377
  br label %2396

; <label>:2396                                    ; preds = %2395, %2368
  %2397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2398 = bitcast %union.rec* %2397 to %struct.word_type*
  %2399 = getelementptr inbounds %struct.word_type, %struct.word_type* %2398, i32 0, i32 1
  %2400 = bitcast %union.FIRST_UNION* %2399 to %struct.anon*
  %2401 = getelementptr inbounds %struct.anon, %struct.anon* %2400, i32 0, i32 0
  store i8 0, i8* %2401, align 1
  %2402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2404 = bitcast %union.rec* %2403 to %struct.word_type*
  %2405 = getelementptr inbounds %struct.word_type, %struct.word_type* %2404, i32 0, i32 0
  %2406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2405, i32 0, i64 1
  %2407 = getelementptr inbounds %struct.LIST, %struct.LIST* %2406, i32 0, i32 1
  store %union.rec* %2402, %union.rec** %2407, align 8
  %2408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2409 = bitcast %union.rec* %2408 to %struct.word_type*
  %2410 = getelementptr inbounds %struct.word_type, %struct.word_type* %2409, i32 0, i32 0
  %2411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2410, i32 0, i64 1
  %2412 = getelementptr inbounds %struct.LIST, %struct.LIST* %2411, i32 0, i32 0
  store %union.rec* %2402, %union.rec** %2412, align 8
  %2413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2414 = bitcast %union.rec* %2413 to %struct.word_type*
  %2415 = getelementptr inbounds %struct.word_type, %struct.word_type* %2414, i32 0, i32 0
  %2416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2415, i32 0, i64 0
  %2417 = getelementptr inbounds %struct.LIST, %struct.LIST* %2416, i32 0, i32 1
  store %union.rec* %2402, %union.rec** %2417, align 8
  %2418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2419 = bitcast %union.rec* %2418 to %struct.word_type*
  %2420 = getelementptr inbounds %struct.word_type, %struct.word_type* %2419, i32 0, i32 0
  %2421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2420, i32 0, i64 0
  %2422 = getelementptr inbounds %struct.LIST, %struct.LIST* %2421, i32 0, i32 0
  store %union.rec* %2402, %union.rec** %2422, align 8
  store %union.rec* %2402, %union.rec** @xx_link, align 8
  %2423 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2423, %union.rec** @zz_res, align 8
  %2424 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %2424, %union.rec** @zz_hold, align 8
  %2425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2426 = icmp eq %union.rec* %2425, null
  br i1 %2426, label %2427, label %2429

; <label>:2427                                    ; preds = %2396
  %2428 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2477

; <label>:2429                                    ; preds = %2396
  %2430 = load %union.rec*, %union.rec** @zz_res, align 8
  %2431 = icmp eq %union.rec* %2430, null
  br i1 %2431, label %2432, label %2434

; <label>:2432                                    ; preds = %2429
  %2433 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2475

; <label>:2434                                    ; preds = %2429
  %2435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2436 = bitcast %union.rec* %2435 to %struct.word_type*
  %2437 = getelementptr inbounds %struct.word_type, %struct.word_type* %2436, i32 0, i32 0
  %2438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2437, i32 0, i64 0
  %2439 = getelementptr inbounds %struct.LIST, %struct.LIST* %2438, i32 0, i32 0
  %2440 = load %union.rec*, %union.rec** %2439, align 8
  store %union.rec* %2440, %union.rec** @zz_tmp, align 8
  %2441 = load %union.rec*, %union.rec** @zz_res, align 8
  %2442 = bitcast %union.rec* %2441 to %struct.word_type*
  %2443 = getelementptr inbounds %struct.word_type, %struct.word_type* %2442, i32 0, i32 0
  %2444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2443, i32 0, i64 0
  %2445 = getelementptr inbounds %struct.LIST, %struct.LIST* %2444, i32 0, i32 0
  %2446 = load %union.rec*, %union.rec** %2445, align 8
  %2447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2448 = bitcast %union.rec* %2447 to %struct.word_type*
  %2449 = getelementptr inbounds %struct.word_type, %struct.word_type* %2448, i32 0, i32 0
  %2450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2449, i32 0, i64 0
  %2451 = getelementptr inbounds %struct.LIST, %struct.LIST* %2450, i32 0, i32 0
  store %union.rec* %2446, %union.rec** %2451, align 8
  %2452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2453 = load %union.rec*, %union.rec** @zz_res, align 8
  %2454 = bitcast %union.rec* %2453 to %struct.word_type*
  %2455 = getelementptr inbounds %struct.word_type, %struct.word_type* %2454, i32 0, i32 0
  %2456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2455, i32 0, i64 0
  %2457 = getelementptr inbounds %struct.LIST, %struct.LIST* %2456, i32 0, i32 0
  %2458 = load %union.rec*, %union.rec** %2457, align 8
  %2459 = bitcast %union.rec* %2458 to %struct.word_type*
  %2460 = getelementptr inbounds %struct.word_type, %struct.word_type* %2459, i32 0, i32 0
  %2461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2460, i32 0, i64 0
  %2462 = getelementptr inbounds %struct.LIST, %struct.LIST* %2461, i32 0, i32 1
  store %union.rec* %2452, %union.rec** %2462, align 8
  %2463 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2464 = load %union.rec*, %union.rec** @zz_res, align 8
  %2465 = bitcast %union.rec* %2464 to %struct.word_type*
  %2466 = getelementptr inbounds %struct.word_type, %struct.word_type* %2465, i32 0, i32 0
  %2467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2466, i32 0, i64 0
  %2468 = getelementptr inbounds %struct.LIST, %struct.LIST* %2467, i32 0, i32 0
  store %union.rec* %2463, %union.rec** %2468, align 8
  %2469 = load %union.rec*, %union.rec** @zz_res, align 8
  %2470 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2471 = bitcast %union.rec* %2470 to %struct.word_type*
  %2472 = getelementptr inbounds %struct.word_type, %struct.word_type* %2471, i32 0, i32 0
  %2473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2472, i32 0, i64 0
  %2474 = getelementptr inbounds %struct.LIST, %struct.LIST* %2473, i32 0, i32 1
  store %union.rec* %2469, %union.rec** %2474, align 8
  br label %2475

; <label>:2475                                    ; preds = %2434, %2432
  %2476 = phi %union.rec* [ %2433, %2432 ], [ %2469, %2434 ]
  br label %2477

; <label>:2477                                    ; preds = %2475, %2427
  %2478 = phi %union.rec* [ %2428, %2427 ], [ %2476, %2475 ]
  %2479 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2479, %union.rec** @zz_res, align 8
  %2480 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %2480, %union.rec** @zz_hold, align 8
  %2481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2482 = icmp eq %union.rec* %2481, null
  br i1 %2482, label %2483, label %2485

; <label>:2483                                    ; preds = %2477
  %2484 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2533

; <label>:2485                                    ; preds = %2477
  %2486 = load %union.rec*, %union.rec** @zz_res, align 8
  %2487 = icmp eq %union.rec* %2486, null
  br i1 %2487, label %2488, label %2490

; <label>:2488                                    ; preds = %2485
  %2489 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2531

; <label>:2490                                    ; preds = %2485
  %2491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2492 = bitcast %union.rec* %2491 to %struct.word_type*
  %2493 = getelementptr inbounds %struct.word_type, %struct.word_type* %2492, i32 0, i32 0
  %2494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2493, i32 0, i64 1
  %2495 = getelementptr inbounds %struct.LIST, %struct.LIST* %2494, i32 0, i32 0
  %2496 = load %union.rec*, %union.rec** %2495, align 8
  store %union.rec* %2496, %union.rec** @zz_tmp, align 8
  %2497 = load %union.rec*, %union.rec** @zz_res, align 8
  %2498 = bitcast %union.rec* %2497 to %struct.word_type*
  %2499 = getelementptr inbounds %struct.word_type, %struct.word_type* %2498, i32 0, i32 0
  %2500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2499, i32 0, i64 1
  %2501 = getelementptr inbounds %struct.LIST, %struct.LIST* %2500, i32 0, i32 0
  %2502 = load %union.rec*, %union.rec** %2501, align 8
  %2503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2504 = bitcast %union.rec* %2503 to %struct.word_type*
  %2505 = getelementptr inbounds %struct.word_type, %struct.word_type* %2504, i32 0, i32 0
  %2506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2505, i32 0, i64 1
  %2507 = getelementptr inbounds %struct.LIST, %struct.LIST* %2506, i32 0, i32 0
  store %union.rec* %2502, %union.rec** %2507, align 8
  %2508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2509 = load %union.rec*, %union.rec** @zz_res, align 8
  %2510 = bitcast %union.rec* %2509 to %struct.word_type*
  %2511 = getelementptr inbounds %struct.word_type, %struct.word_type* %2510, i32 0, i32 0
  %2512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2511, i32 0, i64 1
  %2513 = getelementptr inbounds %struct.LIST, %struct.LIST* %2512, i32 0, i32 0
  %2514 = load %union.rec*, %union.rec** %2513, align 8
  %2515 = bitcast %union.rec* %2514 to %struct.word_type*
  %2516 = getelementptr inbounds %struct.word_type, %struct.word_type* %2515, i32 0, i32 0
  %2517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2516, i32 0, i64 1
  %2518 = getelementptr inbounds %struct.LIST, %struct.LIST* %2517, i32 0, i32 1
  store %union.rec* %2508, %union.rec** %2518, align 8
  %2519 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2520 = load %union.rec*, %union.rec** @zz_res, align 8
  %2521 = bitcast %union.rec* %2520 to %struct.word_type*
  %2522 = getelementptr inbounds %struct.word_type, %struct.word_type* %2521, i32 0, i32 0
  %2523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2522, i32 0, i64 1
  %2524 = getelementptr inbounds %struct.LIST, %struct.LIST* %2523, i32 0, i32 0
  store %union.rec* %2519, %union.rec** %2524, align 8
  %2525 = load %union.rec*, %union.rec** @zz_res, align 8
  %2526 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2527 = bitcast %union.rec* %2526 to %struct.word_type*
  %2528 = getelementptr inbounds %struct.word_type, %struct.word_type* %2527, i32 0, i32 0
  %2529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2528, i32 0, i64 1
  %2530 = getelementptr inbounds %struct.LIST, %struct.LIST* %2529, i32 0, i32 1
  store %union.rec* %2525, %union.rec** %2530, align 8
  br label %2531

; <label>:2531                                    ; preds = %2490, %2488
  %2532 = phi %union.rec* [ %2489, %2488 ], [ %2525, %2490 ]
  br label %2533

; <label>:2533                                    ; preds = %2531, %2483
  %2534 = phi %union.rec* [ %2484, %2483 ], [ %2532, %2531 ]
  %2535 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %2536 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2537 = call %union.rec* @MakeWord(i32 11, i8* %2535, %struct.FILE_POS* %2536)
  store %union.rec* %2537, %union.rec** %tmp, align 8
  %2538 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2539 = zext i8 %2538 to i32
  store i32 %2539, i32* @zz_size, align 4
  %2540 = sext i32 %2539 to i64
  %2541 = icmp uge i64 %2540, 265
  br i1 %2541, label %2542, label %2545

; <label>:2542                                    ; preds = %2533
  %2543 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2544 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2543)
  br label %2570

; <label>:2545                                    ; preds = %2533
  %2546 = load i32, i32* @zz_size, align 4
  %2547 = sext i32 %2546 to i64
  %2548 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2547
  %2549 = load %union.rec*, %union.rec** %2548, align 8
  %2550 = icmp eq %union.rec* %2549, null
  br i1 %2550, label %2551, label %2555

; <label>:2551                                    ; preds = %2545
  %2552 = load i32, i32* @zz_size, align 4
  %2553 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2554 = call %union.rec* @GetMemory(i32 %2552, %struct.FILE_POS* %2553)
  store %union.rec* %2554, %union.rec** @zz_hold, align 8
  br label %2569

; <label>:2555                                    ; preds = %2545
  %2556 = load i32, i32* @zz_size, align 4
  %2557 = sext i32 %2556 to i64
  %2558 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2557
  %2559 = load %union.rec*, %union.rec** %2558, align 8
  store %union.rec* %2559, %union.rec** @zz_hold, align 8
  store %union.rec* %2559, %union.rec** @zz_hold, align 8
  %2560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2561 = bitcast %union.rec* %2560 to %struct.word_type*
  %2562 = getelementptr inbounds %struct.word_type, %struct.word_type* %2561, i32 0, i32 0
  %2563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2562, i32 0, i64 0
  %2564 = getelementptr inbounds %struct.LIST, %struct.LIST* %2563, i32 0, i32 0
  %2565 = load %union.rec*, %union.rec** %2564, align 8
  %2566 = load i32, i32* @zz_size, align 4
  %2567 = sext i32 %2566 to i64
  %2568 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2567
  store %union.rec* %2565, %union.rec** %2568, align 8
  br label %2569

; <label>:2569                                    ; preds = %2555, %2551
  br label %2570

; <label>:2570                                    ; preds = %2569, %2542
  %2571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2572 = bitcast %union.rec* %2571 to %struct.word_type*
  %2573 = getelementptr inbounds %struct.word_type, %struct.word_type* %2572, i32 0, i32 1
  %2574 = bitcast %union.FIRST_UNION* %2573 to %struct.anon*
  %2575 = getelementptr inbounds %struct.anon, %struct.anon* %2574, i32 0, i32 0
  store i8 0, i8* %2575, align 1
  %2576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2578 = bitcast %union.rec* %2577 to %struct.word_type*
  %2579 = getelementptr inbounds %struct.word_type, %struct.word_type* %2578, i32 0, i32 0
  %2580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2579, i32 0, i64 1
  %2581 = getelementptr inbounds %struct.LIST, %struct.LIST* %2580, i32 0, i32 1
  store %union.rec* %2576, %union.rec** %2581, align 8
  %2582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2583 = bitcast %union.rec* %2582 to %struct.word_type*
  %2584 = getelementptr inbounds %struct.word_type, %struct.word_type* %2583, i32 0, i32 0
  %2585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2584, i32 0, i64 1
  %2586 = getelementptr inbounds %struct.LIST, %struct.LIST* %2585, i32 0, i32 0
  store %union.rec* %2576, %union.rec** %2586, align 8
  %2587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2588 = bitcast %union.rec* %2587 to %struct.word_type*
  %2589 = getelementptr inbounds %struct.word_type, %struct.word_type* %2588, i32 0, i32 0
  %2590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2589, i32 0, i64 0
  %2591 = getelementptr inbounds %struct.LIST, %struct.LIST* %2590, i32 0, i32 1
  store %union.rec* %2576, %union.rec** %2591, align 8
  %2592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2593 = bitcast %union.rec* %2592 to %struct.word_type*
  %2594 = getelementptr inbounds %struct.word_type, %struct.word_type* %2593, i32 0, i32 0
  %2595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2594, i32 0, i64 0
  %2596 = getelementptr inbounds %struct.LIST, %struct.LIST* %2595, i32 0, i32 0
  store %union.rec* %2576, %union.rec** %2596, align 8
  store %union.rec* %2576, %union.rec** @xx_link, align 8
  %2597 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2597, %union.rec** @zz_res, align 8
  %2598 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %2598, %union.rec** @zz_hold, align 8
  %2599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2600 = icmp eq %union.rec* %2599, null
  br i1 %2600, label %2601, label %2603

; <label>:2601                                    ; preds = %2570
  %2602 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2651

; <label>:2603                                    ; preds = %2570
  %2604 = load %union.rec*, %union.rec** @zz_res, align 8
  %2605 = icmp eq %union.rec* %2604, null
  br i1 %2605, label %2606, label %2608

; <label>:2606                                    ; preds = %2603
  %2607 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2649

; <label>:2608                                    ; preds = %2603
  %2609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2610 = bitcast %union.rec* %2609 to %struct.word_type*
  %2611 = getelementptr inbounds %struct.word_type, %struct.word_type* %2610, i32 0, i32 0
  %2612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2611, i32 0, i64 0
  %2613 = getelementptr inbounds %struct.LIST, %struct.LIST* %2612, i32 0, i32 0
  %2614 = load %union.rec*, %union.rec** %2613, align 8
  store %union.rec* %2614, %union.rec** @zz_tmp, align 8
  %2615 = load %union.rec*, %union.rec** @zz_res, align 8
  %2616 = bitcast %union.rec* %2615 to %struct.word_type*
  %2617 = getelementptr inbounds %struct.word_type, %struct.word_type* %2616, i32 0, i32 0
  %2618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2617, i32 0, i64 0
  %2619 = getelementptr inbounds %struct.LIST, %struct.LIST* %2618, i32 0, i32 0
  %2620 = load %union.rec*, %union.rec** %2619, align 8
  %2621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2622 = bitcast %union.rec* %2621 to %struct.word_type*
  %2623 = getelementptr inbounds %struct.word_type, %struct.word_type* %2622, i32 0, i32 0
  %2624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2623, i32 0, i64 0
  %2625 = getelementptr inbounds %struct.LIST, %struct.LIST* %2624, i32 0, i32 0
  store %union.rec* %2620, %union.rec** %2625, align 8
  %2626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2627 = load %union.rec*, %union.rec** @zz_res, align 8
  %2628 = bitcast %union.rec* %2627 to %struct.word_type*
  %2629 = getelementptr inbounds %struct.word_type, %struct.word_type* %2628, i32 0, i32 0
  %2630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2629, i32 0, i64 0
  %2631 = getelementptr inbounds %struct.LIST, %struct.LIST* %2630, i32 0, i32 0
  %2632 = load %union.rec*, %union.rec** %2631, align 8
  %2633 = bitcast %union.rec* %2632 to %struct.word_type*
  %2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %2633, i32 0, i32 0
  %2635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2634, i32 0, i64 0
  %2636 = getelementptr inbounds %struct.LIST, %struct.LIST* %2635, i32 0, i32 1
  store %union.rec* %2626, %union.rec** %2636, align 8
  %2637 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2638 = load %union.rec*, %union.rec** @zz_res, align 8
  %2639 = bitcast %union.rec* %2638 to %struct.word_type*
  %2640 = getelementptr inbounds %struct.word_type, %struct.word_type* %2639, i32 0, i32 0
  %2641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2640, i32 0, i64 0
  %2642 = getelementptr inbounds %struct.LIST, %struct.LIST* %2641, i32 0, i32 0
  store %union.rec* %2637, %union.rec** %2642, align 8
  %2643 = load %union.rec*, %union.rec** @zz_res, align 8
  %2644 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2645 = bitcast %union.rec* %2644 to %struct.word_type*
  %2646 = getelementptr inbounds %struct.word_type, %struct.word_type* %2645, i32 0, i32 0
  %2647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2646, i32 0, i64 0
  %2648 = getelementptr inbounds %struct.LIST, %struct.LIST* %2647, i32 0, i32 1
  store %union.rec* %2643, %union.rec** %2648, align 8
  br label %2649

; <label>:2649                                    ; preds = %2608, %2606
  %2650 = phi %union.rec* [ %2607, %2606 ], [ %2643, %2608 ]
  br label %2651

; <label>:2651                                    ; preds = %2649, %2601
  %2652 = phi %union.rec* [ %2602, %2601 ], [ %2650, %2649 ]
  %2653 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2653, %union.rec** @zz_res, align 8
  %2654 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2654, %union.rec** @zz_hold, align 8
  %2655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2656 = icmp eq %union.rec* %2655, null
  br i1 %2656, label %2657, label %2659

; <label>:2657                                    ; preds = %2651
  %2658 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2707

; <label>:2659                                    ; preds = %2651
  %2660 = load %union.rec*, %union.rec** @zz_res, align 8
  %2661 = icmp eq %union.rec* %2660, null
  br i1 %2661, label %2662, label %2664

; <label>:2662                                    ; preds = %2659
  %2663 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2705

; <label>:2664                                    ; preds = %2659
  %2665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2666 = bitcast %union.rec* %2665 to %struct.word_type*
  %2667 = getelementptr inbounds %struct.word_type, %struct.word_type* %2666, i32 0, i32 0
  %2668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2667, i32 0, i64 1
  %2669 = getelementptr inbounds %struct.LIST, %struct.LIST* %2668, i32 0, i32 0
  %2670 = load %union.rec*, %union.rec** %2669, align 8
  store %union.rec* %2670, %union.rec** @zz_tmp, align 8
  %2671 = load %union.rec*, %union.rec** @zz_res, align 8
  %2672 = bitcast %union.rec* %2671 to %struct.word_type*
  %2673 = getelementptr inbounds %struct.word_type, %struct.word_type* %2672, i32 0, i32 0
  %2674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2673, i32 0, i64 1
  %2675 = getelementptr inbounds %struct.LIST, %struct.LIST* %2674, i32 0, i32 0
  %2676 = load %union.rec*, %union.rec** %2675, align 8
  %2677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2678 = bitcast %union.rec* %2677 to %struct.word_type*
  %2679 = getelementptr inbounds %struct.word_type, %struct.word_type* %2678, i32 0, i32 0
  %2680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2679, i32 0, i64 1
  %2681 = getelementptr inbounds %struct.LIST, %struct.LIST* %2680, i32 0, i32 0
  store %union.rec* %2676, %union.rec** %2681, align 8
  %2682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2683 = load %union.rec*, %union.rec** @zz_res, align 8
  %2684 = bitcast %union.rec* %2683 to %struct.word_type*
  %2685 = getelementptr inbounds %struct.word_type, %struct.word_type* %2684, i32 0, i32 0
  %2686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2685, i32 0, i64 1
  %2687 = getelementptr inbounds %struct.LIST, %struct.LIST* %2686, i32 0, i32 0
  %2688 = load %union.rec*, %union.rec** %2687, align 8
  %2689 = bitcast %union.rec* %2688 to %struct.word_type*
  %2690 = getelementptr inbounds %struct.word_type, %struct.word_type* %2689, i32 0, i32 0
  %2691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2690, i32 0, i64 1
  %2692 = getelementptr inbounds %struct.LIST, %struct.LIST* %2691, i32 0, i32 1
  store %union.rec* %2682, %union.rec** %2692, align 8
  %2693 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2694 = load %union.rec*, %union.rec** @zz_res, align 8
  %2695 = bitcast %union.rec* %2694 to %struct.word_type*
  %2696 = getelementptr inbounds %struct.word_type, %struct.word_type* %2695, i32 0, i32 0
  %2697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2696, i32 0, i64 1
  %2698 = getelementptr inbounds %struct.LIST, %struct.LIST* %2697, i32 0, i32 0
  store %union.rec* %2693, %union.rec** %2698, align 8
  %2699 = load %union.rec*, %union.rec** @zz_res, align 8
  %2700 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2701 = bitcast %union.rec* %2700 to %struct.word_type*
  %2702 = getelementptr inbounds %struct.word_type, %struct.word_type* %2701, i32 0, i32 0
  %2703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2702, i32 0, i64 1
  %2704 = getelementptr inbounds %struct.LIST, %struct.LIST* %2703, i32 0, i32 1
  store %union.rec* %2699, %union.rec** %2704, align 8
  br label %2705

; <label>:2705                                    ; preds = %2664, %2662
  %2706 = phi %union.rec* [ %2663, %2662 ], [ %2699, %2664 ]
  br label %2707

; <label>:2707                                    ; preds = %2705, %2657
  %2708 = phi %union.rec* [ %2658, %2657 ], [ %2706, %2705 ]
  %2709 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %2710 = load %struct.tm*, %struct.tm** %now, align 8
  %2711 = getelementptr inbounds %struct.tm, %struct.tm* %2710, i32 0, i32 5
  %2712 = load i32, i32* %2711, align 4
  %2713 = srem i32 %2712, 100
  %2714 = call i32 (i8*, i8*, ...) @sprintf(i8* %2709, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %2713) #3
  %2715 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %2716 = zext i8 %2715 to i32
  store i32 %2716, i32* @zz_size, align 4
  %2717 = sext i32 %2716 to i64
  %2718 = icmp uge i64 %2717, 265
  br i1 %2718, label %2719, label %2722

; <label>:2719                                    ; preds = %2707
  %2720 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2721 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2720)
  br label %2747

; <label>:2722                                    ; preds = %2707
  %2723 = load i32, i32* @zz_size, align 4
  %2724 = sext i32 %2723 to i64
  %2725 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2724
  %2726 = load %union.rec*, %union.rec** %2725, align 8
  %2727 = icmp eq %union.rec* %2726, null
  br i1 %2727, label %2728, label %2732

; <label>:2728                                    ; preds = %2722
  %2729 = load i32, i32* @zz_size, align 4
  %2730 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2731 = call %union.rec* @GetMemory(i32 %2729, %struct.FILE_POS* %2730)
  store %union.rec* %2731, %union.rec** @zz_hold, align 8
  br label %2746

; <label>:2732                                    ; preds = %2722
  %2733 = load i32, i32* @zz_size, align 4
  %2734 = sext i32 %2733 to i64
  %2735 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2734
  %2736 = load %union.rec*, %union.rec** %2735, align 8
  store %union.rec* %2736, %union.rec** @zz_hold, align 8
  store %union.rec* %2736, %union.rec** @zz_hold, align 8
  %2737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2738 = bitcast %union.rec* %2737 to %struct.word_type*
  %2739 = getelementptr inbounds %struct.word_type, %struct.word_type* %2738, i32 0, i32 0
  %2740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2739, i32 0, i64 0
  %2741 = getelementptr inbounds %struct.LIST, %struct.LIST* %2740, i32 0, i32 0
  %2742 = load %union.rec*, %union.rec** %2741, align 8
  %2743 = load i32, i32* @zz_size, align 4
  %2744 = sext i32 %2743 to i64
  %2745 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2744
  store %union.rec* %2742, %union.rec** %2745, align 8
  br label %2746

; <label>:2746                                    ; preds = %2732, %2728
  br label %2747

; <label>:2747                                    ; preds = %2746, %2719
  %2748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2749 = bitcast %union.rec* %2748 to %struct.word_type*
  %2750 = getelementptr inbounds %struct.word_type, %struct.word_type* %2749, i32 0, i32 1
  %2751 = bitcast %union.FIRST_UNION* %2750 to %struct.anon*
  %2752 = getelementptr inbounds %struct.anon, %struct.anon* %2751, i32 0, i32 0
  store i8 10, i8* %2752, align 1
  %2753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2755 = bitcast %union.rec* %2754 to %struct.word_type*
  %2756 = getelementptr inbounds %struct.word_type, %struct.word_type* %2755, i32 0, i32 0
  %2757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2756, i32 0, i64 1
  %2758 = getelementptr inbounds %struct.LIST, %struct.LIST* %2757, i32 0, i32 1
  store %union.rec* %2753, %union.rec** %2758, align 8
  %2759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2760 = bitcast %union.rec* %2759 to %struct.word_type*
  %2761 = getelementptr inbounds %struct.word_type, %struct.word_type* %2760, i32 0, i32 0
  %2762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2761, i32 0, i64 1
  %2763 = getelementptr inbounds %struct.LIST, %struct.LIST* %2762, i32 0, i32 0
  store %union.rec* %2753, %union.rec** %2763, align 8
  %2764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2765 = bitcast %union.rec* %2764 to %struct.word_type*
  %2766 = getelementptr inbounds %struct.word_type, %struct.word_type* %2765, i32 0, i32 0
  %2767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2766, i32 0, i64 0
  %2768 = getelementptr inbounds %struct.LIST, %struct.LIST* %2767, i32 0, i32 1
  store %union.rec* %2753, %union.rec** %2768, align 8
  %2769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2770 = bitcast %union.rec* %2769 to %struct.word_type*
  %2771 = getelementptr inbounds %struct.word_type, %struct.word_type* %2770, i32 0, i32 0
  %2772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2771, i32 0, i64 0
  %2773 = getelementptr inbounds %struct.LIST, %struct.LIST* %2772, i32 0, i32 0
  store %union.rec* %2753, %union.rec** %2773, align 8
  store %union.rec* %2753, %union.rec** %par, align 8
  %2774 = load %union.rec*, %union.rec** %year, align 8
  %2775 = load %union.rec*, %union.rec** %par, align 8
  %2776 = bitcast %union.rec* %2775 to %struct.closure_type*
  %2777 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2776, i32 0, i32 5
  store %union.rec* %2774, %union.rec** %2777, align 8
  %2778 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2779 = zext i8 %2778 to i32
  store i32 %2779, i32* @zz_size, align 4
  %2780 = sext i32 %2779 to i64
  %2781 = icmp uge i64 %2780, 265
  br i1 %2781, label %2782, label %2785

; <label>:2782                                    ; preds = %2747
  %2783 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2784 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2783)
  br label %2810

; <label>:2785                                    ; preds = %2747
  %2786 = load i32, i32* @zz_size, align 4
  %2787 = sext i32 %2786 to i64
  %2788 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2787
  %2789 = load %union.rec*, %union.rec** %2788, align 8
  %2790 = icmp eq %union.rec* %2789, null
  br i1 %2790, label %2791, label %2795

; <label>:2791                                    ; preds = %2785
  %2792 = load i32, i32* @zz_size, align 4
  %2793 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2794 = call %union.rec* @GetMemory(i32 %2792, %struct.FILE_POS* %2793)
  store %union.rec* %2794, %union.rec** @zz_hold, align 8
  br label %2809

; <label>:2795                                    ; preds = %2785
  %2796 = load i32, i32* @zz_size, align 4
  %2797 = sext i32 %2796 to i64
  %2798 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2797
  %2799 = load %union.rec*, %union.rec** %2798, align 8
  store %union.rec* %2799, %union.rec** @zz_hold, align 8
  store %union.rec* %2799, %union.rec** @zz_hold, align 8
  %2800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2801 = bitcast %union.rec* %2800 to %struct.word_type*
  %2802 = getelementptr inbounds %struct.word_type, %struct.word_type* %2801, i32 0, i32 0
  %2803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2802, i32 0, i64 0
  %2804 = getelementptr inbounds %struct.LIST, %struct.LIST* %2803, i32 0, i32 0
  %2805 = load %union.rec*, %union.rec** %2804, align 8
  %2806 = load i32, i32* @zz_size, align 4
  %2807 = sext i32 %2806 to i64
  %2808 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2807
  store %union.rec* %2805, %union.rec** %2808, align 8
  br label %2809

; <label>:2809                                    ; preds = %2795, %2791
  br label %2810

; <label>:2810                                    ; preds = %2809, %2782
  %2811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2812 = bitcast %union.rec* %2811 to %struct.word_type*
  %2813 = getelementptr inbounds %struct.word_type, %struct.word_type* %2812, i32 0, i32 1
  %2814 = bitcast %union.FIRST_UNION* %2813 to %struct.anon*
  %2815 = getelementptr inbounds %struct.anon, %struct.anon* %2814, i32 0, i32 0
  store i8 0, i8* %2815, align 1
  %2816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2818 = bitcast %union.rec* %2817 to %struct.word_type*
  %2819 = getelementptr inbounds %struct.word_type, %struct.word_type* %2818, i32 0, i32 0
  %2820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2819, i32 0, i64 1
  %2821 = getelementptr inbounds %struct.LIST, %struct.LIST* %2820, i32 0, i32 1
  store %union.rec* %2816, %union.rec** %2821, align 8
  %2822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2823 = bitcast %union.rec* %2822 to %struct.word_type*
  %2824 = getelementptr inbounds %struct.word_type, %struct.word_type* %2823, i32 0, i32 0
  %2825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2824, i32 0, i64 1
  %2826 = getelementptr inbounds %struct.LIST, %struct.LIST* %2825, i32 0, i32 0
  store %union.rec* %2816, %union.rec** %2826, align 8
  %2827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2828 = bitcast %union.rec* %2827 to %struct.word_type*
  %2829 = getelementptr inbounds %struct.word_type, %struct.word_type* %2828, i32 0, i32 0
  %2830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2829, i32 0, i64 0
  %2831 = getelementptr inbounds %struct.LIST, %struct.LIST* %2830, i32 0, i32 1
  store %union.rec* %2816, %union.rec** %2831, align 8
  %2832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2833 = bitcast %union.rec* %2832 to %struct.word_type*
  %2834 = getelementptr inbounds %struct.word_type, %struct.word_type* %2833, i32 0, i32 0
  %2835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2834, i32 0, i64 0
  %2836 = getelementptr inbounds %struct.LIST, %struct.LIST* %2835, i32 0, i32 0
  store %union.rec* %2816, %union.rec** %2836, align 8
  store %union.rec* %2816, %union.rec** @xx_link, align 8
  %2837 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2837, %union.rec** @zz_res, align 8
  %2838 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %2838, %union.rec** @zz_hold, align 8
  %2839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2840 = icmp eq %union.rec* %2839, null
  br i1 %2840, label %2841, label %2843

; <label>:2841                                    ; preds = %2810
  %2842 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2891

; <label>:2843                                    ; preds = %2810
  %2844 = load %union.rec*, %union.rec** @zz_res, align 8
  %2845 = icmp eq %union.rec* %2844, null
  br i1 %2845, label %2846, label %2848

; <label>:2846                                    ; preds = %2843
  %2847 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2889

; <label>:2848                                    ; preds = %2843
  %2849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2850 = bitcast %union.rec* %2849 to %struct.word_type*
  %2851 = getelementptr inbounds %struct.word_type, %struct.word_type* %2850, i32 0, i32 0
  %2852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2851, i32 0, i64 0
  %2853 = getelementptr inbounds %struct.LIST, %struct.LIST* %2852, i32 0, i32 0
  %2854 = load %union.rec*, %union.rec** %2853, align 8
  store %union.rec* %2854, %union.rec** @zz_tmp, align 8
  %2855 = load %union.rec*, %union.rec** @zz_res, align 8
  %2856 = bitcast %union.rec* %2855 to %struct.word_type*
  %2857 = getelementptr inbounds %struct.word_type, %struct.word_type* %2856, i32 0, i32 0
  %2858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2857, i32 0, i64 0
  %2859 = getelementptr inbounds %struct.LIST, %struct.LIST* %2858, i32 0, i32 0
  %2860 = load %union.rec*, %union.rec** %2859, align 8
  %2861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2862 = bitcast %union.rec* %2861 to %struct.word_type*
  %2863 = getelementptr inbounds %struct.word_type, %struct.word_type* %2862, i32 0, i32 0
  %2864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2863, i32 0, i64 0
  %2865 = getelementptr inbounds %struct.LIST, %struct.LIST* %2864, i32 0, i32 0
  store %union.rec* %2860, %union.rec** %2865, align 8
  %2866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2867 = load %union.rec*, %union.rec** @zz_res, align 8
  %2868 = bitcast %union.rec* %2867 to %struct.word_type*
  %2869 = getelementptr inbounds %struct.word_type, %struct.word_type* %2868, i32 0, i32 0
  %2870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2869, i32 0, i64 0
  %2871 = getelementptr inbounds %struct.LIST, %struct.LIST* %2870, i32 0, i32 0
  %2872 = load %union.rec*, %union.rec** %2871, align 8
  %2873 = bitcast %union.rec* %2872 to %struct.word_type*
  %2874 = getelementptr inbounds %struct.word_type, %struct.word_type* %2873, i32 0, i32 0
  %2875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2874, i32 0, i64 0
  %2876 = getelementptr inbounds %struct.LIST, %struct.LIST* %2875, i32 0, i32 1
  store %union.rec* %2866, %union.rec** %2876, align 8
  %2877 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2878 = load %union.rec*, %union.rec** @zz_res, align 8
  %2879 = bitcast %union.rec* %2878 to %struct.word_type*
  %2880 = getelementptr inbounds %struct.word_type, %struct.word_type* %2879, i32 0, i32 0
  %2881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2880, i32 0, i64 0
  %2882 = getelementptr inbounds %struct.LIST, %struct.LIST* %2881, i32 0, i32 0
  store %union.rec* %2877, %union.rec** %2882, align 8
  %2883 = load %union.rec*, %union.rec** @zz_res, align 8
  %2884 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2885 = bitcast %union.rec* %2884 to %struct.word_type*
  %2886 = getelementptr inbounds %struct.word_type, %struct.word_type* %2885, i32 0, i32 0
  %2887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2886, i32 0, i64 0
  %2888 = getelementptr inbounds %struct.LIST, %struct.LIST* %2887, i32 0, i32 1
  store %union.rec* %2883, %union.rec** %2888, align 8
  br label %2889

; <label>:2889                                    ; preds = %2848, %2846
  %2890 = phi %union.rec* [ %2847, %2846 ], [ %2883, %2848 ]
  br label %2891

; <label>:2891                                    ; preds = %2889, %2841
  %2892 = phi %union.rec* [ %2842, %2841 ], [ %2890, %2889 ]
  %2893 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2893, %union.rec** @zz_res, align 8
  %2894 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %2894, %union.rec** @zz_hold, align 8
  %2895 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2896 = icmp eq %union.rec* %2895, null
  br i1 %2896, label %2897, label %2899

; <label>:2897                                    ; preds = %2891
  %2898 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2947

; <label>:2899                                    ; preds = %2891
  %2900 = load %union.rec*, %union.rec** @zz_res, align 8
  %2901 = icmp eq %union.rec* %2900, null
  br i1 %2901, label %2902, label %2904

; <label>:2902                                    ; preds = %2899
  %2903 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2945

; <label>:2904                                    ; preds = %2899
  %2905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2906 = bitcast %union.rec* %2905 to %struct.word_type*
  %2907 = getelementptr inbounds %struct.word_type, %struct.word_type* %2906, i32 0, i32 0
  %2908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2907, i32 0, i64 1
  %2909 = getelementptr inbounds %struct.LIST, %struct.LIST* %2908, i32 0, i32 0
  %2910 = load %union.rec*, %union.rec** %2909, align 8
  store %union.rec* %2910, %union.rec** @zz_tmp, align 8
  %2911 = load %union.rec*, %union.rec** @zz_res, align 8
  %2912 = bitcast %union.rec* %2911 to %struct.word_type*
  %2913 = getelementptr inbounds %struct.word_type, %struct.word_type* %2912, i32 0, i32 0
  %2914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2913, i32 0, i64 1
  %2915 = getelementptr inbounds %struct.LIST, %struct.LIST* %2914, i32 0, i32 0
  %2916 = load %union.rec*, %union.rec** %2915, align 8
  %2917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2918 = bitcast %union.rec* %2917 to %struct.word_type*
  %2919 = getelementptr inbounds %struct.word_type, %struct.word_type* %2918, i32 0, i32 0
  %2920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2919, i32 0, i64 1
  %2921 = getelementptr inbounds %struct.LIST, %struct.LIST* %2920, i32 0, i32 0
  store %union.rec* %2916, %union.rec** %2921, align 8
  %2922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2923 = load %union.rec*, %union.rec** @zz_res, align 8
  %2924 = bitcast %union.rec* %2923 to %struct.word_type*
  %2925 = getelementptr inbounds %struct.word_type, %struct.word_type* %2924, i32 0, i32 0
  %2926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2925, i32 0, i64 1
  %2927 = getelementptr inbounds %struct.LIST, %struct.LIST* %2926, i32 0, i32 0
  %2928 = load %union.rec*, %union.rec** %2927, align 8
  %2929 = bitcast %union.rec* %2928 to %struct.word_type*
  %2930 = getelementptr inbounds %struct.word_type, %struct.word_type* %2929, i32 0, i32 0
  %2931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2930, i32 0, i64 1
  %2932 = getelementptr inbounds %struct.LIST, %struct.LIST* %2931, i32 0, i32 1
  store %union.rec* %2922, %union.rec** %2932, align 8
  %2933 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2934 = load %union.rec*, %union.rec** @zz_res, align 8
  %2935 = bitcast %union.rec* %2934 to %struct.word_type*
  %2936 = getelementptr inbounds %struct.word_type, %struct.word_type* %2935, i32 0, i32 0
  %2937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2936, i32 0, i64 1
  %2938 = getelementptr inbounds %struct.LIST, %struct.LIST* %2937, i32 0, i32 0
  store %union.rec* %2933, %union.rec** %2938, align 8
  %2939 = load %union.rec*, %union.rec** @zz_res, align 8
  %2940 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2941 = bitcast %union.rec* %2940 to %struct.word_type*
  %2942 = getelementptr inbounds %struct.word_type, %struct.word_type* %2941, i32 0, i32 0
  %2943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2942, i32 0, i64 1
  %2944 = getelementptr inbounds %struct.LIST, %struct.LIST* %2943, i32 0, i32 1
  store %union.rec* %2939, %union.rec** %2944, align 8
  br label %2945

; <label>:2945                                    ; preds = %2904, %2902
  %2946 = phi %union.rec* [ %2903, %2902 ], [ %2939, %2904 ]
  br label %2947

; <label>:2947                                    ; preds = %2945, %2897
  %2948 = phi %union.rec* [ %2898, %2897 ], [ %2946, %2945 ]
  %2949 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %2950 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2951 = call %union.rec* @MakeWord(i32 11, i8* %2949, %struct.FILE_POS* %2950)
  store %union.rec* %2951, %union.rec** %tmp, align 8
  %2952 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2953 = zext i8 %2952 to i32
  store i32 %2953, i32* @zz_size, align 4
  %2954 = sext i32 %2953 to i64
  %2955 = icmp uge i64 %2954, 265
  br i1 %2955, label %2956, label %2959

; <label>:2956                                    ; preds = %2947
  %2957 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2958 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2957)
  br label %2984

; <label>:2959                                    ; preds = %2947
  %2960 = load i32, i32* @zz_size, align 4
  %2961 = sext i32 %2960 to i64
  %2962 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2961
  %2963 = load %union.rec*, %union.rec** %2962, align 8
  %2964 = icmp eq %union.rec* %2963, null
  br i1 %2964, label %2965, label %2969

; <label>:2965                                    ; preds = %2959
  %2966 = load i32, i32* @zz_size, align 4
  %2967 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2968 = call %union.rec* @GetMemory(i32 %2966, %struct.FILE_POS* %2967)
  store %union.rec* %2968, %union.rec** @zz_hold, align 8
  br label %2983

; <label>:2969                                    ; preds = %2959
  %2970 = load i32, i32* @zz_size, align 4
  %2971 = sext i32 %2970 to i64
  %2972 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2971
  %2973 = load %union.rec*, %union.rec** %2972, align 8
  store %union.rec* %2973, %union.rec** @zz_hold, align 8
  store %union.rec* %2973, %union.rec** @zz_hold, align 8
  %2974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2975 = bitcast %union.rec* %2974 to %struct.word_type*
  %2976 = getelementptr inbounds %struct.word_type, %struct.word_type* %2975, i32 0, i32 0
  %2977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2976, i32 0, i64 0
  %2978 = getelementptr inbounds %struct.LIST, %struct.LIST* %2977, i32 0, i32 0
  %2979 = load %union.rec*, %union.rec** %2978, align 8
  %2980 = load i32, i32* @zz_size, align 4
  %2981 = sext i32 %2980 to i64
  %2982 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2981
  store %union.rec* %2979, %union.rec** %2982, align 8
  br label %2983

; <label>:2983                                    ; preds = %2969, %2965
  br label %2984

; <label>:2984                                    ; preds = %2983, %2956
  %2985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2986 = bitcast %union.rec* %2985 to %struct.word_type*
  %2987 = getelementptr inbounds %struct.word_type, %struct.word_type* %2986, i32 0, i32 1
  %2988 = bitcast %union.FIRST_UNION* %2987 to %struct.anon*
  %2989 = getelementptr inbounds %struct.anon, %struct.anon* %2988, i32 0, i32 0
  store i8 0, i8* %2989, align 1
  %2990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2992 = bitcast %union.rec* %2991 to %struct.word_type*
  %2993 = getelementptr inbounds %struct.word_type, %struct.word_type* %2992, i32 0, i32 0
  %2994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2993, i32 0, i64 1
  %2995 = getelementptr inbounds %struct.LIST, %struct.LIST* %2994, i32 0, i32 1
  store %union.rec* %2990, %union.rec** %2995, align 8
  %2996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2997 = bitcast %union.rec* %2996 to %struct.word_type*
  %2998 = getelementptr inbounds %struct.word_type, %struct.word_type* %2997, i32 0, i32 0
  %2999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2998, i32 0, i64 1
  %3000 = getelementptr inbounds %struct.LIST, %struct.LIST* %2999, i32 0, i32 0
  store %union.rec* %2990, %union.rec** %3000, align 8
  %3001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3002 = bitcast %union.rec* %3001 to %struct.word_type*
  %3003 = getelementptr inbounds %struct.word_type, %struct.word_type* %3002, i32 0, i32 0
  %3004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3003, i32 0, i64 0
  %3005 = getelementptr inbounds %struct.LIST, %struct.LIST* %3004, i32 0, i32 1
  store %union.rec* %2990, %union.rec** %3005, align 8
  %3006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3007 = bitcast %union.rec* %3006 to %struct.word_type*
  %3008 = getelementptr inbounds %struct.word_type, %struct.word_type* %3007, i32 0, i32 0
  %3009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3008, i32 0, i64 0
  %3010 = getelementptr inbounds %struct.LIST, %struct.LIST* %3009, i32 0, i32 0
  store %union.rec* %2990, %union.rec** %3010, align 8
  store %union.rec* %2990, %union.rec** @xx_link, align 8
  %3011 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3011, %union.rec** @zz_res, align 8
  %3012 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %3012, %union.rec** @zz_hold, align 8
  %3013 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3014 = icmp eq %union.rec* %3013, null
  br i1 %3014, label %3015, label %3017

; <label>:3015                                    ; preds = %2984
  %3016 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3065

; <label>:3017                                    ; preds = %2984
  %3018 = load %union.rec*, %union.rec** @zz_res, align 8
  %3019 = icmp eq %union.rec* %3018, null
  br i1 %3019, label %3020, label %3022

; <label>:3020                                    ; preds = %3017
  %3021 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3063

; <label>:3022                                    ; preds = %3017
  %3023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3024 = bitcast %union.rec* %3023 to %struct.word_type*
  %3025 = getelementptr inbounds %struct.word_type, %struct.word_type* %3024, i32 0, i32 0
  %3026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3025, i32 0, i64 0
  %3027 = getelementptr inbounds %struct.LIST, %struct.LIST* %3026, i32 0, i32 0
  %3028 = load %union.rec*, %union.rec** %3027, align 8
  store %union.rec* %3028, %union.rec** @zz_tmp, align 8
  %3029 = load %union.rec*, %union.rec** @zz_res, align 8
  %3030 = bitcast %union.rec* %3029 to %struct.word_type*
  %3031 = getelementptr inbounds %struct.word_type, %struct.word_type* %3030, i32 0, i32 0
  %3032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3031, i32 0, i64 0
  %3033 = getelementptr inbounds %struct.LIST, %struct.LIST* %3032, i32 0, i32 0
  %3034 = load %union.rec*, %union.rec** %3033, align 8
  %3035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3036 = bitcast %union.rec* %3035 to %struct.word_type*
  %3037 = getelementptr inbounds %struct.word_type, %struct.word_type* %3036, i32 0, i32 0
  %3038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3037, i32 0, i64 0
  %3039 = getelementptr inbounds %struct.LIST, %struct.LIST* %3038, i32 0, i32 0
  store %union.rec* %3034, %union.rec** %3039, align 8
  %3040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3041 = load %union.rec*, %union.rec** @zz_res, align 8
  %3042 = bitcast %union.rec* %3041 to %struct.word_type*
  %3043 = getelementptr inbounds %struct.word_type, %struct.word_type* %3042, i32 0, i32 0
  %3044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3043, i32 0, i64 0
  %3045 = getelementptr inbounds %struct.LIST, %struct.LIST* %3044, i32 0, i32 0
  %3046 = load %union.rec*, %union.rec** %3045, align 8
  %3047 = bitcast %union.rec* %3046 to %struct.word_type*
  %3048 = getelementptr inbounds %struct.word_type, %struct.word_type* %3047, i32 0, i32 0
  %3049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3048, i32 0, i64 0
  %3050 = getelementptr inbounds %struct.LIST, %struct.LIST* %3049, i32 0, i32 1
  store %union.rec* %3040, %union.rec** %3050, align 8
  %3051 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3052 = load %union.rec*, %union.rec** @zz_res, align 8
  %3053 = bitcast %union.rec* %3052 to %struct.word_type*
  %3054 = getelementptr inbounds %struct.word_type, %struct.word_type* %3053, i32 0, i32 0
  %3055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3054, i32 0, i64 0
  %3056 = getelementptr inbounds %struct.LIST, %struct.LIST* %3055, i32 0, i32 0
  store %union.rec* %3051, %union.rec** %3056, align 8
  %3057 = load %union.rec*, %union.rec** @zz_res, align 8
  %3058 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3059 = bitcast %union.rec* %3058 to %struct.word_type*
  %3060 = getelementptr inbounds %struct.word_type, %struct.word_type* %3059, i32 0, i32 0
  %3061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3060, i32 0, i64 0
  %3062 = getelementptr inbounds %struct.LIST, %struct.LIST* %3061, i32 0, i32 1
  store %union.rec* %3057, %union.rec** %3062, align 8
  br label %3063

; <label>:3063                                    ; preds = %3022, %3020
  %3064 = phi %union.rec* [ %3021, %3020 ], [ %3057, %3022 ]
  br label %3065

; <label>:3065                                    ; preds = %3063, %3015
  %3066 = phi %union.rec* [ %3016, %3015 ], [ %3064, %3063 ]
  %3067 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3067, %union.rec** @zz_res, align 8
  %3068 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3068, %union.rec** @zz_hold, align 8
  %3069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3070 = icmp eq %union.rec* %3069, null
  br i1 %3070, label %3071, label %3073

; <label>:3071                                    ; preds = %3065
  %3072 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3121

; <label>:3073                                    ; preds = %3065
  %3074 = load %union.rec*, %union.rec** @zz_res, align 8
  %3075 = icmp eq %union.rec* %3074, null
  br i1 %3075, label %3076, label %3078

; <label>:3076                                    ; preds = %3073
  %3077 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3119

; <label>:3078                                    ; preds = %3073
  %3079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3080 = bitcast %union.rec* %3079 to %struct.word_type*
  %3081 = getelementptr inbounds %struct.word_type, %struct.word_type* %3080, i32 0, i32 0
  %3082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3081, i32 0, i64 1
  %3083 = getelementptr inbounds %struct.LIST, %struct.LIST* %3082, i32 0, i32 0
  %3084 = load %union.rec*, %union.rec** %3083, align 8
  store %union.rec* %3084, %union.rec** @zz_tmp, align 8
  %3085 = load %union.rec*, %union.rec** @zz_res, align 8
  %3086 = bitcast %union.rec* %3085 to %struct.word_type*
  %3087 = getelementptr inbounds %struct.word_type, %struct.word_type* %3086, i32 0, i32 0
  %3088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3087, i32 0, i64 1
  %3089 = getelementptr inbounds %struct.LIST, %struct.LIST* %3088, i32 0, i32 0
  %3090 = load %union.rec*, %union.rec** %3089, align 8
  %3091 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3092 = bitcast %union.rec* %3091 to %struct.word_type*
  %3093 = getelementptr inbounds %struct.word_type, %struct.word_type* %3092, i32 0, i32 0
  %3094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3093, i32 0, i64 1
  %3095 = getelementptr inbounds %struct.LIST, %struct.LIST* %3094, i32 0, i32 0
  store %union.rec* %3090, %union.rec** %3095, align 8
  %3096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3097 = load %union.rec*, %union.rec** @zz_res, align 8
  %3098 = bitcast %union.rec* %3097 to %struct.word_type*
  %3099 = getelementptr inbounds %struct.word_type, %struct.word_type* %3098, i32 0, i32 0
  %3100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3099, i32 0, i64 1
  %3101 = getelementptr inbounds %struct.LIST, %struct.LIST* %3100, i32 0, i32 0
  %3102 = load %union.rec*, %union.rec** %3101, align 8
  %3103 = bitcast %union.rec* %3102 to %struct.word_type*
  %3104 = getelementptr inbounds %struct.word_type, %struct.word_type* %3103, i32 0, i32 0
  %3105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3104, i32 0, i64 1
  %3106 = getelementptr inbounds %struct.LIST, %struct.LIST* %3105, i32 0, i32 1
  store %union.rec* %3096, %union.rec** %3106, align 8
  %3107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3108 = load %union.rec*, %union.rec** @zz_res, align 8
  %3109 = bitcast %union.rec* %3108 to %struct.word_type*
  %3110 = getelementptr inbounds %struct.word_type, %struct.word_type* %3109, i32 0, i32 0
  %3111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3110, i32 0, i64 1
  %3112 = getelementptr inbounds %struct.LIST, %struct.LIST* %3111, i32 0, i32 0
  store %union.rec* %3107, %union.rec** %3112, align 8
  %3113 = load %union.rec*, %union.rec** @zz_res, align 8
  %3114 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3115 = bitcast %union.rec* %3114 to %struct.word_type*
  %3116 = getelementptr inbounds %struct.word_type, %struct.word_type* %3115, i32 0, i32 0
  %3117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3116, i32 0, i64 1
  %3118 = getelementptr inbounds %struct.LIST, %struct.LIST* %3117, i32 0, i32 1
  store %union.rec* %3113, %union.rec** %3118, align 8
  br label %3119

; <label>:3119                                    ; preds = %3078, %3076
  %3120 = phi %union.rec* [ %3077, %3076 ], [ %3113, %3078 ]
  br label %3121

; <label>:3121                                    ; preds = %3119, %3071
  %3122 = phi %union.rec* [ %3072, %3071 ], [ %3120, %3119 ]
  %3123 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %3124 = load %struct.tm*, %struct.tm** %now, align 8
  %3125 = getelementptr inbounds %struct.tm, %struct.tm* %3124, i32 0, i32 5
  %3126 = load i32, i32* %3125, align 4
  %3127 = add nsw i32 %3126, 1900
  %3128 = sdiv i32 %3127, 100
  %3129 = call i32 (i8*, i8*, ...) @sprintf(i8* %3123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3128) #3
  %3130 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %3131 = zext i8 %3130 to i32
  store i32 %3131, i32* @zz_size, align 4
  %3132 = sext i32 %3131 to i64
  %3133 = icmp uge i64 %3132, 265
  br i1 %3133, label %3134, label %3137

; <label>:3134                                    ; preds = %3121
  %3135 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3136 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3135)
  br label %3162

; <label>:3137                                    ; preds = %3121
  %3138 = load i32, i32* @zz_size, align 4
  %3139 = sext i32 %3138 to i64
  %3140 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3139
  %3141 = load %union.rec*, %union.rec** %3140, align 8
  %3142 = icmp eq %union.rec* %3141, null
  br i1 %3142, label %3143, label %3147

; <label>:3143                                    ; preds = %3137
  %3144 = load i32, i32* @zz_size, align 4
  %3145 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3146 = call %union.rec* @GetMemory(i32 %3144, %struct.FILE_POS* %3145)
  store %union.rec* %3146, %union.rec** @zz_hold, align 8
  br label %3161

; <label>:3147                                    ; preds = %3137
  %3148 = load i32, i32* @zz_size, align 4
  %3149 = sext i32 %3148 to i64
  %3150 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3149
  %3151 = load %union.rec*, %union.rec** %3150, align 8
  store %union.rec* %3151, %union.rec** @zz_hold, align 8
  store %union.rec* %3151, %union.rec** @zz_hold, align 8
  %3152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3153 = bitcast %union.rec* %3152 to %struct.word_type*
  %3154 = getelementptr inbounds %struct.word_type, %struct.word_type* %3153, i32 0, i32 0
  %3155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3154, i32 0, i64 0
  %3156 = getelementptr inbounds %struct.LIST, %struct.LIST* %3155, i32 0, i32 0
  %3157 = load %union.rec*, %union.rec** %3156, align 8
  %3158 = load i32, i32* @zz_size, align 4
  %3159 = sext i32 %3158 to i64
  %3160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3159
  store %union.rec* %3157, %union.rec** %3160, align 8
  br label %3161

; <label>:3161                                    ; preds = %3147, %3143
  br label %3162

; <label>:3162                                    ; preds = %3161, %3134
  %3163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3164 = bitcast %union.rec* %3163 to %struct.word_type*
  %3165 = getelementptr inbounds %struct.word_type, %struct.word_type* %3164, i32 0, i32 1
  %3166 = bitcast %union.FIRST_UNION* %3165 to %struct.anon*
  %3167 = getelementptr inbounds %struct.anon, %struct.anon* %3166, i32 0, i32 0
  store i8 10, i8* %3167, align 1
  %3168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3170 = bitcast %union.rec* %3169 to %struct.word_type*
  %3171 = getelementptr inbounds %struct.word_type, %struct.word_type* %3170, i32 0, i32 0
  %3172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3171, i32 0, i64 1
  %3173 = getelementptr inbounds %struct.LIST, %struct.LIST* %3172, i32 0, i32 1
  store %union.rec* %3168, %union.rec** %3173, align 8
  %3174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3175 = bitcast %union.rec* %3174 to %struct.word_type*
  %3176 = getelementptr inbounds %struct.word_type, %struct.word_type* %3175, i32 0, i32 0
  %3177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3176, i32 0, i64 1
  %3178 = getelementptr inbounds %struct.LIST, %struct.LIST* %3177, i32 0, i32 0
  store %union.rec* %3168, %union.rec** %3178, align 8
  %3179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3180 = bitcast %union.rec* %3179 to %struct.word_type*
  %3181 = getelementptr inbounds %struct.word_type, %struct.word_type* %3180, i32 0, i32 0
  %3182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3181, i32 0, i64 0
  %3183 = getelementptr inbounds %struct.LIST, %struct.LIST* %3182, i32 0, i32 1
  store %union.rec* %3168, %union.rec** %3183, align 8
  %3184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3185 = bitcast %union.rec* %3184 to %struct.word_type*
  %3186 = getelementptr inbounds %struct.word_type, %struct.word_type* %3185, i32 0, i32 0
  %3187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3186, i32 0, i64 0
  %3188 = getelementptr inbounds %struct.LIST, %struct.LIST* %3187, i32 0, i32 0
  store %union.rec* %3168, %union.rec** %3188, align 8
  store %union.rec* %3168, %union.rec** %par, align 8
  %3189 = load %union.rec*, %union.rec** %century, align 8
  %3190 = load %union.rec*, %union.rec** %par, align 8
  %3191 = bitcast %union.rec* %3190 to %struct.closure_type*
  %3192 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3191, i32 0, i32 5
  store %union.rec* %3189, %union.rec** %3192, align 8
  %3193 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3194 = zext i8 %3193 to i32
  store i32 %3194, i32* @zz_size, align 4
  %3195 = sext i32 %3194 to i64
  %3196 = icmp uge i64 %3195, 265
  br i1 %3196, label %3197, label %3200

; <label>:3197                                    ; preds = %3162
  %3198 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3199 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3198)
  br label %3225

; <label>:3200                                    ; preds = %3162
  %3201 = load i32, i32* @zz_size, align 4
  %3202 = sext i32 %3201 to i64
  %3203 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3202
  %3204 = load %union.rec*, %union.rec** %3203, align 8
  %3205 = icmp eq %union.rec* %3204, null
  br i1 %3205, label %3206, label %3210

; <label>:3206                                    ; preds = %3200
  %3207 = load i32, i32* @zz_size, align 4
  %3208 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3209 = call %union.rec* @GetMemory(i32 %3207, %struct.FILE_POS* %3208)
  store %union.rec* %3209, %union.rec** @zz_hold, align 8
  br label %3224

; <label>:3210                                    ; preds = %3200
  %3211 = load i32, i32* @zz_size, align 4
  %3212 = sext i32 %3211 to i64
  %3213 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3212
  %3214 = load %union.rec*, %union.rec** %3213, align 8
  store %union.rec* %3214, %union.rec** @zz_hold, align 8
  store %union.rec* %3214, %union.rec** @zz_hold, align 8
  %3215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3216 = bitcast %union.rec* %3215 to %struct.word_type*
  %3217 = getelementptr inbounds %struct.word_type, %struct.word_type* %3216, i32 0, i32 0
  %3218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3217, i32 0, i64 0
  %3219 = getelementptr inbounds %struct.LIST, %struct.LIST* %3218, i32 0, i32 0
  %3220 = load %union.rec*, %union.rec** %3219, align 8
  %3221 = load i32, i32* @zz_size, align 4
  %3222 = sext i32 %3221 to i64
  %3223 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3222
  store %union.rec* %3220, %union.rec** %3223, align 8
  br label %3224

; <label>:3224                                    ; preds = %3210, %3206
  br label %3225

; <label>:3225                                    ; preds = %3224, %3197
  %3226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3227 = bitcast %union.rec* %3226 to %struct.word_type*
  %3228 = getelementptr inbounds %struct.word_type, %struct.word_type* %3227, i32 0, i32 1
  %3229 = bitcast %union.FIRST_UNION* %3228 to %struct.anon*
  %3230 = getelementptr inbounds %struct.anon, %struct.anon* %3229, i32 0, i32 0
  store i8 0, i8* %3230, align 1
  %3231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3233 = bitcast %union.rec* %3232 to %struct.word_type*
  %3234 = getelementptr inbounds %struct.word_type, %struct.word_type* %3233, i32 0, i32 0
  %3235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3234, i32 0, i64 1
  %3236 = getelementptr inbounds %struct.LIST, %struct.LIST* %3235, i32 0, i32 1
  store %union.rec* %3231, %union.rec** %3236, align 8
  %3237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3238 = bitcast %union.rec* %3237 to %struct.word_type*
  %3239 = getelementptr inbounds %struct.word_type, %struct.word_type* %3238, i32 0, i32 0
  %3240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3239, i32 0, i64 1
  %3241 = getelementptr inbounds %struct.LIST, %struct.LIST* %3240, i32 0, i32 0
  store %union.rec* %3231, %union.rec** %3241, align 8
  %3242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3243 = bitcast %union.rec* %3242 to %struct.word_type*
  %3244 = getelementptr inbounds %struct.word_type, %struct.word_type* %3243, i32 0, i32 0
  %3245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3244, i32 0, i64 0
  %3246 = getelementptr inbounds %struct.LIST, %struct.LIST* %3245, i32 0, i32 1
  store %union.rec* %3231, %union.rec** %3246, align 8
  %3247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3248 = bitcast %union.rec* %3247 to %struct.word_type*
  %3249 = getelementptr inbounds %struct.word_type, %struct.word_type* %3248, i32 0, i32 0
  %3250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3249, i32 0, i64 0
  %3251 = getelementptr inbounds %struct.LIST, %struct.LIST* %3250, i32 0, i32 0
  store %union.rec* %3231, %union.rec** %3251, align 8
  store %union.rec* %3231, %union.rec** @xx_link, align 8
  %3252 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3252, %union.rec** @zz_res, align 8
  %3253 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %3253, %union.rec** @zz_hold, align 8
  %3254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3255 = icmp eq %union.rec* %3254, null
  br i1 %3255, label %3256, label %3258

; <label>:3256                                    ; preds = %3225
  %3257 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3306

; <label>:3258                                    ; preds = %3225
  %3259 = load %union.rec*, %union.rec** @zz_res, align 8
  %3260 = icmp eq %union.rec* %3259, null
  br i1 %3260, label %3261, label %3263

; <label>:3261                                    ; preds = %3258
  %3262 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3304

; <label>:3263                                    ; preds = %3258
  %3264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3265 = bitcast %union.rec* %3264 to %struct.word_type*
  %3266 = getelementptr inbounds %struct.word_type, %struct.word_type* %3265, i32 0, i32 0
  %3267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3266, i32 0, i64 0
  %3268 = getelementptr inbounds %struct.LIST, %struct.LIST* %3267, i32 0, i32 0
  %3269 = load %union.rec*, %union.rec** %3268, align 8
  store %union.rec* %3269, %union.rec** @zz_tmp, align 8
  %3270 = load %union.rec*, %union.rec** @zz_res, align 8
  %3271 = bitcast %union.rec* %3270 to %struct.word_type*
  %3272 = getelementptr inbounds %struct.word_type, %struct.word_type* %3271, i32 0, i32 0
  %3273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3272, i32 0, i64 0
  %3274 = getelementptr inbounds %struct.LIST, %struct.LIST* %3273, i32 0, i32 0
  %3275 = load %union.rec*, %union.rec** %3274, align 8
  %3276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3277 = bitcast %union.rec* %3276 to %struct.word_type*
  %3278 = getelementptr inbounds %struct.word_type, %struct.word_type* %3277, i32 0, i32 0
  %3279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3278, i32 0, i64 0
  %3280 = getelementptr inbounds %struct.LIST, %struct.LIST* %3279, i32 0, i32 0
  store %union.rec* %3275, %union.rec** %3280, align 8
  %3281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3282 = load %union.rec*, %union.rec** @zz_res, align 8
  %3283 = bitcast %union.rec* %3282 to %struct.word_type*
  %3284 = getelementptr inbounds %struct.word_type, %struct.word_type* %3283, i32 0, i32 0
  %3285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3284, i32 0, i64 0
  %3286 = getelementptr inbounds %struct.LIST, %struct.LIST* %3285, i32 0, i32 0
  %3287 = load %union.rec*, %union.rec** %3286, align 8
  %3288 = bitcast %union.rec* %3287 to %struct.word_type*
  %3289 = getelementptr inbounds %struct.word_type, %struct.word_type* %3288, i32 0, i32 0
  %3290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3289, i32 0, i64 0
  %3291 = getelementptr inbounds %struct.LIST, %struct.LIST* %3290, i32 0, i32 1
  store %union.rec* %3281, %union.rec** %3291, align 8
  %3292 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3293 = load %union.rec*, %union.rec** @zz_res, align 8
  %3294 = bitcast %union.rec* %3293 to %struct.word_type*
  %3295 = getelementptr inbounds %struct.word_type, %struct.word_type* %3294, i32 0, i32 0
  %3296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3295, i32 0, i64 0
  %3297 = getelementptr inbounds %struct.LIST, %struct.LIST* %3296, i32 0, i32 0
  store %union.rec* %3292, %union.rec** %3297, align 8
  %3298 = load %union.rec*, %union.rec** @zz_res, align 8
  %3299 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3300 = bitcast %union.rec* %3299 to %struct.word_type*
  %3301 = getelementptr inbounds %struct.word_type, %struct.word_type* %3300, i32 0, i32 0
  %3302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3301, i32 0, i64 0
  %3303 = getelementptr inbounds %struct.LIST, %struct.LIST* %3302, i32 0, i32 1
  store %union.rec* %3298, %union.rec** %3303, align 8
  br label %3304

; <label>:3304                                    ; preds = %3263, %3261
  %3305 = phi %union.rec* [ %3262, %3261 ], [ %3298, %3263 ]
  br label %3306

; <label>:3306                                    ; preds = %3304, %3256
  %3307 = phi %union.rec* [ %3257, %3256 ], [ %3305, %3304 ]
  %3308 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3308, %union.rec** @zz_res, align 8
  %3309 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %3309, %union.rec** @zz_hold, align 8
  %3310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3311 = icmp eq %union.rec* %3310, null
  br i1 %3311, label %3312, label %3314

; <label>:3312                                    ; preds = %3306
  %3313 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3362

; <label>:3314                                    ; preds = %3306
  %3315 = load %union.rec*, %union.rec** @zz_res, align 8
  %3316 = icmp eq %union.rec* %3315, null
  br i1 %3316, label %3317, label %3319

; <label>:3317                                    ; preds = %3314
  %3318 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3360

; <label>:3319                                    ; preds = %3314
  %3320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3321 = bitcast %union.rec* %3320 to %struct.word_type*
  %3322 = getelementptr inbounds %struct.word_type, %struct.word_type* %3321, i32 0, i32 0
  %3323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3322, i32 0, i64 1
  %3324 = getelementptr inbounds %struct.LIST, %struct.LIST* %3323, i32 0, i32 0
  %3325 = load %union.rec*, %union.rec** %3324, align 8
  store %union.rec* %3325, %union.rec** @zz_tmp, align 8
  %3326 = load %union.rec*, %union.rec** @zz_res, align 8
  %3327 = bitcast %union.rec* %3326 to %struct.word_type*
  %3328 = getelementptr inbounds %struct.word_type, %struct.word_type* %3327, i32 0, i32 0
  %3329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3328, i32 0, i64 1
  %3330 = getelementptr inbounds %struct.LIST, %struct.LIST* %3329, i32 0, i32 0
  %3331 = load %union.rec*, %union.rec** %3330, align 8
  %3332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3333 = bitcast %union.rec* %3332 to %struct.word_type*
  %3334 = getelementptr inbounds %struct.word_type, %struct.word_type* %3333, i32 0, i32 0
  %3335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3334, i32 0, i64 1
  %3336 = getelementptr inbounds %struct.LIST, %struct.LIST* %3335, i32 0, i32 0
  store %union.rec* %3331, %union.rec** %3336, align 8
  %3337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3338 = load %union.rec*, %union.rec** @zz_res, align 8
  %3339 = bitcast %union.rec* %3338 to %struct.word_type*
  %3340 = getelementptr inbounds %struct.word_type, %struct.word_type* %3339, i32 0, i32 0
  %3341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3340, i32 0, i64 1
  %3342 = getelementptr inbounds %struct.LIST, %struct.LIST* %3341, i32 0, i32 0
  %3343 = load %union.rec*, %union.rec** %3342, align 8
  %3344 = bitcast %union.rec* %3343 to %struct.word_type*
  %3345 = getelementptr inbounds %struct.word_type, %struct.word_type* %3344, i32 0, i32 0
  %3346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3345, i32 0, i64 1
  %3347 = getelementptr inbounds %struct.LIST, %struct.LIST* %3346, i32 0, i32 1
  store %union.rec* %3337, %union.rec** %3347, align 8
  %3348 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3349 = load %union.rec*, %union.rec** @zz_res, align 8
  %3350 = bitcast %union.rec* %3349 to %struct.word_type*
  %3351 = getelementptr inbounds %struct.word_type, %struct.word_type* %3350, i32 0, i32 0
  %3352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3351, i32 0, i64 1
  %3353 = getelementptr inbounds %struct.LIST, %struct.LIST* %3352, i32 0, i32 0
  store %union.rec* %3348, %union.rec** %3353, align 8
  %3354 = load %union.rec*, %union.rec** @zz_res, align 8
  %3355 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3356 = bitcast %union.rec* %3355 to %struct.word_type*
  %3357 = getelementptr inbounds %struct.word_type, %struct.word_type* %3356, i32 0, i32 0
  %3358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3357, i32 0, i64 1
  %3359 = getelementptr inbounds %struct.LIST, %struct.LIST* %3358, i32 0, i32 1
  store %union.rec* %3354, %union.rec** %3359, align 8
  br label %3360

; <label>:3360                                    ; preds = %3319, %3317
  %3361 = phi %union.rec* [ %3318, %3317 ], [ %3354, %3319 ]
  br label %3362

; <label>:3362                                    ; preds = %3360, %3312
  %3363 = phi %union.rec* [ %3313, %3312 ], [ %3361, %3360 ]
  %3364 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %3365 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3366 = call %union.rec* @MakeWord(i32 11, i8* %3364, %struct.FILE_POS* %3365)
  store %union.rec* %3366, %union.rec** %tmp, align 8
  %3367 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3368 = zext i8 %3367 to i32
  store i32 %3368, i32* @zz_size, align 4
  %3369 = sext i32 %3368 to i64
  %3370 = icmp uge i64 %3369, 265
  br i1 %3370, label %3371, label %3374

; <label>:3371                                    ; preds = %3362
  %3372 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3373 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3372)
  br label %3399

; <label>:3374                                    ; preds = %3362
  %3375 = load i32, i32* @zz_size, align 4
  %3376 = sext i32 %3375 to i64
  %3377 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3376
  %3378 = load %union.rec*, %union.rec** %3377, align 8
  %3379 = icmp eq %union.rec* %3378, null
  br i1 %3379, label %3380, label %3384

; <label>:3380                                    ; preds = %3374
  %3381 = load i32, i32* @zz_size, align 4
  %3382 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3383 = call %union.rec* @GetMemory(i32 %3381, %struct.FILE_POS* %3382)
  store %union.rec* %3383, %union.rec** @zz_hold, align 8
  br label %3398

; <label>:3384                                    ; preds = %3374
  %3385 = load i32, i32* @zz_size, align 4
  %3386 = sext i32 %3385 to i64
  %3387 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3386
  %3388 = load %union.rec*, %union.rec** %3387, align 8
  store %union.rec* %3388, %union.rec** @zz_hold, align 8
  store %union.rec* %3388, %union.rec** @zz_hold, align 8
  %3389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3390 = bitcast %union.rec* %3389 to %struct.word_type*
  %3391 = getelementptr inbounds %struct.word_type, %struct.word_type* %3390, i32 0, i32 0
  %3392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3391, i32 0, i64 0
  %3393 = getelementptr inbounds %struct.LIST, %struct.LIST* %3392, i32 0, i32 0
  %3394 = load %union.rec*, %union.rec** %3393, align 8
  %3395 = load i32, i32* @zz_size, align 4
  %3396 = sext i32 %3395 to i64
  %3397 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3396
  store %union.rec* %3394, %union.rec** %3397, align 8
  br label %3398

; <label>:3398                                    ; preds = %3384, %3380
  br label %3399

; <label>:3399                                    ; preds = %3398, %3371
  %3400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3401 = bitcast %union.rec* %3400 to %struct.word_type*
  %3402 = getelementptr inbounds %struct.word_type, %struct.word_type* %3401, i32 0, i32 1
  %3403 = bitcast %union.FIRST_UNION* %3402 to %struct.anon*
  %3404 = getelementptr inbounds %struct.anon, %struct.anon* %3403, i32 0, i32 0
  store i8 0, i8* %3404, align 1
  %3405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3407 = bitcast %union.rec* %3406 to %struct.word_type*
  %3408 = getelementptr inbounds %struct.word_type, %struct.word_type* %3407, i32 0, i32 0
  %3409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3408, i32 0, i64 1
  %3410 = getelementptr inbounds %struct.LIST, %struct.LIST* %3409, i32 0, i32 1
  store %union.rec* %3405, %union.rec** %3410, align 8
  %3411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3412 = bitcast %union.rec* %3411 to %struct.word_type*
  %3413 = getelementptr inbounds %struct.word_type, %struct.word_type* %3412, i32 0, i32 0
  %3414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3413, i32 0, i64 1
  %3415 = getelementptr inbounds %struct.LIST, %struct.LIST* %3414, i32 0, i32 0
  store %union.rec* %3405, %union.rec** %3415, align 8
  %3416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3417 = bitcast %union.rec* %3416 to %struct.word_type*
  %3418 = getelementptr inbounds %struct.word_type, %struct.word_type* %3417, i32 0, i32 0
  %3419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3418, i32 0, i64 0
  %3420 = getelementptr inbounds %struct.LIST, %struct.LIST* %3419, i32 0, i32 1
  store %union.rec* %3405, %union.rec** %3420, align 8
  %3421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3422 = bitcast %union.rec* %3421 to %struct.word_type*
  %3423 = getelementptr inbounds %struct.word_type, %struct.word_type* %3422, i32 0, i32 0
  %3424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3423, i32 0, i64 0
  %3425 = getelementptr inbounds %struct.LIST, %struct.LIST* %3424, i32 0, i32 0
  store %union.rec* %3405, %union.rec** %3425, align 8
  store %union.rec* %3405, %union.rec** @xx_link, align 8
  %3426 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3426, %union.rec** @zz_res, align 8
  %3427 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %3427, %union.rec** @zz_hold, align 8
  %3428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3429 = icmp eq %union.rec* %3428, null
  br i1 %3429, label %3430, label %3432

; <label>:3430                                    ; preds = %3399
  %3431 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3480

; <label>:3432                                    ; preds = %3399
  %3433 = load %union.rec*, %union.rec** @zz_res, align 8
  %3434 = icmp eq %union.rec* %3433, null
  br i1 %3434, label %3435, label %3437

; <label>:3435                                    ; preds = %3432
  %3436 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3478

; <label>:3437                                    ; preds = %3432
  %3438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3439 = bitcast %union.rec* %3438 to %struct.word_type*
  %3440 = getelementptr inbounds %struct.word_type, %struct.word_type* %3439, i32 0, i32 0
  %3441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3440, i32 0, i64 0
  %3442 = getelementptr inbounds %struct.LIST, %struct.LIST* %3441, i32 0, i32 0
  %3443 = load %union.rec*, %union.rec** %3442, align 8
  store %union.rec* %3443, %union.rec** @zz_tmp, align 8
  %3444 = load %union.rec*, %union.rec** @zz_res, align 8
  %3445 = bitcast %union.rec* %3444 to %struct.word_type*
  %3446 = getelementptr inbounds %struct.word_type, %struct.word_type* %3445, i32 0, i32 0
  %3447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3446, i32 0, i64 0
  %3448 = getelementptr inbounds %struct.LIST, %struct.LIST* %3447, i32 0, i32 0
  %3449 = load %union.rec*, %union.rec** %3448, align 8
  %3450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3451 = bitcast %union.rec* %3450 to %struct.word_type*
  %3452 = getelementptr inbounds %struct.word_type, %struct.word_type* %3451, i32 0, i32 0
  %3453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3452, i32 0, i64 0
  %3454 = getelementptr inbounds %struct.LIST, %struct.LIST* %3453, i32 0, i32 0
  store %union.rec* %3449, %union.rec** %3454, align 8
  %3455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3456 = load %union.rec*, %union.rec** @zz_res, align 8
  %3457 = bitcast %union.rec* %3456 to %struct.word_type*
  %3458 = getelementptr inbounds %struct.word_type, %struct.word_type* %3457, i32 0, i32 0
  %3459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3458, i32 0, i64 0
  %3460 = getelementptr inbounds %struct.LIST, %struct.LIST* %3459, i32 0, i32 0
  %3461 = load %union.rec*, %union.rec** %3460, align 8
  %3462 = bitcast %union.rec* %3461 to %struct.word_type*
  %3463 = getelementptr inbounds %struct.word_type, %struct.word_type* %3462, i32 0, i32 0
  %3464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3463, i32 0, i64 0
  %3465 = getelementptr inbounds %struct.LIST, %struct.LIST* %3464, i32 0, i32 1
  store %union.rec* %3455, %union.rec** %3465, align 8
  %3466 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3467 = load %union.rec*, %union.rec** @zz_res, align 8
  %3468 = bitcast %union.rec* %3467 to %struct.word_type*
  %3469 = getelementptr inbounds %struct.word_type, %struct.word_type* %3468, i32 0, i32 0
  %3470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3469, i32 0, i64 0
  %3471 = getelementptr inbounds %struct.LIST, %struct.LIST* %3470, i32 0, i32 0
  store %union.rec* %3466, %union.rec** %3471, align 8
  %3472 = load %union.rec*, %union.rec** @zz_res, align 8
  %3473 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3474 = bitcast %union.rec* %3473 to %struct.word_type*
  %3475 = getelementptr inbounds %struct.word_type, %struct.word_type* %3474, i32 0, i32 0
  %3476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3475, i32 0, i64 0
  %3477 = getelementptr inbounds %struct.LIST, %struct.LIST* %3476, i32 0, i32 1
  store %union.rec* %3472, %union.rec** %3477, align 8
  br label %3478

; <label>:3478                                    ; preds = %3437, %3435
  %3479 = phi %union.rec* [ %3436, %3435 ], [ %3472, %3437 ]
  br label %3480

; <label>:3480                                    ; preds = %3478, %3430
  %3481 = phi %union.rec* [ %3431, %3430 ], [ %3479, %3478 ]
  %3482 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3482, %union.rec** @zz_res, align 8
  %3483 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3483, %union.rec** @zz_hold, align 8
  %3484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3485 = icmp eq %union.rec* %3484, null
  br i1 %3485, label %3486, label %3488

; <label>:3486                                    ; preds = %3480
  %3487 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3536

; <label>:3488                                    ; preds = %3480
  %3489 = load %union.rec*, %union.rec** @zz_res, align 8
  %3490 = icmp eq %union.rec* %3489, null
  br i1 %3490, label %3491, label %3493

; <label>:3491                                    ; preds = %3488
  %3492 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3534

; <label>:3493                                    ; preds = %3488
  %3494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3495 = bitcast %union.rec* %3494 to %struct.word_type*
  %3496 = getelementptr inbounds %struct.word_type, %struct.word_type* %3495, i32 0, i32 0
  %3497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3496, i32 0, i64 1
  %3498 = getelementptr inbounds %struct.LIST, %struct.LIST* %3497, i32 0, i32 0
  %3499 = load %union.rec*, %union.rec** %3498, align 8
  store %union.rec* %3499, %union.rec** @zz_tmp, align 8
  %3500 = load %union.rec*, %union.rec** @zz_res, align 8
  %3501 = bitcast %union.rec* %3500 to %struct.word_type*
  %3502 = getelementptr inbounds %struct.word_type, %struct.word_type* %3501, i32 0, i32 0
  %3503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3502, i32 0, i64 1
  %3504 = getelementptr inbounds %struct.LIST, %struct.LIST* %3503, i32 0, i32 0
  %3505 = load %union.rec*, %union.rec** %3504, align 8
  %3506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3507 = bitcast %union.rec* %3506 to %struct.word_type*
  %3508 = getelementptr inbounds %struct.word_type, %struct.word_type* %3507, i32 0, i32 0
  %3509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3508, i32 0, i64 1
  %3510 = getelementptr inbounds %struct.LIST, %struct.LIST* %3509, i32 0, i32 0
  store %union.rec* %3505, %union.rec** %3510, align 8
  %3511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3512 = load %union.rec*, %union.rec** @zz_res, align 8
  %3513 = bitcast %union.rec* %3512 to %struct.word_type*
  %3514 = getelementptr inbounds %struct.word_type, %struct.word_type* %3513, i32 0, i32 0
  %3515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3514, i32 0, i64 1
  %3516 = getelementptr inbounds %struct.LIST, %struct.LIST* %3515, i32 0, i32 0
  %3517 = load %union.rec*, %union.rec** %3516, align 8
  %3518 = bitcast %union.rec* %3517 to %struct.word_type*
  %3519 = getelementptr inbounds %struct.word_type, %struct.word_type* %3518, i32 0, i32 0
  %3520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3519, i32 0, i64 1
  %3521 = getelementptr inbounds %struct.LIST, %struct.LIST* %3520, i32 0, i32 1
  store %union.rec* %3511, %union.rec** %3521, align 8
  %3522 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3523 = load %union.rec*, %union.rec** @zz_res, align 8
  %3524 = bitcast %union.rec* %3523 to %struct.word_type*
  %3525 = getelementptr inbounds %struct.word_type, %struct.word_type* %3524, i32 0, i32 0
  %3526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3525, i32 0, i64 1
  %3527 = getelementptr inbounds %struct.LIST, %struct.LIST* %3526, i32 0, i32 0
  store %union.rec* %3522, %union.rec** %3527, align 8
  %3528 = load %union.rec*, %union.rec** @zz_res, align 8
  %3529 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3530 = bitcast %union.rec* %3529 to %struct.word_type*
  %3531 = getelementptr inbounds %struct.word_type, %struct.word_type* %3530, i32 0, i32 0
  %3532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3531, i32 0, i64 1
  %3533 = getelementptr inbounds %struct.LIST, %struct.LIST* %3532, i32 0, i32 1
  store %union.rec* %3528, %union.rec** %3533, align 8
  br label %3534

; <label>:3534                                    ; preds = %3493, %3491
  %3535 = phi %union.rec* [ %3492, %3491 ], [ %3528, %3493 ]
  br label %3536

; <label>:3536                                    ; preds = %3534, %3486
  %3537 = phi %union.rec* [ %3487, %3486 ], [ %3535, %3534 ]
  %3538 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %3539 = load %struct.tm*, %struct.tm** %now, align 8
  %3540 = getelementptr inbounds %struct.tm, %struct.tm* %3539, i32 0, i32 6
  %3541 = load i32, i32* %3540, align 4
  %3542 = add nsw i32 %3541, 1
  %3543 = call i32 (i8*, i8*, ...) @sprintf(i8* %3538, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3542) #3
  %3544 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %3545 = zext i8 %3544 to i32
  store i32 %3545, i32* @zz_size, align 4
  %3546 = sext i32 %3545 to i64
  %3547 = icmp uge i64 %3546, 265
  br i1 %3547, label %3548, label %3551

; <label>:3548                                    ; preds = %3536
  %3549 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3550 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3549)
  br label %3576

; <label>:3551                                    ; preds = %3536
  %3552 = load i32, i32* @zz_size, align 4
  %3553 = sext i32 %3552 to i64
  %3554 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3553
  %3555 = load %union.rec*, %union.rec** %3554, align 8
  %3556 = icmp eq %union.rec* %3555, null
  br i1 %3556, label %3557, label %3561

; <label>:3557                                    ; preds = %3551
  %3558 = load i32, i32* @zz_size, align 4
  %3559 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3560 = call %union.rec* @GetMemory(i32 %3558, %struct.FILE_POS* %3559)
  store %union.rec* %3560, %union.rec** @zz_hold, align 8
  br label %3575

; <label>:3561                                    ; preds = %3551
  %3562 = load i32, i32* @zz_size, align 4
  %3563 = sext i32 %3562 to i64
  %3564 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3563
  %3565 = load %union.rec*, %union.rec** %3564, align 8
  store %union.rec* %3565, %union.rec** @zz_hold, align 8
  store %union.rec* %3565, %union.rec** @zz_hold, align 8
  %3566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3567 = bitcast %union.rec* %3566 to %struct.word_type*
  %3568 = getelementptr inbounds %struct.word_type, %struct.word_type* %3567, i32 0, i32 0
  %3569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3568, i32 0, i64 0
  %3570 = getelementptr inbounds %struct.LIST, %struct.LIST* %3569, i32 0, i32 0
  %3571 = load %union.rec*, %union.rec** %3570, align 8
  %3572 = load i32, i32* @zz_size, align 4
  %3573 = sext i32 %3572 to i64
  %3574 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3573
  store %union.rec* %3571, %union.rec** %3574, align 8
  br label %3575

; <label>:3575                                    ; preds = %3561, %3557
  br label %3576

; <label>:3576                                    ; preds = %3575, %3548
  %3577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3578 = bitcast %union.rec* %3577 to %struct.word_type*
  %3579 = getelementptr inbounds %struct.word_type, %struct.word_type* %3578, i32 0, i32 1
  %3580 = bitcast %union.FIRST_UNION* %3579 to %struct.anon*
  %3581 = getelementptr inbounds %struct.anon, %struct.anon* %3580, i32 0, i32 0
  store i8 10, i8* %3581, align 1
  %3582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3584 = bitcast %union.rec* %3583 to %struct.word_type*
  %3585 = getelementptr inbounds %struct.word_type, %struct.word_type* %3584, i32 0, i32 0
  %3586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3585, i32 0, i64 1
  %3587 = getelementptr inbounds %struct.LIST, %struct.LIST* %3586, i32 0, i32 1
  store %union.rec* %3582, %union.rec** %3587, align 8
  %3588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3589 = bitcast %union.rec* %3588 to %struct.word_type*
  %3590 = getelementptr inbounds %struct.word_type, %struct.word_type* %3589, i32 0, i32 0
  %3591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3590, i32 0, i64 1
  %3592 = getelementptr inbounds %struct.LIST, %struct.LIST* %3591, i32 0, i32 0
  store %union.rec* %3582, %union.rec** %3592, align 8
  %3593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3594 = bitcast %union.rec* %3593 to %struct.word_type*
  %3595 = getelementptr inbounds %struct.word_type, %struct.word_type* %3594, i32 0, i32 0
  %3596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3595, i32 0, i64 0
  %3597 = getelementptr inbounds %struct.LIST, %struct.LIST* %3596, i32 0, i32 1
  store %union.rec* %3582, %union.rec** %3597, align 8
  %3598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3599 = bitcast %union.rec* %3598 to %struct.word_type*
  %3600 = getelementptr inbounds %struct.word_type, %struct.word_type* %3599, i32 0, i32 0
  %3601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3600, i32 0, i64 0
  %3602 = getelementptr inbounds %struct.LIST, %struct.LIST* %3601, i32 0, i32 0
  store %union.rec* %3582, %union.rec** %3602, align 8
  store %union.rec* %3582, %union.rec** %par, align 8
  %3603 = load %union.rec*, %union.rec** %weekday, align 8
  %3604 = load %union.rec*, %union.rec** %par, align 8
  %3605 = bitcast %union.rec* %3604 to %struct.closure_type*
  %3606 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3605, i32 0, i32 5
  store %union.rec* %3603, %union.rec** %3606, align 8
  %3607 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3608 = zext i8 %3607 to i32
  store i32 %3608, i32* @zz_size, align 4
  %3609 = sext i32 %3608 to i64
  %3610 = icmp uge i64 %3609, 265
  br i1 %3610, label %3611, label %3614

; <label>:3611                                    ; preds = %3576
  %3612 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3613 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3612)
  br label %3639

; <label>:3614                                    ; preds = %3576
  %3615 = load i32, i32* @zz_size, align 4
  %3616 = sext i32 %3615 to i64
  %3617 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3616
  %3618 = load %union.rec*, %union.rec** %3617, align 8
  %3619 = icmp eq %union.rec* %3618, null
  br i1 %3619, label %3620, label %3624

; <label>:3620                                    ; preds = %3614
  %3621 = load i32, i32* @zz_size, align 4
  %3622 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3623 = call %union.rec* @GetMemory(i32 %3621, %struct.FILE_POS* %3622)
  store %union.rec* %3623, %union.rec** @zz_hold, align 8
  br label %3638

; <label>:3624                                    ; preds = %3614
  %3625 = load i32, i32* @zz_size, align 4
  %3626 = sext i32 %3625 to i64
  %3627 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3626
  %3628 = load %union.rec*, %union.rec** %3627, align 8
  store %union.rec* %3628, %union.rec** @zz_hold, align 8
  store %union.rec* %3628, %union.rec** @zz_hold, align 8
  %3629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3630 = bitcast %union.rec* %3629 to %struct.word_type*
  %3631 = getelementptr inbounds %struct.word_type, %struct.word_type* %3630, i32 0, i32 0
  %3632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3631, i32 0, i64 0
  %3633 = getelementptr inbounds %struct.LIST, %struct.LIST* %3632, i32 0, i32 0
  %3634 = load %union.rec*, %union.rec** %3633, align 8
  %3635 = load i32, i32* @zz_size, align 4
  %3636 = sext i32 %3635 to i64
  %3637 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3636
  store %union.rec* %3634, %union.rec** %3637, align 8
  br label %3638

; <label>:3638                                    ; preds = %3624, %3620
  br label %3639

; <label>:3639                                    ; preds = %3638, %3611
  %3640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3641 = bitcast %union.rec* %3640 to %struct.word_type*
  %3642 = getelementptr inbounds %struct.word_type, %struct.word_type* %3641, i32 0, i32 1
  %3643 = bitcast %union.FIRST_UNION* %3642 to %struct.anon*
  %3644 = getelementptr inbounds %struct.anon, %struct.anon* %3643, i32 0, i32 0
  store i8 0, i8* %3644, align 1
  %3645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3647 = bitcast %union.rec* %3646 to %struct.word_type*
  %3648 = getelementptr inbounds %struct.word_type, %struct.word_type* %3647, i32 0, i32 0
  %3649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3648, i32 0, i64 1
  %3650 = getelementptr inbounds %struct.LIST, %struct.LIST* %3649, i32 0, i32 1
  store %union.rec* %3645, %union.rec** %3650, align 8
  %3651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3652 = bitcast %union.rec* %3651 to %struct.word_type*
  %3653 = getelementptr inbounds %struct.word_type, %struct.word_type* %3652, i32 0, i32 0
  %3654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3653, i32 0, i64 1
  %3655 = getelementptr inbounds %struct.LIST, %struct.LIST* %3654, i32 0, i32 0
  store %union.rec* %3645, %union.rec** %3655, align 8
  %3656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3657 = bitcast %union.rec* %3656 to %struct.word_type*
  %3658 = getelementptr inbounds %struct.word_type, %struct.word_type* %3657, i32 0, i32 0
  %3659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3658, i32 0, i64 0
  %3660 = getelementptr inbounds %struct.LIST, %struct.LIST* %3659, i32 0, i32 1
  store %union.rec* %3645, %union.rec** %3660, align 8
  %3661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3662 = bitcast %union.rec* %3661 to %struct.word_type*
  %3663 = getelementptr inbounds %struct.word_type, %struct.word_type* %3662, i32 0, i32 0
  %3664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3663, i32 0, i64 0
  %3665 = getelementptr inbounds %struct.LIST, %struct.LIST* %3664, i32 0, i32 0
  store %union.rec* %3645, %union.rec** %3665, align 8
  store %union.rec* %3645, %union.rec** @xx_link, align 8
  %3666 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3666, %union.rec** @zz_res, align 8
  %3667 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %3667, %union.rec** @zz_hold, align 8
  %3668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3669 = icmp eq %union.rec* %3668, null
  br i1 %3669, label %3670, label %3672

; <label>:3670                                    ; preds = %3639
  %3671 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3720

; <label>:3672                                    ; preds = %3639
  %3673 = load %union.rec*, %union.rec** @zz_res, align 8
  %3674 = icmp eq %union.rec* %3673, null
  br i1 %3674, label %3675, label %3677

; <label>:3675                                    ; preds = %3672
  %3676 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3718

; <label>:3677                                    ; preds = %3672
  %3678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3679 = bitcast %union.rec* %3678 to %struct.word_type*
  %3680 = getelementptr inbounds %struct.word_type, %struct.word_type* %3679, i32 0, i32 0
  %3681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3680, i32 0, i64 0
  %3682 = getelementptr inbounds %struct.LIST, %struct.LIST* %3681, i32 0, i32 0
  %3683 = load %union.rec*, %union.rec** %3682, align 8
  store %union.rec* %3683, %union.rec** @zz_tmp, align 8
  %3684 = load %union.rec*, %union.rec** @zz_res, align 8
  %3685 = bitcast %union.rec* %3684 to %struct.word_type*
  %3686 = getelementptr inbounds %struct.word_type, %struct.word_type* %3685, i32 0, i32 0
  %3687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3686, i32 0, i64 0
  %3688 = getelementptr inbounds %struct.LIST, %struct.LIST* %3687, i32 0, i32 0
  %3689 = load %union.rec*, %union.rec** %3688, align 8
  %3690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3691 = bitcast %union.rec* %3690 to %struct.word_type*
  %3692 = getelementptr inbounds %struct.word_type, %struct.word_type* %3691, i32 0, i32 0
  %3693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3692, i32 0, i64 0
  %3694 = getelementptr inbounds %struct.LIST, %struct.LIST* %3693, i32 0, i32 0
  store %union.rec* %3689, %union.rec** %3694, align 8
  %3695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3696 = load %union.rec*, %union.rec** @zz_res, align 8
  %3697 = bitcast %union.rec* %3696 to %struct.word_type*
  %3698 = getelementptr inbounds %struct.word_type, %struct.word_type* %3697, i32 0, i32 0
  %3699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3698, i32 0, i64 0
  %3700 = getelementptr inbounds %struct.LIST, %struct.LIST* %3699, i32 0, i32 0
  %3701 = load %union.rec*, %union.rec** %3700, align 8
  %3702 = bitcast %union.rec* %3701 to %struct.word_type*
  %3703 = getelementptr inbounds %struct.word_type, %struct.word_type* %3702, i32 0, i32 0
  %3704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3703, i32 0, i64 0
  %3705 = getelementptr inbounds %struct.LIST, %struct.LIST* %3704, i32 0, i32 1
  store %union.rec* %3695, %union.rec** %3705, align 8
  %3706 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3707 = load %union.rec*, %union.rec** @zz_res, align 8
  %3708 = bitcast %union.rec* %3707 to %struct.word_type*
  %3709 = getelementptr inbounds %struct.word_type, %struct.word_type* %3708, i32 0, i32 0
  %3710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3709, i32 0, i64 0
  %3711 = getelementptr inbounds %struct.LIST, %struct.LIST* %3710, i32 0, i32 0
  store %union.rec* %3706, %union.rec** %3711, align 8
  %3712 = load %union.rec*, %union.rec** @zz_res, align 8
  %3713 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3714 = bitcast %union.rec* %3713 to %struct.word_type*
  %3715 = getelementptr inbounds %struct.word_type, %struct.word_type* %3714, i32 0, i32 0
  %3716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3715, i32 0, i64 0
  %3717 = getelementptr inbounds %struct.LIST, %struct.LIST* %3716, i32 0, i32 1
  store %union.rec* %3712, %union.rec** %3717, align 8
  br label %3718

; <label>:3718                                    ; preds = %3677, %3675
  %3719 = phi %union.rec* [ %3676, %3675 ], [ %3712, %3677 ]
  br label %3720

; <label>:3720                                    ; preds = %3718, %3670
  %3721 = phi %union.rec* [ %3671, %3670 ], [ %3719, %3718 ]
  %3722 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3722, %union.rec** @zz_res, align 8
  %3723 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %3723, %union.rec** @zz_hold, align 8
  %3724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3725 = icmp eq %union.rec* %3724, null
  br i1 %3725, label %3726, label %3728

; <label>:3726                                    ; preds = %3720
  %3727 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3776

; <label>:3728                                    ; preds = %3720
  %3729 = load %union.rec*, %union.rec** @zz_res, align 8
  %3730 = icmp eq %union.rec* %3729, null
  br i1 %3730, label %3731, label %3733

; <label>:3731                                    ; preds = %3728
  %3732 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3774

; <label>:3733                                    ; preds = %3728
  %3734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3735 = bitcast %union.rec* %3734 to %struct.word_type*
  %3736 = getelementptr inbounds %struct.word_type, %struct.word_type* %3735, i32 0, i32 0
  %3737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3736, i32 0, i64 1
  %3738 = getelementptr inbounds %struct.LIST, %struct.LIST* %3737, i32 0, i32 0
  %3739 = load %union.rec*, %union.rec** %3738, align 8
  store %union.rec* %3739, %union.rec** @zz_tmp, align 8
  %3740 = load %union.rec*, %union.rec** @zz_res, align 8
  %3741 = bitcast %union.rec* %3740 to %struct.word_type*
  %3742 = getelementptr inbounds %struct.word_type, %struct.word_type* %3741, i32 0, i32 0
  %3743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3742, i32 0, i64 1
  %3744 = getelementptr inbounds %struct.LIST, %struct.LIST* %3743, i32 0, i32 0
  %3745 = load %union.rec*, %union.rec** %3744, align 8
  %3746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3747 = bitcast %union.rec* %3746 to %struct.word_type*
  %3748 = getelementptr inbounds %struct.word_type, %struct.word_type* %3747, i32 0, i32 0
  %3749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3748, i32 0, i64 1
  %3750 = getelementptr inbounds %struct.LIST, %struct.LIST* %3749, i32 0, i32 0
  store %union.rec* %3745, %union.rec** %3750, align 8
  %3751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3752 = load %union.rec*, %union.rec** @zz_res, align 8
  %3753 = bitcast %union.rec* %3752 to %struct.word_type*
  %3754 = getelementptr inbounds %struct.word_type, %struct.word_type* %3753, i32 0, i32 0
  %3755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3754, i32 0, i64 1
  %3756 = getelementptr inbounds %struct.LIST, %struct.LIST* %3755, i32 0, i32 0
  %3757 = load %union.rec*, %union.rec** %3756, align 8
  %3758 = bitcast %union.rec* %3757 to %struct.word_type*
  %3759 = getelementptr inbounds %struct.word_type, %struct.word_type* %3758, i32 0, i32 0
  %3760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3759, i32 0, i64 1
  %3761 = getelementptr inbounds %struct.LIST, %struct.LIST* %3760, i32 0, i32 1
  store %union.rec* %3751, %union.rec** %3761, align 8
  %3762 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3763 = load %union.rec*, %union.rec** @zz_res, align 8
  %3764 = bitcast %union.rec* %3763 to %struct.word_type*
  %3765 = getelementptr inbounds %struct.word_type, %struct.word_type* %3764, i32 0, i32 0
  %3766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3765, i32 0, i64 1
  %3767 = getelementptr inbounds %struct.LIST, %struct.LIST* %3766, i32 0, i32 0
  store %union.rec* %3762, %union.rec** %3767, align 8
  %3768 = load %union.rec*, %union.rec** @zz_res, align 8
  %3769 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3770 = bitcast %union.rec* %3769 to %struct.word_type*
  %3771 = getelementptr inbounds %struct.word_type, %struct.word_type* %3770, i32 0, i32 0
  %3772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3771, i32 0, i64 1
  %3773 = getelementptr inbounds %struct.LIST, %struct.LIST* %3772, i32 0, i32 1
  store %union.rec* %3768, %union.rec** %3773, align 8
  br label %3774

; <label>:3774                                    ; preds = %3733, %3731
  %3775 = phi %union.rec* [ %3732, %3731 ], [ %3768, %3733 ]
  br label %3776

; <label>:3776                                    ; preds = %3774, %3726
  %3777 = phi %union.rec* [ %3727, %3726 ], [ %3775, %3774 ]
  %3778 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %3779 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3780 = call %union.rec* @MakeWord(i32 11, i8* %3778, %struct.FILE_POS* %3779)
  store %union.rec* %3780, %union.rec** %tmp, align 8
  %3781 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3782 = zext i8 %3781 to i32
  store i32 %3782, i32* @zz_size, align 4
  %3783 = sext i32 %3782 to i64
  %3784 = icmp uge i64 %3783, 265
  br i1 %3784, label %3785, label %3788

; <label>:3785                                    ; preds = %3776
  %3786 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3787 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3786)
  br label %3813

; <label>:3788                                    ; preds = %3776
  %3789 = load i32, i32* @zz_size, align 4
  %3790 = sext i32 %3789 to i64
  %3791 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3790
  %3792 = load %union.rec*, %union.rec** %3791, align 8
  %3793 = icmp eq %union.rec* %3792, null
  br i1 %3793, label %3794, label %3798

; <label>:3794                                    ; preds = %3788
  %3795 = load i32, i32* @zz_size, align 4
  %3796 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3797 = call %union.rec* @GetMemory(i32 %3795, %struct.FILE_POS* %3796)
  store %union.rec* %3797, %union.rec** @zz_hold, align 8
  br label %3812

; <label>:3798                                    ; preds = %3788
  %3799 = load i32, i32* @zz_size, align 4
  %3800 = sext i32 %3799 to i64
  %3801 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3800
  %3802 = load %union.rec*, %union.rec** %3801, align 8
  store %union.rec* %3802, %union.rec** @zz_hold, align 8
  store %union.rec* %3802, %union.rec** @zz_hold, align 8
  %3803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3804 = bitcast %union.rec* %3803 to %struct.word_type*
  %3805 = getelementptr inbounds %struct.word_type, %struct.word_type* %3804, i32 0, i32 0
  %3806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3805, i32 0, i64 0
  %3807 = getelementptr inbounds %struct.LIST, %struct.LIST* %3806, i32 0, i32 0
  %3808 = load %union.rec*, %union.rec** %3807, align 8
  %3809 = load i32, i32* @zz_size, align 4
  %3810 = sext i32 %3809 to i64
  %3811 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3810
  store %union.rec* %3808, %union.rec** %3811, align 8
  br label %3812

; <label>:3812                                    ; preds = %3798, %3794
  br label %3813

; <label>:3813                                    ; preds = %3812, %3785
  %3814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3815 = bitcast %union.rec* %3814 to %struct.word_type*
  %3816 = getelementptr inbounds %struct.word_type, %struct.word_type* %3815, i32 0, i32 1
  %3817 = bitcast %union.FIRST_UNION* %3816 to %struct.anon*
  %3818 = getelementptr inbounds %struct.anon, %struct.anon* %3817, i32 0, i32 0
  store i8 0, i8* %3818, align 1
  %3819 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3821 = bitcast %union.rec* %3820 to %struct.word_type*
  %3822 = getelementptr inbounds %struct.word_type, %struct.word_type* %3821, i32 0, i32 0
  %3823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3822, i32 0, i64 1
  %3824 = getelementptr inbounds %struct.LIST, %struct.LIST* %3823, i32 0, i32 1
  store %union.rec* %3819, %union.rec** %3824, align 8
  %3825 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3826 = bitcast %union.rec* %3825 to %struct.word_type*
  %3827 = getelementptr inbounds %struct.word_type, %struct.word_type* %3826, i32 0, i32 0
  %3828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3827, i32 0, i64 1
  %3829 = getelementptr inbounds %struct.LIST, %struct.LIST* %3828, i32 0, i32 0
  store %union.rec* %3819, %union.rec** %3829, align 8
  %3830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3831 = bitcast %union.rec* %3830 to %struct.word_type*
  %3832 = getelementptr inbounds %struct.word_type, %struct.word_type* %3831, i32 0, i32 0
  %3833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3832, i32 0, i64 0
  %3834 = getelementptr inbounds %struct.LIST, %struct.LIST* %3833, i32 0, i32 1
  store %union.rec* %3819, %union.rec** %3834, align 8
  %3835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3836 = bitcast %union.rec* %3835 to %struct.word_type*
  %3837 = getelementptr inbounds %struct.word_type, %struct.word_type* %3836, i32 0, i32 0
  %3838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3837, i32 0, i64 0
  %3839 = getelementptr inbounds %struct.LIST, %struct.LIST* %3838, i32 0, i32 0
  store %union.rec* %3819, %union.rec** %3839, align 8
  store %union.rec* %3819, %union.rec** @xx_link, align 8
  %3840 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3840, %union.rec** @zz_res, align 8
  %3841 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %3841, %union.rec** @zz_hold, align 8
  %3842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3843 = icmp eq %union.rec* %3842, null
  br i1 %3843, label %3844, label %3846

; <label>:3844                                    ; preds = %3813
  %3845 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3894

; <label>:3846                                    ; preds = %3813
  %3847 = load %union.rec*, %union.rec** @zz_res, align 8
  %3848 = icmp eq %union.rec* %3847, null
  br i1 %3848, label %3849, label %3851

; <label>:3849                                    ; preds = %3846
  %3850 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3892

; <label>:3851                                    ; preds = %3846
  %3852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3853 = bitcast %union.rec* %3852 to %struct.word_type*
  %3854 = getelementptr inbounds %struct.word_type, %struct.word_type* %3853, i32 0, i32 0
  %3855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3854, i32 0, i64 0
  %3856 = getelementptr inbounds %struct.LIST, %struct.LIST* %3855, i32 0, i32 0
  %3857 = load %union.rec*, %union.rec** %3856, align 8
  store %union.rec* %3857, %union.rec** @zz_tmp, align 8
  %3858 = load %union.rec*, %union.rec** @zz_res, align 8
  %3859 = bitcast %union.rec* %3858 to %struct.word_type*
  %3860 = getelementptr inbounds %struct.word_type, %struct.word_type* %3859, i32 0, i32 0
  %3861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3860, i32 0, i64 0
  %3862 = getelementptr inbounds %struct.LIST, %struct.LIST* %3861, i32 0, i32 0
  %3863 = load %union.rec*, %union.rec** %3862, align 8
  %3864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3865 = bitcast %union.rec* %3864 to %struct.word_type*
  %3866 = getelementptr inbounds %struct.word_type, %struct.word_type* %3865, i32 0, i32 0
  %3867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3866, i32 0, i64 0
  %3868 = getelementptr inbounds %struct.LIST, %struct.LIST* %3867, i32 0, i32 0
  store %union.rec* %3863, %union.rec** %3868, align 8
  %3869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3870 = load %union.rec*, %union.rec** @zz_res, align 8
  %3871 = bitcast %union.rec* %3870 to %struct.word_type*
  %3872 = getelementptr inbounds %struct.word_type, %struct.word_type* %3871, i32 0, i32 0
  %3873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3872, i32 0, i64 0
  %3874 = getelementptr inbounds %struct.LIST, %struct.LIST* %3873, i32 0, i32 0
  %3875 = load %union.rec*, %union.rec** %3874, align 8
  %3876 = bitcast %union.rec* %3875 to %struct.word_type*
  %3877 = getelementptr inbounds %struct.word_type, %struct.word_type* %3876, i32 0, i32 0
  %3878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3877, i32 0, i64 0
  %3879 = getelementptr inbounds %struct.LIST, %struct.LIST* %3878, i32 0, i32 1
  store %union.rec* %3869, %union.rec** %3879, align 8
  %3880 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3881 = load %union.rec*, %union.rec** @zz_res, align 8
  %3882 = bitcast %union.rec* %3881 to %struct.word_type*
  %3883 = getelementptr inbounds %struct.word_type, %struct.word_type* %3882, i32 0, i32 0
  %3884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3883, i32 0, i64 0
  %3885 = getelementptr inbounds %struct.LIST, %struct.LIST* %3884, i32 0, i32 0
  store %union.rec* %3880, %union.rec** %3885, align 8
  %3886 = load %union.rec*, %union.rec** @zz_res, align 8
  %3887 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3888 = bitcast %union.rec* %3887 to %struct.word_type*
  %3889 = getelementptr inbounds %struct.word_type, %struct.word_type* %3888, i32 0, i32 0
  %3890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3889, i32 0, i64 0
  %3891 = getelementptr inbounds %struct.LIST, %struct.LIST* %3890, i32 0, i32 1
  store %union.rec* %3886, %union.rec** %3891, align 8
  br label %3892

; <label>:3892                                    ; preds = %3851, %3849
  %3893 = phi %union.rec* [ %3850, %3849 ], [ %3886, %3851 ]
  br label %3894

; <label>:3894                                    ; preds = %3892, %3844
  %3895 = phi %union.rec* [ %3845, %3844 ], [ %3893, %3892 ]
  %3896 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3896, %union.rec** @zz_res, align 8
  %3897 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %3897, %union.rec** @zz_hold, align 8
  %3898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3899 = icmp eq %union.rec* %3898, null
  br i1 %3899, label %3900, label %3902

; <label>:3900                                    ; preds = %3894
  %3901 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3950

; <label>:3902                                    ; preds = %3894
  %3903 = load %union.rec*, %union.rec** @zz_res, align 8
  %3904 = icmp eq %union.rec* %3903, null
  br i1 %3904, label %3905, label %3907

; <label>:3905                                    ; preds = %3902
  %3906 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3948

; <label>:3907                                    ; preds = %3902
  %3908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3909 = bitcast %union.rec* %3908 to %struct.word_type*
  %3910 = getelementptr inbounds %struct.word_type, %struct.word_type* %3909, i32 0, i32 0
  %3911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3910, i32 0, i64 1
  %3912 = getelementptr inbounds %struct.LIST, %struct.LIST* %3911, i32 0, i32 0
  %3913 = load %union.rec*, %union.rec** %3912, align 8
  store %union.rec* %3913, %union.rec** @zz_tmp, align 8
  %3914 = load %union.rec*, %union.rec** @zz_res, align 8
  %3915 = bitcast %union.rec* %3914 to %struct.word_type*
  %3916 = getelementptr inbounds %struct.word_type, %struct.word_type* %3915, i32 0, i32 0
  %3917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3916, i32 0, i64 1
  %3918 = getelementptr inbounds %struct.LIST, %struct.LIST* %3917, i32 0, i32 0
  %3919 = load %union.rec*, %union.rec** %3918, align 8
  %3920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3921 = bitcast %union.rec* %3920 to %struct.word_type*
  %3922 = getelementptr inbounds %struct.word_type, %struct.word_type* %3921, i32 0, i32 0
  %3923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3922, i32 0, i64 1
  %3924 = getelementptr inbounds %struct.LIST, %struct.LIST* %3923, i32 0, i32 0
  store %union.rec* %3919, %union.rec** %3924, align 8
  %3925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3926 = load %union.rec*, %union.rec** @zz_res, align 8
  %3927 = bitcast %union.rec* %3926 to %struct.word_type*
  %3928 = getelementptr inbounds %struct.word_type, %struct.word_type* %3927, i32 0, i32 0
  %3929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3928, i32 0, i64 1
  %3930 = getelementptr inbounds %struct.LIST, %struct.LIST* %3929, i32 0, i32 0
  %3931 = load %union.rec*, %union.rec** %3930, align 8
  %3932 = bitcast %union.rec* %3931 to %struct.word_type*
  %3933 = getelementptr inbounds %struct.word_type, %struct.word_type* %3932, i32 0, i32 0
  %3934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3933, i32 0, i64 1
  %3935 = getelementptr inbounds %struct.LIST, %struct.LIST* %3934, i32 0, i32 1
  store %union.rec* %3925, %union.rec** %3935, align 8
  %3936 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3937 = load %union.rec*, %union.rec** @zz_res, align 8
  %3938 = bitcast %union.rec* %3937 to %struct.word_type*
  %3939 = getelementptr inbounds %struct.word_type, %struct.word_type* %3938, i32 0, i32 0
  %3940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3939, i32 0, i64 1
  %3941 = getelementptr inbounds %struct.LIST, %struct.LIST* %3940, i32 0, i32 0
  store %union.rec* %3936, %union.rec** %3941, align 8
  %3942 = load %union.rec*, %union.rec** @zz_res, align 8
  %3943 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3944 = bitcast %union.rec* %3943 to %struct.word_type*
  %3945 = getelementptr inbounds %struct.word_type, %struct.word_type* %3944, i32 0, i32 0
  %3946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3945, i32 0, i64 1
  %3947 = getelementptr inbounds %struct.LIST, %struct.LIST* %3946, i32 0, i32 1
  store %union.rec* %3942, %union.rec** %3947, align 8
  br label %3948

; <label>:3948                                    ; preds = %3907, %3905
  %3949 = phi %union.rec* [ %3906, %3905 ], [ %3942, %3907 ]
  br label %3950

; <label>:3950                                    ; preds = %3948, %3900
  %3951 = phi %union.rec* [ %3901, %3900 ], [ %3949, %3948 ]
  %3952 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %3953 = load %struct.tm*, %struct.tm** %now, align 8
  %3954 = getelementptr inbounds %struct.tm, %struct.tm* %3953, i32 0, i32 7
  %3955 = load i32, i32* %3954, align 4
  %3956 = call i32 (i8*, i8*, ...) @sprintf(i8* %3952, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %3955) #3
  %3957 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %3958 = zext i8 %3957 to i32
  store i32 %3958, i32* @zz_size, align 4
  %3959 = sext i32 %3958 to i64
  %3960 = icmp uge i64 %3959, 265
  br i1 %3960, label %3961, label %3964

; <label>:3961                                    ; preds = %3950
  %3962 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3963 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %3962)
  br label %3989

; <label>:3964                                    ; preds = %3950
  %3965 = load i32, i32* @zz_size, align 4
  %3966 = sext i32 %3965 to i64
  %3967 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3966
  %3968 = load %union.rec*, %union.rec** %3967, align 8
  %3969 = icmp eq %union.rec* %3968, null
  br i1 %3969, label %3970, label %3974

; <label>:3970                                    ; preds = %3964
  %3971 = load i32, i32* @zz_size, align 4
  %3972 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3973 = call %union.rec* @GetMemory(i32 %3971, %struct.FILE_POS* %3972)
  store %union.rec* %3973, %union.rec** @zz_hold, align 8
  br label %3988

; <label>:3974                                    ; preds = %3964
  %3975 = load i32, i32* @zz_size, align 4
  %3976 = sext i32 %3975 to i64
  %3977 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3976
  %3978 = load %union.rec*, %union.rec** %3977, align 8
  store %union.rec* %3978, %union.rec** @zz_hold, align 8
  store %union.rec* %3978, %union.rec** @zz_hold, align 8
  %3979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3980 = bitcast %union.rec* %3979 to %struct.word_type*
  %3981 = getelementptr inbounds %struct.word_type, %struct.word_type* %3980, i32 0, i32 0
  %3982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3981, i32 0, i64 0
  %3983 = getelementptr inbounds %struct.LIST, %struct.LIST* %3982, i32 0, i32 0
  %3984 = load %union.rec*, %union.rec** %3983, align 8
  %3985 = load i32, i32* @zz_size, align 4
  %3986 = sext i32 %3985 to i64
  %3987 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3986
  store %union.rec* %3984, %union.rec** %3987, align 8
  br label %3988

; <label>:3988                                    ; preds = %3974, %3970
  br label %3989

; <label>:3989                                    ; preds = %3988, %3961
  %3990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3991 = bitcast %union.rec* %3990 to %struct.word_type*
  %3992 = getelementptr inbounds %struct.word_type, %struct.word_type* %3991, i32 0, i32 1
  %3993 = bitcast %union.FIRST_UNION* %3992 to %struct.anon*
  %3994 = getelementptr inbounds %struct.anon, %struct.anon* %3993, i32 0, i32 0
  store i8 10, i8* %3994, align 1
  %3995 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3997 = bitcast %union.rec* %3996 to %struct.word_type*
  %3998 = getelementptr inbounds %struct.word_type, %struct.word_type* %3997, i32 0, i32 0
  %3999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3998, i32 0, i64 1
  %4000 = getelementptr inbounds %struct.LIST, %struct.LIST* %3999, i32 0, i32 1
  store %union.rec* %3995, %union.rec** %4000, align 8
  %4001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4002 = bitcast %union.rec* %4001 to %struct.word_type*
  %4003 = getelementptr inbounds %struct.word_type, %struct.word_type* %4002, i32 0, i32 0
  %4004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4003, i32 0, i64 1
  %4005 = getelementptr inbounds %struct.LIST, %struct.LIST* %4004, i32 0, i32 0
  store %union.rec* %3995, %union.rec** %4005, align 8
  %4006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4007 = bitcast %union.rec* %4006 to %struct.word_type*
  %4008 = getelementptr inbounds %struct.word_type, %struct.word_type* %4007, i32 0, i32 0
  %4009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4008, i32 0, i64 0
  %4010 = getelementptr inbounds %struct.LIST, %struct.LIST* %4009, i32 0, i32 1
  store %union.rec* %3995, %union.rec** %4010, align 8
  %4011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4012 = bitcast %union.rec* %4011 to %struct.word_type*
  %4013 = getelementptr inbounds %struct.word_type, %struct.word_type* %4012, i32 0, i32 0
  %4014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4013, i32 0, i64 0
  %4015 = getelementptr inbounds %struct.LIST, %struct.LIST* %4014, i32 0, i32 0
  store %union.rec* %3995, %union.rec** %4015, align 8
  store %union.rec* %3995, %union.rec** %par, align 8
  %4016 = load %union.rec*, %union.rec** %yearday, align 8
  %4017 = load %union.rec*, %union.rec** %par, align 8
  %4018 = bitcast %union.rec* %4017 to %struct.closure_type*
  %4019 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4018, i32 0, i32 5
  store %union.rec* %4016, %union.rec** %4019, align 8
  %4020 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4021 = zext i8 %4020 to i32
  store i32 %4021, i32* @zz_size, align 4
  %4022 = sext i32 %4021 to i64
  %4023 = icmp uge i64 %4022, 265
  br i1 %4023, label %4024, label %4027

; <label>:4024                                    ; preds = %3989
  %4025 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4026 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %4025)
  br label %4052

; <label>:4027                                    ; preds = %3989
  %4028 = load i32, i32* @zz_size, align 4
  %4029 = sext i32 %4028 to i64
  %4030 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4029
  %4031 = load %union.rec*, %union.rec** %4030, align 8
  %4032 = icmp eq %union.rec* %4031, null
  br i1 %4032, label %4033, label %4037

; <label>:4033                                    ; preds = %4027
  %4034 = load i32, i32* @zz_size, align 4
  %4035 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4036 = call %union.rec* @GetMemory(i32 %4034, %struct.FILE_POS* %4035)
  store %union.rec* %4036, %union.rec** @zz_hold, align 8
  br label %4051

; <label>:4037                                    ; preds = %4027
  %4038 = load i32, i32* @zz_size, align 4
  %4039 = sext i32 %4038 to i64
  %4040 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4039
  %4041 = load %union.rec*, %union.rec** %4040, align 8
  store %union.rec* %4041, %union.rec** @zz_hold, align 8
  store %union.rec* %4041, %union.rec** @zz_hold, align 8
  %4042 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4043 = bitcast %union.rec* %4042 to %struct.word_type*
  %4044 = getelementptr inbounds %struct.word_type, %struct.word_type* %4043, i32 0, i32 0
  %4045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4044, i32 0, i64 0
  %4046 = getelementptr inbounds %struct.LIST, %struct.LIST* %4045, i32 0, i32 0
  %4047 = load %union.rec*, %union.rec** %4046, align 8
  %4048 = load i32, i32* @zz_size, align 4
  %4049 = sext i32 %4048 to i64
  %4050 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4049
  store %union.rec* %4047, %union.rec** %4050, align 8
  br label %4051

; <label>:4051                                    ; preds = %4037, %4033
  br label %4052

; <label>:4052                                    ; preds = %4051, %4024
  %4053 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4054 = bitcast %union.rec* %4053 to %struct.word_type*
  %4055 = getelementptr inbounds %struct.word_type, %struct.word_type* %4054, i32 0, i32 1
  %4056 = bitcast %union.FIRST_UNION* %4055 to %struct.anon*
  %4057 = getelementptr inbounds %struct.anon, %struct.anon* %4056, i32 0, i32 0
  store i8 0, i8* %4057, align 1
  %4058 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4060 = bitcast %union.rec* %4059 to %struct.word_type*
  %4061 = getelementptr inbounds %struct.word_type, %struct.word_type* %4060, i32 0, i32 0
  %4062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4061, i32 0, i64 1
  %4063 = getelementptr inbounds %struct.LIST, %struct.LIST* %4062, i32 0, i32 1
  store %union.rec* %4058, %union.rec** %4063, align 8
  %4064 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4065 = bitcast %union.rec* %4064 to %struct.word_type*
  %4066 = getelementptr inbounds %struct.word_type, %struct.word_type* %4065, i32 0, i32 0
  %4067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4066, i32 0, i64 1
  %4068 = getelementptr inbounds %struct.LIST, %struct.LIST* %4067, i32 0, i32 0
  store %union.rec* %4058, %union.rec** %4068, align 8
  %4069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4070 = bitcast %union.rec* %4069 to %struct.word_type*
  %4071 = getelementptr inbounds %struct.word_type, %struct.word_type* %4070, i32 0, i32 0
  %4072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4071, i32 0, i64 0
  %4073 = getelementptr inbounds %struct.LIST, %struct.LIST* %4072, i32 0, i32 1
  store %union.rec* %4058, %union.rec** %4073, align 8
  %4074 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4075 = bitcast %union.rec* %4074 to %struct.word_type*
  %4076 = getelementptr inbounds %struct.word_type, %struct.word_type* %4075, i32 0, i32 0
  %4077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4076, i32 0, i64 0
  %4078 = getelementptr inbounds %struct.LIST, %struct.LIST* %4077, i32 0, i32 0
  store %union.rec* %4058, %union.rec** %4078, align 8
  store %union.rec* %4058, %union.rec** @xx_link, align 8
  %4079 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4079, %union.rec** @zz_res, align 8
  %4080 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %4080, %union.rec** @zz_hold, align 8
  %4081 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4082 = icmp eq %union.rec* %4081, null
  br i1 %4082, label %4083, label %4085

; <label>:4083                                    ; preds = %4052
  %4084 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4133

; <label>:4085                                    ; preds = %4052
  %4086 = load %union.rec*, %union.rec** @zz_res, align 8
  %4087 = icmp eq %union.rec* %4086, null
  br i1 %4087, label %4088, label %4090

; <label>:4088                                    ; preds = %4085
  %4089 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4131

; <label>:4090                                    ; preds = %4085
  %4091 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4092 = bitcast %union.rec* %4091 to %struct.word_type*
  %4093 = getelementptr inbounds %struct.word_type, %struct.word_type* %4092, i32 0, i32 0
  %4094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4093, i32 0, i64 0
  %4095 = getelementptr inbounds %struct.LIST, %struct.LIST* %4094, i32 0, i32 0
  %4096 = load %union.rec*, %union.rec** %4095, align 8
  store %union.rec* %4096, %union.rec** @zz_tmp, align 8
  %4097 = load %union.rec*, %union.rec** @zz_res, align 8
  %4098 = bitcast %union.rec* %4097 to %struct.word_type*
  %4099 = getelementptr inbounds %struct.word_type, %struct.word_type* %4098, i32 0, i32 0
  %4100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4099, i32 0, i64 0
  %4101 = getelementptr inbounds %struct.LIST, %struct.LIST* %4100, i32 0, i32 0
  %4102 = load %union.rec*, %union.rec** %4101, align 8
  %4103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4104 = bitcast %union.rec* %4103 to %struct.word_type*
  %4105 = getelementptr inbounds %struct.word_type, %struct.word_type* %4104, i32 0, i32 0
  %4106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4105, i32 0, i64 0
  %4107 = getelementptr inbounds %struct.LIST, %struct.LIST* %4106, i32 0, i32 0
  store %union.rec* %4102, %union.rec** %4107, align 8
  %4108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4109 = load %union.rec*, %union.rec** @zz_res, align 8
  %4110 = bitcast %union.rec* %4109 to %struct.word_type*
  %4111 = getelementptr inbounds %struct.word_type, %struct.word_type* %4110, i32 0, i32 0
  %4112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4111, i32 0, i64 0
  %4113 = getelementptr inbounds %struct.LIST, %struct.LIST* %4112, i32 0, i32 0
  %4114 = load %union.rec*, %union.rec** %4113, align 8
  %4115 = bitcast %union.rec* %4114 to %struct.word_type*
  %4116 = getelementptr inbounds %struct.word_type, %struct.word_type* %4115, i32 0, i32 0
  %4117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4116, i32 0, i64 0
  %4118 = getelementptr inbounds %struct.LIST, %struct.LIST* %4117, i32 0, i32 1
  store %union.rec* %4108, %union.rec** %4118, align 8
  %4119 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4120 = load %union.rec*, %union.rec** @zz_res, align 8
  %4121 = bitcast %union.rec* %4120 to %struct.word_type*
  %4122 = getelementptr inbounds %struct.word_type, %struct.word_type* %4121, i32 0, i32 0
  %4123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4122, i32 0, i64 0
  %4124 = getelementptr inbounds %struct.LIST, %struct.LIST* %4123, i32 0, i32 0
  store %union.rec* %4119, %union.rec** %4124, align 8
  %4125 = load %union.rec*, %union.rec** @zz_res, align 8
  %4126 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4127 = bitcast %union.rec* %4126 to %struct.word_type*
  %4128 = getelementptr inbounds %struct.word_type, %struct.word_type* %4127, i32 0, i32 0
  %4129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4128, i32 0, i64 0
  %4130 = getelementptr inbounds %struct.LIST, %struct.LIST* %4129, i32 0, i32 1
  store %union.rec* %4125, %union.rec** %4130, align 8
  br label %4131

; <label>:4131                                    ; preds = %4090, %4088
  %4132 = phi %union.rec* [ %4089, %4088 ], [ %4125, %4090 ]
  br label %4133

; <label>:4133                                    ; preds = %4131, %4083
  %4134 = phi %union.rec* [ %4084, %4083 ], [ %4132, %4131 ]
  %4135 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4135, %union.rec** @zz_res, align 8
  %4136 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %4136, %union.rec** @zz_hold, align 8
  %4137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4138 = icmp eq %union.rec* %4137, null
  br i1 %4138, label %4139, label %4141

; <label>:4139                                    ; preds = %4133
  %4140 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4189

; <label>:4141                                    ; preds = %4133
  %4142 = load %union.rec*, %union.rec** @zz_res, align 8
  %4143 = icmp eq %union.rec* %4142, null
  br i1 %4143, label %4144, label %4146

; <label>:4144                                    ; preds = %4141
  %4145 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4187

; <label>:4146                                    ; preds = %4141
  %4147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4148 = bitcast %union.rec* %4147 to %struct.word_type*
  %4149 = getelementptr inbounds %struct.word_type, %struct.word_type* %4148, i32 0, i32 0
  %4150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4149, i32 0, i64 1
  %4151 = getelementptr inbounds %struct.LIST, %struct.LIST* %4150, i32 0, i32 0
  %4152 = load %union.rec*, %union.rec** %4151, align 8
  store %union.rec* %4152, %union.rec** @zz_tmp, align 8
  %4153 = load %union.rec*, %union.rec** @zz_res, align 8
  %4154 = bitcast %union.rec* %4153 to %struct.word_type*
  %4155 = getelementptr inbounds %struct.word_type, %struct.word_type* %4154, i32 0, i32 0
  %4156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4155, i32 0, i64 1
  %4157 = getelementptr inbounds %struct.LIST, %struct.LIST* %4156, i32 0, i32 0
  %4158 = load %union.rec*, %union.rec** %4157, align 8
  %4159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4160 = bitcast %union.rec* %4159 to %struct.word_type*
  %4161 = getelementptr inbounds %struct.word_type, %struct.word_type* %4160, i32 0, i32 0
  %4162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4161, i32 0, i64 1
  %4163 = getelementptr inbounds %struct.LIST, %struct.LIST* %4162, i32 0, i32 0
  store %union.rec* %4158, %union.rec** %4163, align 8
  %4164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4165 = load %union.rec*, %union.rec** @zz_res, align 8
  %4166 = bitcast %union.rec* %4165 to %struct.word_type*
  %4167 = getelementptr inbounds %struct.word_type, %struct.word_type* %4166, i32 0, i32 0
  %4168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4167, i32 0, i64 1
  %4169 = getelementptr inbounds %struct.LIST, %struct.LIST* %4168, i32 0, i32 0
  %4170 = load %union.rec*, %union.rec** %4169, align 8
  %4171 = bitcast %union.rec* %4170 to %struct.word_type*
  %4172 = getelementptr inbounds %struct.word_type, %struct.word_type* %4171, i32 0, i32 0
  %4173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4172, i32 0, i64 1
  %4174 = getelementptr inbounds %struct.LIST, %struct.LIST* %4173, i32 0, i32 1
  store %union.rec* %4164, %union.rec** %4174, align 8
  %4175 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4176 = load %union.rec*, %union.rec** @zz_res, align 8
  %4177 = bitcast %union.rec* %4176 to %struct.word_type*
  %4178 = getelementptr inbounds %struct.word_type, %struct.word_type* %4177, i32 0, i32 0
  %4179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4178, i32 0, i64 1
  %4180 = getelementptr inbounds %struct.LIST, %struct.LIST* %4179, i32 0, i32 0
  store %union.rec* %4175, %union.rec** %4180, align 8
  %4181 = load %union.rec*, %union.rec** @zz_res, align 8
  %4182 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4183 = bitcast %union.rec* %4182 to %struct.word_type*
  %4184 = getelementptr inbounds %struct.word_type, %struct.word_type* %4183, i32 0, i32 0
  %4185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4184, i32 0, i64 1
  %4186 = getelementptr inbounds %struct.LIST, %struct.LIST* %4185, i32 0, i32 1
  store %union.rec* %4181, %union.rec** %4186, align 8
  br label %4187

; <label>:4187                                    ; preds = %4146, %4144
  %4188 = phi %union.rec* [ %4145, %4144 ], [ %4181, %4146 ]
  br label %4189

; <label>:4189                                    ; preds = %4187, %4139
  %4190 = phi %union.rec* [ %4140, %4139 ], [ %4188, %4187 ]
  %4191 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %4192 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4193 = call %union.rec* @MakeWord(i32 11, i8* %4191, %struct.FILE_POS* %4192)
  store %union.rec* %4193, %union.rec** %tmp, align 8
  %4194 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4195 = zext i8 %4194 to i32
  store i32 %4195, i32* @zz_size, align 4
  %4196 = sext i32 %4195 to i64
  %4197 = icmp uge i64 %4196, 265
  br i1 %4197, label %4198, label %4201

; <label>:4198                                    ; preds = %4189
  %4199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %4199)
  br label %4226

; <label>:4201                                    ; preds = %4189
  %4202 = load i32, i32* @zz_size, align 4
  %4203 = sext i32 %4202 to i64
  %4204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4203
  %4205 = load %union.rec*, %union.rec** %4204, align 8
  %4206 = icmp eq %union.rec* %4205, null
  br i1 %4206, label %4207, label %4211

; <label>:4207                                    ; preds = %4201
  %4208 = load i32, i32* @zz_size, align 4
  %4209 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4210 = call %union.rec* @GetMemory(i32 %4208, %struct.FILE_POS* %4209)
  store %union.rec* %4210, %union.rec** @zz_hold, align 8
  br label %4225

; <label>:4211                                    ; preds = %4201
  %4212 = load i32, i32* @zz_size, align 4
  %4213 = sext i32 %4212 to i64
  %4214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4213
  %4215 = load %union.rec*, %union.rec** %4214, align 8
  store %union.rec* %4215, %union.rec** @zz_hold, align 8
  store %union.rec* %4215, %union.rec** @zz_hold, align 8
  %4216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4217 = bitcast %union.rec* %4216 to %struct.word_type*
  %4218 = getelementptr inbounds %struct.word_type, %struct.word_type* %4217, i32 0, i32 0
  %4219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4218, i32 0, i64 0
  %4220 = getelementptr inbounds %struct.LIST, %struct.LIST* %4219, i32 0, i32 0
  %4221 = load %union.rec*, %union.rec** %4220, align 8
  %4222 = load i32, i32* @zz_size, align 4
  %4223 = sext i32 %4222 to i64
  %4224 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4223
  store %union.rec* %4221, %union.rec** %4224, align 8
  br label %4225

; <label>:4225                                    ; preds = %4211, %4207
  br label %4226

; <label>:4226                                    ; preds = %4225, %4198
  %4227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4228 = bitcast %union.rec* %4227 to %struct.word_type*
  %4229 = getelementptr inbounds %struct.word_type, %struct.word_type* %4228, i32 0, i32 1
  %4230 = bitcast %union.FIRST_UNION* %4229 to %struct.anon*
  %4231 = getelementptr inbounds %struct.anon, %struct.anon* %4230, i32 0, i32 0
  store i8 0, i8* %4231, align 1
  %4232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4234 = bitcast %union.rec* %4233 to %struct.word_type*
  %4235 = getelementptr inbounds %struct.word_type, %struct.word_type* %4234, i32 0, i32 0
  %4236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4235, i32 0, i64 1
  %4237 = getelementptr inbounds %struct.LIST, %struct.LIST* %4236, i32 0, i32 1
  store %union.rec* %4232, %union.rec** %4237, align 8
  %4238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4239 = bitcast %union.rec* %4238 to %struct.word_type*
  %4240 = getelementptr inbounds %struct.word_type, %struct.word_type* %4239, i32 0, i32 0
  %4241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4240, i32 0, i64 1
  %4242 = getelementptr inbounds %struct.LIST, %struct.LIST* %4241, i32 0, i32 0
  store %union.rec* %4232, %union.rec** %4242, align 8
  %4243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4244 = bitcast %union.rec* %4243 to %struct.word_type*
  %4245 = getelementptr inbounds %struct.word_type, %struct.word_type* %4244, i32 0, i32 0
  %4246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4245, i32 0, i64 0
  %4247 = getelementptr inbounds %struct.LIST, %struct.LIST* %4246, i32 0, i32 1
  store %union.rec* %4232, %union.rec** %4247, align 8
  %4248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4249 = bitcast %union.rec* %4248 to %struct.word_type*
  %4250 = getelementptr inbounds %struct.word_type, %struct.word_type* %4249, i32 0, i32 0
  %4251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4250, i32 0, i64 0
  %4252 = getelementptr inbounds %struct.LIST, %struct.LIST* %4251, i32 0, i32 0
  store %union.rec* %4232, %union.rec** %4252, align 8
  store %union.rec* %4232, %union.rec** @xx_link, align 8
  %4253 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4253, %union.rec** @zz_res, align 8
  %4254 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %4254, %union.rec** @zz_hold, align 8
  %4255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4256 = icmp eq %union.rec* %4255, null
  br i1 %4256, label %4257, label %4259

; <label>:4257                                    ; preds = %4226
  %4258 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4307

; <label>:4259                                    ; preds = %4226
  %4260 = load %union.rec*, %union.rec** @zz_res, align 8
  %4261 = icmp eq %union.rec* %4260, null
  br i1 %4261, label %4262, label %4264

; <label>:4262                                    ; preds = %4259
  %4263 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4305

; <label>:4264                                    ; preds = %4259
  %4265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4266 = bitcast %union.rec* %4265 to %struct.word_type*
  %4267 = getelementptr inbounds %struct.word_type, %struct.word_type* %4266, i32 0, i32 0
  %4268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4267, i32 0, i64 0
  %4269 = getelementptr inbounds %struct.LIST, %struct.LIST* %4268, i32 0, i32 0
  %4270 = load %union.rec*, %union.rec** %4269, align 8
  store %union.rec* %4270, %union.rec** @zz_tmp, align 8
  %4271 = load %union.rec*, %union.rec** @zz_res, align 8
  %4272 = bitcast %union.rec* %4271 to %struct.word_type*
  %4273 = getelementptr inbounds %struct.word_type, %struct.word_type* %4272, i32 0, i32 0
  %4274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4273, i32 0, i64 0
  %4275 = getelementptr inbounds %struct.LIST, %struct.LIST* %4274, i32 0, i32 0
  %4276 = load %union.rec*, %union.rec** %4275, align 8
  %4277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4278 = bitcast %union.rec* %4277 to %struct.word_type*
  %4279 = getelementptr inbounds %struct.word_type, %struct.word_type* %4278, i32 0, i32 0
  %4280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4279, i32 0, i64 0
  %4281 = getelementptr inbounds %struct.LIST, %struct.LIST* %4280, i32 0, i32 0
  store %union.rec* %4276, %union.rec** %4281, align 8
  %4282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4283 = load %union.rec*, %union.rec** @zz_res, align 8
  %4284 = bitcast %union.rec* %4283 to %struct.word_type*
  %4285 = getelementptr inbounds %struct.word_type, %struct.word_type* %4284, i32 0, i32 0
  %4286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4285, i32 0, i64 0
  %4287 = getelementptr inbounds %struct.LIST, %struct.LIST* %4286, i32 0, i32 0
  %4288 = load %union.rec*, %union.rec** %4287, align 8
  %4289 = bitcast %union.rec* %4288 to %struct.word_type*
  %4290 = getelementptr inbounds %struct.word_type, %struct.word_type* %4289, i32 0, i32 0
  %4291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4290, i32 0, i64 0
  %4292 = getelementptr inbounds %struct.LIST, %struct.LIST* %4291, i32 0, i32 1
  store %union.rec* %4282, %union.rec** %4292, align 8
  %4293 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4294 = load %union.rec*, %union.rec** @zz_res, align 8
  %4295 = bitcast %union.rec* %4294 to %struct.word_type*
  %4296 = getelementptr inbounds %struct.word_type, %struct.word_type* %4295, i32 0, i32 0
  %4297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4296, i32 0, i64 0
  %4298 = getelementptr inbounds %struct.LIST, %struct.LIST* %4297, i32 0, i32 0
  store %union.rec* %4293, %union.rec** %4298, align 8
  %4299 = load %union.rec*, %union.rec** @zz_res, align 8
  %4300 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4301 = bitcast %union.rec* %4300 to %struct.word_type*
  %4302 = getelementptr inbounds %struct.word_type, %struct.word_type* %4301, i32 0, i32 0
  %4303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4302, i32 0, i64 0
  %4304 = getelementptr inbounds %struct.LIST, %struct.LIST* %4303, i32 0, i32 1
  store %union.rec* %4299, %union.rec** %4304, align 8
  br label %4305

; <label>:4305                                    ; preds = %4264, %4262
  %4306 = phi %union.rec* [ %4263, %4262 ], [ %4299, %4264 ]
  br label %4307

; <label>:4307                                    ; preds = %4305, %4257
  %4308 = phi %union.rec* [ %4258, %4257 ], [ %4306, %4305 ]
  %4309 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4309, %union.rec** @zz_res, align 8
  %4310 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %4310, %union.rec** @zz_hold, align 8
  %4311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4312 = icmp eq %union.rec* %4311, null
  br i1 %4312, label %4313, label %4315

; <label>:4313                                    ; preds = %4307
  %4314 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4363

; <label>:4315                                    ; preds = %4307
  %4316 = load %union.rec*, %union.rec** @zz_res, align 8
  %4317 = icmp eq %union.rec* %4316, null
  br i1 %4317, label %4318, label %4320

; <label>:4318                                    ; preds = %4315
  %4319 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4361

; <label>:4320                                    ; preds = %4315
  %4321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4322 = bitcast %union.rec* %4321 to %struct.word_type*
  %4323 = getelementptr inbounds %struct.word_type, %struct.word_type* %4322, i32 0, i32 0
  %4324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4323, i32 0, i64 1
  %4325 = getelementptr inbounds %struct.LIST, %struct.LIST* %4324, i32 0, i32 0
  %4326 = load %union.rec*, %union.rec** %4325, align 8
  store %union.rec* %4326, %union.rec** @zz_tmp, align 8
  %4327 = load %union.rec*, %union.rec** @zz_res, align 8
  %4328 = bitcast %union.rec* %4327 to %struct.word_type*
  %4329 = getelementptr inbounds %struct.word_type, %struct.word_type* %4328, i32 0, i32 0
  %4330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4329, i32 0, i64 1
  %4331 = getelementptr inbounds %struct.LIST, %struct.LIST* %4330, i32 0, i32 0
  %4332 = load %union.rec*, %union.rec** %4331, align 8
  %4333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4334 = bitcast %union.rec* %4333 to %struct.word_type*
  %4335 = getelementptr inbounds %struct.word_type, %struct.word_type* %4334, i32 0, i32 0
  %4336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4335, i32 0, i64 1
  %4337 = getelementptr inbounds %struct.LIST, %struct.LIST* %4336, i32 0, i32 0
  store %union.rec* %4332, %union.rec** %4337, align 8
  %4338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4339 = load %union.rec*, %union.rec** @zz_res, align 8
  %4340 = bitcast %union.rec* %4339 to %struct.word_type*
  %4341 = getelementptr inbounds %struct.word_type, %struct.word_type* %4340, i32 0, i32 0
  %4342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4341, i32 0, i64 1
  %4343 = getelementptr inbounds %struct.LIST, %struct.LIST* %4342, i32 0, i32 0
  %4344 = load %union.rec*, %union.rec** %4343, align 8
  %4345 = bitcast %union.rec* %4344 to %struct.word_type*
  %4346 = getelementptr inbounds %struct.word_type, %struct.word_type* %4345, i32 0, i32 0
  %4347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4346, i32 0, i64 1
  %4348 = getelementptr inbounds %struct.LIST, %struct.LIST* %4347, i32 0, i32 1
  store %union.rec* %4338, %union.rec** %4348, align 8
  %4349 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4350 = load %union.rec*, %union.rec** @zz_res, align 8
  %4351 = bitcast %union.rec* %4350 to %struct.word_type*
  %4352 = getelementptr inbounds %struct.word_type, %struct.word_type* %4351, i32 0, i32 0
  %4353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4352, i32 0, i64 1
  %4354 = getelementptr inbounds %struct.LIST, %struct.LIST* %4353, i32 0, i32 0
  store %union.rec* %4349, %union.rec** %4354, align 8
  %4355 = load %union.rec*, %union.rec** @zz_res, align 8
  %4356 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4357 = bitcast %union.rec* %4356 to %struct.word_type*
  %4358 = getelementptr inbounds %struct.word_type, %struct.word_type* %4357, i32 0, i32 0
  %4359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4358, i32 0, i64 1
  %4360 = getelementptr inbounds %struct.LIST, %struct.LIST* %4359, i32 0, i32 1
  store %union.rec* %4355, %union.rec** %4360, align 8
  br label %4361

; <label>:4361                                    ; preds = %4320, %4318
  %4362 = phi %union.rec* [ %4319, %4318 ], [ %4355, %4320 ]
  br label %4363

; <label>:4363                                    ; preds = %4361, %4313
  %4364 = phi %union.rec* [ %4314, %4313 ], [ %4362, %4361 ]
  %4365 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %4366 = load %struct.tm*, %struct.tm** %now, align 8
  %4367 = getelementptr inbounds %struct.tm, %struct.tm* %4366, i32 0, i32 8
  %4368 = load i32, i32* %4367, align 4
  %4369 = call i32 (i8*, i8*, ...) @sprintf(i8* %4365, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %4368) #3
  %4370 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %4371 = zext i8 %4370 to i32
  store i32 %4371, i32* @zz_size, align 4
  %4372 = sext i32 %4371 to i64
  %4373 = icmp uge i64 %4372, 265
  br i1 %4373, label %4374, label %4377

; <label>:4374                                    ; preds = %4363
  %4375 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4376 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %4375)
  br label %4402

; <label>:4377                                    ; preds = %4363
  %4378 = load i32, i32* @zz_size, align 4
  %4379 = sext i32 %4378 to i64
  %4380 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4379
  %4381 = load %union.rec*, %union.rec** %4380, align 8
  %4382 = icmp eq %union.rec* %4381, null
  br i1 %4382, label %4383, label %4387

; <label>:4383                                    ; preds = %4377
  %4384 = load i32, i32* @zz_size, align 4
  %4385 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4386 = call %union.rec* @GetMemory(i32 %4384, %struct.FILE_POS* %4385)
  store %union.rec* %4386, %union.rec** @zz_hold, align 8
  br label %4401

; <label>:4387                                    ; preds = %4377
  %4388 = load i32, i32* @zz_size, align 4
  %4389 = sext i32 %4388 to i64
  %4390 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4389
  %4391 = load %union.rec*, %union.rec** %4390, align 8
  store %union.rec* %4391, %union.rec** @zz_hold, align 8
  store %union.rec* %4391, %union.rec** @zz_hold, align 8
  %4392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4393 = bitcast %union.rec* %4392 to %struct.word_type*
  %4394 = getelementptr inbounds %struct.word_type, %struct.word_type* %4393, i32 0, i32 0
  %4395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4394, i32 0, i64 0
  %4396 = getelementptr inbounds %struct.LIST, %struct.LIST* %4395, i32 0, i32 0
  %4397 = load %union.rec*, %union.rec** %4396, align 8
  %4398 = load i32, i32* @zz_size, align 4
  %4399 = sext i32 %4398 to i64
  %4400 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4399
  store %union.rec* %4397, %union.rec** %4400, align 8
  br label %4401

; <label>:4401                                    ; preds = %4387, %4383
  br label %4402

; <label>:4402                                    ; preds = %4401, %4374
  %4403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4404 = bitcast %union.rec* %4403 to %struct.word_type*
  %4405 = getelementptr inbounds %struct.word_type, %struct.word_type* %4404, i32 0, i32 1
  %4406 = bitcast %union.FIRST_UNION* %4405 to %struct.anon*
  %4407 = getelementptr inbounds %struct.anon, %struct.anon* %4406, i32 0, i32 0
  store i8 10, i8* %4407, align 1
  %4408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4410 = bitcast %union.rec* %4409 to %struct.word_type*
  %4411 = getelementptr inbounds %struct.word_type, %struct.word_type* %4410, i32 0, i32 0
  %4412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4411, i32 0, i64 1
  %4413 = getelementptr inbounds %struct.LIST, %struct.LIST* %4412, i32 0, i32 1
  store %union.rec* %4408, %union.rec** %4413, align 8
  %4414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4415 = bitcast %union.rec* %4414 to %struct.word_type*
  %4416 = getelementptr inbounds %struct.word_type, %struct.word_type* %4415, i32 0, i32 0
  %4417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4416, i32 0, i64 1
  %4418 = getelementptr inbounds %struct.LIST, %struct.LIST* %4417, i32 0, i32 0
  store %union.rec* %4408, %union.rec** %4418, align 8
  %4419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4420 = bitcast %union.rec* %4419 to %struct.word_type*
  %4421 = getelementptr inbounds %struct.word_type, %struct.word_type* %4420, i32 0, i32 0
  %4422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4421, i32 0, i64 0
  %4423 = getelementptr inbounds %struct.LIST, %struct.LIST* %4422, i32 0, i32 1
  store %union.rec* %4408, %union.rec** %4423, align 8
  %4424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4425 = bitcast %union.rec* %4424 to %struct.word_type*
  %4426 = getelementptr inbounds %struct.word_type, %struct.word_type* %4425, i32 0, i32 0
  %4427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4426, i32 0, i64 0
  %4428 = getelementptr inbounds %struct.LIST, %struct.LIST* %4427, i32 0, i32 0
  store %union.rec* %4408, %union.rec** %4428, align 8
  store %union.rec* %4408, %union.rec** %par, align 8
  %4429 = load %union.rec*, %union.rec** %dst, align 8
  %4430 = load %union.rec*, %union.rec** %par, align 8
  %4431 = bitcast %union.rec* %4430 to %struct.closure_type*
  %4432 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %4431, i32 0, i32 5
  store %union.rec* %4429, %union.rec** %4432, align 8
  %4433 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4434 = zext i8 %4433 to i32
  store i32 %4434, i32* @zz_size, align 4
  %4435 = sext i32 %4434 to i64
  %4436 = icmp uge i64 %4435, 265
  br i1 %4436, label %4437, label %4440

; <label>:4437                                    ; preds = %4402
  %4438 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4439 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %4438)
  br label %4465

; <label>:4440                                    ; preds = %4402
  %4441 = load i32, i32* @zz_size, align 4
  %4442 = sext i32 %4441 to i64
  %4443 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4442
  %4444 = load %union.rec*, %union.rec** %4443, align 8
  %4445 = icmp eq %union.rec* %4444, null
  br i1 %4445, label %4446, label %4450

; <label>:4446                                    ; preds = %4440
  %4447 = load i32, i32* @zz_size, align 4
  %4448 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4449 = call %union.rec* @GetMemory(i32 %4447, %struct.FILE_POS* %4448)
  store %union.rec* %4449, %union.rec** @zz_hold, align 8
  br label %4464

; <label>:4450                                    ; preds = %4440
  %4451 = load i32, i32* @zz_size, align 4
  %4452 = sext i32 %4451 to i64
  %4453 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4452
  %4454 = load %union.rec*, %union.rec** %4453, align 8
  store %union.rec* %4454, %union.rec** @zz_hold, align 8
  store %union.rec* %4454, %union.rec** @zz_hold, align 8
  %4455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4456 = bitcast %union.rec* %4455 to %struct.word_type*
  %4457 = getelementptr inbounds %struct.word_type, %struct.word_type* %4456, i32 0, i32 0
  %4458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4457, i32 0, i64 0
  %4459 = getelementptr inbounds %struct.LIST, %struct.LIST* %4458, i32 0, i32 0
  %4460 = load %union.rec*, %union.rec** %4459, align 8
  %4461 = load i32, i32* @zz_size, align 4
  %4462 = sext i32 %4461 to i64
  %4463 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4462
  store %union.rec* %4460, %union.rec** %4463, align 8
  br label %4464

; <label>:4464                                    ; preds = %4450, %4446
  br label %4465

; <label>:4465                                    ; preds = %4464, %4437
  %4466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4467 = bitcast %union.rec* %4466 to %struct.word_type*
  %4468 = getelementptr inbounds %struct.word_type, %struct.word_type* %4467, i32 0, i32 1
  %4469 = bitcast %union.FIRST_UNION* %4468 to %struct.anon*
  %4470 = getelementptr inbounds %struct.anon, %struct.anon* %4469, i32 0, i32 0
  store i8 0, i8* %4470, align 1
  %4471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4473 = bitcast %union.rec* %4472 to %struct.word_type*
  %4474 = getelementptr inbounds %struct.word_type, %struct.word_type* %4473, i32 0, i32 0
  %4475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4474, i32 0, i64 1
  %4476 = getelementptr inbounds %struct.LIST, %struct.LIST* %4475, i32 0, i32 1
  store %union.rec* %4471, %union.rec** %4476, align 8
  %4477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4478 = bitcast %union.rec* %4477 to %struct.word_type*
  %4479 = getelementptr inbounds %struct.word_type, %struct.word_type* %4478, i32 0, i32 0
  %4480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4479, i32 0, i64 1
  %4481 = getelementptr inbounds %struct.LIST, %struct.LIST* %4480, i32 0, i32 0
  store %union.rec* %4471, %union.rec** %4481, align 8
  %4482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4483 = bitcast %union.rec* %4482 to %struct.word_type*
  %4484 = getelementptr inbounds %struct.word_type, %struct.word_type* %4483, i32 0, i32 0
  %4485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4484, i32 0, i64 0
  %4486 = getelementptr inbounds %struct.LIST, %struct.LIST* %4485, i32 0, i32 1
  store %union.rec* %4471, %union.rec** %4486, align 8
  %4487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4488 = bitcast %union.rec* %4487 to %struct.word_type*
  %4489 = getelementptr inbounds %struct.word_type, %struct.word_type* %4488, i32 0, i32 0
  %4490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4489, i32 0, i64 0
  %4491 = getelementptr inbounds %struct.LIST, %struct.LIST* %4490, i32 0, i32 0
  store %union.rec* %4471, %union.rec** %4491, align 8
  store %union.rec* %4471, %union.rec** @xx_link, align 8
  %4492 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4492, %union.rec** @zz_res, align 8
  %4493 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %4493, %union.rec** @zz_hold, align 8
  %4494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4495 = icmp eq %union.rec* %4494, null
  br i1 %4495, label %4496, label %4498

; <label>:4496                                    ; preds = %4465
  %4497 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4546

; <label>:4498                                    ; preds = %4465
  %4499 = load %union.rec*, %union.rec** @zz_res, align 8
  %4500 = icmp eq %union.rec* %4499, null
  br i1 %4500, label %4501, label %4503

; <label>:4501                                    ; preds = %4498
  %4502 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4544

; <label>:4503                                    ; preds = %4498
  %4504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4505 = bitcast %union.rec* %4504 to %struct.word_type*
  %4506 = getelementptr inbounds %struct.word_type, %struct.word_type* %4505, i32 0, i32 0
  %4507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4506, i32 0, i64 0
  %4508 = getelementptr inbounds %struct.LIST, %struct.LIST* %4507, i32 0, i32 0
  %4509 = load %union.rec*, %union.rec** %4508, align 8
  store %union.rec* %4509, %union.rec** @zz_tmp, align 8
  %4510 = load %union.rec*, %union.rec** @zz_res, align 8
  %4511 = bitcast %union.rec* %4510 to %struct.word_type*
  %4512 = getelementptr inbounds %struct.word_type, %struct.word_type* %4511, i32 0, i32 0
  %4513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4512, i32 0, i64 0
  %4514 = getelementptr inbounds %struct.LIST, %struct.LIST* %4513, i32 0, i32 0
  %4515 = load %union.rec*, %union.rec** %4514, align 8
  %4516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4517 = bitcast %union.rec* %4516 to %struct.word_type*
  %4518 = getelementptr inbounds %struct.word_type, %struct.word_type* %4517, i32 0, i32 0
  %4519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4518, i32 0, i64 0
  %4520 = getelementptr inbounds %struct.LIST, %struct.LIST* %4519, i32 0, i32 0
  store %union.rec* %4515, %union.rec** %4520, align 8
  %4521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4522 = load %union.rec*, %union.rec** @zz_res, align 8
  %4523 = bitcast %union.rec* %4522 to %struct.word_type*
  %4524 = getelementptr inbounds %struct.word_type, %struct.word_type* %4523, i32 0, i32 0
  %4525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4524, i32 0, i64 0
  %4526 = getelementptr inbounds %struct.LIST, %struct.LIST* %4525, i32 0, i32 0
  %4527 = load %union.rec*, %union.rec** %4526, align 8
  %4528 = bitcast %union.rec* %4527 to %struct.word_type*
  %4529 = getelementptr inbounds %struct.word_type, %struct.word_type* %4528, i32 0, i32 0
  %4530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4529, i32 0, i64 0
  %4531 = getelementptr inbounds %struct.LIST, %struct.LIST* %4530, i32 0, i32 1
  store %union.rec* %4521, %union.rec** %4531, align 8
  %4532 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4533 = load %union.rec*, %union.rec** @zz_res, align 8
  %4534 = bitcast %union.rec* %4533 to %struct.word_type*
  %4535 = getelementptr inbounds %struct.word_type, %struct.word_type* %4534, i32 0, i32 0
  %4536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4535, i32 0, i64 0
  %4537 = getelementptr inbounds %struct.LIST, %struct.LIST* %4536, i32 0, i32 0
  store %union.rec* %4532, %union.rec** %4537, align 8
  %4538 = load %union.rec*, %union.rec** @zz_res, align 8
  %4539 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4540 = bitcast %union.rec* %4539 to %struct.word_type*
  %4541 = getelementptr inbounds %struct.word_type, %struct.word_type* %4540, i32 0, i32 0
  %4542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4541, i32 0, i64 0
  %4543 = getelementptr inbounds %struct.LIST, %struct.LIST* %4542, i32 0, i32 1
  store %union.rec* %4538, %union.rec** %4543, align 8
  br label %4544

; <label>:4544                                    ; preds = %4503, %4501
  %4545 = phi %union.rec* [ %4502, %4501 ], [ %4538, %4503 ]
  br label %4546

; <label>:4546                                    ; preds = %4544, %4496
  %4547 = phi %union.rec* [ %4497, %4496 ], [ %4545, %4544 ]
  %4548 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4548, %union.rec** @zz_res, align 8
  %4549 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %4549, %union.rec** @zz_hold, align 8
  %4550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4551 = icmp eq %union.rec* %4550, null
  br i1 %4551, label %4552, label %4554

; <label>:4552                                    ; preds = %4546
  %4553 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4602

; <label>:4554                                    ; preds = %4546
  %4555 = load %union.rec*, %union.rec** @zz_res, align 8
  %4556 = icmp eq %union.rec* %4555, null
  br i1 %4556, label %4557, label %4559

; <label>:4557                                    ; preds = %4554
  %4558 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4600

; <label>:4559                                    ; preds = %4554
  %4560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4561 = bitcast %union.rec* %4560 to %struct.word_type*
  %4562 = getelementptr inbounds %struct.word_type, %struct.word_type* %4561, i32 0, i32 0
  %4563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4562, i32 0, i64 1
  %4564 = getelementptr inbounds %struct.LIST, %struct.LIST* %4563, i32 0, i32 0
  %4565 = load %union.rec*, %union.rec** %4564, align 8
  store %union.rec* %4565, %union.rec** @zz_tmp, align 8
  %4566 = load %union.rec*, %union.rec** @zz_res, align 8
  %4567 = bitcast %union.rec* %4566 to %struct.word_type*
  %4568 = getelementptr inbounds %struct.word_type, %struct.word_type* %4567, i32 0, i32 0
  %4569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4568, i32 0, i64 1
  %4570 = getelementptr inbounds %struct.LIST, %struct.LIST* %4569, i32 0, i32 0
  %4571 = load %union.rec*, %union.rec** %4570, align 8
  %4572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4573 = bitcast %union.rec* %4572 to %struct.word_type*
  %4574 = getelementptr inbounds %struct.word_type, %struct.word_type* %4573, i32 0, i32 0
  %4575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4574, i32 0, i64 1
  %4576 = getelementptr inbounds %struct.LIST, %struct.LIST* %4575, i32 0, i32 0
  store %union.rec* %4571, %union.rec** %4576, align 8
  %4577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4578 = load %union.rec*, %union.rec** @zz_res, align 8
  %4579 = bitcast %union.rec* %4578 to %struct.word_type*
  %4580 = getelementptr inbounds %struct.word_type, %struct.word_type* %4579, i32 0, i32 0
  %4581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4580, i32 0, i64 1
  %4582 = getelementptr inbounds %struct.LIST, %struct.LIST* %4581, i32 0, i32 0
  %4583 = load %union.rec*, %union.rec** %4582, align 8
  %4584 = bitcast %union.rec* %4583 to %struct.word_type*
  %4585 = getelementptr inbounds %struct.word_type, %struct.word_type* %4584, i32 0, i32 0
  %4586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4585, i32 0, i64 1
  %4587 = getelementptr inbounds %struct.LIST, %struct.LIST* %4586, i32 0, i32 1
  store %union.rec* %4577, %union.rec** %4587, align 8
  %4588 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4589 = load %union.rec*, %union.rec** @zz_res, align 8
  %4590 = bitcast %union.rec* %4589 to %struct.word_type*
  %4591 = getelementptr inbounds %struct.word_type, %struct.word_type* %4590, i32 0, i32 0
  %4592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4591, i32 0, i64 1
  %4593 = getelementptr inbounds %struct.LIST, %struct.LIST* %4592, i32 0, i32 0
  store %union.rec* %4588, %union.rec** %4593, align 8
  %4594 = load %union.rec*, %union.rec** @zz_res, align 8
  %4595 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4596 = bitcast %union.rec* %4595 to %struct.word_type*
  %4597 = getelementptr inbounds %struct.word_type, %struct.word_type* %4596, i32 0, i32 0
  %4598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4597, i32 0, i64 1
  %4599 = getelementptr inbounds %struct.LIST, %struct.LIST* %4598, i32 0, i32 1
  store %union.rec* %4594, %union.rec** %4599, align 8
  br label %4600

; <label>:4600                                    ; preds = %4559, %4557
  %4601 = phi %union.rec* [ %4558, %4557 ], [ %4594, %4559 ]
  br label %4602

; <label>:4602                                    ; preds = %4600, %4552
  %4603 = phi %union.rec* [ %4553, %4552 ], [ %4601, %4600 ]
  %4604 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %4605 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4606 = call %union.rec* @MakeWord(i32 11, i8* %4604, %struct.FILE_POS* %4605)
  store %union.rec* %4606, %union.rec** %tmp, align 8
  %4607 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4608 = zext i8 %4607 to i32
  store i32 %4608, i32* @zz_size, align 4
  %4609 = sext i32 %4608 to i64
  %4610 = icmp uge i64 %4609, 265
  br i1 %4610, label %4611, label %4614

; <label>:4611                                    ; preds = %4602
  %4612 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4613 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %4612)
  br label %4639

; <label>:4614                                    ; preds = %4602
  %4615 = load i32, i32* @zz_size, align 4
  %4616 = sext i32 %4615 to i64
  %4617 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4616
  %4618 = load %union.rec*, %union.rec** %4617, align 8
  %4619 = icmp eq %union.rec* %4618, null
  br i1 %4619, label %4620, label %4624

; <label>:4620                                    ; preds = %4614
  %4621 = load i32, i32* @zz_size, align 4
  %4622 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4623 = call %union.rec* @GetMemory(i32 %4621, %struct.FILE_POS* %4622)
  store %union.rec* %4623, %union.rec** @zz_hold, align 8
  br label %4638

; <label>:4624                                    ; preds = %4614
  %4625 = load i32, i32* @zz_size, align 4
  %4626 = sext i32 %4625 to i64
  %4627 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4626
  %4628 = load %union.rec*, %union.rec** %4627, align 8
  store %union.rec* %4628, %union.rec** @zz_hold, align 8
  store %union.rec* %4628, %union.rec** @zz_hold, align 8
  %4629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4630 = bitcast %union.rec* %4629 to %struct.word_type*
  %4631 = getelementptr inbounds %struct.word_type, %struct.word_type* %4630, i32 0, i32 0
  %4632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4631, i32 0, i64 0
  %4633 = getelementptr inbounds %struct.LIST, %struct.LIST* %4632, i32 0, i32 0
  %4634 = load %union.rec*, %union.rec** %4633, align 8
  %4635 = load i32, i32* @zz_size, align 4
  %4636 = sext i32 %4635 to i64
  %4637 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4636
  store %union.rec* %4634, %union.rec** %4637, align 8
  br label %4638

; <label>:4638                                    ; preds = %4624, %4620
  br label %4639

; <label>:4639                                    ; preds = %4638, %4611
  %4640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4641 = bitcast %union.rec* %4640 to %struct.word_type*
  %4642 = getelementptr inbounds %struct.word_type, %struct.word_type* %4641, i32 0, i32 1
  %4643 = bitcast %union.FIRST_UNION* %4642 to %struct.anon*
  %4644 = getelementptr inbounds %struct.anon, %struct.anon* %4643, i32 0, i32 0
  store i8 0, i8* %4644, align 1
  %4645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4647 = bitcast %union.rec* %4646 to %struct.word_type*
  %4648 = getelementptr inbounds %struct.word_type, %struct.word_type* %4647, i32 0, i32 0
  %4649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4648, i32 0, i64 1
  %4650 = getelementptr inbounds %struct.LIST, %struct.LIST* %4649, i32 0, i32 1
  store %union.rec* %4645, %union.rec** %4650, align 8
  %4651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4652 = bitcast %union.rec* %4651 to %struct.word_type*
  %4653 = getelementptr inbounds %struct.word_type, %struct.word_type* %4652, i32 0, i32 0
  %4654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4653, i32 0, i64 1
  %4655 = getelementptr inbounds %struct.LIST, %struct.LIST* %4654, i32 0, i32 0
  store %union.rec* %4645, %union.rec** %4655, align 8
  %4656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4657 = bitcast %union.rec* %4656 to %struct.word_type*
  %4658 = getelementptr inbounds %struct.word_type, %struct.word_type* %4657, i32 0, i32 0
  %4659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4658, i32 0, i64 0
  %4660 = getelementptr inbounds %struct.LIST, %struct.LIST* %4659, i32 0, i32 1
  store %union.rec* %4645, %union.rec** %4660, align 8
  %4661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4662 = bitcast %union.rec* %4661 to %struct.word_type*
  %4663 = getelementptr inbounds %struct.word_type, %struct.word_type* %4662, i32 0, i32 0
  %4664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4663, i32 0, i64 0
  %4665 = getelementptr inbounds %struct.LIST, %struct.LIST* %4664, i32 0, i32 0
  store %union.rec* %4645, %union.rec** %4665, align 8
  store %union.rec* %4645, %union.rec** @xx_link, align 8
  %4666 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4666, %union.rec** @zz_res, align 8
  %4667 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %4667, %union.rec** @zz_hold, align 8
  %4668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4669 = icmp eq %union.rec* %4668, null
  br i1 %4669, label %4670, label %4672

; <label>:4670                                    ; preds = %4639
  %4671 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4720

; <label>:4672                                    ; preds = %4639
  %4673 = load %union.rec*, %union.rec** @zz_res, align 8
  %4674 = icmp eq %union.rec* %4673, null
  br i1 %4674, label %4675, label %4677

; <label>:4675                                    ; preds = %4672
  %4676 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4718

; <label>:4677                                    ; preds = %4672
  %4678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4679 = bitcast %union.rec* %4678 to %struct.word_type*
  %4680 = getelementptr inbounds %struct.word_type, %struct.word_type* %4679, i32 0, i32 0
  %4681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4680, i32 0, i64 0
  %4682 = getelementptr inbounds %struct.LIST, %struct.LIST* %4681, i32 0, i32 0
  %4683 = load %union.rec*, %union.rec** %4682, align 8
  store %union.rec* %4683, %union.rec** @zz_tmp, align 8
  %4684 = load %union.rec*, %union.rec** @zz_res, align 8
  %4685 = bitcast %union.rec* %4684 to %struct.word_type*
  %4686 = getelementptr inbounds %struct.word_type, %struct.word_type* %4685, i32 0, i32 0
  %4687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4686, i32 0, i64 0
  %4688 = getelementptr inbounds %struct.LIST, %struct.LIST* %4687, i32 0, i32 0
  %4689 = load %union.rec*, %union.rec** %4688, align 8
  %4690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4691 = bitcast %union.rec* %4690 to %struct.word_type*
  %4692 = getelementptr inbounds %struct.word_type, %struct.word_type* %4691, i32 0, i32 0
  %4693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4692, i32 0, i64 0
  %4694 = getelementptr inbounds %struct.LIST, %struct.LIST* %4693, i32 0, i32 0
  store %union.rec* %4689, %union.rec** %4694, align 8
  %4695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4696 = load %union.rec*, %union.rec** @zz_res, align 8
  %4697 = bitcast %union.rec* %4696 to %struct.word_type*
  %4698 = getelementptr inbounds %struct.word_type, %struct.word_type* %4697, i32 0, i32 0
  %4699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4698, i32 0, i64 0
  %4700 = getelementptr inbounds %struct.LIST, %struct.LIST* %4699, i32 0, i32 0
  %4701 = load %union.rec*, %union.rec** %4700, align 8
  %4702 = bitcast %union.rec* %4701 to %struct.word_type*
  %4703 = getelementptr inbounds %struct.word_type, %struct.word_type* %4702, i32 0, i32 0
  %4704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4703, i32 0, i64 0
  %4705 = getelementptr inbounds %struct.LIST, %struct.LIST* %4704, i32 0, i32 1
  store %union.rec* %4695, %union.rec** %4705, align 8
  %4706 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4707 = load %union.rec*, %union.rec** @zz_res, align 8
  %4708 = bitcast %union.rec* %4707 to %struct.word_type*
  %4709 = getelementptr inbounds %struct.word_type, %struct.word_type* %4708, i32 0, i32 0
  %4710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4709, i32 0, i64 0
  %4711 = getelementptr inbounds %struct.LIST, %struct.LIST* %4710, i32 0, i32 0
  store %union.rec* %4706, %union.rec** %4711, align 8
  %4712 = load %union.rec*, %union.rec** @zz_res, align 8
  %4713 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4714 = bitcast %union.rec* %4713 to %struct.word_type*
  %4715 = getelementptr inbounds %struct.word_type, %struct.word_type* %4714, i32 0, i32 0
  %4716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4715, i32 0, i64 0
  %4717 = getelementptr inbounds %struct.LIST, %struct.LIST* %4716, i32 0, i32 1
  store %union.rec* %4712, %union.rec** %4717, align 8
  br label %4718

; <label>:4718                                    ; preds = %4677, %4675
  %4719 = phi %union.rec* [ %4676, %4675 ], [ %4712, %4677 ]
  br label %4720

; <label>:4720                                    ; preds = %4718, %4670
  %4721 = phi %union.rec* [ %4671, %4670 ], [ %4719, %4718 ]
  %4722 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %4722, %union.rec** @zz_res, align 8
  %4723 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %4723, %union.rec** @zz_hold, align 8
  %4724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4725 = icmp eq %union.rec* %4724, null
  br i1 %4725, label %4726, label %4728

; <label>:4726                                    ; preds = %4720
  %4727 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %4776

; <label>:4728                                    ; preds = %4720
  %4729 = load %union.rec*, %union.rec** @zz_res, align 8
  %4730 = icmp eq %union.rec* %4729, null
  br i1 %4730, label %4731, label %4733

; <label>:4731                                    ; preds = %4728
  %4732 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %4774

; <label>:4733                                    ; preds = %4728
  %4734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4735 = bitcast %union.rec* %4734 to %struct.word_type*
  %4736 = getelementptr inbounds %struct.word_type, %struct.word_type* %4735, i32 0, i32 0
  %4737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4736, i32 0, i64 1
  %4738 = getelementptr inbounds %struct.LIST, %struct.LIST* %4737, i32 0, i32 0
  %4739 = load %union.rec*, %union.rec** %4738, align 8
  store %union.rec* %4739, %union.rec** @zz_tmp, align 8
  %4740 = load %union.rec*, %union.rec** @zz_res, align 8
  %4741 = bitcast %union.rec* %4740 to %struct.word_type*
  %4742 = getelementptr inbounds %struct.word_type, %struct.word_type* %4741, i32 0, i32 0
  %4743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4742, i32 0, i64 1
  %4744 = getelementptr inbounds %struct.LIST, %struct.LIST* %4743, i32 0, i32 0
  %4745 = load %union.rec*, %union.rec** %4744, align 8
  %4746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4747 = bitcast %union.rec* %4746 to %struct.word_type*
  %4748 = getelementptr inbounds %struct.word_type, %struct.word_type* %4747, i32 0, i32 0
  %4749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4748, i32 0, i64 1
  %4750 = getelementptr inbounds %struct.LIST, %struct.LIST* %4749, i32 0, i32 0
  store %union.rec* %4745, %union.rec** %4750, align 8
  %4751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4752 = load %union.rec*, %union.rec** @zz_res, align 8
  %4753 = bitcast %union.rec* %4752 to %struct.word_type*
  %4754 = getelementptr inbounds %struct.word_type, %struct.word_type* %4753, i32 0, i32 0
  %4755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4754, i32 0, i64 1
  %4756 = getelementptr inbounds %struct.LIST, %struct.LIST* %4755, i32 0, i32 0
  %4757 = load %union.rec*, %union.rec** %4756, align 8
  %4758 = bitcast %union.rec* %4757 to %struct.word_type*
  %4759 = getelementptr inbounds %struct.word_type, %struct.word_type* %4758, i32 0, i32 0
  %4760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4759, i32 0, i64 1
  %4761 = getelementptr inbounds %struct.LIST, %struct.LIST* %4760, i32 0, i32 1
  store %union.rec* %4751, %union.rec** %4761, align 8
  %4762 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4763 = load %union.rec*, %union.rec** @zz_res, align 8
  %4764 = bitcast %union.rec* %4763 to %struct.word_type*
  %4765 = getelementptr inbounds %struct.word_type, %struct.word_type* %4764, i32 0, i32 0
  %4766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4765, i32 0, i64 1
  %4767 = getelementptr inbounds %struct.LIST, %struct.LIST* %4766, i32 0, i32 0
  store %union.rec* %4762, %union.rec** %4767, align 8
  %4768 = load %union.rec*, %union.rec** @zz_res, align 8
  %4769 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %4770 = bitcast %union.rec* %4769 to %struct.word_type*
  %4771 = getelementptr inbounds %struct.word_type, %struct.word_type* %4770, i32 0, i32 0
  %4772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4771, i32 0, i64 1
  %4773 = getelementptr inbounds %struct.LIST, %struct.LIST* %4772, i32 0, i32 1
  store %union.rec* %4768, %union.rec** %4773, align 8
  br label %4774

; <label>:4774                                    ; preds = %4733, %4731
  %4775 = phi %union.rec* [ %4732, %4731 ], [ %4768, %4733 ]
  br label %4776

; <label>:4776                                    ; preds = %4774, %4726
  %4777 = phi %union.rec* [ %4727, %4726 ], [ %4775, %4774 ]
  %4778 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %4779 = zext i8 %4778 to i32
  store i32 %4779, i32* @zz_size, align 4
  %4780 = sext i32 %4779 to i64
  %4781 = icmp uge i64 %4780, 265
  br i1 %4781, label %4782, label %4785

; <label>:4782                                    ; preds = %4776
  %4783 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4784 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %4783)
  br label %4810

; <label>:4785                                    ; preds = %4776
  %4786 = load i32, i32* @zz_size, align 4
  %4787 = sext i32 %4786 to i64
  %4788 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4787
  %4789 = load %union.rec*, %union.rec** %4788, align 8
  %4790 = icmp eq %union.rec* %4789, null
  br i1 %4790, label %4791, label %4795

; <label>:4791                                    ; preds = %4785
  %4792 = load i32, i32* @zz_size, align 4
  %4793 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4794 = call %union.rec* @GetMemory(i32 %4792, %struct.FILE_POS* %4793)
  store %union.rec* %4794, %union.rec** @zz_hold, align 8
  br label %4809

; <label>:4795                                    ; preds = %4785
  %4796 = load i32, i32* @zz_size, align 4
  %4797 = sext i32 %4796 to i64
  %4798 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4797
  %4799 = load %union.rec*, %union.rec** %4798, align 8
  store %union.rec* %4799, %union.rec** @zz_hold, align 8
  store %union.rec* %4799, %union.rec** @zz_hold, align 8
  %4800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4801 = bitcast %union.rec* %4800 to %struct.word_type*
  %4802 = getelementptr inbounds %struct.word_type, %struct.word_type* %4801, i32 0, i32 0
  %4803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4802, i32 0, i64 0
  %4804 = getelementptr inbounds %struct.LIST, %struct.LIST* %4803, i32 0, i32 0
  %4805 = load %union.rec*, %union.rec** %4804, align 8
  %4806 = load i32, i32* @zz_size, align 4
  %4807 = sext i32 %4806 to i64
  %4808 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %4807
  store %union.rec* %4805, %union.rec** %4808, align 8
  br label %4809

; <label>:4809                                    ; preds = %4795, %4791
  br label %4810

; <label>:4810                                    ; preds = %4809, %4782
  %4811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4812 = bitcast %union.rec* %4811 to %struct.word_type*
  %4813 = getelementptr inbounds %struct.word_type, %struct.word_type* %4812, i32 0, i32 1
  %4814 = bitcast %union.FIRST_UNION* %4813 to %struct.anon*
  %4815 = getelementptr inbounds %struct.anon, %struct.anon* %4814, i32 0, i32 0
  store i8 82, i8* %4815, align 1
  %4816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4818 = bitcast %union.rec* %4817 to %struct.word_type*
  %4819 = getelementptr inbounds %struct.word_type, %struct.word_type* %4818, i32 0, i32 0
  %4820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4819, i32 0, i64 1
  %4821 = getelementptr inbounds %struct.LIST, %struct.LIST* %4820, i32 0, i32 1
  store %union.rec* %4816, %union.rec** %4821, align 8
  %4822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4823 = bitcast %union.rec* %4822 to %struct.word_type*
  %4824 = getelementptr inbounds %struct.word_type, %struct.word_type* %4823, i32 0, i32 0
  %4825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4824, i32 0, i64 1
  %4826 = getelementptr inbounds %struct.LIST, %struct.LIST* %4825, i32 0, i32 0
  store %union.rec* %4816, %union.rec** %4826, align 8
  %4827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4828 = bitcast %union.rec* %4827 to %struct.word_type*
  %4829 = getelementptr inbounds %struct.word_type, %struct.word_type* %4828, i32 0, i32 0
  %4830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4829, i32 0, i64 0
  %4831 = getelementptr inbounds %struct.LIST, %struct.LIST* %4830, i32 0, i32 1
  store %union.rec* %4816, %union.rec** %4831, align 8
  %4832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %4833 = bitcast %union.rec* %4832 to %struct.word_type*
  %4834 = getelementptr inbounds %struct.word_type, %struct.word_type* %4833, i32 0, i32 0
  %4835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4834, i32 0, i64 0
  %4836 = getelementptr inbounds %struct.LIST, %struct.LIST* %4835, i32 0, i32 0
  store %union.rec* %4816, %union.rec** %4836, align 8
  store %union.rec* %4816, %union.rec** %env, align 8
  %4837 = load %union.rec*, %union.rec** %env, align 8
  %4838 = load %union.rec*, %union.rec** @current_moment, align 8
  call void @AttachEnv(%union.rec* %4837, %union.rec* %4838)
  ret void
}

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #2

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @AttachEnv(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @StartMoment() #0 {
  %res = alloca %union.rec*, align 8
  %1 = load %union.rec*, %union.rec** @current_moment, align 8
  %2 = icmp ne %union.rec* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = load %union.rec*, %union.rec** @current_moment, align 8
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = call %union.rec* @CopyObject(%union.rec* %7, %struct.FILE_POS* %8)
  store %union.rec* %9, %union.rec** %res, align 8
  %10 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %10
}

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
