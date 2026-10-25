.class final Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
.super Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field private chr:C

.field private count:I


# direct methods
.method constructor <init>(CIII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-void
.end method

.method constructor <init>(CIIII)V
    .registers 12

    const/4 v1, 0x0

    sget-object v4, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    iput-char p1, v0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iput p2, v0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    return-void
.end method

.method private printerParser(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .registers 12

    invoke-static {p1}, Ljj$/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljj$/time/temporal/WeekFields;

    move-result-object v0

    const/4 v1, 0x0

    iget-char v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v2, :sswitch_data_60

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_12
    invoke-virtual {v0}, Ljj$/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljj$/time/temporal/TemporalField;

    move-result-object v1

    move-object v3, v1

    goto :goto_51

    :sswitch_18
    invoke-virtual {v0}, Ljj$/time/temporal/WeekFields;->dayOfWeek()Ljj$/time/temporal/TemporalField;

    move-result-object v1

    move-object v3, v1

    goto :goto_51

    :sswitch_1e
    invoke-virtual {v0}, Ljj$/time/temporal/WeekFields;->weekBasedYear()Ljj$/time/temporal/TemporalField;

    move-result-object v3

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    sget-object v7, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljj$/time/LocalDate;

    iget v8, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;ILjj$/time/format/DateTimeFormatterBuilder-IA;)V

    return-object v2

    :cond_35
    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v5, 0x4

    if-ge v1, v5, :cond_41

    sget-object v1, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    goto :goto_43

    :cond_41
    sget-object v1, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    :goto_43
    move-object v6, v1

    iget v7, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/16 v5, 0x13

    invoke-direct/range {v2 .. v7}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    return-object v2

    :sswitch_4c
    invoke-virtual {v0}, Ljj$/time/temporal/WeekFields;->weekOfMonth()Ljj$/time/temporal/TemporalField;

    move-result-object v1

    move-object v3, v1

    :goto_51
    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    sget-object v6, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    iget v7, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    invoke-direct/range {v2 .. v7}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    return-object v2

    nop

    :sswitch_data_60
    .sparse-switch
        0x57 -> :sswitch_4c
        0x59 -> :sswitch_1e
        0x63 -> :sswitch_18
        0x65 -> :sswitch_18
        0x77 -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->printerParser(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    const/16 v2, 0x59

    const-string v3, ","

    if-ne v1, v2, :cond_52

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_1f
    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_2a
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4c

    sget-object v2, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    goto :goto_4e

    :cond_4c
    sget-object v2, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    :goto_4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_52
    iget-char v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    sparse-switch v1, :sswitch_data_7c

    goto :goto_6a

    :sswitch_58
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :sswitch_5e
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :sswitch_64
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_6a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_72
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_7c
    .sparse-switch
        0x57 -> :sswitch_64
        0x63 -> :sswitch_5e
        0x65 -> :sswitch_5e
        0x77 -> :sswitch_58
    .end sparse-switch
.end method

.method bridge synthetic withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
    .registers 9

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object p0

    :cond_6
    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    iget-char v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-object v2
.end method

.method bridge synthetic withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;
    .registers 8

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    iget-char v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->chr:C

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->count:I

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->minWidth:I

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->maxWidth:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIIII)V

    return-object v0
.end method
