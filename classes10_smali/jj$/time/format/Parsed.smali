.class final Ljj$/time/format/Parsed;
.super Ljava/lang/Object;
.source "Parsed.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;


# instance fields
.field chrono:Ljj$/time/chrono/Chronology;

.field private date:Ljj$/time/chrono/ChronoLocalDate;

.field excessDays:Ljj$/time/Period;

.field final fieldValues:Ljava/util/Map;

.field leapSecond:Z

.field private resolverStyle:Ljj$/time/format/ResolverStyle;

.field private time:Ljj$/time/LocalTime;

.field zone:Ljj$/time/ZoneId;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    iput-object v0, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    return-void
.end method

.method private crossCheck()V
    .registers 3

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v0}, Ljj$/time/format/Parsed;->crossCheck(Ljj$/time/temporal/TemporalAccessor;)V

    :cond_9
    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0}, Ljj$/time/format/Parsed;->crossCheck(Ljj$/time/temporal/TemporalAccessor;)V

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/format/Parsed;->crossCheck(Ljj$/time/temporal/TemporalAccessor;)V

    :cond_29
    return-void
.end method

.method private crossCheck(Ljj$/time/temporal/TemporalAccessor;)V
    .registers 13

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/temporal/TemporalField;

    invoke-interface {p1, v2}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v3

    if-eqz v3, :cond_7a

    :try_start_22
    invoke-interface {p1, v2}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_26} :catch_78

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7a

    :cond_39
    new-instance v7, Ljj$/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflict found: Field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " differs from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " derived from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_78
    move-exception v3

    goto :goto_a

    :cond_7a
    :goto_7a
    goto :goto_a

    :cond_7b
    return-void
.end method

.method private resolveDateFields()V
    .registers 4

    iget-object v0, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    invoke-interface {v0, v1, v2}, Ljj$/time/chrono/Chronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/chrono/ChronoLocalDate;)V

    return-void
.end method

.method private resolveFields()V
    .registers 10

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveInstantFields()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveDateFields()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveTimeFields()V

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e0

    const/4 v0, 0x0

    :goto_12
    const/16 v1, 0x32

    if-ge v0, v1, :cond_ca

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/time/temporal/TemporalField;

    iget-object v5, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v6, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    invoke-interface {v4, v5, p0, v6}, Ljj$/time/temporal/TemporalField;->resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v5

    if-eqz v5, :cond_bb

    instance-of v1, v5, Ljj$/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_7a

    move-object v1, v5

    check-cast v1, Ljj$/time/chrono/ChronoZonedDateTime;

    iget-object v2, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    if-nez v2, :cond_4e

    invoke-interface {v1}, Ljj$/time/chrono/ChronoZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v2

    iput-object v2, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    goto :goto_5a

    :cond_4e
    iget-object v2, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    invoke-interface {v1}, Ljj$/time/chrono/ChronoZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    :goto_5a
    invoke-interface {v1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    goto :goto_7a

    :cond_5f
    new-instance v2, Ljj$/time/DateTimeException;

    iget-object v6, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7a
    :goto_7a
    instance-of v1, v5, Ljj$/time/chrono/ChronoLocalDateTime;

    if-eqz v1, :cond_95

    move-object v1, v5

    check-cast v1, Ljj$/time/chrono/ChronoLocalDateTime;

    invoke-interface {v1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    sget-object v6, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    invoke-direct {p0, v2, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/LocalTime;Ljj$/time/Period;)V

    invoke-interface {v1}, Ljj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/chrono/ChronoLocalDate;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_95
    instance-of v1, v5, Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_a3

    move-object v1, v5

    check-cast v1, Ljj$/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v1}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/chrono/ChronoLocalDate;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_a3
    instance-of v1, v5, Ljj$/time/LocalTime;

    if-eqz v1, :cond_b3

    move-object v1, v5

    check-cast v1, Ljj$/time/LocalTime;

    sget-object v2, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    invoke-direct {p0, v1, v2}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/LocalTime;Ljj$/time/Period;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_b3
    new-instance v1, Ljj$/time/DateTimeException;

    const-string v2, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    iget-object v6, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_c7
    goto/16 :goto_20

    :cond_c9
    nop

    :cond_ca
    if-eq v0, v1, :cond_d8

    if-lez v0, :cond_e0

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveInstantFields()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveDateFields()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveTimeFields()V

    goto :goto_e0

    :cond_d8
    new-instance v1, Ljj$/time/DateTimeException;

    const-string v2, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e0
    :goto_e0
    return-void
.end method

.method private resolveFractional()V
    .registers 7

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-nez v0, :cond_7d

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_22
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_5a
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    :goto_7d
    return-void
.end method

.method private resolveInstant()V
    .registers 8

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_59

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v0, :cond_59

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    iget-object v3, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-interface {v2, v3}, Ljj$/time/chrono/ChronoLocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v2, v1}, Ljj$/time/chrono/ChronoLocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    invoke-interface {v2}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    iget-object v4, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_38
    iget-object v1, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    if-eqz v1, :cond_59

    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-interface {v1, v2}, Ljj$/time/chrono/ChronoLocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    invoke-interface {v1, v2}, Ljj$/time/chrono/ChronoLocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Ljj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    iget-object v3, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    :goto_59
    return-void
