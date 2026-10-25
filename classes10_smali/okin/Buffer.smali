.class public final Lokin/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokin/BufferedSource;
.implements Lokin/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final DIGITS:[B


# instance fields
.field head:Lokin/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokin/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buffer()Lokin/Buffer;
    .registers 1

    return-object p0
.end method

.method public final clear()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lokin/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokin/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokin/Buffer;->clone()Lokin/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokin/Buffer;
    .registers 7

    new-instance v0, Lokin/Buffer;

    invoke-direct {v0}, Lokin/Buffer;-><init>()V

    iget-wide v1, p0, Lokin/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    iget-object v1, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-virtual {v1}, Lokin/Segment;->sharedCopy()Lokin/Segment;

    move-result-object v1

    iput-object v1, v0, Lokin/Buffer;->head:Lokin/Segment;

    iput-object v1, v1, Lokin/Segment;->prev:Lokin/Segment;

    iput-object v1, v1, Lokin/Segment;->next:Lokin/Segment;

    iget-object v1, p0, Lokin/Buffer;->head:Lokin/Segment;

    :goto_1c
    iget-object v1, v1, Lokin/Segment;->next:Lokin/Segment;

    iget-object v2, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-eq v1, v2, :cond_2e

    iget-object v2, v0, Lokin/Buffer;->head:Lokin/Segment;

    iget-object v2, v2, Lokin/Segment;->prev:Lokin/Segment;

    invoke-virtual {v1}, Lokin/Segment;->sharedCopy()Lokin/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokin/Segment;->push(Lokin/Segment;)Lokin/Segment;

    goto :goto_1c

    :cond_2e
    iget-wide v1, p0, Lokin/Buffer;->size:J

    iput-wide v1, v0, Lokin/Buffer;->size:J

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public final completeSegmentByteCount()J
    .registers 6

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    :cond_9
    iget-object v2, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget-object v2, v2, Lokin/Segment;->prev:Lokin/Segment;

    iget v3, v2, Lokin/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1c

    iget-boolean v4, v2, Lokin/Segment;->owner:Z

    if-eqz v4, :cond_1c

    iget v2, v2, Lokin/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1c
    return-wide v0
.end method

.method public final copyTo(Lokin/Buffer;JJ)Lokin/Buffer;
    .registers 14

    if-eqz p1, :cond_5d

    iget-wide v0, p0, Lokin/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    :cond_10
    iget-wide v2, p1, Lokin/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lokin/Buffer;->size:J

    iget-object v2, p0, Lokin/Buffer;->head:Lokin/Segment;

    :goto_17
    iget v3, v2, Lokin/Segment;->limit:I

    iget v4, v2, Lokin/Segment;->pos:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_28

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lokin/Segment;->next:Lokin/Segment;

    goto :goto_17

    :cond_28
    :goto_28
    cmp-long v3, p4, v0

    if-lez v3, :cond_5c

    invoke-virtual {v2}, Lokin/Segment;->sharedCopy()Lokin/Segment;

    move-result-object v3

    iget v4, v3, Lokin/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Lokin/Segment;->pos:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lokin/Segment;->limit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lokin/Segment;->limit:I

    iget-object p2, p1, Lokin/Buffer;->head:Lokin/Segment;

    if-nez p2, :cond_4c

    iput-object v3, v3, Lokin/Segment;->prev:Lokin/Segment;

    iput-object v3, v3, Lokin/Segment;->next:Lokin/Segment;

    iput-object v3, p1, Lokin/Buffer;->head:Lokin/Segment;

    goto :goto_51

    :cond_4c
    iget-object p2, p2, Lokin/Segment;->prev:Lokin/Segment;

    invoke-virtual {p2, v3}, Lokin/Segment;->push(Lokin/Segment;)Lokin/Segment;

    :goto_51
    iget p2, v3, Lokin/Segment;->limit:I

    iget p3, v3, Lokin/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object v2, v2, Lokin/Segment;->next:Lokin/Segment;

    move-wide p2, v0

    goto :goto_28

    :cond_5c
    return-object p0

    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method public emitCompleteSegments()Lokin/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokin/BufferedSink;
    .registers 2

    invoke-virtual {p0}, Lokin/Buffer;->emitCompleteSegments()Lokin/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lokin/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lokin/Buffer;

    iget-wide v3, p0, Lokin/Buffer;->size:J

    iget-wide v5, p1, Lokin/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget-object p1, p1, Lokin/Buffer;->head:Lokin/Segment;

    iget v3, v1, Lokin/Segment;->pos:I

    iget v4, p1, Lokin/Segment;->pos:I

    :goto_24
    iget-wide v7, p0, Lokin/Buffer;->size:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_61

    iget v7, v1, Lokin/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lokin/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_36
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_4f

    iget-object v10, v1, Lokin/Segment;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lokin/Segment;->data:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    :cond_4f
    iget v9, v1, Lokin/Segment;->limit:I

    if-ne v3, v9, :cond_57

    iget-object v1, v1, Lokin/Segment;->next:Lokin/Segment;

    iget v3, v1, Lokin/Segment;->pos:I

    :cond_57
    iget v9, p1, Lokin/Segment;->limit:I

    if-ne v4, v9, :cond_5f

    iget-object p1, p1, Lokin/Segment;->next:Lokin/Segment;

    iget v4, p1, Lokin/Segment;->pos:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public exhausted()Z
    .registers 6

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public final getByte(J)B
    .registers 9

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    iget-wide v0, p0, Lokin/Buffer;->size:J

    sub-long v2, v0, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_27

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    :goto_12
    iget v1, v0, Lokin/Segment;->limit:I

    iget v2, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_23

    iget-object v0, v0, Lokin/Segment;->data:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1

    :cond_23
    sub-long/2addr p1, v3

    iget-object v0, v0, Lokin/Segment;->next:Lokin/Segment;

    goto :goto_12

    :cond_27
    sub-long/2addr p1, v0

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    :cond_2a
    iget-object v0, v0, Lokin/Segment;->prev:Lokin/Segment;

    iget v1, v0, Lokin/Segment;->limit:I

    iget v2, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2a

    iget-object v0, v0, Lokin/Segment;->data:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lokin/Segment;->pos:I

    iget v3, v0, Lokin/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lokin/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lokin/Segment;->next:Lokin/Segment;

    iget-object v2, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public indexOf(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokin/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 21

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_7f

    cmp-long v3, p4, p2

    if-ltz v3, :cond_7f

    iget-wide v3, v0, Lokin/Buffer;->size:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_13

    move-wide v5, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v5, p4

    :goto_15
    const-wide/16 v7, -0x1

    cmp-long v9, p2, v5

    if-nez v9, :cond_1c

    return-wide v7

    :cond_1c
    iget-object v9, v0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v9, :cond_21

    return-wide v7

    :cond_21
    sub-long v10, v3, p2

    cmp-long v12, v10, p2

    if-gez v12, :cond_35

    :goto_27
    cmp-long v1, v3, p2

    if-lez v1, :cond_45

    iget-object v9, v9, Lokin/Segment;->prev:Lokin/Segment;

    iget v1, v9, Lokin/Segment;->limit:I

    iget v2, v9, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_27

    :cond_35
    :goto_35
    iget v3, v9, Lokin/Segment;->limit:I

    iget v4, v9, Lokin/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v10, v3, p2

    if-gez v10, :cond_44

    iget-object v9, v9, Lokin/Segment;->next:Lokin/Segment;

    move-wide v1, v3

    goto :goto_35

    :cond_44
    move-wide v3, v1

    :cond_45
    move-wide/from16 v1, p2

    :goto_47
    cmp-long v10, v3, v5

    if-gez v10, :cond_7e

    iget-object v10, v9, Lokin/Segment;->data:[B

    iget v11, v9, Lokin/Segment;->limit:I

    int-to-long v11, v11

    iget v13, v9, Lokin/Segment;->pos:I

    int-to-long v13, v13

    add-long/2addr v13, v5

    sub-long/2addr v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    iget v11, v9, Lokin/Segment;->pos:I

    int-to-long v13, v11

    add-long/2addr v13, v1

    sub-long/2addr v13, v3

    long-to-int v1, v13

    :goto_60
    if-ge v1, v12, :cond_71

    aget-byte v2, v10, v1

    move/from16 v11, p1

    if-ne v2, v11, :cond_6e

    iget v2, v9, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v3

    return-wide v1

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_71
    move/from16 v11, p1

    iget v1, v9, Lokin/Segment;->limit:I

    iget v2, v9, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v3, v1

    iget-object v9, v9, Lokin/Segment;->next:Lokin/Segment;

    move-wide v1, v3

    goto :goto_47

    :cond_7e
    return-wide v7

    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lokin/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a7

    :goto_a6
    throw v1

    :goto_a7
    goto :goto_a6
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lokin/Buffer$2;

    invoke-direct {v0, p0}, Lokin/Buffer$2;-><init>(Lokin/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public rangeEquals(JLokin/ByteString;)Z
    .registers 10

    invoke-virtual {p3}, Lokin/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokin/Buffer;->rangeEquals(JLokin/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokin/ByteString;II)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    iget-wide v1, p0, Lokin/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_32

    invoke-virtual {p3}, Lokin/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p5, :cond_30

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokin/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokin/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokin/Segment;->limit:I

    iget v3, v0, Lokin/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lokin/Segment;->data:[B

    iget v3, v0, Lokin/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lokin/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Lokin/Segment;->pos:I

    iget-wide v2, p0, Lokin/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokin/Buffer;->size:J

    iget v2, v0, Lokin/Segment;->limit:I

    if-ne p1, v2, :cond_32

    invoke-virtual {v0}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object p1

    iput-object p1, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v0}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    :cond_32
    return v1
.end method

.method public read([BII)I
    .registers 11

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    :cond_d
    iget v1, v0, Lokin/Segment;->limit:I

    iget v2, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lokin/Segment;->data:[B

    iget v2, v0, Lokin/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Lokin/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokin/Segment;->pos:I

    iget-wide v1, p0, Lokin/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokin/Buffer;->size:J

    iget p2, v0, Lokin/Segment;->limit:I

    if-ne p1, p2, :cond_35

    invoke-virtual {v0}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object p1

    iput-object p1, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v0}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    :cond_35
    return p3
.end method

.method public read(Lokin/Buffer;J)J
    .registers 9

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    iget-wide v2, p0, Lokin/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lokin/Buffer;->write(Lokin/Buffer;J)V

    return-wide p2

    :cond_1a
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

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 10

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget-object v2, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget v3, v2, Lokin/Segment;->pos:I

    iget v4, v2, Lokin/Segment;->limit:I

    iget-object v5, v2, Lokin/Segment;->data:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lokin/Buffer;->size:J

    if-ne v6, v4, :cond_25

    invoke-virtual {v2}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v0

    iput-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v2}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_27

    :cond_25
    iput v6, v2, Lokin/Segment;->pos:I

    :goto_27
    return v3

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lokin/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokin/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 9

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_16

    long-to-int p2, p1

    new-array p1, p2, [B

    invoke-virtual {p0, p1}, Lokin/Buffer;->readFully([B)V

    return-object p1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()Lokin/ByteString;
    .registers 3

    new-instance v0, Lokin/ByteString;

    invoke-virtual {p0}, Lokin/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokin/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokin/ByteString;
    .registers 4

    new-instance v0, Lokin/ByteString;

    invoke-virtual {p0, p1, p2}, Lokin/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokin/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lokin/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c6

    const-wide v1, -0xcccccccccccccccL

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14
    iget-object v10, v0, Lokin/Buffer;->head:Lokin/Segment;

    iget-object v11, v10, Lokin/Segment;->data:[B

    iget v12, v10, Lokin/Segment;->pos:I

    iget v13, v10, Lokin/Segment;->limit:I

    :goto_1c
    if-ge v12, v13, :cond_9f

    aget-byte v15, v11, v12

    const/16 v14, 0x30

    if-lt v15, v14, :cond_6c

    const/16 v14, 0x39

    if-gt v15, v14, :cond_6c

    rsub-int/lit8 v14, v15, 0x30

    cmp-long v16, v3, v1

    if-ltz v16, :cond_3f

    cmp-long v16, v3, v1

    if-nez v16, :cond_38

    int-to-long v1, v14

    cmp-long v16, v1, v5

    if-gez v16, :cond_38

    goto :goto_3f

    :cond_38
    const-wide/16 v1, 0xa

    mul-long v3, v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_76

    :cond_3f
    :goto_3f
    new-instance v1, Lokin/Buffer;

    invoke-direct {v1}, Lokin/Buffer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lokin/Buffer;->writeDecimalLong(J)Lokin/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    move-result-object v1

    if-nez v8, :cond_51

    invoke-virtual {v1}, Lokin/Buffer;->readByte()B

    :cond_51
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokin/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6c
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_80

    if-nez v7, :cond_80

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    const/4 v8, 0x1

    :goto_76
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    const-wide v1, -0xcccccccccccccccL

    goto :goto_1c

    :cond_80
    if-eqz v7, :cond_84

    const/4 v9, 0x1

    goto :goto_9f

    :cond_84
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9f
    :goto_9f
    if-ne v12, v13, :cond_ab

    invoke-virtual {v10}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v1

    iput-object v1, v0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v10}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_ad

    :cond_ab
    iput v12, v10, Lokin/Segment;->pos:I

    :goto_ad
    if-nez v9, :cond_bb

    iget-object v1, v0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v1, :cond_b4

    goto :goto_bb

    :cond_b4
    const-wide v1, -0xcccccccccccccccL

    goto/16 :goto_14

    :cond_bb
    :goto_bb
    iget-wide v1, v0, Lokin/Buffer;->size:J

    int-to-long v5, v7

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lokin/Buffer;->size:J

    if-eqz v8, :cond_c4

    goto :goto_c5

    :cond_c4
    neg-long v3, v3

    :goto_c5
    return-wide v3

    :cond_c6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_d0

    :goto_cf
    throw v1

    :goto_d0
    goto :goto_cf
.end method

.method public readFully([B)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokin/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 16

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ac

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    :cond_b
    iget-object v6, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget-object v7, v6, Lokin/Segment;->data:[B

    iget v8, v6, Lokin/Segment;->pos:I

    iget v9, v6, Lokin/Segment;->limit:I

    :goto_13
    if-ge v8, v9, :cond_91

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_3a

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2f

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2f

    add-int/lit8 v11, v10, -0x61

    :goto_2c
    add-int/lit8 v11, v11, 0xa

    goto :goto_3a

    :cond_2f
    const/16 v11, 0x41

    if-lt v10, v11, :cond_72

    const/16 v11, 0x46

    if-gt v10, v11, :cond_72

    add-int/lit8 v11, v10, -0x41

    goto :goto_2c

    :goto_3a
    const-wide/high16 v12, -0x1000000000000000L  # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_4a

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_4a
    new-instance v0, Lokin/Buffer;

    invoke-direct {v0}, Lokin/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokin/Buffer;->writeHexadecimalUnsignedLong(J)Lokin/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokin/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    if-eqz v0, :cond_76

    const/4 v1, 0x1

    goto :goto_91

    :cond_76
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    :goto_91
    if-ne v8, v9, :cond_9d

    invoke-virtual {v6}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v7

    iput-object v7, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v6}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_9f

    :cond_9d
    iput v8, v6, Lokin/Segment;->pos:I

    :goto_9f
    if-nez v1, :cond_a5

    iget-object v6, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v6, :cond_b

    :cond_a5
    iget-wide v1, p0, Lokin/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lokin/Buffer;->size:J

    return-wide v4

    :cond_ac
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b6

    :goto_b5
    throw v0

    :goto_b6
    goto :goto_b5
.end method

.method public readInt()I
    .registers 11

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6a

    iget-object v4, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget v5, v4, Lokin/Segment;->pos:I

    iget v6, v4, Lokin/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_35

    invoke-virtual {p0}, Lokin/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lokin/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokin/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokin/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_35
    iget-object v7, v4, Lokin/Segment;->data:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    if-ne v9, v6, :cond_67

    invoke-virtual {v4}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v0

    iput-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v4}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_69

    :cond_67
    iput v9, v4, Lokin/Segment;->pos:I

    :goto_69
    return v5

    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokin/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntLe()I
    .registers 2

    invoke-virtual {p0}, Lokin/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokin/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 11

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_48

    iget-object v4, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget v5, v4, Lokin/Segment;->pos:I

    iget v6, v4, Lokin/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_24

    invoke-virtual {p0}, Lokin/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokin/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_24
    iget-object v7, v4, Lokin/Segment;->data:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    if-ne v9, v6, :cond_44

    invoke-virtual {v4}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v0

    iput-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v4}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_46

    :cond_44
    iput v9, v4, Lokin/Segment;->pos:I

    :goto_46
    int-to-short v0, v5

    return v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokin/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShortLe()S
    .registers 2

    invoke-virtual {p0}, Lokin/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokin/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_6a

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_53

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    const-string p1, ""

    return-object p1

    :cond_1a
    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget v1, v0, Lokin/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lokin/Segment;->limit:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_31

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokin/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_31
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lokin/Segment;->data:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lokin/Segment;->pos:I

    int-to-long v3, p3

    add-long/2addr v3, p1

    long-to-int p3, v3

    iput p3, v0, Lokin/Segment;->pos:I

    iget-wide v3, p0, Lokin/Buffer;->size:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lokin/Buffer;->size:J

    iget p1, v0, Lokin/Segment;->limit:I

    if-ne p3, p1, :cond_52

    invoke-virtual {v0}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object p1

    iput-object p1, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v0}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    :cond_52
    return-object v2

    :cond_53
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lokin/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokin/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lokin/Buffer;->size:J

    sget-object v2, Lokin/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokin/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lokin/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokin/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1c

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lokin/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    invoke-virtual {p0, v2, v3}, Lokin/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokin/Buffer;->skip(J)V

    return-object p1

    :cond_1c
    invoke-virtual {p0, p1, p2}, Lokin/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lokin/Buffer;->skip(J)V

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokin/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_92

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_12

    goto :goto_14

    :cond_12
    add-long v2, p1, v0

    :goto_14
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lokin/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_29

    invoke-virtual {p0, v4, v5}, Lokin/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    invoke-virtual {p0}, Lokin/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_48

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lokin/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, v2, v3}, Lokin/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, v2, v3}, Lokin/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_48
    new-instance v6, Lokin/Buffer;

    invoke-direct {v6}, Lokin/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    invoke-virtual {p0}, Lokin/Buffer;->size()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokin/Buffer;->copyTo(Lokin/Buffer;JJ)Lokin/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokin/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lokin/Buffer;->readByteString()Lokin/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokin/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(J)V
    .registers 6

    iget-wide v0, p0, Lokin/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final size()J
    .registers 3

    iget-wide v0, p0, Lokin/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 9

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_37

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-eqz v0, :cond_31

    iget v1, v0, Lokin/Segment;->limit:I

    iget v0, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-wide v2, p0, Lokin/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokin/Buffer;->size:J

    sub-long/2addr p1, v4

    iget-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    iget v2, v0, Lokin/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokin/Segment;->pos:I

    iget v1, v0, Lokin/Segment;->limit:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v1

    iput-object v1, p0, Lokin/Buffer;->head:Lokin/Segment;

    invoke-static {v0}, Lokin/SegmentPool;->recycle(Lokin/Segment;)V

    goto :goto_0

    :cond_31
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_37
    return-void
.end method

.method public final snapshot()Lokin/ByteString;
    .registers 6

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lokin/Buffer;->snapshot(I)Lokin/ByteString;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokin/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final snapshot(I)Lokin/ByteString;
    .registers 3

    if-nez p1, :cond_5

    sget-object p1, Lokin/ByteString;->EMPTY:Lokin/ByteString;

    return-object p1

    :cond_5
    new-instance v0, Lokin/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokin/SegmentedByteString;-><init>(Lokin/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    sget-object v0, Lokin/Timeout;->NONE:Lokin/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lokin/Buffer;->snapshot()Lokin/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokin/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokin/Segment;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    iget-object v1, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v1, :cond_16

    invoke-static {}, Lokin/SegmentPool;->take()Lokin/Segment;

    move-result-object p1

    iput-object p1, p0, Lokin/Buffer;->head:Lokin/Segment;

    iput-object p1, p1, Lokin/Segment;->prev:Lokin/Segment;

    iput-object p1, p1, Lokin/Segment;->next:Lokin/Segment;

    return-object p1

    :cond_16
    iget-object v1, v1, Lokin/Segment;->prev:Lokin/Segment;

    iget v2, v1, Lokin/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean p1, v1, Lokin/Segment;->owner:Z

    if-nez p1, :cond_29

    :cond_21
    invoke-static {}, Lokin/SegmentPool;->take()Lokin/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokin/Segment;->push(Lokin/Segment;)Lokin/Segment;

    move-result-object v1

    :cond_29
    return-object v1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_24

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v2

    iget v3, v2, Lokin/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lokin/Segment;->data:[B

    iget v5, v2, Lokin/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lokin/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokin/Segment;->limit:I

    goto :goto_7

    :cond_24
    iget-wide v1, p0, Lokin/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokin/Buffer;->size:J

    return v0

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method public write(Lokin/ByteString;)Lokin/Buffer;
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lokin/ByteString;->write(Lokin/Buffer;)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lokin/Buffer;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokin/Buffer;->write([BII)Lokin/Buffer;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lokin/Buffer;
    .registers 13

    if-eqz p1, :cond_30

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lokin/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lokin/Segment;->data:[B

    iget v3, v0, Lokin/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Lokin/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokin/Segment;->limit:I

    goto :goto_b

    :cond_2a
    iget-wide p1, p0, Lokin/Buffer;->size:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lokin/Buffer;->size:J

    return-object p0

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_39
    throw p1

    :goto_3a
    goto :goto_39
.end method

.method public bridge synthetic write([B)Lokin/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lokin/Buffer;->write([B)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokin/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lokin/Buffer;->write([BII)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokin/Buffer;J)V
    .registers 11

    if-eqz p1, :cond_8e

    if-eq p1, p0, :cond_85

    iget-wide v0, p1, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_84

    iget-object v0, p1, Lokin/Buffer;->head:Lokin/Segment;

    iget v1, v0, Lokin/Segment;->limit:I

    iget v2, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_56

    iget-object v1, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-eqz v1, :cond_25

    iget-object v1, v1, Lokin/Segment;->prev:Lokin/Segment;

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_4f

    iget-boolean v2, v1, Lokin/Segment;->owner:Z

    if-eqz v2, :cond_4f

    iget v2, v1, Lokin/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokin/Segment;->shared:Z

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    goto :goto_38

    :cond_36
    iget v4, v1, Lokin/Segment;->pos:I

    :goto_38
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4f

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokin/Segment;->writeTo(Lokin/Segment;I)V

    iget-wide v0, p1, Lokin/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokin/Buffer;->size:J

    iget-wide v0, p0, Lokin/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    return-void

    :cond_4f
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokin/Segment;->split(I)Lokin/Segment;

    move-result-object v0

    iput-object v0, p1, Lokin/Buffer;->head:Lokin/Segment;

    :cond_56
    iget-object v0, p1, Lokin/Buffer;->head:Lokin/Segment;

    iget v1, v0, Lokin/Segment;->limit:I

    iget v2, v0, Lokin/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lokin/Segment;->pop()Lokin/Segment;

    move-result-object v3

    iput-object v3, p1, Lokin/Buffer;->head:Lokin/Segment;

    iget-object v3, p0, Lokin/Buffer;->head:Lokin/Segment;

    if-nez v3, :cond_6f

    iput-object v0, p0, Lokin/Buffer;->head:Lokin/Segment;

    iput-object v0, v0, Lokin/Segment;->prev:Lokin/Segment;

    iput-object v0, v0, Lokin/Segment;->next:Lokin/Segment;

    goto :goto_78

    :cond_6f
    iget-object v3, v3, Lokin/Segment;->prev:Lokin/Segment;

    invoke-virtual {v3, v0}, Lokin/Segment;->push(Lokin/Segment;)Lokin/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lokin/Segment;->compact()V

    :goto_78
    iget-wide v3, p1, Lokin/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lokin/Buffer;->size:J

    iget-wide v3, p0, Lokin/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokin/Buffer;->size:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_84
    return-void

    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method public writeAll(Lokin/Source;)J
    .registers 9

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method public writeByte(I)Lokin/Buffer;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v0

    iget-object v1, v0, Lokin/Segment;->data:[B

    iget v2, v0, Lokin/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokin/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokin/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lokin/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_20

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1f

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeUtf8(Ljava/lang/String;)Lokin/Buffer;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_6c

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_4a

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_3e

    cmp-long v4, p1, v6

    if-gez v4, :cond_3b

    goto/16 :goto_e4

    :cond_3b
    const/4 v3, 0x2

    goto/16 :goto_e4

    :cond_3e
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_47

    const/4 v3, 0x3

    goto/16 :goto_e4

    :cond_47
    const/4 v3, 0x4

    goto/16 :goto_e4

    :cond_4a
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_5e

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_5b

    const/4 v3, 0x5

    goto/16 :goto_e4

    :cond_5b
    const/4 v3, 0x6

    goto/16 :goto_e4

    :cond_5e
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_68

    const/4 v3, 0x7

    goto/16 :goto_e4

    :cond_68
    const/16 v3, 0x8

    goto/16 :goto_e4

    :cond_6c
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_9a

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_8b

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_88

    const/16 v3, 0x9

    goto :goto_e4

    :cond_88
    const/16 v3, 0xa

    goto :goto_e4

    :cond_8b
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_97

    const/16 v3, 0xb

    goto :goto_e4

    :cond_97
    const/16 v3, 0xc

    goto :goto_e4

    :cond_9a
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_be

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_af

    const/16 v3, 0xd

    goto :goto_e4

    :cond_af
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_bb

    const/16 v3, 0xe

    goto :goto_e4

    :cond_bb
    const/16 v3, 0xf

    goto :goto_e4

    :cond_be
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d6

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d3

    const/16 v3, 0x10

    goto :goto_e4

    :cond_d3
    const/16 v3, 0x11

    goto :goto_e4

    :cond_d6
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e2

    const/16 v3, 0x12

    goto :goto_e4

    :cond_e2
    const/16 v3, 0x13

    :goto_e4
    if-eqz v2, :cond_e8

    add-int/lit8 v3, v3, 0x1

    :cond_e8
    invoke-virtual {p0, v3}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v4

    iget-object v5, v4, Lokin/Segment;->data:[B

    iget v8, v4, Lokin/Segment;->limit:I

    add-int/2addr v8, v3

    :goto_f1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_102

    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lokin/Buffer;->DIGITS:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    div-long/2addr p1, v6

    goto :goto_f1

    :cond_102
    if-eqz v2, :cond_10a

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v5, v8

    :cond_10a
    iget p1, v4, Lokin/Segment;->limit:I

    add-int/2addr p1, v3

    iput p1, v4, Lokin/Segment;->limit:I

    iget-wide p1, p0, Lokin/Buffer;->size:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokin/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokin/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokin/Buffer;->writeDecimalLong(J)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokin/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v2

    iget-object v3, v2, Lokin/Segment;->data:[B

    iget v4, v2, Lokin/Segment;->limit:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-lt v5, v4, :cond_35

    sget-object v6, Lokin/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    :cond_35
    iget p1, v2, Lokin/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lokin/Segment;->limit:I

    iget-wide p1, p0, Lokin/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokin/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokin/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokin/Buffer;->writeHexadecimalUnsignedLong(J)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lokin/Buffer;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v0

    iget-object v1, v0, Lokin/Segment;->data:[B

    iget v2, v0, Lokin/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lokin/Segment;->limit:I

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokin/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeInt(I)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lokin/Buffer;
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v0

    iget-object v1, v0, Lokin/Segment;->data:[B

    iget v2, v0, Lokin/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lokin/Segment;->limit:I

    iget-wide v0, p0, Lokin/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokin/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeShort(I)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokin/Buffer;
    .registers 6

    if-eqz p1, :cond_8b

    if-ltz p2, :cond_74

    if-lt p3, p2, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    sget-object v0, Lokin/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Lokin/Buffer;->writeUtf8(Ljava/lang/String;II)Lokin/Buffer;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lokin/Buffer;->write([BII)Lokin/Buffer;

    move-result-object p1

    return-object p1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokin/Buffer;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokin/Buffer;->writeUtf8(Ljava/lang/String;II)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokin/Buffer;
    .registers 11

    if-eqz p1, :cond_125

    if-ltz p2, :cond_10e

    if-lt p3, p2, :cond_ef

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_cc

    :goto_c
    if-ge p2, p3, :cond_cb

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4c

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokin/Buffer;->writableSegment(I)Lokin/Segment;

    move-result-object v2

    iget-object v3, v2, Lokin/Segment;->data:[B

    iget v4, v2, Lokin/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    iget p2, v2, Lokin/Segment;->limit:I

    sub-int/2addr v4, p2

    add-int/2addr p2, v4

    iput p2, v2, Lokin/Segment;->limit:I

    iget-wide v0, p0, Lokin/Buffer;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokin/Buffer;->size:J

    move p2, v6

    goto :goto_c

    :cond_4c
    const/16 v2, 0x800

    if-ge v0, v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    :goto_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_60
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b6

    const v2, 0xdfff

    if-le v0, v2, :cond_6d

    goto :goto_b6

    :cond_6d
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_76

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    const v6, 0xdbff

    if-gt v0, v6, :cond_b0

    const v6, 0xdc00

    if-lt v5, v6, :cond_b0

    if-le v5, v2, :cond_84

    goto :goto_b0

    :cond_84
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    :cond_b0
    :goto_b0
    invoke-virtual {p0, v3}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    move p2, v4

    goto/16 :goto_c

    :cond_b6
    :goto_b6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    goto :goto_5d

    :cond_cb
    return-object p0

    :cond_cc
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_ef
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_12f

    :goto_12e
    throw p1

    :goto_12f
    goto :goto_12e
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokin/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeUtf8(Ljava/lang/String;)Lokin/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokin/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    goto :goto_60

    :cond_8
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1b

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    goto :goto_60

    :cond_1b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_41

    const v1, 0xd800

    if-lt p1, v1, :cond_2d

    const v1, 0xdfff

    if-gt p1, v1, :cond_2d

    invoke-virtual {p0, v2}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    goto :goto_60

    :cond_2d
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    goto :goto_60

    :cond_41
    const v1, 0x10ffff

    if-gt p1, v1, :cond_61

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    :goto_60
    return-object p0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
