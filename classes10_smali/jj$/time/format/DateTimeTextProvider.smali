.class Ljj$/time/format/DateTimeTextProvider;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;

.field private static final COMPARATOR:Ljava/util/Comparator;

.field private static final INSTANCE:Ljj$/time/format/DateTimeTextProvider;


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOMPARATOR()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Ljj$/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcreateEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000  # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljj$/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljj$/time/format/DateTimeTextProvider$1;

    invoke-direct {v0}, Ljj$/time/format/DateTimeTextProvider$1;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Ljj$/time/format/DateTimeTextProvider;

    invoke-direct {v0}, Ljj$/time/format/DateTimeTextProvider;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeTextProvider;->INSTANCE:Ljj$/time/format/DateTimeTextProvider;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createStore(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v1, :cond_5d

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1c
    array-length v6, v4

    if-ge v5, v6, :cond_42

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3f

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-static {v7}, Ljj$/time/format/DateTimeTextProvider;->firstCodePoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_42
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_57

    sget-object v5, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    new-instance v5, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v5, v0}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v5

    :cond_5d
    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-ne p1, v1, :cond_6e

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->populateMonthStyleMap(Ljava/util/Map;Ljava/text/DateFormatSymbols;Ljava/util/Locale;)V

    new-instance v2, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v0}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v2

    :cond_6e
    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    if-ne p1, v1, :cond_7f

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljj$/time/format/DesugarDateTimeTextProviderHelper;->populateDayOfWeekStyleMap(Ljava/util/Map;Ljava/text/DateFormatSymbols;Ljava/util/Locale;)V

    new-instance v2, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v0}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v2

    :cond_7f
    sget-object v1, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    if-ne p1, v1, :cond_d7

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_96
    array-length v6, v4

    if-ge v5, v6, :cond_bc

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b9

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-static {v7}, Ljj$/time/format/DateTimeTextProvider;->firstCodePoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b9
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    :cond_bc
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d1

    sget-object v5, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    new-instance v5, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v5, v0}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v5

    :cond_d7
    const-string v1, ""

    return-object v1
.end method

.method private findStore(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 6

    invoke-static {p1, p2}, Ljj$/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    sget-object v1, Ljj$/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    invoke-direct {p0, p1, p2}, Ljj$/time/format/DateTimeTextProvider;->createStore(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljj$/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljj$/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1b
    return-object v1
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

.method static getInstance()Ljj$/time/format/DateTimeTextProvider;
    .registers 1

    sget-object v0, Ljj$/time/format/DateTimeTextProvider;->INSTANCE:Ljj$/time/format/DateTimeTextProvider;

    return-object v0
.end method

.method private static toWeekDay(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x7

    return v0

    :cond_5
    add-int/lit8 v0, p0, -0x1

    return v0
.end method


# virtual methods
.method public getText(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 14

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_b

    instance-of v0, p2, Ljj$/time/temporal/ChronoField;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :cond_b
    :goto_b
    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeTextProvider;->getText(Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method public getText(Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    invoke-direct {p0, p1, p5}, Ljj$/time/format/DateTimeTextProvider;->findStore(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2, p3, p4}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTextIterator(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 6

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_b

    instance-of v0, p2, Ljj$/time/temporal/ChronoField;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :cond_b
    :goto_b
    invoke-virtual {p0, p2, p3, p4}, Ljj$/time/format/DateTimeTextProvider;->getTextIterator(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTextIterator(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 6

    invoke-direct {p0, p1, p3}, Ljj$/time/format/DateTimeTextProvider;->findStore(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljj$/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method
