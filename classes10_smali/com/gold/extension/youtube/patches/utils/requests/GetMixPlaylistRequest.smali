.class public Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;
.super Ljava/lang/Object;
.source "GetMixPlaylistRequest.java"


# static fields
.field private static final MAX_MILLISECONDS_TO_BLOCK_UI_WAITING_FOR_FETCH:J = 0x1194L

.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:J = 0x2710L

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final videoId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$060S4DOLA1bPrVFbrMQOxnXi9XQ(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->lambda$getResult$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9TlrrXVyS9HCR9N-nROcE2YidXo(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseResponse failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CnKXm-z5O2SzM5V8l3bVhrIbKXg(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->lambda$getResult$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GjDrT1pZ9JM_mmxuivqxeJ1Y0_4()Ljava/lang/String;
    .registers 1

    .line 70
    const-string v0, "getResult failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$K3osf1dWv9uEheCVuZ5V4sDiRao(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;J)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->lambda$getResult$1(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L5q4LOcL-mOie2wIpDKRqPZRHyA()Ljava/lang/String;
    .registers 1

    .line 116
    const-string v0, "send failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SFG5OI3sdPMr8D_xtZH2r_1SGi0(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;
    .registers 3

    .line 79
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    invoke-direct {p2, p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$YzG4hJ7r0DR7IJVdvAA72J-gZeE(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$w3uSHyF3F0luMxkKvrt9Tk3h9nU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching get mix playlist, videoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wb-x0hwo5WdBB0DY7cR5RdsUQA4(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zhzLzhg-NwvCUi_O2QgfgVaQ1Yw(J)Ljava/lang/String;
    .registers 5

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mix playlist items fetch took: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1e

    .line 42
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->videoId:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 158
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->sendRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 160
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 162
    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static fetchRequestIfNeeded(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->cache:Ljava/util/Map;

    .line 78
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 81
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    return-object p0
.end method

.method public static getRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 86
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    return-object p0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$getResult$1(J)Ljava/lang/String;
    .registers 5

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting until fetch is complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " maxWait: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getResult$2()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getResult timed out: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getResult$3()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getResult interrupted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 8

    .line 126
    const-string v0, "playerParams"

    const-string v1, "watchEndpoint"

    const-string v2, "coWatchWatchEndpointWrapperCommand"

    const-string v3, "contents"

    const-string v4, "playlist"

    :try_start_a
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "singleColumnWatchNextResults"

    .line 127
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 128
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 129
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_1d
    move-exception v0

    goto :goto_72

    .line 131
    :cond_1f
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 132
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 133
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_6f

    check-cast v3, Lorg/json/JSONObject;

    .line 136
    const-string v4, "playlistPanelVideoRenderer"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "navigationEndpoint"

    .line 137
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 139
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 141
    :cond_4b
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 143
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 146
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 149
    :cond_60
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8AUB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 134
    :cond_6f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_71} :catch_1d

    return-object p0

    .line 151
    :goto_72
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 154
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static sendRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 95
    const-string v0, "Get mix playlist failed with code: "

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 99
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 102
    :try_start_15
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getMixPlaylistBody(Ljava/lang/String;)[B

    move-result-object p0

    .line 103
    sget-object v4, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->GET_MIX_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v4, p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 104
    array-length v4, p0

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 105
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 106
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v4, 0xc8

    if-ne p0, v4, :cond_47

    .line 108
    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_41
    .catchall {:try_start_15 .. :try_end_36} :catchall_3f

    .line 118
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0

    :catchall_3f
    move-exception p0

    goto :goto_84

    :catch_41
    move-exception p0

    goto :goto_5f

    :catch_43
    move-exception p0

    goto :goto_6d

    :catch_45
    move-exception p0

    goto :goto_78

    .line 110
    :cond_47
    :try_start_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_47 .. :try_end_56} :catch_45
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_43
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_41
    .catchall {:try_start_47 .. :try_end_56} :catchall_3f

    .line 118
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;-><init>(J)V

    :goto_5b
    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_83

    .line 116
    :goto_5f
    :try_start_5f
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_3f

    .line 118
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;-><init>(J)V

    goto :goto_5b

    .line 114
    :goto_6d
    :try_start_6d
    const-string p1, "Network error"

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_3f

    .line 118
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;-><init>(J)V

    goto :goto_5b

    .line 112
    :goto_78
    :try_start_78
    const-string p1, "Connection timeout"

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_3f

    .line 118
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;-><init>(J)V

    goto :goto_5b

    :goto_83
    return-object v3

    :goto_84
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 119
    throw p0
.end method


# virtual methods
.method public getResult()Ljava/lang/Boolean;
    .registers 5

    .line 56
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x1194

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x2710

    .line 59
    :goto_b
    sget-object v2, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 60
    new-instance v2, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;J)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_2c

    :catch_28
    move-exception v0

    goto :goto_41

    :catch_2a
    move-exception v0

    goto :goto_51

    .line 63
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->future:Ljava/util/concurrent/Future;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_36
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_36} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_36} :catch_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_36} :catch_37

    return-object v0

    :catch_37
    move-exception p0

    .line 70
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_59

    .line 67
    :goto_41
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_59

    .line 65
    :goto_51
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_59
    const/4 p0, 0x0

    return-object p0
.end method
