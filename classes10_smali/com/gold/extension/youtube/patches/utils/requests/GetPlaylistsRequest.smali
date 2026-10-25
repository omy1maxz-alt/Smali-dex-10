.class public Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;
.super Ljava/lang/Object;
.source "GetPlaylistsRequest.java"


# static fields
.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field public static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "[",
            "Lkotlin/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-ZhDeAZHc79nh8HG8aC403IveuA(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 111
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

.method public static synthetic $r8$lambda$9EXT8LTLbc7ensqB41wcjuiR5yg()Ljava/lang/String;
    .registers 1

    .line 57
    const-string v0, "getPlaylists interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$H2-dA3Pw7TO6IME4Iij_5rvI0pM(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;
    .registers 3

    .line 72
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

    invoke-direct {p2, p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$KpEUqiyFWz7U6S0ydhZn1m81Xo4(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseResponse failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aYe-qhEnKfEhb4WlDr30BWqfWYo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching get playlists request, playlistId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gi9xLYq1ERQyRpXupADK-7ekJk4()Ljava/lang/String;
    .registers 1

    .line 60
    const-string v0, "getPlaylists failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$hbaYVitrRAtXEYaruJ0lvkaqxxY(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$mRZ6D38mnETiBUvWfF4asb977zk()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "Debug: Blocking main thread"

    return-object v0
.end method

.method public static synthetic $r8$lambda$rZ33-6sntpd-slBWrB6zkmFBd3c()Ljava/lang/String;
    .registers 1

    .line 109
    const-string v0, "sendRequest failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$vW8Vwrls8VQB_g7jSjgHRjlTDyI()Ljava/lang/String;
    .registers 1

    .line 55
    const-string v0, "getPlaylists timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$zcL4ggm9bUhljfquVQK_umunTp0(Ljava/lang/String;Ljava/util/Map;)[Lkotlin/Pair;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->fetch(Ljava/lang/String;Ljava/util/Map;)[Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x32

    .line 39
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->cache:Ljava/util/Map;

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clear()V
    .registers 1

    .line 66
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static fetch(Ljava/lang/String;Ljava/util/Map;)[Lkotlin/Pair;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lkotlin/Pair;"
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->sendRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 156
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->parseResponse(Lorg/json/JSONObject;)[Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fetchRequestIfNeeded(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->cache:Ljava/util/Map;

    .line 71
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 74
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

    return-object p0
.end method

.method public static getRequestForPlaylistId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 79
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;

    return-object p0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static parseResponse(Lorg/json/JSONObject;)[Lkotlin/Pair;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")[",
            "Lkotlin/Pair;"
        }
    .end annotation

    .line 120
    :try_start_0
    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_7c

    check-cast v0, Lorg/json/JSONObject;

    .line 122
    const-string v2, "addToPlaylistRenderer"

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "playlists"

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_27
    if-ge v4, v2, :cond_65

    .line 130
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 131
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_62

    check-cast v5, Lorg/json/JSONObject;

    .line 132
    const-string v6, "playlistAddToOptionRenderer"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 133
    const-string v6, "playlistId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "runs"

    .line 135
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v7, "text"

    .line 137
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :catch_60
    move-exception v0

    goto :goto_74

    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 142
    :cond_65
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 143
    new-array v0, v1, [Lkotlin/Pair;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_73} :catch_60

    return-object v0

    .line 147
    :goto_74
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda10;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_7c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sendRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
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

    .line 88
    const-string v0, "Get playlists failed with code: "

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 92
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 95
    :try_start_15
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getPlaylistsBody(Ljava/lang/String;)[B

    move-result-object v4

    .line 96
    sget-object v5, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->GET_PLAYLISTS:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v5, p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 97
    array-length v5, v4

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 98
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_47

    .line 101
    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_41
    .catchall {:try_start_15 .. :try_end_36} :catchall_3f

    .line 111
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p1

    :catchall_3f
    move-exception p1

    goto :goto_84

    :catch_41
    move-exception p1

    goto :goto_5f

    :catch_43
    move-exception p1

    goto :goto_6d

    :catch_45
    move-exception p1

    goto :goto_78

    .line 103
    :cond_47
    :try_start_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_47 .. :try_end_56} :catch_45
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_43
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_41
    .catchall {:try_start_47 .. :try_end_56} :catchall_3f

    .line 111
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    :goto_5b
    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_83

    .line 109
    :goto_5f
    :try_start_5f
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_3f

    .line 111
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    .line 107
    :goto_6d
    :try_start_6d
    const-string v0, "Network error"

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_3f

    .line 111
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    .line 105
    :goto_78
    :try_start_78
    const-string v0, "Connection timeout"

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_3f

    .line 111
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    :goto_83
    return-object v3

    :goto_84
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 112
    throw p1
.end method


# virtual methods
.method public getPlaylists()[Lkotlin/Pair;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlin/Pair;"
        }
    .end annotation

    .line 50
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 53
    :cond_22
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest;->future:Ljava/util/concurrent/Future;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4e20

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;
    :try_end_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_2e} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2e} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 60
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_39
    move-exception p0

    .line 57
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_53

    :catch_4a
    move-exception p0

    .line 55
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistsRequest$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method
