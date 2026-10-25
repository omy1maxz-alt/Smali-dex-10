.class final Lokhttp4/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lokhttp4/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp4/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp4/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lokhttp4/Headers;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp4/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp4/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lokhttp4/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->url:Ljava/lang/String;

    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->varyHeaders(Lokhttp4/Response;)Lokhttp4/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp4/Response;->protocol()Lokhttp4/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->protocol:Lokhttp4/Protocol;

    invoke-virtual {p1}, Lokhttp4/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp4/Cache$Entry;->code:I

    invoke-virtual {p1}, Lokhttp4/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-virtual {p1}, Lokhttp4/Response;->handshake()Lokhttp4/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    invoke-virtual {p1}, Lokhttp4/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp4/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {p1}, Lokhttp4/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp4/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method constructor <init>(Lokin/Source;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/Cache$Entry;->requestMethod:Ljava/lang/String;

    new-instance v1, Lokhttp4/Headers$Builder;

    invoke-direct {v1}, Lokhttp4/Headers$Builder;-><init>()V

    invoke-static {v0}, Lokhttp4/Cache;->readInt(Lokin/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v2, :cond_2a

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2a
    invoke-virtual {v1}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp4/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp4/internal/http/StatusLine;

    move-result-object v1

    iget-object v2, v1, Lokhttp4/internal/http/StatusLine;->protocol:Lokhttp4/Protocol;

    iput-object v2, p0, Lokhttp4/Cache$Entry;->protocol:Lokhttp4/Protocol;

    iget v2, v1, Lokhttp4/internal/http/StatusLine;->code:I

    iput v2, p0, Lokhttp4/Cache$Entry;->code:I

    iget-object v1, v1, Lokhttp4/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lokhttp4/Cache$Entry;->message:Ljava/lang/String;

    new-instance v1, Lokhttp4/Headers$Builder;

    invoke-direct {v1}, Lokhttp4/Headers$Builder;-><init>()V

    invoke-static {v0}, Lokhttp4/Cache;->readInt(Lokin/BufferedSource;)I

    move-result v2

    :goto_4d
    if-ge v3, v2, :cond_59

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_59
    sget-object v2, Lokhttp4/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp4/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lokhttp4/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp4/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Lokhttp4/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    invoke-virtual {v1, v4}, Lokhttp4/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_74

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_75

    :cond_74
    move-wide v2, v6

    :goto_75
    iput-wide v2, p0, Lokhttp4/Cache$Entry;->sentRequestMillis:J

    if-eqz v5, :cond_7d

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_7d
    iput-wide v6, p0, Lokhttp4/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {v1}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-direct {p0}, Lokhttp4/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_bd

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp4/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp4/CipherSuite;

    move-result-object v1

    invoke-direct {p0, v0}, Lokhttp4/Cache$Entry;->readCertificateList(Lokin/BufferedSource;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0}, Lokhttp4/Cache$Entry;->readCertificateList(Lokin/BufferedSource;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lokin/BufferedSource;->exhausted()Z

    move-result v4

    if-nez v4, :cond_b4

    invoke-interface {v0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp4/TlsVersion;

    move-result-object v0

    goto :goto_b6

    :cond_b4
    sget-object v0, Lokhttp4/TlsVersion;->SSL_3_0:Lokhttp4/TlsVersion;

    :goto_b6
    invoke-static {v0, v1, v2, v3}, Lokhttp4/Handshake;->get(Lokhttp4/TlsVersion;Lokhttp4/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp4/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    goto :goto_dc

    :cond_bd
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;
    :try_end_dc
    .catchall {:try_start_3 .. :try_end_dc} :catchall_e0

    :goto_dc
    invoke-interface {p1}, Lokin/Source;->close()V

    return-void

    :catchall_e0
    move-exception v0

    invoke-interface {p1}, Lokin/Source;->close()V

    goto :goto_e6

    :goto_e5
    throw v0

    :goto_e6
    goto :goto_e5
.end method

.method private isHttps()Z
    .registers 3

    iget-object v0, p0, Lokhttp4/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lokin/BufferedSource;)Ljava/util/List;
    .registers 8

    invoke-static {p1}, Lokhttp4/Cache;->readInt(Lokin/BufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_c
    :try_start_c
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_38

    invoke-interface {p1}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokin/Buffer;

    invoke-direct {v5}, Lokin/Buffer;-><init>()V

    invoke-static {v4}, Lokin/ByteString;->decodeBase64(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lokin/Buffer;->write(Lokin/ByteString;)Lokin/Buffer;

    invoke-virtual {v5}, Lokin/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_35} :catch_39

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    return-object v2

    :catch_39
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_45

    :goto_44
    throw v0

    :goto_45
    goto :goto_44
.end method

.method private writeCertList(Lokin/BufferedSink;Ljava/util/List;)V
    .registers 7

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokin/BufferedSink;->writeDecimalLong(J)Lokin/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_13
    if-ge v0, v2, :cond_31

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lokin/ByteString;->of([B)Lokin/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokin/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v1}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;
    :try_end_2e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2e} :catch_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_31
    return-void

    :catch_32
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :goto_3d
    throw p2

    :goto_3e
    goto :goto_3d
.end method


# virtual methods
.method public matches(Lokhttp4/Request;Lokhttp4/Response;)Z
    .registers 5

    iget-object v0, p0, Lokhttp4/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lokhttp4/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-static {p2, v0, p1}, Lokhttp4/internal/http/HttpHeaders;->varyMatches(Lokhttp4/Response;Lokhttp4/Headers;Lokhttp4/Request;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public response(Lokhttp4/internal/cache/DiskLruCache$Snapshot;)Lokhttp4/Response;
    .registers 7

    iget-object v0, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp4/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp4/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lokhttp4/Request$Builder;

    invoke-direct {v2}, Lokhttp4/Request$Builder;-><init>()V

    iget-object v3, p0, Lokhttp4/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp4/Request$Builder;->url(Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp4/Request$Builder;->method(Ljava/lang/String;Lokhttp4/RequestBody;)Lokhttp4/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-virtual {v2, v3}, Lokhttp4/Request$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp4/Request$Builder;->build()Lokhttp4/Request;

    move-result-object v2

    new-instance v3, Lokhttp4/Response$Builder;

    invoke-direct {v3}, Lokhttp4/Response$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp4/Response$Builder;->request(Lokhttp4/Request;)Lokhttp4/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/Cache$Entry;->protocol:Lokhttp4/Protocol;

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->protocol(Lokhttp4/Protocol;)Lokhttp4/Response$Builder;

    move-result-object v2

    iget v3, p0, Lokhttp4/Cache$Entry;->code:I

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->code(I)Lokhttp4/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->message(Ljava/lang/String;)Lokhttp4/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp4/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lokhttp4/Cache$CacheResponseBody;-><init>(Lokhttp4/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    invoke-virtual {p1, v0}, Lokhttp4/Response$Builder;->handshake(Lokhttp4/Handshake;)Lokhttp4/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp4/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {p1, v0, v1}, Lokhttp4/Response$Builder;->sentRequestAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp4/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {p1, v0, v1}, Lokhttp4/Response$Builder;->receivedResponseAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lokhttp4/internal/cache/DiskLruCache$Editor;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokhttp4/internal/cache/DiskLruCache$Editor;->newSink(I)Lokin/Sink;

    move-result-object p1

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Sink;)Lokin/BufferedSink;

    move-result-object p1

    iget-object v1, p0, Lokhttp4/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v1, p0, Lokhttp4/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v1, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-virtual {v1}, Lokhttp4/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lokin/BufferedSink;->writeDecimalLong(J)Lokin/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v1, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-virtual {v1}, Lokhttp4/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_32
    const-string v4, ": "

    if-ge v3, v1, :cond_54

    iget-object v5, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-virtual {v5, v3}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v4}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lokhttp4/Cache$Entry;->varyHeaders:Lokhttp4/Headers;

    invoke-virtual {v5, v3}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_54
    new-instance v1, Lokhttp4/internal/http/StatusLine;

    iget-object v3, p0, Lokhttp4/Cache$Entry;->protocol:Lokhttp4/Protocol;

    iget v5, p0, Lokhttp4/Cache$Entry;->code:I

    iget-object v6, p0, Lokhttp4/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lokhttp4/internal/http/StatusLine;-><init>(Lokhttp4/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp4/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v1, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-virtual {v1}, Lokhttp4/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lokin/BufferedSink;->writeDecimalLong(J)Lokin/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v1, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-virtual {v1}, Lokhttp4/Headers;->size()I

    move-result v1

    :goto_80
    if-ge v0, v1, :cond_a0

    iget-object v3, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-virtual {v3, v0}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v4}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v3

    iget-object v5, p0, Lokhttp4/Cache$Entry;->responseHeaders:Lokhttp4/Headers;

    invoke-virtual {v5, v0}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_a0
    sget-object v0, Lokhttp4/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v4}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v0

    iget-wide v5, p0, Lokhttp4/Cache$Entry;->sentRequestMillis:J

    invoke-interface {v0, v5, v6}, Lokin/BufferedSink;->writeDecimalLong(J)Lokin/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    sget-object v0, Lokhttp4/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v4}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Lokhttp4/Cache$Entry;->receivedResponseMillis:J

    invoke-interface {v0, v3, v4}, Lokin/BufferedSink;->writeDecimalLong(J)Lokin/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    invoke-direct {p0}, Lokhttp4/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {p1, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    invoke-virtual {v0}, Lokhttp4/Handshake;->cipherSuite()Lokhttp4/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    iget-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    invoke-virtual {v0}, Lokhttp4/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp4/Cache$Entry;->writeCertList(Lokin/BufferedSink;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    invoke-virtual {v0}, Lokhttp4/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp4/Cache$Entry;->writeCertList(Lokin/BufferedSink;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp4/Cache$Entry;->handshake:Lokhttp4/Handshake;

    invoke-virtual {v0}, Lokhttp4/Handshake;->tlsVersion()Lokhttp4/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lokin/BufferedSink;->writeByte(I)Lokin/BufferedSink;

    :cond_103
    invoke-interface {p1}, Lokin/Sink;->close()V

    return-void
.end method
