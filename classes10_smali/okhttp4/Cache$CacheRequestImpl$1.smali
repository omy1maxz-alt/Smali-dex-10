.class Lokhttp4/Cache$CacheRequestImpl$1;
.super Lokin/ForwardingSink;
.source "Cache.java"


# instance fields
.field final synthetic this$1:Lokhttp4/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lokhttp4/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lokhttp4/Cache;


# direct methods
.method constructor <init>(Lokhttp4/Cache$CacheRequestImpl;Lokin/Sink;Lokhttp4/Cache;Lokhttp4/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    iput-object p1, p0, Lokhttp4/Cache$CacheRequestImpl$1;->this$1:Lokhttp4/Cache$CacheRequestImpl;

    iput-object p3, p0, Lokhttp4/Cache$CacheRequestImpl$1;->val$this$0:Lokhttp4/Cache;

    iput-object p4, p0, Lokhttp4/Cache$CacheRequestImpl$1;->val$editor:Lokhttp4/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokin/ForwardingSink;-><init>(Lokin/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lokhttp4/Cache$CacheRequestImpl$1;->this$1:Lokhttp4/Cache$CacheRequestImpl;

    iget-object v0, v0, Lokhttp4/Cache$CacheRequestImpl;->this$0:Lokhttp4/Cache;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lokhttp4/Cache$CacheRequestImpl$1;->this$1:Lokhttp4/Cache$CacheRequestImpl;

    iget-boolean v2, v1, Lokhttp4/Cache$CacheRequestImpl;->done:Z

    if-eqz v2, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp4/Cache$CacheRequestImpl;->done:Z

    iget-object v1, v1, Lokhttp4/Cache$CacheRequestImpl;->this$0:Lokhttp4/Cache;

    iget v3, v1, Lokhttp4/Cache;->writeSuccessCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lokhttp4/Cache;->writeSuccessCount:I

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_21

    invoke-super {p0}, Lokin/ForwardingSink;->close()V

    iget-object v0, p0, Lokhttp4/Cache$CacheRequestImpl$1;->val$editor:Lokhttp4/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method
