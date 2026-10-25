.class public final Lokhttp4/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final cache:Lokhttp4/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp4/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    sget-object v0, Lokhttp4/internal/io/FileSystem;->SYSTEM:Lokhttp4/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp4/Cache;-><init>(Ljava/io/File;JLokhttp4/internal/io/FileSystem;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp4/internal/io/FileSystem;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp4/Cache$1;

    invoke-direct {v0, p0}, Lokhttp4/Cache$1;-><init>(Lokhttp4/Cache;)V

    iput-object v0, p0, Lokhttp4/Cache;->internalCache:Lokhttp4/internal/cache/InternalCache;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokhttp4/internal/cache/DiskLruCache;->create(Lokhttp4/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp4/internal/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    return-void
.end method

.method private abortQuietly(Lokhttp4/internal/cache/DiskLruCache$Editor;)V
    .registers 2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Lokhttp4/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static key(Lokhttp4/HttpUrl;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokin/ByteString;->encodeUtf8(Ljava/lang/String;)Lokin/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokin/ByteString;->md5()Lokin/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokin/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readInt(Lokin/BufferedSource;)I
    .registers 6

    :try_start_0
    invoke-interface {p0}, Lokin/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    invoke-interface {p0}, Lokin/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1d

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    long-to-int p0, v0

    return p0

    :cond_1d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public delete()V
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp4/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method get(Lokhttp4/Request;)Lokhttp4/Response;
    .registers 6

    invoke-virtual {p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/Cache;->key(Lokhttp4/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lokhttp4/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp4/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_32

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    :try_start_12
    new-instance v2, Lokhttp4/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokin/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp4/Cache$Entry;-><init>(Lokin/Source;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_2f

    invoke-virtual {v2, v0}, Lokhttp4/Cache$Entry;->response(Lokhttp4/internal/cache/DiskLruCache$Snapshot;)Lokhttp4/Response;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lokhttp4/Cache$Entry;->matches(Lokhttp4/Request;Lokhttp4/Response;)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {v0}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_2e
    return-object v0

    :catch_2f
    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_32
    return-object v1
.end method

.method put(Lokhttp4/Response;)Lokhttp4/internal/cache/CacheRequest;
    .registers 5

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp4/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    :try_start_17
    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp4/Cache;->remove(Lokhttp4/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1e

    :catch_1e
    return-object v2

    :cond_1f
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    return-object v2

    :cond_28
    invoke-static {p1}, Lokhttp4/internal/http/HttpHeaders;->hasVaryAll(Lokhttp4/Response;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return-object v2

    :cond_2f
    new-instance v0, Lokhttp4/Cache$Entry;

    invoke-direct {v0, p1}, Lokhttp4/Cache$Entry;-><init>(Lokhttp4/Response;)V

    :try_start_34
    iget-object v1, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lokhttp4/Cache;->key(Lokhttp4/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp4/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp4/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_46} :catch_52

    if-nez p1, :cond_49

    return-object v2

    :cond_49
    :try_start_49
    invoke-virtual {v0, p1}, Lokhttp4/Cache$Entry;->writeTo(Lokhttp4/internal/cache/DiskLruCache$Editor;)V

    new-instance v0, Lokhttp4/Cache$CacheRequestImpl;

    invoke-direct {v0, p0, p1}, Lokhttp4/Cache$CacheRequestImpl;-><init>(Lokhttp4/Cache;Lokhttp4/internal/cache/DiskLruCache$Editor;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_53

    return-object v0

    :catch_52
    move-object p1, v2

    :catch_53
    invoke-direct {p0, p1}, Lokhttp4/Cache;->abortQuietly(Lokhttp4/internal/cache/DiskLruCache$Editor;)V

    return-object v2
.end method

.method remove(Lokhttp4/Request;)V
    .registers 3

    iget-object v0, p0, Lokhttp4/Cache;->cache:Lokhttp4/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lokhttp4/Cache;->key(Lokhttp4/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp4/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp4/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp4/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Lokhttp4/internal/cache/CacheStrategy;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp4/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp4/Cache;->requestCount:I

    iget-object v0, p1, Lokhttp4/internal/cache/CacheStrategy;->networkRequest:Lokhttp4/Request;

    if-eqz v0, :cond_12

    iget p1, p0, Lokhttp4/Cache;->networkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp4/Cache;->networkCount:I

    goto :goto_1c

    :cond_12
    iget-object p1, p1, Lokhttp4/internal/cache/CacheStrategy;->cacheResponse:Lokhttp4/Response;

    if-eqz p1, :cond_1c

    iget p1, p0, Lokhttp4/Cache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp4/Cache;->hitCount:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method update(Lokhttp4/Response;Lokhttp4/Response;)V
    .registers 4

    new-instance v0, Lokhttp4/Cache$Entry;

    invoke-direct {v0, p2}, Lokhttp4/Cache$Entry;-><init>(Lokhttp4/Response;)V

    invoke-virtual {p1}, Lokhttp4/Response;->body()Lokhttp4/ResponseBody;

    move-result-object p1

    check-cast p1, Lokhttp4/Cache$CacheResponseBody;

    iget-object p1, p1, Lokhttp4/Cache$CacheResponseBody;->snapshot:Lokhttp4/internal/cache/DiskLruCache$Snapshot;

    :try_start_d
    invoke-virtual {p1}, Lokhttp4/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp4/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_1a

    if-eqz p1, :cond_1e

    :try_start_13
    invoke-virtual {v0, p1}, Lokhttp4/Cache$Entry;->writeTo(Lokhttp4/internal/cache/DiskLruCache$Editor;)V

    invoke-virtual {p1}, Lokhttp4/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1b

    goto :goto_1e

    :catch_1a
    const/4 p1, 0x0

    :catch_1b
    invoke-direct {p0, p1}, Lokhttp4/Cache;->abortQuietly(Lokhttp4/internal/cache/DiskLruCache$Editor;)V

    :cond_1e
    :goto_1e
    return-void
.end method
