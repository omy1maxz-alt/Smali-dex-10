.class public final Lokhttp4/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# instance fields
.field cipherSuites:[Ljava/lang/String;

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp4/ConnectionSpec;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp4/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    iget-object v0, p1, Lokhttp4/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lokhttp4/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp4/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iget-boolean p1, p1, Lokhttp4/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean p1, p0, Lokhttp4/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public build()Lokhttp4/ConnectionSpec;
    .registers 2

    new-instance v0, Lokhttp4/ConnectionSpec;

    invoke-direct {v0, p0}, Lokhttp4/ConnectionSpec;-><init>(Lokhttp4/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lokhttp4/ConnectionSpec$Builder;
    .registers 3

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp4/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs cipherSuites([Lokhttp4/CipherSuite;)Lokhttp4/ConnectionSpec$Builder;
    .registers 5

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_19

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget-object v2, p1, v1

    iget-object v2, v2, Lokhttp4/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0}, Lokhttp4/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method public supportsTlsExtensions(Z)Lokhttp4/ConnectionSpec$Builder;
    .registers 3

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_7

    iput-boolean p1, p0, Lokhttp4/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lokhttp4/ConnectionSpec$Builder;
    .registers 3

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp4/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs tlsVersions([Lokhttp4/TlsVersion;)Lokhttp4/ConnectionSpec$Builder;
    .registers 5

    iget-boolean v0, p0, Lokhttp4/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_19

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget-object v2, p1, v1

    iget-object v2, v2, Lokhttp4/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0}, Lokhttp4/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp4/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method
