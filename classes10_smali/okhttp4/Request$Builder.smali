.class public Lokhttp4/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field body:Lokhttp4/RequestBody;

.field headers:Lokhttp4/Headers$Builder;

.field method:Ljava/lang/String;

.field tags:Ljava/util/Map;

.field url:Lokhttp4/HttpUrl;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Request$Builder;->tags:Ljava/util/Map;

    const-string v0, "GET"

    iput-object v0, p0, Lokhttp4/Request$Builder;->method:Ljava/lang/String;

    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lokhttp4/Request;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Request$Builder;->tags:Ljava/util/Map;

    iget-object v0, p1, Lokhttp4/Request;->url:Lokhttp4/HttpUrl;

    iput-object v0, p0, Lokhttp4/Request$Builder;->url:Lokhttp4/HttpUrl;

    iget-object v0, p1, Lokhttp4/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/Request$Builder;->method:Ljava/lang/String;

    iget-object v0, p1, Lokhttp4/Request;->body:Lokhttp4/RequestBody;

    iput-object v0, p0, Lokhttp4/Request$Builder;->body:Lokhttp4/RequestBody;

    iget-object v0, p1, Lokhttp4/Request;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_29

    :cond_22
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lokhttp4/Request;->tags:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_29
    iput-object v0, p0, Lokhttp4/Request$Builder;->tags:Ljava/util/Map;

    iget-object p1, p1, Lokhttp4/Request;->headers:Lokhttp4/Headers;

    invoke-virtual {p1}, Lokhttp4/Headers;->newBuilder()Lokhttp4/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;
    .registers 4

    iget-object v0, p0, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp4/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public build()Lokhttp4/Request;
    .registers 3

    iget-object v0, p0, Lokhttp4/Request$Builder;->url:Lokhttp4/HttpUrl;

    if-eqz v0, :cond_a

    new-instance v0, Lokhttp4/Request;

    invoke-direct {v0, p0}, Lokhttp4/Request;-><init>(Lokhttp4/Request$Builder;)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Lokhttp4/CacheControl;)Lokhttp4/Request$Builder;
    .registers 4

    invoke-virtual {p1}, Lokhttp4/CacheControl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Lokhttp4/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p0, v1, p1}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;
    .registers 4

    iget-object v0, p0, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp4/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public headers(Lokhttp4/Headers;)Lokhttp4/Request$Builder;
    .registers 2

    invoke-virtual {p1}, Lokhttp4/Headers;->newBuilder()Lokhttp4/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;Lokhttp4/RequestBody;)Lokhttp4/Request$Builder;
    .registers 5

    const-string v0, "method == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "method "

    if-eqz p2, :cond_30

    invoke-static {p1}, Lokhttp4/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_30

    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_30
    :goto_30
    if-nez p2, :cond_53

    invoke-static {p1}, Lokhttp4/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_53

    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_53
    :goto_53
    iput-object p1, p0, Lokhttp4/Request$Builder;->method:Ljava/lang/String;

    iput-object p2, p0, Lokhttp4/Request$Builder;->body:Lokhttp4/RequestBody;

    return-object p0

    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp4/Request$Builder;
    .registers 3

    iget-object v0, p0, Lokhttp4/Request$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp4/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lokhttp4/Request$Builder;
    .registers 9

    const-string/jumbo v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string/jumbo v4, "ws:"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    :cond_2b
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string/jumbo v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-static {p1}, Lokhttp4/HttpUrl;->get(Ljava/lang/String;)Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp4/Request$Builder;->url(Lokhttp4/HttpUrl;)Lokhttp4/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Lokhttp4/HttpUrl;)Lokhttp4/Request$Builder;
    .registers 3

    const-string/jumbo v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lokhttp4/Request$Builder;->url:Lokhttp4/HttpUrl;

    return-object p0
.end method
