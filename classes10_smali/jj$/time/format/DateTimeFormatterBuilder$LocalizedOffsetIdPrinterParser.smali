.class final Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final style:Ljj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljj$/time/format/TextStyle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljj$/time/format/TextStyle;

    return-void
.end method

.method private static appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 4

    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    const-string v1, "GMT"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    if-eqz v2, :cond_79

    div-int/lit16 v3, v2, 0xe10

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gez v2, :cond_34

    const-string v6, "-"

    goto :goto_36

    :cond_34
    const-string v6, "+"

    :goto_36
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljj$/time/format/TextStyle;

    sget-object v7, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    const/16 v8, 0x3a

    if-ne v6, v7, :cond_53

    invoke-static {p2, v3}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v4}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_79

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v5}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto :goto_79

    :cond_53
    const/16 v6, 0xa

    if-lt v3, v6, :cond_5f

    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5f
    rem-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v4, :cond_6b

    if-eqz v5, :cond_79

    :cond_6b
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v4}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_79

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, v5}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    :cond_79
    :goto_79
    const/4 v3, 0x1

    return v3
.end method

.method getDigit(Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_10

    const/16 v1, 0x39

    if-le v0, v1, :cond_d

    goto :goto_10

    :cond_d
    add-int/lit8 v1, v0, -0x30

    return v1

    :cond_10
    :goto_10
    const/4 v1, -0x1

    return v1
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 23

    move-object/from16 v0, p0

    move/from16 v7, p3

    move/from16 v3, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v4, "GMT"

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    move-object v9, v2

    move-object v10, v4

    if-nez v5, :cond_1f

    not-int v1, v7

    return v1

    :cond_1f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v3, v1

    const/4 v11, 0x0

    if-ne v6, v8, :cond_34

    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    :cond_34
    move v5, v7

    invoke-interface {v9, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v1, 0x2b

    if-ne v7, v1, :cond_40

    const/4 v1, 0x1

    move v11, v1

    goto :goto_46

    :cond_40
    const/16 v1, 0x2d

    if-ne v7, v1, :cond_148

    const/4 v1, -0x1

    move v11, v1

    :goto_46
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljj$/time/format/TextStyle;

    sget-object v12, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    const/16 v13, 0x3a

    if-ne v4, v12, :cond_ba

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v9, v6}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v0, v9, v4}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ltz v6, :cond_b8

    if-ltz v4, :cond_b8

    add-int/lit8 v14, v12, 0x1

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v13, :cond_6d

    move v12, v14

    goto :goto_b8

    :cond_6d
    mul-int/lit8 v12, v6, 0xa

    add-int/2addr v12, v4

    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v0, v9, v14}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v9, v1}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v14, :cond_b4

    if-gez v1, :cond_83

    move/from16 v17, v1

    goto :goto_b6

    :cond_83
    mul-int/lit8 v16, v14, 0xa

    add-int v2, v16, v1

    add-int/lit8 v13, v15, 0x2

    if-ge v13, v8, :cond_ac

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    move/from16 v17, v1

    const/16 v1, 0x3a

    if-ne v13, v1, :cond_ae

    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v0, v9, v1}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v13, v15, 0x2

    invoke-virtual {v0, v9, v13}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v13

    if-ltz v1, :cond_ae

    if-ltz v13, :cond_ae

    mul-int/lit8 v16, v1, 0xa

    add-int v3, v16, v13

    add-int/lit8 v15, v15, 0x3

    goto :goto_ae

    :cond_ac
    move/from16 v17, v1

    :cond_ae
    :goto_ae
    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    goto/16 :goto_12e

    :cond_b4
    move/from16 v17, v1

    :goto_b6
    not-int v1, v5

    return v1

    :cond_b8
    :goto_b8
    not-int v13, v5

    return v13

    :cond_ba
    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v0, v9, v6}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v12

    if-gez v12, :cond_c4

    not-int v1, v5

    return v1

    :cond_c4
    if-ge v15, v8, :cond_12a

    invoke-virtual {v0, v9, v15}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_d2

    mul-int/lit8 v4, v12, 0xa

    add-int/2addr v4, v1

    add-int/lit8 v15, v15, 0x1

    move v12, v4

    :cond_d2
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v8, :cond_125

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_125

    add-int/lit8 v4, v15, 0x2

    if-ge v4, v8, :cond_125

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_125

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v0, v9, v4}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v6, v15, 0x2

    invoke-virtual {v0, v9, v6}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    if-ltz v4, :cond_125

    if-ltz v6, :cond_125

    mul-int/lit8 v13, v4, 0xa

    add-int v2, v13, v6

    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v13, v15, 0x2

    if-ge v13, v8, :cond_125

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_125

    add-int/lit8 v13, v15, 0x1

    invoke-virtual {v0, v9, v13}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/lit8 v14, v15, 0x2

    invoke-virtual {v0, v9, v14}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    if-ltz v13, :cond_125

    if-ltz v14, :cond_125

    mul-int/lit8 v16, v13, 0xa

    add-int v3, v16, v14

    add-int/lit8 v15, v15, 0x3

    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    goto :goto_12e

    :cond_125
    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    goto :goto_12e

    :cond_12a
    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    :goto_12e
    int-to-long v1, v11

    int-to-long v3, v14

    const-wide/16 v15, 0xe10

    mul-long v3, v3, v15

    move-wide v15, v1

    int-to-long v0, v12

    const-wide/16 v17, 0x3c

    mul-long v0, v0, v17

    add-long/2addr v3, v0

    int-to-long v0, v13

    add-long/2addr v3, v0

    mul-long v3, v3, v15

    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    :cond_148
    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljj$/time/format/TextStyle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalizedOffset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
