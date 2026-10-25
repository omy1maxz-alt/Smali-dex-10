.class final Ljj$/time/Clock$FixedClock;
.super Ljj$/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x671e0bb19c27c88eL


# instance fields
.field private final instant:Ljj$/time/Instant;

.field private final zone:Ljj$/time/ZoneId;


# direct methods
.method constructor <init>(Ljj$/time/Instant;Ljj$/time/ZoneId;)V
    .registers 3

    invoke-direct {p0}, Ljj$/time/Clock;-><init>()V

    iput-object p1, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    iput-object p2, p0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljj$/time/Clock$FixedClock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Ljj$/time/Clock$FixedClock;

    iget-object v2, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    iget-object v3, v0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    invoke-virtual {v2, v3}, Ljj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    iget-object v3, v0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v2, v3}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    invoke-virtual {v0}, Ljj$/time/Instant;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v1}, Ljj$/time/ZoneId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Ljj$/time/Instant;
    .registers 2

    iget-object v0, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    return-object v0
.end method

.method public millis()J
    .registers 3

    iget-object v0, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    invoke-virtual {v0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    iget-object v1, p0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FixedClock["

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
    .registers 4

    iget-object v0, p0, Ljj$/time/Clock$FixedClock;->zone:Ljj$/time/ZoneId;

    invoke-virtual {p1, v0}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljj$/time/Clock$FixedClock;

    iget-object v1, p0, Ljj$/time/Clock$FixedClock;->instant:Ljj$/time/Instant;

    invoke-direct {v0, v1, p1}, Ljj$/time/Clock$FixedClock;-><init>(Ljj$/time/Instant;Ljj$/time/ZoneId;)V

    return-object v0
.end method
