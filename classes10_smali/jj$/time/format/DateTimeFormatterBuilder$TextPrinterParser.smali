.class final Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final field:Ljj$/time/temporal/TemporalField;

.field private volatile numberPrinterParser:Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Ljj$/time/format/DateTimeTextProvider;

.field private final textStyle:Ljj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljj$/time/format/DateTimeTextProvider;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    iput-object p3, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljj$/time/format/DateTimeTextProvider;

    return-void
.end method

.method private numberPrinterParser()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 6

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_12

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    const/16 v2, 0x13

    sget-object v3, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    :cond_12
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 13

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljj$/time/chrono/Chronology;

    if-eqz v3, :cond_33

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    if-ne v3, v1, :cond_20

    goto :goto_33

    :cond_20
    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljj$/time/format/DateTimeTextProvider;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Ljj$/time/format/DateTimeTextProvider;->getText(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    :cond_33
    :goto_33
    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljj$/time/format/DateTimeTextProvider;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ljj$/time/format/DateTimeTextProvider;->getText(Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_45
    if-nez v1, :cond_50

    invoke-direct {p0}, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v2

    return v2

    :cond_50
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    return v2
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 18

    move/from16 v4, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ltz v4, :cond_e3

    if-gt v4, v6, :cond_e3

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move-object v7, v0

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getEffectiveChronology()Ljj$/time/chrono/Chronology;

    move-result-object v8

    if-eqz v8, :cond_2e

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    if-ne v8, v0, :cond_20

    goto :goto_2e

    :cond_20
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljj$/time/format/DateTimeTextProvider;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v7, v2}, Ljj$/time/format/DateTimeTextProvider;->getTextIterator(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    goto :goto_3b

    :cond_2e
    :goto_2e
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljj$/time/format/DateTimeTextProvider;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Ljj$/time/format/DateTimeTextProvider;->getTextIterator(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    :goto_3b
    if-eqz v9, :cond_d8

    :goto_3d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    move-object v11, v1

    if-eqz v2, :cond_7a

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    :cond_7a
    move/from16 v4, p3

    goto :goto_3d

    :cond_7d
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne v0, v1, :cond_ce

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_ce

    invoke-interface {v8}, Ljj$/time/chrono/Chronology;->eras()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_91
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljj$/time/chrono/Era;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    move-object v13, v1

    if-eqz v2, :cond_c8

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-interface {v12}, Ljj$/time/chrono/Era;->getValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    :cond_c8
    move/from16 v4, p3

    goto :goto_91

    :cond_cb
    move/from16 v4, p3

    goto :goto_d0

    :cond_ce
    move/from16 v4, p3

    :goto_d0
    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_d8

    not-int v1, v4

    return v1

    :cond_d8
    invoke-direct {p0}, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v1, p1, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    :cond_e3
    move-object/from16 v3, p2

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    sget-object v1, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