.end method

.method private resolveInstantFields()V
    .registers 3

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    invoke-direct {p0, v0}, Ljj$/time/format/Parsed;->resolveInstantFields0(Ljj$/time/ZoneId;)V

    goto :goto_2b

    :cond_14
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/format/Parsed;->resolveInstantFields0(Ljj$/time/ZoneId;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private resolveInstantFields0(Ljj$/time/ZoneId;)V
    .registers 8

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/Instant;->ofEpochSecond(J)Ljj$/time/Instant;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {v1, v0, p1}, Ljj$/time/chrono/Chronology;->zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/chrono/ChronoLocalDate;)V

    sget-object v2, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    return-void
.end method

.method private resolvePeriod()V
    .registers 3

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    invoke-virtual {v0}, Ljj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    iput-object v0, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    :cond_1e
    return-void
.end method

.method private resolveTime(JJJJ)V
    .registers 16

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne v0, v1, :cond_45

    const-wide v0, 0x34630b8a000L

    invoke-static {p1, p2, v0, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    const-wide v2, 0xdf8475800L

    invoke-static {p3, p4, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    invoke-static {p5, p6, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p7, p8}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v4

    invoke-static {v5}, Ljj$/time/Period;->ofDays(I)Ljj$/time/Period;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/LocalTime;Ljj$/time/Period;)V

    goto :goto_87

    :cond_45
    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p3, p4}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, p7, p8}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    iget-object v2, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v3, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    if-ne v2, v3, :cond_72

    const-wide/16 v2, 0x18

    cmp-long v4, p1, v2

    if-nez v4, :cond_72

    if-nez v0, :cond_72

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-nez v4, :cond_72

    if-nez v1, :cond_72

    sget-object v2, Ljj$/time/LocalTime;->MIDNIGHT:Ljj$/time/LocalTime;

    const/4 v3, 0x1

    invoke-static {v3}, Ljj$/time/Period;->ofDays(I)Ljj$/time/Period;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/LocalTime;Ljj$/time/Period;)V

    goto :goto_87

    :cond_72
    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, p1, p2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v3, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, p5, p6}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    invoke-static {v2, v0, v3, v1}, Ljj$/time/LocalTime;->of(IIII)Ljj$/time/LocalTime;

    move-result-object v4

    sget-object v5, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    invoke-direct {p0, v4, v5}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/LocalTime;Ljj$/time/Period;)V

    :goto_87
    return-void
.end method

