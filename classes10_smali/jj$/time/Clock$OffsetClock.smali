.class final Ljj$/time/Clock$OffsetClock;
.super Ljj$/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final baseClock:Ljj$/time/Clock;

.field private final offset:Ljj$/time/Duration;


# direct methods
.method constructor <init>(Ljj$/time/Clock;Ljj$/time/Duration;)V
    .registers 3

    invoke-direct {p0}, Ljj$/time/Clock;-><init>()V

    iput-object p1, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    iput-object p2, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljj$/time/Clock$OffsetClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Ljj$/time/Clock$OffsetClock;

    iget-object v2, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    iget-object v3, v0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v2, v3}, Ljj$/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    iget-object v3, v0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    invoke-virtual {v2, v3}, Ljj$/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    :cond_1e
    return v1
.end method

.method public getZone()Ljj$/time/ZoneId;
    .registers 2

    iget-object v0, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    invoke-virtual {v1}, Ljj$/time/Duration;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Ljj$/time/Instant;
    .registers 3

    iget-object v0, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    invoke-virtual {v0, v1}, Ljj$/time/Instant;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .registers 5

    iget-object v0, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    invoke-virtual {v2}, Ljj$/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    iget-object v1, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OffsetClock["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 5

    iget-object v0, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Ljj$/time/Clock$OffsetClock;

    iget-object v1, p0, Ljj$/time/Clock$OffsetClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v1, p1}, Ljj$/time/Clock;->withZone(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/Clock$OffsetClock;->offset:Ljj$/time/Duration;

    invoke-direct {v0, v1, v2}, Ljj$/time/Clock$OffsetClock;-><init>(Ljj$/time/Clock;Ljj$/time/Duration;)V

    return-object v0
.end method
