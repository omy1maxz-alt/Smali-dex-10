.class public final Lokhttp4/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final body:Lokhttp4/ResponseBody;

.field private volatile cacheControl:Lokhttp4/CacheControl;

.field final cacheResponse:Lokhttp4/Response;

.field final code:I

.field final handshake:Lokhttp4/Handshake;

.field final headers:Lokhttp4/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lokhttp4/Response;

.field final priorResponse:Lokhttp4/Response;

.field final protocol:Lokhttp4/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lokhttp4/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lokhttp4/Response$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp4/Response$Builder;->request:Lokhttp4/Request;

    iput-object v0, p0, Lokhttp4/Response;->request:Lokhttp4/Request;

    iget-object v0, p1, Lokhttp4/Response$Builder;->protocol:Lokhttp4/Protocol;

    iput-object v0, p0, Lokhttp4/Response;->protocol:Lokhttp4/Protocol;

    iget v0, p1, Lokhttp4/Response$Builder;->code:I

    iput v0, p0, Lokhttp4/Response;->code:I

    iget-object v0, p1, Lokhttp4/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/Response;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp4/Response$Builder;->handshake:Lokhttp4/Handshake;

    iput-object v0, p0, Lokhttp4/Response;->handshake:Lokhttp4/Handshake;

    iget-object v0, p1, Lokhttp4/Response$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Response;->headers:Lokhttp4/Headers;

    iget-object v0, p1, Lokhttp4/Response$Builder;->body:Lokhttp4/ResponseBody;

    iput-object v0, p0, Lokhttp4/Response;->body:Lokhttp4/ResponseBody;

    iget-object v0, p1, Lokhttp4/Response$Builder;->networkResponse:Lokhttp4/Response;

    iput-object v0, p0, Lokhttp4/Response;->networkResponse:Lokhttp4/Response;

    iget-object v0, p1, Lokhttp4/Response$Builder;->cacheResponse:Lokhttp4/Response;

    iput-object v0, p0, Lokhttp4/Response;->cacheResponse:Lokhttp4/Response;

    iget-object v0, p1, Lokhttp4/Response$Builder;->priorResponse:Lokhttp4/Response;

    iput-object v0, p0, Lokhttp4/Response;->priorResponse:Lokhttp4/Response;

    iget-wide v0, p1, Lokhttp4/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp4/Response;->sentRequestAtMillis:J

    iget-wide v0, p1, Lokhttp4/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp4/Response;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public body()Lokhttp4/ResponseBody;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->body:Lokhttp4/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp4/CacheControl;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->cacheControl:Lokhttp4/CacheControl;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lokhttp4/Response;->headers:Lokhttp4/Headers;

    invoke-static {v0}, Lokhttp4/CacheControl;->parse(Lokhttp4/Headers;)Lokhttp4/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Response;->cacheControl:Lokhttp4/CacheControl;

    :goto_d
    return-object v0
.end method

.method public cacheResponse()Lokhttp4/Response;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->cacheResponse:Lokhttp4/Response;

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lokhttp4/Response;->body:Lokhttp4/ResponseBody;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lokhttp4/ResponseBody;->close()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code()I
    .registers 2

    iget v0, p0, Lokhttp4/Response;->code:I

    return v0
.end method

.method public handshake()Lokhttp4/Handshake;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->handshake:Lokhttp4/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp4/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lokhttp4/Response;->headers:Lokhttp4/Headers;

    invoke-virtual {v0, p1}, Lokhttp4/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object p2, p1

    :cond_9
    return-object p2
.end method

.method public headers()Lokhttp4/Headers;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->headers:Lokhttp4/Headers;

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 3

    iget v0, p0, Lokhttp4/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lokhttp4/Response;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->networkResponse:Lokhttp4/Response;

    return-object v0
.end method

.method public newBuilder()Lokhttp4/Response$Builder;
    .registers 2

    new-instance v0, Lokhttp4/Response$Builder;

    invoke-direct {v0, p0}, Lokhttp4/Response$Builder;-><init>(Lokhttp4/Response;)V

    return-object v0
.end method

.method public priorResponse()Lokhttp4/Response;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->priorResponse:Lokhttp4/Response;

    return-object v0
.end method

.method public protocol()Lokhttp4/Protocol;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->protocol:Lokhttp4/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .registers 3

    iget-wide v0, p0, Lokhttp4/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lokhttp4/Request;
    .registers 2

    iget-object v0, p0, Lokhttp4/Response;->request:Lokhttp4/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .registers 3

    iget-wide v0, p0, Lokhttp4/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Response;->protocol:Lokhttp4/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp4/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Response;->request:Lokhttp4/Request;

    invoke-virtual {v1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
