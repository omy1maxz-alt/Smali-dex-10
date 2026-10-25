.class public final Lokhttp4/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp4/Interceptor;


# instance fields
.field private final cookieJar:Lokhttp4/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp4/CookieJar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http/BridgeInterceptor;->cookieJar:Lokhttp4/CookieJar;

    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    if-lez v2, :cond_13

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp4/Cookie;

    invoke-virtual {v3}, Lokhttp4/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp4/Cookie;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp4/Interceptor$Chain;)Lokhttp4/Response;
    .registers 12

    invoke-interface {p1}, Lokhttp4/Interceptor$Chain;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->newBuilder()Lokhttp4/Request$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp4/Request;->body()Lokhttp4/RequestBody;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lokhttp4/RequestBody;->contentType()Lokhttp4/MediaType;

    move-result-object v7

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lokhttp4/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_21
    invoke-virtual {v2}, Lokhttp4/RequestBody;->contentLength()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_36

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    invoke-virtual {v1, v2}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    goto :goto_3e

    :cond_36
    const-string v7, "chunked"

    invoke-virtual {v1, v2, v7}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    invoke-virtual {v1, v6}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_3e
    :goto_3e
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_52

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v7

    invoke-static {v7, v8}, Lokhttp4/internal/Util;->hostHeader(Lokhttp4/HttpUrl;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_52
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5f

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_5f
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_75

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_75

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v9}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_75
    iget-object v2, p0, Lokhttp4/internal/http/BridgeInterceptor;->cookieJar:Lokhttp4/CookieJar;

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v7

    invoke-interface {v2, v7}, Lokhttp4/CookieJar;->loadForRequest(Lokhttp4/HttpUrl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-direct {p0, v2}, Lokhttp4/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_8e
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9d

    invoke-static {}, Lokhttp4/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    :cond_9d
    invoke-virtual {v1}, Lokhttp4/Request$Builder;->build()Lokhttp4/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp4/Interceptor$Chain;->proceed(Lokhttp4/Request;)Lokhttp4/Response;

    move-result-object p1

    iget-object v1, p0, Lokhttp4/internal/http/BridgeInterceptor;->cookieJar:Lokhttp4/CookieJar;

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lokhttp4/internal/http/HttpHeaders;->receiveHeaders(Lokhttp4/CookieJar;Lokhttp4/HttpUrl;Lokhttp4/Headers;)V

    invoke-virtual {p1}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp4/Response$Builder;->request(Lokhttp4/Request;)Lokhttp4/Response$Builder;

    move-result-object v0

    if-eqz v8, :cond_102

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->hasBody(Lokhttp4/Response;)Z

    move-result v2

    if-eqz v2, :cond_102

    new-instance v2, Lokin/GzipSource;

    invoke-virtual {p1}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp4/ResponseBody;->source()Lokin/BufferedSource;

    move-result-object v7

    invoke-direct {v2, v7}, Lokin/GzipSource;-><init>(Lokin/Source;)V

    invoke-virtual {p1}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp4/Headers;->newBuilder()Lokhttp4/Headers$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lokhttp4/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lokhttp4/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Response$Builder;

    invoke-virtual {p1, v3}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lokhttp4/internal/http/RealResponseBody;

    invoke-static {v2}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    invoke-virtual {v0, v1}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    :cond_102
    invoke-virtual {v0}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p1

    return-object p1
.end method
