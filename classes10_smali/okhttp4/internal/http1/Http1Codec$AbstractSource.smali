.class abstract Lokhttp4/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokin/Source;


# instance fields
.field protected bytesRead:J

.field protected closed:Z

.field final synthetic this$0:Lokhttp4/internal/http1/Http1Codec;

.field protected final timeout:Lokin/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lokhttp4/internal/http1/Http1Codec;)V
    .registers 4

    iput-object p1, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp4/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokin/ForwardingTimeout;

    iget-object p1, p1, Lokhttp4/internal/http1/Http1Codec;->source:Lokin/BufferedSource;

    invoke-interface {p1}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokin/ForwardingTimeout;-><init>(Lokin/Timeout;)V

    iput-object v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->timeout:Lokin/ForwardingTimeout;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp4/internal/http1/Http1Codec;Lokhttp4/internal/http1/Http1Codec$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp4/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(ZLjava/io/IOException;)V
    .registers 12

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget v1, v0, Lokhttp4/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    iget-object v1, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->timeout:Lokin/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lokhttp4/internal/http1/Http1Codec;->detachTimeout(Lokin/ForwardingTimeout;)V

    iget-object v5, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iput v2, v5, Lokhttp4/internal/http1/Http1Codec;->state:I

    iget-object v3, v5, Lokhttp4/internal/http1/Http1Codec;->streamAllocation:Lokhttp4/internal/connection/StreamAllocation;

    if-eqz v3, :cond_20

    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lokhttp4/internal/connection/StreamAllocation;->streamFinished(ZLokhttp4/internal/http/HttpCodec;JLjava/io/IOException;)V

    :cond_20
    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget v0, v0, Lokhttp4/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lokin/Buffer;J)J
    .registers 6

    :try_start_0
    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp4/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp4/internal/http1/Http1Codec;->source:Lokin/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    iget-wide v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->bytesRead:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    throw p1
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->timeout:Lokin/ForwardingTimeout;

    return-object v0
.end method
