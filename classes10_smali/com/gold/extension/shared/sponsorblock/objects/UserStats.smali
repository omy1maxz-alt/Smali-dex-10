.class public Lcom/gold/extension/shared/sponsorblock/objects/UserStats;
.super Ljava/lang/Object;
.source "UserStats.java"


# static fields
.field private static final STATS_EXPIRATION_MILLISECONDS:J = 0x36ee80L


# instance fields
.field public final fetchTime:J

.field public final ignoredSegmentCount:I

.field public final minutesSaved:D

.field private final privateUserID:Ljava/lang/String;

.field public final publicUserID:Ljava/lang/String;

.field public final reputation:F

.field public final segmentCount:I

.field public final totalSegmentCountIncludingIgnored:I

.field public final userName:Ljava/lang/String;

.field public final viewCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->privateUserID:Ljava/lang/String;

    .line 42
    const-string p1, "userID"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->publicUserID:Ljava/lang/String;

    .line 43
    const-string p1, "userName"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->userName:Ljava/lang/String;

    .line 44
    const-string p1, "reputation"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->reputation:F

    .line 45
    const-string p1, "segmentCount"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->segmentCount:I

    .line 46
    const-string v0, "ignoredSegmentCount"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->ignoredSegmentCount:I

    add-int/2addr p1, v0

    .line 47
    iput p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->totalSegmentCountIncludingIgnored:I

    .line 48
    const-string p1, "viewCount"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->viewCount:I

    .line 49
    const-string p1, "minutesSaved"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->minutesSaved:D

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->fetchTime:J

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .registers 5

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->fetchTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_10

    return v1

    .line 59
    :cond_10
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->userHasSBPrivateID()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 60
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->getOrGenerateSBPrivateUserID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->privateUserID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserStats{publicUserID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->publicUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', reputation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->reputation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", segmentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->segmentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ignoredSegmentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->ignoredSegmentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->viewCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minutesSaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->minutesSaved:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
