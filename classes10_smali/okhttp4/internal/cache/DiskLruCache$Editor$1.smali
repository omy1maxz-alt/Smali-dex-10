.class Lokhttp4/internal/cache/DiskLruCache$Editor$1;
.super Lokhttp4/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# instance fields
.field final synthetic this$1:Lokhttp4/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lokhttp4/internal/cache/DiskLruCache$Editor;Lokin/Sink;)V
    .registers 3

    iput-object p1, p0, Lokhttp4/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp4/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokhttp4/internal/cache/FaultHidingSink;-><init>(Lokin/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 3

    iget-object p1, p0, Lokhttp4/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp4/internal/cache/DiskLruCache$Editor;

    iget-object p1, p1, Lokhttp4/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lokhttp4/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp4/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache$Editor;->detach()V

    monitor-exit p1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
