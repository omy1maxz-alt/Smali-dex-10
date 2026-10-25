.class public Lcom/gold/youtube/om7753/streams/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# instance fields
.field private position:J

.field private final primitive:[S

.field private final readBuffer:[B

.field private readCount:I

.field private readOffset:I

.field private final stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private view:Ljava/io/InputStream;

.field private viewSize:I


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    const/16 v0, 0x8

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->primitive:[S

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    array-length p1, v0

    iput p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/gold/youtube/om7753/streams/DataReader;)I
    .registers 1

    iget p0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    return p0
.end method

.method static synthetic access$002(Lcom/gold/youtube/om7753/streams/DataReader;I)I
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    return p1
.end method

.method static synthetic access$010(Lcom/gold/youtube/om7753/streams/DataReader;)I
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    return v0
.end method

.method static synthetic access$020(Lcom/gold/youtube/om7753/streams/DataReader;I)I
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    return v0
.end method

.method private fillBuffer()Z
    .registers 6

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    const/4 v1, 0x1

    if-gez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1e

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    if-ge v0, v1, :cond_1c

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    return v1

    :cond_1c
    iput v4, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    :cond_1e
    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    if-ge v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method private primitiveRead(I)V
    .registers 6

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/gold/youtube/om7753/streams/DataReader;->read([BII)I

    move-result v2

    if-ne v2, p1, :cond_18

    :goto_9
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/DataReader;->primitive:[S

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-void

    :cond_18
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated stream, missing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :goto_35
    throw v0

    :goto_36
    goto :goto_35
.end method


# virtual methods
.method public available()Z
    .registers 6

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->available()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public canRewind()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRewind()Z

    move-result v0

    return v0
.end method

.method public getView(I)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->view:Ljava/io/InputStream;

    if-nez v0, :cond_b

    new-instance v0, Lcom/gold/youtube/om7753/streams/DataReader$1;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/streams/DataReader$1;-><init>(Lcom/gold/youtube/om7753/streams/DataReader;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->view:Ljava/io/InputStream;

    :cond_b
    iput p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->view:Ljava/io/InputStream;

    return-object p1
.end method

.method public position()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    return-wide v0
.end method

.method public read()I
    .registers 5

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/DataReader;->fillBuffer()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    iget v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gold/youtube/om7753/streams/DataReader;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 8

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    if-gez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-lt p3, v2, :cond_2c

    if-lez v0, :cond_1f

    iget v2, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    iget v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iput v3, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([BII)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_50

    :cond_2c
    :goto_2c
    if-lez p3, :cond_4f

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/DataReader;->fillBuffer()Z

    move-result v0

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    iget v2, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    iget v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v3, v0

    goto :goto_2c

    :cond_4f
    move v1, v3

    :goto_50
    iget-wide p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    return v1
.end method

.method public readInt()I
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/DataReader;->primitiveRead(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->primitive:[S

    const/4 v1, 0x0

    aget-short v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-short v0, v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .registers 7

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/DataReader;->primitiveRead(I)V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/DataReader;->primitive:[S

    const/4 v2, 0x0

    aget-short v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-short v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-short v3, v1, v3

    shl-int/2addr v3, v0

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-short v3, v1, v3

    or-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x4

    aget-short v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x5

    aget-short v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-short v5, v1, v5

    shl-int/lit8 v0, v5, 0x8

    or-int/2addr v0, v4

    const/4 v4, 0x7

    aget-short v1, v1, v4

    or-int/2addr v0, v1

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort()S
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/DataReader;->primitiveRead(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->primitive:[S

    const/4 v1, 0x0

    aget-short v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-short v0, v0, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedInt()J
    .registers 5

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/DataReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public rewind()V
    .registers 10

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->rewind()V

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    iget v2, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    int-to-long v3, v2

    sub-long v3, v0, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_16

    iput v5, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    goto :goto_1b

    :cond_16
    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->viewSize:I

    :goto_1b
    iput-wide v6, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    iput v5, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    return-void
.end method

.method public skipBytes(J)J
    .registers 9

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    if-gez v0, :cond_7

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_7
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->skip(J)J

    move-result-wide p1

    goto :goto_31

    :cond_10
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-lez v3, :cond_1f

    long-to-int v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    iget v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    goto :goto_31

    :cond_1f
    int-to-long v1, v0

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/DataReader;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    int-to-long v4, v0

    sub-long/2addr p1, v4

    invoke-virtual {v3, p1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->skip(J)J

    move-result-wide p1

    add-long/2addr p1, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readCount:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->readOffset:I

    :goto_31
    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/DataReader;->position:J

    return-wide p1
.end method
