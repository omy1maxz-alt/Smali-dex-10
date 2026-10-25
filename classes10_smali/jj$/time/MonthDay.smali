.class public final Ljj$/time/MonthDay;
.super Ljava/lang/Object;
.source "MonthDay.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final PARSER:Ljj$/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final day:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter()Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/MonthDay;->PARSER:Ljj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/MonthDay;->month:I

    iput p2, p0, Ljj$/time/MonthDay;->day:I

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/MonthDay;
    .registers 6

    instance-of v0, p0, Ljj$/time/MonthDay;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/MonthDay;

    return-object v0

    :cond_8
    :try_start_8
    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-static {p0}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    :cond_19
    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Ljj$/time/MonthDay;->of(II)Ljj$/time/MonthDay;

    move-result-object v0
    :try_end_29
    .catch Ljj$/time/DateTimeException; {:try_start_8 .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain MonthDay from TemporalAccessor: "

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

.method public static now()Ljj$/time/MonthDay;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/MonthDay;->now(Ljj$/time/Clock;)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/MonthDay;
    .registers 4

    invoke-static {p0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getMonth()Ljj$/time/Month;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2}, Ljj$/time/MonthDay;->of(Ljj$/time/Month;I)Ljj$/time/MonthDay;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/MonthDay;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/MonthDay;->now(Ljj$/time/Clock;)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Ljj$/time/MonthDay;
    .registers 3

    invoke-static {p0}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v0

    invoke-static {v0, p1}, Ljj$/time/MonthDay;->of(Ljj$/time/Month;I)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljj$/time/Month;I)Ljj$/time/MonthDay;
    .registers 6

    const-string v0, "month"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-virtual {p0}, Ljj$/time/Month;->maxLength()I

    move-result v0

    if-gt p1, v0, :cond_1b

    new-instance v0, Ljj$/time/MonthDay;

    invoke-virtual {p0}, Ljj$/time/Month;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p1}, Ljj$/time/MonthDay;-><init>(II)V

    return-object v0

    :cond_1b
    new-instance v0, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value for DayOfMonth field, value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid for month "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/MonthDay;
    .registers 2

    sget-object v0, Ljj$/time/MonthDay;->PARSER:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/MonthDay;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/MonthDay;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/MonthDay$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/MonthDay$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/MonthDay;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/MonthDay;
    .registers 4

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Ljj$/time/MonthDay;->of(II)Ljj$/time/MonthDay;

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

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    iget v1, p0, Ljj$/time/MonthDay;->month:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/Temporal;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    iget v3, p0, Ljj$/time/MonthDay;->day:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :cond_2d
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atYear(I)Ljj$/time/LocalDate;
    .registers 4

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    invoke-virtual {p0, p1}, Ljj$/time/MonthDay;->isValidYear(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Ljj$/time/MonthDay;->day:I

    goto :goto_d

    :cond_b
    const/16 v1, 0x1c

    :goto_d
    invoke-static {p1, v0, v1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/MonthDay;

    invoke-virtual {p0, p1}, Ljj$/time/MonthDay;->compareTo(Ljj$/time/MonthDay;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/MonthDay;)I
    .registers 5

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    iget v1, p1, Ljj$/time/MonthDay;->month:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_d

    iget v1, p0, Ljj$/time/MonthDay;->day:I

    iget v2, p1, Ljj$/time/MonthDay;->day:I

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
    instance-of v1, p1, Ljj$/time/MonthDay;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v1, p1

    check-cast v1, Ljj$/time/MonthDay;

    iget v3, p0, Ljj$/time/MonthDay;->month:I

    iget v4, v1, Ljj$/time/MonthDay;->month:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Ljj$/time/MonthDay;->day:I

    iget v4, v1, Ljj$/time/MonthDay;->day:I

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

    invoke-virtual {p0, p1}, Ljj$/time/MonthDay;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljj$/time/MonthDay;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .registers 2

    iget v0, p0, Ljj$/time/MonthDay;->day:I

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_33

    sget-object v0, Ljj$/time/MonthDay$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

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

    :pswitch_2b  #0x2
    iget v0, p0, Ljj$/time/MonthDay;->month:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_2f  #0x1
    iget v0, p0, Ljj$/time/MonthDay;->day:I

    int-to-long v0, v0

    return-wide v0

    :cond_33
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_2b  #00000002
    .end packed-switch
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    invoke-static {v0}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Ljj$/time/MonthDay;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljj$/time/MonthDay;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/MonthDay;->compareTo(Ljj$/time/MonthDay;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBefore(Ljj$/time/MonthDay;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/MonthDay;->compareTo(Ljj$/time/MonthDay;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1

    :cond_11
    if-eqz p1, :cond_1a

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public isValidYear(I)Z
    .registers 5

    iget v0, p0, Ljj$/time/MonthDay;->day:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljj$/time/Year;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    xor-int/2addr v0, v2

    return v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 9

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_26

    invoke-virtual {p0}, Ljj$/time/MonthDay;->getMonth()Ljj$/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Month;->minLength()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Ljj$/time/MonthDay;->getMonth()Ljj$/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Month;->maxLength()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljj$/time/MonthDay;->month:I

    if-ge v2, v1, :cond_14

    const-string v2, "0"

    goto :goto_16

    :cond_14
    const-string v2, ""

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljj$/time/MonthDay;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljj$/time/MonthDay;->day:I

    if-ge v2, v1, :cond_27

    const-string v1, "-0"

    goto :goto_29

    :cond_27
    const-string v1, "-"

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljj$/time/MonthDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljj$/time/Month;)Ljj$/time/MonthDay;
    .registers 5

    const-string v0, "month"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/Month;->getValue()I

    move-result v0

    iget v1, p0, Ljj$/time/MonthDay;->month:I

    if-ne v0, v1, :cond_e

    return-object p0

    :cond_e
    iget v0, p0, Ljj$/time/MonthDay;->day:I

    invoke-virtual {p1}, Ljj$/time/Month;->maxLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljj$/time/MonthDay;

    invoke-virtual {p1}, Ljj$/time/Month;->getValue()I

    move-result v2

    invoke-direct {v1, v2, v0}, Ljj$/time/MonthDay;-><init>(II)V

    return-object v1
.end method

.method public withDayOfMonth(I)Ljj$/time/MonthDay;
    .registers 3

    iget v0, p0, Ljj$/time/MonthDay;->day:I

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p0, Ljj$/time/MonthDay;->month:I

    invoke-static {v0, p1}, Ljj$/time/MonthDay;->of(II)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljj$/time/MonthDay;
    .registers 3

    invoke-static {p1}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/MonthDay;->with(Ljj$/time/Month;)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Ljj$/time/MonthDay;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Ljj$/time/MonthDay;->day:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
