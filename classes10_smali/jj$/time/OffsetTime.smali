.class public final Ljj$/time/OffsetTime;
.super Ljava/lang/Object;
.source "OffsetTime.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX:Ljj$/time/OffsetTime;

.field public static final MIN:Ljj$/time/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Ljj$/time/ZoneOffset;

.field private final time:Ljj$/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/time/LocalTime;->MIN:Ljj$/time/LocalTime;

    sget-object v1, Ljj$/time/ZoneOffset;->MAX:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalTime;->atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljj$/time/OffsetTime;->MIN:Ljj$/time/OffsetTime;

    sget-object v0, Ljj$/time/LocalTime;->MAX:Ljj$/time/LocalTime;

    sget-object v1, Ljj$/time/ZoneOffset;->MIN:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalTime;->atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljj$/time/OffsetTime;->MAX:Ljj$/time/OffsetTime;

    return-void
.end method

.method private constructor <init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "time"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    iput-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/OffsetTime;
    .registers 6

    instance-of v0, p0, Ljj$/time/OffsetTime;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p0}, Ljj$/time/LocalTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalTime;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/ZoneOffset;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneOffset;

    move-result-object v1

    new-instance v2, Ljj$/time/OffsetTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V
    :try_end_15
    .catch Ljj$/time/DateTimeException; {:try_start_8 .. :try_end_15} :catch_16

    return-object v2

    :catch_16
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain OffsetTime from TemporalAccessor: "

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

.method public static now()Ljj$/time/OffsetTime;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/OffsetTime;->now(Ljj$/time/Clock;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/OffsetTime;
    .registers 3

    const-string v0, "clock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/OffsetTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/OffsetTime;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/OffsetTime;->now(Ljj$/time/Clock;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIILjj$/time/ZoneOffset;)Ljj$/time/OffsetTime;
    .registers 7

    new-instance v0, Ljj$/time/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Ljj$/time/LocalTime;->of(IIII)Ljj$/time/LocalTime;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;
    .registers 3

    new-instance v0, Ljj$/time/OffsetTime;

    invoke-direct {v0, p0, p1}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetTime;
    .registers 11

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v4

    int-to-long v5, v4

    const-wide/32 v7, 0x3b9aca00

    mul-long v5, v5, v7

    invoke-virtual {p0}, Ljj$/time/Instant;->getNano()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v5

    new-instance v6, Ljj$/time/OffsetTime;

    invoke-direct {v6, v5, v1}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V

    return-object v6
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/OffsetTime;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/OffsetTime;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/OffsetTime;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/OffsetTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/OffsetTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljj$/time/OffsetTime;
    .registers 4

    invoke-static {p0}, Ljj$/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalTime;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/OffsetTime;->of(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

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

.method private toEpochNano()J
    .registers 7

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    sub-long v4, v0, v2

    return-wide v4
.end method

.method private with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Ljj$/time/OffsetTime;

    invoke-direct {v0, p1, p2}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    iget-object v1, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    iget-object v2, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Ljj$/time/LocalDate;)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljj$/time/OffsetDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/OffsetTime;

    invoke-virtual {p0, p1}, Ljj$/time/OffsetTime;->compareTo(Ljj$/time/OffsetTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/OffsetTime;)I
    .registers 6

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v1, p1, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    iget-object v1, p1, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, v1}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

    move-result v0

    return v0

    :cond_13
    invoke-direct {p0}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_29

    iget-object v1, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    iget-object v2, p1, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, v2}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

    move-result v0

    :cond_29
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/OffsetTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Ljj$/time/OffsetTime;

    iget-object v3, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    iget-object v4, v1, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v3, v4}, Ljj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
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
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_17

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_10
    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :cond_17
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljj$/time/OffsetTime;)Z
    .registers 7

    invoke-direct {p0}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isBefore(Ljj$/time/OffsetTime;)Z
    .registers 7

    invoke-direct {p0}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isEqual(Ljj$/time/OffsetTime;)Z
    .registers 7

    invoke-direct {p0}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    return v1

    :cond_13
    if-eqz p1, :cond_1c

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalUnit;->isSupportedBy(Ljj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/OffsetTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/OffsetTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/OffsetTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetTime;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/OffsetTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/OffsetTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->minusHours(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->minusMinutes(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->minusNanos(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->minusSeconds(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;
    .registers 6

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/LocalTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetTime;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/OffsetTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/OffsetTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->plusMinutes(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->plusNanos(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljj$/time/OffsetTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalTime;->plusSeconds(J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_43

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_43

    :cond_d
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne p1, v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    or-int/2addr v0, v1

    if-nez v0, :cond_41

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    goto :goto_41

    :cond_2a
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    return-object v0

    :cond_33
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3c

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_3c
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_41
    :goto_41
    const/4 v0, 0x0

    return-object v0

    :cond_43
    :goto_43
    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_14

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochSecond(Ljj$/time/LocalDate;)J
    .registers 8

    const-string v0, "date"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    iget-object v4, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v4}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v4}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public toLocalTime()Ljj$/time/LocalTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 9

    invoke-static {p1}, Ljj$/time/OffsetTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/OffsetTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_62

    invoke-direct {v0}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v1

    invoke-direct {p0}, Ljj$/time/OffsetTime;->toEpochNano()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljj$/time/OffsetTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_68

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

    :pswitch_38  #0x7
    const-wide v3, 0x274a48a78000L

    div-long v3, v1, v3

    return-wide v3

    :pswitch_40  #0x6
    const-wide v3, 0x34630b8a000L

    div-long v3, v1, v3

    return-wide v3

    :pswitch_48  #0x5
    const-wide v3, 0xdf8475800L

    div-long v3, v1, v3

    return-wide v3

    :pswitch_50  #0x4
    const-wide/32 v3, 0x3b9aca00

    div-long v3, v1, v3

    return-wide v3

    :pswitch_56  #0x3
    const-wide/32 v3, 0xf4240

    div-long v3, v1, v3

    return-wide v3

    :pswitch_5c  #0x2
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    :pswitch_61  #0x1
    return-wide v1

    :cond_62
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61  #00000001
        :pswitch_5c  #00000002
        :pswitch_56  #00000003
        :pswitch_50  #00000004
        :pswitch_48  #00000005
        :pswitch_40  #00000006
        :pswitch_38  #00000007
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/OffsetTime;
    .registers 4

    instance-of v0, p1, Ljj$/time/LocalTime;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalTime;

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_e
    instance-of v0, p1, Ljj$/time/ZoneOffset;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    move-object v1, p1

    check-cast v1, Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_1c
    instance-of v0, p1, Ljj$/time/OffsetTime;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0

    :cond_24
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/OffsetTime;
    .registers 7

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1a

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    iget-object v1, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v1

    return-object v1

    :cond_1a
    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/LocalTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/OffsetTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/OffsetTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Ljj$/time/OffsetTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withHour(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljj$/time/OffsetTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withMinute(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljj$/time/OffsetTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withNano(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;
    .registers 6

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalTime;->plusSeconds(J)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/OffsetTime;

    invoke-direct {v2, v1, p1}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V

    return-object v2
.end method

.method public withOffsetSameLocal(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;
    .registers 4

    if-eqz p1, :cond_c

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    goto :goto_13

    :cond_c
    new-instance v0, Ljj$/time/OffsetTime;

    iget-object v1, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-direct {v0, v1, p1}, Ljj$/time/OffsetTime;-><init>(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)V

    :goto_13
    return-object v0
.end method

.method public withSecond(I)Ljj$/time/OffsetTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withSecond(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetTime;->with(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/OffsetTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
