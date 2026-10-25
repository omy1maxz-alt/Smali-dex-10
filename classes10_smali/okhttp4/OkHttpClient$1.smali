.class Lokhttp4/OkHttpClient$1;
.super Lokhttp4/internal/Internal;
.source "OkHttpClient.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokhttp4/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-void
.end method

.method public addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-void
.end method

.method public apply(Lokhttp4/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lokhttp4/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Lokhttp4/Response$Builder;)I
    .registers 2

    iget p1, p1, Lokhttp4/Response$Builder;->code:I

    return p1
.end method

.method public connectionBecameIdle(Lokhttp4/ConnectionPool;Lokhttp4/internal/connection/RealConnection;)Z
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp4/ConnectionPool;->connectionBecameIdle(Lokhttp4/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public deduplicate(Lokhttp4/ConnectionPool;Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .registers 4

    invoke-virtual {p1, p2, p3}, Lokhttp4/ConnectionPool;->deduplicate(Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equalsNonHost(Lokhttp4/Address;Lokhttp4/Address;)Z
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp4/Address;->equalsNonHost(Lokhttp4/Address;)Z

    move-result p1

    return p1
.end method

.method public get(Lokhttp4/ConnectionPool;Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/Route;)Lokhttp4/internal/connection/RealConnection;
    .registers 5

    invoke-virtual {p1, p2, p3, p4}, Lokhttp4/ConnectionPool;->get(Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/Route;)Lokhttp4/internal/connection/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public put(Lokhttp4/ConnectionPool;Lokhttp4/internal/connection/RealConnection;)V
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp4/ConnectionPool;->put(Lokhttp4/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lokhttp4/ConnectionPool;)Lokhttp4/internal/connection/RouteDatabase;
    .registers 2

    iget-object p1, p1, Lokhttp4/ConnectionPool;->routeDatabase:Lokhttp4/internal/connection/RouteDatabase;

    return-object p1
.end method

.method public timeoutExit(Lokhttp4/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    check-cast p1, Lokhttp4/RealCall;

    invoke-virtual {p1, p2}, Lokhttp4/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method
