.class public final Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;
.super Ljava/lang/Object;
.source "ConfigRoutes.java"


# static fields
.field private static final CLIENT_ID:I = 0x3

.field private static final CLIENT_VERSION:Ljava/lang/String;

.field private static final CONNECTION_TIMEOUT_MILLISECONDS:I = 0x2710

.field public static final GET_CONFIG:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YT_API_URL:Ljava/lang/String; = "https://youtubei.googleapis.com/youtubei/v1/"


# direct methods
.method public static synthetic $r8$lambda$a7WJIeQnQHNKFhk3FoYT_VxZ55o()Ljava/lang/String;
    .registers 1

    .line 68
    const-string v0, "configBody failed"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 31
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->CLIENT_VERSION:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->POST:Lcom/gold/extension/shared/requests/Route$Method;

    const-string v2, "config?fields=responseContext.globalConfigGroup.bytesSerializedColdConfigGroup&alt=proto"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->GET_CONFIG:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configBody()[B
    .registers 4

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "clientName"

    const-string v2, "ANDROID"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "clientVersion"

    sget-object v2, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->CLIENT_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "deviceMake"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "deviceModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "osName"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "platform"

    const-string v2, "TABLET"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "clientFormFactor"

    const-string v2, "LARGE_FORM_FACTOR"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "androidSdkVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 58
    const-string v2, "hl"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v2, "gl"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    const-string v2, "client"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_78} :catch_79

    return-object v0

    :catch_79
    move-exception v0

    .line 68
    new-instance v1, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [B

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

    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRoutes;->CLIENT_VERSION:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 74
    const-string v3, "%s/%s(Linux; U; Android %s; %s; %s Build/%s)"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "https://youtubei.googleapis.com/youtubei/v1/"

    invoke-static {v1, p0}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromCompiledRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route$CompiledRoute;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 80
    const-string v1, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {p0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-YouTube-Client-Name"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "X-YouTube-Client-Version"

    invoke-virtual {p0, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "X-GOOG-API-FORMAT-VERSION"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 v0, 0x2710

    .line 87
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 88
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p1, :cond_80

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5c
    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_80
    return-object p0
.end method
