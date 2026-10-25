.class public interface abstract Lokhttp4/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract get(Lokhttp4/Request;)Lokhttp4/Response;
.end method

.method public abstract put(Lokhttp4/Response;)Lokhttp4/internal/cache/CacheRequest;
.end method

.method public abstract remove(Lokhttp4/Request;)V
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lokhttp4/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lokhttp4/Response;Lokhttp4/Response;)V
.end method
