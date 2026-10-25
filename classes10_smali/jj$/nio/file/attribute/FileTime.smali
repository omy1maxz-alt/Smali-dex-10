.class public final Ljj$/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final DAYS_PER_10000_YEARS:J = 0x37bb49L

.field private static final HOURS_PER_DAY:J = 0x18L

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MICROS_PER_SECOND:J = 0xf4240L

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MINUTES_PER_HOUR:J = 0x3cL

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MICRO:I = 0x3e8

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L

.field private static final SECONDS_PER_DAY:J = 0x15180L

.field private static final SECONDS_PER_HOUR:J = 0xe10L

.field private static final SECONDS_PER_MINUTE:J = 0x3cL


# instance fields
.field private instant:Ljj$/time/Instant;

.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final value:J

.field private valueAsString:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/util/concurrent/TimeUnit;Ljj$/time/Instant;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    iput-object p3, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .registers 5

    nop

    :goto_1
    if-lez p2, :cond_f

    div-int v0, p3, p2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p3, p2

    div-int/lit8 p2, p2, 0xa

    goto :goto_1

    :cond_f
    return-object p1
.end method

.method public static from(JLjava/util/concurrent/TimeUnit;)Ljj$/nio/file/attribute/FileTime;
    .registers 5

    const-string v0, "unit"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljj$/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljj$/time/Instant;)V

    return-object v0
.end method

.method public static from(Ljj$/time/Instant;)Ljj$/nio/file/attribute/FileTime;
    .registers 5

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/nio/file/attribute/FileTime;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Ljj$/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljj$/time/Instant;)V

    return-object v0
.end method

.method public static fromMillis(J)Ljj$/nio/file/attribute/FileTime;
    .registers 5

    new-instance v0, Ljj$/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljj$/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljj$/time/Instant;)V

    return-object v0
.end method

.method private static scale(JJJ)J
    .registers 9

    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_a
    neg-long v0, p4

    cmp-long v2, p0, v0

    if-gez v2, :cond_12

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_12
    mul-long v0, p0, p2

    return-wide v0
.end method

