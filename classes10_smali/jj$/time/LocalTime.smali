.class public final Ljj$/time/LocalTime;
.super Ljava/lang/Object;
.source "LocalTime.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final HOURS:[Ljj$/time/LocalTime;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Ljj$/time/LocalTime;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Ljj$/time/LocalTime;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Ljj$/time/LocalTime;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MILLI:J = 0xf4240L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Ljj$/time/LocalTime;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x18

    new-array v0, v0, [Ljj$/time/LocalTime;

    sput-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    const/4 v0, 0x0

    :goto_7
    sget-object v1, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_19

    sget-object v1, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    new-instance v3, Ljj$/time/LocalTime;

    invoke-direct {v3, v0, v2, v2, v2}, Ljj$/time/LocalTime;-><init>(IIII)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    sget-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    aget-object v0, v0, v2

    sput-object v0, Ljj$/time/LocalTime;->MIDNIGHT:Ljj$/time/LocalTime;

    sget-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Ljj$/time/LocalTime;->NOON:Ljj$/time/LocalTime;

    sget-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    aget-object v0, v0, v2

    sput-object v0, Ljj$/time/LocalTime;->MIN:Ljj$/time/LocalTime;

    new-instance v0, Ljj$/time/LocalTime;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Ljj$/time/LocalTime;-><init>(IIII)V

    sput-object v0, Ljj$/time/LocalTime;->MAX:Ljj$/time/LocalTime;

    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    int-to-byte v0, p2

    iput-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    int-to-byte v0, p3

    iput-byte v0, p0, Ljj$/time/LocalTime;->second:B

    iput p4, p0, Ljj$/time/LocalTime;->nano:I

    return-void
.end method

.method private static create(IIII)Ljj$/time/LocalTime;
    .registers 5

    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_a

    sget-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    :cond_a
    new-instance v0, Ljj$/time/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalTime;
    .registers 6

    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain LocalTime from TemporalAccessor: "

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

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private get0(Ljj$/time/temporal/TemporalField;)I
    .registers 6

    sget-object v0, Ljj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    packed-switch v0, :pswitch_data_84

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

    :pswitch_29  #0xf
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    div-int/2addr v0, v1

    return v0

    :pswitch_2d  #0xe
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    if-nez v0, :cond_34

    const/16 v0, 0x18

    goto :goto_36

    :cond_34
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    :goto_36
    return v0

    :pswitch_37  #0xd
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    return v0

    :pswitch_3a  #0xc
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    rem-int/2addr v0, v1

    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_42

    goto :goto_43

    :cond_42
    move v1, v0

    :goto_43
    return v1

    :pswitch_44  #0xb
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    rem-int/2addr v0, v1

    return v0

    :pswitch_48  #0xa
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    add-int/2addr v0, v1

    return v0

    :pswitch_50  #0x9
    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    return v0

    :pswitch_53  #0x8
    invoke-virtual {p0}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v0

    return v0

    :pswitch_58  #0x7
    iget-byte v0, p0, Ljj$/time/LocalTime;->second:B

    return v0

    :pswitch_5b  #0x6
    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :pswitch_65  #0x5
    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    :pswitch_6c  #0x4
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'MicroOfDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_74  #0x3
    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    :pswitch_79  #0x2
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'NanoOfDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_81  #0x1
    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    return v0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_81  #00000001
        :pswitch_79  #00000002
        :pswitch_74  #00000003
        :pswitch_6c  #00000004
        :pswitch_65  #00000005
        :pswitch_5b  #00000006
        :pswitch_58  #00000007
        :pswitch_53  #00000008
        :pswitch_50  #00000009
        :pswitch_48  #0000000a
        :pswitch_44  #0000000b
        :pswitch_3a  #0000000c
        :pswitch_37  #0000000d
        :pswitch_2d  #0000000e
        :pswitch_29  #0000000f
    .end packed-switch
.end method

.method public static now()Ljj$/time/LocalTime;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/LocalTime;->now(Ljj$/time/Clock;)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/LocalTime;
    .registers 3

    const-string v0, "clock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/LocalTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/LocalTime;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/LocalTime;->now(Ljj$/time/Clock;)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Ljj$/time/LocalTime;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    if-nez p1, :cond_d

    sget-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    :cond_d
    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    new-instance v0, Ljj$/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Ljj$/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(III)Ljj$/time/LocalTime;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    or-int v0, p1, p2

    if-nez v0, :cond_f

    sget-object v0, Ljj$/time/LocalTime;->HOURS:[Ljj$/time/LocalTime;

    aget-object v0, v0, p0

    return-object v0

    :cond_f
    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    new-instance v0, Ljj$/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljj$/time/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Ljj$/time/LocalTime;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-static {p0, p1, p2, p3}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalTime;
    .registers 10

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const v3, 0x15180

    invoke-static {v1, v2, v3}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0x3b9aca00

    mul-long v4, v4, v6

    invoke-virtual {p0}, Ljj$/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public static ofNanoOfDay(J)Ljj$/time/LocalTime;
    .registers 10

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    const-wide v0, 0x34630b8a000L

    div-long v2, p0, v0

    long-to-int v3, v2

    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide v0, 0xdf8475800L

    div-long v4, p0, v0

    long-to-int v2, v4

    int-to-long v4, v2

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0x3b9aca00

    div-long v4, p0, v0

    long-to-int v5, v4

    int-to-long v6, v5

    mul-long v6, v6, v0

    sub-long/2addr p0, v6

    long-to-int v0, p0

    invoke-static {v3, v2, v5, v0}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofSecondOfDay(J)Ljj$/time/LocalTime;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v1, v0

    mul-int/lit16 v0, v1, 0xe10

    int-to-long v2, v0

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int v2, p0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/LocalTime;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalTime;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/LocalTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/LocalTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/LocalTime;
    .registers 6

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gez v0, :cond_b

    not-int v0, v0

    goto :goto_1f

    :cond_b
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    if-gez v1, :cond_13

    not-int v1, v1

    goto :goto_1f

    :cond_13
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-gez v2, :cond_1b

    not-int v2, v2

    goto :goto_1f

    :cond_1b
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    :goto_1f
    invoke-static {v0, v1, v2, v3}, Ljj$/time/LocalTime;->of(IIII)Ljj$/time/LocalTime;

    move-result-object v4

    return-object v4
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

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Ljj$/time/LocalDate;)Ljj$/time/LocalDateTime;
    .registers 3

    invoke-static {p1, p0}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/OffsetTime;->of(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/LocalTime;

    invoke-virtual {p0, p1}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/LocalTime;)I
    .registers 5

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    iget-byte v1, p1, Ljj$/time/LocalTime;->hour:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_26

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    iget-byte v2, p1, Ljj$/time/LocalTime;->minute:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_26

    iget-byte v1, p0, Ljj$/time/LocalTime;->second:B

    iget-byte v2, p1, Ljj$/time/LocalTime;->second:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_26

    iget v1, p0, Ljj$/time/LocalTime;->nano:I

    iget v2, p1, Ljj$/time/LocalTime;->nano:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_26
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/LocalTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move-object v1, p1

    check-cast v1, Ljj$/time/LocalTime;

    iget-byte v3, p0, Ljj$/time/LocalTime;->hour:B

    iget-byte v4, v1, Ljj$/time/LocalTime;->hour:B

    if-ne v3, v4, :cond_25

    iget-byte v3, p0, Ljj$/time/LocalTime;->minute:B

    iget-byte v4, v1, Ljj$/time/LocalTime;->minute:B

    if-ne v3, v4, :cond_25

    iget-byte v3, p0, Ljj$/time/LocalTime;->second:B

    iget-byte v4, v1, Ljj$/time/LocalTime;->second:B

    if-ne v3, v4, :cond_25

    iget v3, p0, Ljj$/time/LocalTime;->nano:I

    iget v4, v1, Ljj$/time/LocalTime;->nano:I

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
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
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Ljj$/time/LocalTime;->get0(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .registers 2

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    return v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 6

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1f

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    return-wide v0

    :cond_d
    sget-object v0, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_19

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    :cond_19
    invoke-direct {p0, p1}, Ljj$/time/LocalTime;->get0(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1f
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .registers 2

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    return v0
.end method

.method public getNano()I
    .registers 2

    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    iget-byte v0, p0, Ljj$/time/LocalTime;->second:B

    return v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v3, v2

    return v3
.end method

.method public isAfter(Ljj$/time/LocalTime;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBefore(Ljj$/time/LocalTime;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/LocalTime;->compareTo(Ljj$/time/LocalTime;)I

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
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isTimeBased()Z

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

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->isTimeBased()Z

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

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/LocalTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/LocalTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/LocalTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalTime;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalTime;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Ljj$/time/LocalTime;
    .registers 5

    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Ljj$/time/LocalTime;
    .registers 5

    const-wide/16 v0, 0x5a0

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusMinutes(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/LocalTime;
    .registers 5

    const-wide v0, 0x4e94914f0000L

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusNanos(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Ljj$/time/LocalTime;
    .registers 5

    const-wide/32 v0, 0x15180

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusSeconds(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;
    .registers 8

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6b

    sget-object v0, Ljj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

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

    :pswitch_2b  #0x7
    const-wide/16 v0, 0x2

    rem-long v0, p1, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_38  #0x6
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_3d  #0x5
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalTime;->plusMinutes(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_42  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalTime;->plusSeconds(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_47  #0x3
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusNanos(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_56  #0x2
    const-wide v0, 0x141dd76000L

    rem-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalTime;->plusNanos(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_66  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalTime;->plusNanos(J)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_6b
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_56  #00000002
        :pswitch_47  #00000003
        :pswitch_42  #00000004
        :pswitch_3d  #00000005
        :pswitch_38  #00000006
        :pswitch_2b  #00000007
    .end packed-switch
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalTime;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalTime;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalTime;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Ljj$/time/LocalTime;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    long-to-int v1, v0

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x18

    rem-int/lit8 v1, v1, 0x18

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    iget-byte v2, p0, Ljj$/time/LocalTime;->second:B

    iget v3, p0, Ljj$/time/LocalTime;->nano:I

    invoke-static {v1, v0, v2, v3}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljj$/time/LocalTime;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5a0

    rem-long v1, p1, v1

    long-to-int v2, v1

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x5a0

    rem-int/lit16 v2, v2, 0x5a0

    if-ne v0, v2, :cond_1b

    return-object p0

    :cond_1b
    div-int/lit8 v1, v2, 0x3c

    rem-int/lit8 v3, v2, 0x3c

    iget-byte v4, p0, Ljj$/time/LocalTime;->second:B

    iget v5, p0, Ljj$/time/LocalTime;->nano:I

    invoke-static {v1, v3, v4, v5}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public plusNanos(J)Ljj$/time/LocalTime;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    rem-long v4, p1, v2

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    rem-long/2addr v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_1a

    return-object p0

    :cond_1a
    const-wide v2, 0x34630b8a000L

    div-long v2, v4, v2

    long-to-int v3, v2

    const-wide v6, 0xdf8475800L

    div-long v6, v4, v6

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    long-to-int v2, v6

    const-wide/32 v6, 0x3b9aca00

    div-long v10, v4, v6

    rem-long/2addr v10, v8

    long-to-int v8, v10

    rem-long v6, v4, v6

    long-to-int v7, v6

    invoke-static {v3, v2, v8, v7}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v6

    return-object v6
.end method

.method public plusSeconds(J)Ljj$/time/LocalTime;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Ljj$/time/LocalTime;->second:B

    add-int/2addr v0, v1

    const-wide/32 v1, 0x15180

    rem-long v1, p1, v1

    long-to-int v2, v1

    add-int/2addr v2, v0

    const v1, 0x15180

    add-int/2addr v2, v1

    rem-int/2addr v2, v1

    if-ne v0, v2, :cond_22

    return-object p0

    :cond_22
    div-int/lit16 v1, v2, 0xe10

    div-int/lit8 v3, v2, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v4, v2, 0x3c

    iget v5, p0, Ljj$/time/LocalTime;->nano:I

    invoke-static {v1, v3, v4, v5}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v5

    return-object v5
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_36

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_36

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_36

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->offset()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    goto :goto_36

    :cond_1a
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localTime()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_21

    return-object p0

    :cond_21
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_28

    return-object v1

    :cond_28
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_31

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_31
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalQuery;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_36
    :goto_36
    return-object v1
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochSecond(Ljj$/time/LocalDate;Ljj$/time/ZoneOffset;)J
    .registers 9

    const-string v0, "date"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v2, v2, v0

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public toNanoOfDay()J
    .registers 7

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long v0, v0, v2

    iget-byte v2, p0, Ljj$/time/LocalTime;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-byte v2, p0, Ljj$/time/LocalTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Ljj$/time/LocalTime;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toSecondOfDay()I
    .registers 3

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Ljj$/time/LocalTime;->second:B

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-byte v1, p0, Ljj$/time/LocalTime;->hour:B

    iget-byte v2, p0, Ljj$/time/LocalTime;->minute:B

    iget-byte v3, p0, Ljj$/time/LocalTime;->second:B

    iget v4, p0, Ljj$/time/LocalTime;->nano:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_16

    const-string v6, "0"

    goto :goto_18

    :cond_16
    const-string v6, ""

    :goto_18
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":0"

    const-string v8, ":"

    if-ge v2, v5, :cond_28

    move-object v9, v7

    goto :goto_29

    :cond_28
    move-object v9, v8

    :goto_29
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gtz v3, :cond_34

    if-lez v4, :cond_80

    :cond_34
    if-ge v3, v5, :cond_37

    goto :goto_38

    :cond_37
    move-object v7, v8

    :goto_38
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v4, :cond_80

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v5, 0xf4240

    rem-int v6, v4, v5

    const/4 v7, 0x1

    if-nez v6, :cond_5e

    div-int v5, v4, v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    :cond_5e
    rem-int/lit16 v6, v4, 0x3e8

    if-nez v6, :cond_71

    div-int/lit16 v6, v4, 0x3e8

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    :cond_71
    const v5, 0x3b9aca00

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    :goto_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalTime;
    .registers 10

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

    if-gtz v5, :cond_39

    invoke-virtual {v0}, Ljj$/time/Duration;->toNanos()J

    move-result-wide v1

    const-wide v3, 0x4e94914f0000L

    rem-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_31

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    div-long v5, v3, v1

    mul-long v5, v5, v1

    invoke-static {v5, v6}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v5

    return-object v5

    :cond_31
    new-instance v3, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v4, "Unit must divide into a standard day without remainder"

    invoke-direct {v3, v4}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_39
    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 9

    invoke-static {p1}, Ljj$/time/LocalTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalTime;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_62

    invoke-virtual {v0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_68

    new-instance v3, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_38  #0x7
    const-wide v3, 0x274a48a78000L

    div-long v3, v1, v3

    return-wide v3

    :pswitch_40  #0x6
    const-wide v3, 0x34630b8a000L

    div-long v3, v1, v3

    return-wide v3

    :pswitch_48  #0x5
    const-wide v3, 0xdf8475800L

    div-long v3, v1, v3

    return-wide v3

    :pswitch_50  #0x4
    const-wide/32 v3, 0x3b9aca00

    div-long v3, v1, v3

    return-wide v3

    :pswitch_56  #0x3
    const-wide/32 v3, 0xf4240

    div-long v3, v1, v3

    return-wide v3

    :pswitch_5c  #0x2
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    return-wide v3

    :pswitch_61  #0x1
    return-wide v1

    :cond_62
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61  #00000001
        :pswitch_5c  #00000002
        :pswitch_56  #00000003
        :pswitch_50  #00000004
        :pswitch_48  #00000005
        :pswitch_40  #00000006
        :pswitch_38  #00000007
    .end packed-switch
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalTime;
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalTime;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0

    :cond_8
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalTime;
    .registers 10

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_c9

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v1, Ljj$/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc

    packed-switch v1, :pswitch_data_d0

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

    :pswitch_32  #0xf
    iget-byte v1, p0, Ljj$/time/LocalTime;->hour:B

    div-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    sub-long v1, p2, v1

    mul-long v1, v1, v4

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_40  #0xe
    const-wide/16 v4, 0x18

    cmp-long v1, p2, v4

    if-nez v1, :cond_47

    goto :goto_48

    :cond_47
    move-wide v2, p2

    :goto_48
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withHour(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_4e  #0xd
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withHour(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_54  #0xc
    cmp-long v1, p2, v4

    if-nez v1, :cond_59

    goto :goto_5a

    :cond_59
    move-wide v2, p2

    :goto_5a
    iget-byte v1, p0, Ljj$/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_65  #0xb
    iget-byte v1, p0, Ljj$/time/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalTime;->plusHours(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_71  #0xa
    iget-byte v1, p0, Ljj$/time/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Ljj$/time/LocalTime;->minute:B

    add-int/2addr v1, v2

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalTime;->plusMinutes(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_80  #0x9
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withMinute(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_86  #0x8
    invoke-virtual {p0}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalTime;->plusSeconds(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_92  #0x7
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withSecond(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_98  #0x6
    const-wide/32 v1, 0xf4240

    mul-long v1, v1, p2

    invoke-static {v1, v2}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_a2  #0x5
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int v1, v1, v2

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withNano(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_ad  #0x4
    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p2

    invoke-static {v1, v2}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_b6  #0x3
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withNano(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_be  #0x2
    invoke-static {p2, p3}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :pswitch_c3  #0x1
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalTime;->withNano(I)Ljj$/time/LocalTime;

    move-result-object v1

    return-object v1

    :cond_c9
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalTime;

    return-object v0

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c3  #00000001
        :pswitch_be  #00000002
        :pswitch_b6  #00000003
        :pswitch_ad  #00000004
        :pswitch_a2  #00000005
        :pswitch_98  #00000006
        :pswitch_92  #00000007
        :pswitch_86  #00000008
        :pswitch_80  #00000009
        :pswitch_71  #0000000a
        :pswitch_65  #0000000b
        :pswitch_54  #0000000c
        :pswitch_4e  #0000000d
        :pswitch_40  #0000000e
        :pswitch_32  #0000000f
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalTime;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalTime;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Ljj$/time/LocalTime;
    .registers 5

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    iget-byte v1, p0, Ljj$/time/LocalTime;->second:B

    iget v2, p0, Ljj$/time/LocalTime;->nano:I

    invoke-static {p1, v0, v1, v2}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Ljj$/time/LocalTime;
    .registers 5

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljj$/time/LocalTime;->second:B

    iget v2, p0, Ljj$/time/LocalTime;->nano:I

    invoke-static {v0, p1, v1, v2}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Ljj$/time/LocalTime;
    .registers 5

    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    iget-byte v2, p0, Ljj$/time/LocalTime;->second:B

    invoke-static {v0, v1, v2, p1}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Ljj$/time/LocalTime;
    .registers 5

    iget-byte v0, p0, Ljj$/time/LocalTime;->second:B

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    iget-byte v1, p0, Ljj$/time/LocalTime;->minute:B

    iget v2, p0, Ljj$/time/LocalTime;->nano:I

    invoke-static {v0, v1, p1, v2}, Ljj$/time/LocalTime;->create(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    if-nez v0, :cond_30

    iget-byte v0, p0, Ljj$/time/LocalTime;->second:B

    if-nez v0, :cond_1f

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    if-nez v0, :cond_13

    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_44

    :cond_13
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_44

    :cond_1f
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Ljj$/time/LocalTime;->second:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_44

    :cond_30
    iget-byte v0, p0, Ljj$/time/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Ljj$/time/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Ljj$/time/LocalTime;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Ljj$/time/LocalTime;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_44
    return-void
.end method
