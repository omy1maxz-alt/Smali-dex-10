.class Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;
.super Lokhttp4/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp4/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Lokhttp4/internal/http1/Http1Codec;J)V
    .registers 7

    iput-object p1, p0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lokhttp4/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp4/internal/http1/Http1Codec;Lokhttp4/internal/http1/Http1Codec$1;)V

    iput-wide p2, p0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    iget-boolean v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp4/internal/Util;->discard(Lokin/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->closed:Z

    return-void
.end method

.method public read(Lokin/Buffer;J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_43

    iget-boolean v2, p0, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-nez v2, :cond_3b

    iget-wide v2, p0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_13

    return-wide v4

    :cond_13
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->read(Lokin/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_2e

    iget-wide v2, p0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokhttp4/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_2d

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_2d
    return-wide p1

    :cond_2e
    new-instance p1, Ljava/net/ProtocolException;

    const-string/jumbo p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lokhttp4/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    throw p1

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
