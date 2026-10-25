.class public final Ljj$/time/LocalDateTime;
.super Ljava/lang/Object;
.source "LocalDateTime.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljj$/time/chrono/ChronoLocalDateTime;
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX:Ljj$/time/LocalDateTime;

.field public static final MIN:Ljj$/time/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Ljj$/time/LocalDate;

.field private final time:Ljj$/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/time/LocalDate;->MIN:Ljj$/time/LocalDate;

    sget-object v1, Ljj$/time/LocalTime;->MIN:Ljj$/time/LocalTime;

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljj$/time/LocalDateTime;->MIN:Ljj$/time/LocalDateTime;

    sget-object v0, Ljj$/time/LocalDate;->MAX:Ljj$/time/LocalDate;

    sget-object v1, Ljj$/time/LocalTime;->MAX:Ljj$/time/LocalTime;

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljj$/time/LocalDateTime;->MAX:Ljj$/time/LocalDateTime;

    return-void
.end method

.method private constructor <init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    iput-object p2, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    return-void
.end method

.method private compareTo0(Ljj$/time/LocalDateTime;)I
    .registers 5

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {p1}, Ljj$/time/LocalDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/LocalDate;->compareTo0(Ljj$/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {p1}, Ljj$/time/LocalDateTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

    move-result v0

    :cond_16
    return v0
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;
    .registers 6

    instance-of v0, p0, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0

    :cond_8
    instance-of v0, p0, Ljj$/time/ZonedDateTime;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Ljj$/time/ZonedDateTime;

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_14
    instance-of v0, p0, Ljj$/time/OffsetDateTime;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Ljj$/time/OffsetDateTime;

    invoke-virtual {v0}, Ljj$/time/OffsetDateTime;->toLocalDateTime()Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_20
    :try_start_20
    invoke-static {p0}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/LocalTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V
    :try_end_2d
    .catch Ljj$/time/DateTimeException; {:try_start_20 .. :try_end_2d} :catch_2e

    return-object v2

    :catch_2e
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain LocalDateTime from TemporalAccessor: "

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

.method public static now()Ljj$/time/LocalDateTime;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/LocalDateTime;->now(Ljj$/time/Clock;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/LocalDateTime;
    .registers 6

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

    invoke-virtual {v0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Ljj$/time/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/LocalDateTime;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/LocalDateTime;->now(Ljj$/time/Clock;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIII)Ljj$/time/LocalDateTime;
    .registers 8

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4}, Ljj$/time/LocalTime;->of(II)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIII)Ljj$/time/LocalDateTime;
    .registers 9

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5}, Ljj$/time/LocalTime;->of(III)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIIII)Ljj$/time/LocalDateTime;
    .registers 10

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5, p6}, Ljj$/time/LocalTime;->of(IIII)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjj$/time/Month;III)Ljj$/time/LocalDateTime;
    .registers 8

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(ILjj$/time/Month;I)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4}, Ljj$/time/LocalTime;->of(II)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjj$/time/Month;IIII)Ljj$/time/LocalDateTime;
    .registers 9

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(ILjj$/time/Month;I)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5}, Ljj$/time/LocalTime;->of(III)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(ILjj$/time/Month;IIIII)Ljj$/time/LocalDateTime;
    .registers 10

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(ILjj$/time/Month;I)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p3, p4, p5, p6}, Ljj$/time/LocalTime;->of(IIII)Ljj$/time/LocalTime;

    move-result-object v1

    new-instance v2, Ljj$/time/LocalDateTime;

    invoke-direct {v2, v0, v1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v2
.end method

.method public static of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;
    .registers 3

    const-string v0, "date"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/LocalDateTime;

    invoke-direct {v0, p0, p1}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v0
.end method

.method public static ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;
    .registers 14

    const-string v0, "offset"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-virtual {p3}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v3

    invoke-static {v0, v1, v2}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v2

    invoke-static {v3, v4}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v5

    int-to-long v6, v2

    const-wide/32 v8, 0x3b9aca00

    mul-long v6, v6, v8

    int-to-long v8, p2

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v6

    new-instance v7, Ljj$/time/LocalDateTime;

    invoke-direct {v7, v5, v6}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v7
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalDateTime;
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

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/LocalDateTime;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalDateTime;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/LocalDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/LocalDateTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method private plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    or-long v3, p2, p4

    or-long v3, v3, p6

    or-long v3, v3, p8

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_19

    iget-object v3, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {v0, v1, v3}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v3

    return-object v3

    :cond_19
    const-wide v3, 0x4e94914f0000L

    div-long v5, p8, v3

    const-wide/32 v7, 0x15180

    div-long v9, p6, v7

    add-long/2addr v5, v9

    const-wide/16 v9, 0x5a0

    div-long v11, p4, v9

    add-long/2addr v5, v11

    const-wide/16 v11, 0x18

    div-long v13, p2, v11

    add-long/2addr v5, v13

    int-to-long v13, v2

    mul-long v5, v5, v13

    rem-long v13, p8, v3

    rem-long v7, p6, v7

    const-wide/32 v15, 0x3b9aca00

    mul-long v7, v7, v15

    add-long/2addr v13, v7

    rem-long v7, p4, v9

    const-wide v9, 0xdf8475800L

    mul-long v7, v7, v9

    add-long/2addr v13, v7

    rem-long v7, p2, v11

    const-wide v9, 0x34630b8a000L

    mul-long v7, v7, v9

    add-long/2addr v13, v7

    iget-object v7, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v7}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v7

    int-to-long v9, v2

    mul-long v9, v9, v13

    add-long/2addr v9, v7

    invoke-static {v9, v10, v3, v4}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    add-long/2addr v5, v11

    invoke-static {v9, v10, v3, v4}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    cmp-long v11, v3, v7

    if-nez v11, :cond_6b

    iget-object v11, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    goto :goto_6f

    :cond_6b
    invoke-static {v3, v4}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v11

    :goto_6f
    invoke-virtual {v1, v5, v6}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v12

    invoke-direct {v0, v12, v11}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v12

    return-object v12
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDateTime;
    .registers 4

    invoke-static {p0}, Ljj$/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {p0}, Ljj$/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

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

