.class public Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;
.super Ljava/lang/Object;
.source "SBRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;
    }
.end annotation


# static fields
.field private static final HTTP_STATUS_CODE_SUCCESS:I = 0xc8

.field private static final TIMEOUT_HTTP_DEFAULT_MILLISECONDS:I = 0x2710

.field private static final TIMEOUT_TCP_DEFAULT_MILLISECONDS:I = 0x1b58

.field private static final TIME_TEMPLATE:Ljava/lang/String; = "%.3f"

.field private static volatile lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;


# direct methods
.method public static synthetic $r8$lambda$3x9PJt-_Z7gjBbz-2MVNqvXuThU()Ljava/lang/String;
    .registers 1

    .line 232
    const-string v0, "failed to submit segments"

    return-object v0
.end method

.method public static synthetic $r8$lambda$918tGKf3k_JVifhMhR5_GkCSYN0()Ljava/lang/String;
    .registers 1

    .line 320
    const-string v0, "failure retrieving user stats"

    return-object v0
.end method

.method public static synthetic $r8$lambda$COhg1gywmib2vd8_ptF-yIxxyuU()Ljava/lang/String;
    .registers 1

    .line 229
    const-string v0, "IOException"

    return-object v0
.end method

.method public static synthetic $r8$lambda$EgZTjscz5DUfhyUHQQZMbRIrENE()Ljava/lang/String;
    .registers 1

    .line 134
    const-string v0, "getSegments failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$IoetWbMu8MVnF2TACwVZxCt8niY(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No segments found for video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L3rsMDUVk2dAULvGcOo7X5QM0ew()Ljava/lang/String;
    .registers 1

    .line 318
    const-string v0, "failed to retrieve user stats"

    return-object v0
.end method

.method public static synthetic $r8$lambda$LN8gxUY9rCxSyoAIq70x6Zm_8iE()Ljava/lang/String;
    .registers 1

    .line 365
    const-string v0, "Failed to check VIP (network error)"

    return-object v0
.end method

