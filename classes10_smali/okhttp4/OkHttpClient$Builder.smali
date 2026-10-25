.class public final Lokhttp4/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# instance fields
.field authenticator:Lokhttp4/Authenticator;

.field cache:Lokhttp4/Cache;

.field callTimeout:I

.field certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

.field certificatePinner:Lokhttp4/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lokhttp4/ConnectionPool;

.field connectionSpecs:Ljava/util/List;

.field cookieJar:Lokhttp4/CookieJar;

.field dispatcher:Lokhttp4/Dispatcher;

.field dns:Lokhttp4/Dns;

.field eventListenerFactory:Lokhttp4/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;

.field internalCache:Lokhttp4/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;

.field pingInterval:I

.field protocols:Ljava/util/List;

.field proxy:Ljava/net/Proxy;

.field proxyAuthenticator:Lokhttp4/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    new-instance v0, Lokhttp4/Dispatcher;

    invoke-direct {v0}, Lokhttp4/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->dispatcher:Lokhttp4/Dispatcher;

    sget-object v0, Lokhttp4/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->protocols:Ljava/util/List;

    sget-object v0, Lokhttp4/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    sget-object v0, Lokhttp4/EventListener;->NONE:Lokhttp4/EventListener;

    invoke-static {v0}, Lokhttp4/EventListener;->factory(Lokhttp4/EventListener;)Lokhttp4/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->eventListenerFactory:Lokhttp4/EventListener$Factory;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    if-nez v0, :cond_37

    new-instance v0, Lokhttp4/internal/proxy/NullProxySelector;

    invoke-direct {v0}, Lokhttp4/internal/proxy/NullProxySelector;-><init>()V

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    :cond_37
    sget-object v0, Lokhttp4/CookieJar;->NO_COOKIES:Lokhttp4/CookieJar;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->cookieJar:Lokhttp4/CookieJar;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp4/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp4/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp4/CertificatePinner;->DEFAULT:Lokhttp4/CertificatePinner;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->certificatePinner:Lokhttp4/CertificatePinner;

    sget-object v0, Lokhttp4/Authenticator;->NONE:Lokhttp4/Authenticator;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp4/Authenticator;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->authenticator:Lokhttp4/Authenticator;

    new-instance v0, Lokhttp4/ConnectionPool;

    invoke-direct {v0}, Lokhttp4/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->connectionPool:Lokhttp4/ConnectionPool;

    sget-object v0, Lokhttp4/Dns;->SYSTEM:Lokhttp4/Dns;

    iput-object v0, p0, Lokhttp4/OkHttpClient$Builder;->dns:Lokhttp4/Dns;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp4/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp4/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    const/4 v0, 0x0

    iput v0, p0, Lokhttp4/OkHttpClient$Builder;->callTimeout:I

    const/16 v1, 0x2710

    iput v1, p0, Lokhttp4/OkHttpClient$Builder;->connectTimeout:I

    iput v1, p0, Lokhttp4/OkHttpClient$Builder;->readTimeout:I

    iput v1, p0, Lokhttp4/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lokhttp4/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method


# virtual methods
.method public build()Lokhttp4/OkHttpClient;
    .registers 2

    new-instance v0, Lokhttp4/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp4/OkHttpClient;-><init>(Lokhttp4/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lokhttp4/Cache;)Lokhttp4/OkHttpClient$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/OkHttpClient$Builder;->cache:Lokhttp4/Cache;

    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp4/OkHttpClient$Builder;->internalCache:Lokhttp4/internal/cache/InternalCache;

    return-object p0
.end method

.method public callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp4/OkHttpClient$Builder;
    .registers 5

    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp4/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp4/OkHttpClient$Builder;->callTimeout:I

    return-object p0
.end method

.method public connectionSpecs(Ljava/util/List;)Lokhttp4/OkHttpClient$Builder;
    .registers 2

    invoke-static {p1}, Lokhttp4/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp4/OkHttpClient$Builder;
    .registers 5

    const-string/jumbo v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp4/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp4/OkHttpClient$Builder;->readTimeout:I

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp4/OkHttpClient$Builder;
    .registers 4

    const-string/jumbo v0, "sslSocketFactory == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "trustManager == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lokhttp4/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lokhttp4/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    return-object p0
.end method
