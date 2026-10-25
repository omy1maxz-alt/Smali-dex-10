.class Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field private static volatile cachedPrefixTree:Ljava/util/Map$Entry;

.field private static volatile cachedPrefixTreeCI:Ljava/util/Map$Entry;


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Ljj$/time/temporal/TemporalQuery;


# direct methods
.method constructor <init>(Ljj$/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljj$/time/temporal/TemporalQuery;

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-void
.end method

.method private parseOffsetBased(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I
    .registers 12

    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p4, v1, :cond_1a

    invoke-static {v0}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V

    return p4

    :cond_1a
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_61

    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_61

    :cond_2f
    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->copy()Ljj$/time/format/DateTimeParseContext;

    move-result-object v1

    invoke-virtual {p5, v1, p2, p4}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    if-gez v2, :cond_47

    :try_start_39
    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    if-ne p5, v3, :cond_3f

    not-int v3, p3

    return v3

    :cond_3f
    invoke-static {v0}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V

    return p4

    :cond_47
    sget-object v3, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v3

    invoke-static {v0, v3}, Ljj$/time/ZoneId;->ofOffset(Ljava/lang/String;Ljj$/time/ZoneOffset;)Ljj$/time/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V
    :try_end_5d
    .catch Ljj$/time/DateTimeException; {:try_start_39 .. :try_end_5d} :catch_5e

    return v2

    :catch_5e
    move-exception v3

    not-int v4, p3

    return v4

    :cond_61
    :goto_61
    invoke-static {v0}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V

    return p4
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljj$/time/temporal/TemporalQuery;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneId;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    return v1
.end method

.method protected getTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 8

    invoke-static {}, Ljj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_13

    :cond_11
    sget-object v2, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    :goto_13
    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_56

    :cond_21
    monitor-enter p0

    :try_start_22
    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_2b
    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    :goto_2d
    move-object v2, v3

    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_55

    :cond_3c
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/util/Set;Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_53

    sput-object v2, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_55

    :cond_53
    sput-object v2, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    :cond_55
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_22 .. :try_end_56} :catchall_5d

    :cond_56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    return-object v3

    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 14

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_fa

    if-ne p3, v0, :cond_a

    not-int v1, p3

    return v1

    :cond_a
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_ee

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1b

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    goto/16 :goto_f1

    :cond_1b
    add-int/lit8 v2, p3, 0x2

    if-lt v0, v2, :cond_be

    add-int/lit8 v2, p3, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x55

    invoke-virtual {p1, v1, v3}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    const/16 v4, 0x54

    if-eqz v3, :cond_67

    invoke-virtual {p1, v2, v4}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_67

    add-int/lit8 v3, p3, 0x3

    if-lt v0, v3, :cond_57

    add-int/lit8 v3, p3, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x43

    invoke-virtual {p1, v3, v4}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_57

    add-int/lit8 v8, p3, 0x3

    sget-object v9, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    return p1

    :cond_57
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    add-int/lit8 v7, v6, 0x2

    sget-object v8, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    return p1

    :cond_67
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    const/16 p1, 0x47

    invoke-virtual {v5, v1, p1}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_ba

    add-int/lit8 p3, v7, 0x3

    if-lt v0, p3, :cond_ba

    const/16 p1, 0x4d

    invoke-virtual {v5, v2, p1}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_b6

    add-int/lit8 p3, v7, 0x2

    invoke-interface {v6, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v5, p1, v4}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_b6

    add-int/lit8 p3, v7, 0x4

    if-lt v0, p3, :cond_a8

    add-int/lit8 p3, v7, 0x3

    invoke-interface {v6, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    invoke-virtual {v5, p1, p2}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result p1

    if-eqz p1, :cond_a8

    const-string p1, "GMT0"

    invoke-static {p1}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V

    add-int/lit8 p3, v7, 0x4

    return p3

    :cond_a8
    add-int/lit8 p3, v7, 0x3

    sget-object v8, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v3, p0

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, p3

    invoke-direct/range {v3 .. v8}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    return p1

    :cond_b6
    move-object v4, v5

    move-object v5, v6

    move v6, v7

    goto :goto_c1

    :cond_ba
    move-object v4, v5

    move-object v5, v6

    move v6, v7

    goto :goto_c1

    :cond_be
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    :goto_c1
    invoke-virtual {p0, v4}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object p1

    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p1, v5, p2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_e2

    const/16 v2, 0x5a

    invoke-virtual {v4, v1, v2}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v2

    if-eqz v2, :cond_e0

    sget-object v2, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-virtual {v4, v2}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V

    add-int/lit8 v2, v6, 0x1

    return v2

    :cond_e0
    not-int v2, v6

    return v2

    :cond_e2
    invoke-static {p3}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/ZoneId;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    return v2

    :cond_ee
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    :goto_f1
    sget-object v8, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move v7, v6

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result p1

    return p1

    :cond_fa
    move-object v4, p1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