.method private with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljj$/time/LocalDateTime;

    invoke-direct {v0, p1, p2}, Ljj$/time/LocalDateTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$adjustInto(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/OffsetDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/ZonedDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atZone(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/chrono/ChronoLocalDateTime;)I
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljj$/time/LocalDateTime;->compareTo0(Ljj$/time/LocalDateTime;)I

    move-result v0

    return v0

    :cond_c
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/LocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Ljj$/time/LocalDateTime;

    iget-object v3, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    iget-object v4, v1, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v3, v4}, Ljj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    iget-object v4, v1, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v3, v4}, Ljj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

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

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1}, Ljj$/time/LocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$getChronology(Ljj$/time/chrono/ChronoLocalDateTime;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Ljj$/time/DayOfWeek;
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getHour()I

    move-result v0

    return v0
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

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    :goto_1a
    return-wide v1

    :cond_1b
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getMonth()Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1}, Ljj$/time/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljj$/time/LocalDateTime;->compareTo0(Ljj$/time/LocalDateTime;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isAfter(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljj$/time/LocalDateTime;->compareTo0(Ljj$/time/LocalDateTime;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isBefore(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljj$/time/chrono/ChronoLocalDateTime;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    invoke-direct {p0, v0}, Ljj$/time/LocalDateTime;->compareTo0(Ljj$/time/LocalDateTime;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isEqual(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
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

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;
    .registers 5

    instance-of v0, p1, Ljj$/time/Period;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, v0}, Ljj$/time/LocalDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_14
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Ljj$/time/LocalDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusHours(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(J)Ljj$/time/LocalDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusMonths(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->plusMonths(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusMonths(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusWeeks(J)Ljj$/time/LocalDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusWeeks(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->plusWeeks(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusWeeks(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusYears(J)Ljj$/time/LocalDateTime;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusYears(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->plusYears(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDateTime;->plusYears(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;
    .registers 10

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_71

    move-object v0, p3

    check-cast v0, Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/LocalDateTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/LocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1f  #0x7
    const-wide/16 v1, 0x100

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0xc

    mul-long v1, v1, v4

    invoke-virtual {v3, v1, v2}, Ljj$/time/LocalDateTime;->plusHours(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_32  #0x6
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDateTime;->plusHours(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_37  #0x5
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDateTime;->plusMinutes(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_3c  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_41  #0x3
    const-wide/32 v1, 0x5265c00

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/32 v4, 0xf4240

    mul-long v1, v1, v4

    invoke-virtual {v3, v1, v2}, Ljj$/time/LocalDateTime;->plusNanos(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_56  #0x2
    const-wide v1, 0x141dd76000L

    div-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Ljj$/time/LocalDateTime;->plusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v3

    rem-long v1, p1, v1

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    invoke-virtual {v3, v1, v2}, Ljj$/time/LocalDateTime;->plusNanos(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_6c  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDateTime;->plusNanos(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_71
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0

    :pswitch_data_78
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

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;
    .registers 5

    instance-of v0, p1, Ljj$/time/Period;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, v0}, Ljj$/time/LocalDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_14
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDateTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Ljj$/time/LocalDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusHours(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Ljj$/time/LocalDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusNanos(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Ljj$/time/LocalDateTime;
    .registers 14

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Ljj$/time/LocalDateTime;->plusWithOverflow(Ljj$/time/LocalDate;JJJJI)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Ljj$/time/LocalDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusYears(J)Ljj$/time/LocalDateTime;
    .registers 5

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDateTime$-CC;->$default$query(Ljj$/time/chrono/ChronoLocalDateTime;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_1a

    :cond_14
    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1}, Ljj$/time/LocalDate;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

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

.method public toLocalDate()Ljj$/time/LocalDate;
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->toLocalDate()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Ljj$/time/LocalTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

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

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, p1}, Ljj$/time/LocalTime;->truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 15

    invoke-static {p1}, Ljj$/time/LocalDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_dc

    invoke-interface {p2}, Ljj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_a6

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    iget-object v4, v0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, v4}, Ljj$/time/LocalDate;->daysUntil(Ljj$/time/LocalDate;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_27

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    iget-object v2, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1, v2, p2}, Ljj$/time/LocalTime;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    return-wide v1

    :cond_27
    iget-object v1, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v1}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide v10, 0x4e94914f0000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_40

    sub-long/2addr v4, v2

    add-long/2addr v8, v10

    goto :goto_42

    :cond_40
    add-long/2addr v4, v2

    sub-long/2addr v8, v10

    :goto_42
    sget-object v1, Ljj$/time/LocalDateTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e2

    goto :goto_a1

    :pswitch_51  #0x7
    const/4 v1, 0x2

    invoke-static {v4, v5, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    const-wide v1, 0x274a48a78000L

    div-long/2addr v8, v1

    goto :goto_a1

    :pswitch_5d  #0x6
    const/16 v1, 0x18

    invoke-static {v4, v5, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    const-wide v1, 0x34630b8a000L

    div-long/2addr v8, v1

    goto :goto_a1

    :pswitch_6a  #0x5
    const/16 v1, 0x5a0

    invoke-static {v4, v5, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    const-wide v1, 0xdf8475800L

    div-long/2addr v8, v1

    goto :goto_a1

    :pswitch_77  #0x4
    const v1, 0x15180

    invoke-static {v4, v5, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    const-wide/32 v1, 0x3b9aca00

    div-long/2addr v8, v1

    goto :goto_a1

    :pswitch_83  #0x3
    const-wide/32 v1, 0x5265c00

    invoke-static {v4, v5, v1, v2}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    const-wide/32 v1, 0xf4240

    div-long/2addr v8, v1

    goto :goto_a1

    :pswitch_8f  #0x2
    const-wide v1, 0x141dd76000L

    invoke-static {v4, v5, v1, v2}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    const-wide/16 v1, 0x3e8

    div-long/2addr v8, v1

    goto :goto_a1

    :pswitch_9c  #0x1
    invoke-static {v4, v5, v10, v11}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    nop

    :goto_a1
    invoke-static {v4, v5, v8, v9}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    return-wide v1

    :cond_a6
    iget-object v1, v0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    iget-object v4, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, v4}, Ljj$/time/LocalDate;->isAfter(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_bf

    iget-object v4, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    iget-object v5, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v4, v5}, Ljj$/time/LocalTime;->isBefore(Ljj$/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->minusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    goto :goto_d5

    :cond_bf
    iget-object v4, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, v4}, Ljj$/time/LocalDate;->isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_d5

    iget-object v4, v0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    iget-object v5, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v4, v5}, Ljj$/time/LocalTime;->isAfter(Ljj$/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    :cond_d5
    :goto_d5
    iget-object v2, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v2, v1, p2}, Ljj$/time/LocalDate;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    return-wide v2

    :cond_dc
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_9c  #00000001
        :pswitch_8f  #00000002
        :pswitch_83  #00000003
        :pswitch_77  #00000004
        :pswitch_6a  #00000005
        :pswitch_5d  #00000006
        :pswitch_51  #00000007
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDateTime;
    .registers 4

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_e
    instance-of v0, p1, Ljj$/time/LocalTime;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    move-object v1, p1

    check-cast v1, Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_1c
    instance-of v0, p1, Ljj$/time/LocalDateTime;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0

    :cond_24
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDateTime;
    .registers 7

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    iget-object v2, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v2, p1, p2, p3}, Ljj$/time/LocalTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalTime;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_1a
    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v1, v2}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :cond_27
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDateTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->withDayOfMonth(I)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->withDayOfYear(I)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withHour(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMinute(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withMinute(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMonth(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->withMonth(I)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withNano(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withSecond(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->withSecond(I)Ljj$/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-direct {p0, v1, v0}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withYear(I)Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-direct {p0, v0, v1}, Ljj$/time/LocalDateTime;->with(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/LocalDateTime;->date:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/LocalDateTime;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0, p1}, Ljj$/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
