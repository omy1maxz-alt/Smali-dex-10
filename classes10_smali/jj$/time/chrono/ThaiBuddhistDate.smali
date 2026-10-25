.class public final Ljj$/time/chrono/ThaiBuddhistDate;
.super Ljj$/time/chrono/ChronoLocalDateImpl;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final transient isoDate:Ljj$/time/LocalDate;


# direct methods
.method constructor <init>(Ljj$/time/LocalDate;)V
    .registers 3

    invoke-direct {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    const-string v0, "isoDate"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 2

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method private getProlepticMonth()J
    .registers 5

    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object v2, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v2}, Ljj$/time/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static now()Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/ThaiBuddhistDate;->now(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    invoke-static {p0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/ThaiBuddhistDate;->now(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p0, -0x21f

    invoke-static {v1, p1, p2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    sget-object v3, Ljj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v3, v0, v1, v2}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(III)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {p1, v0}, Ljj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_f

    :cond_a
    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    invoke-direct {v0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    :goto_f
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/16 v1, 0x8

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
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Ljj$/time/chrono/ThaiBuddhistDate;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    iget-object v1, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    iget-object v2, v0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1, v2}, Ljj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;
    .registers 2

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getEra()Ljj$/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljj$/time/chrono/ThaiBuddhistEra;
    .registers 3

    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BE:Ljj$/time/chrono/ThaiBuddhistEra;

    goto :goto_c

    :cond_a
    sget-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljj$/time/chrono/ThaiBuddhistEra;

    :goto_c
    return-object v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_3b

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_40

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :pswitch_1a  #0x7
    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    if-lt v0, v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    int-to-long v0, v1

    return-wide v0

    :pswitch_24  #0x6
    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_2a  #0x5
    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    :pswitch_2f  #0x4
    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    if-lt v0, v1, :cond_37

    move v1, v0

    goto :goto_39

    :cond_37
    rsub-int/lit8 v1, v0, 0x1

    :goto_39
    int-to-long v1, v1

    return-wide v1

    :cond_3b
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_40
    .packed-switch 0x4
        :pswitch_2f  #00000004
        :pswitch_2a  #00000005
        :pswitch_24  #00000006
        :pswitch_1a  #00000007
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1}, Ljj$/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic minusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->minusDays(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->minusMonths(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method minusMonths(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->minusWeeks(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method minusWeeks(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->minusYears(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method minusYears(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->plusWeeks(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusWeeks(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->plusYears(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 11

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_63

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_4a

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_68

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_21  #0x4
    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x21f

    if-gtz v2, :cond_39

    invoke-virtual {v1}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v7

    add-long/2addr v7, v5

    neg-long v5, v7

    add-long/2addr v5, v3

    goto :goto_3e

    :cond_39
    invoke-virtual {v1}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v7

    add-long/2addr v5, v7

    :goto_3e
    invoke-static {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :pswitch_43  #0x1, 0x2, 0x3
    iget-object v1, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1}, Ljj$/time/LocalDate;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_4a
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

    :cond_63
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_43  #00000002
        :pswitch_43  #00000003
        :pswitch_21  #00000004
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

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
    .registers 7

    iget-object v0, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/Period;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljj$/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljj$/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/chrono/ThaiBuddhistChronology;->period(III)Ljj$/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 9

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_8c

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_10

    return-object p0

    :cond_10
    sget-object v1, Ljj$/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_94

    goto :goto_81

    :pswitch_1c  #0x5
    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    return-object v1

    :pswitch_32  #0x4, 0x6, 0x7
    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getChronology()Ljj$/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Ljj$/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_a0

    :pswitch_4a  #0x5
    goto :goto_81

    :pswitch_4b  #0x7
    iget-object v2, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x21f

    invoke-virtual {v2, v3}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    :pswitch_5d  #0x6
    iget-object v2, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    :pswitch_6a  #0x4
    iget-object v2, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-direct {p0}, Ljj$/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    if-lt v4, v3, :cond_74

    move v3, v1

    goto :goto_76

    :cond_74
    rsub-int/lit8 v3, v1, 0x1

    :goto_76
    add-int/lit16 v3, v3, -0x21f

    invoke-virtual {v2, v3}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    :goto_81
    iget-object v1, p0, Ljj$/time/chrono/ThaiBuddhistDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    return-object v1

    :cond_8c
    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0

    nop

    :pswitch_data_94
    .packed-switch 0x4
        :pswitch_32  #00000004
        :pswitch_1c  #00000005
        :pswitch_32  #00000006
        :pswitch_32  #00000007
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x4
        :pswitch_6a  #00000004
        :pswitch_4a  #00000005
        :pswitch_5d  #00000006
        :pswitch_4b  #00000007
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
