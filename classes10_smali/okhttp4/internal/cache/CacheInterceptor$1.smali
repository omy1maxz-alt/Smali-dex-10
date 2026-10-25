.class Lokhttp4/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokin/Source;


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lokhttp4/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lokin/BufferedSink;

.field final synthetic val$cacheRequest:Lokhttp4/internal/cache/CacheRequest;

.field final synthetic val$source:Lokin/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp4/internal/cache/CacheInterceptor;Lokin/BufferedSource;Lokhttp4/internal/cache/CacheRequest;Lokin/BufferedSink;)V
    .registers 5

    iput-object p1, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->this$0:Lokhttp4/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$source:Lokin/BufferedSource;

    iput-object p3, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp4/internal/cache/CacheRequest;

    iput-object p4, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokin/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp4/internal/Util;->discard(Lokin/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp4/internal/cache/CacheRequest;

    invoke-interface {v0}, Lokhttp4/internal/cache/CacheRequest;->abort()V

    :cond_16
    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/Source;->close()V

    return-void
.end method

.method public read(Lokin/Buffer;J)J
    .registers 12

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$source:Lokin/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    iget-boolean p1, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object p1, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokin/BufferedSink;

    invoke-interface {p1}, Lokin/Sink;->close()V

    :cond_18
    return-wide v1

    :cond_19
    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokin/BufferedSink;

    invoke-interface {v0}, Lokin/BufferedSink;->buffer()Lokin/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lokin/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokin/Buffer;->copyTo(Lokin/Buffer;JJ)Lokin/Buffer;

    iget-object p1, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokin/BufferedSink;

    invoke-interface {p1}, Lokin/BufferedSink;->emitCompleteSegments()Lokin/BufferedSink;

    return-wide p2

    :catch_30
    move-exception p1

    iget-boolean p2, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_3c

    iput-boolean v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object p2, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp4/internal/cache/CacheRequest;

    invoke-interface {p2}, Lokhttp4/internal/cache/CacheRequest;->abort()V

    :cond_3c
    throw p1
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/cache/CacheInterceptor$1;->val$source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method
