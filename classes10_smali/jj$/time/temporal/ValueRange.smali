.class public final Ljj$/time/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final maxLargest:J

.field private final maxSmallest:J

.field private final minLargest:J

.field private final minSmallest:J


# direct methods
.method private constructor <init>(JJJJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    iput-wide p3, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    iput-wide p5, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    iput-wide p7, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    return-void
.end method

.method private genInvalidFieldMessage(Ljj$/time/temporal/TemporalField;J)Ljava/lang/String;
    .registers 7

    const-string v0, "): "

    if-eqz p1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(JJ)Ljj$/time/temporal/ValueRange;
    .registers 14

    cmp-long v0, p0, p2

    if-gtz v0, :cond_e

    new-instance v1, Ljj$/time/temporal/ValueRange;

    move-wide v4, p0

    move-wide v8, p2

    move-wide v2, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Ljj$/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1

    :cond_e
    move-wide v2, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(JJJ)Ljj$/time/temporal/ValueRange;
    .registers 14

    move-wide v2, p0

    move-wide v0, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Ljj$/time/temporal/ValueRange;->of(JJJJ)Ljj$/time/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method public static of(JJJJ)Ljj$/time/temporal/ValueRange;
    .registers 18

    cmp-long v0, p0, p2

    if-gtz v0, :cond_27

    cmp-long v0, p4, p6

    if-gtz v0, :cond_1f

    cmp-long v0, p2, p6

    if-gtz v0, :cond_17

    new-instance v1, Ljj$/time/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Ljj$/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2c

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_24

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkValidIntValue(JLjj$/time/temporal/TemporalField;)I
    .registers 6

    invoke-virtual {p0, p1, p2}, Ljj$/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v0

    if-eqz v0, :cond_8

    long-to-int v0, p1

    return v0

    :cond_8
    new-instance v0, Ljj$/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljj$/time/temporal/ValueRange;->genInvalidFieldMessage(Ljj$/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkValidValue(JLjj$/time/temporal/TemporalField;)J
    .registers 6

    invoke-virtual {p0, p1, p2}, Ljj$/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p1

    :cond_7
    new-instance v0, Ljj$/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljj$/time/temporal/ValueRange;->genInvalidFieldMessage(Ljj$/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/temporal/ValueRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ValueRange;

    iget-wide v3, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    iget-wide v5, v1, Ljj$/time/temporal/ValueRange;->minSmallest:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2d

    iget-wide v3, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    iget-wide v5, v1, Ljj$/time/temporal/ValueRange;->minLargest:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2d

    iget-wide v3, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v5, v1, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2d

    iget-wide v3, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    iget-wide v5, v1, Ljj$/time/temporal/ValueRange;->maxLargest:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    return v2
.end method

.method public getLargestMinimum()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    return-wide v0
.end method

.method public getMaximum()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    return-wide v0
.end method

.method public getMinimum()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    return-wide v0
.end method

.method public getSmallestMaximum()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    const/16 v5, 0x30

    shr-long/2addr v2, v5

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    shr-long/2addr v2, v6

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    shl-long/2addr v2, v5

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    ushr-long v2, v0, v6

    xor-long/2addr v2, v0

    long-to-int v3, v2

    return v3
.end method

.method public isFixed()Z
    .registers 6

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    iget-wide v0, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isIntValue()Z
    .registers 6

    invoke-virtual {p0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_18

    invoke-virtual {p0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public isValidIntValue(J)Z
    .registers 4

    invoke-virtual {p0}, Ljj$/time/temporal/ValueRange;->isIntValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Ljj$/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isValidValue(J)Z
    .registers 6

    invoke-virtual {p0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    invoke-virtual {p0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljj$/time/temporal/ValueRange;->minSmallest:J

    iget-wide v3, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    const/16 v5, 0x2f

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->minLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljj$/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v3, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljj$/time/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
