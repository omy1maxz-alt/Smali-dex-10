.class public final Lokhttp4/internal/connection/RealConnection;
.super Lokhttp4/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp4/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;

.field private final connectionPool:Lokhttp4/ConnectionPool;

.field private handshake:Lokhttp4/Handshake;

.field private http2Connection:Lokhttp4/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp4/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp4/Route;

.field private sink:Lokin/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokin/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp4/ConnectionPool;Lokhttp4/Route;)V
    .registers 5

    invoke-direct {p0}, Lokhttp4/internal/http2/Http2Connection$Listener;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lokhttp4/internal/connection/RealConnection;->allocationLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp4/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp4/internal/connection/RealConnection;->idleAtNanos:J

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->connectionPool:Lokhttp4/ConnectionPool;

    iput-object p2, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    return-void
.end method

.method private connectSocket(IILokhttp4/Call;Lokhttp4/EventListener;)V
    .registers 9

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_23

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_2b

    :cond_23
    :goto_23
    invoke-virtual {v1}, Lokhttp4/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_2b
    iput-object v1, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lokhttp4/EventListener;->connectStart(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object p3, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_3b
    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object p2

    iget-object p3, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object p4, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {p4}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lokhttp4/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_4a
    .catch Ljava/net/ConnectException; {:try_start_3b .. :try_end_4a} :catch_78

    :try_start_4a
    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lokin/Okio;->source(Ljava/net/Socket;)Lokin/Source;

    move-result-object p1

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lokin/Okio;->sink(Ljava/net/Socket;)Lokin/Sink;

    move-result-object p1

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Sink;)Lokin/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;
    :try_end_62
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_62} :catch_63

    goto :goto_71

    :catch_63
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    :goto_71
    return-void

    :cond_72
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_78
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {p4}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private connectTls(Lokhttp4/internal/connection/ConnectionSpecSelector;)V
    .registers 9

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp4/HttpUrl;->port()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_24
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_24} :catch_12e
    .catchall {:try_start_b .. :try_end_24} :catchall_12c

    :try_start_24
    invoke-virtual {p1, v1}, Lokhttp4/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp4/ConnectionSpec;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp4/Address;->protocols()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lokhttp4/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_41
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lokhttp4/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp4/Handshake;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp4/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_d8

    invoke-virtual {v4}, Lokhttp4/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_66
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_66} :catch_129
    .catchall {:try_start_24 .. :try_end_66} :catchall_126

    const-string v3, "Hostname "

    if-nez v2, :cond_b6

    const/4 v2, 0x0

    :try_start_6b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lokhttp4/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lokhttp4/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b6
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d8
    invoke-virtual {v0}, Lokhttp4/Address;->certificatePinner()Lokhttp4/CertificatePinner;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp4/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lokhttp4/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lokhttp4/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    if-eqz p1, :cond_f9

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp4/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_f9
    iput-object v1, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lokin/Okio;->source(Ljava/net/Socket;)Lokin/Source;

    move-result-object p1

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lokin/Okio;->sink(Ljava/net/Socket;)Lokin/Sink;

    move-result-object p1

    invoke-static {p1}, Lokin/Okio;->buffer(Lokin/Sink;)Lokin/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    iput-object v4, p0, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    if-eqz v2, :cond_11a

    invoke-static {v2}, Lokhttp4/Protocol;->get(Ljava/lang/String;)Lokhttp4/Protocol;

    move-result-object p1

    goto :goto_11c

    :cond_11a
    sget-object p1, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    :goto_11c
    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;
    :try_end_11e
    .catch Ljava/lang/AssertionError; {:try_start_6b .. :try_end_11e} :catch_129
    .catchall {:try_start_6b .. :try_end_11e} :catchall_126

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp4/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_126
    move-exception p1

    move-object v2, v1

    goto :goto_13c

    :catch_129
    move-exception p1

    move-object v2, v1

    goto :goto_12f

    :catchall_12c
    move-exception p1

    goto :goto_13c

    :catch_12e
    move-exception p1

    :goto_12f
    :try_start_12f
    invoke-static {p1}, Lokhttp4/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_13b

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_13b
    throw p1
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_12c

    :goto_13c
    if-eqz v2, :cond_145

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokhttp4/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_145
    invoke-static {v2}, Lokhttp4/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    throw p1
