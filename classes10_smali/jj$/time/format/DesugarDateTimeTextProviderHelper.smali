.class public Ljj$/time/format/DesugarDateTimeTextProviderHelper;
.super Ljava/lang/Object;
.source "DesugarDateTimeTextProviderHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeStandaloneDayOfWeekName(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 13

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    long-to-int v5, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x7e0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static computeStandaloneMonthName(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 13

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    long-to-int v4, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static firstCodePoint(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static lastCodePoint(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static populateDayOfWeekStyleMap(Ljava/util/Map;Ljava/text/DateFormatSymbols;Ljava/util/Locale;)V
    .registers 15

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "cccc"

    const-string v5, "ccc"

    sget-object v6, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    if-eq p2, v6, :cond_23

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    if-ne p2, v6, :cond_21

    goto :goto_23

    :cond_21
    const/4 v6, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v6, 0x1

    :goto_24
    const-wide/16 v7, 0x1

    :goto_26
    int-to-long v9, v0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_58

    invoke-static {v7, v8, v4, p2}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->computeStandaloneDayOfWeekName(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz v6, :cond_42

    invoke-static {v9}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->lastCodePoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_46

    :cond_42
    invoke-static {v9}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->firstCodePoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_46
    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v8, v5, p2}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->computeStandaloneDayOfWeekName(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    goto :goto_26

    :cond_58
    if-lez v0, :cond_78

    sget-object v7, Ljj$/time/format/TextStyle;->FULL_STANDALONE:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljj$/time/format/TextStyle;->NARROW_STANDALONE:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljj$/time/format/TextStyle;->SHORT_STANDALONE:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    return-void
.end method

.method public static populateMonthStyleMap(Ljava/util/Map;Ljava/text/DateFormatSymbols;Ljava/util/Locale;)V
    .registers 14

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "LLLL"

    const-string v5, "LLL"

    const-wide/16 v6, 0x1

    :goto_1a
    int-to-long v8, v0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_44

    invoke-static {v6, v7, v4, p2}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->computeStandaloneMonthName(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->firstCodePoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7, v5, p2}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->computeStandaloneMonthName(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_1a

    :cond_44
    if-lez v0, :cond_64

    sget-object v6, Ljj$/time/format/TextStyle;->FULL_STANDALONE:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljj$/time/format/TextStyle;->NARROW_STANDALONE:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljj$/time/format/TextStyle;->SHORT_STANDALONE:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    return-void
.end method
