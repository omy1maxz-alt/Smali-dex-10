.class final Ljj$/time/chrono/ChronoZonedDateTimeImpl;
.super Ljava/lang/Object;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

.field private final transient offset:Ljj$/time/ZoneOffset;

.field private final transient zone:Ljj$/time/ZoneId;


# direct methods
.method private constructor <init>(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    iput-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    const-string v0, "zone"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneId;

    iput-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    return-void
.end method

.method private create(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;
    .registers 4

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljj$/time/chrono/Chronology;Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method static ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;
    .registers 8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {v0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

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

.method static ofBest(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 9

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljj$/time/ZoneOffset;

    if-eqz v0, :cond_17

    new-instance v0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-object v1, p1

    check-cast v1, Ljj$/time/ZoneOffset;

    invoke-direct {v0, p0, v1, p1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v0

    :cond_17
    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/LocalDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getValidOffsets(Ljj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_32

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/ZoneOffset;

    goto :goto_5d

    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getDuration()Ljj$/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object p0

    invoke-virtual {v3}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v3

    goto :goto_5d

    :cond_4d
    if-eqz p2, :cond_57

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    move-object v3, p2

    goto :goto_5d

    :cond_57
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/ZoneOffset;

    :goto_5d
    const-string v4, "offset"

    invoke-static {v3, v4}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, p0, v3, p1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v4
.end method

.method static ofInstant(Ljj$/time/chrono/Chronology;Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;
    .registers 8

    invoke-virtual {p2}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    const-string v2, "offset"

    invoke-static {v1, v2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p1}, Ljj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v2

    invoke-interface {p0, v2}, Ljj$/time/chrono/Chronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v3

    check-cast v3, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    new-instance v4, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, v3, v1, p2}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v4
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 5

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateTime;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/ZoneOffset;

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/ZoneId;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    invoke-interface {v3, v2}, Ljj$/time/chrono/ChronoZonedDateTime;->withZoneSameLocal(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

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

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

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
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/chrono/ChronoZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/ChronoZonedDateTime;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->compareTo(Ljj$/time/chrono/ChronoZonedDateTime;)I

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

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$format(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljj$/time/temporal/TemporalField;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$get(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$getChronology(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$getLong(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getZone()Ljj$/time/ZoneId;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

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

.method public synthetic isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalUnit;)Z

    move-result p1

    return p1
.end method

.method public synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoZonedDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoZonedDateTime;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$minus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 6

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$plus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$plus(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$query(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$range(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
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

.method public synthetic toLocalDate()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toLocalDate(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    return-object v0
.end method

.method public synthetic toLocalTime()Ljj$/time/LocalTime;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$toLocalTime(Ljj$/time/chrono/ChronoZonedDateTime;)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v1

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

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljj$/time/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_50

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

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

    :cond_50
    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 6

    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/time/chrono/Chronology;->zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_22

    iget-object v1, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTime;->withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {v0}, Ljj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    :cond_22
    const-string v1, "unit"

    invoke-static {p2, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$with(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 8

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_43

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/chrono/ChronoZonedDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_50

    iget-object v1, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    iget-object v3, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v1, v2, v3}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    :pswitch_21  #0x2
    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    invoke-static {v1}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljj$/time/ZoneOffset;)Ljj$/time/Instant;

    move-result-object v2

    iget-object v3, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    invoke-direct {p0, v2, v3}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->create(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    return-object v2

    :pswitch_36  #0x1
    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v1

    sub-long v1, p2, v1

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1

    :cond_43
    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/Temporal;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_36  #00000001
        :pswitch_21  #00000002
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoZonedDateTime$-CC;->$default$with(Ljj$/time/chrono/ChronoZonedDateTime;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withEarlierOffsetAtOverlap()Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 6

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/LocalDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljj$/time/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v2

    :cond_2e
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 6

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/LocalDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    new-instance v2, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    invoke-direct {v2, v3, v1, v4}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)V

    return-object v2

    :cond_2a
    return-object p0
.end method

.method public withZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljj$/time/ZoneOffset;)Ljj$/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->create(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public withZoneSameLocal(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljj$/time/chrono/ChronoLocalDateTimeImpl;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljj$/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
