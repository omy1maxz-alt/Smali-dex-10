.class public final Lokhttp4/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lokhttp4/internal/http/HttpCodec;


# static fields
.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;


# instance fields
.field private final chain:Lokhttp4/Interceptor$Chain;

.field private final connection:Lokhttp4/internal/http2/Http2Connection;

.field private final protocol:Lokhttp4/Protocol;

.field private stream:Lokhttp4/internal/http2/Http2Stream;

.field final streamAllocation:Lokhttp4/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string/jumbo v4, "te"

    const-string/jumbo v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string/jumbo v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string/jumbo v5, "te"

    const-string/jumbo v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string/jumbo v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp4/OkHttpClient;Lokhttp4/Interceptor$Chain;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http2/Http2Connection;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp4/internal/http2/Http2Codec;->chain:Lokhttp4/Interceptor$Chain;

    iput-object p3, p0, Lokhttp4/internal/http2/Http2Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    iput-object p4, p0, Lokhttp4/internal/http2/Http2Codec;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {p1}, Lokhttp4/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lokhttp4/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp4/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    sget-object p2, Lokhttp4/Protocol;->HTTP_2:Lokhttp4/Protocol;

    :goto_18
    iput-object p2, p0, Lokhttp4/internal/http2/Http2Codec;->protocol:Lokhttp4/Protocol;

    return-void
.end method

.method public static http2HeadersList(Lokhttp4/Request;)Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lokhttp4/Request;->headers()Lokhttp4/Headers;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp4/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lokhttp4/internal/http2/Header;

    sget-object v3, Lokhttp4/internal/http2/Header;->TARGET_METHOD:Lokin/ByteString;

    invoke-virtual {p0}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lokhttp4/internal/http2/Header;

    sget-object v3, Lokhttp4/internal/http2/Header;->TARGET_PATH:Lokin/ByteString;

    invoke-virtual {p0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lokhttp4/internal/http/RequestLine;->requestPath(Lokhttp4/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v3, Lokhttp4/internal/http2/Header;

    sget-object v4, Lokhttp4/internal/http2/Header;->TARGET_AUTHORITY:Lokin/ByteString;

    invoke-direct {v3, v4, v2}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    new-instance v2, Lokhttp4/internal/http2/Header;

    sget-object v3, Lokhttp4/internal/http2/Header;->TARGET_SCHEME:Lokin/ByteString;

    invoke-virtual {p0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v0}, Lokhttp4/Headers;->size()I

    move-result v2

    :goto_58
    if-ge p0, v2, :cond_83

    invoke-virtual {v0, p0}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v3

    sget-object v4, Lokhttp4/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-virtual {v3}, Lokin/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    new-instance v4, Lokhttp4/internal/http2/Header;

    invoke-virtual {v0, p0}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lokhttp4/internal/http2/Header;-><init>(Lokin/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 p0, p0, 0x1

    goto :goto_58

    :cond_83
    return-object v1
.end method

.method public static readHttp2HeadersList(Lokhttp4/Headers;Lokhttp4/Protocol;)Lokhttp4/Response$Builder;
    .registers 9

    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lokhttp4/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_43

    invoke-virtual {p0, v3}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp4/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp4/internal/http/StatusLine;

    move-result-object v2

    goto :goto_40

    :cond_33
    sget-object v6, Lokhttp4/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    sget-object v6, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Lokhttp4/internal/Internal;->addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_43
    if-eqz v2, :cond_63

    new-instance p0, Lokhttp4/Response$Builder;

    invoke-direct {p0}, Lokhttp4/Response$Builder;-><init>()V

    invoke-virtual {p0, p1}, Lokhttp4/Response$Builder;->protocol(Lokhttp4/Protocol;)Lokhttp4/Response$Builder;

    move-result-object p0

    iget p1, v2, Lokhttp4/internal/http/StatusLine;->code:I

    invoke-virtual {p0, p1}, Lokhttp4/Response$Builder;->code(I)Lokhttp4/Response$Builder;

    move-result-object p0

    iget-object p1, v2, Lokhttp4/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp4/Response$Builder;->message(Ljava/lang/String;)Lokhttp4/Response$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp4/Response$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Response$Builder;

    move-result-object p0

    return-object p0

    :cond_63
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :goto_6b
    throw p0

    :goto_6c
    goto :goto_6b
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    if-eqz v0, :cond_9

    sget-object v1, Lokhttp4/internal/http2/ErrorCode;->CANCEL:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp4/internal/http2/Http2Stream;->closeLater(Lokhttp4/internal/http2/ErrorCode;)V

    :cond_9
    return-void
.end method

.method public createRequestBody(Lokhttp4/Request;J)Lokin/Sink;
    .registers 4

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Stream;->getSink()Lokin/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->getSink()Lokin/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokin/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Lokhttp4/Response;)Lokhttp4/ResponseBody;
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    iget-object v1, v0, Lokhttp4/internal/connection/StreamAllocation;->eventListener:Lokhttp4/EventListener;

    iget-object v0, v0, Lokhttp4/internal/connection/StreamAllocation;->call:Lokhttp4/Call;

    invoke-virtual {v1, v0}, Lokhttp4/EventListener;->responseBodyStart(Lokhttp4/Call;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->contentLength(Lokhttp4/Response;)J

    move-result-wide v1

    new-instance p1, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v3}, Lokhttp4/internal/http2/Http2Stream;->getSource()Lokin/Source;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lokhttp4/internal/http2/Http2Codec;Lokin/Source;)V

    new-instance v3, Lokhttp4/internal/http/RealResponseBody;

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lokhttp4/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokin/BufferedSource;)V

    return-object v3
.end method

.method public readResponseHeaders(Z)Lokhttp4/Response$Builder;
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->takeHeaders()Lokhttp4/Headers;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Codec;->protocol:Lokhttp4/Protocol;

    invoke-static {v0, v1}, Lokhttp4/internal/http2/Http2Codec;->readHttp2HeadersList(Lokhttp4/Headers;Lokhttp4/Protocol;)Lokhttp4/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_1a

    sget-object p1, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    invoke-virtual {p1, v0}, Lokhttp4/internal/Internal;->code(Lokhttp4/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    return-object v0
.end method

.method public writeRequestHeaders(Lokhttp4/Request;)V
    .registers 5

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lokhttp4/Request;->body()Lokhttp4/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {p1}, Lokhttp4/internal/http2/Http2Codec;->http2HeadersList(Lokhttp4/Request;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Codec;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lokhttp4/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lokhttp4/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Stream;->readTimeout()Lokin/Timeout;

    move-result-object p1

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->chain:Lokhttp4/Interceptor$Chain;

    invoke-interface {v0}, Lokhttp4/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Codec;->stream:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Stream;->writeTimeout()Lokin/Timeout;

    move-result-object p1

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Codec;->chain:Lokhttp4/Interceptor$Chain;

    invoke-interface {v0}, Lokhttp4/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    return-void
.end method