.method private toDays()J
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0

    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private toExcessNanos(J)J
    .registers 8

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    iget-object v3, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    :cond_16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Ljj$/nio/file/attribute/FileTime;->compareTo(Ljj$/nio/file/attribute/FileTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/nio/file/attribute/FileTime;)I
    .registers 15

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p1, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-ne v0, v1, :cond_13

    iget-wide v0, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    iget-wide v2, p1, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    :cond_13
    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    if-eqz v4, :cond_2a

    return v4

    :cond_2a
    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljj$/time/Instant;->getNano()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljj$/time/Instant;->getNano()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    if-eqz v4, :cond_43

    return v4

    :cond_43
    const-wide v5, 0x701cd2fa9578ffL

    cmp-long v7, v0, v5

    if-eqz v7, :cond_57

    const-wide v5, -0x701cefeb9bec00L

    cmp-long v7, v0, v5

    if-eqz v7, :cond_57

    const/4 v5, 0x0

    return v5

    :cond_57
    invoke-direct {p0}, Ljj$/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v5

    invoke-direct {p1}, Ljj$/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_70

    invoke-direct {p0, v5, v6}, Ljj$/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v9

    invoke-direct {p1, v7, v8}, Ljj$/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    return v9

    :cond_70
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    return v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljj$/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v0}, Ljj$/nio/file/attribute/FileTime;->compareTo(Ljj$/nio/file/attribute/FileTime;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Instant;->hashCode()I

    move-result v0

    return v0
.end method

.method public to(Ljava/util/concurrent/TimeUnit;)J
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "unit"

    invoke-static {v1, v2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, v0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_16

    iget-wide v2, v0, Ljj$/nio/file/attribute/FileTime;->value:J

    iget-object v4, v0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2

    :cond_16
    iget-object v2, v0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    invoke-virtual {v2}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_54

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v2, v6

    if-nez v8, :cond_32

    goto :goto_54

    :cond_32
    iget-object v8, v0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    invoke-virtual {v8}, Ljj$/time/Instant;->getNano()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    add-long v10, v2, v8

    xor-long v12, v2, v10

    xor-long v14, v8, v10

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-gez v16, :cond_53

    cmp-long v12, v2, v14

    if-gez v12, :cond_51

    goto :goto_52

    :cond_51
    move-wide v4, v6

    :goto_52
    return-wide v4

    :cond_53
    return-wide v10

    :cond_54
    :goto_54
    return-wide v2
.end method

.method public toInstant()Ljj$/time/Instant;
    .registers 10

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    if-nez v0, :cond_a6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    sget-object v3, Ljj$/nio/file/attribute/FileTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v4, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_aa

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Unit not handled"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :pswitch_1c  #0x7
    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0x3b9aca00

    invoke-static {v3, v4, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    long-to-int v2, v3

    goto :goto_83

    :pswitch_2d  #0x6
    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0xf4240

    invoke-static {v3, v4, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    mul-int/lit16 v2, v4, 0x3e8

    goto :goto_83

    :pswitch_40  #0x5
    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const v3, 0xf4240

    mul-int v2, v4, v3

    goto :goto_83

    :pswitch_55  #0x4
    iget-wide v0, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    goto :goto_83

    :pswitch_58  #0x3
    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0x3c

    const-wide v7, 0x222222222222222L

    invoke-static/range {v3 .. v8}, Ljj$/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    goto :goto_83

    :pswitch_66  #0x2
    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0xe10

    const-wide v7, 0x91a2b3c4d5e6fL

    invoke-static/range {v3 .. v8}, Ljj$/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    goto :goto_83

    :pswitch_74  #0x1
    iget-wide v3, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0x15180

    const-wide v7, 0x611722833944L

    invoke-static/range {v3 .. v8}, Ljj$/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    nop

    :goto_83
    const-wide v3, -0x701cefeb9bec00L

    cmp-long v5, v0, v3

    if-gtz v5, :cond_91

    sget-object v3, Ljj$/time/Instant;->MIN:Ljj$/time/Instant;

    iput-object v3, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    goto :goto_a6

    :cond_91
    const-wide v3, 0x701cd2fa9578ffL

    cmp-long v5, v0, v3

    if-ltz v5, :cond_9f

    sget-object v3, Ljj$/time/Instant;->MAX:Ljj$/time/Instant;

    iput-object v3, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    goto :goto_a6

    :cond_9f
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object v3

    iput-object v3, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    :cond_a6
    :goto_a6
    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    return-object v0

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_74  #00000001
        :pswitch_66  #00000002
        :pswitch_58  #00000003
        :pswitch_55  #00000004
        :pswitch_40  #00000005
        :pswitch_2d  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method

.method public toMillis()J
    .registers 15

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_d
    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    invoke-virtual {v0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    invoke-virtual {v2}, Ljj$/time/Instant;->getNano()I

    move-result v2

    const-wide/16 v3, 0x3e8

    mul-long v5, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    or-long v9, v7, v3

    const/16 v11, 0x1f

    ushr-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_3f

    div-long v3, v5, v3

    cmp-long v9, v3, v0

    if-eqz v9, :cond_3f

    cmp-long v3, v0, v11

    if-gez v3, :cond_39

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_3e

    :cond_39
    const-wide v3, 0x7fffffffffffffffL

    :goto_3e
    return-wide v3

    :cond_3f
    const v3, 0xf4240

    div-int v3, v2, v3

    int-to-long v3, v3

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public toString()Ljava/lang/String;
    .registers 16

    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    if-nez v0, :cond_104

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Ljj$/nio/file/attribute/FileTime;->instant:Ljj$/time/Instant;

    if-nez v3, :cond_1e

    iget-object v3, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1e

    iget-object v3, p0, Ljj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Ljj$/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_2e

    :cond_1e
    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/nio/file/attribute/FileTime;->toInstant()Ljj$/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/Instant;->getNano()I

    move-result v2

    :goto_2e
    const/4 v3, 0x0

    const-wide v4, -0xe79747c00L

    const/16 v6, 0x2710

    const-wide v7, 0xe79747c00L

    const-wide v9, 0x497968bd80L

    cmp-long v11, v0, v4

    if-ltz v11, :cond_63

    sub-long v4, v0, v9

    add-long/2addr v4, v7

    invoke-static {v4, v5, v9, v10}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-static {v4, v5, v9, v10}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v9

    sub-long v7, v9, v7

    sget-object v13, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-static {v7, v8, v2, v13}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v8

    long-to-int v13, v11

    mul-int/lit16 v13, v13, 0x2710

    add-int/2addr v8, v13

    goto :goto_79

    :cond_63
    add-long v4, v0, v7

    div-long v11, v4, v9

    rem-long v9, v4, v9

    sub-long v7, v9, v7

    sget-object v13, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-static {v7, v8, v2, v13}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v8

    long-to-int v13, v11

    mul-int/lit16 v13, v13, 0x2710

    add-int/2addr v8, v13

    :goto_79
    if-gtz v8, :cond_7d

    add-int/lit8 v8, v8, -0x1

    :cond_7d
    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gez v8, :cond_8d

    const-string v5, "-"

    goto :goto_8f

    :cond_8d
    const-string v5, ""

    :goto_8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_a2

    const/16 v6, 0x3e8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_a9

    :cond_a2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a9
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getMonthValue()I

    move-result v8

    const/16 v9, 0xa

    invoke-direct {p0, v4, v9, v8}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    invoke-direct {p0, v4, v9, v6}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    const/16 v6, 0x54

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getHour()I

    move-result v6

    invoke-direct {p0, v4, v9, v6}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getMinute()I

    move-result v8

    invoke-direct {p0, v4, v9, v8}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljj$/time/LocalDateTime;->getSecond()I

    move-result v6

    invoke-direct {p0, v4, v9, v6}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_f9

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v6, 0x5f5e100

    :goto_ed
    rem-int/lit8 v8, v3, 0xa

    if-nez v8, :cond_f6

    div-int/lit8 v3, v3, 0xa

    div-int/lit8 v6, v6, 0xa

    goto :goto_ed

    :cond_f6
    invoke-direct {p0, v4, v6, v3}, Ljj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    :cond_f9
    const/16 v6, 0x5a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljj$/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    :cond_104
    iget-object v0, p0, Ljj$/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    return-object v0
.end method
