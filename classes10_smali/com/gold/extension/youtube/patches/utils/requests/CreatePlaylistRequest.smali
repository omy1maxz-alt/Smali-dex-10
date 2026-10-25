.class public Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;
.super Ljava/lang/Object;
.source "CreatePlaylistRequest.java"


# static fields
.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field public static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lkotlin/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1fY7WQNe6dPrGZPLE4tP2ix8CJ0()Ljava/lang/String;
    .registers 1

    .line 59
    const-string v0, "getPlaylistId failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$43FSCwNmwehqBplawaaRCbFaNS4()Ljava/lang/String;
    .registers 1

    .line 54
    const-string v0, "getPlaylistId timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$4hWsSs8_4cOpNsjLnKDDqul8NmU()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "getPlaylistId interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$71M3-sbCKe7CvY_TqD0rmBGXYeY(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " took: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7yQoh-Ifdqoc4lv-R5P93az9eL8()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "sendCreatePlaylistRequest failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$AoXmJXcd41yIeBisbmDehiOfVFM()Ljava/lang/String;
    .registers 1

    .line 144
    const-string v0, "sendSetVideoIdRequest failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$CCyupASNXO6PsgDJN3A1Ct8Xvic(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching create playlist request for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FhFhN6vWNG1zf06s7fW0yOnlzR4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching set video id request for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kk3REDPGiJ_Ijf1eH057Z7t4-9g()Ljava/lang/String;
    .registers 1

    .line 50
    const-string v0, "Debug: Blocking main thread"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Qf2sUbD_PPvCrDiKZyv2WmrjY4k(Ljava/lang/String;Ljava/util/Map;)Lkotlin/Pair;
    .registers 2

    .line 43
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->fetch(Ljava/lang/String;Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RXRitR3HdMW2OYPYQT5kCJH0MMM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$XwsEE7zUg-9NJ9K15_LTzTnyoa0(Ljava/util/Map;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;
    .registers 3

    .line 71
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;

    invoke-direct {v0, p1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$cOonFixxDlfnq1SVLkyJjgaUvSM(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playlist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " took: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tFog5pO0gLfn7hV6Njw5dWs10w0(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseSetVideoIdResponse failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tl4GV_VbsYPTBuPuIsPRBrS1K7A(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseCreatePlaylistResponse failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x32

    .line 38
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->cache:Ljava/util/Map;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clear()V
    .registers 1

    .line 65
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static fetch(Ljava/lang/String;Ljava/util/Map;)Lkotlin/Pair;
    .registers 3
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
            "Lkotlin/Pair;"
        }
    .end annotation

    .line 184
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->sendCreatePlaylistRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 186
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->parseCreatePlaylistResponse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 188
    invoke-static {p0, v0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->sendSetVideoIdRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 190
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->parseSetVideoIdResponse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 192
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fetchRequestIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 69
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->cache:Ljava/util/Map;

    .line 70
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    .line 69
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public static getRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 77
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;

    return-object p0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static parseCreatePlaylistResponse(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 154
    :try_start_0
    const-string v0, "playlistId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception v0

    .line 156
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSetVideoIdResponse(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 164
    const-string v0, "playlist"

    const-string v1, "contents"

    :try_start_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "singleColumnWatchNextResults"

    .line 165
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 171
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3b

    check-cast v0, Lorg/json/JSONObject;

    .line 172
    const-string v1, "playlistPanelVideoRenderer"

    .line 173
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "playlistSetVideoId"

    .line 174
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception v0

    .line 177
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sendCreatePlaylistRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
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

    .line 89
    const-string v0, "Create playlist failed with code: "

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 93
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 96
    :try_start_15
    const-string v4, "youtube_queue_manager_playlist_title"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->createPlaylistBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 97
    sget-object v5, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->CREATE_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v5, p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 98
    array-length v5, v4

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 99
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 100
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4d

    .line 102
    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3c
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_3c} :catch_4b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3c} :catch_49
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3c} :catch_47
    .catchall {:try_start_15 .. :try_end_3c} :catchall_45

    .line 112
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p1

    :catchall_45
    move-exception p1

    goto :goto_8a

    :catch_47
    move-exception p1

    goto :goto_65

    :catch_49
    move-exception p1

    goto :goto_73

    :catch_4b
    move-exception p1

    goto :goto_7e

    .line 104
    :cond_4d
    :try_start_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5c
    .catch Ljava/net/SocketTimeoutException; {:try_start_4d .. :try_end_5c} :catch_4b
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5c} :catch_49
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5c} :catch_47
    .catchall {:try_start_4d .. :try_end_5c} :catchall_45

    .line 112
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    :goto_61
    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_89

    .line 110
    :goto_65
    :try_start_65
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_45

    .line 112
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    goto :goto_61

    .line 108
    :goto_73
    :try_start_73
    const-string v0, "Network error"

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_45

    .line 112
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    goto :goto_61

    .line 106
    :goto_7e
    :try_start_7e
    const-string v0, "Connection timeout"

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_45

    .line 112
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    goto :goto_61

    :goto_89
    return-object v3

    :goto_8a
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 113
    throw p1
.end method

.method private static sendSetVideoIdRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 123
    const-string v0, "Get set video id failed with code: "

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 127
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 130
    :try_start_15
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getSetVideoIdBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 131
    sget-object v4, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->GET_SET_VIDEO_ID:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v4, p2}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 132
    array-length v4, p0

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 133
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v4, 0xc8

    if-ne p0, v4, :cond_47

    .line 136
    invoke-static {p2}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_41
    .catchall {:try_start_15 .. :try_end_36} :catchall_3f

    .line 146
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

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

    .line 138
    :cond_47
    :try_start_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_47 .. :try_end_56} :catch_45
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_43
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_41
    .catchall {:try_start_47 .. :try_end_56} :catchall_3f

    .line 146
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;

    invoke-direct {p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;J)V

    :goto_5b
    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_83

    .line 144
    :goto_5f
    :try_start_5f
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda14;

    invoke-direct {p2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {p2, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_3f

    .line 146
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;

    invoke-direct {p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    .line 142
    :goto_6d
    :try_start_6d
    const-string p2, "Network error"

    invoke-static {p2, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_3f

    .line 146
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;

    invoke-direct {p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    .line 140
    :goto_78
    :try_start_78
    const-string p2, "Connection timeout"

    invoke-static {p2, p0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_3f

    .line 146
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;

    invoke-direct {p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    :goto_83
    return-object v3

    :goto_84
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 147
    throw p0
.end method


# virtual methods
.method public getPlaylistId()Lkotlin/Pair;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair;"
        }
    .end annotation

    .line 49
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 50
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 52
    :cond_22
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest;->future:Ljava/util/concurrent/Future;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4e20

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;
    :try_end_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_2e} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2e} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 59
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_39
    move-exception p0

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_53

    :catch_4a
    move-exception p0

    .line 54
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/CreatePlaylistRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method