.method private resolveTimeFields()V
    .registers 13

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_43

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v5, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v5, :cond_2a

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v5, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    if-ne v0, v5, :cond_2f

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2f

    :cond_2a
    sget-object v0, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3, v4}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_2f
    sget-object v0, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const-wide/16 v6, 0x18

    cmp-long v8, v3, v6

    if-nez v8, :cond_3b

    move-wide v6, v1

    goto :goto_3c

    :cond_3b
    move-wide v6, v3

    :goto_3c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_43
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0xc

    if-eqz v0, :cond_83

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v7, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v7, :cond_6d

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v7, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    if-ne v0, v7, :cond_72

    cmp-long v0, v5, v1

    if-eqz v0, :cond_72

    :cond_6d
    sget-object v0, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v5, v6}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_72
    sget-object v0, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    sget-object v7, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    cmp-long v8, v5, v3

    if-nez v8, :cond_7b

    goto :goto_7c

    :cond_7b
    move-wide v1, v5

    :goto_7c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_83
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v7, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne v2, v7, :cond_cf

    sget-object v2, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/16 v4, 0xc

    invoke-static {v0, v1, v4}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    goto :goto_e7

    :cond_cf
    sget-object v2, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v2, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v7, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    mul-long v3, v3, v0

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v2, v7, v3}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_e7
    :goto_e7
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3c

    if-eqz v0, :cond_14f

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v5, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v5, :cond_10c

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v3, v4}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_10c
    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const-wide v6, 0x34630b8a000L

    div-long v6, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    const-wide v6, 0xdf8475800L

    div-long v6, v3, v6

    rem-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    const-wide/32 v6, 0x3b9aca00

    div-long v8, v3, v6

    rem-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    rem-long v6, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_14f
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v3, 0xf4240

    if-eqz v0, :cond_18f

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v7, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v7, :cond_175

    sget-object v0, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v5, v6}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_175
    sget-object v0, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v7, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    div-long v8, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v7, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    rem-long v8, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_18f
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_1ce

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v9, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v9, :cond_1b4

    sget-object v0, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_1b4
    sget-object v0, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    div-long v10, v7, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    rem-long v10, v7, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_1ce
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v9, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v9, :cond_1f1

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_1f1
    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const-wide/16 v10, 0xe10

    div-long v10, v7, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    div-long v10, v7, v1

    rem-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    rem-long v10, v7, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_21b
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_258

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v9, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v0, v9, :cond_23e

    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_23e
    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    div-long v10, v7, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    sget-object v9, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    rem-long v1, v7, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v9, v1}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_258
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v7, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v2, v7, :cond_27b

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_27b
    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2af

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v9, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v2, v9, :cond_29e

    sget-object v2, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_29e
    mul-long v9, v7, v5

    rem-long v5, v0, v5

    add-long v0, v9, v5

    sget-object v2, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_2af
    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e2

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v7, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v2, v7, :cond_2d2

    sget-object v2, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v5, v6}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_2d2
    sget-object v2, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    sget-object v7, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    mul-long v8, v5, v3

    rem-long v3, v0, v3

    add-long/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v2, v7, v3}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    :cond_2e2
    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Ljj$/time/format/Parsed;->resolveTime(JJJJ)V

    :cond_346
    return-void
.end method

.method private resolveTimeLenient()V
    .registers 14

    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-nez v1, :cond_10a

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_6b

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    mul-long v6, v4, v2

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    rem-long/2addr v8, v2

    add-long/2addr v6, v8

    sget-object v1, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    sget-object v8, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v1, v8, v9}, Ljj$/time/format/Parsed;->updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    mul-long v2, v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    :cond_5a
    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const-wide/32 v6, 0xf4240

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    :cond_6b
    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_91
    :goto_91
    nop

    :goto_92
    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_10a

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Long;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Long;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/Long;

    if-nez v10, :cond_c6

    if-nez v11, :cond_cc

    if-nez v12, :cond_cc

    :cond_c6
    if-eqz v10, :cond_cd

    if-nez v11, :cond_cd

    if-eqz v12, :cond_cd

    :cond_cc
    return-void

    :cond_cd
    const-wide/16 v1, 0x0

    if-eqz v10, :cond_d6

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_d7

    :cond_d6
    move-wide v3, v1

    :goto_d7
    if-eqz v11, :cond_de

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_df

    :cond_de
    move-wide v5, v1

    :goto_df
    if-eqz v12, :cond_e5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_e5
    move-wide v7, v1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljj$/time/format/Parsed;->resolveTime(JJJJ)V

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10a
    iget-object v1, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    sget-object v2, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq v1, v2, :cond_14f

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_14f

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/temporal/TemporalField;

    instance-of v4, v3, Ljj$/time/temporal/ChronoField;

    if-eqz v4, :cond_14e

    invoke-interface {v3}, Ljj$/time/temporal/TemporalField;->isTimeBased()Z

    move-result v4

    if-eqz v4, :cond_14e

    move-object v4, v3

    check-cast v4, Ljj$/time/temporal/ChronoField;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_14e
    goto :goto_122

    :cond_14f
    return-void
