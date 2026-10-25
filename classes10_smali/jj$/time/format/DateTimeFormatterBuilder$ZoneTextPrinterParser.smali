.class final Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
.super Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.source "DateTimeFormatterBuilder.java"


# static fields
.field private static final DST:I = 0x1

.field private static final GENERIC:I = 0x2

.field private static final STD:I

.field private static final cache:Ljava/util/Map;


# instance fields
.field private final cachedTree:Ljava/util/Map;

.field private final cachedTreeCI:Ljava/util/Map;

.field private final isGeneric:Z

.field private preferredZones:Ljava/util/Set;

.field private final textStyle:Ljj$/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljj$/time/format/TextStyle;Ljava/util/Set;Z)V
    .registers 8

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/format/TextStyle;

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    iput-boolean p3, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->isGeneric:Z

    if-eqz p2, :cond_63

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/ZoneId;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v1}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_63
    return-void
.end method

.method private getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .registers 16

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    sget-object v1, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v1, v3

    if-eqz v3, :cond_29

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v4, v3

    if-nez v3, :cond_27

    goto :goto_29

    :cond_27
    move-object v5, p1

    goto :goto_5c

    :cond_29
    :goto_29
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    nop

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v4, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v4, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    move-object v10, p1

    move-object v11, p1

    move-object v5, p1

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    if-nez v1, :cond_4f

    new-instance p1, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, p1

    :cond_4f
    invoke-interface {v1, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5c
    packed-switch p2, :pswitch_data_80

    iget-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    invoke-virtual {p1}, Ljj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    aget-object p1, v4, p1

    return-object p1

    :pswitch_6a  #0x1
    iget-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    invoke-virtual {p1}, Ljj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    aget-object p1, v4, p1

    return-object p1

    :pswitch_75  #0x0
    iget-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    invoke-virtual {p1}, Ljj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result p1

    add-int/2addr p1, v2

    aget-object p1, v4, p1

    return-object p1

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_75  #00000000
        :pswitch_6a  #00000001
    .end packed-switch
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneId;

    if-nez v0, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    invoke-virtual {v0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljj$/time/ZoneOffset;

    if-nez v2, :cond_83

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v2

    const/4 v3, 0x2

    iget-boolean v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->isGeneric:Z

    if-nez v4, :cond_78

    sget-object v4, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v4

    invoke-static {v2}, Ljj$/time/Instant;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljj$/time/zone/ZoneRules;->isDaylightSavings(Ljj$/time/Instant;)Z

    move-result v4

    move v3, v4

    goto :goto_78

    :cond_35
    sget-object v4, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_78

    sget-object v4, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_78

    sget-object v4, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v4

    sget-object v5, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljj$/time/LocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v6

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v7

    if-nez v7, :cond_78

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljj$/time/zone/ZoneRules;->isDaylightSavings(Ljj$/time/Instant;)Z

    move-result v7

    move v3, v7

    :cond_78
    :goto_78
    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_83

    move-object v1, v4

    :cond_83
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    return v2
.end method

.method protected getTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    sget-object v2, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    if-ne v1, v2, :cond_d

    invoke-super/range {p0 .. p1}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    return-object v1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    invoke-static {}, Ljj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v2, :cond_22

    iget-object v5, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    goto :goto_24

    :cond_22
    iget-object v5, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    :goto_24
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    if-eqz v9, :cond_4b

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_4b

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-object v7, v9

    if-nez v9, :cond_d0

    :cond_4b
    invoke-static/range {p1 .. p1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v7

    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5a
    const/4 v13, 0x2

    if-ge v11, v9, :cond_8b

    aget-object v14, v8, v11

    aget-object v15, v14, v10

    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6a

    const/16 v16, 0x0

    goto :goto_87

    :cond_6a
    invoke-virtual {v7, v15, v15}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v15, v1}, Ljj$/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v10, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    sget-object v12, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    if-ne v10, v12, :cond_7b

    const/4 v12, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v12, 0x2

    :goto_7c
    array-length v10, v14

    if-ge v12, v10, :cond_87

    aget-object v10, v14, v12

    invoke-virtual {v7, v10, v15}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v12, v12, 0x2

    goto :goto_7c

    :cond_87
    :goto_87
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_5a

    :cond_8b
    const/16 v16, 0x0

    iget-object v9, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v9, :cond_bf

    array-length v9, v8

    const/4 v10, 0x0

    :goto_93
    if-ge v10, v9, :cond_bf

    aget-object v11, v8, v10

    aget-object v12, v11, v16

    iget-object v14, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bc

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a8

    goto :goto_bc

    :cond_a8
    iget-object v14, v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    sget-object v15, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    if-ne v14, v15, :cond_b0

    const/4 v14, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v14, 0x2

    :goto_b1
    array-length v15, v11

    if-ge v14, v15, :cond_bc

    aget-object v15, v11, v14

    invoke-virtual {v7, v15, v12}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v14, v14, 0x2

    goto :goto_b1

    :cond_bc
    :goto_bc
    add-int/lit8 v10, v10, 0x1

    goto :goto_93

    :cond_bf
    new-instance v9, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    return-object v7
.end method
