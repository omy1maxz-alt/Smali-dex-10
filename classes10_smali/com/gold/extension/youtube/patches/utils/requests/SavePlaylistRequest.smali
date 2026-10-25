.class public Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;
.super Ljava/lang/Object;
.source "SavePlaylistRequest.java"


# static fields
.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field public static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;",
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


# direct methods
.method public static synthetic $r8$lambda$4B9aX9tunsaBPUglY-PxdqpdZnw(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 3

    .line 40
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->fetch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bd5njFlv_xQE8m4zSfyGrUmcIEk(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$HC_jQrg2q-AL-j7kDLH_EnhvVlk()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "getResult failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$MWFRcS2nu9ff0pB0TRN5PNtly0U(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseResponse failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RdA_54TAOTaI06XE8VZXwPJoOFI()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "getResult timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$U-U2HXVyb8s5_v9AT61sI-N7ago(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching save playlist request, playlistId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", libraryId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aNJb-mjbxfGZuXttufL-4IRDxoE(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playlistId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " libraryId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " took: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mhorcRaBjYvBKhJ5nV7bL1i2UGs()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "getResult interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$qQ3_63vMWPFL5ffJyNG-kOmO1FE()Ljava/lang/String;
    .registers 1

    .line 108
    const-string v0, "sendRequest failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$yz3u-sOlCaDP1CyWtVzvcO8knQM()Ljava/lang/String;
    .registers 1

    .line 47
    const-string v0, "Debug: Blocking main thread"

    return-object v0
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

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clear()V
    .registers 1

    .line 62
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static fetch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 3
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
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 131
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 133
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fetchRequestIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->cache:Ljava/util/Map;

    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;

    return-object p0
.end method

.method public static getRequestForLibraryId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;

    return-object p0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static parseResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 118
    :try_start_0
    const-string v0, "STATUS_SUCCEEDED"

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception v0

    .line 120
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda9;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 9
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

    .line 89
    const-string v0, "Save playlist failed with code: "

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 92
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 94
    :try_start_15
    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->savePlaylistBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 95
    sget-object v5, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->EDIT_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v5, p2}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 96
    array-length v5, v4

    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 97
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_47

    .line 100
    invoke-static {p2}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_41
    .catchall {:try_start_15 .. :try_end_36} :catchall_3f

    .line 110
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p2

    :catchall_3f
    move-exception p2

    goto :goto_84

    :catch_41
    move-exception p2

    goto :goto_5f

    :catch_43
    move-exception p2

    goto :goto_6d

    :catch_45
    move-exception p2

    goto :goto_78

    .line 102
    :cond_47
    :try_start_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_47 .. :try_end_56} :catch_45
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_43
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_41
    .catchall {:try_start_47 .. :try_end_56} :catchall_3f

    .line 110
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_5b
    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_83

    .line 108
    :goto_5f
    :try_start_5f
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p2}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_3f

    .line 110
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5b

    .line 106
    :goto_6d
    :try_start_6d
    const-string v0, "Network error"

    invoke-static {v0, p2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_3f

    .line 110
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5b

    .line 104
    :goto_78
    :try_start_78
    const-string v0, "Connection timeout"

    invoke-static {v0, p2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_3f

    .line 110
    new-instance p2, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5b

    :goto_83
    return-object v3

    :goto_84
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 111
    throw p2
.end method


# virtual methods
.method public getResult()Ljava/lang/Boolean;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 49
    :cond_22
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest;->future:Ljava/util/concurrent/Future;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4e20

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_2e} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2e} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_39
    move-exception p0

    .line 53
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_53

    :catch_4a
    move-exception p0

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/SavePlaylistRequest$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method
