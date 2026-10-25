.class Lokhttp4/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lokhttp4/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp4/internal/cache/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    iget-boolean v2, v1, Lokhttp4/internal/cache/DiskLruCache;->initialized:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iget-boolean v5, v1, Lokhttp4/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v2, v5

    if-eqz v2, :cond_15

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    return-void

    :cond_15
    :try_start_15
    invoke-virtual {v1}, Lokhttp4/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_3f

    goto :goto_1d

    :catch_19
    :try_start_19
    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    iput-boolean v4, v1, Lokhttp4/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_3f

    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp4/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp4/internal/cache/DiskLruCache;->rebuildJournal()V

    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    iput v3, v1, Lokhttp4/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2e} :catch_2f
    .catchall {:try_start_1d .. :try_end_2e} :catchall_3f

    goto :goto_3d

    :catch_2f
    :try_start_2f
    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$1;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    iput-boolean v4, v1, Lokhttp4/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    invoke-static {}, Lokin/Okio;->blackhole()Lokin/Sink;

    move-result-object v2

    invoke-static {v2}, Lokin/Okio;->buffer(Lokin/Sink;)Lokin/BufferedSink;

    move-result-object v2

    iput-object v2, v1, Lokhttp4/internal/cache/DiskLruCache;->journalWriter:Lokin/BufferedSink;

    :cond_3d
    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_3f

    throw v1
.end method
