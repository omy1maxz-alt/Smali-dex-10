.class public final Lokhttp4/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lokhttp4/Interceptor;


# instance fields
.field public final client:Lokhttp4/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp4/OkHttpClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/connection/ConnectInterceptor;->client:Lokhttp4/OkHttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp4/Interceptor$Chain;)Lokhttp4/Response;
    .registers 7

    move-object v0, p1

    check-cast v0, Lokhttp4/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lokhttp4/internal/http/RealInterceptorChain;->request()Lokhttp4/Request;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp4/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp4/internal/connection/StreamAllocation;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp4/internal/connection/ConnectInterceptor;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2, v4, p1, v3}, Lokhttp4/internal/connection/StreamAllocation;->newStream(Lokhttp4/OkHttpClient;Lokhttp4/Interceptor$Chain;Z)Lokhttp4/internal/http/HttpCodec;

    move-result-object p1

    invoke-virtual {v2}, Lokhttp4/internal/connection/StreamAllocation;->connection()Lokhttp4/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lokhttp4/internal/http/RealInterceptorChain;->proceed(Lokhttp4/Request;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;)Lokhttp4/Response;

    move-result-object p1

    return-object p1
.end method
