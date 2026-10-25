.class final Lokhttp4/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp4/internal/cache/CacheRequest;


# instance fields
.field private body:Lokin/Sink;

.field private cacheOut:Lokin/Sink;

.field done:Z

.field private final editor:Lokhttp4/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp4/Cache;


# direct methods
.method constructor <init>(Lokhttp4/Cache;Lokhttp4/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    iput-object p1, p0, Lokhttp4/Cache$CacheRequestImpl;->this$0:Lokhttp4/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp4/Cache$CacheRequestImpl;->editor:Lokhttp4/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lokhttp4/internal/cache/DiskLruCache$Editor;->newSink(I)Lokin/Sink;

    move-result-object v0

    iput-object v0, p0, Lokhttp4/Cache$CacheRequestImpl;->cacheOut:Lokin/Sink;

    new-instance v1, Lokhttp4/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lokhttp4/Cache$CacheRequestImpl$1;-><init>(Lokhttp4/Cache$CacheRequestImpl;Lokin/Sink;Lokhttp4/Cache;Lokhttp4/internal/cache/DiskLruCache$Editor;)V

    iput-object v1, p0, Lokhttp4/Cache$CacheRequestImpl;->body:Lokin/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 5

    iget-object v0, p0, Lokhttp4/Cache$CacheRequestImpl;->this$0:Lokhttp4/Cache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp4/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp4/Cache$CacheRequestImpl;->done:Z

    iget-object v2, p0, Lokhttp4/Cache$CacheRequestImpl;->this$0:Lokhttp4/Cache;

    iget v3, v2, Lokhttp4/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lokhttp4/Cache;->writeAbortCount:I

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    iget-object v0, p0, Lokhttp4/Cache$CacheRequestImpl;->cacheOut:Lokin/Sink;

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_19
    iget-object v0, p0, Lokhttp4/Cache$CacheRequestImpl;->editor:Lokhttp4/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public body()Lokin/Sink;
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache$CacheRequestImpl;->body:Lokin/Sink;

    return-object v0
.end method
