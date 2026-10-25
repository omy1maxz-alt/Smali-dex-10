.class public final synthetic Ljj$/time/chrono/Chronology$-CC;
.super Ljava/lang/Object;
.source "Chronology.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Ljj$/time/chrono/Chronology;Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/Chronology;

    invoke-interface {p0, p1}, Ljj$/time/chrono/Chronology;->compareTo(Ljj$/time/chrono/Chronology;)I

    move-result p1

    return p1
.end method

.method public static $default$date(Ljj$/time/chrono/Chronology;Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 6

    invoke-interface {p0, p1, p2}, Ljj$/time/chrono/Chronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3, p4}, Ljj$/time/chrono/Chronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateNow(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/chrono/Chronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateNow(Ljj$/time/chrono/Chronology;Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    const-string v0, "clock"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateNow(Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/chrono/Chronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$dateYearDay(Ljj$/time/chrono/Chronology;Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-interface {p0, p1, p2}, Ljj$/time/chrono/Chronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3}, Ljj$/time/chrono/Chronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$epochSecond(Ljj$/time/chrono/Chronology;IIIIIILjj$/time/ZoneOffset;)J
    .registers 14

    const-string v0, "zoneOffset"

    invoke-static {p7, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-interface {p0, p1, p2, p3}, Ljj$/time/chrono/Chronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    mul-int/lit8 v2, p4, 0x3c

    add-int/2addr v2, p5

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, p6

    int-to-long v2, v2

    invoke-virtual {p7}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v2, v4

    invoke-static {v0, v1, v4, v5}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static $default$epochSecond(Ljj$/time/chrono/Chronology;Ljj$/time/chrono/Era;IIIIIILjj$/time/ZoneOffset;)J
    .registers 20

    const-string v0, "era"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p0 .. p2}, Ljj$/time/chrono/Chronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v2

    move-object v1, p0

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v1 .. v8}, Ljj$/time/chrono/Chronology;->epochSecond(IIIIIILjj$/time/ZoneOffset;)J

    move-result-wide v9

    return-wide v9
.end method

.method public static $default$getDisplayName(Ljj$/time/chrono/Chronology;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljj$/time/chrono/Chronology$1;

    invoke-direct {v0, p0}, Ljj$/time/chrono/Chronology$1;-><init>(Ljj$/time/chrono/Chronology;)V

    new-instance v1, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendChronologyText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static $default$localDateTime(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 7

    :try_start_0
    invoke-interface {p0, p1}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {p1}, Ljj$/time/LocalTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0
    :try_end_c
    .catch Ljj$/time/DateTimeException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct {v1, v2, v0}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static $default$period(Ljj$/time/chrono/Chronology;III)Ljj$/time/chrono/ChronoPeriod;
    .registers 5

    new-instance v0, Ljj$/time/chrono/ChronoPeriodImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/time/chrono/ChronoPeriodImpl;-><init>(Ljj$/time/chrono/Chronology;III)V

    return-object v0
.end method

.method public static $default$zonedDateTime(Ljj$/time/chrono/Chronology;Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-static {p0, p1, p2}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljj$/time/chrono/Chronology;Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public static $default$zonedDateTime(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 7

    :try_start_0
    invoke-static {p1}, Ljj$/time/ZoneId;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneId;

    move-result-object v0
    :try_end_4
    .catch Ljj$/time/DateTimeException; {:try_start_0 .. :try_end_4} :catch_1c

    :try_start_4
    invoke-static {p1}, Ljj$/time/Instant;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Instant;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljj$/time/chrono/Chronology;->zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v2
    :try_end_c
    .catch Ljj$/time/DateTimeException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v2

    :catch_d
    move-exception v1

    :try_start_e
    invoke-interface {p0, p1}, Ljj$/time/chrono/Chronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-static {p0, v2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3
    :try_end_1b
    .catch Ljj$/time/DateTimeException; {:try_start_e .. :try_end_1b} :catch_1c

    return-object v3

    :catch_1c
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct {v1, v2, v0}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;
    .registers 3

    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-static {v0, v1}, Ljj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/chrono/Chronology;

    return-object v1
.end method

.method public static getAvailableChronologies()Ljava/util/Set;
    .registers 1

    invoke-static {}, Ljj$/time/chrono/AbstractChronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/AbstractChronology;->of(Ljava/lang/String;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocale(Ljava/util/Locale;)Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/AbstractChronology;->ofLocale(Ljava/util/Locale;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method
