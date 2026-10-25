.class public Lokhttp4/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp4/Call$Factory;


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;


# instance fields
.field final authenticator:Lokhttp4/Authenticator;

.field final cache:Lokhttp4/Cache;

.field final callTimeout:I

.field final certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lokhttp4/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lokhttp4/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;

.field final cookieJar:Lokhttp4/CookieJar;

.field final dispatcher:Lokhttp4/Dispatcher;

.field final dns:Lokhttp4/Dns;

.field final eventListenerFactory:Lokhttp4/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;

.field final internalCache:Lokhttp4/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;

.field final pingInterval:I

.field final protocols:Ljava/util/List;

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lokhttp4/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp4/Protocol;

    sget-object v2, Lokhttp4/Protocol;->HTTP_2:Lokhttp4/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp4/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp4/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Lokhttp4/ConnectionSpec;

    sget-object v1, Lokhttp4/ConnectionSpec;->MODERN_TLS:Lokhttp4/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp4/ConnectionSpec;->CLEARTEXT:Lokhttp4/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp4/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp4/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    new-instance v0, Lokhttp4/OkHttpClient$1;

    invoke-direct {v0}, Lokhttp4/OkHttpClient$1;-><init>()V

    sput-object v0, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lokhttp4/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp4/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp4/OkHttpClient;-><init>(Lokhttp4/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lokhttp4/OkHttpClient$Builder;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->dispatcher:Lokhttp4/Dispatcher;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->dispatcher:Lokhttp4/Dispatcher;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->protocols:Ljava/util/List;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v1}, Lokhttp4/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v1}, Lokhttp4/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->eventListenerFactory:Lokhttp4/EventListener$Factory;

    iput-object v1, p0, Lokhttp4/OkHttpClient;->eventListenerFactory:Lokhttp4/EventListener$Factory;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v1, p0, Lokhttp4/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->cookieJar:Lokhttp4/CookieJar;

    iput-object v1, p0, Lokhttp4/OkHttpClient;->cookieJar:Lokhttp4/CookieJar;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->cache:Lokhttp4/Cache;

    iput-object v1, p0, Lokhttp4/OkHttpClient;->cache:Lokhttp4/Cache;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->internalCache:Lokhttp4/internal/cache/InternalCache;

    iput-object v1, p0, Lokhttp4/OkHttpClient;->internalCache:Lokhttp4/internal/cache/InternalCache;

    iget-object v1, p1, Lokhttp4/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lokhttp4/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp4/ConnectionSpec;

    if-nez v2, :cond_55

    invoke-virtual {v3}, Lokhttp4/ConnectionSpec;->isTls()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_55
    const/4 v2, 0x1

    goto :goto_41

    :cond_57
    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_6f

    if-nez v2, :cond_5e

    goto :goto_6f

    :cond_5e
    invoke-static {}, Lokhttp4/internal/Util;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/OkHttpClient;->newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lokhttp4/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/OkHttpClient;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    goto :goto_75

    :cond_6f
    :goto_6f
    iput-object v0, p0, Lokhttp4/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    :goto_75
    iget-object v0, p0, Lokhttp4/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_82

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lokhttp4/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_82
    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->certificatePinner:Lokhttp4/CertificatePinner;

    iget-object v1, p0, Lokhttp4/OkHttpClient;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lokhttp4/CertificatePinner;->withCertificateChainCleaner(Lokhttp4/internal/tls/CertificateChainCleaner;)Lokhttp4/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/OkHttpClient;->certificatePinner:Lokhttp4/CertificatePinner;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp4/Authenticator;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->proxyAuthenticator:Lokhttp4/Authenticator;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->authenticator:Lokhttp4/Authenticator;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->authenticator:Lokhttp4/Authenticator;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->connectionPool:Lokhttp4/ConnectionPool;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->connectionPool:Lokhttp4/ConnectionPool;

    iget-object v0, p1, Lokhttp4/OkHttpClient$Builder;->dns:Lokhttp4/Dns;

    iput-object v0, p0, Lokhttp4/OkHttpClient;->dns:Lokhttp4/Dns;

    iget-boolean v0, p1, Lokhttp4/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp4/OkHttpClient;->followSslRedirects:Z

    iget-boolean v0, p1, Lokhttp4/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp4/OkHttpClient;->followRedirects:Z

    iget-boolean v0, p1, Lokhttp4/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp4/OkHttpClient;->retryOnConnectionFailure:Z

    iget v0, p1, Lokhttp4/OkHttpClient$Builder;->callTimeout:I

    iput v0, p0, Lokhttp4/OkHttpClient;->callTimeout:I

    iget v0, p1, Lokhttp4/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lokhttp4/OkHttpClient;->connectTimeout:I

    iget v0, p1, Lokhttp4/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lokhttp4/OkHttpClient;->readTimeout:I

    iget v0, p1, Lokhttp4/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lokhttp4/OkHttpClient;->writeTimeout:I

    iget p1, p1, Lokhttp4/OkHttpClient$Builder;->pingInterval:I

    iput p1, p0, Lokhttp4/OkHttpClient;->pingInterval:I

    iget-object p1, p0, Lokhttp4/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    iget-object p1, p0, Lokhttp4/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d2

    return-void

    :cond_d2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_eb
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_105

    :goto_104
    throw p1

    :goto_105
    goto :goto_104
.end method

.method private static newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    :try_start_0
    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/internal/platform/Platform;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string v0, "No System TLS"

    invoke-static {v0, p0}, Lokhttp4/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public authenticator()Lokhttp4/Authenticator;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->authenticator:Lokhttp4/Authenticator;

    return-object v0
.end method

.method public cache()Lokhttp4/Cache;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->cache:Lokhttp4/Cache;

    return-object v0
.end method

.method public callTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/OkHttpClient;->callTimeout:I

    return v0
.end method

.method public certificatePinner()Lokhttp4/CertificatePinner;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->certificatePinner:Lokhttp4/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lokhttp4/ConnectionPool;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->connectionPool:Lokhttp4/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lokhttp4/CookieJar;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->cookieJar:Lokhttp4/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lokhttp4/Dispatcher;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->dispatcher:Lokhttp4/Dispatcher;

    return-object v0
.end method

.method public dns()Lokhttp4/Dns;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->dns:Lokhttp4/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lokhttp4/EventListener$Factory;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->eventListenerFactory:Lokhttp4/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp4/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp4/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lokhttp4/internal/cache/InternalCache;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->cache:Lokhttp4/Cache;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lokhttp4/Cache;->internalCache:Lokhttp4/internal/cache/InternalCache;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lokhttp4/OkHttpClient;->internalCache:Lokhttp4/internal/cache/InternalCache;

    :goto_9
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newCall(Lokhttp4/Request;)Lokhttp4/Call;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lokhttp4/RealCall;->newRealCall(Lokhttp4/OkHttpClient;Lokhttp4/Request;Z)Lokhttp4/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public pingIntervalMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp4/Authenticator;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->proxyAuthenticator:Lokhttp4/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp4/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp4/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/OkHttpClient;->writeTimeout:I

    return v0
.end method
