.class public final Lokhttp4/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lokhttp4/Interceptor$Chain;


# instance fields
.field private final call:Lokhttp4/Call;

.field private calls:I

.field private final connectTimeout:I

.field private final connection:Lokhttp4/internal/connection/RealConnection;

.field private final eventListener:Lokhttp4/EventListener;

.field private final httpCodec:Lokhttp4/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;

.field private final readTimeout:I

.field private final request:Lokhttp4/Request;

.field private final streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

.field private final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;ILokhttp4/Request;Lokhttp4/Call;Lokhttp4/EventListener;III)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iput-object p4, p0, Lokhttp4/internal/http/RealInterceptorChain;->connection:Lokhttp4/internal/connection/RealConnection;

    iput-object p2, p0, Lokhttp4/internal/http/RealInterceptorChain;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    iput-object p3, p0, Lokhttp4/internal/http/RealInterceptorChain;->httpCodec:Lokhttp4/internal/http/HttpCodec;

    iput p5, p0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    iput-object p6, p0, Lokhttp4/internal/http/RealInterceptorChain;->request:Lokhttp4/Request;

    iput-object p7, p0, Lokhttp4/internal/http/RealInterceptorChain;->call:Lokhttp4/Call;

    iput-object p8, p0, Lokhttp4/internal/http/RealInterceptorChain;->eventListener:Lokhttp4/EventListener;

    iput p9, p0, Lokhttp4/internal/http/RealInterceptorChain;->connectTimeout:I

    iput p10, p0, Lokhttp4/internal/http/RealInterceptorChain;->readTimeout:I

    iput p11, p0, Lokhttp4/internal/http/RealInterceptorChain;->writeTimeout:I

    return-void
.end method


# virtual methods
.method public call()Lokhttp4/Call;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->call:Lokhttp4/Call;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->connectTimeout:I

    return v0
.end method

.method public connection()Lokhttp4/Connection;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->connection:Lokhttp4/internal/connection/RealConnection;

    return-object v0
.end method

.method public eventListener()Lokhttp4/EventListener;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->eventListener:Lokhttp4/EventListener;

    return-object v0
.end method

.method public httpStream()Lokhttp4/internal/http/HttpCodec;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->httpCodec:Lokhttp4/internal/http/HttpCodec;

    return-object v0
.end method

.method public proceed(Lokhttp4/Request;)Lokhttp4/Response;
    .registers 5

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp4/internal/http/RealInterceptorChain;->httpCodec:Lokhttp4/internal/http/HttpCodec;

    iget-object v2, p0, Lokhttp4/internal/http/RealInterceptorChain;->connection:Lokhttp4/internal/connection/RealConnection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp4/internal/http/RealInterceptorChain;->proceed(Lokhttp4/Request;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;)Lokhttp4/Response;

    move-result-object p1

    return-object p1
.end method

.method public proceed(Lokhttp4/Request;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;)Lokhttp4/Response;
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    iget-object v2, v0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10b

    iget v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->calls:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->calls:I

    iget-object v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->httpCodec:Lokhttp4/internal/http/HttpCodec;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_48

    iget-object v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->connection:Lokhttp4/internal/connection/RealConnection;

    invoke-virtual/range {p1 .. p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp4/internal/connection/RealConnection;->supportsUrl(Lokhttp4/HttpUrl;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_48

    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    :goto_48
    iget-object v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->httpCodec:Lokhttp4/internal/http/HttpCodec;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_74

    iget v1, v0, Lokhttp4/internal/http/RealInterceptorChain;->calls:I

    if-gt v1, v2, :cond_53

    goto :goto_74

    :cond_53
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    :goto_74
    new-instance v1, Lokhttp4/internal/http/RealInterceptorChain;

    iget-object v6, v0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lokhttp4/internal/http/RealInterceptorChain;->call:Lokhttp4/Call;

    iget-object v13, v0, Lokhttp4/internal/http/RealInterceptorChain;->eventListener:Lokhttp4/EventListener;

    iget v14, v0, Lokhttp4/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v15, v0, Lokhttp4/internal/http/RealInterceptorChain;->readTimeout:I

    iget v11, v0, Lokhttp4/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lokhttp4/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;ILokhttp4/Request;Lokhttp4/Call;Lokhttp4/EventListener;III)V

    iget-object v5, v0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp4/Interceptor;

    invoke-interface {v5, v1}, Lokhttp4/Interceptor;->intercept(Lokhttp4/Interceptor$Chain;)Lokhttp4/Response;

    move-result-object v6

    if-eqz p3, :cond_cc

    iget v7, v0, Lokhttp4/internal/http/RealInterceptorChain;->index:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lokhttp4/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_cc

    iget v1, v1, Lokhttp4/internal/http/RealInterceptorChain;->calls:I

    if-ne v1, v2, :cond_b4

    goto :goto_cc

    :cond_b4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cc
    :goto_cc
    const-string v1, "interceptor "

    if-eqz v6, :cond_f1

    invoke-virtual {v6}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_d7

    return-object v6

    :cond_d7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f1
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public readTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->readTimeout:I

    return v0
.end method

.method public request()Lokhttp4/Request;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->request:Lokhttp4/Request;

    return-object v0
.end method

.method public streamAllocation()Lokhttp4/internal/connection/StreamAllocation;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .registers 2

    iget v0, p0, Lokhttp4/internal/http/RealInterceptorChain;->writeTimeout:I

    return v0
.end method
