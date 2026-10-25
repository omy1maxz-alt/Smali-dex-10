.class Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;
.super Lokin/ForwardingSource;
.source "Http2Codec.java"


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Lokhttp4/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Lokhttp4/internal/http2/Http2Codec;Lokin/Source;)V
    .registers 3

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp4/internal/http2/Http2Codec;

    invoke-direct {p0, p2}, Lokin/ForwardingSource;-><init>(Lokin/Source;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .registers 9

    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp4/internal/http2/Http2Codec;

    iget-object v1, v3, Lokhttp4/internal/http2/Http2Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    const/4 v2, 0x0

    iget-wide v4, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp4/internal/connection/StreamAllocation;->streamFinished(ZLokhttp4/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Lokin/ForwardingSource;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lokin/Buffer;J)J
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lokin/ForwardingSource;->delegate()Lokin/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    invoke-direct {p0, p1}, Lokhttp4/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    throw p1
.end method
