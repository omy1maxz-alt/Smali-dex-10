.class public Lokhttp4/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field body:Lokhttp4/ResponseBody;

.field cacheResponse:Lokhttp4/Response;

.field code:I

.field handshake:Lokhttp4/Handshake;

.field headers:Lokhttp4/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lokhttp4/Response;

.field priorResponse:Lokhttp4/Response;

.field protocol:Lokhttp4/Protocol;

.field receivedResponseAtMillis:J

.field request:Lokhttp4/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp4/Response$Builder;->code:I

    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp4/Response$Builder;->headers:Lokhttp4/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lokhttp4/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp4/Response$Builder;->code:I

    iget-object v0, p1, Lokhttp4/Response;->request:Lokhttp4/Request;

    iput-object v0, p0, Lokhttp4/Response$Builder;->request:Lokhttp4/Request;

    iget-object v0, p1, Lokhttp4/Response;->protocol:Lokhttp4/Protocol;

    iput-object v0, p0, Lokhttp4/Response$Builder;->protocol:Lokhttp4/Protocol;

    iget v0, p1, Lokhttp4/Response;->code:I

    iput v0, p0, Lokhttp4/Response$Builder;->code:I

    iget-object v0, p1, Lokhttp4/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/Response$Builder;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp4/Response;->handshake:Lokhttp4/Handshake;

    iput-object v0, p0, Lokhttp4/Response$Builder;->handshake:Lokhttp4/Handshake;

    iget-object v0, p1, Lokhttp4/Response;->headers:Lokhttp4/Headers;

    invoke-virtual {v0}, Lokhttp4/Headers;->newBuilder()Lokhttp4/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Response$Builder;->headers:Lokhttp4/Headers$Builder;

    iget-object v0, p1, Lokhttp4/Response;->body:Lokhttp4/ResponseBody;

    iput-object v0, p0, Lokhttp4/Response$Builder;->body:Lokhttp4/ResponseBody;

    iget-object v0, p1, Lokhttp4/Response;->networkResponse:Lokhttp4/Response;

    iput-object v0, p0, Lokhttp4/Response$Builder;->networkResponse:Lokhttp4/Response;

    iget-object v0, p1, Lokhttp4/Response;->cacheResponse:Lokhttp4/Response;

    iput-object v0, p0, Lokhttp4/Response$Builder;->cacheResponse:Lokhttp4/Response;

    iget-object v0, p1, Lokhttp4/Response;->priorResponse:Lokhttp4/Response;

    iput-object v0, p0, Lokhttp4/Response$Builder;->priorResponse:Lokhttp4/Response;

    iget-wide v0, p1, Lokhttp4/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp4/Response$Builder;->sentRequestAtMillis:J

    iget-wide v0, p1, Lokhttp4/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp4/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Lokhttp4/Response;)V
    .registers 3

    iget-object p1, p1, Lokhttp4/Response;->body:Lokhttp4/ResponseBody;

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkSupportResponse(Ljava/lang/String;Lokhttp4/Response;)V
    .registers 4

    iget-object v0, p2, Lokhttp4/Response;->body:Lokhttp4/ResponseBody;

    if-nez v0, :cond_56

    iget-object v0, p2, Lokhttp4/Response;->networkResponse:Lokhttp4/Response;

    if-nez v0, :cond_3f

    iget-object v0, p2, Lokhttp4/Response;->cacheResponse:Lokhttp4/Response;

    if-nez v0, :cond_28

    iget-object p2, p2, Lokhttp4/Response;->priorResponse:Lokhttp4/Response;

    if-nez p2, :cond_11

    return-void

    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Response$Builder;
    .registers 4

    iget-object v0, p0, Lokhttp4/Response$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp4/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/Response$Builder;->body:Lokhttp4/ResponseBody;

    return-object p0
.end method

.method public build()Lokhttp4/Response;
    .registers 4

    iget-object v0, p0, Lokhttp4/Response$Builder;->request:Lokhttp4/Request;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lokhttp4/Response$Builder;->protocol:Lokhttp4/Protocol;

    if-eqz v0, :cond_37

    iget v0, p0, Lokhttp4/Response$Builder;->code:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Lokhttp4/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_16

    new-instance v0, Lokhttp4/Response;

    invoke-direct {v0, p0}, Lokhttp4/Response;-><init>(Lokhttp4/Response$Builder;)V

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp4/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lokhttp4/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp4/Response;)V

    :cond_7
    iput-object p1, p0, Lokhttp4/Response$Builder;->cacheResponse:Lokhttp4/Response;

    return-object p0
.end method

.method public code(I)Lokhttp4/Response$Builder;
    .registers 2

    iput p1, p0, Lokhttp4/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Lokhttp4/Handshake;)Lokhttp4/Response$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/Response$Builder;->handshake:Lokhttp4/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Response$Builder;
    .registers 4

    iget-object v0, p0, Lokhttp4/Response$Builder;->headers:Lokhttp4/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp4/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public headers(Lokhttp4/Headers;)Lokhttp4/Response$Builder;
    .registers 2

    invoke-virtual {p1}, Lokhttp4/Headers;->newBuilder()Lokhttp4/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Response$Builder;->headers:Lokhttp4/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lokhttp4/Response$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lokhttp4/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp4/Response;)V

    :cond_7
    iput-object p1, p0, Lokhttp4/Response$Builder;->networkResponse:Lokhttp4/Response;

    return-object p0
.end method

.method public priorResponse(Lokhttp4/Response;)Lokhttp4/Response$Builder;
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lokhttp4/Response$Builder;->checkPriorResponse(Lokhttp4/Response;)V

    :cond_5
    iput-object p1, p0, Lokhttp4/Response$Builder;->priorResponse:Lokhttp4/Response;

    return-object p0
.end method

.method public protocol(Lokhttp4/Protocol;)Lokhttp4/Response$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/Response$Builder;->protocol:Lokhttp4/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lokhttp4/Response$Builder;
    .registers 3

    iput-wide p1, p0, Lokhttp4/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public request(Lokhttp4/Request;)Lokhttp4/Response$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/Response$Builder;->request:Lokhttp4/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Lokhttp4/Response$Builder;
    .registers 3

    iput-wide p1, p0, Lokhttp4/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
