.class public final Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;
.super Ljava/lang/Object;
.source "PlaylistRoutes.java"


# static fields
.field public static final BROWSE_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field private static final CLIENT_ID:I = 0x3

.field private static final CLIENT_NAME:Ljava/lang/String; = "ANDROID"

.field private static final CLIENT_VERSION:Ljava/lang/String; = "20.26.46"

.field private static final CONNECTION_TIMEOUT_MILLISECONDS:I = 0x2710

.field public static final CREATE_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field public static final EDIT_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field public static final GET_MIX_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field public static final GET_PLAYLISTS:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field public static final GET_SET_VIDEO_ID:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YT_API_URL:Ljava/lang/String; = "https://youtubei.googleapis.com/youtubei/v1/"


# direct methods
.method public static synthetic $r8$lambda$7ZklKjSOyFim_0dVIzwCZbnDvDA()Ljava/lang/String;
    .registers 1

    .line 152
    const-string v0, "getPlaylistsBody failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$8QKM_M8GkPa7Cth__n8zcmhzu9U()Ljava/lang/String;
    .registers 1

    .line 176
    const-string v0, "browsePlaylistBody failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$HfpSmYCnJ4iiWhTPP-ToyDU3Kxw()Ljava/lang/String;
    .registers 1

    .line 105
    const-string v0, "createPlaylistBody failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$NI4GjUS7JvAL7uTDGV1-DurN-WA()Ljava/lang/String;
    .registers 1

    .line 140
    const-string v0, "editPlaylistBody failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$PtcqbIg-kqpejukXEEOUYgJyOiY()Ljava/lang/String;
    .registers 1

    .line 164
    const-string v0, "getMixPlaylistBody failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$bEn5NM7VnLmQIdhxM-x1nzF6HfY()Ljava/lang/String;
    .registers 1

    .line 117
    const-string v0, "getSetVideoIdBody failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$lctynwHHT6YJv1rzgo8XUKiukXQ()Ljava/lang/String;
    .registers 1

    .line 194
    const-string v0, "savePlaylistBody failed"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->POST:Lcom/gold/extension/shared/requests/Route$Method;

    const-string v2, "playlist/create?prettyPrint=false"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->CREATE_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    .line 41
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v3, "next?prettyPrint=false"

    invoke-direct {v0, v1, v3}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->GET_SET_VIDEO_ID:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    .line 45
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v3, "browse/edit_playlist?fields=status,playlistEditResults"

    invoke-direct {v0, v1, v3}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->EDIT_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    .line 49
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v3, "playlist/get_add_to_playlist?prettyPrint=false"

    invoke-direct {v0, v1, v3}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->GET_PLAYLISTS:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    .line 53
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v3, "browse?prettyPrint=false"

    invoke-direct {v0, v1, v3}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->BROWSE_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    .line 57
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v3, "next?fields=contents.singleColumnWatchNextResults.playlist.playlist.contents.playlistPanelVideoRenderer.navigationEndpoint.coWatchWatchEndpointWrapperCommand.watchEndpoint.watchEndpoint.playerParams&prettyPrint=false"

    invoke-direct {v0, v1, v3}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->GET_MIX_PLAYLIST:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static androidContext()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v1, "clientName"

    const-string v2, "ANDROID"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "clientVersion"

    const-string v2, "20.26.46"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "deviceMake"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "deviceModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "osName"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "androidSdkVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 79
    const-string v2, "hl"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "gl"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v2, "client"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public static browsePlaylistBody(Ljava/lang/String;)[B
    .registers 5

    .line 171
    const-string v0, "VL"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    const-string v2, "context"

    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->androidContext()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v2, "browseId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    .line 176
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 178
    new-array p0, p0, [B

    return-object p0
.end method

.method public static createPlaylistBody(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    .line 97
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getBaseContentJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    const-string v1, "params"

    const-string v2, "CAQ%3D"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 101
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    const-string p0, "videoIds"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 105
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 107
    new-array p0, p0, [B

    return-object p0
.end method

.method public static editPlaylistBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    .line 124
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getBaseContentJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    const-string v1, "playlistId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_45

    .line 128
    const-string v1, "action"

    if-eqz p2, :cond_23

    :try_start_12
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 129
    const-string p0, "ACTION_REMOVE_VIDEO"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string p0, "setVideoId"

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2d

    .line 132
    :cond_23
    const-string p2, "ACTION_ADD_VIDEO"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string p2, "addedVideoId"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :goto_2d
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 136
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    const-string p1, "actions"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    .line 140
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 142
    new-array p0, p0, [B

    return-object p0
.end method

.method private static getBaseContentJson()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    const-string v1, "context"

    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->androidContext()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "contentCheckOk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 91
    const-string v1, "racyCheckOk"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getConnection(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/requests/Route$CompiledRoute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    const-string v2, "20.26.46"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 200
    const-string v2, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "https://youtubei.googleapis.com/youtubei/v1/"

    invoke-static {v1, p0}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromCompiledRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route$CompiledRoute;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 206
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 208
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-YouTube-Client-Name"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "X-YouTube-Client-Version"

    const-string v1, "20.26.46"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "X-GOOG-API-FORMAT-VERSION"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 v0, 0x2710

    .line 213
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 214
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p1, :cond_82

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5e
    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_82
    return-object p0
.end method

.method public static getMixPlaylistBody(Ljava/lang/String;)[B
    .registers 5

    .line 159
    const-string v0, "RD"

    :try_start_2
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getBaseContentJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    const-string v2, "videoId"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v2, "playlistId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 164
    new-instance v0, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 166
    new-array p0, p0, [B

    return-object p0
.end method

.method public static getPlaylistsBody(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    .line 147
    :try_start_1
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getBaseContentJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 148
    const-string v2, "playlistId"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string p0, "excludeWatchLater"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 152
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 154
    new-array p0, v0, [B

    return-object p0
.end method

.method public static getSetVideoIdBody(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .line 112
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getBaseContentJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    const-string v1, "videoId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string p0, "playlistId"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 117
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 119
    new-array p0, p0, [B

    return-object p0
.end method

.method public static savePlaylistBody(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    .line 183
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes;->getBaseContentJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    const-string v1, "playlistId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    const-string v1, "action"

    const-string v2, "ACTION_ADD_PLAYLIST"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v1, "addedFullListId"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 190
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 191
    const-string p0, "actions"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    .line 194
    new-instance p1, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/utils/requests/PlaylistRoutes$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 196
    new-array p0, p0, [B

    return-object p0
.end method
