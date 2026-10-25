.class abstract Ljj$/time/chrono/ChronoLocalDateImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateImpl.java"

# interfaces
.implements Ljj$/time/chrono/ChronoLocalDate;
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private daysUntil(Ljj$/time/chrono/ChronoLocalDate;)J
    .registers 6

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private monthsUntil(Ljj$/time/chrono/ChronoLocalDate;)J
    .registers 11

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    cmp-long v5, v1, v3

    if-nez v5, :cond_3a

    sget-object v1, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    const-wide/16 v3, 0x20

    mul-long v1, v1, v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljj$/time/chrono/ChronoLocalDateImpl;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    sget-object v5, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5

    mul-long v5, v5, v3

    sget-object v7, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    sub-long v7, v5, v1

    div-long/2addr v7, v3

    return-wide v7

    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ChronoLocalDateImpl only supports Chronologies with 12 months per year"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public synthetic adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$adjustInto(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$atTime(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoLocalDate;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljj$/time/chrono/ChronoLocalDate;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/chrono/ChronoLocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->compareTo(Ljj$/time/chrono/ChronoLocalDate;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    return v2
.end method

.method public synthetic format(Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$format(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljj$/time/temporal/TemporalField;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public synthetic getEra()Ljj$/time/chrono/Era;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$getEra(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v2}, Ljj$/time/chrono/Chronology;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v3, v0

    long-to-int v4, v3

    xor-int/2addr v2, v4

    return v2
.end method

.method public synthetic isAfter(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isAfter(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isBefore(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isEqual(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    return p1
.end method

.method public synthetic isLeapYear()Z
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isLeapYear(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method public synthetic isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic lengthOfYear()I
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$lengthOfYear(Ljj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$minus(Ljj$/time/chrono/ChronoLocalDate;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$minus(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method minusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_18

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateImpl;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    goto :goto_1d

    :cond_18
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 8

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_76

    move-object v0, p3

    check-cast v0, Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/chrono/ChronoLocalDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7c

    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2b  #0x8
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    sget-object v2, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_3c  #0x7
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_47  #0x6
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_52  #0x5
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_5d  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_62  #0x3
    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_67  #0x2
    const/4 v1, 0x7

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :pswitch_71  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_76
    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$plus(Ljj$/time/chrono/ChronoLocalDate;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_67  #00000002
        :pswitch_62  #00000003
        :pswitch_5d  #00000004
        :pswitch_52  #00000005
        :pswitch_47  #00000006
        :pswitch_3c  #00000007
        :pswitch_2b  #00000008
    .end packed-switch
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$plus(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method abstract plusDays(J)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method abstract plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method abstract plusYears(J)Ljj$/time/chrono/ChronoLocalDate;
.end method

.method public synthetic query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$query(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toEpochDay()J
    .registers 3

    invoke-static {p0}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$toEpochDay(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/ChronoLocalDateImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljj$/time/chrono/ChronoLocalDateImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v7

    invoke-interface {v7}, Ljj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->getEra()Ljj$/time/chrono/Era;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-0"

    const-string v9, "-"

    const-wide/16 v10, 0xa

    cmp-long v12, v2, v10

    if-gez v12, :cond_47

    move-object v12, v8

    goto :goto_48

    :cond_47
    move-object v12, v9

    :goto_48
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    cmp-long v12, v4, v10

    if-gez v12, :cond_55

    goto :goto_56

    :cond_55
    move-object v8, v9

    :goto_56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 8

    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_78

    sget-object v1, Ljj$/time/chrono/ChronoLocalDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_82

    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_38  #0x8
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/ChronoLocalDateImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    :pswitch_46  #0x7
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x2ee0

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_4e  #0x6
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_56  #0x5
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x78

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_5e  #0x4
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_66  #0x3
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->monthsUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    return-wide v1

    :pswitch_6b  #0x2
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->daysUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x7

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_73  #0x1
    invoke-direct {p0, v0}, Ljj$/time/chrono/ChronoLocalDateImpl;->daysUntil(Ljj$/time/chrono/ChronoLocalDate;)J

    move-result-wide v1

    return-wide v1

    :cond_78
    const-string v1, "unit"

    invoke-static {p2, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_73  #00000001
        :pswitch_6b  #00000002
        :pswitch_66  #00000003
        :pswitch_5e  #00000004
        :pswitch_56  #00000005
        :pswitch_4e  #00000006
        :pswitch_46  #00000007
        :pswitch_38  #00000008
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$with(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$with(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method
