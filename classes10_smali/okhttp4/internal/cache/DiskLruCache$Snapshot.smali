.class public final Lokhttp4/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lokin/Source;

.field final synthetic this$0:Lokhttp4/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp4/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokin/Source;[J)V
    .registers 7

    iput-object p1, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    iput-object p5, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->sources:[Lokin/Source;

    iput-object p6, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->sources:[Lokin/Source;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-static {v3}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public edit()Lokhttp4/internal/cache/DiskLruCache$Editor;
    .registers 5

    iget-object v0, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lokhttp4/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp4/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getSource(I)Lokin/Source;
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->sources:[Lokin/Source;

    aget-object p1, v0, p1

    return-object p1
.end method
