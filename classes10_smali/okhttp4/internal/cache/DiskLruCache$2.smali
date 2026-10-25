.class Lokhttp4/internal/cache/DiskLruCache$2;
.super Lokhttp4/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# instance fields
.field final synthetic this$0:Lokhttp4/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp4/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Lokhttp4/internal/cache/DiskLruCache;Lokin/Sink;)V
    .registers 3

    iput-object p1, p0, Lokhttp4/internal/cache/DiskLruCache$2;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lokhttp4/internal/cache/FaultHidingSink;-><init>(Lokin/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 3

    iget-object p1, p0, Lokhttp4/internal/cache/DiskLruCache$2;->this$0:Lokhttp4/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp4/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method
