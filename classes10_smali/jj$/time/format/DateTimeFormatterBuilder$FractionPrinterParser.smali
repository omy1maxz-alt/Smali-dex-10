.class final Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
.super Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field private final decimalPoint:Z


# direct methods
.method constructor <init>(Ljj$/time/temporal/TemporalField;IIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIZI)V

    const-string p1, "field"

    invoke-static {v1, p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1}, Ljj$/time/temporal/ValueRange;->isFixed()Z

    move-result p1

    if-eqz p1, :cond_7b

    if-ltz v2, :cond_62

    const/16 p1, 0x9

    if-gt v2, p1, :cond_62

    const/4 p2, 0x1

    if-lt v3, p2, :cond_49

    if-gt v3, p1, :cond_49

    if-lt v3, v2, :cond_26

    return-void

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field must have a fixed set of values: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljj$/time/temporal/TemporalField;IIZI)V
    .registers 12

    sget-object v4, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    iput-boolean p4, v0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    return-void
.end method

.method private convertFromFraction(Ljava/math/BigDecimal;)J
    .registers 8

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-interface {v0}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private convertToFraction(J)Ljava/math/BigDecimal;
    .registers 9

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-interface {v0}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {v0, p1, p2, v1}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const/16 v4, 0x9

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_40

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_44

    :cond_40
    invoke-static {v4}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    :goto_44
    return-object v5
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 9

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-nez v3, :cond_3b

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v3, :cond_6c

    iget-boolean v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_2b

    invoke-virtual {v1}, Ljj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v3, v4, :cond_3a

    invoke-virtual {v1}, Ljj$/time/format/DecimalStyle;->getZeroDigit()C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3a
    goto :goto_6c

    :cond_3b
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljj$/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_69

    invoke-virtual {v1}, Ljj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    :goto_6c
    const/4 v3, 0x1

    return v3
.end method

.method isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z
    .registers 4

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 16

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    :goto_11
    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_21

    :cond_1e
    const/16 v1, 0x9

    goto :goto_23

    :cond_21
    :goto_21
    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    :goto_23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne p3, v2, :cond_2f

    if-lez v0, :cond_2d

    not-int v3, p3

    goto :goto_2e

    :cond_2d
    move v3, p3

    :goto_2e
    return v3

    :cond_2f
    iget-boolean v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_4b

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v4

    if-eq v3, v4, :cond_47

    if-lez v0, :cond_45

    not-int v3, p3

    goto :goto_46

    :cond_45
    move v3, p3

    :goto_46
    return v3

    :cond_47
    add-int/lit8 p3, p3, 0x1

    move v7, p3

    goto :goto_4c

    :cond_4b
    move v7, p3

    :goto_4c
    add-int p3, v7, v0

    if-le p3, v2, :cond_52

    not-int v3, v7

    return v3

    :cond_52
    add-int v3, v7, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v3, 0x0

    move v4, v7

    move v10, v3

    :goto_5b
    if-ge v4, v9, :cond_7b

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljj$/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v5

    if-gez v5, :cond_75

    if-ge v3, p3, :cond_71

    not-int v6, v7

    return v6

    :cond_71
    add-int/lit8 v3, v3, -0x1

    move v8, v3

    goto :goto_7c

    :cond_75
    mul-int/lit8 v6, v10, 0xa

    add-int v10, v6, v5

    move v4, v3

    goto :goto_5b

    :cond_7b
    move v8, v4

    :goto_7c
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v10}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v4, v8, v7

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-direct {p0, v11}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v5

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-boolean v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_7

    const-string v0, ",DecimalPoint"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fraction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .registers 9

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object p0

    :cond_6
    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIZI)V

    return-object v2
.end method

.method bridge synthetic withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .registers 8

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIZI)V

    return-object v0
.end method

.method bridge synthetic withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object p1

    return-object p1
.end method
