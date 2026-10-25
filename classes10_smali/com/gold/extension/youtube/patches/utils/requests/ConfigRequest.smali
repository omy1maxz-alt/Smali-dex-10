.class public Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# static fields
.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field private static configRequest:Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;


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
.method public static synthetic $r8$lambda$1ViXMQGqvUUP7K5QrImtLWFpWEg()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "getConfig failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$233o-fJX46pONjeFkAD5AS29CTE()Ljava/lang/String;
    .registers 1

    .line 90
    const-string v0, "GlobalConfigGroup is empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$4mGOX6XPVnlaaAm6ILK85ImXl_o()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "RawColdConfigGroup is empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$7n-3momvW0Hd8Hs6zc6gIX_hpt0()Ljava/lang/String;
    .registers 1

    .line 116
    const-string v0, "Fetching config request"

    return-object v0
.end method

.method public static synthetic $r8$lambda$CV_f9W5mwEC3H8JTQQvQjzIoWNs(J)Ljava/lang/String;
    .registers 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetched config request, took: "

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

.method public static synthetic $r8$lambda$FKqTqyy48VTr25wE8H5-IfsKfUo()Ljava/lang/String;
    .registers 1

    .line 85
    const-string v0, "Context is empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$G0fPE9S2Uew_AKgj3-kocGydrgs()Ljava/lang/String;
    .registers 1

    .line 100
    const-string v0, "ConfigData is empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Kj9LKXYRkmiF4aGI-YTE-TBXkXM()Ljava/lang/String;
    .registers 1

    .line 47
    const-string v0, "Debug: Blocking main thread"

    return-object v0
.end method

.method public static synthetic $r8$lambda$UP-Dq949JY-5ZgCEPT6tJRLxhpo(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$gf-lV7ZqV3V1Jp65e5GkPWRnJ0M()Ljava/lang/String;
    .registers 1

    .line 105
    const-string v0, "Parse failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$hE5tCceqIWMYgrxd7YICQgtVjsY()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "getConfig interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$j7HYOUoRTd764k0oyAqdCQgsKCY()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "getConfig timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$k_50ZQ_J7yrsOQK52ACbr1_TIlE(Ljava/util/Map;)Ljava/lang/String;
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->send(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uuGkuBSEyfcqQvMQR9hOu63zuP8()Ljava/lang/String;
    .registers 1

    .line 133
    const-string v0, "sendRequest failed"

    return-object v0
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static clear()V
    .registers 1

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->configRequest:Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;

    return-void
.end method

.method public static fetchRequest(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->configRequest:Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->configRequest:Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;

    :cond_b
    return-void
.end method

.method public static getRequest()Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;
    .registers 1

    .line 73
    sget-object v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->configRequest:Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;

    return-object v0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 77
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static parse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 4
    .param p0  # Ljava/net/HttpURLConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_1d

    .line 83
    :try_start_5
    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->hasContext()Z

    move-result v2

    if-nez v2, :cond_22

    .line 85
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_20

    if-eqz p0, :cond_1f

    .line 104
    :goto_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception p0

    goto :goto_79

    :cond_1f
    return-object v0

    :catchall_20
    move-exception v1

    goto :goto_6e

    .line 88
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->getContext()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->hasGlobalConfigGroup()Z

    move-result v2

    if-nez v2, :cond_38

    .line 90
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p0, :cond_37

    goto :goto_19

    :cond_37
    return-object v0

    .line 93
    :cond_38
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->getGlobalConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->hasRawColdConfigGroup()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 95
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p0, :cond_4d

    goto :goto_19

    :cond_4d
    return-object v0

    .line 98
    :cond_4e
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->getRawColdConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->hasConfigData()Z

    move-result v2

    if-nez v2, :cond_64

    .line 100
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p0, :cond_63

    goto :goto_19

    :cond_63
    return-object v0

    .line 103
    :cond_64
    invoke-virtual {v1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;->getConfigData()Ljava/lang/String;

    move-result-object v1
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_20

    if-eqz p0, :cond_6d

    .line 104
    :try_start_6a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_1d

    :cond_6d
    return-object v1

    :goto_6e
    if-eqz p0, :cond_78

    .line 82
    :try_start_70
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p0

    :try_start_75
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw v1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_79} :catch_1d

    .line 105
    :goto_79
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static send(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 113
    const-string v0, "Config request failed with code: "

    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 116
    new-instance v3, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v3, 0x0

    .line 119
    :try_start_12
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->configBody()[B

    move-result-object v4

    .line 120
    sget-object v5, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->GET_CONFIG:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v5, p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 121
    array-length v5, v4

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 122
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 123
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4a

    .line 124
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    if-eqz v5, :cond_4a

    .line 125
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->parse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_39} :catch_48
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_39} :catch_46
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_39} :catch_44
    .catchall {:try_start_12 .. :try_end_39} :catchall_42

    .line 135
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;-><init>(J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0

    :catchall_42
    move-exception p0

    goto :goto_87

    :catch_44
    move-exception p0

    goto :goto_62

    :catch_46
    move-exception p0

    goto :goto_70

    :catch_48
    move-exception p0

    goto :goto_7b

    .line 127
    :cond_4a
    :try_start_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_59
    .catch Ljava/net/SocketTimeoutException; {:try_start_4a .. :try_end_59} :catch_48
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_59} :catch_46
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_44
    .catchall {:try_start_4a .. :try_end_59} :catchall_42

    .line 135
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;-><init>(J)V

    :goto_5e
    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_86

    .line 133
    :goto_62
    :try_start_62
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_42

    .line 135
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;-><init>(J)V

    goto :goto_5e

    .line 131
    :goto_70
    :try_start_70
    const-string v0, "Network error"

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_42

    .line 135
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;-><init>(J)V

    goto :goto_5e

    .line 129
    :goto_7b
    :try_start_7b
    const-string v0, "Connection timeout"

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_42

    .line 135
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;

    invoke-direct {p0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;-><init>(J)V

    goto :goto_5e

    :goto_86
    return-object v3

    :goto_87
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda11;-><init>(J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 136
    throw p0
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .registers 4

    .line 46
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 49
    :cond_22
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->future:Ljava/util/concurrent/Future;

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

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_39
    move-exception p0

    .line 53
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_53

    :catch_4a
    move-exception p0

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_53
    const/4 p0, 0x0

    return-object p0
.end method
