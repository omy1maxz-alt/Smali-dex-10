.class public Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;
.super Ljava/lang/Object;
.source "EditPlaylistRequest.java"


# static fields
.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field public static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2yHd_fSyNfPvmTe8oKiSf-gmjE4(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 126
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

.method public static synthetic $r8$lambda$DiZvlsojPwK1OfiSULapjIEHXsg()Ljava/lang/String;
    .registers 1

    .line 58
    const-string v0, "getResult interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$HFbGgIVChQechf8Dgn8csGWTI00(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$Olf3EatB1dJD9URpRMaGKoTaViE()Ljava/lang/String;
    .registers 1

    .line 61
    const-string v0, "getResult failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$P7YqcLwxrvRemCDfe58J5ji_RII(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseResponse failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c1my1sBeagGZoAJwipjJ8CN4xX0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;
    .registers 5

    .line 82
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$e6eWo4Zq0cnR9JYJffMFSy_SHi0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching edit playlist request, videoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", playlistId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", setVideoId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jlL4O-l_HDTPZz52NLv7S2QriX4()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "getResult timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$k8mgBWcEKOVE7HGFr1mNZMIfe40()Ljava/lang/String;
    .registers 1

    .line 52
    const-string v0, "Debug: Blocking main thread"

    return-object v0
.end method

.method public static synthetic $r8$lambda$npIVwkrAN6RIbqjHbgpbVcdhshw()Ljava/lang/String;
    .registers 1

    .line 124
    const-string v0, "sendRequest failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$tNsVhI0sPkYCVeNCGFGj8q8MSjY(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->fetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x32

    .line 35
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clear()V
    .registers 1

    .line 67
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static clearVideoId(Ljava/lang/String;)V
    .registers 2

    .line 71
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static fetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 158
    invoke-static {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_16

    if-eqz p2, :cond_10

    .line 160
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->parseResponse(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fetchRequestIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->cache:Ljava/util/Map;

    .line 81
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public static getRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 88
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;

    return-object p0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static parseResponse(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 134
    :try_start_0
    const-string v0, "STATUS_SUCCEEDED"

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p1, :cond_15

    .line 136
    const-string p0, ""

    return-object p0

    :catch_13
    move-exception p1

    goto :goto_33

    .line 138
    :cond_15
    const-string p1, "playlistEditResults"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 139
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3b

    check-cast p1, Lorg/json/JSONObject;

    .line 140
    const-string v0, "playlistEditVideoAddedResultData"

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "setVideoId"

    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_32} :catch_13

    return-object p0

    .line 146
    :goto_33
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda5;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 102
    const-string v0, "Edit playlist failed with code: "

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 110
    :try_start_15
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->editPlaylistBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 111
    sget-object p2, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->EDIT_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {p2, p3}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 112
    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 113
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_47

    .line 116
    invoke-static {p2}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_41
    .catchall {:try_start_15 .. :try_end_36} :catchall_3f

    .line 126
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

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

    .line 118
    :cond_47
    :try_start_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_47 .. :try_end_56} :catch_45
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_43
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_41
    .catchall {:try_start_47 .. :try_end_56} :catchall_3f

    .line 126
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    :goto_5b
    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_83

    .line 124
    :goto_5f
    :try_start_5f
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p2, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_3f

    .line 126
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    .line 122
    :goto_6d
    :try_start_6d
    const-string p2, "Network error"

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_3f

    .line 126
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    .line 120
    :goto_78
    :try_start_78
    const-string p2, "Connection timeout"

    invoke-static {p2, p1}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_3f

    .line 126
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    goto :goto_5b

    :goto_83
    return-object v3

    :goto_84
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 127
    throw p1
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 52
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 54
    :cond_22
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest;->future:Ljava/util/concurrent/Future;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4e20

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_2e} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2e} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 61
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_39
    move-exception p0

    .line 58
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_53

    :catch_4a
    move-exception p0

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/EditPlaylistRequest$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method
