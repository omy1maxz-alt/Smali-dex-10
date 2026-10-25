.class public final Lokhttp4/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp4/Interceptor;


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp4/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lokhttp4/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp4/OkHttpClient;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    iput-boolean p2, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lokhttp4/HttpUrl;)Lokhttp4/Address;
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lokhttp4/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v3}, Lokhttp4/OkHttpClient;->certificatePinner()Lokhttp4/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_22

    :cond_1f
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_22
    new-instance v1, Lokhttp4/Address;

    invoke-virtual/range {p1 .. p1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp4/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->dns()Lokhttp4/Dns;

    move-result-object v7

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->proxyAuthenticator()Lokhttp4/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lokhttp4/Address;-><init>(Ljava/lang/String;ILokhttp4/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp4/CertificatePinner;Lokhttp4/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Lokhttp4/Response;Lokhttp4/Route;)Lokhttp4/Request;
    .registers 9

    if-eqz p1, :cond_142

    invoke-virtual {p1}, Lokhttp4/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_a5

    const/16 v2, 0x134

    if-eq v0, v2, :cond_a5

    const/16 v2, 0x191

    if-eq v0, v2, :cond_9a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7a

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5b

    const/16 p2, 0x198

    if-eq v0, p2, :cond_2d

    packed-switch v0, :pswitch_data_148

    return-object v4

    :cond_2d
    iget-object v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_36

    return-object v4

    :cond_36
    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->body()Lokhttp4/RequestBody;

    invoke-virtual {p1}, Lokhttp4/Response;->priorResponse()Lokhttp4/Response;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lokhttp4/Response;->priorResponse()Lokhttp4/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Response;->code()I

    move-result v0

    if-ne v0, p2, :cond_4e

    return-object v4

    :cond_4e
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp4/Response;I)I

    move-result p2

    if-lez p2, :cond_56

    return-object v4

    :cond_56
    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object p1

    return-object p1

    :cond_5b
    invoke-virtual {p2}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->proxyAuthenticator()Lokhttp4/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp4/Authenticator;->authenticate(Lokhttp4/Route;Lokhttp4/Response;)Lokhttp4/Request;

    move-result-object p1

    return-object p1

    :cond_72
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    invoke-virtual {p1}, Lokhttp4/Response;->priorResponse()Lokhttp4/Response;

    move-result-object p2

    if-eqz p2, :cond_8b

    invoke-virtual {p1}, Lokhttp4/Response;->priorResponse()Lokhttp4/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp4/Response;->code()I

    move-result p2

    if-ne p2, v2, :cond_8b

    return-object v4

    :cond_8b
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp4/Response;I)I

    move-result p2

    if-nez p2, :cond_99

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object p1

    return-object p1

    :cond_99
    return-object v4

    :cond_9a
    iget-object v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->authenticator()Lokhttp4/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp4/Authenticator;->authenticate(Lokhttp4/Route;Lokhttp4/Response;)Lokhttp4/Request;

    move-result-object p1

    return-object p1

    :cond_a5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b4

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b4

    return-object v4

    :cond_b4
    :pswitch_b4  #0x12c, 0x12d, 0x12e, 0x12f
    iget-object p2, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {p2}, Lokhttp4/OkHttpClient;->followRedirects()Z

    move-result p2

    if-nez p2, :cond_bd

    return-object v4

    :cond_bd
    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_c6

    return-object v4

    :cond_c6
    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp4/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp4/HttpUrl;

    move-result-object p2

    if-nez p2, :cond_d5

    return-object v4

    :cond_d5
    invoke-virtual {p2}, Lokhttp4/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp4/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    iget-object v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->followSslRedirects()Z

    move-result v0

    if-nez v0, :cond_f4

    return-object v4

    :cond_f4
    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->newBuilder()Lokhttp4/Request$Builder;

    move-result-object v0

    invoke-static {v1}, Lokhttp4/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12e

    invoke-static {v1}, Lokhttp4/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1}, Lokhttp4/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-virtual {v0, v3, v4}, Lokhttp4/Request$Builder;->method(Ljava/lang/String;Lokhttp4/RequestBody;)Lokhttp4/Request$Builder;

    goto :goto_11d

    :cond_110
    if-eqz v2, :cond_11a

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp4/Request;->body()Lokhttp4/RequestBody;

    move-result-object v4

    :cond_11a
    invoke-virtual {v0, v1, v4}, Lokhttp4/Request$Builder;->method(Ljava/lang/String;Lokhttp4/RequestBody;)Lokhttp4/Request$Builder;

    :goto_11d
    if-nez v2, :cond_12e

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_12e
    invoke-direct {p0, p1, p2}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp4/Response;Lokhttp4/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "Authorization"

    invoke-virtual {v0, p1}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_139
    invoke-virtual {v0, p2}, Lokhttp4/Request$Builder;->url(Lokhttp4/HttpUrl;)Lokhttp4/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Request$Builder;->build()Lokhttp4/Request;

    move-result-object p1

    return-object p1

    :cond_142
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_148
    .packed-switch 0x12c
        :pswitch_b4  #0000012c
        :pswitch_b4  #0000012d
        :pswitch_b4  #0000012e
        :pswitch_b4  #0000012f
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    return v1

    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method private recover(Ljava/io/IOException;Lokhttp4/internal/connection/StreamAllocation;ZLokhttp4/Request;)Z
    .registers 7

    invoke-virtual {p2, p1}, Lokhttp4/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    if-eqz p3, :cond_16

    invoke-direct {p0, p1, p4}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->requestIsUnrepeatable(Ljava/io/IOException;Lokhttp4/Request;)Z

    move-result p4

    if-eqz p4, :cond_16

    return v1

    :cond_16
    invoke-direct {p0, p1, p3}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_1d

    return v1

    :cond_1d
    invoke-virtual {p2}, Lokhttp4/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private requestIsUnrepeatable(Ljava/io/IOException;Lokhttp4/Request;)Z
    .registers 3

    invoke-virtual {p2}, Lokhttp4/Request;->body()Lokhttp4/RequestBody;

    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private retryAfter(Lokhttp4/Response;I)I
    .registers 4

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return p2

    :cond_9
    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1a
    const p1, 0x7fffffff

    return p1
