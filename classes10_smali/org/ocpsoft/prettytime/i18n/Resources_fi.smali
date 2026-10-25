.class public Lorg/ocpsoft/prettytime/i18n/Resources_fi;
.super Ljava/util/ListResourceBundle;
.source "Resources_fi.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# static fields
.field private static CONTENTS:[[Ljava/lang/Object; = null

.field private static final tolerance:I = 0x32


# instance fields
.field private final formatMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 86

    const-string v0, "JustNowPattern"

    const-string v1, "%u"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "JustNowPastSingularName"

    const-string v3, "hetki"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "JustNowFutureSingularName"

    const-string v4, "hetken"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "JustNowPastSuffix"

    const-string v5, "sitten"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "JustNowFutureSuffix"

    const-string v7, "päästä"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "MillisecondPattern"

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "MillisecondPluralPattern"

    const-string v10, "%n %u"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v11, "MillisecondPastSingularName"

    const-string v12, "millisekunti"

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "MillisecondPastPluralName"

    const-string v13, "millisekuntia"

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "MillisecondFutureSingularName"

    const-string v14, "millisekunnin"

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "MillisecondPastSuffix"

    filled-new-array {v14, v5}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "MillisecondFutureSuffix"

    filled-new-array {v15, v7}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, "SecondPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    const-string v0, "SecondPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    const-string v0, "SecondPastSingularName"

    move-object/from16 v19, v2

    const-string v2, "sekunti"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "SecondPastPluralName"

    move-object/from16 v20, v0

    const-string v0, "sekuntia"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "SecondFutureSingularName"

    move-object/from16 v21, v0

    const-string v0, "sekunnin"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "SecondPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v0

    const-string v0, "SecondFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    const-string v0, "MinutePattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    const-string v0, "MinutePluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    const-string v0, "MinutePastSingularName"

    move-object/from16 v26, v2

    const-string v2, "minuutti"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MinutePastPluralName"

    move-object/from16 v27, v0

    const-string v0, "minuuttia"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MinuteFutureSingularName"

    move-object/from16 v28, v0

    const-string v0, "minuutin"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MinutePastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v0

    const-string v0, "MinuteFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    const-string v0, "HourPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    const-string v0, "HourPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    const-string v0, "HourPastSingularName"

    move-object/from16 v33, v2

    const-string v2, "tunti"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "HourPastPluralName"

    move-object/from16 v34, v0

    const-string v0, "tuntia"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "HourFutureSingularName"

    move-object/from16 v35, v0

    const-string v0, "tunnin"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "HourPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v36, v0

    const-string v0, "HourFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v37, v0

    const-string v0, "DayPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v38, v0

    const-string v0, "DayPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v39, v0

    const-string v0, "DayPastSingularName"

    move-object/from16 v40, v2

    const-string v2, "eilen"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DayPastPluralName"

    move-object/from16 v41, v0

    const-string v0, "päivää"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DayFutureSingularName"

    move-object/from16 v42, v0

    const-string v0, "huomenna"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DayFuturePluralName"

    move-object/from16 v43, v0

    const-string v0, "päivän"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DayPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v44, v0

    const-string v0, "DayFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v45, v0

    const-string v0, "WeekPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v46, v0

    const-string v0, "WeekPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v47, v0

    const-string v0, "WeekPastSingularName"

    move-object/from16 v48, v2

    const-string v2, "viikko"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "WeekPastPluralName"

    move-object/from16 v49, v0

    const-string v0, "viikkoa"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "WeekFutureSingularName"

    move-object/from16 v50, v0

    const-string v0, "viikon"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v51, v2

    const-string v2, "WeekFuturePluralName"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "WeekPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v52, v0

    const-string v0, "WeekFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v53, v0

    const-string v0, "MonthPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v54, v0

    const-string v0, "MonthPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v55, v0

    const-string v0, "MonthPastSingularName"

    move-object/from16 v56, v2

    const-string v2, "kuukausi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MonthPastPluralName"

    move-object/from16 v57, v0

    const-string v0, "kuukautta"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MonthFutureSingularName"

    move-object/from16 v58, v0

    const-string v0, "kuukauden"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MonthPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v59, v0

    const-string v0, "MonthFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v60, v0

    const-string v0, "YearPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v61, v0

    const-string v0, "YearPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v62, v0

    const-string v0, "YearPastSingularName"

    move-object/from16 v63, v2

    const-string v2, "vuosi"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "YearPastPluralName"

    move-object/from16 v64, v0

    const-string v0, "vuotta"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "YearFutureSingularName"

    move-object/from16 v65, v0

    const-string v0, "vuoden"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "YearPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v66, v0

    const-string v0, "YearFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v67, v0

    const-string v0, "DecadePattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v68, v0

    const-string v0, "DecadePluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v69, v0

    const-string v0, "DecadePastSingularName"

    move-object/from16 v70, v2

    const-string v2, "vuosikymmen"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DecadePastPluralName"

    move-object/from16 v71, v0

    const-string v0, "vuosikymmentä"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DecadeFutureSingularName"

    move-object/from16 v72, v0

    const-string v0, "vuosikymmenen"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DecadePastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v73, v0

    const-string v0, "DecadeFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v74, v0

    const-string v0, "CenturyPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v75, v0

    const-string v0, "CenturyPluralPattern"

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v76, v0

    const-string v0, "CenturyPastSingularName"

    move-object/from16 v77, v2

    const-string v2, "vuosisata"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CenturyPastPluralName"

    move-object/from16 v78, v0

    const-string v0, "vuosisataa"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CenturyFutureSingularName"

    move-object/from16 v79, v0

    const-string v0, "vuosisadan"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CenturyPastSuffix"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v80, v0

    const-string v0, "CenturyFutureSuffix"

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v81, v0

    const-string v0, "MillenniumPattern"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MillenniumPluralPattern"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v10, "MillenniumPastSingularName"

    move-object/from16 v82, v0

    const-string v0, "vuosituhat"

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v10, "MillenniumPastPluralName"

    move-object/from16 v83, v0

    const-string v0, "vuosituhatta"

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v10, "MillenniumFutureSingularName"

    move-object/from16 v84, v0

    const-string v0, "vuosituhannen"

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v10, "MillenniumPastSuffix"

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v10, "MillenniumFutureSuffix"

    filled-new-array {v10, v7}, [Ljava/lang/Object;

    move-result-object v85

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v31, v35

    move-object/from16 v32, v36

    move-object/from16 v35, v38

    move-object/from16 v36, v39

    move-object/from16 v38, v42

    move-object/from16 v39, v43

    move-object/from16 v42, v45

    move-object/from16 v43, v46

    move-object/from16 v45, v49

    move-object/from16 v46, v50

    move-object/from16 v50, v53

    move-object/from16 v49, v56

    move-object/from16 v53, v57

    move-object/from16 v57, v60

    move-object/from16 v56, v63

    move-object/from16 v60, v64

    move-object/from16 v64, v67

    move-object/from16 v63, v70

    move-object/from16 v67, v71

    move-object/from16 v71, v74

    move-object/from16 v70, v77

    move-object/from16 v74, v78

    move-object/from16 v78, v81

    move-object/from16 v81, v83

    move-object/from16 v83, v0

    move-object/from16 v77, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v26

    move-object/from16 v26, v33

    move-object/from16 v33, v40

    move-object/from16 v40, v44

    move-object/from16 v44, v47

    move-object/from16 v47, v51

    move-object/from16 v51, v54

    move-object/from16 v54, v58

    move-object/from16 v58, v61

    move-object/from16 v61, v65

    move-object/from16 v65, v68

    move-object/from16 v68, v72

    move-object/from16 v72, v75

    move-object/from16 v75, v79

    move-object/from16 v79, v82

    move-object/from16 v82, v84

    move-object/from16 v84, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v23

    move-object/from16 v23, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v34

    move-object/from16 v34, v37

    move-object/from16 v37, v41

    move-object/from16 v41, v48

    move-object/from16 v48, v52

    move-object/from16 v52, v55

    move-object/from16 v55, v59

    move-object/from16 v59, v62

    move-object/from16 v62, v66

    move-object/from16 v66, v69

    move-object/from16 v69, v73

    move-object/from16 v73, v76

    move-object/from16 v76, v80

    move-object/from16 v80, v1

    filled-new-array/range {v2 .. v85}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->CONTENTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->formatMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->CONTENTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 4

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->formatMap:Ljava/util/Map;

    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$$ExternalSyntheticLambda0;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_fi;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object v0
.end method

.method synthetic lambda$getFormatFor$0$org-ocpsoft-prettytime-i18n-Resources_fi(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 3

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    return-object v0
.end method
