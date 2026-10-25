.class public final Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;
.super Ljava/lang/Object;
.source "RYDVoteData.java"


# instance fields
.field private volatile dislikeCount:J

.field private volatile dislikePercentage:F

.field private final fetchedDislikeCount:J

.field private final fetchedLikeCount:J

.field private final fetchedRawDislikeCount:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fetchedRawLikeCount:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile likeCount:J

.field private volatile likePercentage:F

.field public final videoId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewCount:J


# direct methods
.method public static synthetic $r8$lambda$sFeh6Pcla5tbtgzDRQHawaDOsVI()Ljava/lang/String;
    .registers 1

    .line 145
    const-string v0, "Using locally calculated estimated likes since RYD did not return an estimate"

    return-object v0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 10
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->videoId:Ljava/lang/String;

    .line 59
    const-string v0, "viewCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->viewCount:J

    .line 61
    const-string v2, "likes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedLikeCount:J

    .line 62
    const-string v4, "rawLikes"

    invoke-static {p1, v4}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->getLongIfExist(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawLikeCount:Ljava/lang/Long;

    .line 64
    const-string v4, "dislikes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedDislikeCount:J

    .line 65
    const-string v6, "rawDislikes"

    invoke-static {p1, v6}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->getLongIfExist(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawDislikeCount:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4b

    cmp-long v0, v2, v6

    if-ltz v0, :cond_4b

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4b

    .line 70
    iput-wide v2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    .line 71
    iput-wide v4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikeCount:J

    .line 73
    sget-object p1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->LIKE_REMOVE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->updateUsingVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V

    return-void

    .line 68
    :cond_4b
    new-instance p0, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected JSON values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getLongIfExist(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_8
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDislikeCount()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikeCount:J

    return-wide v0
.end method

.method public getDislikePercentage()F
    .registers 1

    .line 108
    iget p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikePercentage:F

    return p0
.end method

.method public getLikeCount()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    return-wide v0
.end method

.method public getLikePercentage()F
    .registers 1

    .line 99
    iget p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likePercentage:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RYDVoteData{videoId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->viewCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dislikeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", likePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likePercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dislikePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikePercentage:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateUsingVote(Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;)V
    .registers 9

    .line 114
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData$1;->$SwitchMap$app$morphe$extension$youtube$returnyoutubedislike$ReturnYouTubeDislike$Vote:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1b

    const/4 v2, 0x3

    if-ne p1, v2, :cond_15

    move p1, v0

    move v2, p1

    goto :goto_20

    .line 128
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1b
    move p1, v0

    move v2, v1

    goto :goto_20

    :cond_1e
    move v2, v0

    move p1, v1

    .line 133
    :goto_20
    iget-wide v3, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedLikeCount:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    move v3, v1

    goto :goto_2b

    :cond_2a
    move v3, v0

    .line 134
    :goto_2b
    iget-object v4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawLikeCount:Ljava/lang/Long;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawDislikeCount:Ljava/lang/Long;

    if-eqz v4, :cond_34

    move v0, v1

    :cond_34
    if-eqz v3, :cond_63

    if-eqz v0, :cond_63

    .line 136
    iget-object v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawDislikeCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_63

    .line 143
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedDislikeCount:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawDislikeCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v0, v1

    .line 144
    iget-object v1, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedRawLikeCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-long v0, v0

    int-to-long v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    .line 145
    new-instance p1, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_69

    .line 147
    :cond_63
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedLikeCount:J

    int-to-long v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    .line 150
    :goto_69
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->fetchedDislikeCount:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikeCount:J

    .line 154
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    iget-wide v2, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikeCount:J

    add-long/2addr v0, v2

    long-to-float p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_7f

    .line 156
    iput v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likePercentage:F

    .line 157
    iput v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikePercentage:F

    return-void

    .line 159
    :cond_7f
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likeCount:J

    long-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->likePercentage:F

    .line 160
    iget-wide v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikeCount:J

    long-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/gold/extension/youtube/returnyoutubedislike/requests/RYDVoteData;->dislikePercentage:F

    return-void
.end method