.end method

.method private sameConnection(Lokhttp4/Response;Lokhttp4/HttpUrl;)Z
    .registers 5

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p2}, Lokhttp4/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_30

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp4/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    iget-object v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp4/internal/connection/StreamAllocation;->cancel()V

    :cond_a
    return-void
.end method

.method public intercept(Lokhttp4/Interceptor$Chain;)Lokhttp4/Response;
    .registers 16

    invoke-interface {p1}, Lokhttp4/Interceptor$Chain;->request()Lokhttp4/Request;

    move-result-object v0

    check-cast p1, Lokhttp4/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp4/internal/http/RealInterceptorChain;->call()Lokhttp4/Call;

    move-result-object v7

    invoke-virtual {p1}, Lokhttp4/internal/http/RealInterceptorChain;->eventListener()Lokhttp4/EventListener;

    move-result-object v8

    new-instance v9, Lokhttp4/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->connectionPool()Lokhttp4/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp4/HttpUrl;)Lokhttp4/Address;

    move-result-object v3

    iget-object v6, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lokhttp4/internal/connection/StreamAllocation;-><init>(Lokhttp4/ConnectionPool;Lokhttp4/Address;Lokhttp4/Call;Lokhttp4/EventListener;Ljava/lang/Object;)V

    iput-object v9, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v11

    const/4 v2, 0x0

    :goto_2c
    iget-boolean v3, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v3, :cond_105

    :try_start_30
    invoke-virtual {p1, v0, v9, v11, v11}, Lokhttp4/internal/http/RealInterceptorChain;->proceed(Lokhttp4/Request;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;)Lokhttp4/Response;

    move-result-object v0
    :try_end_34
    .catch Lokhttp4/internal/connection/RouteException; {:try_start_30 .. :try_end_34} :catch_ec
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_db
    .catchall {:try_start_30 .. :try_end_34} :catchall_d9

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->priorResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object v0

    :cond_4e
    :try_start_4e
    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->route()Lokhttp4/Route;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp4/Response;Lokhttp4/Route;)Lokhttp4/Request;

    move-result-object v12
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_d4

    if-nez v12, :cond_5c

    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->release()V

    return-object v0

    :cond_5c
    invoke-virtual {v0}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_ba

    invoke-virtual {v12}, Lokhttp4/Request;->body()Lokhttp4/RequestBody;

    invoke-virtual {v12}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp4/Response;Lokhttp4/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_94

    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->release()V

    new-instance v9, Lokhttp4/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->connectionPool()Lokhttp4/ConnectionPool;

    move-result-object v2

    invoke-virtual {v12}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp4/HttpUrl;)Lokhttp4/Address;

    move-result-object v3

    iget-object v6, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lokhttp4/internal/connection/StreamAllocation;-><init>(Lokhttp4/ConnectionPool;Lokhttp4/Address;Lokhttp4/Call;Lokhttp4/EventListener;Ljava/lang/Object;)V

    iput-object v9, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    goto :goto_9a

    :cond_94
    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->codec()Lokhttp4/internal/http/HttpCodec;

    move-result-object v1

    if-nez v1, :cond_9e

    :goto_9a
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_2c

    :cond_9e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ba
    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->release()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_d4
    move-exception p1

    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->release()V

    throw p1

    :catchall_d9
    move-exception p1

    goto :goto_fe

    :catch_db
    move-exception v3

    :try_start_dc
    instance-of v4, v3, Lokhttp4/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_e2

    const/4 v4, 0x1

    goto :goto_e3

    :cond_e2
    const/4 v4, 0x0

    :goto_e3
    invoke-direct {p0, v3, v9, v4, v0}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp4/internal/connection/StreamAllocation;ZLokhttp4/Request;)Z

    move-result v4

    if-eqz v4, :cond_eb

    goto/16 :goto_2c

    :cond_eb
    throw v3

    :catch_ec
    move-exception v3

    invoke-virtual {v3}, Lokhttp4/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp4/internal/connection/StreamAllocation;ZLokhttp4/Request;)Z

    move-result v4

    if-eqz v4, :cond_f9

    goto/16 :goto_2c

    :cond_f9
    invoke-virtual {v3}, Lokhttp4/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_fe
    .catchall {:try_start_dc .. :try_end_fe} :catchall_d9

    :goto_fe
    invoke-virtual {v9, v11}, Lokhttp4/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->release()V

    throw p1

    :cond_105
    invoke-virtual {v9}, Lokhttp4/internal/connection/StreamAllocation;->release()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_111

    :goto_110
    throw p1

    :goto_111
    goto :goto_110
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method