.end method

.method private connectTunnel(IIILokhttp4/Call;Lokhttp4/EventListener;)V
    .registers 12

    invoke-direct {p0}, Lokhttp4/internal/connection/RealConnection;->createTunnelRequest()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x15

    if-ge v2, v3, :cond_35

    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp4/internal/connection/RealConnection;->connectSocket(IILokhttp4/Call;Lokhttp4/EventListener;)V

    invoke-direct {p0, p2, p3, v0, v1}, Lokhttp4/internal/connection/RealConnection;->createTunnel(IILokhttp4/Request;Lokhttp4/HttpUrl;)Lokhttp4/Request;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_35

    :cond_17
    iget-object v3, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp4/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v3, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    iput-object v3, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iget-object v4, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v4}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v5}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lokhttp4/EventListener;->connectEnd(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp4/Protocol;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_35
    :goto_35
    return-void
.end method

.method private createTunnel(IILokhttp4/Request;Lokhttp4/HttpUrl;)Lokhttp4/Request;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp4/internal/Util;->hostHeader(Lokhttp4/HttpUrl;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_1b
    new-instance v0, Lokhttp4/internal/http1/Http1Codec;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lokhttp4/internal/http1/Http1Codec;-><init>(Lokhttp4/OkHttpClient;Lokhttp4/internal/connection/StreamAllocation;Lokin/BufferedSource;Lokin/BufferedSink;)V

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    invoke-interface {v1}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    invoke-interface {v1}, Lokin/Sink;->timeout()Lokin/Timeout;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    invoke-virtual {p3}, Lokhttp4/Request;->headers()Lokhttp4/Headers;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lokhttp4/internal/http1/Http1Codec;->writeRequest(Lokhttp4/Headers;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp4/internal/http1/Http1Codec;->finishRequest()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp4/internal/http1/Http1Codec;->readResponseHeaders(Z)Lokhttp4/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lokhttp4/Response$Builder;->request(Lokhttp4/Request;)Lokhttp4/Response$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object p3

    invoke-static {p3}, Lokhttp4/internal/http/HttpHeaders;->contentLength(Lokhttp4/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_5e

    const-wide/16 v4, 0x0

    :cond_5e
    invoke-virtual {v0, v4, v5}, Lokhttp4/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokin/Source;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1, v2}, Lokhttp4/internal/Util;->skipAll(Lokin/Source;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lokin/Source;->close()V

    invoke-virtual {p3}, Lokhttp4/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_bd

    const/16 v1, 0x197

    if-ne v0, v1, :cond_a2

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Address;->proxyAuthenticator()Lokhttp4/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-interface {v0, v1, p3}, Lokhttp4/Authenticator;->authenticate(Lokhttp4/Route;Lokhttp4/Response;)Lokhttp4/Request;

    move-result-object v0

    if-eqz v0, :cond_9a

    const-string v1, "Connection"

    invoke-virtual {p3, v1}, Lokhttp4/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_98

    return-object v0

    :cond_98
    move-object p3, v0

    goto :goto_1b

    :cond_9a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp4/Response;->code()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bd
    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    invoke-interface {p1}, Lokin/BufferedSource;->buffer()Lokin/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokin/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_d6

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    invoke-interface {p1}, Lokin/BufferedSink;->buffer()Lokin/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokin/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_d6

    return-object v3

    :cond_d6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_df

    :goto_de
    throw p1

    :goto_df
    goto :goto_de
.end method

.method private createTunnelRequest()Lokhttp4/Request;
    .registers 5

    new-instance v0, Lokhttp4/Request$Builder;

    invoke-direct {v0}, Lokhttp4/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Request$Builder;->url(Lokhttp4/HttpUrl;)Lokhttp4/Request$Builder;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp4/Request$Builder;->method(Ljava/lang/String;Lokhttp4/RequestBody;)Lokhttp4/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp4/internal/Util;->hostHeader(Lokhttp4/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object v0

    invoke-static {}, Lokhttp4/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp4/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request$Builder;->build()Lokhttp4/Request;

    move-result-object v0

    new-instance v1, Lokhttp4/Response$Builder;

    invoke-direct {v1}, Lokhttp4/Response$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp4/Response$Builder;->request(Lokhttp4/Request;)Lokhttp4/Response$Builder;

    move-result-object v1

    sget-object v2, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    invoke-virtual {v1, v2}, Lokhttp4/Response$Builder;->protocol(Lokhttp4/Protocol;)Lokhttp4/Response$Builder;

    move-result-object v1

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lokhttp4/Response$Builder;->code(I)Lokhttp4/Response$Builder;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lokhttp4/Response$Builder;->message(Ljava/lang/String;)Lokhttp4/Response$Builder;

    move-result-object v1

    sget-object v2, Lokhttp4/internal/Util;->EMPTY_RESPONSE:Lokhttp4/ResponseBody;

    invoke-virtual {v1, v2}, Lokhttp4/Response$Builder;->body(Lokhttp4/ResponseBody;)Lokhttp4/Response$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lokhttp4/Response$Builder;->sentRequestAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lokhttp4/Response$Builder;->receivedResponseAtMillis(J)Lokhttp4/Response$Builder;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lokhttp4/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object v1

    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v2}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp4/Address;->proxyAuthenticator()Lokhttp4/Authenticator;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-interface {v2, v3, v1}, Lokhttp4/Authenticator;->authenticate(Lokhttp4/Route;Lokhttp4/Response;)Lokhttp4/Request;

    move-result-object v1

    if-eqz v1, :cond_8f

    move-object v0, v1

    :cond_8f
    return-object v0
.end method

.method private establishProtocol(Lokhttp4/internal/connection/ConnectionSpecSelector;ILokhttp4/Call;Lokhttp4/EventListener;)V
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_31

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {p1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Address;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lokhttp4/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp4/Protocol;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object p3, p0, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    invoke-direct {p0, p2}, Lokhttp4/internal/connection/RealConnection;->startHttp2(I)V

    return-void

    :cond_28
    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    sget-object p1, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    return-void

    :cond_31
    invoke-virtual {p4, p3}, Lokhttp4/EventListener;->secureConnectStart(Lokhttp4/Call;)V

    invoke-direct {p0, p1}, Lokhttp4/internal/connection/RealConnection;->connectTls(Lokhttp4/internal/connection/ConnectionSpecSelector;)V

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    invoke-virtual {p4, p3, p1}, Lokhttp4/EventListener;->secureConnectEnd(Lokhttp4/Call;Lokhttp4/Handshake;)V

    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    sget-object p3, Lokhttp4/Protocol;->HTTP_2:Lokhttp4/Protocol;

    if-ne p1, p3, :cond_45

    invoke-direct {p0, p2}, Lokhttp4/internal/connection/RealConnection;->startHttp2(I)V

    :cond_45
    return-void
.end method

.method private startHttp2(I)V
    .registers 7

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Lokhttp4/internal/http2/Http2Connection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lokhttp4/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v2}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iget-object v4, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp4/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokin/BufferedSource;Lokin/BufferedSink;)Lokhttp4/internal/http2/Http2Connection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp4/internal/http2/Http2Connection$Builder;->listener(Lokhttp4/internal/http2/Http2Connection$Listener;)Lokhttp4/internal/http2/Http2Connection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp4/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Lokhttp4/internal/http2/Http2Connection$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Connection$Builder;->build()Lokhttp4/internal/http2/Http2Connection;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Connection;->start()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public connect(IIIIZLokhttp4/Call;Lokhttp4/EventListener;)V
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    if-nez v0, :cond_150

    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lokhttp4/internal/connection/ConnectionSpecSelector;

    invoke-direct {v10, v0}, Lokhttp4/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_74

    sget-object v1, Lokhttp4/ConnectionSpec;->CLEARTEXT:Lokhttp4/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp4/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_86

    :cond_46
    new-instance v1, Lokhttp4/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp4/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_67
    new-instance v0, Lokhttp4/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp4/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_74
    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Address;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp4/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp4/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    :goto_86
    const/4 v11, 0x0

    move-object v12, v11

    :goto_88
    :try_start_88
    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_a9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lokhttp4/internal/connection/RealConnection;->connectTunnel(IIILokhttp4/Call;Lokhttp4/EventListener;)V

    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a1} :catch_f9

    if-nez v0, :cond_a4

    goto :goto_c6

    :cond_a4
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_b0

    :cond_a9
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_ad
    invoke-direct {v7, v13, v14, v8, v9}, Lokhttp4/internal/connection/RealConnection;->connectSocket(IILokhttp4/Call;Lokhttp4/EventListener;)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_f7

    :goto_b0
    move/from16 v15, p4

    :try_start_b2
    invoke-direct {v7, v10, v15, v8, v9}, Lokhttp4/internal/connection/RealConnection;->establishProtocol(Lokhttp4/internal/connection/ConnectionSpecSelector;ILokhttp4/Call;Lokhttp4/EventListener;)V

    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    invoke-virtual {v9, v8, v0, v1, v2}, Lokhttp4/EventListener;->connectEnd(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp4/Protocol;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c6} :catch_f5

    :goto_c6
    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v0, :cond_d3

    goto :goto_e0

    :cond_d3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lokhttp4/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp4/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_e0
    :goto_e0
    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    if-eqz v0, :cond_f4

    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->connectionPool:Lokhttp4/ConnectionPool;

    monitor-enter v1

    :try_start_e7
    iget-object v0, v7, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, v7, Lokhttp4/internal/connection/RealConnection;->allocationLimit:I

    monitor-exit v1

    goto :goto_f4

    :catchall_f1
    move-exception v0

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_e7 .. :try_end_f3} :catchall_f1

    throw v0

    :cond_f4
    :goto_f4
    return-void

    :catch_f5
    move-exception v0

    goto :goto_100

    :catch_f7
    move-exception v0

    goto :goto_fe

    :catch_f9
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_fe
    move/from16 v15, p4

    :goto_100
    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp4/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp4/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    iput-object v11, v7, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lokhttp4/EventListener;->connectFailed(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp4/Protocol;Ljava/io/IOException;)V

    if-nez v12, :cond_135

    new-instance v12, Lokhttp4/internal/connection/RouteException;

    invoke-direct {v12, v0}, Lokhttp4/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_138

    :cond_135
    invoke-virtual {v12, v0}, Lokhttp4/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_138
    if-eqz p5, :cond_142

    invoke-virtual {v10, v0}, Lokhttp4/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_142

    goto/16 :goto_88

    :cond_142
    throw v12

    :cond_143
    new-instance v0, Lokhttp4/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp4/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_159

    :goto_158
    throw v0

    :goto_159
    goto :goto_158
.end method

.method public handshake()Lokhttp4/Handshake;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    return-object v0
.end method

.method public isEligible(Lokhttp4/Address;Lokhttp4/Route;)Z
    .registers 7

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lokhttp4/internal/connection/RealConnection;->allocationLimit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a5

    iget-boolean v0, p0, Lokhttp4/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_11

    goto/16 :goto_a5

    :cond_11
    sget-object v0, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lokhttp4/internal/Internal;->equalsNonHost(Lokhttp4/Address;Lokhttp4/Address;)Z

    move-result v0

    if-nez v0, :cond_20

    return v2

    :cond_20
    invoke-virtual {p1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp4/internal/connection/RealConnection;->route()Lokhttp4/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    return v1

    :cond_40
    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    if-nez v0, :cond_45

    return v2

    :cond_45
    if-nez p2, :cond_48

    return v2

    :cond_48
    invoke-virtual {p2}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_55

    return v2

    :cond_55
    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_64

    return v2

    :cond_64
    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v0}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    return v2

    :cond_75
    invoke-virtual {p2}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp4/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lokhttp4/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp4/internal/tls/OkHostnameVerifier;

    if-eq p2, v0, :cond_82

    return v2

    :cond_82
    invoke-virtual {p1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp4/internal/connection/RealConnection;->supportsUrl(Lokhttp4/HttpUrl;)Z

    move-result p2

    if-nez p2, :cond_8d

    return v2

    :cond_8d
    :try_start_8d
    invoke-virtual {p1}, Lokhttp4/Address;->certificatePinner()Lokhttp4/CertificatePinner;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp4/internal/connection/RealConnection;->handshake()Lokhttp4/Handshake;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lokhttp4/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8d .. :try_end_a4} :catch_a5

    return v1

    :catch_a5
    :cond_a5
    :goto_a5
    return v2
.end method

.method public isHealthy(Z)Z
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_52

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_52

    :cond_1a
    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp4/internal/http2/Http2Connection;->isHealthy(J)Z

    move-result p1

    return p1

    :cond_27
    const/4 v0, 0x1

    if-eqz p1, :cond_51

    :try_start_2a
    iget-object p1, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_30} :catch_51
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_50

    :try_start_30
    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    invoke-interface {v2}, Lokin/BufferedSource;->exhausted()Z

    move-result v2
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_49

    if-eqz v2, :cond_43

    :try_start_3d
    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_43
    iget-object v2, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_49
    move-exception v2

    iget-object v3, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_50} :catch_50

    :catch_50
    return v1

    :catch_51
    :cond_51
    return v0

    :cond_52
    :goto_52
    return v1
