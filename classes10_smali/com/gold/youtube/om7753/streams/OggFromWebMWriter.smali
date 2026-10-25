.class public Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;
.super Ljava/lang/Object;
.source "OggFromWebMWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final crc32Table:[I

.field private done:Z

.field private final output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private packetFlag:B

.field private parsed:Z

.field private final segmentTable:[B

.field private segmentTableNextTimestamp:J

.field private segmentTableSize:S

.field private sequenceCount:I

.field private final source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private final streamId:I

.field private webm:Lcom/gold/youtube/om7753/streams/WebMReader;

.field private webmBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

.field private webmBlockLastTimecode:J

.field private webmBlockNearDuration:J

.field private webmCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

.field private webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

.field private webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->done:Z

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    iput v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->sequenceCount:I

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->packetFlag:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    iput-wide v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    iput-short v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    const/16 v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTable:[B

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->crc32Table:[I

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRead()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_58

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->streamId:I

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->populateCrc32Table()V

    return-void

    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output stream must be writable and allows seeking"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source stream must be readable and allows seeking"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addPacketSegment(I)Z
    .registers 9

    const v0, 0xfe01

    if-gt p1, v0, :cond_42

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTable:[B

    array-length v0, v0

    iget-short v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    sub-int/2addr v0, v1

    const/16 v1, 0xff

    mul-int/lit16 v0, v0, 0xff

    rem-int/lit16 v2, p1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_1c

    add-int/lit16 v0, v0, -0xff

    :cond_1c
    if-ge v0, p1, :cond_1f

    return v3

    :cond_1f
    :goto_1f
    if-lez p1, :cond_34

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTable:[B

    iget-short v5, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    add-int/lit8 v6, v5, 0x1

    int-to-short v6, v6

    iput-short v6, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit16 p1, p1, -0xff

    goto :goto_1f

    :cond_34
    if-eqz v2, :cond_41

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTable:[B

    iget-short v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    aput-byte v3, p1, v0

    :cond_41
    return v4

    :cond_42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "page size cannot be larger than 65025"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method private addPacketSegment(Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;)Z
    .registers 7

    iget-wide v0, p1, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-wide v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecDelay:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iget p1, p1, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    move-result p1

    return p1
.end method

.method private calcCrc32(I[BI)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_16

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 p1, p1, 0x8

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->crc32Table:[I

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    aget v1, v2, v1

    xor-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return p1
.end method

.method private clearSegmentTable()V
    .registers 5

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->packetFlag:B

    iput-short v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    return-void
.end method

.method private getNextBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/WebMReader;->getNextSegment()Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->getNextCluster()Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    if-nez v0, :cond_2c

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->getNextBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object v0

    return-object v0

    :cond_2c
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;->getNextSimpleBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object v0

    if-nez v0, :cond_3b

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmCluster:Lcom/gold/youtube/om7753/streams/WebMReader$Cluster;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->getNextBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object v0

    return-object v0

    :cond_3b
    iget-wide v1, v0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    iget-wide v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    iput-wide v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    return-object v0
.end method

.method private getSampleFrequencyFromTrack([B)F
    .registers 4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1d

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xb584

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private makeMetadata()[B
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    const-string v1, "A_OPUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    const-string v1, "A_VORBIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    return-object v0

    :cond_28
    const/4 v0, 0x0

    return-object v0

    :array_2a
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_36
    .array-data 1
        0x3t
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private makePacketheader(JLjava/nio/ByteBuffer;[B)I
    .registers 7

    const v0, 0x5367674f

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->packetFlag:B

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->streamId:I

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->sequenceCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->sequenceCount:I

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    int-to-byte p1, p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTable:[B

    iget-short p2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    invoke-virtual {p3, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-short p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableSize:S

    add-int/lit8 p1, p1, 0x1b

    int-to-short p1, p1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->clearSegmentTable()V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->calcCrc32(I[BI)I

    move-result p1

    if-eqz p4, :cond_54

    array-length p2, p4

    invoke-direct {p0, p1, p4, p2}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->calcCrc32(I[BI)I

    move-result p1

    const/16 p2, 0x16

    invoke-virtual {p3, p2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide p2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    const-wide/32 v0, 0x3b9aca00

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    :cond_54
    return p1
.end method

.method private populateCrc32Table()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x100

    if-ge v1, v2, :cond_28

    shl-int/lit8 v2, v1, 0x18

    const/4 v3, 0x0

    :goto_9
    const/16 v4, 0x8

    if-ge v3, v4, :cond_21

    ushr-int/lit8 v4, v2, 0x1f

    int-to-long v4, v4

    shl-int/lit8 v2, v2, 0x1

    const-wide v6, 0x100000000L

    sub-long/2addr v6, v4

    long-to-int v4, v6

    const v5, 0x4c11db7

    and-int/2addr v4, v5

    xor-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_21
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->crc32Table:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public build()V
    .registers 12

    const v0, 0xfe1c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter$1;->$SwitchMap$com$gold$youtube$streams$WebMReader$TrackKind:[I

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x2

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-wide v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3b

    const/high16 v6, 0x447a0000  # 1000.0f

    long-to-float v2, v2

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$Segment;->info:Lcom/gold/youtube/om7753/streams/WebMReader$Info;

    iget-wide v7, v3, Lcom/gold/youtube/om7753/streams/WebMReader$Info;->timecodeScale:J

    long-to-float v3, v7

    div-float/2addr v2, v3

    div-float/2addr v6, v2

    goto :goto_58

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "missing default frame time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->getSampleFrequencyFromTrack([B)F

    move-result v6

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_112

    :goto_58
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    if-eqz v2, :cond_75

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-direct {p0, v4, v5, v0, v2}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-object v3, v3, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-virtual {v2, v3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([B)V

    :cond_75
    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->makeMetadata()[B

    move-result-object v2

    if-eqz v2, :cond_8a

    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    invoke-direct {p0, v4, v5, v0, v2}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v3, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([B)V

    :cond_8a
    :goto_8a
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    if-eqz v2, :cond_111

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->getNextBlock()Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    move-result-object v2

    if-eqz v2, :cond_b0

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->addPacketSegment(Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v7, v2, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget v9, v2, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    invoke-virtual {v7, v8, v3, v9}, Ljava/io/InputStream;->read([BII)I

    iget v2, v2, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->dataSize:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8a

    :cond_b0
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iget-wide v7, v3, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecDelay:J

    long-to-double v7, v7

    if-nez v2, :cond_d6

    const/4 v9, 0x4

    iput-byte v9, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->packetFlag:B

    iget-wide v9, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    long-to-double v9, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    iget-wide v9, v3, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    cmp-long v3, v9, v4

    if-lez v3, :cond_cf

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_df

    :cond_cf
    iget-wide v9, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_df

    :cond_d6
    iget-wide v9, v2, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    long-to-double v9, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    :goto_df
    add-double/2addr v7, v9

    const-wide v9, 0x41cdcd6500000000L  # 1.0E9

    div-double/2addr v7, v9

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-long v7, v7

    const/4 v3, 0x0

    invoke-direct {p0, v7, v8, v0, v3}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-direct {p0, v3, v7, v8}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->calcCrc32(I[BI)I

    move-result v3

    const/16 v7, 0x16

    invoke-virtual {v0, v7, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmBlock:Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;

    goto/16 :goto_8a

    :cond_111
    return-void

    :cond_112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot get the audio sample rate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_11b

    :goto_11a
    throw v0

    :goto_11b
    goto :goto_11a
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->done:Z

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->flush()V

    :cond_17
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->output:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    return-void
.end method

.method public parseSource()V
    .registers 4

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->done:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :try_start_9
    new-instance v1, Lcom/gold/youtube/om7753/streams/WebMReader;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/streams/WebMReader;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->parse()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->getNextSegment()Lcom/gold/youtube/om7753/streams/WebMReader$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmSegment:Lcom/gold/youtube/om7753/streams/WebMReader$Segment;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_20

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    return-void

    :catchall_20
    move-exception v1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    throw v1

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrack(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->done:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    if-nez v0, :cond_3d

    sget-object v0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter$1;->$SwitchMap$com$gold$youtube$streams$WebMReader$TrackKind:[I

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/WebMReader;->getAvailableTracks()[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_25

    goto :goto_2e

    :cond_25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "the track must an audio or video stream"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webm:Lcom/gold/youtube/om7753/streams/WebMReader;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/WebMReader;->selectTrack(I)Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->webmTrack:Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_39

    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    return-void

    :catchall_39
    move-exception p1

    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parsed:Z

    throw p1

    :cond_3d
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "tracks already selected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    new-instance p1, Ljava/io/IOException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source must be parsed first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
