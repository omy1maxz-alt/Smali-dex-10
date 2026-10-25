.class public Lorg/ocpsoft/prettytime/impl/DurationImpl;
.super Ljava/lang/Object;
.source "DurationImpl.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/Duration;


# instance fields
.field private delta:J

.field private quantity:J

.field private unit:Lorg/ocpsoft/prettytime/TimeUnit;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    move-object v1, p1

    check-cast v1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    iget-wide v2, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    iget-wide v4, v1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    return v0

    :cond_1f
    iget-wide v2, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    iget-wide v4, v1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    return v0

    :cond_28
    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    iget-object v2, v1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDelta()J
    .registers 3

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    return-wide v0
.end method

.method public getQuantity()J
    .registers 3

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    return-wide v0
.end method

.method public getQuantityRounded(I)J
    .registers 8

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getDelta()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_31

    nop

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getDelta()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    invoke-interface {v4}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_31

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    :cond_31
    return-wide v0
.end method

.method public getUnit()Lorg/ocpsoft/prettytime/TimeUnit;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public isInFuture()Z
    .registers 2

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInPast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInPast()Z
    .registers 5

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setDelta(J)V
    .registers 3

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    return-void
.end method

.method public setQuantity(J)V
    .registers 3

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    return-void
.end method

.method public setUnit(Lorg/ocpsoft/prettytime/TimeUnit;)V
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DurationImpl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
