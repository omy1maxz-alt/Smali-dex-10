.class public Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
.super Ljava/lang/Object;
.source "SponsorSegment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;",
        ">;"
    }
.end annotation


# instance fields
.field public final UUID:Ljava/lang/String;

.field public final category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field public didAutoSkipped:Z

.field public final end:J

.field public final isLocked:Z

.field public recordedAsSkipped:Z

.field public final start:J


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Ljava/lang/String;JJZ)V
    .registers 9

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->didAutoSkipped:Z

    .line 56
    iput-boolean v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->recordedAsSkipped:Z

    .line 59
    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 60
    iput-object p2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    .line 61
    iput-wide p3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    .line 62
    iput-wide p5, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    .line 63
    iput-boolean p7, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->isLocked:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)I
    .registers 7

    .line 139
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    iget-wide v2, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    invoke-virtual {p1}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->length()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    check-cast p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->compareTo(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)I

    move-result p0

    return p0
.end method

.method public containsSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z
    .registers 6

    .line 95
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    iget-wide v2, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    iget-wide v0, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    iget-wide p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    cmp-long p0, v0, p0

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public containsTime(J)Z
    .registers 5

    .line 88
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_e

    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public endIsNear(JJ)Z
    .registers 7

    .line 81
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 145
    :cond_4
    instance-of v1, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 146
    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    iget-object v3, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v3, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v1, v3, :cond_2c

    iget-wide v3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    iget-wide v5, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    iget-wide v3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    iget-wide p0, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public getSkipButtonText()Ljava/lang/String;
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-wide v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoLength()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getSkipButtonText(JJ)Lcom/gold/extension/shared/StringRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSkippedToastText()Ljava/lang/String;
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-wide v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoLength()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getSkippedToastText(JJ)Lcom/gold/extension/shared/StringRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUndoRange()Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v0, v1, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_b

    .line 108
    :cond_9
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    .line 109
    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public length()J
    .registers 5

    .line 116
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    iget-wide v2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public shouldAutoSkip()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    iget-boolean v0, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->skipAutomatically:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->didAutoSkipped:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq p0, v0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public startIsNear(JJ)Z
    .registers 7

    .line 74
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SponsorSegment{category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
