.class public final Lokhttp4/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lokhttp4/CipherSuite;

.field public static final CLEARTEXT:Lokhttp4/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lokhttp4/ConnectionSpec;

.field public static final MODERN_TLS:Lokhttp4/ConnectionSpec;

.field private static final RESTRICTED_CIPHER_SUITES:[Lokhttp4/CipherSuite;

.field public static final RESTRICTED_TLS:Lokhttp4/ConnectionSpec;


# instance fields
.field final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    const/16 v0, 0xb

    new-array v1, v0, [Lokhttp4/CipherSuite;

    sget-object v2, Lokhttp4/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp4/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lokhttp4/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp4/CipherSuite;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lokhttp4/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp4/CipherSuite;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lokhttp4/CipherSuite;->TLS_AES_128_CCM_SHA256:Lokhttp4/CipherSuite;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lokhttp4/CipherSuite;->TLS_AES_256_CCM_8_SHA256:Lokhttp4/CipherSuite;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lokhttp4/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp4/CipherSuite;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lokhttp4/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp4/CipherSuite;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lokhttp4/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp4/CipherSuite;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Lokhttp4/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp4/CipherSuite;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sget-object v20, Lokhttp4/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp4/CipherSuite;

    const/16 v21, 0x9

    aput-object v20, v1, v21

    sget-object v22, Lokhttp4/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp4/CipherSuite;

    const/16 v23, 0xa

    aput-object v22, v1, v23

    sput-object v1, Lokhttp4/ConnectionSpec;->RESTRICTED_CIPHER_SUITES:[Lokhttp4/CipherSuite;

    const/16 v0, 0x12

    new-array v0, v0, [Lokhttp4/CipherSuite;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v21

    aput-object v22, v0, v23

    sget-object v2, Lokhttp4/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp4/CipherSuite;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Lokhttp4/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp4/CipherSuite;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Lokhttp4/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp4/CipherSuite;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Lokhttp4/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp4/CipherSuite;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Lokhttp4/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp4/CipherSuite;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sget-object v2, Lokhttp4/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp4/CipherSuite;

    const/16 v4, 0x10

    aput-object v2, v0, v4

    sget-object v2, Lokhttp4/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp4/CipherSuite;

    const/16 v4, 0x11

    aput-object v2, v0, v4

    sput-object v0, Lokhttp4/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lokhttp4/CipherSuite;

    new-instance v2, Lokhttp4/ConnectionSpec$Builder;

    invoke-direct {v2, v5}, Lokhttp4/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v2, v1}, Lokhttp4/ConnectionSpec$Builder;->cipherSuites([Lokhttp4/CipherSuite;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v1

    new-array v2, v7, [Lokhttp4/TlsVersion;

    sget-object v4, Lokhttp4/TlsVersion;->TLS_1_3:Lokhttp4/TlsVersion;

    aput-object v4, v2, v3

    sget-object v6, Lokhttp4/TlsVersion;->TLS_1_2:Lokhttp4/TlsVersion;

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Lokhttp4/ConnectionSpec$Builder;->tlsVersions([Lokhttp4/TlsVersion;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lokhttp4/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/ConnectionSpec$Builder;->build()Lokhttp4/ConnectionSpec;

    move-result-object v1

    sput-object v1, Lokhttp4/ConnectionSpec;->RESTRICTED_TLS:Lokhttp4/ConnectionSpec;

    new-instance v1, Lokhttp4/ConnectionSpec$Builder;

    invoke-direct {v1, v5}, Lokhttp4/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v1, v0}, Lokhttp4/ConnectionSpec$Builder;->cipherSuites([Lokhttp4/CipherSuite;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v1

    new-array v2, v11, [Lokhttp4/TlsVersion;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    sget-object v4, Lokhttp4/TlsVersion;->TLS_1_1:Lokhttp4/TlsVersion;

    aput-object v4, v2, v7

    sget-object v4, Lokhttp4/TlsVersion;->TLS_1_0:Lokhttp4/TlsVersion;

    aput-object v4, v2, v9

    invoke-virtual {v1, v2}, Lokhttp4/ConnectionSpec$Builder;->tlsVersions([Lokhttp4/TlsVersion;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lokhttp4/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/ConnectionSpec$Builder;->build()Lokhttp4/ConnectionSpec;

    move-result-object v1

    sput-object v1, Lokhttp4/ConnectionSpec;->MODERN_TLS:Lokhttp4/ConnectionSpec;

    new-instance v1, Lokhttp4/ConnectionSpec$Builder;

    invoke-direct {v1, v5}, Lokhttp4/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v1, v0}, Lokhttp4/ConnectionSpec$Builder;->cipherSuites([Lokhttp4/CipherSuite;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v5, [Lokhttp4/TlsVersion;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lokhttp4/ConnectionSpec$Builder;->tlsVersions([Lokhttp4/TlsVersion;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokhttp4/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp4/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/ConnectionSpec$Builder;->build()Lokhttp4/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp4/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp4/ConnectionSpec;

    new-instance v0, Lokhttp4/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lokhttp4/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp4/ConnectionSpec$Builder;->build()Lokhttp4/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp4/ConnectionSpec;->CLEARTEXT:Lokhttp4/ConnectionSpec;

    return-void
.end method

.method constructor <init>(Lokhttp4/ConnectionSpec$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    iput-boolean v0, p0, Lokhttp4/ConnectionSpec;->tls:Z

    iget-object v0, p1, Lokhttp4/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lokhttp4/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-boolean p1, p1, Lokhttp4/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iput-boolean p1, p0, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    return-void
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lokhttp4/ConnectionSpec;
    .registers 7

    iget-object v0, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lokhttp4/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lokhttp4/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_15
    iget-object v1, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object v1, Lokhttp4/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lokhttp4/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lokhttp4/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lokhttp4/internal/Util;->indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq v2, p2, :cond_41

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lokhttp4/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_41
    new-instance p1, Lokhttp4/ConnectionSpec$Builder;

    invoke-direct {p1, p0}, Lokhttp4/ConnectionSpec$Builder;-><init>(Lokhttp4/ConnectionSpec;)V

    invoke-virtual {p1, v0}, Lokhttp4/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp4/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/ConnectionSpec$Builder;->build()Lokhttp4/ConnectionSpec;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lokhttp4/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lokhttp4/ConnectionSpec;

    move-result-object p2

    iget-object v0, p2, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz p2, :cond_12

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp4/CipherSuite;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lokhttp4/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lokhttp4/ConnectionSpec;

    iget-boolean v2, p0, Lokhttp4/ConnectionSpec;->tls:Z

    iget-boolean v3, p1, Lokhttp4/ConnectionSpec;->tls:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    iget-object v2, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget-object v2, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    iget-boolean v2, p0, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean p1, p1, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v2, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x20f

    iget-object v1, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_20

    :cond_1e
    const/16 v0, 0x11

    :goto_20
    return v0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v2, Lokhttp4/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lokhttp4/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v2, Lokhttp4/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lokhttp4/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public isTls()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp4/TlsVersion;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec;->tls:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_7
    iget-object v0, p0, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lokhttp4/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    iget-object v2, p0, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lokhttp4/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
