.class public Lcom/gold/youtube/om7753/streams/WebMWriter;
.super Ljava/lang/Object;
.source "WebMWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private clustersOffsetsSizes:Ljava/util/ArrayList;

.field private done:Z

.field private infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

.field private outBuffer:[B

.field private outByteBuffer:Ljava/nio/ByteBuffer;

.field private parsed:Z

.field private readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

.field private readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

.field private readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

.field private sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private written:J


# direct methods
.method public varargs constructor <init>([Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->done:Z

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

    array-length v0, p1

    new-array v0, v0, [Lcom/gold/youtube/om7753/streams/WebMReader;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    array-length p1, p1

    new-array p1, p1, [Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    return-void
.end method

.method private dump(Ljava/util/ArrayList;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([B)V

    iget-wide v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    goto :goto_4

    :cond_1b
    return-void
.end method

.method private dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    return-void
.end method

.method private dump([BLcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 4

    array-length v0, p1

    invoke-direct {p0, p1, v0, p2}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private encode(JZ)[B
    .registers 20

    move-wide/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_4
    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    const/4 v6, 0x7

    if-gt v3, v6, :cond_19

    long-to-double v6, v0

    mul-int/lit8 v8, v3, 0x7

    int-to-double v8, v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v10, v6, v8

    if-gez v10, :cond_16

    goto :goto_1a

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_19
    const/4 v3, -0x1

    :goto_1a
    if-lt v3, v2, :cond_66

    long-to-double v6, v0

    mul-int/lit8 v2, v3, 0x7

    int-to-double v8, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v4, v8

    cmpl-double v2, v6, v4

    if-nez v2, :cond_2d

    add-int/lit8 v3, v3, 0x1

    :cond_2d
    add-int v2, p3, v3

    new-array v2, v2, [B

    int-to-float v4, v3

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v4, v5

    const/high16 v5, 0x41000000  # 8.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x0

    move v8, v6

    const/4 v9, 0x0

    :goto_43
    const/16 v10, 0x80

    if-ltz v8, :cond_5e

    ushr-long v11, v0, v9

    if-nez p3, :cond_53

    int-to-long v13, v8

    cmp-long v15, v13, v4

    if-nez v15, :cond_53

    ushr-int/2addr v10, v6

    int-to-long v13, v10

    or-long/2addr v11, v13

    :cond_53
    add-int v10, p3, v8

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v2, v10

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x8

    goto :goto_43

    :cond_5e
    if-eqz p3, :cond_65

    or-int/lit16 v0, v3, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    :cond_65
    return-object v2

    :cond_66
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Can\'t encode a number of bigger than 7 bytes"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method

.method private getNextBlockFrom(I)Lcom/gold/youtube/om7753/streams/WebMWriter$Block;
    .registers 8

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->getNextSegment()Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    aget-object v0, v0, p1

    if-nez v0, :cond_18

    return-object v2

    :cond_18
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    aget-object v1, v0, p1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->getNextCluster()Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    aget-object v0, v0, p1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    aput-object v2, v0, p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->getNextBlockFrom(I)Lcom/gold/youtube/om7753/streams/WebMWriter$Block;

    move-result-object p1

    return-object p1

    :cond_37
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->getNextSimpleBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    aput-object v2, v0, p1

    new-instance p1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;

    invoke-direct {p1}, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;-><init>()V

    return-object p1

    :cond_4b
    new-instance v1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;-><init>()V

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    iput-object v2, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    iget v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    iput v2, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->dataSize:I

    iput p1, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->trackNumber:I

    iget-byte p1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->flags:B

    iput-byte p1, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->flags:B

    iget-wide v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    return-object v1
.end method

.method private lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_15
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private makeCluster(Lcom/gold/youtube/om7753/streams/io/SharpStream;JJZ)J
    .registers 11

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_1d

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;

    iget-wide v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    sub-long/2addr v2, p4

    const-wide/16 p4, 0x8

    sub-long/2addr v2, p4

    long-to-int p4, v2

    iput p4, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;->size:I

    :cond_1d
    iget-wide p4, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    if-eqz p6, :cond_48

    const/4 p6, 0x4

    new-array p6, p6, [B

    fill-array-data p6, :array_4a

    invoke-direct {p0, p6, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BLcom/gold/youtube/om7753/streams/io/SharpStream;)V

    new-instance p6, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;

    invoke-direct {p6}, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;-><init>()V

    iget-wide v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    iput-wide v1, p6, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;->offset:J

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p6, 0x5

    new-array p6, p6, [B

    fill-array-data p6, :array_50

    invoke-direct {p0, p6, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BLcom/gold/youtube/om7753/streams/io/SharpStream;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BLcom/gold/youtube/om7753/streams/io/SharpStream;)V

    :cond_48
    return-wide p4

    nop

    :array_4a
    .array-data 1
        0x1ft
        0x43t
        -0x4at
        0x75t
    .end array-data

    :array_50
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
        -0x19t
    .end array-data
.end method

.method private makeCuePoint(ILcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;[B)I
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/16 v3, -0x45

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [B

    const/16 v3, -0x4d

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->duration:J

    invoke-direct {p0, v2, v3, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeCueTrackPosition(ILcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    invoke-static {v0, v4, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr p2, v0

    goto :goto_36

    :cond_49
    return p2
.end method

.method private makeCueTrackPosition(ILcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/16 v3, -0x49

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [B

    const/16 v3, -0x9

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v1

    int-to-long v2, p1

    invoke-direct {p0, v2, v3, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [B

    const/16 v2, -0xf

    aput-byte v2, p1, v4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->clusterPosition:J

    invoke-direct {p0, v2, v3, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->relativePosition:I

    if-lez p1, :cond_51

    new-array p1, v1, [B

    const/16 v2, -0x10

    aput-byte v2, p1, v4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->relativePosition:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private makeEBML(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 3

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    invoke-direct {p0, v0, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BLcom/gold/youtube/om7753/streams/io/SharpStream;)V

    return-void

    nop

    :array_c
    .array-data 1
        0x1at
        0x45t
        -0x21t
        -0x5dt
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x42t
        -0x7at
        -0x7ft
        0x1t
        0x42t
        -0x9t
        -0x7ft
        0x1t
        0x42t
        -0xet
        -0x7ft
        0x4t
        0x42t
        -0xdt
        -0x7ft
        0x8t
        0x42t
        -0x7et
        -0x7ct
        0x77t
        0x65t
        0x62t
        0x6dt
        0x42t
        -0x79t
        -0x7ft
        0x2t
        0x42t
        -0x7bt
        -0x7ft
        0x2t
    .end array-data
.end method

.method private makeEbmlVoid(Lcom/gold/youtube/om7753/streams/io/SharpStream;IZ)V
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/16 v2, -0x13e0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, -0x4

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    if-eqz p3, :cond_2b

    add-int/lit8 p2, p2, -0x4

    :goto_1b
    if-lez p2, :cond_2b

    iget-object p3, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    array-length p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    invoke-direct {p0, v0, p3, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    sub-int/2addr p2, p3

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method private makeTrackEntry(ILcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;)Ljava/util/ArrayList;
    .registers 12

    const/4 v0, 0x1

    add-int/2addr p1, v0

    int-to-long v1, p1

    invoke-direct {p0, v1, v2, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-array v2, v0, [B

    const/16 v3, -0x52

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [B

    const/16 v3, -0x29

    aput-byte v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v3, v2, [B

    fill-array-data v3, :array_106

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    new-array v3, p1, [B

    fill-array-data v3, :array_10c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_112

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v0, [B

    const/16 v5, -0x7a

    aput-byte v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v5, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecDelay:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_71

    new-array v3, v2, [B

    fill-array-data v3, :array_11a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecDelay:J

    invoke-direct {p0, v5, v6, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-wide v5, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->seekPreRoll:J

    cmp-long v3, v5, v7

    if-ltz v3, :cond_88

    new-array v3, v2, [B

    fill-array-data v3, :array_120

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->seekPreRoll:J

    invoke-direct {p0, v5, v6, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    new-array v3, v0, [B

    const/16 v5, -0x7d

    aput-byte v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    int-to-long v5, v3

    invoke-direct {p0, v5, v6, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v3, v5, v7

    if-ltz v3, :cond_b2

    new-array p1, p1, [B

    fill-array-data p1, :array_126

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    invoke-direct {p0, v5, v6, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    iget p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    if-eq p1, v0, :cond_b8

    if-ne p1, v2, :cond_e1

    :cond_b8
    iget-object p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->valid([B)Z

    move-result p1

    if-eqz p1, :cond_e1

    new-array p1, v0, [B

    iget v3, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    if-ne v3, v0, :cond_c9

    const/16 v0, 0xe0

    goto :goto_cb

    :cond_c9
    const/16 v0, 0xe1

    :goto_cb
    int-to-byte v0, v0

    aput-byte v0, p1, v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->bMetadata:[B

    array-length p1, p1

    int-to-long v5, p1

    invoke-direct {p0, v5, v6, v4}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    iget-object p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->valid([B)Z

    move-result p1

    if-eqz p1, :cond_101

    new-array p1, v2, [B

    fill-array-data p1, :array_12c

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    array-length p1, p1

    int-to-long v2, p1

    invoke-direct {p0, v2, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :array_106
    .array-data 1
        0x73t
        -0x3bt
    .end array-data

    nop

    :array_10c
    .array-data 1
        -0x64t
        -0x7ft
        0x0t
    .end array-data

    :array_112
    .array-data 1
        0x22t
        -0x4bt
        -0x64t
        -0x7dt
        0x75t
        0x6et
        0x64t
    .end array-data

    :array_11a
    .array-data 1
        0x56t
        -0x56t
    .end array-data

    nop

    :array_120
    .array-data 1
        0x56t
        -0x45t
    .end array-data

    nop

    :array_126
    .array-data 1
        0x23t
        -0x1dt
        -0x7dt
    .end array-data

    :array_12c
    .array-data 1
        0x63t
        -0x5et
    .end array-data
.end method

.method private makeTracks()Ljava/util/ArrayList;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_14
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    array-length v3, v2

    if-ge v1, v3, :cond_25

    aget-object v2, v2, v1

    invoke-direct {p0, v1, v2}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeTrackEntry(ILcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :array_2a
    .array-data 1
        0x16t
        0x54t
        -0x52t
        0x6bt
    .end array-data
.end method

.method private seekTo(Lcom/gold/youtube/om7753/streams/io/SharpStream;J)V
    .registers 7

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    goto :goto_1c

    :cond_a
    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_16

    sub-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->skip(J)J

    goto :goto_1c

    :cond_16
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->rewind()V

    invoke-virtual {p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->skip(J)J

    :goto_1c
    iput-wide p2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    return-void
.end method

.method private selectTrackForCue()I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v5, :cond_1c

    aget-object v4, v4, v1

    iget v4, v4, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v4, v7, :cond_17

    if-eq v4, v6, :cond_14

    goto :goto_19

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_17
    add-int/lit8 v3, v3, 0x1

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1c
    array-length v1, v4

    if-ne v2, v1, :cond_20

    goto :goto_2a

    :cond_20
    array-length v1, v4

    if-ne v3, v1, :cond_25

    :goto_23
    const/4 v6, 0x1

    goto :goto_2a

    :cond_25
    if-lez v3, :cond_28

    goto :goto_23

    :cond_28
    if-lez v2, :cond_3a

    :goto_2a
    const/4 v1, 0x0

    :goto_2b
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    array-length v3, v2

    if-ge v1, v3, :cond_3a

    aget-object v2, v2, v1

    iget v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    if-ne v6, v2, :cond_37

    return v1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3a
    return v0
.end method

.method private valid([B)Z
    .registers 2

    if-eqz p1, :cond_7

    array-length p1, p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private writeBlock(Lcom/gold/youtube/om7753/streams/io/SharpStream;Lcom/gold/youtube/om7753/streams/WebMWriter$Block;J)V
    .registers 10

    iget-wide v0, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    sub-long/2addr v0, p3

    const-wide/16 p3, -0x8000

    cmp-long v2, v0, p3

    if-ltz v2, :cond_79

    const-wide/16 p3, 0x7fff

    cmp-long v2, v0, p3

    if-gtz v2, :cond_79

    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p4, 0x1

    new-array v2, p4, [B

    const/16 v3, -0x5d

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->trackNumber:I

    add-int/2addr v2, p4

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v1, v0

    int-to-short v0, v1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, p4, [B

    iget-byte v1, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->flags:B

    aput-byte v1, v0, v4

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->dataSize:I

    :goto_4c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5d

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_5d
    int-to-long v0, v0

    invoke-direct {p0, v0, v1, v4}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump(Ljava/util/ArrayList;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    :goto_68
    iget-object p3, p2, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    iget-object p4, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {p3, p4}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_78

    iget-object p4, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    invoke-direct {p0, p4, p3, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    goto :goto_68

    :cond_78
    return-void

    :cond_79
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "SimpleBlock timecode overflow."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_82

    :goto_81
    throw p1

    :goto_82
    goto :goto_81
.end method

.method private writeInt(Lcom/gold/youtube/om7753/streams/io/SharpStream;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->seekTo(Lcom/gold/youtube/om7753/streams/io/SharpStream;J)V

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    const/4 p3, 0x4

    invoke-direct {p0, p2, p3, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 59

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_2db

    invoke-direct/range {p0 .. p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeEBML(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    iget-wide v0, v7, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    const-wide/16 v9, 0x5

    add-long v11, v0, v9

    const-wide/16 v2, 0x5e

    add-long v13, v0, v2

    const-wide/16 v2, 0x3a

    add-long v4, v0, v2

    const-wide/16 v2, 0x4b

    add-long/2addr v2, v0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_2e6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v9, v7, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v9, v6

    const/16 v1, 0x43

    new-array v1, v1, [B

    fill-array-data v1, :array_2f0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_316

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v6, 0xf4240

    const/4 v1, 0x1

    move-object/from16 v15, p0

    invoke-direct {v15, v6, v7, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->encode(JZ)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x7

    new-array v6, v7, [B

    fill-array-data v6, :array_31e

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeTracks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {v15, v0, v8}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump(Ljava/util/ArrayList;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    iget-wide v6, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    const v0, 0xffff

    invoke-direct {v15, v8, v0, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeEbmlVoid(Lcom/gold/youtube/om7753/streams/io/SharpStream;IZ)V

    iget-object v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    array-length v1, v0

    new-array v1, v1, [I

    array-length v0, v0

    move-wide/from16 v19, v6

    new-array v6, v0, [J

    move/from16 v21, v0

    const/4 v7, 0x0

    :goto_83
    iget-object v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-wide/from16 v22, v2

    array-length v2, v0

    const/16 v26, -0x1

    const-wide/16 v27, -0x1

    const-wide/16 v29, 0x0

    if-ge v7, v2, :cond_b3

    aget-object v2, v0, v7

    iget-wide v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v24, v2, v29

    if-gez v24, :cond_9b

    aput v26, v1, v7

    goto :goto_ac

    :cond_9b
    aget-object v0, v0, v7

    iget-wide v2, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    long-to-float v0, v2

    const v2, 0x49742400  # 1000000.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    aput v0, v1, v7

    :goto_ac
    aput-wide v27, v6, v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v2, v22

    goto :goto_83

    :cond_b3
    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->selectTrackForCue()I

    move-result v7

    iget-object v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->trackType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c3

    move-wide/from16 v24, v27

    goto :goto_c5

    :cond_c3
    move-wide/from16 v24, v29

    :goto_c5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v31, v3

    iget-wide v2, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    long-to-int v3, v2

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x1

    move/from16 v2, v21

    move-object/from16 v0, p0

    move-object/from16 v37, v1

    move-object/from16 v1, p1

    move/from16 v40, v2

    move/from16 v42, v3

    move-wide/from16 v38, v22

    move-object/from16 v41, v31

    move-wide/from16 v2, v32

    move-wide/from16 v43, v4

    move-wide/from16 v4, v34

    move-wide/from16 v31, v13

    move-wide/from16 v45, v19

    const/4 v13, 0x0

    move-object v14, v6

    move/from16 v6, v36

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeCluster(Lcom/gold/youtube/om7753/streams/io/SharpStream;JJZ)J

    move-result-wide v0

    const v2, 0x7fffffff

    move-wide v4, v0

    move v1, v7

    move-wide/from16 v18, v27

    move-wide/from16 v16, v29

    const/4 v0, -0x1

    :goto_103
    if-lez v2, :cond_1fa

    move-wide/from16 v2, v16

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_10a
    iget-object v13, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    array-length v13, v13

    if-ge v6, v13, :cond_1ed

    invoke-direct {v15, v6}, Lcom/gold/youtube/om7753/streams/WebMWriter;->getNextBlockFrom(I)Lcom/gold/youtube/om7753/streams/WebMWriter$Block;

    move-result-object v13

    if-nez v13, :cond_118

    add-int/lit8 v6, v6, 0x1

    goto :goto_10a

    :cond_118
    move/from16 v17, v1

    iget-object v1, v13, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    if-nez v1, :cond_12a

    add-int/lit8 v0, v6, 0x1

    move/from16 v1, v17

    const/16 v16, 0x1

    move/from16 v55, v6

    move v6, v0

    move/from16 v0, v55

    goto :goto_10a

    :cond_12a
    const-wide/16 v34, 0x64

    if-ne v0, v6, :cond_148

    iget-wide v2, v13, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    add-long v18, v2, v34

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide/from16 v47, v11

    move v11, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeCluster(Lcom/gold/youtube/om7753/streams/io/SharpStream;JJZ)J

    move-result-wide v4

    move v1, v11

    move-wide/from16 v49, v18

    const/4 v0, -0x1

    goto :goto_14f

    :cond_148
    move-wide/from16 v47, v11

    move v11, v6

    move/from16 v1, v17

    move-wide/from16 v49, v18

    :goto_14f
    if-ne v7, v11, :cond_19a

    cmp-long v6, v24, v27

    move v12, v7

    if-lez v6, :cond_15c

    iget-wide v6, v13, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    cmp-long v17, v6, v24

    if-gez v17, :cond_166

    :cond_15c
    cmp-long v6, v24, v29

    if-gez v6, :cond_193

    invoke-virtual {v13}, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->isKeyframe()Z

    move-result v6

    if-eqz v6, :cond_193

    :cond_166
    cmp-long v6, v24, v27

    if-lez v6, :cond_16e

    const-wide/16 v6, 0x1388

    add-long v24, v24, v6

    :cond_16e
    move/from16 v36, v0

    move-wide/from16 v6, v24

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;

    move-wide/from16 v51, v6

    iget-wide v6, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    move/from16 v53, v11

    move/from16 v54, v12

    iget-wide v11, v13, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    move-object/from16 v17, v0

    move-wide/from16 v18, v9

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v11

    invoke-direct/range {v17 .. v25}, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;-><init>(JJJJ)V

    move-object/from16 v7, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v24, v51

    goto :goto_1a2

    :cond_193
    move/from16 v36, v0

    move/from16 v53, v11

    move/from16 v54, v12

    goto :goto_1a0

    :cond_19a
    move/from16 v36, v0

    move/from16 v54, v7

    move/from16 v53, v11

    :goto_1a0
    move-object/from16 v7, v41

    :goto_1a2
    invoke-direct {v15, v8, v13, v2, v3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->writeBlock(Lcom/gold/youtube/om7753/streams/io/SharpStream;Lcom/gold/youtube/om7753/streams/WebMWriter$Block;J)V

    add-int/lit8 v16, v16, 0x1

    aget v0, v37, v53

    if-gez v0, :cond_1ba

    aget-wide v11, v14, v53

    cmp-long v0, v11, v29

    if-ltz v0, :cond_1ba

    iget-wide v11, v13, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    aget-wide v17, v14, v53

    sub-long v11, v11, v17

    long-to-int v0, v11

    aput v0, v37, v53

    :cond_1ba
    iget-wide v11, v13, Lcom/gold/youtube/om7753/streams/WebMWriter$Block;->absoluteTimecode:J

    aput-wide v11, v14, v53

    cmp-long v0, v49, v29

    if-gez v0, :cond_1d0

    add-long v18, v11, v34

    move-object/from16 v41, v7

    move/from16 v0, v36

    move-wide/from16 v11, v47

    move/from16 v6, v53

    :goto_1cc
    move/from16 v7, v54

    goto/16 :goto_10a

    :cond_1d0
    cmp-long v0, v11, v49

    if-ltz v0, :cond_1e1

    move/from16 v0, v53

    if-eq v1, v0, :cond_1de

    sub-long v11, v11, v49

    sub-long v34, v34, v11

    add-long v49, v49, v34

    :cond_1de
    add-int/lit8 v6, v0, 0x1

    goto :goto_1e4

    :cond_1e1
    move/from16 v0, v53

    move v6, v0

    :goto_1e4
    move-wide/from16 v18, v49

    move-object/from16 v41, v7

    move/from16 v0, v36

    move-wide/from16 v11, v47

    goto :goto_1cc

    :cond_1ed
    move/from16 v17, v1

    move/from16 v54, v7

    const/4 v13, 0x0

    move-wide/from16 v55, v2

    move/from16 v2, v16

    move-wide/from16 v16, v55

    goto/16 :goto_103

    :cond_1fa
    move/from16 v54, v7

    move-wide/from16 v47, v11

    move-object/from16 v7, v41

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeCluster(Lcom/gold/youtube/om7753/streams/io/SharpStream;JJZ)J

    iget-wide v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->written:J

    sub-long v0, v0, v47

    const-wide/16 v2, 0x7

    sub-long/2addr v0, v2

    move-wide/from16 v2, v47

    invoke-direct {v15, v8, v2, v3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->seekTo(Lcom/gold/youtube/om7753/streams/io/SharpStream;J)V

    iget-object v2, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2, v1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    move-wide/from16 v0, v29

    move/from16 v2, v40

    const/4 v6, 0x0

    :goto_228
    if-ge v6, v2, :cond_241

    aget v3, v37, v6

    if-lez v3, :cond_236

    aget-wide v3, v14, v6

    aget v5, v37, v6

    int-to-long v11, v5

    add-long/2addr v3, v11

    aput-wide v3, v14, v6

    :cond_236
    aget-wide v3, v14, v6

    cmp-long v5, v3, v0

    if-lez v5, :cond_23e

    aget-wide v0, v14, v6

    :cond_23e
    add-int/lit8 v6, v6, 0x1

    goto :goto_228

    :cond_241
    move-wide/from16 v3, v31

    invoke-direct {v15, v8, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMWriter;->seekTo(Lcom/gold/youtube/om7753/streams/io/SharpStream;J)V

    iget-object v2, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    long-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    const/4 v1, 0x4

    invoke-direct {v15, v0, v1, v8}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    move/from16 v0, v42

    int-to-long v0, v0

    sub-long/2addr v0, v9

    long-to-int v1, v0

    move-wide/from16 v2, v43

    invoke-direct {v15, v8, v2, v3, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->writeInt(Lcom/gold/youtube/om7753/streams/io/SharpStream;JI)V

    move-wide/from16 v0, v45

    invoke-direct {v15, v8, v0, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->seekTo(Lcom/gold/youtube/om7753/streams/io/SharpStream;J)V

    const/4 v2, 0x7

    new-array v3, v2, [B

    fill-array-data v3, :array_326

    invoke-direct {v15, v3, v8}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BLcom/gold/youtube/om7753/streams/io/SharpStream;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_270
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_299

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;

    iget-object v4, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    move/from16 v5, v54

    invoke-direct {v15, v5, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeCuePoint(ILcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;[B)I

    move-result v3

    add-int v4, v6, v3

    add-int/lit8 v7, v4, 0x7

    const/4 v11, 0x4

    add-int/2addr v7, v11

    const v12, 0xffff

    if-le v7, v12, :cond_290

    goto :goto_29c

    :cond_290
    int-to-short v6, v4

    iget-object v4, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    invoke-direct {v15, v4, v3, v8}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    move/from16 v54, v5

    goto :goto_270

    :cond_299
    const v12, 0xffff

    :goto_29c
    sub-int v2, v12, v6

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v15, v8, v2, v3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->makeEbmlVoid(Lcom/gold/youtube/om7753/streams/io/SharpStream;IZ)V

    const-wide/16 v4, 0x5

    add-long/2addr v4, v0

    invoke-direct {v15, v8, v4, v5}, Lcom/gold/youtube/om7753/streams/WebMWriter;->seekTo(Lcom/gold/youtube/om7753/streams/io/SharpStream;J)V

    iget-object v2, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v2, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    const/4 v3, 0x2

    invoke-direct {v15, v2, v3, v8}, Lcom/gold/youtube/om7753/streams/WebMWriter;->dump([BILcom/gold/youtube/om7753/streams/io/SharpStream;)V

    sub-long v6, v0, v9

    long-to-int v0, v6

    move-wide/from16 v1, v38

    invoke-direct {v15, v8, v1, v2, v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->writeInt(Lcom/gold/youtube/om7753/streams/io/SharpStream;JI)V

    iget-object v0, v15, Lcom/gold/youtube/om7753/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;

    iget-wide v2, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;->offset:J

    iget v1, v1, Lcom/gold/youtube/om7753/streams/WebMWriter$ClusterInfo;->size:I

    const/high16 v4, 0x10000000

    or-int/2addr v1, v4

    invoke-direct {v15, v8, v2, v3, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->writeInt(Lcom/gold/youtube/om7753/streams/io/SharpStream;JI)V

    goto :goto_2c3

    :cond_2da
    return-void

    :cond_2db
    move-object v15, v7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output stream must be allow seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2e5

    :goto_2e4
    throw v0

    :goto_2e5
    goto :goto_2e4

    :array_2e6
    .array-data 1
        0x18t
        0x53t
        -0x80t
        0x67t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2f0
    .array-data 1
        0x11t
        0x4dt
        -0x65t
        0x74t
        -0x42t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x15t
        0x49t
        -0x57t
        0x66t
        0x53t
        -0x54t
        -0x7ft
        0x43t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x16t
        0x54t
        -0x52t
        0x6bt
        0x53t
        -0x54t
        -0x7ft
        0x56t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ft
        0x43t
        -0x4at
        0x75t
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_316
    .array-data 1
        0x15t
        0x49t
        -0x57t
        0x66t
        -0x72t
        0x2at
        -0x29t
        -0x4ft
    .end array-data

    :array_31e
    .array-data 1
        0x44t
        -0x77t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_326
    .array-data 1
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public close()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->done:Z

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outBuffer:[B

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->outByteBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->clustersOffsetsSizes:Ljava/util/ArrayList;

    return-void
.end method

.method public getTracksFromSource(I)[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
    .registers 3

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->done:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->getAvailableTracks()[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "All sources must be parsed first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseSources()V
    .registers 6

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->done:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x1

    :try_start_a
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    array-length v3, v2

    if-ge v0, v3, :cond_24

    new-instance v3, Lcom/gold/youtube/om7753/streams/WebMReader;

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/streams/WebMReader;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/WebMReader;->parse()V
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    return-void

    :catchall_27
    move-exception v0

    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :goto_3b
    throw v0

    :goto_3c
    goto :goto_3b
.end method

.method public varargs selectTracks([I)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    array-length v2, v1

    new-array v2, v2, [Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    array-length v1, v1

    new-array v1, v1, [Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersCluster:[Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    array-length v3, v2

    if-ge v1, v3, :cond_2e

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->infoTracks:[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    aget-object v2, v2, v1

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/gold/youtube/om7753/streams/WebMReader;->selectTrack(I)Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readersSegment:[Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->readers:[Lcom/gold/youtube/om7753/streams/WebMReader;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/WebMReader;->getNextSegment()Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_31

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2e
    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    return-void

    :catchall_31
    move-exception p1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/WebMWriter;->parsed:Z

    goto :goto_36

    :goto_35
    throw p1

    :goto_36
    goto :goto_35
.end method
