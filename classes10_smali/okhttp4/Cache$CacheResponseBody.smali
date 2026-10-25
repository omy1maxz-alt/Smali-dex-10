.class Lokhttp4/Cache$CacheResponseBody;
.super Lokhttp4/ResponseBody;
.source "Cache.java"


# instance fields
.field private final bodySource:Lokin/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field final snapshot:Lokhttp4/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lokhttp4/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lokhttp4/ResponseBody;-><init>()V

    iput-object p1, p0, Lokhttp4/Cache$CacheResponseBody;->snapshot:Lokhttp4/internal/cache/DiskLruCache$Snapshot;

    iput-object p2, p0, Lokhttp4/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lokhttp4/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokin/Source;

    move-result-object p2

    new-instance p3, Lokhttp4/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Lokhttp4/Cache$CacheResponseBody$1;-><init>(Lokhttp4/Cache$CacheResponseBody;Lokin/Source;Lokhttp4/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Cache$CacheResponseBody;->bodySource:Lokin/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 4

    const-wide/16 v0, -0x1

    :try_start_2
    iget-object v2, p0, Lokhttp4/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-wide v0
.end method

.method public contentType()Lokhttp4/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp4/MediaType;->parse(Ljava/lang/String;)Lokhttp4/MediaType;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public source()Lokin/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache$CacheResponseBody;->bodySource:Lokin/BufferedSource;

    return-object v0
.end method
