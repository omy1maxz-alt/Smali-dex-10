.class final Ljj$/time/Clock$SystemClock;
.super Ljj$/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final OFFSET_SEED:J

.field static final UTC:Ljj$/time/Clock$SystemClock;

.field private static final serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final zone:Ljj$/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    sub-long/2addr v0, v2

    sput-wide v0, Ljj$/time/Clock$SystemClock;->OFFSET_SEED:J

    new-instance v0, Ljj$/time/Clock$SystemClock;

    sget-object v1, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-direct {v0, v1}, Ljj$/time/Clock$SystemClock;-><init>(Ljj$/time/ZoneId;)V

    sput-object v0, Ljj$/time/Clock$SystemClock;->UTC:Ljj$/time/Clock$SystemClock;

    return-void
.end method

.method constructor <init>(Ljj$/time/ZoneId;)V
    .registers 2

    invoke-direct {p0}, Ljj$/time/Clock;-><init>()V

    iput-object p1, p0, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljj$/time/Clock$SystemClock;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    move-object v1, p1

    check-cast v1, Ljj$/time/Clock$SystemClock;

    iget-object v1, v1, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, v1}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public getZone()Ljj$/time/ZoneId;
    .registers 2

    iget-object v0, p0, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0}, Ljj$/time/ZoneId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instant()Ljj$/time/Instant;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/Clock$SystemClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/Instant;->ofEpochMilli(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemClock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Ljj$/time/ZoneId;)Ljj$/time/Clock;
    .registers 3

    iget-object v0, p0, Ljj$/time/Clock$SystemClock;->zone:Ljj$/time/ZoneId;

    invoke-virtual {p1, v0}, Ljj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljj$/time/Clock$SystemClock;

    invoke-direct {v0, p1}, Ljj$/time/Clock$SystemClock;-><init>(Ljj$/time/ZoneId;)V

    return-object v0
.end method
