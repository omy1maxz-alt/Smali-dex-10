.class public abstract Ljj$/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixed(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 3

    const-string v0, "fixedInstant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/Clock$FixedClock;

    invoke-direct {v0, p0, p1}, Ljj$/time/Clock$FixedClock;-><init>(Ljj$/time/Instant;Ljj$/time/ZoneId;)V

    return-object v0
.end method

.method public static offset(Ljj$/time/Clock;Ljj$/time/Duration;)Ljj$/time/Clock;
    .registers 3

    const-string v0, "baseClock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetDuration"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    invoke-virtual {p1, v0}, Ljj$/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p0

    :cond_13
    new-instance v0, Ljj$/time/Clock$OffsetClock;

    invoke-direct {v0, p0, p1}, Ljj$/time/Clock$OffsetClock;-><init>(Ljj$/time/Clock;Ljj$/time/Duration;)V

    return-object v0
.end method

.method public static system(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 2

    const-string v0, "zone"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    if-ne p0, v0, :cond_c

    sget-object v0, Ljj$/time/Clock$SystemClock;->UTC:Ljj$/time/Clock$SystemClock;

    return-object v0

    :cond_c
    new-instance v0, Ljj$/time/Clock$SystemClock;

    invoke-direct {v0, p0}, Ljj$/time/Clock$SystemClock;-><init>(Ljj$/time/ZoneId;)V

    return-object v0
.end method

.method public static systemDefaultZone()Ljj$/time/Clock;
    .registers 2

    new-instance v0, Ljj$/time/Clock$SystemClock;

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/Clock$SystemClock;-><init>(Ljj$/time/ZoneId;)V

    return-object v0
.end method

.method public static systemUTC()Ljj$/time/Clock;
    .registers 1

    sget-object v0, Ljj$/time/Clock$SystemClock;->UTC:Ljj$/time/Clock$SystemClock;

    return-object v0
.end method

.method public static tick(Ljj$/time/Clock;Ljj$/time/Duration;)Ljj$/time/Clock;
    .registers 9

    const-string v0, "baseClock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "tickDuration"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Ljj$/time/Duration;->toNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_20

    goto :goto_28

    :cond_20
    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v2, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_35

    :goto_28
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2f

    return-object p0

    :cond_2f
    new-instance v2, Ljj$/time/Clock$TickClock;

    invoke-direct {v2, p0, v0, v1}, Ljj$/time/Clock$TickClock;-><init>(Ljj$/time/Clock;J)V

    return-object v2

    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid tick duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tick duration must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tickMillis(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 5

    new-instance v0, Ljj$/time/Clock$TickClock;

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/Clock$TickClock;-><init>(Ljj$/time/Clock;J)V

    return-object v0
.end method

.method public static tickMinutes(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 5

    new-instance v0, Ljj$/time/Clock$TickClock;

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v1

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/Clock$TickClock;-><init>(Ljj$/time/Clock;J)V

    return-object v0
.end method

.method public static tickSeconds(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 5

    new-instance v0, Ljj$/time/Clock$TickClock;

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/Clock$TickClock;-><init>(Ljj$/time/Clock;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getZone()Ljj$/time/ZoneId;
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract instant()Ljj$/time/Instant;
.end method

.method public millis()J
    .registers 3

    invoke-virtual {p0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract withZone(Ljj$/time/ZoneId;)Ljj$/time/Clock;
.end method
