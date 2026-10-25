.class public Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;
.super Ljava/lang/Object;
.source "Mp4FromDashWriter.java"


# instance fields
.field private auxBuffer:Ljava/nio/ByteBuffer;

.field private final compatibleBrands:Ljava/util/ArrayList;

.field private done:Z

.field private lastWriteOffset:J

.field private moovSimulation:Z

.field private outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private overrideMainBrand:I

.field private parsed:Z

.field private readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

.field private readersChunks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

.field private sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field private final time:J

.field private tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

.field private writeOffset:J


# direct methods
.method public varargs constructor <init>([Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->done:Z

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parsed:Z

    iput v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->overrideMainBrand:I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    array-length v1, p1

    :goto_1a
    if-ge v0, v1, :cond_36

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRewind()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_33

    :cond_2b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "All sources must be readable and allow rewind"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_36
    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

    array-length p1, p1

    new-array p1, p1, [Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length p1, p1

    new-array p1, p1, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readersChunks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7c25b080

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->time:J

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    const v0, 0x6d703431

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    const v0, 0x69736f6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    const v0, 0x69736f32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private auxOffset()I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    long-to-int v1, v0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    :goto_c
    return v1
.end method

.method private auxSeek(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_14

    :cond_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_11

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outSeek(J)V

    goto :goto_14

    :cond_11
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_14
    return-void
.end method

.method private auxSkip(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_1c

    :cond_b
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_14

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outSkip(J)V

    goto :goto_1c

    :cond_14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1c
    return-void
.end method

.method private auxWrite(I)V
    .registers 3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    return-void
.end method

.method private auxWrite([B)V
    .registers 6

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_18

    :cond_c
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_15

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outWrite([BI)V

    goto :goto_18

    :cond_15
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_18
    return-void
.end method

.method private getNextSample(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readersChunks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->getNextChunk(Z)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readersChunks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v0, v0, p1

    if-nez v0, :cond_19

    return-object v2

    :cond_19
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readersChunks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->getNextSample()Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readersChunks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    aput-object v2, v0, p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->getNextSample(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;

    move-result-object p1

    return-object p1

    :cond_2c
    return-object v0
.end method

.method private initChunkTables(Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;II)V
    .registers 11

    iget v0, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    sub-int/2addr v0, p2

    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput v4, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    if-eq p2, p3, :cond_1c

    add-int v5, v4, v4

    iput v5, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    :cond_1c
    if-eqz v1, :cond_23

    iget v5, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    add-int/2addr v5, v4

    iput v5, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    :cond_23
    iget v5, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    aput v4, v5, v3

    aput p2, v5, v4

    const/4 p1, 0x2

    aput v4, v5, p1

    if-eq p2, p3, :cond_41

    const/4 p2, 0x4

    aput p1, v5, v6

    const/4 p1, 0x5

    aput p3, v5, p2

    const/4 v6, 0x6

    aput v4, v5, p1

    :cond_41
    if-eqz v1, :cond_4e

    add-int/lit8 p1, v6, 0x1

    aput v2, v5, v6

    add-int/lit8 p2, p1, 0x1

    rem-int/2addr v0, p3

    aput v0, v5, p1

    aput v4, v5, p2

    :cond_4e
    return-void
.end method

.method private lengthFor(I)I
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v0

    sub-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v1, :cond_a

    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxSeek(I)V

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite(I)V

    add-int/lit8 p1, v0, -0x4

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxSkip(I)V

    return v0
.end method

.method private make(IIII)I
    .registers 8

    mul-int p3, p3, p4

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 v0, p3, 0x10

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v1

    if-ltz p2, :cond_e

    add-int/lit8 v0, v0, 0x4

    :cond_e
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    if-ltz p2, :cond_2f

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite(I)V

    :cond_2f
    invoke-direct {p0, p4}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite(I)V

    invoke-direct {p0, p3}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxSkip(I)V

    add-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private makeFtyp()I
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->overrideMainBrand:I

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, 0x4

    :cond_10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v2, 0x66747970

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->overrideMainBrand:I

    const v3, 0x6d703432

    if-nez v2, :cond_2d

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_37

    :cond_2d
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_37
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3d

    :cond_51
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outWrite([B)V

    return v0
.end method

.method private makeHdlr(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;)[B
    .registers 4

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->type:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->subType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;->bReserved:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x21t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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

.method private makeMdat(JZ)[B
    .registers 6

    if-eqz p3, :cond_5

    const-wide/16 v0, 0x10

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x8

    :goto_7
    add-long/2addr p1, v0

    if-eqz p3, :cond_d

    const/16 v0, 0x10

    goto :goto_f

    :cond_d
    const/16 v0, 0x8

    :goto_f
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    long-to-int v1, p1

    :goto_18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x6d646174

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_28

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private makeMdia(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;ZZ)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v3

    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_ec

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v5, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->mdhd:[B

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v5, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->hdlr:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeHdlr(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Hdlr;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v5

    new-array v6, v4, [B

    fill-array-data v6, :array_f4

    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v6, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->minf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;

    iget-object v6, v6, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;->mhd:[B

    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v6, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->minf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;

    iget-object v6, v6, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;->dinf:[B

    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v6

    new-array v4, v4, [B

    fill-array-data v4, :array_fc

    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->minf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Minf;->stblStsd:[B

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-boolean v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    const v7, 0x7374636f

    const v8, 0x63747473

    const v9, 0x7374737a

    const/4 v10, 0x3

    const v11, 0x73747363

    const v12, 0x73747373

    const v13, 0x73747473

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_95

    invoke-direct {v0, v13, v4, v14, v15}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_73

    invoke-direct {v0, v12, v4, v15, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    :cond_73
    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v1, :cond_7a

    invoke-direct {v0, v8, v4, v14, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    :cond_7a
    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    invoke-direct {v0, v11, v4, v10, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    iget v8, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v9, v1, v15, v8}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    if-eqz p3, :cond_8b

    const v7, 0x636f3634

    :cond_8b
    if-eqz p3, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v14, 0x1

    :goto_8f
    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    invoke-direct {v0, v7, v4, v14, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    goto :goto_d2

    :cond_95
    invoke-direct {v0, v13, v4, v14, v15}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_a5

    invoke-direct {v0, v12, v4, v15, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    :cond_a5
    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v1, :cond_af

    invoke-direct {v0, v8, v4, v14, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    :cond_af
    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    invoke-direct {v0, v11, v4, v10, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    iget v8, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v9, v1, v15, v8}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-eqz p3, :cond_c6

    const v7, 0x636f3634

    :cond_c6
    if-eqz p3, :cond_c9

    goto :goto_ca

    :cond_c9
    const/4 v14, 0x1

    :goto_ca
    iget v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    invoke-direct {v0, v7, v4, v14, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    :goto_d2
    if-eqz p4, :cond_e1

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeSgpd()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeSbgp()I

    move-result v1

    iput v1, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    :cond_e1
    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lengthFor(I)I

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lengthFor(I)I

    invoke-direct {v0, v3}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lengthFor(I)I

    return-void

    nop

    :array_ec
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x64t
        0x69t
        0x61t
    .end array-data

    :array_f4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x69t
        0x6et
        0x66t
    .end array-data

    :array_fc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x62t
        0x6ct
    .end array-data
.end method

.method private makeMoov([I[Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;Z)I
    .registers 15

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v7

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_8e

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    array-length v0, v0

    new-array v8, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v0, :cond_4d

    iget-object v5, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v6, v5, v4

    iget-object v6, v6, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v6, v6, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-wide v9, v6, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->duration:J

    long-to-double v9, v9

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v5, v5, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->mdia:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    iget v5, v5, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->mdhdTimeScale:I

    int-to-double v5, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v5

    const-wide v5, 0x408f400000000000L  # 1000.0

    mul-double v9, v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-long v5, v5

    aput-wide v5, v8, v4

    aget-wide v5, v8, v4

    cmp-long v9, v5, v2

    if-lez v9, :cond_4a

    aget-wide v2, v8, v4

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_4d
    invoke-direct {p0, v2, v3}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeMvhd(J)V

    const/4 v9, 0x0

    :goto_51
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    array-length v1, v0

    if-ge v9, v1, :cond_89

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->matrix:[B

    array-length v0, v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_72

    aget-wide v2, v8, v9

    aget v4, p1, v9

    aget-object v5, p2, v9

    move-object v0, p0

    move v1, v9

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeTrak(IJILcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad track matrix length (expected 36) in track n°"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    invoke-direct {p0, v7}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lengthFor(I)I

    move-result v0

    return v0

    :array_8e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x6ft
        0x6ft
        0x76t
    .end array-data
.end method

.method private makeMvhd(J)V
    .registers 6

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_54

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 p1, 0x34

    new-array p1, p1, [B

    fill-array-data p1, :array_5e

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 p1, 0x18

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    return-void

    :array_54
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x78t
        0x6dt
        0x76t
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5e
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private makeSbgp()I
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v0

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_12

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/lit8 v0, v0, 0x14

    return v0

    nop

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x73t
        0x62t
        0x67t
        0x70t
        0x0t
        0x0t
        0x0t
        0x0t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private makeSgpd()[B
    .registers 2

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1at
        0x73t
        0x67t
        0x70t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private makeTrak(IJILcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;Z)V
    .registers 12

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxOffset()I

    move-result p4

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_ee

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bLayer:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bVolume:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->matrix:[B

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bWidth:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->bHeight:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    new-array v0, v1, [B

    fill-array-data v0, :array_fc

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->edstElst:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;

    const/4 v2, 0x0

    if-nez v1, :cond_ab

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    goto :goto_bc

    :cond_ab
    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->edstElst:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;

    iget-wide v3, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;->mediaTime:J

    long-to-int v1, v3

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->edstElst:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;

    iget v0, v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Elst;->bMediaRate:I

    :goto_bc
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int p3, p2

    invoke-virtual {v3, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object p3, p2, p1

    iget-object p3, p3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object p3, p3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->mdia:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    aget-object p1, p2, p1

    iget-object p1, p1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->kind:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    sget-object p2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    if-ne p1, p2, :cond_e7

    const/4 v2, 0x1

    :cond_e7
    invoke-direct {p0, p3, p5, p6, v2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeMdia(Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;ZZ)V

    invoke-direct {p0, p4}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lengthFor(I)I

    return-void

    :array_ee
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x68t
        0x74t
        0x6bt
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x3t
    .end array-data

    :array_fc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x24t
        0x65t
        0x64t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x65t
        0x6ct
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private outBackup()V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lastWriteOffset:J

    :cond_10
    return-void
.end method

.method private outRestore()V
    .registers 6

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outSeek(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->lastWriteOffset:J

    :cond_f
    return-void
.end method

.method private outSeek(J)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    iput-wide p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_24

    :cond_10
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->rewind()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outSkip(J)V

    :goto_24
    return-void

    :cond_25
    new-instance p1, Ljava/io/IOException;

    const-string p2, "cannot seek or rewind the output stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private outSkip(J)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->skip(J)J

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    return-void
.end method

.method private outWrite([B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outWrite([BI)V

    return-void
.end method

.method private outWrite([BI)V
    .registers 7

    iget-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    return-void
.end method

.method private writeEntry64(IJ)I
    .registers 6

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outBackup()V

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxSeek(I)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/2addr p1, v0

    return p1
.end method

.method private varargs writeEntryArray(II[I)I
    .registers 8

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outBackup()V

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxSeek(I)V

    mul-int/lit8 v0, p2, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p2, :cond_17

    aget v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 28

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->done:Z

    if-nez v1, :cond_385

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_37c

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    const-wide/16 v1, 0x8

    iget-object v3, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v4, v3

    new-array v4, v4, [I

    array-length v5, v3

    new-array v5, v5, [I

    array-length v6, v3

    new-array v6, v6, [I

    array-length v3, v3

    new-array v3, v3, [I

    iget-object v7, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    array-length v7, v7

    new-array v8, v7, [Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    if-ge v10, v7, :cond_33

    new-instance v11, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;

    invoke-direct {v11}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;-><init>()V

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_33
    iget-object v7, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    array-length v10, v7

    const/4 v12, 0x1

    if-ne v10, v12, :cond_4c

    aget-object v10, v7, v9

    iget-object v10, v10, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->kind:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    sget-object v13, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    if-ne v10, v13, :cond_4c

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v7, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->mdia:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;

    iget v7, v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mdia;->mdhdTimeScale:I

    div-int/lit16 v7, v7, 0x3e8

    goto :goto_4d

    :cond_4c
    const/4 v7, -0x1

    :goto_4d
    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    :goto_50
    iget-object v13, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v13, v13

    if-ge v10, v13, :cond_144

    move-wide/from16 v19, v15

    const/4 v13, 0x0

    move-wide v15, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_5b
    iget-object v9, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    aget-object v9, v9, v10

    invoke-virtual {v9, v12}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->getNextChunk(Z)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;

    move-result-object v9

    if-eqz v9, :cond_d6

    aget v11, v5, v10

    if-ge v11, v12, :cond_75

    iget-object v11, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->tfhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;

    iget v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    if-lez v11, :cond_75

    aput v11, v5, v10

    :cond_75
    iget-object v11, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;

    iget-object v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Moof;->traf:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;

    iget-object v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Traf;->trun:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;

    iget v14, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkSize:I

    move/from16 v24, v13

    int-to-long v12, v14

    add-long/2addr v15, v12

    aget v12, v4, v10

    iget v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trun;->chunkDuration:I

    add-int/2addr v12, v11

    aput v12, v4, v10

    move/from16 v13, v24

    :goto_8a
    invoke-virtual {v9}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashChunk;->getNextSampleInfo()Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    move-result-object v11

    if-eqz v11, :cond_d4

    iget-boolean v12, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    if-eqz v12, :cond_9e

    aget-object v12, v8, v10

    iget v14, v12, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    const/16 v23, 0x1

    add-int/lit8 v14, v14, 0x1

    iput v14, v12, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    :cond_9e
    iget v12, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    aget v14, v6, v10

    if-le v12, v14, :cond_a6

    aput v12, v6, v10

    :cond_a6
    aget-object v12, v8, v10

    iget v14, v12, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    const/16 v23, 0x1

    add-int/lit8 v14, v14, 0x1

    iput v14, v12, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    iget v12, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    if-eq v13, v12, :cond_b7

    add-int/lit8 v2, v2, 0x1

    move v13, v12

    :cond_b7
    iget-boolean v14, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    if-eqz v14, :cond_cb

    iget v11, v11, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    if-eq v11, v1, :cond_cb

    aget-object v1, v8, v10

    iget v14, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move-object/from16 v25, v9

    const/4 v9, 0x1

    add-int/2addr v14, v9

    iput v14, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move v1, v11

    goto :goto_ce

    :cond_cb
    move-object/from16 v25, v9

    const/4 v9, 0x1

    :goto_ce
    int-to-long v11, v12

    add-long v19, v19, v11

    move-object/from16 v9, v25

    goto :goto_8a

    :cond_d4
    const/4 v12, 0x1

    goto :goto_5b

    :cond_d6
    move/from16 v24, v13

    const/4 v9, 0x1

    aget v1, v5, v10

    if-ge v1, v9, :cond_e1

    aget v1, v6, v10

    aput v1, v5, v10

    :cond_e1
    iget-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->rewind()V

    if-lez v7, :cond_f0

    aget-object v1, v8, v10

    invoke-direct {v0, v1, v7, v7}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->initChunkTables(Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;II)V

    goto :goto_f7

    :cond_f0
    aget-object v1, v8, v10

    const/4 v9, 0x6

    const/4 v11, 0x2

    invoke-direct {v0, v1, v11, v9}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->initChunkTables(Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;II)V

    :goto_f7
    aget-object v1, v8, v10

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    aput v1, v3, v10

    const/4 v1, 0x1

    if-ne v2, v1, :cond_10c

    aget-object v1, v8, v10

    const/4 v2, 0x0

    iput v2, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    aget-object v1, v8, v10

    move/from16 v9, v24

    iput v9, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    goto :goto_111

    :cond_10c
    const/4 v2, 0x0

    aget-object v1, v8, v10

    iput v2, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    :goto_111
    aget-object v1, v8, v10

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    aget-object v2, v8, v10

    iget v2, v2, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-ne v1, v2, :cond_120

    aget-object v1, v8, v10

    const/4 v2, -0x1

    iput v2, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    :cond_120
    iget-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v1, v10

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    iget-wide v11, v2, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->duration:J

    const-wide/16 v13, 0x1

    cmp-long v2, v11, v13

    if-gez v2, :cond_13b

    aget-object v1, v1, v10

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;->trak:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;

    iget-object v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Trak;->tkhd:Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;

    aget v2, v4, v10

    int-to-long v11, v2

    iput-wide v11, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Tkhd;->duration:J

    :cond_13b
    add-int/lit8 v10, v10, 0x1

    move-wide v1, v15

    move-wide/from16 v15, v19

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto/16 :goto_50

    :cond_144
    const/4 v9, 0x6

    const-wide v10, 0xfffeffffL

    cmp-long v12, v1, v10

    if-lez v12, :cond_150

    const/4 v1, 0x1

    goto :goto_151

    :cond_150
    const/4 v1, 0x0

    :goto_151
    invoke-direct {v0, v5, v8, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeMoov([I[Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;Z)I

    move-result v2

    const/high16 v10, 0x240000

    if-ge v2, v10, :cond_15f

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    :cond_15f
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->moovSimulation:Z

    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeFtyp()I

    move-result v10

    if-lez v2, :cond_17b

    const/high16 v11, 0x10000

    new-array v12, v11, [B

    :goto_170
    if-lez v2, :cond_17b

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-direct {v0, v12, v13}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outWrite([BI)V

    sub-int/2addr v2, v13

    goto :goto_170

    :cond_17b
    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_183

    int-to-long v11, v10

    invoke-direct {v0, v11, v12}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outSeek(J)V

    :cond_183
    invoke-direct {v0, v5, v8, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeMoov([I[Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;Z)I

    const/4 v2, 0x0

    :goto_187
    iget-object v5, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v5, v5

    const/4 v11, 0x0

    if-ge v2, v5, :cond_1dc

    aget-object v5, v8, v2

    iget v5, v5, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    const/4 v12, 0x2

    new-array v13, v12, [I

    aget v14, v3, v2

    const/16 v17, 0x0

    aput v14, v13, v17

    aget v14, v6, v2

    const/16 v17, 0x1

    aput v14, v13, v17

    invoke-direct {v0, v5, v12, v13}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    aget-object v5, v8, v2

    iget v5, v5, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    aget-object v12, v8, v2

    iget-object v12, v12, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    array-length v12, v12

    aget-object v13, v8, v2

    iget-object v13, v13, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    invoke-direct {v0, v5, v12, v13}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    aget-object v5, v8, v2

    iput-object v11, v5, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    aget-object v5, v8, v2

    iget v5, v5, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v5, :cond_1c4

    const/4 v5, 0x1

    aput v5, v3, v2

    const/4 v11, -0x1

    aput v11, v4, v2

    goto :goto_1c5

    :cond_1c4
    const/4 v5, 0x1

    :goto_1c5
    aget-object v11, v8, v2

    iget v11, v11, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    if-lez v11, :cond_1d9

    aget-object v11, v8, v2

    iget v11, v11, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    new-array v12, v5, [I

    aget v13, v3, v2

    const/4 v14, 0x0

    aput v13, v12, v14

    invoke-direct {v0, v11, v5, v12}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    :cond_1d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_187

    :cond_1dc
    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1e3

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outRestore()V

    :cond_1e3
    move-wide v13, v15

    invoke-direct {v0, v13, v14, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->makeMdat(JZ)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outWrite([B)V

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v5, v2

    new-array v5, v5, [I

    if-lez v7, :cond_1f4

    move v6, v7

    goto :goto_1f5

    :cond_1f4
    const/4 v6, 0x6

    :goto_1f5
    new-array v6, v6, [I

    if-lez v7, :cond_1fb

    move v12, v7

    goto :goto_1fc

    :cond_1fb
    const/4 v12, 0x6

    :goto_1fc
    new-array v12, v12, [I

    array-length v2, v2

    :goto_1ff
    if-lez v2, :cond_35a

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_203
    iget-object v14, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v14, v14

    if-ge v2, v14, :cond_356

    aget v14, v5, v2

    if-gez v14, :cond_216

    move/from16 v20, v1

    move/from16 v17, v7

    move/from16 v19, v10

    const/4 v11, 0x1

    const/4 v15, 0x2

    goto/16 :goto_34a

    :cond_216
    iget-wide v14, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeOffset:J

    if-lez v7, :cond_21c

    move v9, v7

    goto :goto_227

    :cond_21c
    aget v16, v5, v2

    if-nez v16, :cond_223

    const/16 v16, 0x2

    goto :goto_225

    :cond_223
    const/16 v16, 0x6

    :goto_225
    move/from16 v9, v16

    :goto_227
    move/from16 v17, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_22b
    if-ge v11, v9, :cond_2ec

    move/from16 v18, v9

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->getNextSample(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;

    move-result-object v9

    if-nez v9, :cond_267

    aget-object v9, v8, v2

    iget v9, v9, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v9, :cond_25b

    aget v9, v4, v2

    if-ltz v9, :cond_25b

    aget-object v9, v8, v2

    iget v9, v9, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move/from16 v19, v10

    move-wide/from16 v24, v14

    const/4 v10, 0x2

    new-array v14, v10, [I

    aget v10, v3, v2

    const/4 v15, 0x0

    aput v10, v14, v15

    aget v10, v4, v2

    const/4 v15, 0x1

    aput v10, v14, v15

    invoke-direct {v0, v9, v15, v14}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outRestore()V

    goto :goto_260

    :cond_25b
    move/from16 v19, v10

    move-wide/from16 v24, v14

    const/4 v15, 0x1

    :goto_260
    const/4 v10, -0x1

    aput v10, v5, v2

    move/from16 v20, v1

    goto/16 :goto_2f2

    :cond_267
    move/from16 v19, v10

    move-wide/from16 v24, v14

    const/4 v10, -0x1

    const/4 v15, 0x1

    aget v14, v5, v2

    add-int/2addr v14, v15

    aput v14, v5, v2

    aget-object v14, v8, v2

    iget v14, v14, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v14, :cond_2b9

    iget-object v14, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    iget v14, v14, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    aget v10, v4, v2

    if-ne v14, v10, :cond_286

    aget v10, v3, v2

    add-int/2addr v10, v15

    aput v10, v3, v2

    goto :goto_2b9

    :cond_286
    aget v10, v4, v2

    if-ltz v10, :cond_2ab

    aget-object v10, v8, v2

    aget-object v14, v8, v2

    iget v14, v14, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move/from16 v20, v1

    const/4 v15, 0x2

    new-array v1, v15, [I

    aget v22, v3, v2

    const/16 v21, 0x0

    aput v22, v1, v21

    aget v22, v4, v2

    const/16 v23, 0x1

    aput v22, v1, v23

    invoke-direct {v0, v14, v15, v1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v1

    iput v1, v10, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outRestore()V

    goto :goto_2b0

    :cond_2ab
    move/from16 v20, v1

    const/4 v15, 0x2

    const/16 v23, 0x1

    :goto_2b0
    aput v23, v3, v2

    iget-object v1, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    aput v1, v4, v2

    goto :goto_2bc

    :cond_2b9
    :goto_2b9
    move/from16 v20, v1

    const/4 v15, 0x2

    :goto_2bc
    aget-object v1, v8, v2

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_2cf

    iget-object v1, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;

    iget-boolean v1, v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    if-eqz v1, :cond_2cf

    add-int/lit8 v1, v7, 0x1

    aget v10, v5, v2

    aput v10, v12, v7

    move v7, v1

    :cond_2cf
    aget-object v1, v8, v2

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-lez v1, :cond_2da

    iget-object v1, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->data:[B

    array-length v1, v1

    aput v1, v6, v11

    :cond_2da
    iget-object v1, v9, Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4DashSample;->data:[B

    array-length v9, v1

    invoke-direct {v0, v1, v9}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outWrite([BI)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v1, v20

    move-wide/from16 v14, v24

    goto/16 :goto_22b

    :cond_2ec
    move/from16 v20, v1

    move/from16 v19, v10

    move-wide/from16 v24, v14

    :goto_2f2
    const/4 v15, 0x2

    if-lez v11, :cond_349

    add-int/lit8 v13, v13, 0x1

    aget-object v1, v8, v2

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-lez v1, :cond_309

    aget-object v1, v8, v2

    aget-object v9, v8, v2

    iget v9, v9, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v9, v11, v6}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v9

    iput v9, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    :cond_309
    if-lez v7, :cond_317

    aget-object v1, v8, v2

    aget-object v9, v8, v2

    iget v9, v9, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    invoke-direct {v0, v9, v7, v12}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v7

    iput v7, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    :cond_317
    aget-object v1, v8, v2

    iget v1, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    if-lez v1, :cond_344

    if-eqz v20, :cond_32e

    aget-object v1, v8, v2

    aget-object v7, v8, v2

    iget v7, v7, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    move-wide/from16 v9, v24

    invoke-direct {v0, v7, v9, v10}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntry64(IJ)I

    move-result v7

    iput v7, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    goto :goto_344

    :cond_32e
    move-wide/from16 v9, v24

    aget-object v1, v8, v2

    aget-object v7, v8, v2

    iget v7, v7, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    const/4 v11, 0x1

    new-array v14, v11, [I

    long-to-int v10, v9

    const/4 v9, 0x0

    aput v10, v14, v9

    invoke-direct {v0, v7, v11, v14}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v7

    iput v7, v1, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    goto :goto_345

    :cond_344
    :goto_344
    const/4 v11, 0x1

    :goto_345
    invoke-direct/range {p0 .. p0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outRestore()V

    goto :goto_34a

    :cond_349
    const/4 v11, 0x1

    :goto_34a
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v17

    move/from16 v10, v19

    move/from16 v1, v20

    const/4 v9, 0x6

    const/4 v11, 0x0

    goto/16 :goto_203

    :cond_356
    move v2, v13

    const/4 v11, 0x0

    goto/16 :goto_1ff

    :cond_35a
    move/from16 v19, v10

    iget-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_37b

    move/from16 v1, v19

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outSeek(J)V

    iget-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->outStream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-object v2, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    :cond_37b
    return-void

    :cond_37c
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "the provided output is not writable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_385
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "already done"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_38e

    :goto_38d
    throw v1

    :goto_38e
    goto :goto_38d
.end method

.method public parseSources()V
    .registers 6

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->done:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parsed:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x1

    :try_start_a
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v3, v2

    if-ge v0, v3, :cond_24

    new-instance v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->sourceTracks:[Lcom/gold/youtube/om7753/streams/io/SharpStream;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parse()V
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parsed:Z

    return-void

    :catchall_27
    move-exception v0

    iput-boolean v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parsed:Z

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

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->done:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :try_start_9
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v1, v1

    new-array v1, v1, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    iput-object v1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->readers:[Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    array-length v3, v2

    if-ge v1, v3, :cond_25

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->tracks:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, v1

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->selectTrack(I)Lcom/gold/youtube/om7753/streams/Mp4DashReader$Mp4Track;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parsed:Z

    return-void

    :catchall_28
    move-exception p1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parsed:Z

    throw p1

    :cond_2c
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "tracks already selected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p1, Ljava/io/IOException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :goto_3d
    throw p1

    :goto_3e
    goto :goto_3d
.end method

.method public setMainBrand(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->overrideMainBrand:I

    return-void
.end method
