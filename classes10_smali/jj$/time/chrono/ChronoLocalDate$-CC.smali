.class public final synthetic Ljj$/time/chrono/ChronoLocalDate$-CC;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"


# direct methods
.method public static $default$adjustInto(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$atTime(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->of(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$compareTo(Ljj$/time/chrono/ChronoLocalDate;Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDate;->compareTo(Ljj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public static $default$compareTo(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)I
    .registers 6

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/time/chrono/Chronology;->compareTo(Ljj$/time/chrono/Chronology;)I

    move-result v0

    :cond_1a
    return v0
.end method

.method public static $default$format(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getEra(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/Era;
    .registers 3

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->eraOf(I)Ljj$/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public static $default$isAfter(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

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

.method public static $default$isBefore(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

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

.method public static $default$isEqual(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 7

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

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

.method public static $default$isLeapYear(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljj$/time/chrono/Chronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public static $default$isSupported(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalField;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    return v0

    :cond_9
    if-eqz p1, :cond_13

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static $default$isSupported(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalUnit;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->isDateBased()Z

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

.method public static $default$lengthOfYear(Ljj$/time/chrono/ChronoLocalDate;)I
    .registers 2

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public static $default$minus(Ljj$/time/chrono/ChronoLocalDate;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Ljj$/time/temporal/Temporal$-CC;->$default$minus(Ljj$/time/temporal/Temporal;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$minus(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$minus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$minus(Ljj$/time/chrono/ChronoLocalDate;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$minus(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static $default$plus(Ljj$/time/chrono/ChronoLocalDate;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 7

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-nez v0, :cond_11

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    :cond_11
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
.end method

.method public static $default$plus(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$plus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$plus(Ljj$/time/chrono/ChronoLocalDate;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$plus(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static $default$query(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_34

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_34

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_14

    goto :goto_34

    :cond_14
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    return-object v1

    :cond_1b
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_26

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2f

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_2f
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_34
    :goto_34
    return-object v1
.end method

.method public static $default$toEpochDay(Ljj$/time/chrono/ChronoLocalDate;)J
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static $default$with(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {p0, p1}, Ljj$/time/temporal/Temporal$-CC;->$default$with(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 7

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-nez v0, :cond_11

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoLocalDateImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    :cond_11
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
.end method

.method public static bridge synthetic $default$with(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$with(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    instance-of v0, p0, Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDate;

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

    invoke-interface {v0, p0}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_1e
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ChronoLocalDate from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$timeLineOrder$493d4938$1(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)I
    .registers 6

    invoke-interface {p0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Ljj$/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/chrono/ChronoLocalDate$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method
