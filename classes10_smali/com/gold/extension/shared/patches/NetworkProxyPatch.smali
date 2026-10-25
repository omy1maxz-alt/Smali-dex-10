.class public final Lcom/gold/extension/shared/patches/NetworkProxyPatch;
.super Ljava/lang/Object;
.source "NetworkProxyPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;
    }
.end annotation


# static fields
.field private static final ALL_PROXIES_FAILED_BEHAVIOR_ALLOW_DIRECT:I = 0x1

.field private static final ALL_PROXIES_FAILED_BEHAVIOR_DISALLOW_DIRECT:I = 0x0

.field private static final BASIC_AUTHORIZATION_PREFIX:Ljava/lang/String; = "Basic "

.field private static final CONNECT_CALLBACK:Lorg/chromium/net/Proxy$HttpConnectCallback;

.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final HTTPS_PROXY_UNSUPPORTED_MESSAGE:Ljava/lang/String; = "HttpURLConnection proxy requests only support HTTP proxies"

.field private static final LOGGED_HTTPS_URL_CONNECTION_PROXY:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final PROXY_AUTHORIZATION_HEADER:Ljava/lang/String; = "Proxy-Authorization"


# direct methods
.method public static synthetic $r8$lambda$Cxr0TQEsXJx-ptxgbfS8xHBeLNY()Ljava/lang/String;
    .registers 1

    .line 187
    const-string v0, "Proxy authentication is enabled but credentials are empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QEk1_DoX3LIuT4xFxb9B7cMiw2w()Ljava/lang/String;
    .registers 1

    .line 102
    const-string v0, "applyProxyOptions failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$WhmTfIYg2ff_5HuRJwXfWSlR4LE(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->openUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ljKsWzu_viEtMsHDvU-4V3q43sg()Ljava/lang/String;
    .registers 1

    .line 131
    const-string v0, "HttpURLConnection proxy requests only support HTTP proxies"

    return-object v0
.end method

.method public static synthetic $r8$lambda$uOOkQ-zH3GCIk8faan7JjQu-OCo(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring invalid proxy settings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgethost(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgetport(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetProxyHeaders()Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->getProxyHeaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->LOGGED_HTTPS_URL_CONNECTION_PROXY:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$1;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$1;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->CONNECT_CALLBACK:Lorg/chromium/net/Proxy$HttpConnectCallback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyProxyOptions(Lorg/chromium/net/CronetEngine$Builder;)V
    .registers 9

    .line 78
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 79
    invoke-static {v1}, Lcom/gold/extension/shared/requests/Requester;->setConnectionProvider(Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;)V

    return-void

    .line 84
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->getProxyConfig()Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_29

    .line 87
    new-instance p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 88
    invoke-static {v1}, Lcom/gold/extension/shared/requests/Requester;->setConnectionProvider(Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;)V

    return-void

    :catchall_27
    move-exception p0

    goto :goto_62

    .line 92
    :cond_29
    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgethttpsProxy(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z

    move-result v2

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgetallowDirectFallback(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x2

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    :goto_38
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgethost(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgetport(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)I

    move-result v5

    sget-object v6, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v7, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->CONNECT_CALLBACK:Lorg/chromium/net/Proxy$HttpConnectCallback;

    invoke-static {v2, v4, v5, v6, v7}, Lorg/chromium/net/Proxy;->createHttpProxy(ILjava/lang/String;ILjava/util/concurrent/Executor;Lorg/chromium/net/Proxy$HttpConnectCallback;)Lorg/chromium/net/Proxy;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgetallowDirectFallback(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->createProxyOptions(Ljava/util/ArrayList;Z)Lorg/chromium/net/ProxyOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/net/CronetEngine$Builder;->setProxyOptions(Lorg/chromium/net/ProxyOptions;)Lorg/chromium/net/CronetEngine$Builder;

    .line 99
    new-instance p0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->setConnectionProvider(Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;)V
    :try_end_61
    .catchall {:try_start_11 .. :try_end_61} :catchall_27

    return-void

    .line 101
    :goto_62
    invoke-static {v1}, Lcom/gold/extension/shared/requests/Requester;->setConnectionProvider(Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;)V

    .line 102
    new-instance v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static createProxyOptions(Ljava/util/ArrayList;Z)Lorg/chromium/net/ProxyOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/chromium/net/Proxy;",
            ">;Z)",
            "Lorg/chromium/net/ProxyOptions;"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->useProxyListInt()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    invoke-static {p0, p1}, Lorg/chromium/net/ProxyOptions;->fromProxyList(Ljava/util/List;I)Lorg/chromium/net/ProxyOptions;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_11
    invoke-static {p0}, Lorg/chromium/net/ProxyOptions;->fromProxyList(Ljava/util/List;)Lorg/chromium/net/ProxyOptions;

    move-result-object p0

    return-object p0
.end method

.method private static getProxyAuthorizationHeader()Ljava/lang/String;
    .registers 4

    .line 179
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_AUTH_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    .line 183
    :cond_e
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_AUTH_USERNAME:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_AUTH_PASSWORD:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 187
    new-instance v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v1

    .line 191
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 192
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProxyConfig()Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;
    .registers 6

    .line 151
    new-instance v0, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;

    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_HOST:Lcom/gold/extension/shared/settings/StringSetting;

    .line 152
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_PORT:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 153
    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_HTTPS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 154
    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_ALLOW_DIRECT_FALLBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 155
    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;-><init>(Ljava/lang/String;IZZLcom/gold/extension/shared/patches/NetworkProxyPatch-IA;)V

    return-object v0
.end method

.method private static getProxyHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->getProxyAuthorizationHeader()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 162
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 165
    :cond_9
    const-string v1, "Proxy-Authorization"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static openUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->getProxyConfig()Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->isValid()Z

    move-result v1

    if-nez v1, :cond_11

    .line 126
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    .line 129
    :cond_11
    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgethttpsProxy(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 130
    sget-object v1, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->LOGGED_HTTPS_URL_CONNECTION_PROXY:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 131
    new-instance v1, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 133
    :cond_29
    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgetallowDirectFallback(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 134
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    .line 137
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string v0, "HttpURLConnection proxy requests only support HTTP proxies"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_3e
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgethost(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;->-$$Nest$fgetport(Lcom/gold/extension/shared/patches/NetworkProxyPatch$ProxyConfig;)I

    move-result v0

    .line 142
    invoke-static {v3, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 140
    invoke-virtual {p0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 145
    invoke-static {p0}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->setProxyAuthorizationHeader(Ljava/net/HttpURLConnection;)V

    return-object p0
.end method

.method private static setProxyAuthorizationHeader(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 172
    invoke-static {}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->getProxyAuthorizationHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 174
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private static useProxyListInt()Z
    .registers 1

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x0

    return v0
.end method
