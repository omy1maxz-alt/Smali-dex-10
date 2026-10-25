.class public final Lokhttp4/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokhttp4/internal/http/HttpCodec;


# instance fields
.field final client:Lokhttp4/OkHttpClient;

.field private headerLimit:J

.field final sink:Lokin/BufferedSink;

.field final source:Lokin/BufferedSource;

.field state:I

.field final streamAllocation:Lokhttp4/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp4/OkHttpClient;Lokhttp4/internal/connection/StreamAllocation;Lokin/BufferedSource;Lokin/BufferedSink;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lokhttp4/internal/http1/Http1Codec;->headerLimit:J

    iput-object p1, p0, Lokhttp4/internal/http1/Http1Codec;->client:Lokhttp4/OkHttpClient;

    iput-object p2, p0, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    iput-object p3, p0, Lokhttp4/internal/http1/Http1Codec;->source:Lokin/BufferedSource;

    iput-object p4, p0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->source:Lokin/BufferedSource;

    iget-wide v1, p0, Lokhttp4/internal/http1/Http1Codec;->headerLimit:J

    invoke-interface {v0, v1, v2}, Lokin/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lokhttp4/internal/http1/Http1Codec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokhttp4/internal/http1/Http1Codec;->headerLimit:J

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp4/internal/connection/StreamAllocation;->connection()Lokhttp4/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp4/internal/connection/RealConnection;->cancel()V

    :cond_b
    return-void
.end method

.method public createRequestBody(Lokhttp4/Request;J)Lokin/Sink;
    .registers 6

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lokhttp4/internal/http1/Http1Codec;->newChunkedSink()Lokin/Sink;

    move-result-object p1

    return-object p1

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p2, p3}, Lokhttp4/internal/http1/Http1Codec;->newFixedLengthSink(J)Lokin/Sink;

    move-result-object p1

    return-object p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method detachTimeout(Lokin/ForwardingTimeout;)V
    .registers 4

    invoke-virtual {p1}, Lokin/ForwardingTimeout;->delegate()Lokin/Timeout;

    move-result-object v0

    sget-object v1, Lokin/Timeout;->NONE:Lokin/Timeout;

    invoke-virtual {p1, v1}, Lokin/ForwardingTimeout;->setDelegate(Lokin/Timeout;)Lokin/ForwardingTimeout;

    invoke-virtual {v0}, Lokin/Timeout;->clearDeadline()Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->clearTimeout()Lokin/Timeout;

    return-void
.end method

.method public finishRequest()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {v0}, Lokin/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {v0}, Lokin/BufferedSink;->flush()V

    return-void
.end method

