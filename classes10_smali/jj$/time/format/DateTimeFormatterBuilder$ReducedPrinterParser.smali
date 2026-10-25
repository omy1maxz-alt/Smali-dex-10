.class final Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# static fields
.field static final BASE_DATE:Ljj$/time/LocalDate;


# instance fields
.field private final baseDate:Ljj$/time/chrono/ChronoLocalDate;

.field private final baseValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljj$/time/LocalDate;

    return-void
.end method

.method constructor <init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;I)V

    const/4 p1, 0x1

    if-lt v2, p1, :cond_7f

    const/16 p2, 0xa

    if-gt v2, p2, :cond_7f

    if-lt v3, p1, :cond_66

    if-gt v3, p2, :cond_66

    if-lt v3, v2, :cond_43

    if-nez v5, :cond_42

    invoke-interface {v1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object p1

    int-to-long p2, v4

    invoke-virtual {p1, p2, p3}, Ljj$/time/temporal/ValueRange;->isValidValue(J)Z

    move-result p1

    if-eqz p1, :cond_3a

    int-to-long p1, v4

    sget-object p3, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    aget-wide p4, p3, v3

    add-long/2addr p1, p4

    const-wide/32 p3, 0x7fffffff

    cmp-long p5, p1, p3

    if-gtz p5, :cond_32

    goto :goto_42

    :cond_32
    new-instance p1, Ljj$/time/DateTimeException;

    const-string p2, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {p1, p2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The base value must be within the range of the field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    :goto_42
    return-void

    :cond_43
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

    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The minWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;I)V
    .registers 13

    sget-object v4, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    iput p4, v0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iput-object p5, v0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    return-void
.end method

.method synthetic constructor <init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;ILjj$/time/format/DateTimeFormatterBuilder-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;I)V

    return-void
.end method


# virtual methods
.method getValue(Ljj$/time/format/DateTimePrintContext;J)J
    .registers 12

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v3, :cond_1e

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v3

    invoke-static {v3}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v3

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v4}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v2

    :cond_1e
    int-to-long v3, v2

    cmp-long v5, p2, v3

    if-ltz v5, :cond_38

    int-to-long v3, v2

    sget-object v5, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v6, v5, v6

    add-long/2addr v3, v6

    cmp-long v5, p2, v3

    if-gez v5, :cond_38

    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v4, v3, v4

    rem-long v3, v0, v4

    return-wide v3

    :cond_38
    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget-wide v4, v3, v4

    rem-long v3, v0, v4

    return-wide v3
.end method

.method isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z
    .registers 3

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-super {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$setValue$0$java-time-format-DateTimeFormatterBuilder$ReducedPrinterParser(Ljj$/time/format/DateTimeParseContext;JIILjj$/time/chrono/Chronology;)V
    .registers 7

    invoke-virtual/range {p0 .. p5}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Ljj$/time/format/DateTimeParseContext;JII)I

    return-void
.end method

.method setValue(Ljj$/time/format/DateTimeParseContext;JII)I
    .registers 21

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->getEffectiveChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, v2}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-interface {v2, v3}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    move-wide/from16 v5, p2

    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Ljj$/time/format/DateTimeParseContext;JII)V

    invoke-virtual {v4, v2}, Ljj$/time/format/DateTimeParseContext;->addChronoChangedListener(Ljava/util/function/Consumer;)V

    goto :goto_2a

    :cond_28
    move-object/from16 v4, p1

    :goto_2a
    sub-int v1, p5, p4

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    if-ne v1, v2, :cond_51

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_51

    sget-object v2, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v5, v2, v5

    int-to-long v7, v0

    rem-long/2addr v7, v5

    int-to-long v9, v0

    sub-long/2addr v9, v7

    if-lez v0, :cond_45

    add-long v11, v9, p2

    goto :goto_47

    :cond_45
    sub-long v11, v9, p2

    :goto_47
    int-to-long v13, v0

    cmp-long v2, v11, v13

    if-gez v2, :cond_4f

    add-long/2addr v11, v5

    move-wide v6, v11

    goto :goto_53

    :cond_4f
    move-wide v6, v11

    goto :goto_53

    :cond_51
    move-wide/from16 v6, p2

    :goto_53
    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReducedValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 10

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object p0

    :cond_6
    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    const/4 v8, -0x1

    invoke-direct/range {v2 .. v8}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;I)V

    return-object v2
.end method

.method bridge synthetic withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 9

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljj$/time/chrono/ChronoLocalDate;

    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int/2addr v6, p1

    invoke-direct/range {v0 .. v6}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method
