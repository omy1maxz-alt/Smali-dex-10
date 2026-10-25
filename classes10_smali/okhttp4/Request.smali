.class public final Lokhttp4/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field final body:Lokhttp4/RequestBody;

.field private volatile cacheControl:Lokhttp4/CacheControl;

.field final headers:Lokhttp4/Headers;

.field final method:Ljava/lang/String;

.field final tags:Ljava/util/Map;

.field final url:Lokhttp4/HttpUrl;


# direct methods
.method constructor <init>(Lokhttp4/Request$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp4/Request$Builder;->url:Lokhttp4/HttpUrl;

    iput-object v0, p0, Lokhttp4/Request;->url:Lokhttp4/HttpUrl;

    iget-object v0, p1, Lokhttp4/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/Request;->method:Ljava/lang/String;

    iget-object v0, p1, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Request;->headers:Lokhttp4/Headers;

    iget-object v0, p1, Lokhttp4/Request$Builder;->body:Lokhttp4/RequestBody;

    iput-object v0, p0, Lokhttp4/Request;->body:Lokhttp4/RequestBody;

    iget-object p1, p1, Lokhttp4/Request$Builder;->tags:Ljava/util/Map;

    invoke-static {p1}, Lokhttp4/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Request;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public body()Lokhttp4/RequestBody;
    .registers 2

    iget-object v0, p0, Lokhttp4/Request;->body:Lokhttp4/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp4/CacheControl;
    .registers 2

    iget-object v0, p0, Lokhttp4/Request;->cacheControl:Lokhttp4/CacheControl;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lokhttp4/Request;->headers:Lokhttp4/Headers;

    invoke-static {v0}, Lokhttp4/CacheControl;->parse(Lokhttp4/Headers;)Lokhttp4/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Request;->cacheControl:Lokhttp4/CacheControl;

    :goto_d
    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lokhttp4/Request;->headers:Lokhttp4/Headers;

    invoke-virtual {v0, p1}, Lokhttp4/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lokhttp4/Request;->headers:Lokhttp4/Headers;

    invoke-virtual {v0, p1}, Lokhttp4/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public headers()Lokhttp4/Headers;
    .registers 2

    iget-object v0, p0, Lokhttp4/Request;->headers:Lokhttp4/Headers;

    return-object v0
.end method

.method public isHttps()Z
    .registers 2

    iget-object v0, p0, Lokhttp4/Request;->url:Lokhttp4/HttpUrl;

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lokhttp4/Request$Builder;
    .registers 2

    new-instance v0, Lokhttp4/Request$Builder;

    invoke-direct {v0, p0}, Lokhttp4/Request$Builder;-><init>(Lokhttp4/Request;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Request;->url:Lokhttp4/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Request;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lokhttp4/HttpUrl;
    .registers 2

    iget-object v0, p0, Lokhttp4/Request;->url:Lokhttp4/HttpUrl;

    return-object v0
.end method
