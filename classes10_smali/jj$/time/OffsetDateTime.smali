.class public final Ljj$/time/OffsetDateTime;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX:Ljj$/time/OffsetDateTime;

.field public static final MIN:Ljj$/time/OffsetDateTime;

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Ljj$/time/LocalDateTime;

.field private final offset:Ljj$/time/ZoneOffset;


# direct methods
.method public static synthetic $r8$lambda$_Z1rTp0fj6xv3b7HSM-00eRmwNU(Ljj$/time/OffsetDateTime;Ljj$/time/OffsetDateTime;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/OffsetDateTime;->compareInstant(Ljj$/time/OffsetDateTime;Ljj$/time/OffsetDateTime;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/time/LocalDateTime;->MIN:Ljj$/time/LocalDateTime;

    sget-object v1, Ljj$/time/ZoneOffset;->MAX:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Ljj$/time/OffsetDateTime;->MIN:Ljj$/time/OffsetDateTime;

    sget-object v0, Ljj$/time/LocalDateTime;->MAX:Ljj$/time/LocalDateTime;

    sget-object v1, Ljj$/time/ZoneOffset;->MIN:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Ljj$/time/OffsetDateTime;->MAX:Ljj$/time/OffsetDateTime;

    return-void
.end method

.method private constructor <init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    iput-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneOffset;

    iput-object v0, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    return-void
.end method

.method private static compareInstant(Ljj$/time/OffsetDateTime;Ljj$/time/OffsetDateTime;)I
    .registers 6

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0

    :cond_1b
    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalTime;->getNano()I

    move-result v1

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    :cond_3b
    return v0
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/OffsetDateTime;
    .registers 6

    instance-of v0, p0, Ljj$/time/OffsetDateTime;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p0}, Ljj$/time/ZoneOffset;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/LocalDate;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/LocalTime;

    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    invoke-static {v1, v2, v0}, Ljj$/time/OffsetDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v3

    return-object v3

    :cond_29
    invoke-static {p0}, Ljj$/time/Instant;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Instant;

    move-result-object v3

    invoke-static {v3, v0}, Ljj$/time/OffsetDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;

    move-result-object v4
    :try_end_31
    .catch Ljj$/time/DateTimeException; {:try_start_8 .. :try_end_31} :catch_32

    return-object v4

    :catch_32
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain OffsetDateTime from TemporalAccessor: "

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

.method public static now()Ljj$/time/OffsetDateTime;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/OffsetDateTime;->now(Ljj$/time/Clock;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/OffsetDateTime;
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

    invoke-static {v0, v1}, Ljj$/time/OffsetDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/OffsetDateTime;->now(Ljj$/time/Clock;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILjj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 10

    invoke-static/range {p0 .. p6}, Ljj$/time/LocalDateTime;->of(IIIIIII)Ljj$/time/LocalDateTime;

    move-result-object v0

    new-instance v1, Ljj$/time/OffsetDateTime;

    invoke-direct {v1, v0, p7}, Ljj$/time/OffsetDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V

    return-object v1
.end method

.method public static of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 5

    invoke-static {p0, p1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    new-instance v1, Ljj$/time/OffsetDateTime;

    invoke-direct {v1, v0, p2}, Ljj$/time/OffsetDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V

    return-object v1
.end method

.method public static of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 3

    new-instance v0, Ljj$/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Ljj$/time/OffsetDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;
    .registers 7

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

    invoke-virtual {p0}, Ljj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v2

    new-instance v3, Ljj$/time/OffsetDateTime;

    invoke-direct {v3, v2, v1}, Ljj$/time/OffsetDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V

    return-object v3
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/OffsetDateTime;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/OffsetDateTime;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/OffsetDateTime$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/time/OffsetDateTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljj$/time/OffsetDateTime;
    .registers 4

    invoke-static {p0}, Ljj$/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/OffsetDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

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

.method public static timeLineOrder()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Ljj$/time/OffsetDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/OffsetDateTime$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Ljj$/time/OffsetDateTime;

    invoke-direct {v0, p1, p2}, Ljj$/time/OffsetDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, v1, p1}, Ljj$/time/ZonedDateTime;->ofInstant(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZoneSimilarLocal(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, p1, v1}, Ljj$/time/ZonedDateTime;->ofLocal(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljj$/time/ZoneOffset;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/OffsetDateTime;

    invoke-virtual {p0, p1}, Ljj$/time/OffsetDateTime;->compareTo(Ljj$/time/OffsetDateTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/OffsetDateTime;)I
    .registers 5

    invoke-static {p0, p1}, Ljj$/time/OffsetDateTime;->compareInstant(Ljj$/time/OffsetDateTime;Ljj$/time/OffsetDateTime;)I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljj$/time/LocalDateTime;->compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    :cond_12
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/OffsetDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Ljj$/time/OffsetDateTime;

    iget-object v3, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v4, v1, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

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
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2a

    sget-object v0, Ljj$/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_19  #0x2
    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

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
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_19  #00000002
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljj$/time/DayOfWeek;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_28

    sget-object v0, Ljj$/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :pswitch_19  #0x2
    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_23  #0x1
    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

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

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getMonth()Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljj$/time/OffsetDateTime;)Z
    .registers 8

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

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

.method public isBefore(Ljj$/time/OffsetDateTime;)Z
    .registers 8

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

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

.method public isEqual(Ljj$/time/OffsetDateTime;)Z
    .registers 7

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

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

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/OffsetDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/OffsetDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/OffsetDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetDateTime;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/OffsetDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/OffsetDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusDays(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusDays(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusDays(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusHours(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusHours(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusHours(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusHours(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMinutes(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusMinutes(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusMinutes(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusMinutes(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMonths(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusMonths(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusMonths(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusMonths(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusNanos(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusNanos(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusNanos(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusSeconds(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusSeconds(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusSeconds(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusSeconds(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusWeeks(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusWeeks(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusWeeks(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusWeeks(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusYears(J)Ljj$/time/OffsetDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusYears(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/OffsetDateTime;->plusYears(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/OffsetDateTime;->plusYears(J)Ljj$/time/OffsetDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;
    .registers 6

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetDateTime;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/OffsetDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/OffsetDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusHours(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusMinutes(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusMonths(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusNanos(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusWeeks(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljj$/time/OffsetDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDateTime;->plusYears(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_42

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_42

    :cond_d
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    :cond_15
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_20

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_2b
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_34

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v0

    :cond_34
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_3d
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_42
    :goto_42
    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->getOffset()Ljj$/time/ZoneOffset;

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
    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

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

.method public toEpochSecond()J
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInstant()Ljj$/time/Instant;
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDateTime;->toInstant(Ljj$/time/ZoneOffset;)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Ljj$/time/LocalDate;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Ljj$/time/LocalDateTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public toLocalTime()Ljj$/time/LocalTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetTime()Ljj$/time/OffsetTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, v1}, Ljj$/time/OffsetTime;->of(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

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

.method public toZonedDateTime()Ljj$/time/ZonedDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, v1}, Ljj$/time/ZonedDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 6

    invoke-static {p1}, Ljj$/time/OffsetDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljj$/time/OffsetDateTime;->withOffsetSameInstant(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    iget-object v2, v0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Ljj$/time/LocalDateTime;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    :cond_17
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/OffsetDateTime;
    .registers 4

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-nez v0, :cond_38

    instance-of v0, p1, Ljj$/time/LocalTime;

    if-nez v0, :cond_38

    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_d

    goto :goto_38

    :cond_d
    instance-of v0, p1, Ljj$/time/Instant;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljj$/time/Instant;

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v0, v1}, Ljj$/time/OffsetDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    :cond_1b
    instance-of v0, p1, Ljj$/time/ZoneOffset;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    move-object v1, p1

    check-cast v1, Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    :cond_29
    instance-of v0, p1, Ljj$/time/OffsetDateTime;

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0

    :cond_31
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0

    :cond_38
    :goto_38
    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/OffsetDateTime;
    .registers 7

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_3e

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/OffsetDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v1, v2}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1f  #0x2
    iget-object v1, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    :pswitch_2e  #0x1
    invoke-virtual {p0}, Ljj$/time/OffsetDateTime;->getNano()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-static {v1, v2}, Ljj$/time/OffsetDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;

    move-result-object v1

    return-object v1

    :cond_3e
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/OffsetDateTime;

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_1f  #00000002
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withDayOfMonth(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withDayOfYear(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withHour(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withMinute(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withMonth(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withNano(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 6

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    new-instance v2, Ljj$/time/OffsetDateTime;

    invoke-direct {v2, v1, p1}, Ljj$/time/OffsetDateTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)V

    return-object v2
.end method

.method public withOffsetSameLocal(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-direct {p0, v0, p1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withSecond(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljj$/time/OffsetDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->withYear(I)Ljj$/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-direct {p0, v0, v1}, Ljj$/time/OffsetDateTime;->with(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->dateTime:Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/OffsetDateTime;->offset:Ljj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Ljj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
