.class public final Lokhttp4/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokhttp4/Interceptor;


# instance fields
.field final cache:Lokhttp4/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lokhttp4/internal/cache/InternalCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Lokhttp4/internal/cache/CacheRequest;Lokhttp4/Response;)Lokhttp4/Response;
    .registers 7

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lokhttp4/internal/cache/CacheRequest;->body()Lokin/Sink;

    move-result-object v0

    if-nez v0, :cond_a

    return-object p2

    :cond_a
    invoke-virtual {p2}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/ResponseBody;->source()Lokin/BufferedSource;

    move-result-object v1

    invoke-static {v0}, Lokin/Okio;->buffer(Lokin/Sink;)Lokin/BufferedSink;

    move-result-object v0

    new-instance v2, Lokhttp4/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lokhttp4/internal/cache/CacheInterceptor$1;-><init>(Lokhttp4/internal/cache/CacheInterceptor;Lokin/BufferedSource;Lokhttp4/internal/cache/CacheRequest;Lokin/BufferedSink;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/ResponseBody;->contentLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object p2

    new-instance v3, Lokhttp4/internal/http/RealResponseBody;

    invoke-static {v2}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    invoke-virtual {p2, v3}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p1

    return-object p1
.end method

.method private static combine(Lokhttp4/Headers;Lokhttp4/Headers;)Lokhttp4/Headers;
    .registers 9

    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lokhttp4/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_40

    invoke-virtual {p0, v3}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_3d

    :cond_26
    invoke-static {v4}, Lokhttp4/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-static {v4}, Lokhttp4/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {p1, v4}, Lokhttp4/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3d

    :cond_38
    sget-object v6, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Lokhttp4/internal/Internal;->addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_40
    invoke-virtual {p1}, Lokhttp4/Headers;->size()I

    move-result p0

    :goto_44
    if-ge v2, p0, :cond_62

    invoke-virtual {p1, v2}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp4/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-static {v1}, Lokhttp4/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    sget-object v3, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    invoke-virtual {p1, v2}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lokhttp4/internal/Internal;->addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_62
    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object p0

    return-object p0
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method private static stripBody(Lokhttp4/Response;)Lokhttp4/Response;
    .registers 2

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p0

    :cond_15
    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp4/Interceptor$Chain;)Lokhttp4/Response;
    .registers 7

    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lokhttp4/Interceptor$Chain;->request()Lokhttp4/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp4/internal/cache/InternalCache;->get(Lokhttp4/Request;)Lokhttp4/Response;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lokhttp4/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lokhttp4/Interceptor$Chain;->request()Lokhttp4/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lokhttp4/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp4/Request;Lokhttp4/Response;)V

    invoke-virtual {v3}, Lokhttp4/internal/cache/CacheStrategy$Factory;->get()Lokhttp4/internal/cache/CacheStrategy;

    move-result-object v1

    iget-object v2, v1, Lokhttp4/internal/cache/CacheStrategy;->networkRequest:Lokhttp4/Request;

    iget-object v3, v1, Lokhttp4/internal/cache/CacheStrategy;->cacheResponse:Lokhttp4/Response;

    iget-object v4, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    if-eqz v4, :cond_2a

    invoke-interface {v4, v1}, Lokhttp4/internal/cache/InternalCache;->trackResponse(Lokhttp4/internal/cache/CacheStrategy;)V

    :cond_2a
    if-eqz v0, :cond_35

    if-nez v3, :cond_35

    invoke-virtual {v0}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_35
    if-nez v2, :cond_71

    if-nez v3, :cond_71

    new-instance v0, Lokhttp4/Response$Builder;

    invoke-direct {v0}, Lokhttp4/Response$Builder;-><init>()V

    invoke-interface {p1}, Lokhttp4/Interceptor$Chain;->request()Lokhttp4/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp4/Response$Builder;->request(Lokhttp4/Request;)Lokhttp4/Response$Builder;

    move-result-object p1

    sget-object v0, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    invoke-virtual {p1, v0}, Lokhttp4/Response$Builder;->protocol(Lokhttp4/Protocol;)Lokhttp4/Response$Builder;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lokhttp4/Response$Builder;->code(I)Lokhttp4/Response$Builder;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lokhttp4/Response$Builder;->message(Ljava/lang/String;)Lokhttp4/Response$Builder;

    move-result-object p1

    sget-object v0, Lokhttp4/internal/Util;->EMPTY_RESPONSE:Lokhttp4/ResponseBody;

    invoke-virtual {p1, v0}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lokhttp4/Response$Builder;->sentRequestAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokhttp4/Response$Builder;->receivedResponseAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p1

    return-object p1

    :cond_71
    if-nez v2, :cond_84

    invoke-virtual {v3}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-static {v3}, Lokhttp4/internal/cache/CacheInterceptor;->stripBody(Lokhttp4/Response;)Lokhttp4/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp4/Response$Builder;->cacheResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p1

    return-object p1

    :cond_84
    :try_start_84
    invoke-interface {p1, v2}, Lokhttp4/Interceptor$Chain;->proceed(Lokhttp4/Request;)Lokhttp4/Response;

    move-result-object p1
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_131

    if-nez p1, :cond_93

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_93
    if-eqz v3, :cond_ee

    invoke-virtual {p1}, Lokhttp4/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_e7

    invoke-virtual {v3}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp4/internal/cache/CacheInterceptor;->combine(Lokhttp4/Headers;Lokhttp4/Headers;)Lokhttp4/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp4/Response;->sentRequestAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp4/Response$Builder;->sentRequestAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp4/Response;->receivedResponseAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp4/Response$Builder;->receivedResponseAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lokhttp4/internal/cache/CacheInterceptor;->stripBody(Lokhttp4/Response;)Lokhttp4/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->cacheResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-static {p1}, Lokhttp4/internal/cache/CacheInterceptor;->stripBody(Lokhttp4/Response;)Lokhttp4/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->networkResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/ResponseBody;->close()V

    iget-object p1, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    invoke-interface {p1}, Lokhttp4/internal/cache/InternalCache;->trackConditionalCacheHit()V

    iget-object p1, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Lokhttp4/internal/cache/InternalCache;->update(Lokhttp4/Response;Lokhttp4/Response;)V

    return-object v0

    :cond_e7
    invoke-virtual {v3}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_ee
    invoke-virtual {p1}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-static {v3}, Lokhttp4/internal/cache/CacheInterceptor;->stripBody(Lokhttp4/Response;)Lokhttp4/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->cacheResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;

    move-result-object v0

    invoke-static {p1}, Lokhttp4/internal/cache/CacheInterceptor;->stripBody(Lokhttp4/Response;)Lokhttp4/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp4/Response$Builder;->networkResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p1

    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    if-eqz v0, :cond_130

    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->hasBody(Lokhttp4/Response;)Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-static {p1, v2}, Lokhttp4/internal/cache/CacheStrategy;->isCacheable(Lokhttp4/Response;Lokhttp4/Request;)Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    invoke-interface {v0, p1}, Lokhttp4/internal/cache/InternalCache;->put(Lokhttp4/Response;)Lokhttp4/internal/cache/CacheRequest;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokhttp4/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp4/internal/cache/CacheRequest;Lokhttp4/Response;)Lokhttp4/Response;

    move-result-object p1

    return-object p1

    :cond_121
    invoke-virtual {v2}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_130

    :try_start_12b
    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor;->cache:Lokhttp4/internal/cache/InternalCache;

    invoke-interface {v0, v2}, Lokhttp4/internal/cache/InternalCache;->remove(Lokhttp4/Request;)V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_130} :catch_130

    :catch_130
    :cond_130
    return-object p1

    :catchall_131
    move-exception p1

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_13b
    throw p1
.end method