.end method

.method public isMultiplexed()Z
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public newCodec(Lokhttp4/OkHttpClient;Lokhttp4/Interceptor$Chain;Lokhttp4/internal/connection/StreamAllocation;)Lokhttp4/internal/http/HttpCodec;
    .registers 8

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    if-eqz v0, :cond_c

    new-instance v0, Lokhttp4/internal/http2/Http2Codec;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->http2Connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p2, p3, v1}, Lokhttp4/internal/http2/Http2Codec;-><init>(Lokhttp4/OkHttpClient;Lokhttp4/Interceptor$Chain;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http2/Http2Connection;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Lokhttp4/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lokhttp4/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    invoke-interface {v0}, Lokin/Sink;->timeout()Lokin/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lokhttp4/Interceptor$Chain;->writeTimeoutMillis()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    new-instance p2, Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->source:Lokin/BufferedSource;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->sink:Lokin/BufferedSink;

    invoke-direct {p2, p1, p3, v0, v1}, Lokhttp4/internal/http1/Http1Codec;-><init>(Lokhttp4/OkHttpClient;Lokhttp4/internal/connection/StreamAllocation;Lokin/BufferedSource;Lokin/BufferedSink;)V

    return-object p2
.end method

.method public onSettings(Lokhttp4/internal/http2/Http2Connection;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->connectionPool:Lokhttp4/ConnectionPool;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p1

    iput p1, p0, Lokhttp4/internal/connection/RealConnection;->allocationLimit:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onStream(Lokhttp4/internal/http2/Http2Stream;)V
    .registers 3

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp4/internal/http2/Http2Stream;->close(Lokhttp4/internal/http2/ErrorCode;)V

    return-void
.end method

.method public route()Lokhttp4/Route;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public supportsUrl(Lokhttp4/HttpUrl;)Z
    .registers 6

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->port()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4d

    iget-object v0, p0, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    if-eqz v0, :cond_4c

    sget-object v0, Lokhttp4/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp4/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    invoke-virtual {v3}, Lokhttp4/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, v3}, Lokhttp4/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2

    :cond_4d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->address()Lokhttp4/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->route:Lokhttp4/Route;

    invoke-virtual {v1}, Lokhttp4/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->handshake:Lokhttp4/Handshake;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lokhttp4/Handshake;->cipherSuite()Lokhttp4/CipherSuite;

    move-result-object v1

    goto :goto_5d

    :cond_5b
    const-string v1, "none"

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/internal/connection/RealConnection;->protocol:Lokhttp4/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
