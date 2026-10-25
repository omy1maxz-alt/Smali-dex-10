.class public final Ljj$/time/YearMonth;
.super Ljava/lang/Object;
.source "YearMonth.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final PARSER:Ljj$/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v2, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter()Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/YearMonth;->PARSER:Ljj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/YearMonth;->year:I

    iput p2, p0, Ljj$/time/YearMonth;->month:I

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/YearMonth;
    .registers 6

    instance-of v0, p0, Ljj$/time/YearMonth;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0

    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_d
    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-static {p0}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p0}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    :cond_1e
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Ljj$/time/YearMonth;->of(II)Ljj$/time/YearMonth;

    move-result-object v0
    :try_end_2e
    .catch Ljj$/time/DateTimeException; {:try_start_d .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProlepticMonth()J
    .registers 5

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Ljj$/time/YearMonth;->month:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Ljj$/time/YearMonth;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/YearMonth;->now(Ljj$/time/Clock;)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/YearMonth;
    .registers 4

    invoke-static {p0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getMonth()Ljj$/time/Month;

    move-result-object v2

    invoke-static {v1, v2}, Ljj$/time/YearMonth;->of(ILjj$/time/Month;)Ljj$/time/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/YearMonth;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/YearMonth;->now(Ljj$/time/Clock;)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Ljj$/time/YearMonth;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    new-instance v0, Ljj$/time/YearMonth;

    invoke-direct {v0, p0, p1}, Ljj$/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static of(ILjj$/time/Month;)Ljj$/time/YearMonth;
    .registers 3

    const-string v0, "month"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Ljj$/time/YearMonth;->of(II)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/YearMonth;
    .registers 2

    sget-object v0, Ljj$/time/YearMonth;->PARSER:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/YearMonth;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/YearMonth;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/YearMonth$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/YearMonth$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/YearMonth;
    .registers 4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Ljj$/time/YearMonth;->of(II)Ljj$/time/YearMonth;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(II)Ljj$/time/YearMonth;
    .registers 4

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Ljj$/time/YearMonth;->month:I

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljj$/time/YearMonth;

    invoke-direct {v0, p1, p2}, Ljj$/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-direct {p0}, Ljj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atDay(I)Ljj$/time/LocalDate;
    .registers 4

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    iget v1, p0, Ljj$/time/YearMonth;->month:I

    invoke-static {v0, v1, p1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atEndOfMonth()Ljj$/time/LocalDate;
    .registers 4

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    iget v1, p0, Ljj$/time/YearMonth;->month:I

    invoke-virtual {p0}, Ljj$/time/YearMonth;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/YearMonth;

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->compareTo(Ljj$/time/YearMonth;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/YearMonth;)I
    .registers 5

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    iget v1, p1, Ljj$/time/YearMonth;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_d

    iget v1, p0, Ljj$/time/YearMonth;->month:I

    iget v2, p1, Ljj$/time/YearMonth;->month:I

    sub-int v0, v1, v2

    :cond_d
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/YearMonth;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v1, p1

    check-cast v1, Ljj$/time/YearMonth;

    iget v3, p0, Ljj$/time/YearMonth;->year:I

    iget v4, v1, Ljj$/time/YearMonth;->year:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Ljj$/time/YearMonth;->month:I

    iget v4, v1, Ljj$/time/YearMonth;->month:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    return v2
.end method

.method public format(Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljj$/time/temporal/TemporalField;)I
    .registers 5

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_4c

    sget-object v0, Ljj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c  #0x5
    iget v0, p0, Ljj$/time/YearMonth;->year:I

    if-ge v0, v1, :cond_31

    const/4 v1, 0x0

    :cond_31
    int-to-long v0, v1

    return-wide v0

    :pswitch_33  #0x4
    iget v0, p0, Ljj$/time/YearMonth;->year:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_37  #0x3
    iget v0, p0, Ljj$/time/YearMonth;->year:I

    if-ge v0, v1, :cond_3f

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    sub-int/2addr v1, v0

    goto :goto_41

    :cond_3f
    iget v1, p0, Ljj$/time/YearMonth;->year:I

    :goto_41
    int-to-long v0, v1

    return-wide v0

    :pswitch_43  #0x2
    invoke-direct {p0}, Ljj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    :pswitch_48  #0x1
    iget v0, p0, Ljj$/time/YearMonth;->month:I

    int-to-long v0, v0

    return-wide v0

    :cond_4c
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_43  #00000002
        :pswitch_37  #00000003
        :pswitch_33  #00000004
        :pswitch_2c  #00000005
    .end packed-switch
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget v0, p0, Ljj$/time/YearMonth;->month:I

    invoke-static {v0}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    iget v0, p0, Ljj$/time/YearMonth;->month:I

    return v0
.end method

.method public getYear()I
    .registers 2

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    iget v1, p0, Ljj$/time/YearMonth;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljj$/time/YearMonth;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->compareTo(Ljj$/time/YearMonth;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBefore(Ljj$/time/YearMonth;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->compareTo(Ljj$/time/YearMonth;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLeapYear()Z
    .registers 4

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    iget v1, p0, Ljj$/time/YearMonth;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    if-eqz p1, :cond_26

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DECADES:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->CENTURIES:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MILLENNIA:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->ERAS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    return v1

    :cond_21
    if-eqz p1, :cond_2a

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalUnit;->isSupportedBy(Ljj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method public isValidDay(I)Z
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    invoke-virtual {p0}, Ljj$/time/YearMonth;->lengthOfMonth()I

    move-result v1

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public lengthOfMonth()I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/YearMonth;->getMonth()Ljj$/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/YearMonth;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/time/Month;->length(Z)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .registers 2

    invoke-virtual {p0}, Ljj$/time/YearMonth;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/YearMonth;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/YearMonth;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/YearMonth;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/YearMonth;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/YearMonth;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(J)Ljj$/time/YearMonth;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusMonths(J)Ljj$/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/YearMonth;->plusMonths(J)Ljj$/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusMonths(J)Ljj$/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusYears(J)Ljj$/time/YearMonth;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;
    .registers 7

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_67

    sget-object v0, Ljj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b  #0x6
    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/YearMonth;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ljj$/time/YearMonth;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_3c  #0x5
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_47  #0x4
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_52  #0x3
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_5d  #0x2
    invoke-virtual {p0, p1, p2}, Ljj$/time/YearMonth;->plusYears(J)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_62  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/YearMonth;->plusMonths(J)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :cond_67
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_62  #00000001
        :pswitch_5d  #00000002
        :pswitch_52  #00000003
        :pswitch_47  #00000004
        :pswitch_3c  #00000005
        :pswitch_2b  #00000006
    .end packed-switch
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/YearMonth;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/YearMonth;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Ljj$/time/YearMonth;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Ljj$/time/YearMonth;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long v2, v0, p1

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    invoke-static {v2, v3, v5}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v4, v5}, Ljj$/time/YearMonth;->with(II)Ljj$/time/YearMonth;

    move-result-object v6

    return-object v6
.end method

.method public plusYears(J)Ljj$/time/YearMonth;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    iget v1, p0, Ljj$/time/YearMonth;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    iget v1, p0, Ljj$/time/YearMonth;->month:I

    invoke-direct {p0, v0, v1}, Ljj$/time/YearMonth;->with(II)Ljj$/time/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v0

    :cond_9
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_12
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Ljj$/time/YearMonth;->getYear()I

    move-result v0

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_10

    const-wide/32 v3, 0x3b9aca00

    goto :goto_13

    :cond_10
    const-wide/32 v3, 0x3b9ac9ff

    :goto_13
    invoke-static {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2f

    iget v2, p0, Ljj$/time/YearMonth;->year:I

    if-gez v2, :cond_22

    iget v2, p0, Ljj$/time/YearMonth;->year:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_22
    iget v2, p0, Ljj$/time/YearMonth;->year:I

    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_2f
    iget v2, p0, Ljj$/time/YearMonth;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_34
    iget v2, p0, Ljj$/time/YearMonth;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3d

    const-string v2, "-0"

    goto :goto_3f

    :cond_3d
    const-string v2, "-"

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljj$/time/YearMonth;->month:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 10

    invoke-static {p1}, Ljj$/time/YearMonth;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/YearMonth;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_5b

    invoke-direct {v0}, Ljj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Ljj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_60

    new-instance v3, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_38  #0x6
    sget-object v3, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3}, Ljj$/time/YearMonth;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljj$/time/YearMonth;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    return-wide v3

    :pswitch_46  #0x5
    const-wide/16 v3, 0x2ee0

    div-long v3, v1, v3

    return-wide v3

    :pswitch_4b  #0x4
    const-wide/16 v3, 0x4b0

    div-long v3, v1, v3

    return-wide v3

    :pswitch_50  #0x3
    const-wide/16 v3, 0x78

    div-long v3, v1, v3

    return-wide v3

    :pswitch_55  #0x2
    const-wide/16 v3, 0xc

    div-long v3, v1, v3

    return-wide v3

    :pswitch_5a  #0x1
    return-wide v1

    :cond_5b
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a  #00000001
        :pswitch_55  #00000002
        :pswitch_50  #00000003
        :pswitch_4b  #00000004
        :pswitch_46  #00000005
        :pswitch_38  #00000006
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/YearMonth;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/YearMonth;
    .registers 9

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_69

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v1, Ljj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_70

    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2f  #0x5
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/YearMonth;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_3b

    move-object v1, p0

    goto :goto_42

    :cond_3b
    iget v1, p0, Ljj$/time/YearMonth;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljj$/time/YearMonth;->withYear(I)Ljj$/time/YearMonth;

    move-result-object v1

    :goto_42
    return-object v1

    :pswitch_43  #0x4
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/YearMonth;->withYear(I)Ljj$/time/YearMonth;

    move-result-object v1

    return-object v1

    :pswitch_49  #0x3
    iget v1, p0, Ljj$/time/YearMonth;->year:I

    if-ge v1, v2, :cond_51

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_52

    :cond_51
    move-wide v1, p2

    :goto_52
    long-to-int v2, v1

    invoke-virtual {p0, v2}, Ljj$/time/YearMonth;->withYear(I)Ljj$/time/YearMonth;

    move-result-object v1

    return-object v1

    :pswitch_58  #0x2
    invoke-direct {p0}, Ljj$/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/YearMonth;->plusMonths(J)Ljj$/time/YearMonth;

    move-result-object v1

    return-object v1

    :pswitch_63  #0x1
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/YearMonth;->withMonth(I)Ljj$/time/YearMonth;

    move-result-object v1

    return-object v1

    :cond_69
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/YearMonth;

    return-object v0

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_58  #00000002
        :pswitch_49  #00000003
        :pswitch_43  #00000004
        :pswitch_2f  #00000005
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/YearMonth;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/YearMonth;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Ljj$/time/YearMonth;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    invoke-direct {p0, v0, p1}, Ljj$/time/YearMonth;->with(II)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljj$/time/YearMonth;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget v0, p0, Ljj$/time/YearMonth;->month:I

    invoke-direct {p0, p1, v0}, Ljj$/time/YearMonth;->with(II)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Ljj$/time/YearMonth;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljj$/time/YearMonth;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