.method public newChunkedSink()Lokin/Sink;
    .registers 4

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    new-instance v0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;-><init>(Lokhttp4/internal/http1/Http1Codec;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lokhttp4/HttpUrl;)Lokin/Source;
    .registers 4

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    new-instance v0, Lokhttp4/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp4/internal/http1/Http1Codec$ChunkedSource;-><init>(Lokhttp4/internal/http1/Http1Codec;Lokhttp4/HttpUrl;)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSink(J)Lokin/Sink;
    .registers 5

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    new-instance v0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lokhttp4/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lokhttp4/internal/http1/Http1Codec;J)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSource(J)Lokin/Source;
    .registers 5

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    new-instance v0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lokhttp4/internal/http1/Http1Codec;J)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUnknownLengthSource()Lokin/Source;
    .registers 4

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    if-eqz v0, :cond_15

    const/4 v1, 0x5

    iput v1, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0}, Lokhttp4/internal/connection/StreamAllocation;->noNewStreams()V

    new-instance v0, Lokhttp4/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lokhttp4/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lokhttp4/internal/http1/Http1Codec;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Lokhttp4/Response;)Lokhttp4/ResponseBody;
    .registers 8

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    iget-object v1, v0, Lokhttp4/internal/connection/StreamAllocation;->eventListener:Lokhttp4/EventListener;

    iget-object v0, v0, Lokhttp4/internal/connection/StreamAllocation;->call:Lokhttp4/Call;

    invoke-virtual {v1, v0}, Lokhttp4/EventListener;->responseBodyStart(Lokhttp4/Call;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->hasBody(Lokhttp4/Response;)Z

    move-result v1

    if-nez v1, :cond_25

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokhttp4/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokin/Source;

    move-result-object p1

    new-instance v3, Lokhttp4/internal/http/RealResponseBody;

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    return-object v3

    :cond_25
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp4/internal/http1/Http1Codec;->newChunkedSource(Lokhttp4/HttpUrl;)Lokin/Source;

    move-result-object p1

    new-instance v1, Lokhttp4/internal/http/RealResponseBody;

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    return-object v1

    :cond_4b
    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->contentLength(Lokhttp4/Response;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_61

    invoke-virtual {p0, v4, v5}, Lokhttp4/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokin/Source;

    move-result-object p1

    new-instance v1, Lokhttp4/internal/http/RealResponseBody;

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    return-object v1

    :cond_61
    new-instance p1, Lokhttp4/internal/http/RealResponseBody;

    invoke-virtual {p0}, Lokhttp4/internal/http1/Http1Codec;->newUnknownLengthSource()Lokin/Source;

    move-result-object v1

    invoke-static {v1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    return-object p1
.end method

.method public readHeaders()Lokhttp4/Headers;
    .registers 4

    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    :goto_5
    invoke-direct {p0}, Lokhttp4/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp4/internal/Internal;->addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Lokhttp4/Response$Builder;
    .registers 6

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    if-ne v0, v1, :cond_9

    goto :goto_23

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    :try_start_23
    invoke-direct {p0}, Lokhttp4/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp4/internal/http/StatusLine;

    move-result-object v0

    new-instance v2, Lokhttp4/Response$Builder;

    invoke-direct {v2}, Lokhttp4/Response$Builder;-><init>()V

    iget-object v3, v0, Lokhttp4/internal/http/StatusLine;->protocol:Lokhttp4/Protocol;

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->protocol(Lokhttp4/Protocol;)Lokhttp4/Response$Builder;

    move-result-object v2

    iget v3, v0, Lokhttp4/internal/http/StatusLine;->code:I

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->code(I)Lokhttp4/Response$Builder;

    move-result-object v2

    iget-object v3, v0, Lokhttp4/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->message(Ljava/lang/String;)Lokhttp4/Response$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lokhttp4/internal/http1/Http1Codec;->readHeaders()Lokhttp4/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Response$Builder;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_54

    iget p1, v0, Lokhttp4/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_54

    const/4 p1, 0x0

    return-object p1

    :cond_54
    iget p1, v0, Lokhttp4/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_5b

    iput v1, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    return-object v2

    :cond_5b
    const/4 p1, 0x4

    iput p1, p0, Lokhttp4/internal/http1/Http1Codec;->state:I
    :try_end_5e
    .catch Ljava/io/EOFException; {:try_start_23 .. :try_end_5e} :catch_5f

    return-object v2

    :catch_5f
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public writeRequest(Lokhttp4/Headers;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_3d

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {v0, p2}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lokhttp4/Headers;->size()I

    move-result v1

    :goto_14
    if-ge p2, v1, :cond_34

    iget-object v2, p0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-virtual {p1, p2}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, p2}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_34
    iget-object p1, p0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {p1, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    const/4 p1, 0x1

    iput p1, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :goto_57
    throw p1

    :goto_58
    goto :goto_57
.end method

.method public writeRequestHeaders(Lokhttp4/Request;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp4/internal/connection/StreamAllocation;->connection()Lokhttp4/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/internal/connection/RealConnection;->route()Lokhttp4/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp4/internal/http/RequestLine;->get(Lokhttp4/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp4/Request;->headers()Lokhttp4/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lokhttp4/internal/http1/Http1Codec;->writeRequest(Lokhttp4/Headers;Ljava/lang/String;)V

    return-void
.end method
