.class public final Ljj$/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "ZonedDateTime.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Ljj$/time/LocalDateTime;

.field private final offset:Ljj$/time/ZoneOffset;

.field private final zone:Ljj$/time/ZoneId;


# direct methods
.method private constructor <init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iput-object p2, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    iput-object p3, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    return-void
.end method

.method private static create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 9

    invoke-virtual {p3}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v3

    new-instance v4, Ljj$/time/ZonedDateTime;

    invoke-direct {v4, v3, v2, p3}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v4
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZonedDateTime;
    .registers 6

    instance-of v0, p0, Ljj$/time/ZonedDateTime;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p0}, Ljj$/time/ZoneId;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneId;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v3}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Ljj$/time/ZonedDateTime;->create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v4

    return-object v4

    :cond_25
    invoke-static {p0}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-static {p0}, Ljj$/time/LocalTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalTime;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ljj$/time/ZonedDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v3
    :try_end_31
    .catch Ljj$/time/DateTimeException; {:try_start_8 .. :try_end_31} :catch_32

    return-object v3

    :catch_32
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ZonedDateTime from TemporalAccessor: "

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

.method public static now()Ljj$/time/ZonedDateTime;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/ZonedDateTime;->now(Ljj$/time/Clock;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/ZonedDateTime;
    .registers 3

    const-string v0, "clock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/ZonedDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/ZonedDateTime;->now(Ljj$/time/Clock;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 10

    invoke-static/range {p0 .. p6}, Ljj$/time/LocalDateTime;->of(IIIIIII)Ljj$/time/LocalDateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p7, v1}, Ljj$/time/ZonedDateTime;->ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 4

    invoke-static {p0, p1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p2}, Ljj$/time/ZonedDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljj$/time/ZonedDateTime;->ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 5

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/Instant;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljj$/time/ZonedDateTime;->create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 6

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/time/zone/ZoneRules;->isValidOffset(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljj$/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v0

    :cond_1f
    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Ljj$/time/ZonedDateTime;->create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static ofLenient(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 5

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Ljj$/time/ZoneOffset;

    if-eqz v0, :cond_22

    invoke-virtual {p1, p2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_22

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneId must match ZoneOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_22
    new-instance v0, Ljj$/time/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v0
.end method

.method public static ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;
    .registers 8

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljj$/time/ZoneOffset;

    if-eqz v0, :cond_17

    new-instance v0, Ljj$/time/ZonedDateTime;

    move-object v1, p1

    check-cast v1, Ljj$/time/ZoneOffset;

    invoke-direct {v0, p0, v1, p1}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v0

    :cond_17
    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getValidOffsets(Ljj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2e

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/ZoneOffset;

    goto :goto_61

    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/zone/ZoneOffsetTransition;->getDuration()Ljj$/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {v2}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v2

    goto :goto_61

    :cond_49
    if-eqz p2, :cond_53

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    move-object v2, p2

    goto :goto_61

    :cond_53
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/ZoneOffset;

    const-string v3, "offset"

    invoke-static {v2, v3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/ZoneOffset;

    :goto_61
    new-instance v3, Ljj$/time/ZonedDateTime;

    invoke-direct {v3, p0, v2, p1}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v3
.end method

.method public static ofStrict(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 8

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/time/zone/ZoneRules;->isValidOffset(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_4e

    new-instance v2, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    new-instance v2, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneOffset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_81
    new-instance v1, Ljj$/time/ZonedDateTime;

    invoke-direct {v1, p0, p1, p2}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/ZonedDateTime;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/ZonedDateTime;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/ZonedDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/ZonedDateTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljj$/time/ZonedDateTime;
    .registers 5

    invoke-static {p0}, Ljj$/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {p0}, Ljj$/time/Ser;->read(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/ZoneId;

    invoke-static {v0, v1, v2}, Ljj$/time/ZonedDateTime;->ofLenient(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

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

.method private resolveInstant(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-static {p1, v0, v1}, Ljj$/time/ZonedDateTime;->ofInstant(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {p1, v0, v1}, Ljj$/time/ZonedDateTime;->ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveOffset(Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, v1, p1}, Ljj$/time/zone/ZoneRules;->isValidOffset(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljj$/time/ZonedDateTime;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-direct {v0, v1, p1, v2}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v0

    :cond_20
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoZonedDateTime;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljj$/time/chrono/ChronoZonedDateTime;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/ZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    move-object v1, p1

    check-cast v1, Ljj$/time/ZonedDateTime;

    iget-object v3, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v4, v1, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    iget-object v4, v1, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
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
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    sget-object v0, Ljj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_19  #0x2
    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    :pswitch_22  #0x1
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$get(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_19  #00000002
    .end packed-switch
.end method

.method public synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$getChronology(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljj$/time/DayOfWeek;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_28

    sget-object v0, Ljj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :pswitch_19  #0x2
    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_23  #0x1
    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    :cond_28
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_19  #00000002
    .end packed-switch
.end method

.method public getMinute()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getMonth()Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Ljj$/time/ZoneId;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v1}, Ljj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic isAfter(Ljj$/time/chrono/ChronoZonedDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isAfter(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isBefore(Ljj$/time/chrono/ChronoZonedDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isBefore(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public synthetic isEqual(Ljj$/time/chrono/ChronoZonedDateTime;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isEqual(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/chrono/ChronoZonedDateTime;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-nez v0, :cond_f

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/ZonedDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/ZonedDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/ZonedDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/ZonedDateTime;
    .registers 4

    instance-of v0, p1, Ljj$/time/Period;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, v0}, Ljj$/time/LocalDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_12
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/ZonedDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/ZonedDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusDays(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusDays(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusDays(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusHours(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusHours(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusHours(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusHours(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMinutes(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusMinutes(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusMinutes(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusMinutes(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMonths(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusMonths(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusMonths(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusMonths(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusNanos(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusNanos(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusNanos(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusSeconds(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusSeconds(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusSeconds(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusSeconds(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusWeeks(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusWeeks(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusWeeks(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusWeeks(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusYears(J)Ljj$/time/ZonedDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusYears(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/ZonedDateTime;->plusYears(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/ZonedDateTime;->plusYears(J)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;
    .registers 5

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_20

    invoke-interface {p3}, Ljj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveInstant(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/ZonedDateTime;
    .registers 4

    instance-of v0, p1, Ljj$/time/Period;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, v0}, Ljj$/time/LocalDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_12
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/ZonedDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/ZonedDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusHours(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveInstant(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusMinutes(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveInstant(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusMonths(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusNanos(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveInstant(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveInstant(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusWeeks(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusYears(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$query(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_19

    sget-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    goto :goto_14

    :cond_d
    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toEpochSecond()J
    .registers 3

    invoke-static {p0}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toEpochSecond(Ljj$/time/chrono/ChronoZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic toInstant()Ljj$/time/Instant;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toInstant(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Ljj$/time/LocalDate;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljj$/time/LocalDateTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljj$/time/LocalTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Ljj$/time/OffsetDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, v1}, Ljj$/time/OffsetDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

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

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    if-eq v1, v2, :cond_46

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v1}, Ljj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_46
    return-object v0
.end method

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 6

    invoke-static {p1}, Ljj$/time/ZonedDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, v1}, Ljj$/time/ZonedDateTime;->withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {p2}, Ljj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v2, v0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Ljj$/time/LocalDateTime;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    :cond_1d
    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toOffsetDateTime()Ljj$/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toOffsetDateTime()Ljj$/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljj$/time/OffsetDateTime;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    :cond_2a
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/ZonedDateTime;
    .registers 7

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1}, Ljj$/time/LocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_16
    instance-of v0, p1, Ljj$/time/LocalTime;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljj$/time/LocalTime;

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_2c
    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_38

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_38
    instance-of v0, p1, Ljj$/time/OffsetDateTime;

    if-eqz v0, :cond_4e

    move-object v0, p1

    check-cast v0, Ljj$/time/OffsetDateTime;

    invoke-virtual {v0}, Ljj$/time/OffsetDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljj$/time/ZonedDateTime;->ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_4e
    instance-of v0, p1, Ljj$/time/Instant;

    if-eqz v0, :cond_64

    move-object v0, p1

    check-cast v0, Ljj$/time/Instant;

    invoke-virtual {v0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Ljj$/time/Instant;->getNano()I

    move-result v3

    iget-object v4, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-static {v1, v2, v3, v4}, Ljj$/time/ZonedDateTime;->create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_64
    instance-of v0, p1, Ljj$/time/ZoneOffset;

    if-eqz v0, :cond_70

    move-object v0, p1

    check-cast v0, Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveOffset(Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_70
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/ZonedDateTime;
    .registers 7

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_35

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1d  #0x2
    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    invoke-static {v1}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/ZonedDateTime;->resolveOffset(Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v2

    return-object v2

    :pswitch_2a  #0x1
    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getNano()I

    move-result v1

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-static {p2, p3, v1, v2}, Ljj$/time/ZonedDateTime;->create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_35
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/ZonedDateTime;

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_1d  #00000002
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/ZonedDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/ZonedDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withDayOfMonth(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withDayOfYear(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljj$/time/ZonedDateTime;
    .registers 6

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljj$/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    new-instance v2, Ljj$/time/ZonedDateTime;

    iget-object v3, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v4, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v2

    :cond_2c
    return-object p0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFixedOffsetZone()Ljj$/time/ZonedDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    goto :goto_17

    :cond_c
    new-instance v0, Ljj$/time/ZonedDateTime;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v3, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    :goto_17
    return-object v0
.end method

.method public withHour(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withHour(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Ljj$/time/ZonedDateTime;
    .registers 6

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    new-instance v2, Ljj$/time/ZonedDateTime;

    iget-object v3, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v4, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljj$/time/ZonedDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v2

    :cond_28
    return-object p0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->withLaterOffsetAtOverlap()Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withMinute(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withMonth(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withNano(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withSecond(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withYear(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/ZonedDateTime;->resolveLocal(Ljj$/time/LocalDateTime;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 5

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    goto :goto_21

    :cond_f
    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v2}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Ljj$/time/ZonedDateTime;->create(JILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_21
    return-object v0
.end method

.method public bridge synthetic withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withZoneSameLocal(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 4

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    goto :goto_17

    :cond_f
    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljj$/time/ZonedDateTime;->ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public bridge synthetic withZoneSameLocal(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/ZonedDateTime;->withZoneSameLocal(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/ZonedDateTime;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneId;->write(Ljava/io/DataOutput;)V

    return-void
.end method
