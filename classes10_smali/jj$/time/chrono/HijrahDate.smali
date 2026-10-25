.class public final Ljj$/time/chrono/HijrahDate;
.super Ljj$/time/chrono/ChronoLocalDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient chrono:Ljj$/time/chrono/HijrahChronology;

.field private final transient dayOfMonth:I

.field private final transient monthOfYear:I

.field private final transient prolepticYear:I


# direct methods
.method private constructor <init>(Ljj$/time/chrono/HijrahChronology;III)V
    .registers 5

    invoke-direct {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    invoke-virtual {p1, p2, p3, p4}, Ljj$/time/chrono/HijrahChronology;->getEpochDay(III)J

    iput-object p1, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    iput p2, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iput p3, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iput p4, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    return-void
.end method

.method private constructor <init>(Ljj$/time/chrono/HijrahChronology;J)V
    .registers 6

    invoke-direct {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    long-to-int v0, p2

    invoke-virtual {p1, v0}, Ljj$/time/chrono/HijrahChronology;->getHijrahDateInfo(I)[I

    move-result-object v0

    iput-object p1, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/HijrahDate;
    .registers 2

    sget-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Ljj$/time/chrono/HijrahChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfWeek()I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getDayOfYear()I
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getEraValue()I
    .registers 3

    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private getProlepticMonth()J
    .registers 5

    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Ljj$/time/chrono/HijrahDate;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/HijrahDate;->now(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;
    .registers 4

    sget-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    invoke-static {p0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljj$/time/chrono/HijrahDate;->ofEpochDay(Ljj$/time/chrono/HijrahChronology;J)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/chrono/HijrahDate;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/HijrahDate;->now(Ljj$/time/Clock;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljj$/time/chrono/HijrahDate;
    .registers 4

    sget-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, p0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->date(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method static of(Ljj$/time/chrono/HijrahChronology;III)Ljj$/time/chrono/HijrahDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;-><init>(Ljj$/time/chrono/HijrahChronology;III)V

    return-object v0
.end method

.method static ofEpochDay(Ljj$/time/chrono/HijrahChronology;J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    new-instance v0, Ljj$/time/chrono/HijrahDate;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/chrono/HijrahDate;-><init>(Ljj$/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljj$/time/chrono/HijrahDate;
    .registers 6

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahChronology;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/chrono/HijrahChronology;->date(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v4

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;
    .registers 6

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, p1, p2}, Ljj$/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    if-le p3, v0, :cond_9

    move p3, v0

    :cond_9
    iget-object v1, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    invoke-static {v1, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->of(Ljj$/time/chrono/HijrahChronology;III)Ljj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/chrono/HijrahDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/HijrahDate;

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v4, v1, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    if-ne v3, v4, :cond_2d

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, v1, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    if-ne v3, v4, :cond_2d

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    iget v4, v1, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    if-ne v3, v4, :cond_2d

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v1}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljj$/time/chrono/HijrahChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    return v2
.end method

.method public bridge synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljj$/time/chrono/HijrahChronology;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getEra()Ljj$/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljj$/time/chrono/HijrahEra;
    .registers 2

    sget-object v0, Ljj$/time/chrono/HijrahEra;->AH:Ljj$/time/chrono/HijrahEra;

    return-object v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_83

    sget-object v0, Ljj$/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

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

    :pswitch_2b  #0xd
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getEraValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_31  #0xc
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_35  #0xb
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_39  #0xa
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    :pswitch_3e  #0x9
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_42  #0x8
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_4e  #0x7
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    :pswitch_53  #0x6
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_5f  #0x5
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_69  #0x4
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_6f  #0x3
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0

    :pswitch_79  #0x2
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_7f  #0x1
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v0, v0

    return-wide v0

    :cond_83
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7f  #00000001
        :pswitch_79  #00000002
        :pswitch_6f  #00000003
        :pswitch_69  #00000004
        :pswitch_5f  #00000005
        :pswitch_53  #00000006
        :pswitch_4e  #00000007
        :pswitch_42  #00000008
        :pswitch_3e  #00000009
        :pswitch_39  #0000000a
        :pswitch_35  #0000000b
        :pswitch_31  #0000000c
        :pswitch_2b  #0000000d
    .end packed-switch
.end method

.method public hashCode()I
    .registers 7

    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    and-int/lit16 v4, v0, -0x800

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public isLeapYear()Z
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/HijrahChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    invoke-virtual {v0, v1}, Ljj$/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/HijrahDate;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/HijrahDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic minusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->minusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->minusMonths(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusMonths(J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->minusWeeks(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusWeeks(J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->minusYears(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method minusYears(J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/HijrahDate;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/HijrahDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Ljj$/time/chrono/HijrahDate;
    .registers 7

    new-instance v0, Ljj$/time/chrono/HijrahDate;

    iget-object v1, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/chrono/HijrahDate;-><init>(Ljj$/time/chrono/HijrahChronology;J)V

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->plusMonths(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Ljj$/time/chrono/HijrahDate;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v4, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long v4, v0, p1

    iget-object v6, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    invoke-static {v4, v5, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljj$/time/chrono/HijrahChronology;->checkValidYear(J)I

    move-result v6

    invoke-static {v4, v5, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    add-int/lit8 v3, v3, 0x1

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v6, v3, v2}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2
.end method

.method bridge synthetic plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->plusWeeks(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusWeeks(J)Ljj$/time/chrono/HijrahDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/HijrahDate;->plusYears(J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Ljj$/time/chrono/HijrahDate;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v0

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 8

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_57

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_5c

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/chrono/HijrahChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_23  #0x3
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_2a  #0x2
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_34  #0x1
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_3e
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

    :cond_57
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_34  #00000001
        :pswitch_2a  #00000002
        :pswitch_23  #00000003
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 5

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/chrono/HijrahChronology;->getEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/ChronoPeriod;
    .registers 11

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljj$/time/chrono/HijrahChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    iget v1, v0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    iget v2, v0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-long v1, v1

    iget v3, v0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    iget v4, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    sub-int/2addr v3, v4

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_35

    if-gez v3, :cond_35

    sub-long/2addr v1, v4

    invoke-virtual {p0, v1, v2}, Ljj$/time/chrono/HijrahDate;->plusMonths(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v4

    invoke-virtual {v0}, Ljj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Ljj$/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    :cond_34
    goto :goto_41

    :cond_35
    cmp-long v8, v1, v6

    if-gez v8, :cond_34

    if-lez v3, :cond_34

    add-long/2addr v1, v4

    invoke-virtual {v0}, Ljj$/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_41
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    rem-long v4, v1, v4

    long-to-int v5, v4

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v4

    invoke-static {v6, v7}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v8

    invoke-virtual {v4, v8, v5, v3}, Ljj$/time/chrono/HijrahChronology;->period(III)Ljj$/time/chrono/ChronoPeriod;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/HijrahDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/HijrahDate;
    .registers 11

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_da

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    iget-object v1, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    invoke-virtual {v1, v0}, Ljj$/time/chrono/HijrahChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    long-to-int v1, p2

    sget-object v2, Ljj$/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x7

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_e2

    new-instance v2, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_38  #0xd
    iget v2, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    sub-int/2addr v5, v2

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v5, v2, v3}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_44  #0xc
    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_4d  #0xb
    iget v2, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    if-lt v2, v5, :cond_53

    move v2, v1

    goto :goto_55

    :cond_53
    rsub-int/lit8 v2, v1, 0x1

    :goto_55
    iget v3, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v4, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v3, v4}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_5e  #0xa
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljj$/time/chrono/HijrahDate;->plusMonths(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_69  #0x9
    iget v2, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-direct {p0, v2, v1, v3}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_72  #0x8
    sget-object v2, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/HijrahDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long v5, p2, v5

    mul-long v5, v5, v3

    invoke-virtual {p0, v5, v6}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_81  #0x7
    new-instance v2, Ljj$/time/chrono/HijrahDate;

    iget-object v3, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    invoke-direct {v2, v3, p2, p3}, Ljj$/time/chrono/HijrahDate;-><init>(Ljj$/time/chrono/HijrahChronology;J)V

    return-object v2

    :pswitch_89  #0x6
    sget-object v2, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/HijrahDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_96  #0x5
    sget-object v2, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/HijrahDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_a3  #0x4
    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getDayOfWeek()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_af  #0x3
    sget-object v2, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/HijrahDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long v5, p2, v5

    mul-long v5, v5, v3

    invoke-virtual {p0, v5, v6}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_be  #0x2
    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0}, Ljj$/time/chrono/HijrahDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljj$/time/chrono/HijrahDate;->plusDays(J)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :pswitch_d1  #0x1
    iget v2, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-direct {p0, v2, v3, v1}, Ljj$/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljj$/time/chrono/HijrahDate;

    move-result-object v2

    return-object v2

    :cond_da
    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    return-object v0

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_d1  #00000001
        :pswitch_be  #00000002
        :pswitch_af  #00000003
        :pswitch_a3  #00000004
        :pswitch_96  #00000005
        :pswitch_89  #00000006
        :pswitch_81  #00000007
        :pswitch_72  #00000008
        :pswitch_69  #00000009
        :pswitch_5e  #0000000a
        :pswitch_4d  #0000000b
        :pswitch_44  #0000000c
        :pswitch_38  #0000000d
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/HijrahDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/HijrahDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public withVariant(Ljj$/time/chrono/HijrahChronology;)Ljj$/time/chrono/HijrahDate;
    .registers 6

    iget-object v0, p0, Ljj$/time/chrono/HijrahDate;->chrono:Ljj$/time/chrono/HijrahChronology;

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iget v0, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    invoke-virtual {p1, v0, v1}, Ljj$/time/chrono/HijrahChronology;->getDayOfYear(II)I

    move-result v0

    iget v1, p0, Ljj$/time/chrono/HijrahDate;->prolepticYear:I

    iget v2, p0, Ljj$/time/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    if-le v3, v0, :cond_17

    move v3, v0

    goto :goto_19

    :cond_17
    iget v3, p0, Ljj$/time/chrono/HijrahDate;->dayOfMonth:I

    :goto_19
    invoke-static {p1, v1, v2, v3}, Ljj$/time/chrono/HijrahDate;->of(Ljj$/time/chrono/HijrahChronology;III)Ljj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/HijrahDate;->getChronology()Ljj$/time/chrono/HijrahChronology;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/HijrahDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    return-void
.end method
