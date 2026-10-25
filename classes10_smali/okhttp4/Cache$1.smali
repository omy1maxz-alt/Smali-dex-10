.class Lokhttp4/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp4/internal/cache/InternalCache;


# instance fields
.field final synthetic this$0:Lokhttp4/Cache;


# direct methods
.method constructor <init>(Lokhttp4/Cache;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lokhttp4/Request;)Lokhttp4/Response;
    .registers 3

    iget-object v0, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-virtual {v0, p1}, Lokhttp4/Cache;->get(Lokhttp4/Request;)Lokhttp4/Response;

    move-result-object p1

    return-object p1
.end method

.method public put(Lokhttp4/Response;)Lokhttp4/internal/cache/CacheRequest;
    .registers 3

    iget-object v0, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-virtual {v0, p1}, Lokhttp4/Cache;->put(Lokhttp4/Response;)Lokhttp4/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lokhttp4/Request;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-virtual {v0, p1}, Lokhttp4/Cache;->remove(Lokhttp4/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-virtual {v0}, Lokhttp4/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method public trackResponse(Lokhttp4/internal/cache/CacheStrategy;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-virtual {v0, p1}, Lokhttp4/Cache;->trackResponse(Lokhttp4/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Lokhttp4/Response;Lokhttp4/Response;)V
    .registers 4

    iget-object v0, p0, Lokhttp4/Cache$1;->this$0:Lokhttp4/Cache;

    invoke-virtual {v0, p1, p2}, Lokhttp4/Cache;->update(Lokhttp4/Response;Lokhttp4/Response;)V

    return-void
.end method
