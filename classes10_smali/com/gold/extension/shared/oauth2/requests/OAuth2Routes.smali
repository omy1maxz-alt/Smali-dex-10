.class final Lcom/gold/extension/shared/oauth2/requests/OAuth2Routes;
.super Ljava/lang/Object;
.source "OAuth2Routes.java"


# static fields
.field static final ACCESS_TOKEN:Lcom/gold/extension/shared/requests/Route;

.field private static final CONNECTION_TIMEOUT_MILLISECONDS:I = 0x2710

.field static final DEVICE_CODE:Lcom/gold/extension/shared/requests/Route;

.field private static final OAUTH2_GOOGLE_API_URL:Ljava/lang/String; = "https://oauth2.googleapis.com/"

.field private static final OAUTH2_YOUTUBE_API_URL:Ljava/lang/String; = "https://www.youtube.com/o/oauth2/"

.field static final REVOKE_TOKEN:Lcom/gold/extension/shared/requests/Route;

.field private static final USER_AGENT:Ljava/lang/String; = "com.google.android.apps.youtube.vr.oculus/1.64.34(Linux; U; Android 10; en_US; Quest Build/QQ3A.200805.001) gzip"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->POST:Lcom/gold/extension/shared/requests/Route$Method;

    const-string v2, "token"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/oauth2/requests/OAuth2Routes;->ACCESS_TOKEN:Lcom/gold/extension/shared/requests/Route;

    .line 31
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v2, "device/code"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/oauth2/requests/OAuth2Routes;->DEVICE_CODE:Lcom/gold/extension/shared/requests/Route;

    .line 32
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v2, "revoke"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/oauth2/requests/OAuth2Routes;->REVOKE_TOKEN:Lcom/gold/extension/shared/requests/Route;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyCommonPostRequestSettings(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 38
    const-string v0, "Pragma"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "User-Agent"

    const-string v1, "com.google.android.apps.youtube.vr.oculus/1.64.34(Linux; U; Android 10; en_US; Quest Build/QQ3A.200805.001) gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 v0, 0x2710

    .line 43
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 44
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static varargs getJsonConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-string v0, "https://www.youtube.com/o/oauth2/"

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 49
    const-string p1, "Content-Type"

    const-string v0, "application/json"

    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string p1, "Accept"

    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Routes;->applyCommonPostRequestSettings(Ljava/net/HttpURLConnection;)V

    return-object p0
.end method

.method public static varargs getUrlConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const-string v0, "https://oauth2.googleapis.com/"

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 57
    const-string p1, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Routes;->applyCommonPostRequestSettings(Ljava/net/HttpURLConnection;)V

    return-object p0
.end method
