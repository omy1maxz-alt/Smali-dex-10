.class public final Ljj$/time/Year;
.super Ljava/lang/Object;
.source "Year.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_VALUE:I = 0x3b9ac9ff

.field public static final MIN_VALUE:I = -0x3b9ac9ff

.field private static final PARSER:Ljj$/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
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

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter()Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/Year;->PARSER:Ljj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/Year;->year:I

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Year;
    .registers 6

    instance-of v0, p0, Ljj$/time/Year;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/Year;

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

    invoke-static {v0}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v0
    :try_end_28
    .catch Ljj$/time/DateTimeException; {:try_start_d .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain Year from TemporalAccessor: "

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

.method public static isLeap(J)Z
    .registers 7

    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    const-wide/16 v0, 0x64

    rem-long v0, p0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    const-wide/16 v0, 0x190

    rem-long v0, p0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    :cond_19
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public static now()Ljj$/time/Year;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/Year;->now(Ljj$/time/Clock;)Ljj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/Year;
    .registers 3

    invoke-static {p0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-static {v1}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/Year;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/Year;->now(Ljj$/time/Clock;)Ljj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static of(I)Ljj$/time/Year;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    new-instance v0, Ljj$/time/Year;

    invoke-direct {v0, p0}, Ljj$/time/Year;-><init>(I)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/Year;
    .registers 2

    sget-object v0, Ljj$/time/Year;->PARSER:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/Year;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/Year;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/Year$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/Year$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/Year;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/Year;
    .registers 2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v0

    return-object v0
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

    const/16 v1, 0xb

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

    if-eqz v0, :cond_16

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    iget v1, p0, Ljj$/time/Year;->year:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atDay(I)Ljj$/time/LocalDate;
    .registers 3

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-static {v0, p1}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public atMonth(I)Ljj$/time/YearMonth;
    .registers 3

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-static {v0, p1}, Ljj$/time/YearMonth;->of(II)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public atMonth(Ljj$/time/Month;)Ljj$/time/YearMonth;
    .registers 3

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-static {v0, p1}, Ljj$/time/YearMonth;->of(ILjj$/time/Month;)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public atMonthDay(Ljj$/time/MonthDay;)Ljj$/time/LocalDate;
    .registers 3

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-virtual {p1, v0}, Ljj$/time/MonthDay;->atYear(I)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/Year;

    invoke-virtual {p0, p1}, Ljj$/time/Year;->compareTo(Ljj$/time/Year;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/Year;)I
    .registers 4

    iget v0, p0, Ljj$/time/Year;->year:I

    iget v1, p1, Ljj$/time/Year;->year:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/Year;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget v1, p0, Ljj$/time/Year;->year:I

    move-object v3, p1

    check-cast v3, Ljj$/time/Year;

    iget v3, v3, Ljj$/time/Year;->year:I

    if-ne v1, v3, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
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

    invoke-virtual {p0, p1}, Ljj$/time/Year;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljj$/time/Year;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_43

    sget-object v0, Ljj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_48

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

    :pswitch_2c  #0x3
    iget v0, p0, Ljj$/time/Year;->year:I

    if-ge v0, v1, :cond_31

    const/4 v1, 0x0

    :cond_31
    int-to-long v0, v1

    return-wide v0

    :pswitch_33  #0x2
    iget v0, p0, Ljj$/time/Year;->year:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_37  #0x1
    iget v0, p0, Ljj$/time/Year;->year:I

    if-ge v0, v1, :cond_3f

    iget v0, p0, Ljj$/time/Year;->year:I

    sub-int/2addr v1, v0

    goto :goto_41

    :cond_3f
    iget v1, p0, Ljj$/time/Year;->year:I

    :goto_41
    int-to-long v0, v1

    return-wide v0

    :cond_43
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_33  #00000002
        :pswitch_2c  #00000003
    .end packed-switch
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Ljj$/time/Year;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ljj$/time/Year;->year:I

    return v0
.end method

.method public isAfter(Ljj$/time/Year;)Z
    .registers 4

    iget v0, p0, Ljj$/time/Year;->year:I

    iget v1, p1, Ljj$/time/Year;->year:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBefore(Ljj$/time/Year;)Z
    .registers 4

    iget v0, p0, Ljj$/time/Year;->year:I

    iget v1, p1, Ljj$/time/Year;->year:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLeap()Z
    .registers 3

    iget v0, p0, Ljj$/time/Year;->year:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljj$/time/Year;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    return v1

    :cond_15
    if-eqz p1, :cond_1e

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DECADES:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->CENTURIES:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MILLENNIA:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->ERAS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    if-eqz p1, :cond_26

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalUnit;->isSupportedBy(Ljj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public isValidMonthDay(Ljj$/time/MonthDay;)Z
    .registers 3

    if-eqz p1, :cond_c

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-virtual {p1, v0}, Ljj$/time/MonthDay;->isValidYear(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public length()I
    .registers 2

    invoke-virtual {p0}, Ljj$/time/Year;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/Year;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/Year;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/Year;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Year;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Year;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/Year;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Year;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public minusYears(J)Ljj$/time/Year;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;
    .registers 7

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_62

    sget-object v0, Ljj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

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

    :pswitch_2b  #0x5
    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/Year;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ljj$/time/Year;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/Year;

    move-result-object v0

    return-object v0

    :pswitch_3c  #0x4
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    return-object v0

    :pswitch_47  #0x3
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    return-object v0

    :pswitch_52  #0x2
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    return-object v0

    :pswitch_5d  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/Year;->plusYears(J)Ljj$/time/Year;

    move-result-object v0

    return-object v0

    :cond_62
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Year;

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_52  #00000002
        :pswitch_47  #00000003
        :pswitch_3c  #00000004
        :pswitch_2b  #00000005
    .end packed-switch
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Year;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Year;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/Year;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Year;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Ljj$/time/Year;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    iget v1, p0, Ljj$/time/Year;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    invoke-static {v0}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v0

    return-object v0
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

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_12
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_16

    iget v0, p0, Ljj$/time/Year;->year:I

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_e

    const-wide/32 v3, 0x3b9aca00

    goto :goto_11

    :cond_e
    const-wide/32 v3, 0x3b9ac9ff

    :goto_11
    invoke-static {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 10

    invoke-static {p1}, Ljj$/time/Year;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Year;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_54

    iget v1, v0, Ljj$/time/Year;->year:I

    int-to-long v1, v1

    iget v3, p0, Ljj$/time/Year;->year:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    sget-object v3, Ljj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5a

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

    :pswitch_36  #0x5
    sget-object v3, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3}, Ljj$/time/Year;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljj$/time/Year;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    return-wide v3

    :pswitch_44  #0x4
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    :pswitch_49  #0x3
    const-wide/16 v3, 0x64

    div-long v3, v1, v3

    return-wide v3

    :pswitch_4e  #0x2
    const-wide/16 v3, 0xa

    div-long v3, v1, v3

    return-wide v3

    :pswitch_53  #0x1
    return-wide v1

    :cond_54
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_4e  #00000002
        :pswitch_49  #00000003
        :pswitch_44  #00000004
        :pswitch_36  #00000005
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/Year;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Year;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/Year;
    .registers 9

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v1, Ljj$/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_60

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

    :pswitch_2f  #0x3
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/Year;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_3b

    move-object v1, p0

    goto :goto_42

    :cond_3b
    iget v1, p0, Ljj$/time/Year;->year:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v1

    :goto_42
    return-object v1

    :pswitch_43  #0x2
    long-to-int v1, p2

    invoke-static {v1}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v1

    return-object v1

    :pswitch_49  #0x1
    iget v1, p0, Ljj$/time/Year;->year:I

    if-ge v1, v2, :cond_51

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_52

    :cond_51
    move-wide v1, p2

    :goto_52
    long-to-int v2, v1

    invoke-static {v2}, Ljj$/time/Year;->of(I)Ljj$/time/Year;

    move-result-object v1

    return-object v1

    :cond_58
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Year;

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_43  #00000002
        :pswitch_2f  #00000003
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Year;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/Year;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/Year;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Ljj$/time/Year;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
