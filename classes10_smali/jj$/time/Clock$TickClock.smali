.class final Ljj$/time/Clock$TickClock;
.super Ljj$/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final baseClock:Ljj$/time/Clock;

.field private final tickNanos:J


# direct methods
.method constructor <init>(Ljj$/time/Clock;J)V
    .registers 4

    invoke-direct {p0}, Ljj$/time/Clock;-><init>()V

    iput-object p1, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    iput-wide p2, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    instance-of v0, p1, Ljj$/time/Clock$TickClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Ljj$/time/Clock$TickClock;

    iget-object v2, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    iget-object v3, v0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v2, v3}, Ljj$/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    iget-wide v4, v0, Ljj$/time/Clock$TickClock;->tickNanos:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    return v1
.end method

.method public getZone()Ljj$/time/ZoneId;
    .registers 2

    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    iget-wide v3, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public instant()Ljj$/time/Instant;
    .registers 8

    iget-wide v0, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_20

    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v4, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    div-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljj$/time/Instant;->ofEpochMilli(J)Ljj$/time/Instant;

    move-result-object v2

    return-object v2

    :cond_20
    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Instant;->getNano()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2, v3, v4}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljj$/time/Instant;->minusNanos(J)Ljj$/time/Instant;

    move-result-object v5

    return-object v5
.end method

.method public millis()J
    .registers 7

    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    iget-wide v1, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofNanos(J)Ljj$/time/Duration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TickClock["

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
    .registers 6

    iget-object v0, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Ljj$/time/Clock$TickClock;

    iget-object v1, p0, Ljj$/time/Clock$TickClock;->baseClock:Ljj$/time/Clock;

    invoke-virtual {v1, p1}, Ljj$/time/Clock;->withZone(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v1

    iget-wide v2, p0, Ljj$/time/Clock$TickClock;->tickNanos:J

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/Clock$TickClock;-><init>(Ljj$/time/Clock;J)V

    return-object v0
.end method
