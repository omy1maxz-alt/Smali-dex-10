.class public final Lokhttp4/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lokhttp4/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lokhttp4/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "address == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "proxy == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "inetSocketAddress == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lokhttp4/Route;->address:Lokhttp4/Address;

    iput-object p2, p0, Lokhttp4/Route;->proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lokhttp4/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public address()Lokhttp4/Address;
    .registers 2

    iget-object v0, p0, Lokhttp4/Route;->address:Lokhttp4/Address;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lokhttp4/Route;

    if-eqz v0, :cond_26

    check-cast p1, Lokhttp4/Route;

    iget-object v0, p1, Lokhttp4/Route;->address:Lokhttp4/Address;

    iget-object v1, p0, Lokhttp4/Route;->address:Lokhttp4/Address;

    invoke-virtual {v0, v1}, Lokhttp4/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lokhttp4/Route;->proxy:Ljava/net/Proxy;

    iget-object v1, p0, Lokhttp4/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p1, Lokhttp4/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lokhttp4/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lokhttp4/Route;->address:Lokhttp4/Address;

    invoke-virtual {v0}, Lokhttp4/Address;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lokhttp4/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public proxy()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lokhttp4/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public requiresTunnel()Z
    .registers 3

    iget-object v0, p0, Lokhttp4/Route;->address:Lokhttp4/Address;

    iget-object v0, v0, Lokhttp4/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp4/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public socketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Lokhttp4/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp4/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
