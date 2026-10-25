.class Lokhttp4/Cache$CacheResponseBody$1;
.super Lokin/ForwardingSource;
.source "Cache.java"


# instance fields
.field final synthetic this$0:Lokhttp4/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lokhttp4/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lokhttp4/Cache$CacheResponseBody;Lokin/Source;Lokhttp4/internal/cache/DiskLruCache$Snapshot;)V
    .registers 4

    iput-object p1, p0, Lokhttp4/Cache$CacheResponseBody$1;->this$0:Lokhttp4/Cache$CacheResponseBody;

    iput-object p3, p0, Lokhttp4/Cache$CacheResponseBody$1;->val$snapshot:Lokhttp4/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lokin/ForwardingSource;-><init>(Lokin/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache$CacheResponseBody$1;->val$snapshot:Lokhttp4/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->close()V

    invoke-super {p0}, Lokin/ForwardingSource;->close()V

    return-void
.end method
