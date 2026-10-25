.class Lokhttp4/internal/platform/AndroidPlatform;
.super Lokhttp4/internal/platform/Platform;
.source "AndroidPlatform.java"


# instance fields
.field private final closeGuard:Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;

.field private final getAlpnSelectedProtocol:Lokhttp4/internal/platform/OptionalMethod;

.field private final setAlpnProtocols:Lokhttp4/internal/platform/OptionalMethod;

.field private final setHostname:Lokhttp4/internal/platform/OptionalMethod;

.field private final setUseSessionTickets:Lokhttp4/internal/platform/OptionalMethod;

.field private final sslParametersClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lokhttp4/internal/platform/OptionalMethod;Lokhttp4/internal/platform/OptionalMethod;Lokhttp4/internal/platform/OptionalMethod;Lokhttp4/internal/platform/OptionalMethod;)V
    .registers 7

    invoke-direct {p0}, Lokhttp4/internal/platform/Platform;-><init>()V

    invoke-static {}, Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;->get()Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/internal/platform/AndroidPlatform;->closeGuard:Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;

    iput-object p1, p0, Lokhttp4/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    iput-object p2, p0, Lokhttp4/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp4/internal/platform/OptionalMethod;

    iput-object p3, p0, Lokhttp4/internal/platform/AndroidPlatform;->setHostname:Lokhttp4/internal/platform/OptionalMethod;

    iput-object p4, p0, Lokhttp4/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp4/internal/platform/OptionalMethod;

    iput-object p5, p0, Lokhttp4/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp4/internal/platform/OptionalMethod;

    return-void
.end method

.method private api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 7

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_16

    return p1

    :catch_16
    invoke-super {p0, p1}, Lokhttp4/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 9

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    invoke-direct {p0, p1, p2, p3}, Lokhttp4/internal/platform/AndroidPlatform;->api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static buildIfSupported()Lokhttp4/internal/platform/Platform;
    .registers 10

    const-class v0, [B

    invoke-static {}, Lokhttp4/internal/platform/Platform;->isAndroid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_12

    :goto_10
    move-object v4, v1

    goto :goto_19

    :catch_12
    :try_start_12
    const-string v1, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_10

    :goto_19
    new-instance v5, Lokhttp4/internal/platform/OptionalMethod;

    const-string/jumbo v1, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v2, v1, v6}, Lokhttp4/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v6, Lokhttp4/internal/platform/OptionalMethod;

    const-string v1, "setHostname"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v6, v2, v1, v7}, Lokhttp4/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-static {}, Lokhttp4/internal/platform/AndroidPlatform;->supportsAlpn()Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v1, Lokhttp4/internal/platform/OptionalMethod;

    const-string v7, "getAlpnSelectedProtocol"

    new-array v9, v8, [Ljava/lang/Class;

    invoke-direct {v1, v0, v7, v9}, Lokhttp4/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v7, Lokhttp4/internal/platform/OptionalMethod;

    const-string v9, "setAlpnProtocols"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-direct {v7, v2, v9, v3}, Lokhttp4/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v8, v7

    move-object v7, v1

    goto :goto_55

    :cond_53
    move-object v7, v2

    move-object v8, v7

    :goto_55
    new-instance v0, Lokhttp4/internal/platform/AndroidPlatform;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lokhttp4/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp4/internal/platform/OptionalMethod;Lokhttp4/internal/platform/OptionalMethod;Lokhttp4/internal/platform/OptionalMethod;Lokhttp4/internal/platform/OptionalMethod;)V
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_5b} :catch_5c

    return-object v0

    :catch_5c
    return-object v2
.end method

.method static getSdkInt()I
    .registers 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_2} :catch_3

    return v0

    :catch_3
    const/4 v0, 0x0

    return v0
.end method

.method private static supportsAlpn()Z
    .registers 2

    const-string v0, "GMSCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_10

    return v1

    :catch_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/CertificateChainCleaner;
    .registers 10

    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljavax/net/ssl/X509TrustManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "checkServerTrusted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, [Ljava/security/cert/X509Certificate;

    aput-object v7, v6, v5

    aput-object v0, v6, v2

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lokhttp4/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    invoke-direct {v1, v3, v0}, Lokhttp4/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    return-object v1

    :catch_34
    invoke-super {p0, p1}, Lokhttp4/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/CertificateChainCleaner;

    move-result-object p1

    return-object p1
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/TrustRootIndex;
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Lokhttp4/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    invoke-direct {v1, p1, v0}, Lokhttp4/internal/platform/AndroidPlatform$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    invoke-super {p0, p1}, Lokhttp4/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/TrustRootIndex;

    move-result-object p1

    return-object p1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_18

    iget-object v2, p0, Lokhttp4/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp4/internal/platform/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lokhttp4/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lokhttp4/internal/platform/AndroidPlatform;->setHostname:Lokhttp4/internal/platform/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lokhttp4/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object p2, p0, Lokhttp4/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp4/internal/platform/OptionalMethod;

    if-eqz p2, :cond_2f

    invoke-virtual {p2, p1}, Lokhttp4/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lokhttp4/internal/platform/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    iget-object p3, p0, Lokhttp4/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp4/internal/platform/OptionalMethod;

    invoke-virtual {p3, p1, p2}, Lokhttp4/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 5

    const-string v0, "Exception in connect"

    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_16

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_16
    throw p1

    :catch_17
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_21
    move-exception p1

    invoke-static {p1}, Lokhttp4/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2e

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2e
    throw p1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_3} :catch_a

    const/16 v2, 0x16

    if-ge v1, v2, :cond_8

    goto :goto_b

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :catch_a
    nop

    :goto_b
    if-eqz v0, :cond_14

    :try_start_d
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    :cond_14
    :try_start_14
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lokhttp4/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp4/internal/platform/OptionalMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0, p1}, Lokhttp4/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-object v0, p0, Lokhttp4/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp4/internal/platform/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lokhttp4/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_21

    new-instance v1, Ljava/lang/String;

    sget-object v0, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_21
    return-object v1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/platform/AndroidPlatform;->closeGuard:Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p1}, Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    invoke-super {p0, p1}, Lokhttp4/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    :try_start_b
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp4/internal/platform/AndroidPlatform;->api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_25} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_25} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_25} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_25} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_25} :catch_26

    return p1

    :catch_26
    move-exception p1

    goto :goto_2b

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    const-string/jumbo v0, "unable to determine cleartext support"

    invoke-static {v0, p1}, Lokhttp4/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :catch_33
    invoke-super {p0, p1}, Lokhttp4/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    const/16 p1, 0xa

    if-eqz p3, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1f
    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_24
    if-ge p3, v1, :cond_45

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    add-int/lit16 v3, p3, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_43

    add-int/lit8 p3, v3, 0x1

    goto :goto_24

    :cond_43
    move p3, v3

    goto :goto_2f

    :cond_45
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/platform/AndroidPlatform;->closeGuard:Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p2}, Lokhttp4/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lokhttp4/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method
