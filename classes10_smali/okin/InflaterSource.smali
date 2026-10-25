.class public final Lokin/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lokin/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokin/BufferedSource;


# direct methods
.method constructor <init>(Lokin/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Lokin/InflaterSource;->source:Lokin/BufferedSource;

    iput-object p2, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private releaseInflatedBytes()V
    .registers 5

    iget v0, p0, Lokin/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lokin/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokin/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v1, p0, Lokin/InflaterSource;->source:Lokin/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokin/BufferedSource;->skip(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lokin/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokin/InflaterSource;->closed:Z

    iget-object v0, p0, Lokin/InflaterSource;->source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/Source;->close()V

    return-void
.end method

.method public read(Lokin/Buffer;J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7b

    iget-boolean v2, p0, Lokin/InflaterSource;->closed:Z

    if-nez v2, :cond_73

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    return-wide v0

    :cond_f
    :goto_f
    invoke-virtual {p0}, Lokin/InflaterSource;->refill()Z

    move-result v0

    const/4 v1, 0x1

    :try_start_14
    invoke-virtual {p1, v1}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v1

    iget v2, v1, Lokin/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v4, v1, Lokin/Segment;->data:[B

    iget v5, v1, Lokin/Segment;->limit:I

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_3a

    iget p2, v1, Lokin/Segment;->limit:I

    add-int/2addr p2, v2

    iput p2, v1, Lokin/Segment;->limit:I

    iget-wide p2, p1, Lokin/Buffer;->size:J

    int-to-long v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lokin/Buffer;->size:J

    return-wide v0

    :cond_3a
    iget-object v2, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v2, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_57

    :cond_4b
    if-nez v0, :cond_4e

    goto :goto_f

    :cond_4e
    new-instance p1, Ljava/io/EOFException;

    const-string/jumbo p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    :goto_57
    invoke-direct {p0}, Lokin/InflaterSource;->releaseInflatedBytes()V

    iget p2, v1, Lokin/Segment;->pos:I

    iget p3, v1, Lokin/Segment;->limit:I

    if-ne p2, p3, :cond_69

    invoke-virtual {v1}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object p2

    iput-object p2, p1, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v1}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V
    :try_end_69
    .catch Ljava/util/zip/DataFormatException; {:try_start_14 .. :try_end_69} :catch_6c

    :cond_69
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_6c
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :goto_92
    throw p1

    :goto_93
    goto :goto_92
.end method

.method public final refill()Z
    .registers 6

    iget-object v0, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lokin/InflaterSource;->releaseInflatedBytes()V

    iget-object v0, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lokin/InflaterSource;->source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    iget-object v0, p0, Lokin/InflaterSource;->source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/BufferedSource;->buffer()Lokin/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokin/Buffer;->head:Lokin/Segment;

    iget v2, v0, Lokin/Segment;->limit:I

    iget v3, v0, Lokin/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokin/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v4, p0, Lokin/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v0, v0, Lokin/Segment;->data:[B

    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/InflaterSource;->source:Lokin/BufferedSource;

    invoke-interface {v0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method
