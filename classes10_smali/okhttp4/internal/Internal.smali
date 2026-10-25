.class public abstract Lokhttp4/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lokhttp4/internal/Internal;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lokhttp4/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lokhttp4/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lokhttp4/ConnectionPool;Lokhttp4/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lokhttp4/ConnectionPool;Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Lokhttp4/Address;Lokhttp4/Address;)Z
.end method

.method public abstract get(Lokhttp4/ConnectionPool;Lokhttp4/Address;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/Route;)Lokhttp4/internal/connection/RealConnection;
.end method

.method public abstract put(Lokhttp4/ConnectionPool;Lokhttp4/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lokhttp4/ConnectionPool;)Lokhttp4/internal/connection/RouteDatabase;
.end method

.method public abstract timeoutExit(Lokhttp4/Call;Ljava/io/IOException;)Ljava/io/IOException;
.end method
