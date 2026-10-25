.class final Lokin/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokin/Sink;


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lokin/Timeout;


# direct methods
.method constructor <init>(Lokin/Timeout;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lokin/Okio$1;->val$timeout:Lokin/Timeout;

    iput-object p2, p0, Lokin/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokin/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokin/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/Okio$1;->val$timeout:Lokin/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokin/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 10

    iget-wide v0, p1, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    :cond_8
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_43

    iget-object v0, p0, Lokin/Okio$1;->val$timeout:Lokin/Timeout;

    invoke-virtual {v0}, Lokin/Timeout;->throwIfReached()V

    iget-object v0, p1, Lokin/Buffer;->head:Lokin/Segment;

    iget v1, v0, Lokin/Segment;->limit:I

    iget v2, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lokin/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lokin/Segment;->data:[B

    iget v4, v0, Lokin/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v0, Lokin/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokin/Segment;->pos:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    iget-wide v4, p1, Lokin/Buffer;->size:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lokin/Buffer;->size:J

    iget v2, v0, Lokin/Segment;->limit:I

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v1

    iput-object v1, p1, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v0}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_8

    :cond_43
    return-void
.end method