.end method

.method private updateCheckConflict(Ljj$/time/LocalTime;Ljj$/time/Period;)V
    .registers 8

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_4b

    iget-object v0, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    invoke-virtual {v0}, Ljj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p2}, Ljj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    invoke-virtual {v0, p2}, Ljj$/time/Period;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_48

    :cond_25
    new-instance v0, Ljj$/time/DateTimeException;

    iget-object v2, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflict found: Fields resolved to different excess periods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    :goto_48
    iput-object p2, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    goto :goto_72

    :cond_4b
    new-instance v0, Ljj$/time/DateTimeException;

    iget-object v2, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflict found: Fields resolved to different times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    iput-object p1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    iput-object p2, p0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    :goto_72
    return-void
.end method

.method private updateCheckConflict(Ljj$/time/chrono/ChronoLocalDate;)V
    .registers 6

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_34

    if-eqz p1, :cond_60

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_60

    :cond_f
    new-instance v0, Ljj$/time/DateTimeException;

    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: Fields resolved to two different dates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-eqz p1, :cond_60

    iget-object v0, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    invoke-interface {p1}, Ljj$/time/chrono/ChronoLocalDate;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iput-object p1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    goto :goto_60

    :cond_45
    new-instance v0, Ljj$/time/DateTimeException;

    iget-object v1, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_60
    return-void
.end method

.method private updateCheckConflict(Ljj$/time/temporal/TemporalField;Ljj$/time/temporal/TemporalField;Ljava/lang/Long;)V
    .registers 10

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_17

    goto :goto_56

    :cond_17
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " differs from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while resolving  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method copy()Ljj$/time/format/Parsed;
    .registers 4

    new-instance v0, Ljj$/time/format/Parsed;

    invoke-direct {v0}, Ljj$/time/format/Parsed;-><init>()V

    iget-object v1, v0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    iput-object v1, v0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    iget-object v1, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    iput-object v1, v0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    iget-boolean v1, p0, Ljj$/time/format/Parsed;->leapSecond:Z

    iput-boolean v1, v0, Ljj$/time/format/Parsed;->leapSecond:Z

    return-object v0
.end method

.method public synthetic get(Ljj$/time/temporal/TemporalField;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 6

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    :cond_14
    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljj$/time/chrono/ChronoLocalDate;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    :cond_27
    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    :cond_3a
    instance-of v1, p1, Ljj$/time/temporal/ChronoField;

    if-nez v1, :cond_43

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    return-wide v1

    :cond_43
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
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 4

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_31

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljj$/time/chrono/ChronoLocalDate;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_31

    :cond_15
    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_31

    :cond_22
    if-eqz p1, :cond_2f

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-nez v0, :cond_2f

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    :cond_31
    :goto_31
    return v1
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    return-object v0

    :cond_9
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    return-object v0

    :cond_12
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-static {v0}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v1

    :cond_23
    return-object v1

    :cond_24
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    return-object v0

    :cond_2d
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_56

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    :cond_48
    iget-object v1, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    instance-of v1, v1, Ljj$/time/ZoneOffset;

    if-eqz v1, :cond_51

    iget-object v1, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    return-object v1

    :cond_51
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_56
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_61

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_61
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_68

    return-object v1

    :cond_68
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method resolve(Ljj$/time/format/ResolverStyle;Ljava/util/Set;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    if-eqz p2, :cond_b

    iget-object v0, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_b
    iput-object p1, p0, Ljj$/time/format/Parsed;->resolverStyle:Ljj$/time/format/ResolverStyle;

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveFields()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveTimeLenient()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->crossCheck()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolvePeriod()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveFractional()V

    invoke-direct {p0}, Ljj$/time/format/Parsed;->resolveInstant()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    if-eqz v1, :cond_25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-nez v1, :cond_2d

    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v1, :cond_50

    :cond_2d
    const-string v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Ljj$/time/format/Parsed;->date:Ljj$/time/chrono/ChronoLocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    if-eqz v1, :cond_50

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_4b
    iget-object v1, p0, Ljj$/time/format/Parsed;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    :goto_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
