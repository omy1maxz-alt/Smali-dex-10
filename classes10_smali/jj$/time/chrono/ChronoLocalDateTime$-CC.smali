.class public final synthetic Ljj$/time/chrono/ChronoLocalDateTime$-CC;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"


# direct methods
.method public static $default$adjustInto(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$compareTo(Ljj$/time/chrono/ChronoLocalDateTime;Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public static $default$compareTo(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)I
    .registers 5

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->compareTo(Ljj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-nez v0, :cond_28

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

    move-result v0

    if-nez v0, :cond_28

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/time/chrono/Chronology;->compareTo(Ljj$/time/chrono/Chronology;)I

    move-result v0

    :cond_28
    return v0
.end method

.method public static $default$format(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getChronology(Ljj$/time/chrono/ChronoLocalDateTime;)Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static $default$isAfter(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 11

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2f

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v4, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v4, 0x1

    :goto_30
    return v4
.end method

.method public static $default$isBefore(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 11

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2f

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v4, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v4, 0x1

    :goto_30
    return v4
.end method

.method public static $default$isEqual(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2a

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public static $default$isSupported(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalUnit;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalUnit;->isSupportedBy(Ljj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static $default$minus(Ljj$/time/chrono/ChronoLocalDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 6

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Ljj$/time/temporal/Temporal$-CC;->$default$minus(Ljj$/time/temporal/Temporal;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$minus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$minus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$minus(Ljj$/time/chrono/ChronoLocalDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$minus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$plus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$plus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$plus(Ljj$/time/chrono/ChronoLocalDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$plus(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$query(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_37

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_37

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_13

    goto :goto_37

    :cond_13
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_29

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_32

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_32
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_37
    :goto_37
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$toEpochSecond(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/ZoneOffset;)J
    .registers 8

    const-string v0, "offset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public static $default$toInstant(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/Instant;
    .registers 6

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v0

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$with(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$with(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$with(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 6

    instance-of v0, p0, Ljj$/time/chrono/ChronoLocalDateTime;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateTime;

    return-object v0

    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p0}, Ljj$/time/chrono/Chronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    return-object v1

    :cond_1e
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$timeLineOrder$b9959cb5$1(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)I
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-interface {v2}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_2a
    return v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Ljj$/time/chrono/ChronoLocalDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/chrono/ChronoLocalDateTime$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method
