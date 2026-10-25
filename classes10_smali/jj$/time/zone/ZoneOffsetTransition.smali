.class public final Ljj$/time/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final epochSecond:J

.field private final offsetAfter:Ljj$/time/ZoneOffset;

.field private final offsetBefore:Ljj$/time/ZoneOffset;

.field private final transition:Ljj$/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Ljj$/time/LocalDateTime;->ofEpochSecond(JILjj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->transition:Ljj$/time/LocalDateTime;

    iput-object p3, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    iput-object p4, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    return-void
.end method

.method constructor <init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->toEpochSecond(Ljj$/time/ZoneOffset;)J

    move-result-wide v0

    iput-wide v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    iput-object p1, p0, Ljj$/time/zone/ZoneOffsetTransition;->transition:Ljj$/time/LocalDateTime;

    iput-object p2, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    iput-object p3, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    return-void
.end method

.method private getDurationSeconds()I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)Ljj$/time/zone/ZoneOffsetTransition;
    .registers 5

    const-string v0, "transition"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetBefore"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetAfter"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneOffsetTransition;
    .registers 7

    invoke-static {p0}, Ljj$/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v0

    invoke-static {p0}, Ljj$/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v2

    invoke-static {p0}, Ljj$/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v4, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v4, v0, v1, v2, v3}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(JLjj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v4

    :cond_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
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

    new-instance v0, Ljj$/time/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljj$/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {p0, p1}, Ljj$/time/zone/ZoneOffsetTransition;->compareTo(Ljj$/time/zone/ZoneOffsetTransition;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/zone/ZoneOffsetTransition;)I
    .registers 6

    iget-wide v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    iget-wide v2, p1, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/zone/ZoneOffsetTransition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    move-object v1, p1

    check-cast v1, Ljj$/time/zone/ZoneOffsetTransition;

    iget-wide v3, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    iget-wide v5, v1, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_29

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    return v2
.end method

.method public getDateTimeAfter()Ljj$/time/LocalDateTime;
    .registers 4

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->transition:Ljj$/time/LocalDateTime;

    invoke-direct {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeBefore()Ljj$/time/LocalDateTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->transition:Ljj$/time/LocalDateTime;

    return-object v0
.end method

.method public getDuration()Ljj$/time/Duration;
    .registers 3

    invoke-direct {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Ljj$/time/Instant;
    .registers 3

    iget-wide v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    invoke-static {v0, v1}, Ljj$/time/Instant;->ofEpochSecond(J)Ljj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetAfter()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->transition:Ljj$/time/LocalDateTime;

    invoke-virtual {v0}, Ljj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isGap()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isOverlap()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isValidOffset(Ljj$/time/ZoneOffset;)Z
    .registers 4

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    :cond_7
    goto :goto_1d

    :cond_8
    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1
.end method

.method public toEpochSecond()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "Gap"

    goto :goto_16

    :cond_14
    const-string v2, "Overlap"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransition;->transition:Ljj$/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 4

    iget-wide v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->epochSecond:J

    invoke-static {v0, v1, p1}, Ljj$/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-static {v0, p1}, Ljj$/time/zone/Ser;->writeOffset(Ljj$/time/ZoneOffset;Ljava/io/DataOutput;)V

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransition;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-static {v0, p1}, Ljj$/time/zone/Ser;->writeOffset(Ljj$/time/ZoneOffset;Ljava/io/DataOutput;)V

    return-void
.end method
