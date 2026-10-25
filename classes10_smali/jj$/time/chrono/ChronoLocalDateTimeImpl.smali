.class final Ljj$/time/chrono/ChronoLocalDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Ljj$/time/chrono/ChronoLocalDateTime;
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# static fields
.field static final HOURS_PER_DAY:I = 0x18

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient date:Ljj$/time/chrono/ChronoLocalDate;

.field private final transient time:Ljj$/time/LocalTime;


# direct methods
.method private constructor <init>(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "date"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    return-void
.end method

.method static ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, required: "

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

.method static of(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 3

    new-instance v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)V

    return-object v0
.end method

.method private plusDays(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, p1, p2, v1}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusHours(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljj$/time/chrono/ChronoLocalDate;JJJJ)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusMinutes(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljj$/time/chrono/ChronoLocalDate;JJJJ)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusNanos(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljj$/time/chrono/ChronoLocalDate;JJJJ)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method private plusWithOverflow(Ljj$/time/chrono/ChronoLocalDate;JJJJ)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_17

    iget-object v2, v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-direct {v0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    return-object v2

    :cond_17
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    div-long v10, p4, v8

    add-long/2addr v4, v10

    const-wide/16 v10, 0x18

    div-long v12, p2, v10

    add-long/2addr v4, v12

    rem-long v12, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v12, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    iget-object v6, v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-virtual {v6}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    add-long/2addr v12, v6

    invoke-static {v12, v13, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-static {v12, v13, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-nez v8, :cond_63

    iget-object v8, v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    goto :goto_67

    :cond_63
    invoke-static {v2, v3}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v8

    :goto_67
    sget-object v9, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v9}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    invoke-direct {v0, v9, v8}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v9

    return-object v9
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/LocalTime;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

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

.method private with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 5

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    new-instance v1, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v1, v0, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)V

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$adjustInto(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public atZone(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoLocalDateTime;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/chrono/ChronoLocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I

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

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$format(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljj$/time/temporal/TemporalField;)I
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$getChronology(Ljj$/time/chrono/ChronoLocalDateTime;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    :goto_1a
    return-wide v1

    :cond_1b
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic isAfter(Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isAfter(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isBefore(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isEqual(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 6

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    return v1

    :cond_18
    if-eqz p1, :cond_21

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public synthetic isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoLocalDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoLocalDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$plus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 10

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_71

    move-object v0, p3

    check-cast v0, Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_1f  #0x7
    const-wide/16 v1, 0x100

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0xc

    mul-long v1, v1, v4

    invoke-direct {v3, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_32  #0x6
    invoke-direct {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_37  #0x5
    invoke-direct {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_3c  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_41  #0x3
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xf4240

    mul-long v1, v1, v4

    invoke-direct {v3, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_56  #0x2
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-direct {p0, v3, v4}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    invoke-direct {v3, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :pswitch_6c  #0x1
    invoke-direct {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_71
    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6c  #00000001
        :pswitch_56  #00000002
        :pswitch_41  #00000003
        :pswitch_3c  #00000004
        :pswitch_37  #00000005
        :pswitch_32  #00000006
        :pswitch_1f  #00000007
    .end packed-switch
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$plus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method plusSeconds(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 13

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljj$/time/chrono/ChronoLocalDate;JJJJ)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public synthetic query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$query(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljj$/time/chrono/ChronoLocalDate;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    :goto_1a
    return-object v1

    :cond_1b
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toEpochSecond(Ljj$/time/ZoneOffset;)J
    .registers 4

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$toEpochSecond(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic toInstant(Ljj$/time/ZoneOffset;)Ljj$/time/Instant;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$toInstant(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public toLocalTime()Ljj$/time/LocalTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 8

    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/time/chrono/Chronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_9a

    invoke-interface {p2}, Ljj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v1, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    iget-object v3, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    sget-object v4, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljj$/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a4

    goto :goto_6c

    :pswitch_35  #0x7
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    :pswitch_3b  #0x6
    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    :pswitch_42  #0x5
    const/16 v3, 0x5a0

    invoke-static {v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    :pswitch_49  #0x4
    const v3, 0x15180

    invoke-static {v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    goto :goto_6c

    :pswitch_51  #0x3
    const-wide/32 v3, 0x5265c00

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v1

    goto :goto_6c

    :pswitch_59  #0x2
    const-wide v3, 0x141dd76000L

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v1

    goto :goto_6c

    :pswitch_63  #0x1
    const-wide v3, 0x4e94914f0000L

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v1

    :goto_6c
    iget-object v3, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljj$/time/LocalTime;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    return-wide v3

    :cond_7b
    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    iget-object v3, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-virtual {v2, v3}, Ljj$/time/LocalTime;->isBefore(Ljj$/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_93

    const-wide/16 v2, 0x1

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v2, v3, v4}, Ljj$/time/chrono/ChronoLocalDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    :cond_93
    iget-object v2, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v2, v1, p2}, Ljj$/time/chrono/ChronoLocalDate;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    :cond_9a
    const-string v1, "unit"

    invoke-static {p2, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_59  #00000002
        :pswitch_51  #00000003
        :pswitch_49  #00000004
        :pswitch_42  #00000005
        :pswitch_3b  #00000006
        :pswitch_35  #00000007
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 4

    instance-of v0, p1, Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :cond_e
    instance-of v0, p1, Ljj$/time/LocalTime;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    move-object v1, p1

    check-cast v1, Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :cond_1c
    instance-of v0, p1, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0

    :cond_2e
    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;
    .registers 7

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljj$/time/LocalTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_1a
    iget-object v1, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/Temporal;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    return-object v1

    :cond_27
    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->time:Ljj$/time/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
