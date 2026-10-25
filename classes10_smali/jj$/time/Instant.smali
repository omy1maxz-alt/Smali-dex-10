.class public final Ljj$/time/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final EPOCH:Ljj$/time/Instant;

.field public static final MAX:Ljj$/time/Instant;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field public static final MIN:Ljj$/time/Instant;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/time/Instant;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljj$/time/Instant;-><init>(JI)V

    sput-object v0, Ljj$/time/Instant;->EPOCH:Ljj$/time/Instant;

    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v0

    sput-object v0, Ljj$/time/Instant;->MIN:Ljj$/time/Instant;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v0

    sput-object v0, Ljj$/time/Instant;->MAX:Ljj$/time/Instant;

    return-void
.end method

.method private constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/time/Instant;->seconds:J

    iput p3, p0, Ljj$/time/Instant;->nanos:I

    return-void
.end method

.method private static create(JI)Ljj$/time/Instant;
    .registers 8

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    sget-object v0, Ljj$/time/Instant;->EPOCH:Ljj$/time/Instant;

    return-object v0

    :cond_b
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_23

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_23

    new-instance v0, Ljj$/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/Instant;-><init>(JI)V

    return-object v0

    :cond_23
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Instant;
    .registers 6

    instance-of v0, p0, Ljj$/time/Instant;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/Instant;

    return-object v0

    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_d
    sget-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v2}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v2

    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v3
    :try_end_1e
    .catch Ljj$/time/DateTimeException; {:try_start_d .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain Instant from TemporalAccessor: "

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

.method private nanosUntil(Ljj$/time/Instant;)J
    .registers 8

    iget-wide v0, p1, Ljj$/time/Instant;->seconds:J

    iget-wide v2, p0, Ljj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    iget v4, p1, Ljj$/time/Instant;->nanos:I

    iget v5, p0, Ljj$/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static now()Ljj$/time/Instant;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemUTC()Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/Instant;
    .registers 2

    const-string v0, "clock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochMilli(J)Ljj$/time/Instant;
    .registers 6

    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-static {p0, p1, v0}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v0

    const v3, 0xf4240

    mul-int v3, v3, v0

    invoke-static {v1, v2, v3}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method public static ofEpochSecond(J)Ljj$/time/Instant;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochSecond(JJ)Ljj$/time/Instant;
    .registers 8

    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {p2, p3, v0, v1}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v2, v3, v1}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/Instant;
    .registers 3

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_INSTANT:Ljj$/time/format/DateTimeFormatter;

    new-instance v1, Ljj$/time/Instant$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljj$/time/Instant$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/Instant;

    return-object v0
.end method

.method private plus(JJ)Ljj$/time/Instant;
    .registers 11

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-object p0

    :cond_9
    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    rem-long/2addr p3, v2

    iget v2, p0, Ljj$/time/Instant;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/Instant;
    .registers 6

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

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

.method private secondsUntil(Ljj$/time/Instant;)J
    .registers 11

    iget-wide v0, p1, Ljj$/time/Instant;->seconds:J

    iget-wide v2, p0, Ljj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    iget v2, p1, Ljj$/time/Instant;->nanos:I

    iget v3, p0, Ljj$/time/Instant;->nanos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_1c

    cmp-long v8, v2, v6

    if-gez v8, :cond_1c

    sub-long/2addr v0, v4

    goto :goto_25

    :cond_1c
    cmp-long v8, v0, v6

    if-gez v8, :cond_25

    cmp-long v8, v2, v6

    if-lez v8, :cond_25

    add-long/2addr v0, v4

    :cond_25
    :goto_25
    return-wide v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    iget-wide v1, p0, Ljj$/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    iget v2, p0, Ljj$/time/Instant;->nanos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/OffsetDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/ZonedDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/Instant;

    invoke-virtual {p0, p1}, Ljj$/time/Instant;->compareTo(Ljj$/time/Instant;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/Instant;)I
    .registers 6

    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    iget-wide v2, p1, Ljj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget v1, p0, Ljj$/time/Instant;->nanos:I

    iget v2, p1, Ljj$/time/Instant;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    move-object v1, p1

    check-cast v1, Ljj$/time/Instant;

    iget-wide v3, p0, Ljj$/time/Instant;->seconds:J

    iget-wide v5, v1, Ljj$/time/Instant;->seconds:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1b

    iget v3, p0, Ljj$/time/Instant;->nanos:I

    iget v4, v1, Ljj$/time/Instant;->nanos:I

    if-ne v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    return v2
