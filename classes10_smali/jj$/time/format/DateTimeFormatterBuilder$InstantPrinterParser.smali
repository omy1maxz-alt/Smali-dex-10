.class final Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljj$/time/format/DateTimePrintContext;->getTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v3}, Ljj$/time/format/DateTimePrintContext;->getTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_27
    const/4 v5, 0x0

    if-nez v2, :cond_2b

    return v5

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_3a

    :cond_38
    const-wide/16 v11, 0x0

    :goto_3a
    invoke-virtual {v8, v11, v12}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    const-wide v11, -0xe79747c00L

    const-string v13, ":00"

    const-wide/16 v14, 0x1

    const-wide v16, 0xe79747c00L

    const-wide/16 v18, 0x0

    const-wide v9, 0x497968bd80L

    cmp-long v20, v6, v11

    if-ltz v20, :cond_8b

    sub-long v11, v6, v9

    add-long v11, v11, v16

    invoke-static {v11, v12, v9, v10}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v20

    add-long v14, v20, v14

    invoke-static {v11, v12, v9, v10}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v9

    move-object/from16 v20, v2

    sub-long v2, v9, v16

    move-object/from16 v21, v4

    sget-object v4, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-static {v2, v3, v5, v4}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v2

    cmp-long v3, v14, v18

    if-lez v3, :cond_7e

    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljj$/time/LocalDateTime;->getSecond()I

    move-result v3

    if-nez v3, :cond_8a

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8a
    goto :goto_d8

    :cond_8b
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    add-long v2, v6, v16

    div-long v11, v2, v9

    rem-long v9, v2, v9

    move-wide/from16 v22, v14

    sub-long v14, v9, v16

    sget-object v4, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-static {v14, v15, v5, v4}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljj$/time/LocalDateTime;->getSecond()I

    move-result v14

    if-nez v14, :cond_af

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    cmp-long v13, v11, v18

    if-gez v13, :cond_d8

    invoke-virtual {v4}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v13

    const/16 v14, -0x2710

    if-ne v13, v14, :cond_c7

    add-int/lit8 v13, v5, 0x2

    sub-long v14, v11, v22

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v5, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d8

    :cond_c7
    cmp-long v13, v9, v18

    if-nez v13, :cond_cf

    invoke-virtual {v1, v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_d8

    :cond_cf
    add-int/lit8 v13, v5, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-virtual {v1, v13, v14, v15}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    :cond_d8
    :goto_d8
    iget v2, v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v2, :cond_de

    if-gtz v8, :cond_e2

    :cond_de
    iget v2, v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-lez v2, :cond_111

    :cond_e2
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0x5f5e100

    const/4 v3, 0x0

    :goto_eb
    iget v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f2

    if-gtz v8, :cond_101

    :cond_f2
    iget v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_fd

    if-gtz v8, :cond_101

    rem-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_101

    :cond_fd
    iget v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-ge v3, v4, :cond_111

    :cond_101
    div-int v4, v8, v2

    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int v5, v4, v2

    sub-int/2addr v8, v5

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    :cond_111
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    return v2
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 33

    move-object/from16 v1, p0

    move/from16 v6, p3

    iget v0, v1, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v2, 0x0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    iget v0, v1, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_d
    move v8, v0

    iget v0, v1, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v0, :cond_15

    const/16 v0, 0x9

    goto :goto_17

    :cond_15
    iget v0, v1, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_17
    move v9, v0

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x54

    invoke-virtual {v0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v5, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v5, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v8, v9, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendFraction(Ljj$/time/temporal/TemporalField;IIZ)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter()Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->copy()Ljj$/time/format/DateTimeParseContext;

    move-result-object v11

    move-object/from16 v12, p2

    invoke-virtual {v10, v11, v12, v6}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v13

    if-gez v13, :cond_68

    return v13

    :cond_68
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v17

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v18

    sget-object v0, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sget-object v3, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v3}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v4}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v23

    sget-object v4, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v11, v4}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v24

    if-eqz v23, :cond_ad

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->intValue()I

    move-result v4

    goto :goto_ae

    :cond_ad
    const/4 v4, 0x0

    :goto_ae
    if-eqz v24, :cond_b4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->intValue()I

    move-result v2

    :cond_b4
    const/4 v5, 0x0

    const/16 v7, 0x18

    if-ne v0, v7, :cond_c7

    if-nez v3, :cond_c7

    if-nez v4, :cond_c7

    if-nez v2, :cond_c7

    const/4 v0, 0x0

    const/4 v5, 0x1

    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    goto :goto_e3

    :cond_c7
    const/16 v7, 0x17

    if-ne v0, v7, :cond_de

    const/16 v7, 0x3b

    if-ne v3, v7, :cond_de

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_de

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    const/16 v4, 0x3b

    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    goto :goto_e3

    :cond_de
    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    :goto_e3
    long-to-int v0, v14

    rem-int/lit16 v5, v0, 0x2710

    const/16 v22, 0x0

    move/from16 v20, v3

    move/from16 v16, v5

    :try_start_ec
    invoke-static/range {v16 .. v22}, Ljj$/time/LocalDateTime;->of(IIIIIII)Ljj$/time/LocalDateTime;

    move-result-object v0
    :try_end_f0
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_f0} :catch_135

    move v3, v2

    int-to-long v1, v4

    :try_start_f2
    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v1

    const-wide/16 v25, 0x2710

    move-object v5, v0

    move-wide/from16 v27, v1

    div-long v0, v14, v25
    :try_end_103
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_103} :catch_130

    move v7, v3

    const-wide v2, 0x497968bd80L

    :try_start_109
    invoke-static {v0, v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0
    :try_end_10d
    .catch Ljava/lang/RuntimeException; {:try_start_109 .. :try_end_10d} :catch_12b

    add-long v0, v27, v0

    nop

    move v3, v7

    move v7, v13

    move v2, v3

    sget-object v3, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    move/from16 v22, v4

    move-wide v4, v0

    move v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v7

    move-wide/from16 v25, v4

    sget-object v3, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    int-to-long v4, v1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    :catch_12b
    move-exception v0

    move/from16 v22, v4

    move v1, v7

    goto :goto_139

    :catch_130
    move-exception v0

    move v1, v3

    move/from16 v22, v4

    goto :goto_139

    :catch_135
    move-exception v0

    move v1, v2

    move/from16 v22, v4

    :goto_139
    not-int v2, v6

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Instant()"

    return-object v0
.end method
