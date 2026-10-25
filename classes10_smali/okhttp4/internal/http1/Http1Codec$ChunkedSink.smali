.class final Lokhttp4/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokin/Sink;


# instance fields
.field private closed:Z

.field final synthetic this$0:Lokhttp4/internal/http1/Http1Codec;

.field private final timeout:Lokin/ForwardingTimeout;


# direct methods
.method constructor <init>(Lokhttp4/internal/http1/Http1Codec;)V
    .registers 3

    iput-object p1, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokin/ForwardingTimeout;

    iget-object p1, p1, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {p1}, Lokin/Sink;->timeout()Lokin/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokin/ForwardingTimeout;-><init>(Lokin/Timeout;)V

    iput-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokin/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v1, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokin/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lokhttp4/internal/http1/Http1Codec;->detachTimeout(Lokin/ForwardingTimeout;)V

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lokhttp4/internal/http1/Http1Codec;->state:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {v0}, Lokin/BufferedSink;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokin/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 7

    iget-boolean v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {v0, p2, p3}, Lokin/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokin/BufferedSink;

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lokin/Sink;->write(Lokin/Buffer;J)V

    iget-object p1, p0, Lokhttp4/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object p1, p1, Lokhttp4/internal/http1/Http1Codec;->sink:Lokin/BufferedSink;

    invoke-interface {p1, v1}, Lokin/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;

    return-void

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
