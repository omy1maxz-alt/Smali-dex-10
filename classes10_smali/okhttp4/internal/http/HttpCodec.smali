.class public interface abstract Lokhttp4/internal/http/HttpCodec;
.super Ljava/lang/Object;
.source "HttpCodec.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lokhttp4/Request;J)Lokin/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract openResponseBody(Lokhttp4/Response;)Lokhttp4/ResponseBody;
.end method

.method public abstract readResponseHeaders(Z)Lokhttp4/Response$Builder;
.end method

.method public abstract writeRequestHeaders(Lokhttp4/Request;)V
.end method
