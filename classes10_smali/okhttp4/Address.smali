.class public final Lokhttp4/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lokhttp4/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;

.field final dns:Lokhttp4/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lokhttp4/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lokhttp4/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILokhttp4/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp4/CertificatePinner;Lokhttp4/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp4/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp4/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_d

    const-string v1, "https"

    goto :goto_f

    :cond_d
    const-string v1, "http"

    :goto_f
    invoke-virtual {v0, v1}, Lokhttp4/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp4/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp4/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp4/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp4/HttpUrl$Builder;->port(I)Lokhttp4/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/HttpUrl$Builder;->build()Lokhttp4/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    const-string p1, "dns == null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lokhttp4/Address;->dns:Lokhttp4/Dns;

    const-string/jumbo p1, "socketFactory == null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lokhttp4/Address;->socketFactory:Ljavax/net/SocketFactory;

    const-string p1, "proxyAuthenticator == null"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lokhttp4/Address;->proxyAuthenticator:Lokhttp4/Authenticator;

    const-string p1, "protocols == null"

    invoke-static {p10, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p10}, Lokhttp4/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Address;->protocols:Ljava/util/List;

    const-string p1, "connectionSpecs == null"

    invoke-static {p11, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p11}, Lokhttp4/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Address;->connectionSpecs:Ljava/util/List;

    const-string p1, "proxySelector == null"

    invoke-static {p12, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p12, p0, Lokhttp4/Address;->proxySelector:Ljava/net/ProxySelector;

    iput-object p9, p0, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    iput-object p5, p0, Lokhttp4/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lokhttp4/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lokhttp4/Address;->certificatePinner:Lokhttp4/CertificatePinner;

    return-void
.end method


# virtual methods
.method public certificatePinner()Lokhttp4/CertificatePinner;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->certificatePinner:Lokhttp4/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lokhttp4/Dns;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->dns:Lokhttp4/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lokhttp4/Address;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    check-cast p1, Lokhttp4/Address;

    iget-object v1, p1, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    invoke-virtual {v0, v1}, Lokhttp4/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lokhttp4/Address;->equalsNonHost(Lokhttp4/Address;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method equalsNonHost(Lokhttp4/Address;)Z
    .registers 4

    iget-object v0, p0, Lokhttp4/Address;->dns:Lokhttp4/Dns;

    iget-object v1, p1, Lokhttp4/Address;->dns:Lokhttp4/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->proxyAuthenticator:Lokhttp4/Authenticator;

    iget-object v1, p1, Lokhttp4/Address;->proxyAuthenticator:Lokhttp4/Authenticator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lokhttp4/Address;->protocols:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lokhttp4/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lokhttp4/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lokhttp4/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lokhttp4/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lokhttp4/Address;->certificatePinner:Lokhttp4/CertificatePinner;

    iget-object v1, p1, Lokhttp4/Address;->certificatePinner:Lokhttp4/CertificatePinner;

    invoke-static {v0, v1}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lokhttp4/Address;->url()Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/HttpUrl;->port()I

    move-result p1

    if-ne v0, p1, :cond_6e

    const/4 p1, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p1, 0x0

    :goto_6f
    return p1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->dns:Lokhttp4/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->proxyAuthenticator:Lokhttp4/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->protocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Address;->certificatePinner:Lokhttp4/CertificatePinner;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lokhttp4/CertificatePinner;->hashCode()I

    move-result v2

    :cond_68
    add-int/2addr v1, v2

    return v1
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp4/Authenticator;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->proxyAuthenticator:Lokhttp4/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    invoke-virtual {v1}, Lokhttp4/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_30

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_30
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3a
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lokhttp4/HttpUrl;
    .registers 2

    iget-object v0, p0, Lokhttp4/Address;->url:Lokhttp4/HttpUrl;

    return-object v0
.end method