.method public static synthetic $r8$lambda$NPtf6TgMbEDQiY1zZPZ9_xMERz0(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully sent view count for segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SLPxyfrjhmDutoINUpv1tYxya08(Ljava/lang/String;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;JJJ)Ljava/lang/String;
    .registers 11

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Submitting videoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " category: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " action: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " start: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " end: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " length: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TTrXI5cYmiXCZFpmsMX05mU1LBQ(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;I)Ljava/lang/String;
    .registers 4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to sent view count for segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " responseCode: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WVSYpBJ_dnD4gcQONiFt-YtRNco(Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)Ljava/lang/String;
    .registers 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user stats: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZCP3Y4k4RCqZ3uLTGDC98gym-3w(Lcom/gold/extension/shared/settings/BooleanSetting;Lcom/gold/extension/shared/settings/LongSetting;J)V
    .registers 6

    .line 360
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->IS_USER_VIP:Lcom/gold/extension/shared/requests/Route;

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->getOrGenerateSBPrivateUserID()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getJSONObject(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 361
    const-string v1, "vip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 362
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 363
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 367
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_36

    :catch_2d
    move-exception p0

    .line 365
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_36
    return-void
.end method

.method public static synthetic $r8$lambda$czXJ4tz2lyr5GOp3tfNa-GM4FPk()Ljava/lang/String;
    .registers 1

    .line 340
    const-string v0, "failed to set username"

    return-object v0
.end method

.method public static synthetic $r8$lambda$eXiexUQuxZUOw0RE76be283xsXQ()Ljava/lang/String;
    .registers 1

    .line 253
    const-string v0, "Failed to send view count request"

    return-object v0
.end method

.method public static synthetic $r8$lambda$f_40-nF6bWIleQmPsAc-Cr3o9nY()Ljava/lang/String;
    .registers 1

    .line 226
    const-string v0, "Timeout"

    return-object v0
.end method

.method public static synthetic $r8$lambda$h2nDaE5QBB8tVs5-XJXcj6ybxeg(Ljava/util/List;)Ljava/lang/String;
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downloaded segments:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const/16 v2, 0xa

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 118
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hzR21Rv8usMYsqo7H4zETjOm57A()Ljava/lang/String;
    .registers 1

    .line 251
    const-string v0, "Failed to send view count"

    return-object v0
.end method

.method public static synthetic $r8$lambda$n2VA-resPk8zdjGf19jE4CgWI9w()Ljava/lang/String;
    .registers 1

    .line 367
    const-string v0, "Failed to check VIP"

    return-object v0
.end method

.method public static synthetic $r8$lambda$oPh8OZheUXEgCkCayjpG8CX4LtE()Ljava/lang/String;
    .registers 1

    .line 294
    const-string v0, "failed to vote for segment"

    return-object v0
.end method

.method public static synthetic $r8$lambda$u3UEZgn6lzMfmcJRpNXG38EPaoA(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vote success for segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uO0C24LneUXRwPnao4iBc9Br7Rs(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$wlPeWH-njzQaFvOHTBTzhf2o-5g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received unknown category: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y6Iv4WsNOnHQWAzOX-zS-x3igFA(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 7

    .line 266
    const-string v0, "youtube_sb_vote_failed_unknown_error"

    :try_start_2
    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->getOrGenerateSBPrivateUserID()Ljava/lang/String;

    move-result-object v2

    .line 268
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->CATEGORY_CHANGE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    if-ne p1, v3, :cond_1b

    .line 269
    sget-object p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->VOTE_ON_SEGMENT_CATEGORY:Lcom/gold/extension/shared/requests/Route;

    iget-object p2, p2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    filled-new-array {v2, v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    goto :goto_2b

    :catch_19
    move-exception p0

    goto :goto_75

    .line 270
    :cond_1b
    sget-object p2, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->VOTE_ON_SEGMENT_QUALITY:Lcom/gold/extension/shared/requests/Route;

    iget p1, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->apiVoteType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 271
    :goto_2b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_62

    const/16 p0, 0x193

    if-eq p2, p0, :cond_48

    .line 284
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 283
    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    .line 279
    :cond_48
    const-string p0, "youtube_sb_vote_failed_forbidden"

    .line 280
    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseErrorStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 279
    invoke-static {p0, p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 288
    :goto_56
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->showErrorDialog(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_62
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda20;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_6a
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_6a} :catch_8a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6a} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception p0

    .line 294
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda21;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_93

    :goto_75
    const/4 p1, 0x0

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    goto :goto_93

    .line 290
    :catch_8a
    const-string p0, "youtube_sb_vote_failed_timeout"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :goto_93
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->apiUrl()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/16 p1, 0x1b58

    .line 376
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x2710

    .line 377
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method private static varargs getJSONObject(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 382
    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getSegments(Ljava/lang/String;)[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
    .registers 22

    move-object/from16 v0, p0

    .line 85
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 88
    :try_start_b
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->GET_SEGMENTS:Lcom/gold/extension/shared/requests/Route;

    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->sponsorBlockAPIFetchCategories:Ljava/lang/String;

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_b4

    .line 92
    invoke-static {v3}, Lcom/gold/extension/shared/requests/Requester;->parseJSONArray(Ljava/net/HttpURLConnection;)Lorg/json/JSONArray;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->segmentMinDurationSeconds()Lcom/gold/extension/shared/settings/FloatSetting;

    move-result-object v3

    if-nez v3, :cond_30

    const-wide/16 v3, 0x0

    goto :goto_3c

    .line 96
    :cond_30
    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x447a0000  # 1000.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 97
    :goto_3c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v2

    :goto_41
    if-ge v6, v5, :cond_a8

    .line 98
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 99
    const-string v8, "segment"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 100
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    const-wide v11, 0x408f400000000000L  # 1000.0

    mul-double/2addr v9, v11

    double-to-long v9, v9

    const/4 v13, 0x1

    .line 101
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    mul-double/2addr v14, v11

    double-to-long v11, v14

    .line 103
    const-string v8, "UUID"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 104
    const-string v8, "locked"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v13, :cond_72

    move/from16 v20, v13

    goto :goto_74

    :cond_72
    move/from16 v20, v2

    .line 105
    :goto_74
    const-string v8, "category"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v7}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->byCategoryKey(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v14

    if-nez v14, :cond_8f

    .line 108
    new-instance v8, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda12;

    invoke-direct {v8, v7}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_a5

    :catch_89
    move-exception v0

    goto :goto_d7

    :catch_8b
    move-exception v0

    goto :goto_e0

    :catch_8d
    move-exception v0

    goto :goto_ea

    :cond_8f
    sub-long v7, v11, v9

    cmp-long v7, v7, v3

    if-gez v7, :cond_99

    .line 109
    sget-object v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v14, v7, :cond_a5

    .line 110
    :cond_99
    new-instance v13, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    invoke-direct/range {v13 .. v20}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Ljava/lang/String;JJZ)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    :goto_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 113
    :cond_a8
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 120
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->runVipCheckInBackgroundIfNeeded()V

    goto :goto_f3

    :cond_b4
    const/16 v5, 0x194

    if-ne v4, v5, :cond_c1

    .line 123
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_f3

    .line 125
    :cond_c1
    const-string v0, "youtube_sb_sponsorblock_connection_failure_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d6
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_d6} :catch_8d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d6} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d6} :catch_89

    goto :goto_f3

    .line 134
    :goto_d7
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v3, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_f3

    .line 131
    :goto_e0
    const-string v3, "youtube_sb_sponsorblock_connection_failure_generic"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f3

    .line 129
    :goto_ea
    const-string v3, "youtube_sb_sponsorblock_connection_failure_timeout"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    :goto_f3
    new-array v0, v2, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-object v0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 75
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->toastOnConnectionError()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 76
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :cond_15
    if-eqz p1, :cond_1f

    .line 79
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :cond_1f
    return-void
.end method

.method public static retrieveUserStats()Lcom/gold/extension/shared/sponsorblock/objects/UserStats;
    .registers 4

    .line 304
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 306
    :try_start_3
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    if-eqz v0, :cond_e

    .line 307
    invoke-virtual {v0}, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->isExpired()Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 311
    :cond_e
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->getOrGenerateSBPrivateUserID()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->GET_USER_STATS:Lcom/gold/extension/shared/requests/Route;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {v2, v3}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getJSONObject(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 314
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 315
    sput-object v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2b} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    move-exception v0

    .line 320
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_3f

    :catch_36
    move-exception v0

    .line 318
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static runVipCheckInBackgroundIfNeeded()V
    .registers 8

    .line 346
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->userIsVip()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    .line 347
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->lastVipCheck()Lcom/gold/extension/shared/settings/LongSetting;

    move-result-object v1

    if-eqz v0, :cond_39

    if-nez v1, :cond_15

    goto :goto_39

    .line 351
    :cond_15
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->userHasSBPrivateID()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_39

    .line 354
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_31

    goto :goto_39

    .line 358
    :cond_31
    new-instance v4, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda10;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;Lcom/gold/extension/shared/settings/LongSetting;J)V

    invoke-static {v4}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static sendSegmentSkippedViewedRequest(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 3

    .line 239
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 241
    :try_start_3
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->VIEWED_SEGMENT:Lcom/gold/extension/shared/requests/Route;

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->UUID:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_20

    .line 245
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 247
    :cond_20
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;I)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 253
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_33
    move-exception p0

    .line 251
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_3c
    return-void
.end method

.method public static setUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 330
    const-string v0, "youtube_sb_stats_username_change_unknown_error"

    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 332
    :try_start_5
    sget-object v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->CHANGE_USERNAME:Lcom/gold/extension/shared/requests/Route;

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->getOrGenerateSBPrivateUserID()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 334
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_21

    const/4 p0, 0x0

    return-object p0

    .line 338
    :cond_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    .line 340
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;
    .registers 1

    .line 71
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static submitSegments(Ljava/lang/String;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;JJJ)V
    .registers 23

    .line 189
    const-string v1, "youtube_sb_submit_failed_unknown_error"

    const-string v0, "%.3f"

    const-string v2, "Morphe/"

    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    const/4 v3, 0x0

    .line 192
    :try_start_a
    new-instance v4, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda16;

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    invoke-direct/range {v4 .. v13}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;JJJ)V

    invoke-static {v4}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 196
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->getOrGenerateSBPrivateUserID()Ljava/lang/String;

    move-result-object v4

    .line 197
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-wide/from16 v8, p3

    long-to-float v7, v8

    const/high16 v8, 0x447a0000  # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v10, p5

    long-to-float v9, v10

    div-float/2addr v9, v8

    .line 198
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v12, p7

    long-to-float v10, v12

    div-float/2addr v10, v8

    .line 199
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/requests/SBRoutes;->SUBMIT_SEGMENTS:Lcom/gold/extension/shared/requests/Route;

    iget-object p1, p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    move-object/from16 v6, p2

    iget-object v6, v6, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->type:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p6, v0

    move-object/from16 p8, v2

    move-object p1, v4

    move-object/from16 p7, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v9

    filled-new-array/range {p1 .. p8}, [Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {v5, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_a5

    .line 207
    const-string p0, "youtube_sb_submit_succeeded"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_94} :catch_a1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_94} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_94} :catch_9b
    .catchall {:try_start_a .. :try_end_94} :catchall_97

    .line 234
    sput-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    return-void

    :catchall_97
    move-exception v0

    move-object p0, v0

    goto/16 :goto_13a

    :catch_9b
    move-exception v0

    move-object p0, v0

    goto :goto_ff

    :catch_9e
    move-exception v0

    move-object p0, v0

    goto :goto_10a

    :catch_a1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_127

    :cond_a5
    const/16 v0, 0x190

    if-eq p1, v0, :cond_e3

    const/16 v0, 0x193

    if-eq p1, v0, :cond_d4

    const/16 v0, 0x199

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_c6

    .line 219
    :try_start_b5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 218
    invoke-static {v1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f1

    .line 215
    :cond_c6
    const-string p0, "youtube_sb_submit_failed_rate_limit"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f1

    .line 212
    :cond_cd
    const-string p0, "youtube_sb_submit_failed_duplicate"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f1

    .line 213
    :cond_d4
    const-string p1, "youtube_sb_submit_failed_forbidden"

    .line 214
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseErrorStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 213
    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f1

    .line 216
    :cond_e3
    const-string p1, "youtube_sb_submit_failed_invalid"

    .line 217
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseErrorStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 216
    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 224
    :goto_f1
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->showErrorDialog(Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/net/SocketTimeoutException; {:try_start_b5 .. :try_end_fc} :catch_a1
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_fc} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_fc} :catch_9b
    .catchall {:try_start_b5 .. :try_end_fc} :catchall_97

    .line 234
    sput-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    return-void

    .line 232
    :goto_ff
    :try_start_ff
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_107
    .catchall {:try_start_ff .. :try_end_107} :catchall_97

    .line 234
    :goto_107
    sput-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    goto :goto_139

    .line 229
    :goto_10a
    :try_start_10a
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    goto :goto_107

    .line 226
    :goto_127
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 227
    const-string p0, "youtube_sb_submit_failed_timeout"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_10a .. :try_end_138} :catchall_97

    goto :goto_107

    :goto_139
    return-void

    .line 234
    :goto_13a
    sput-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->lastFetchedStats:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    .line 235
    throw p0
.end method

.method public static voteForSegmentOnBackgroundThread(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;)V
    .registers 3

    const/4 v0, 0x0

    .line 258
    invoke-static {p0, p1, v0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->voteOrRequestCategoryChange(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    return-void
.end method

.method private static voteOrRequestCategoryChange(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 4

    .line 264
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static voteToChangeCategoryOnBackgroundThread(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 3

    .line 261
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->CATEGORY_CHANGE:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    invoke-static {p0, v0, p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->voteOrRequestCategoryChange(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    return-void
.end method
