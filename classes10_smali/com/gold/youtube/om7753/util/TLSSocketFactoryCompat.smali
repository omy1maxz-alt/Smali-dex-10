.class public Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLSSocketFactoryCompat.java"


# static fields
.field private static instance:Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;


# instance fields
.field private final internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 5

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const-string v1, "TLSv1.1"

    const-string v2, "TLSv1.2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_12
    return-object p1
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->instance:Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->instance:Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;

    return-object v0
.end method

.method public static setAsDefault()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->getInstance()Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    const-string v1, "TLSSocketFactoryCom"

    const-string v2, "Unable to setAsDefault"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/TLSSocketFactoryCompat;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