.end method

.method public get(Ljj$/time/temporal/TemporalField;)I
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_43

    sget-object v0, Ljj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    goto :goto_2a

    :pswitch_13  #0x4
    sget-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    iget-wide v1, p0, Ljj$/time/Instant;->seconds:J

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    goto :goto_2a

    :pswitch_1b  #0x3
    iget v0, p0, Ljj$/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    :pswitch_22  #0x2
    iget v0, p0, Ljj$/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    :pswitch_27  #0x1
    iget v0, p0, Ljj$/time/Instant;->nanos:I

    return v0

    :goto_2a
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

    :cond_43
    invoke-virtual {p0, p1}, Ljj$/time/Instant;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_22  #00000002
        :pswitch_1b  #00000003
        :pswitch_13  #00000004
    .end packed-switch
.end method

.method public getEpochSecond()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    return-wide v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_40

    sget-object v0, Ljj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

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

    :pswitch_2b  #0x4
    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    return-wide v0

    :pswitch_2e  #0x3
    iget v0, p0, Ljj$/time/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :pswitch_36  #0x2
    iget v0, p0, Ljj$/time/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :pswitch_3c  #0x1
    iget v0, p0, Ljj$/time/Instant;->nanos:I

    int-to-long v0, v0

    return-wide v0

    :cond_40
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_36  #00000002
        :pswitch_2e  #00000003
        :pswitch_2b  #00000004
    .end packed-switch
.end method

