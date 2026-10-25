.class public final synthetic Ljj$/time/chrono/ChronoZonedDateTime$-CC;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Ljj$/time/chrono/ChronoZonedDateTime;Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime;->compareTo(Ljj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public static $default$compareTo(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)I
    .registers 6

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_52

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->getNano()I

    move-result v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    if-nez v0, :cond_52

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/time/chrono/ChronoLocalDateTime;->compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    if-nez v0, :cond_52

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_52

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/time/chrono/Chronology;->compareTo(Ljj$/time/chrono/Chronology;)I

    move-result v0

    :cond_52
    return v0
.end method

.method public static $default$format(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$get(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)I
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2c

    sget-object v0, Ljj$/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_1b  #0x2
    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    :pswitch_24  #0x1
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_1b  #00000002
    .end packed-switch
.end method

.method public static $default$getChronology(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getLong(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)J
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    sget-object v0, Ljj$/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :pswitch_1b  #0x2
    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_25  #0x1
    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    :cond_2a
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_1b  #00000002
    .end packed-switch
.end method

.method public static $default$isAfter(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)Z
    .registers 8

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljj$/time/LocalTime;->getNano()I

    move-result v5

    if-le v4, v5, :cond_23

    goto :goto_25

    :cond_23
    const/4 v4, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v4, 0x1

    :goto_26
    return v4
.end method

.method public static $default$isBefore(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)Z
    .registers 8

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljj$/time/LocalTime;->getNano()I

    move-result v5

    if-ge v4, v5, :cond_23

    goto :goto_25

    :cond_23
    const/4 v4, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v4, 0x1

    :goto_26
    return v4
.end method

.method public static $default$isEqual(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)Z
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getNano()I

    move-result v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->getNano()I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public static $default$isSupported(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalUnit;)Z
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

.method public static $default$minus(Ljj$/time/chrono/ChronoZonedDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 6

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Ljj$/time/temporal/Temporal$-CC;->$default$minus(Ljj$/time/temporal/Temporal;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$minus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$minus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$minus(Ljj$/time/chrono/ChronoZonedDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$minus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$plus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$plus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$plus(Ljj$/time/chrono/ChronoZonedDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$plus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static $default$query(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3c

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_3c

    :cond_d
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_18

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_23

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    :cond_2e
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_37

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_37
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static $default$range(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    sget-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    goto :goto_16

    :cond_d
    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDateTime;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toEpochSecond(Ljj$/time/chrono/ChronoZonedDateTime;)J
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public static $default$toInstant(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/Instant;
    .registers 5

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toLocalDate(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$toLocalTime(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/LocalTime;
    .registers 2

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$with(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$with(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$with(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 6

    instance-of v0, p0, Ljj$/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/chrono/ChronoZonedDateTime;

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

    invoke-interface {v0, p0}, Ljj$/time/chrono/Chronology;->zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_1e
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$timeLineOrder$f56e6d02$1(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)I
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/LocalTime;->getNano()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_24
    return v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Ljj$/time/chrono/ChronoZonedDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/chrono/ChronoZonedDateTime$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method
