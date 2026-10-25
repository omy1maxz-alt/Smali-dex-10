.class public Lorg/ocpsoft/prettytime/i18n/Resources_ja;
.super Ljava/util/ListResourceBundle;
.source "Resources_ja.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# instance fields
.field private final formatMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 93

    const-string v0, "CenturyPattern"

    const-string v1, "%n%u"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "CenturyFuturePrefix"

    const-string v3, "今から"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "CenturyFutureSuffix"

    const-string v5, "後"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "CenturyPastPrefix"

    const-string v7, ""

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "CenturyPastSuffix"

    const-string v9, "前"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v10, "CenturySingularName"

    const-string v11, "世紀"

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const-string v12, "CenturyPluralName"

    filled-new-array {v12, v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "DayPattern"

    filled-new-array {v12, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "DayFuturePrefix"

    filled-new-array {v13, v3}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "DayFutureSuffix"

    filled-new-array {v14, v5}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "DayPastPrefix"

    filled-new-array {v15, v7}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, "DayPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    const-string v0, "DaySingularName"

    move-object/from16 v18, v2

    const-string v2, "日"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    const-string v0, "DayPluralName"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DecadePattern"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v0

    const-string v0, "DecadeFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    const-string v0, "DecadeFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    const-string v0, "DecadePastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    const-string v0, "DecadePastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    const-string v0, "DecadeSingularName"

    move-object/from16 v25, v2

    const-string v2, "年"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    const-string v0, "DecadePluralName"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    const-string v0, "HourPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    const-string v0, "HourFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    const-string v0, "HourFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    const-string v0, "HourPastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    const-string v0, "HourPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    const-string v0, "HourSingularName"

    move-object/from16 v33, v4

    const-string v4, "時間"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    const-string v0, "HourPluralName"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "JustNowPattern"

    move-object/from16 v35, v0

    const-string v0, "%u"

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "JustNowFuturePrefix"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v36, v0

    const-string v0, "JustNowFutureSuffix"

    move-object/from16 v37, v4

    const-string v4, "すぐ"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "JustNowPastPrefix"

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v38, v0

    const-string v0, "JustNowPastSuffix"

    move-object/from16 v39, v4

    const-string v4, "たった今"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "JustNowSingularName"

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v40, v0

    const-string v0, "JustNowPluralName"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v41, v0

    const-string v0, "MillenniumPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v42, v0

    const-string v0, "MillenniumFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v43, v0

    const-string v0, "MillenniumFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v44, v0

    const-string v0, "MillenniumPastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v45, v0

    const-string v0, "MillenniumPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v46, v0

    const-string v0, "MillenniumSingularName"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v47, v0

    const-string v0, "MillenniumPluralName"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v48, v0

    const-string v0, "MillisecondPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v49, v0

    const-string v0, "MillisecondFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v50, v0

    const-string v0, "MillisecondFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v51, v0

    const-string v0, "MillisecondPastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v52, v0

    const-string v0, "MillisecondPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v53, v0

    const-string v0, "MillisecondSingularName"

    move-object/from16 v54, v4

    const-string v4, "ミリ秒"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v55, v0

    const-string v0, "MillisecondPluralName"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "MinutePattern"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v56, v0

    const-string v0, "MinuteFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v57, v0

    const-string v0, "MinuteFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v58, v0

    const-string v0, "MinutePastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v59, v0

    const-string v0, "MinutePastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v60, v0

    const-string v0, "MinuteSingularName"

    move-object/from16 v61, v4

    const-string v4, "分"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v62, v0

    const-string v0, "MinutePluralName"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "MonthPattern"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v63, v0

    const-string v0, "MonthFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v64, v0

    const-string v0, "MonthFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v65, v0

    const-string v0, "MonthPastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v66, v0

    const-string v0, "MonthPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v67, v0

    const-string v0, "MonthSingularName"

    move-object/from16 v68, v4

    const-string v4, "ヶ月"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v69, v0

    const-string v0, "MonthPluralName"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "SecondPattern"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v70, v0

    const-string v0, "SecondFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v71, v0

    const-string v0, "SecondFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v72, v0

    const-string v0, "SecondPastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v73, v0

    const-string v0, "SecondPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v74, v0

    const-string v0, "SecondSingularName"

    move-object/from16 v75, v4

    const-string v4, "秒"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v76, v0

    const-string v0, "SecondPluralName"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "WeekPattern"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v77, v0

    const-string v0, "WeekFuturePrefix"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v78, v0

    const-string v0, "WeekFutureSuffix"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v79, v0

    const-string v0, "WeekPastPrefix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v80, v0

    const-string v0, "WeekPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v81, v0

    const-string v0, "WeekSingularName"

    move-object/from16 v82, v4

    const-string v4, "週間"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v83, v0

    const-string v0, "WeekPluralName"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "YearPattern"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "YearFuturePrefix"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "YearFutureSuffix"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "YearPastPrefix"

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v84, v0

    const-string v0, "YearPastSuffix"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const-string v9, "YearSingularName"

    filled-new-array {v9, v2}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v85, v0

    const-string v0, "YearPluralName"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "AbstractTimeUnitPattern"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v86

    const-string v2, "AbstractTimeUnitFuturePrefix"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v87

    const-string v2, "AbstractTimeUnitFutureSuffix"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v88

    const-string v2, "AbstractTimeUnitPastPrefix"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v89

    const-string v2, "AbstractTimeUnitPastSuffix"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v90

    const-string v2, "AbstractTimeUnitSingularName"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v91

    const-string v2, "AbstractTimeUnitPluralName"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v92

    move-object/from16 v2, v82

    move-object/from16 v82, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v11

    move-object v11, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v28

    move-object/from16 v28, v34

    move-object/from16 v34, v40

    move-object/from16 v40, v45

    move-object/from16 v45, v50

    move-object/from16 v50, v56

    move-object/from16 v56, v62

    move-object/from16 v62, v67

    move-object/from16 v67, v72

    move-object/from16 v72, v2

    move-object v7, v10

    move-object v10, v13

    move-object/from16 v13, v17

    move-object/from16 v2, v18

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v26, v31

    move-object/from16 v27, v32

    move-object/from16 v31, v37

    move-object/from16 v32, v38

    move-object/from16 v37, v42

    move-object/from16 v38, v43

    move-object/from16 v42, v47

    move-object/from16 v43, v48

    move-object/from16 v47, v52

    move-object/from16 v48, v53

    move-object/from16 v52, v57

    move-object/from16 v53, v58

    move-object/from16 v57, v63

    move-object/from16 v58, v68

    move-object/from16 v63, v69

    move-object/from16 v68, v73

    move-object/from16 v69, v74

    move-object/from16 v73, v78

    move-object/from16 v74, v79

    move-object/from16 v78, v84

    move-object/from16 v79, v1

    move-object/from16 v84, v9

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v24

    move-object/from16 v24, v29

    move-object/from16 v29, v35

    move-object/from16 v35, v54

    move-object/from16 v54, v59

    move-object/from16 v59, v64

    move-object/from16 v64, v70

    move-object/from16 v70, v76

    move-object/from16 v76, v81

    move-object/from16 v81, v4

    move-object/from16 v4, v33

    move-object/from16 v33, v39

    move-object/from16 v39, v44

    move-object/from16 v44, v49

    move-object/from16 v49, v55

    move-object/from16 v55, v60

    move-object/from16 v60, v65

    move-object/from16 v65, v75

    move-object/from16 v75, v80

    move-object/from16 v80, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v25

    move-object/from16 v25, v30

    move-object/from16 v30, v36

    move-object/from16 v36, v41

    move-object/from16 v41, v46

    move-object/from16 v46, v51

    move-object/from16 v51, v61

    move-object/from16 v61, v66

    move-object/from16 v66, v71

    move-object/from16 v71, v77

    move-object/from16 v77, v83

    move-object/from16 v83, v85

    move-object/from16 v85, v0

    filled-new-array/range {v2 .. v92}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->formatMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 4

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->formatMap:Ljava/util/Map;

    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_ja$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$$ExternalSyntheticLambda0;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_ja;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object v0
.end method

.method synthetic lambda$getFormatFor$0$org-ocpsoft-prettytime-i18n-Resources_ja(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 3

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    return-object v0
.end method