.method public getNano()I
    .registers 2

    iget v0, p0, Ljj$/time/Instant;->nanos:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    iget-wide v2, p0, Ljj$/time/Instant;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Ljj$/time/Instant;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isAfter(Ljj$/time/Instant;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/Instant;->compareTo(Ljj$/time/Instant;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBefore(Ljj$/time/Instant;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/Instant;->compareTo(Ljj$/time/Instant;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    sget-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :cond_18
    :goto_18
    return v1

    :cond_19
    if-eqz p1, :cond_22

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    return v1

    :cond_13
    if-eqz p1, :cond_1c

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalUnit;->isSupportedBy(Ljj$/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/Instant;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/Instant;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/Instant;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Instant;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Instant;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/Instant;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Instant;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(J)Ljj$/time/Instant;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusMillis(J)Ljj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Instant;->plusMillis(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusMillis(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/Instant;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusNanos(J)Ljj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Instant;->plusNanos(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusNanos(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljj$/time/Instant;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;
    .registers 10

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_78

    sget-object v0, Ljj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

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

    :pswitch_2b  #0x8
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_37  #0x7
    const v0, 0xa8c0

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_43  #0x6
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_4e  #0x5
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_59  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/Instant;->plusSeconds(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_5e  #0x3
    invoke-virtual {p0, p1, p2}, Ljj$/time/Instant;->plusMillis(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_63  #0x2
    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljj$/time/Instant;->plus(JJ)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_73  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/Instant;->plusNanos(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :cond_78
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Instant;

    return-object v0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_73  #00000001
        :pswitch_63  #00000002
        :pswitch_5e  #00000003
        :pswitch_59  #00000004
        :pswitch_4e  #00000005
        :pswitch_43  #00000006
        :pswitch_37  #00000007
        :pswitch_2b  #00000008
    .end packed-switch
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Instant;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Instant;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/Instant;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Instant;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(J)Ljj$/time/Instant;
    .registers 9

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljj$/time/Instant;->plus(JJ)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljj$/time/Instant;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljj$/time/Instant;->plus(JJ)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljj$/time/Instant;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljj$/time/Instant;->plus(JJ)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_9
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    goto :goto_33

    :cond_2e
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_33
    :goto_33
    const/4 v0, 0x0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochMilli()J
    .registers 8

    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    const-wide/16 v2, 0x0

    const v4, 0xf4240

    const/16 v5, 0x3e8

    cmp-long v6, v0, v2

    if-gez v6, :cond_24

    iget v0, p0, Ljj$/time/Instant;->nanos:I

    if-lez v0, :cond_24

    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1, v5}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    iget v2, p0, Ljj$/time/Instant;->nanos:I

    div-int/2addr v2, v4

    sub-int/2addr v2, v5

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4

    :cond_24
    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    invoke-static {v0, v1, v5}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    iget v2, p0, Ljj$/time/Instant;->nanos:I

    div-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_INSTANT:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/Instant;
    .registers 12

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->getDuration()Ljj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    cmp-long v5, v1, v3

    if-gtz v5, :cond_45

    invoke-virtual {v0}, Ljj$/time/Duration;->toNanos()J

    move-result-wide v1

    const-wide v5, 0x4e94914f0000L

    rem-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3d

    iget-wide v5, p0, Ljj$/time/Instant;->seconds:J

    rem-long/2addr v5, v3

    const-wide/32 v3, 0x3b9aca00

    mul-long v5, v5, v3

    iget v3, p0, Ljj$/time/Instant;->nanos:I

    int-to-long v3, v3

    add-long/2addr v5, v3

    invoke-static {v5, v6, v1, v2}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    mul-long v3, v3, v1

    sub-long v7, v3, v5

    invoke-virtual {p0, v7, v8}, Ljj$/time/Instant;->plusNanos(J)Ljj$/time/Instant;

    move-result-object v7

    return-object v7

    :cond_3d
    new-instance v3, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v4, "Unit must divide into a standard day without remainder"

    invoke-direct {v3, v4}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_45
    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 9

    invoke-static {p1}, Ljj$/time/Instant;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Instant;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_70

    move-object v1, p2

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    sget-object v2, Ljj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_76

    new-instance v2, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2f  #0x8
    invoke-direct {p0, v0}, Ljj$/time/Instant;->secondsUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_38  #0x7
    invoke-direct {p0, v0}, Ljj$/time/Instant;->secondsUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0xa8c0

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_41  #0x6
    invoke-direct {p0, v0}, Ljj$/time/Instant;->secondsUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_49  #0x5
    invoke-direct {p0, v0}, Ljj$/time/Instant;->secondsUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_51  #0x4
    invoke-direct {p0, v0}, Ljj$/time/Instant;->secondsUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    return-wide v2

    :pswitch_56  #0x3
    invoke-virtual {v0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    return-wide v2

    :pswitch_63  #0x2
    invoke-direct {p0, v0}, Ljj$/time/Instant;->nanosUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    :pswitch_6b  #0x1
    invoke-direct {p0, v0}, Ljj$/time/Instant;->nanosUntil(Ljj$/time/Instant;)J

    move-result-wide v2

    return-wide v2

    :cond_70
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6b  #00000001
        :pswitch_63  #00000002
        :pswitch_56  #00000003
        :pswitch_51  #00000004
        :pswitch_49  #00000005
        :pswitch_41  #00000006
        :pswitch_38  #00000007
        :pswitch_2f  #00000008
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/Instant;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Instant;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/Instant;
    .registers 8

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_71

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v1, Ljj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

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

    :pswitch_2e  #0x4
    iget-wide v1, p0, Ljj$/time/Instant;->seconds:J

    cmp-long v3, p2, v1

    if-eqz v3, :cond_3b

    iget v1, p0, Ljj$/time/Instant;->nanos:I

    invoke-static {p2, p3, v1}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, p0

    :goto_3c
    return-object v1

    :pswitch_3d  #0x3
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int v1, v1, v2

    iget v2, p0, Ljj$/time/Instant;->nanos:I

    if-eq v1, v2, :cond_4e

    iget-wide v2, p0, Ljj$/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v2

    goto :goto_4f

    :cond_4e
    move-object v2, p0

    :goto_4f
    return-object v2

    :pswitch_50  #0x2
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Ljj$/time/Instant;->nanos:I

    if-eq v1, v2, :cond_5e

    iget-wide v2, p0, Ljj$/time/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v2

    goto :goto_5f

    :cond_5e
    move-object v2, p0

    :goto_5f
    return-object v2

    :pswitch_60  #0x1
    iget v1, p0, Ljj$/time/Instant;->nanos:I

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-eqz v3, :cond_6f

    iget-wide v1, p0, Ljj$/time/Instant;->seconds:J

    long-to-int v3, p2

    invoke-static {v1, v2, v3}, Ljj$/time/Instant;->create(JI)Ljj$/time/Instant;

    move-result-object v1

    goto :goto_70

    :cond_6f
    move-object v1, p0

    :goto_70
    return-object v1

    :cond_71
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/Instant;

    return-object v0

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_60  #00000001
        :pswitch_50  #00000002
        :pswitch_3d  #00000003
        :pswitch_2e  #00000004
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Instant;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/Instant;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 4

    iget-wide v0, p0, Ljj$/time/Instant;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Ljj$/time/Instant;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
