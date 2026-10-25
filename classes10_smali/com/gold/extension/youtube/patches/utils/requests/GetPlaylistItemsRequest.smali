.class public Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest;
.super Ljava/lang/Object;
.source "GetPlaylistItemsRequest.java"


# direct methods
.method public static synthetic $r8$lambda$-87KMQjp1_9QYZJWig6QjvGMjIg(J)Ljava/lang/String;
    .registers 5

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playlist items fetch took: "

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

.method public static synthetic $r8$lambda$854r3l7T5FNaJf80j_wGSxUHdW0(I)Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Browse playlist failed with code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LlcdBxORaTeTlf18WC_jL7CnWLE()Ljava/lang/String;
    .registers 1

    .line 84
    const-string v0, "JSON contents are missing, cannot parse response"

    return-object v0
.end method

.method public static synthetic $r8$lambda$NscMaZAYw33wrOT3rBp46cce4vM()Ljava/lang/String;
    .registers 1

    .line 128
    const-string v0, "parseResponse failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$PvqxRC8Wdy7ZBUO4RzrSfvEruiw()Ljava/lang/String;
    .registers 1

    .line 49
    const-string v0, "Connection timeout"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TnY62mtNubPJE8cMdYJOWgNgqzY()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "fetch failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$YV4WIVGZd_C1WMOQwC89CCxC-Ms()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "Network error"

    return-object v0
.end method

.method public static synthetic $r8$lambda$wE7eXjKS8HwxyLoOt06mkUiVi2E(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching playlist items for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 5
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    new-instance v2, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 38
    :try_start_f
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->browsePlaylistBody(Ljava/lang/String;)[B

    move-result-object p0

    .line 39
    sget-object v2, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->BROWSE_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v2, p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 40
    array-length v2, p0

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 41
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 42
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v2, 0xc8

    if-ne p0, v2, :cond_45

    .line 44
    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_34
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_34} :catch_43
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_34} :catch_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_3f
    .catchall {:try_start_f .. :try_end_34} :catchall_3d

    .line 55
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0

    :catchall_3d
    move-exception p0

    goto :goto_82

    :catch_3f
    move-exception p0

    goto :goto_56

    :catch_41
    move-exception p0

    goto :goto_64

    :catch_43
    move-exception p0

    goto :goto_72

    .line 47
    :cond_45
    :try_start_45
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_4d
    .catch Ljava/net/SocketTimeoutException; {:try_start_45 .. :try_end_4d} :catch_43
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_41
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_3f
    .catchall {:try_start_45 .. :try_end_4d} :catchall_3d

    .line 55
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;-><init>(J)V

    :goto_52
    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_80

    .line 53
    :goto_56
    :try_start_56
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_3d

    .line 55
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;-><init>(J)V

    goto :goto_52

    .line 51
    :goto_64
    :try_start_64
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_3d

    .line 55
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;-><init>(J)V

    goto :goto_52

    .line 49
    :goto_72
    :try_start_72
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_3d

    .line 55
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;-><init>(J)V

    goto :goto_52

    :goto_80
    const/4 p0, 0x0

    return-object p0

    :goto_82
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v1}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 56
    throw p0
.end method

.method private static findPlaylistContents(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_4f

    .line 63
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    const-string v4, "playlistVideoListRenderer"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "contents"

    if-eqz v5, :cond_1f

    .line 65
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1f
    const-string v5, "itemSectionRenderer"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 68
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v7, v1

    :goto_34
    if-ge v7, v5, :cond_4c

    .line 70
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 71
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 72
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseResponse(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    const-string v0, "contents"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 84
    new-instance p0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v1

    :catch_12
    move-exception p0

    goto/16 :goto_93

    .line 87
    :cond_15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 88
    const-string v2, "singleColumnBrowseResultsRenderer"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_27

    .line 90
    const-string v2, "twoColumnBrowseResultsRenderer"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_27
    if-nez v2, :cond_2a

    return-object v1

    .line 96
    :cond_2a
    const-string p0, "tabs"

    .line 97
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "tabRenderer"

    .line 99
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "content"

    .line 100
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "sectionListRenderer"

    .line 101
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest;->findPlaylistContents(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_52

    return-object v1

    .line 109
    :cond_52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_5b
    if-ge v2, v3, :cond_8b

    .line 111
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_64

    goto :goto_88

    .line 115
    :cond_64
    const-string v5, "playlistVideoRenderer"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_6d

    goto :goto_88

    .line 119
    :cond_6d
    const-string v5, "videoId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    const-string v6, "setVideoId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_88

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_88

    .line 122
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 126
    :cond_8b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8f} :catch_12

    if-eqz p0, :cond_92

    return-object v1

    :cond_92
    return-object v0

    .line 128
    :goto_93
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/GetPlaylistItemsRequest$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v1
.end method
